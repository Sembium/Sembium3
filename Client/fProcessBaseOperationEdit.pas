unit fProcessBaseOperationEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls, Buttons, DB,
  DBClient, AbmesClientDataSet, JvComponentBase, JvCaptionButton, ActnList,
  ExtCtrls, dDocClient, uClientTypes, AbmesFields, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fProductFieldEditFrame, fDBDataForm,
  fBaseForm;

type
  [CanUseDocs]
  [CanEditOuterDataSet(False)]
  TfmProcessBaseOperationEdit = class(TEditForm)
    gbProcessBaseOperation: TGroupBox;
    lblName: TLabel;
    lblShortName: TLabel;
    btnNameToShortName: TSpeedButton;
    lblProcessBaseOperationNo: TLabel;
    edtProcessBaseOperationName: TDBEdit;
    edtProcessBaseOperationShortName: TDBEdit;
    edtProcessBaseOperationLocalNo: TDBEdit;
    edtParentProcessBaseOperationFullNo: TDBEdit;
    tbDocButton: TToolBar;
    btnDoc: TToolButton;
    actCopyNameToShortName: TAction;
    actDoc: TAction;
    cdsDataPRC_BASE_OP_CODE: TAbmesFloatField;
    cdsDataPARENT_PRC_BASE_OP_CODE: TAbmesFloatField;
    cdsDataPRC_BASE_OP_LOCAL_NO: TAbmesFloatField;
    cdsDataPRC_BASE_OP_NAME: TAbmesWideStringField;
    cdsDataPRC_BASE_OP_SHORT_NAME: TAbmesWideStringField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataPARENT_FULL_NO: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDataDOC_PRODUCT_CODE: TAbmesFloatField;
    frProcessBaseOperationProduct: TfrProductFieldEditFrame;
    procedure actCopyNameToShortNameExecute(Sender: TObject);
    procedure actCopyNameToShortNameUpdate(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actCancelUpdatesExecute(Sender: TObject);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FInsertGroupProcessBaseOperation: Boolean;
    FProcessBaseOperationCode: Integer;
    function IsRoot: Boolean;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetOriginalFormCaption: string; override;
  public
    procedure Initialize; override;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AInsertGroup: Boolean = False); reintroduce; virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AInsertGroup: Boolean = False): Integer;
  end;

implementation

uses
  dMain, uUtils, uClientUtils, uDocUtils, fTreeSelectForm, StrUtils;

resourcestring
  SIsGroupCaption = 'Група Познавателни Оператори';
  SIsGroupFormCaption = 'Група Познавателни Оператори - %s';
  SIsDefiniteCaption = 'Познавателен Оператор';
  SIsDefiniteFormCaption = 'Познавателен Оператор - %s';
  SIdentification = 'Идентификация на';

const
  RootProcessBaseOperationCode = 1;

{$R *.dfm}

{ TfmProcessBaseOperation }

procedure TfmProcessBaseOperationEdit.actApplyUpdatesExecute(Sender: TObject);
begin
  inherited;
  FProcessBaseOperationCode:= cdsDataPRC_BASE_OP_CODE.AsInteger;
end;

procedure TfmProcessBaseOperationEdit.actCancelUpdatesExecute(Sender: TObject);
begin
  inherited;
  FProcessBaseOperationCode:= 0;
end;

procedure TfmProcessBaseOperationEdit.actCopyNameToShortNameExecute(
  Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  edtProcessBaseOperationShortName.SetFocus;
  cdsDataPRC_BASE_OP_SHORT_NAME.AsVariant:= cdsDataPRC_BASE_OP_NAME.AsVariant;
end;

procedure TfmProcessBaseOperationEdit.actCopyNameToShortNameUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emReadOnly) and not IsRoot;
end;

procedure TfmProcessBaseOperationEdit.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    EditMode,
    (Sender as TAction).ActionComponent as TControl,
    dotProcessBaseOperation,
    cdsData);
end;

procedure TfmProcessBaseOperationEdit.actDocUpdate(Sender: TObject);
begin
  inherited;
  actDoc.ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmProcessBaseOperationEdit.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
  BaseOperationCaption: string;
begin
  inherited;
  ro:= (EditMode = emReadOnly) or IsRoot;

  SetControlsReadOnly(ro, [
    edtProcessBaseOperationName,
    edtProcessBaseOperationShortName,
    edtProcessBaseOperationLocalNo]);

  if cdsDataIS_GROUP.AsBoolean then
    BaseOperationCaption:= SIsGroupCaption
  else
    BaseOperationCaption:= SIsDefiniteCaption;

  gbProcessBaseOperation.Caption:= Format(' %s %s ', [SIdentification, BaseOperationCaption]);
end;

procedure TfmProcessBaseOperationEdit.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmProcessBaseOperationEdit.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataPRC_BASE_OP_CODE.AsInteger:= dmMain.SvrProcesses.GetNewProcessBaseOperationCode;
  cdsDataPARENT_PRC_BASE_OP_CODE.AsVariant:= OuterDataSet.FieldByName('PRC_BASE_OP_CODE').AsVariant;
  cdsDataIS_GROUP.AsBoolean:= FInsertGroupProcessBaseOperation;

  if (cdsDataPARENT_PRC_BASE_OP_CODE.AsInteger <> RootProcessBaseOperationCode) then
    cdsDataPARENT_FULL_NO.AsVariant:= OuterDataSet.FieldByName('PRC_BASE_OP_FULL_NO').AsVariant;

  cdsDataPRC_BASE_OP_LOCAL_NO.AsInteger:=
    dmMain.SvrProcesses.GetNewProcessBaseOperationLocalNo(cdsDataPARENT_PRC_BASE_OP_CODE.AsInteger);
end;

procedure TfmProcessBaseOperationEdit.FormCreate(Sender: TObject);
begin
  inherited;
  frProcessBaseOperationProduct.TreeDetailSelection:= tdsInstance;
  frProcessBaseOperationProduct.FieldNames:= 'DOC_PRODUCT_CODE';
  HasDocItemsField:= cdsDataHAS_DOC_ITEMS;
end;

function TfmProcessBaseOperationEdit.GetOriginalFormCaption: string;
begin
  if cdsDataIS_GROUP.AsBoolean then
    Result:= SIsGroupFormCaption
  else
    Result:= SIsDefiniteFormCaption;
end;

procedure TfmProcessBaseOperationEdit.Initialize;
begin
  inherited;
  if cdsDataIS_GROUP.AsBoolean then
    begin
      frProcessBaseOperationProduct.Visible:= False;
      ClientHeight:= ClientHeight - frProcessBaseOperationProduct.Height - 8;
    end
  else
    actDoc.Visible:= False;
end;

function TfmProcessBaseOperationEdit.IsRoot: Boolean;
begin
  Result:= cdsDataPARENT_PRC_BASE_OP_CODE.IsNull;
end;

procedure TfmProcessBaseOperationEdit.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AInsertGroup: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FInsertGroupProcessBaseOperation:= AInsertGroup;
end;

procedure TfmProcessBaseOperationEdit.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  inherited;
  if (AFrame = frProcessBaseOperationProduct) then
    AFrame.ReadOnly:= (EditMode = emReadOnly) or IsRoot;
end;

class function TfmProcessBaseOperationEdit.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AInsertGroup: Boolean): Integer;
var
  f: TfmProcessBaseOperationEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AInsertGroup);
    f.InternalShowForm;
    Result:= f.FProcessBaseOperationCode;
  finally
    f.ReleaseForm;
  end;
end;

end.
