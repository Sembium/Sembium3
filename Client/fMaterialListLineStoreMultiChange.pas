unit fMaterialListLineStoreMultiChange;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, uClientTypes, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls, AbmesFields, fBaseFrame,
  fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  JvComponent, JvCaptionButton, dDocClient, JvComponentBase;

type
  TfmMaterialListLineStoreMultiChange = class(TEditForm)
    btnCopyOldToNew: TSpeedButton;
    actCopyOldToNew: TAction;
    cdsDataO_STORE_CODE: TAbmesFloatField;
    cdsDataN_STORE_CODE: TAbmesFloatField;
    frOldStore: TfrDeptFieldEditFrame;
    frNewStore: TfrDeptFieldEditFrame;
    procedure actCopyOldToNewExecute(Sender: TObject);
    procedure actCopyOldToNewUpdate(Sender: TObject);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    FMaterialListLines: OleVariant;
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
      const AStoreCode: Integer): Boolean;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      const AMaterialListLines: OleVariant;
      const AStoreCode: Integer); reintroduce; virtual;
  end;

implementation

uses
  dMain, uUtils, uUserActivityConsts;

{$R *.dfm}

resourcestring
  SNoDiffBetweenOldAndNewData = 'Новото ТП Задържащо е същото като старото';

{ TfmMaterialListLineStoreMultiChange }

procedure TfmMaterialListLineStoreMultiChange.actCopyOldToNewExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  cdsDataN_STORE_CODE.AsVariant:= cdsDataO_STORE_CODE.AsVariant;
end;

procedure TfmMaterialListLineStoreMultiChange.actCopyOldToNewUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emReadOnly);
end;

class function TfmMaterialListLineStoreMultiChange.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmMaterialListLineStoreMultiChange.SetDataParams(
  AdmDocClient: TdmDocClient;
  const AMaterialListLines: OleVariant;
  const AStoreCode: Integer);
begin
  inherited SetDataParams(AdmDocClient);
  FMaterialListLines:= AMaterialListLines;
  FStoreCode:= AStoreCode;
end;

class function TfmMaterialListLineStoreMultiChange.ShowForm(
  AdmDocClient: TdmDocClient;
  const AMaterialListLines: OleVariant;
  const AStoreCode: Integer): Boolean;
var
  f: TfmMaterialListLineStoreMultiChange;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, AMaterialListLines, AStoreCode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmMaterialListLineStoreMultiChange.cdsDataAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsData.Append;
  cdsDataO_STORE_CODE.AsInteger:= FStoreCode;
end;

procedure TfmMaterialListLineStoreMultiChange.cdsDataBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  LoginContext.CheckUserActivity(uaMllStoreChange);

  if (cdsDataN_STORE_CODE.AsInteger = cdsDataO_STORE_CODE.AsInteger) then
    raise Exception.Create(SNoDiffBetweenOldAndNewData);
end;

procedure TfmMaterialListLineStoreMultiChange.DoEditApplyUpdates;
var
  SaveCursor: TCursor;
begin
  // do not call inherited

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    dmMain.SvrModelChanges.DoStoreMultipleChange(
      FMaterialListLines,
      cdsDataO_STORE_CODE.AsInteger,
      cdsDataN_STORE_CODE.AsInteger);
  finally
    Screen.Cursor:= SaveCursor;
  end;  { try }
end;

procedure TfmMaterialListLineStoreMultiChange.FormCreate(Sender: TObject);
begin
  inherited;
  frOldStore.FieldNames:= 'O_STORE_CODE';
  frNewStore.FieldNames:= 'N_STORE_CODE';
  frNewStore.SelectStore:= True;
end;

class function TfmMaterialListLineStoreMultiChange.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmMaterialListLineStoreMultiChange.SetDBFrameReadOnly(
  AFrame: TDBFrame);
begin
  if (AFrame = frOldStore) then
    AFrame.ReadOnly:= True
  else
    inherited SetDBFrameReadOnly(AFrame);
end;

end.
