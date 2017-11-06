unit fMaterialListLineMultiChange;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, Db, Menus, DBClient, AbmesClientDataSet, JvButtons, ImgList,
  ActnList, StdCtrls, Buttons, ExtCtrls, AbmesFields, Mask, DBCtrls,
  fBaseFrame, fDBFrame, fFieldEditFrame, dDocClient,
  fEditForm, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fProductFieldEditFrame, JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmMaterialListLineMultiChange = class(TEditForm)
    cdsDataO_STORE_CODE: TAbmesFloatField;
    cdsDataO_PRODUCT_CODE: TAbmesFloatField;
    cdsDataO_PRODUCT_NAME: TAbmesWideStringField;
    cdsDataO_PRODUCT_NO: TAbmesFloatField;
    cdsDataN_STORE_CODE: TAbmesFloatField;
    cdsDataN_PRODUCT_CODE: TAbmesFloatField;
    cdsDataN_PRODUCT_NAME: TAbmesWideStringField;
    cdsDataN_PRODUCT_NO: TAbmesFloatField;
    grpOld: TGroupBox;
    grpNew: TGroupBox;
    actCopyOldToNew: TAction;
    btnCopyOldToNew: TSpeedButton;
    frOldStore: TfrDeptFieldEditFrame;
    frNewStore: TfrDeptFieldEditFrame;
    frOldProduct: TfrProductFieldEditFrame;
    frNewProduct: TfrProductFieldEditFrame;
    procedure actCopyOldToNewExecute(Sender: TObject);
    procedure actCopyOldToNewUpdate(Sender: TObject);
    procedure cdsDataO_PRODUCT_CODEChange(Sender: TField);
    procedure cdsDataN_PRODUCT_CODEChange(Sender: TField);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    FMaterialListLines: OleVariant;
    FProductCode: Integer;
    FStoreCode: Integer;
  protected
    procedure DoEditApplyUpdates; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    class function CanUseDocs: Boolean; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
    class function ShowForm(
      AdmDocClient: TdmDocClient;
      const AMaterialListLines: OleVariant;
      const AProductCode, AStoreCode: Integer): Boolean;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      const AMaterialListLines: OleVariant;
      const AProductCode, AStoreCode: Integer); reintroduce; virtual;
  end;

implementation

uses
  dMain, uUtils, uUserActivityConsts, uTreeClientUtils, fMain;

{$R *.DFM}

resourcestring
  SNoDiffBetweenOldAndNewData = 'Не можете да запишете Предложение за Замяна, в което старите и новите данни съвпадат';

{ TfmMaterialListLineMultiChange }

procedure TfmMaterialListLineMultiChange.actCopyOldToNewExecute(
  Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  cdsDataN_PRODUCT_CODE.AsVariant:= cdsDataO_PRODUCT_CODE.AsVariant;
  cdsDataN_STORE_CODE.AsVariant:= cdsDataO_STORE_CODE.AsVariant;
end;

procedure TfmMaterialListLineMultiChange.actCopyOldToNewUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emReadOnly);
end;

procedure TfmMaterialListLineMultiChange.cdsDataO_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(
    cdsDataO_PRODUCT_CODE,
    cdsDataO_PRODUCT_NAME,
    cdsDataO_PRODUCT_NO);
end;

procedure TfmMaterialListLineMultiChange.cdsDataN_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(
    cdsDataN_PRODUCT_CODE,
    cdsDataN_PRODUCT_NAME,
    cdsDataN_PRODUCT_NO);
end;

class function TfmMaterialListLineMultiChange.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmMaterialListLineMultiChange.SetDataParams(
  AdmDocClient: TdmDocClient;
  const AMaterialListLines: OleVariant;
  const AProductCode, AStoreCode: Integer);
begin
  inherited SetDataParams(AdmDocClient);
  FMaterialListLines:= AMaterialListLines;
  FProductCode:= AProductCode;
  FStoreCode:= AStoreCode;
end;

class function TfmMaterialListLineMultiChange.ShowForm(
  AdmDocClient: TdmDocClient;
  const AMaterialListLines: OleVariant;
  const AProductCode, AStoreCode: Integer): Boolean;
var
  f: TfmMaterialListLineMultiChange;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, AMaterialListLines, AProductCode, AStoreCode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmMaterialListLineMultiChange.cdsDataAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsData.Append;
  cdsDataO_PRODUCT_CODE.AsInteger:= FProductCode;
  cdsDataO_STORE_CODE.AsInteger:= FStoreCode;
end;

procedure TfmMaterialListLineMultiChange.cdsDataBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  LoginContext.CheckUserActivity(uaMllChangeRequest);

  if (cdsDataN_PRODUCT_CODE.AsInteger = cdsDataO_PRODUCT_CODE.AsInteger) and
     (cdsDataN_STORE_CODE.AsInteger = cdsDataO_STORE_CODE.AsInteger) then
    raise Exception.Create(SNoDiffBetweenOldAndNewData);
end;

procedure TfmMaterialListLineMultiChange.FormCreate(Sender: TObject);
begin
  inherited;
  frOldProduct.FieldNames:= 'O_PRODUCT_CODE';
  frNewProduct.FieldNames:= 'N_PRODUCT_CODE';
  frOldStore.FieldNames:= 'O_STORE_CODE';
  frNewStore.FieldNames:= 'N_STORE_CODE';
  frNewStore.SelectStore:= True;
end;

procedure TfmMaterialListLineMultiChange.DoEditApplyUpdates;
var
  SaveCursor: TCursor;
begin
  // do not call inherited

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    dmMain.SvrModelChanges.RequestMultipleChanges(
      FMaterialListLines,
      cdsDataO_PRODUCT_CODE.AsInteger,
      cdsDataN_PRODUCT_CODE.AsInteger,
      cdsDataO_STORE_CODE.AsInteger,
      cdsDataN_STORE_CODE.AsInteger);

    fmMain.ForceRefreshPendingMllChangeCounts;
  finally
    Screen.Cursor:= SaveCursor;
  end;  { try }
end;

procedure TfmMaterialListLineMultiChange.SetDBFrameReadOnly(
  AFrame: TDBFrame);
begin
  if (AFrame = frOldProduct) or
     (AFrame = frOldStore) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;  { if }

  inherited SetDBFrameReadOnly(AFrame);
end;

class function TfmMaterialListLineMultiChange.CanUseDocs: Boolean;
begin
  Result:= True;
end;

end.
