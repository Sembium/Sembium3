unit fProcessFunctionEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin,
  Mask, DBCtrls, AbmesFields, uClientTypes, uDocClientUtils, dDocClient,
  fGridForm, Menus, ParamDataSet, GridsEh, DBGridEh, AbmesDBGrid, fBaseForm,
  ColorNavigator;

type
  [CanUseDocs]
  [CanEditOuterDataSet(False)]
  TfmProcessFunctionEdit = class(TEditForm)
    actCopyNameToShortName: TAction;
    actDoc: TAction;
    cdsDataPRC_FUNC_CODE: TAbmesFloatField;
    cdsDataPARENT_PRC_FUNC_CODE: TAbmesFloatField;
    cdsDataPRC_FUNC_LOCAL_NO: TAbmesFloatField;
    cdsDataPRC_FUNC_NAME: TAbmesWideStringField;
    cdsDataPRC_FUNC_SHORT_NAME: TAbmesWideStringField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataPARENT_FULL_NO: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    pnlTop: TPanel;
    gbProcessFunction: TGroupBox;
    lblName: TLabel;
    lblShortName: TLabel;
    btnNameToShortName: TSpeedButton;
    lblProcessFunctionNo: TLabel;
    edtProcessFunctionName: TDBEdit;
    edtProcessFunctionShortName: TDBEdit;
    edtProcessFunctionLocalNo: TDBEdit;
    edtParentProcessFunctionFullNo: TDBEdit;
    tbDocButton: TToolBar;
    btnDoc: TToolButton;
    cdsDataPRC_DATA: TBlobField;
    pnlPrcData: TPanel;
    pcPrcData: TPageControl;
    tsPrcData: TTabSheet;
    procedure actCopyNameToShortNameExecute(Sender: TObject);
    procedure actCopyNameToShortNameUpdate(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actCancelUpdatesExecute(Sender: TObject);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FInsertGroupProcessFunction: Boolean;
    FProcessFunctionCode: Integer;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    function IsRoot: Boolean;
  protected
    function GetOriginalFormCaption: string; override;
  public
    procedure Finalize; override;
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
  dMain, uUtils, uClientUtils, uDocUtils, StrUtils, rProcessFunctionPrcDataReport,
  fPrcDataFieldEditFrame, uPrcDeclarations, Math;

resourcestring
  SIsGroupCaption = 'Група Функции за Управление в Духа на Съзидание';
  SIsGroupFormCaption = 'Група Функции за Управление в Духа на Съзидание - %s';
  SIsDefiniteCaption = 'Функция за Управление в Духа на Съзидание';
  SIsDefiniteFormCaption = 'Функция за Управление в Духа на Съзидание - %s';
  SIdentification = 'Идентификация на';

const
  RootProcessFunctionCode = 1;

{$R *.dfm}

{ TfmProcessFunctionEdit }

procedure TfmProcessFunctionEdit.actApplyUpdatesExecute(Sender: TObject);
begin
  inherited;
  FProcessFunctionCode:= cdsDataPRC_FUNC_CODE.AsInteger;
end;

procedure TfmProcessFunctionEdit.actCancelUpdatesExecute(Sender: TObject);
begin
  inherited;
  FProcessFunctionCode:= 0;
end;

procedure TfmProcessFunctionEdit.actCopyNameToShortNameExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  edtProcessFunctionShortName.SetFocus;
  cdsDataPRC_FUNC_SHORT_NAME.AsVariant:= cdsDataPRC_FUNC_NAME.AsVariant;
end;

procedure TfmProcessFunctionEdit.actCopyNameToShortNameUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emReadOnly) and not IsRoot;
end;

procedure TfmProcessFunctionEdit.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    EditMode,
    (Sender as TAction).ActionComponent as TControl,
    dotProcessFunction,
    cdsData);
end;

procedure TfmProcessFunctionEdit.actDocUpdate(Sender: TObject);
begin
  inherited;
  actDoc.ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmProcessFunctionEdit.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
  FunctionCaption: string;
begin
  inherited;
  ro:= (EditMode = emReadOnly) or IsRoot;

  SetControlsReadOnly(ro, [
    edtProcessFunctionName,
    edtProcessFunctionShortName,
    edtProcessFunctionLocalNo]);

  if cdsDataIS_GROUP.AsBoolean then
    FunctionCaption:= SIsGroupCaption
  else
    FunctionCaption:= SIsDefiniteCaption;

  gbProcessFunction.Caption:= Format(' %s %s ', [SIdentification, FunctionCaption]);
end;

procedure TfmProcessFunctionEdit.Initialize;
begin
  inherited;
  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  pcPrcData.Visible:= not cdsDataIS_GROUP.AsBoolean;
  ClientHeight:= ClientHeight - IfThen(cdsDataIS_GROUP.AsBoolean, 8 + pcPrcData.Height);

  if not cdsDataIS_GROUP.AsBoolean then
    BorderIcons:= BorderIcons + [biMaximize];
end;

procedure TfmProcessFunctionEdit.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmProcessFunctionEdit.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataPRC_FUNC_CODE.AsInteger:= dmMain.SvrProcesses.GetNewProcessFunctionCode;
  cdsDataPARENT_PRC_FUNC_CODE.AsVariant:= OuterDataSet.FieldByName('PRC_FUNC_CODE').AsVariant;
  cdsDataIS_GROUP.AsBoolean:= FInsertGroupProcessFunction;

  if (cdsDataPARENT_PRC_FUNC_CODE.AsInteger <> RootProcessFunctionCode) then
    cdsDataPARENT_FULL_NO.AsVariant:= OuterDataSet.FieldByName('PRC_FUNC_FULL_NO').AsVariant;

  cdsDataPRC_FUNC_LOCAL_NO.AsInteger:=
    dmMain.SvrProcesses.GetNewProcessFunctionLocalNo(cdsDataPARENT_PRC_FUNC_CODE.AsInteger);
end;

procedure TfmProcessFunctionEdit.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(cdsData.FieldByName('HAS_DOC_ITEMS'));
end;

function TfmProcessFunctionEdit.IsRoot: Boolean;
begin
  Result:= cdsDataPARENT_PRC_FUNC_CODE.IsNull
end;

procedure TfmProcessFunctionEdit.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  FOlddmDocClientOnDataChanged:= nil;
end;

procedure TfmProcessFunctionEdit.FormCreate(Sender: TObject);
var
  frPrcData: TfrPrcDataFieldEditFrame;
begin
  inherited;
  frPrcData:= TfrPrcDataFieldEditFrame.Create(Self);
  frPrcData.ProcessOwner:= ProcessOwners.Func;
  frPrcData.FieldNames:= 'PRC_DATA';
  frPrcData.OwnerNameField:= cdsDataPRC_FUNC_NAME;
  frPrcData.OwnerShortNameField:= cdsDataPRC_FUNC_SHORT_NAME;
  frPrcData.PrcDataReportClass:= TrptProcessFunctionPrcDataReport;
  tsPrcData.InsertControl(frPrcData);
  MaximizeStyle:= msVertical;
end;

function TfmProcessFunctionEdit.GetOriginalFormCaption: string;
begin
  if cdsDataIS_GROUP.AsBoolean then
    Result:= SIsGroupFormCaption
  else
    Result:= SIsDefiniteFormCaption;
end;

procedure TfmProcessFunctionEdit.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AInsertGroup: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FInsertGroupProcessFunction:= AInsertGroup;
end;

class function TfmProcessFunctionEdit.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AInsertGroup: Boolean): Integer;
var
  f: TfmProcessFunctionEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AInsertGroup);
    f.InternalShowForm;
    Result:= f.FProcessFunctionCode;
  finally
    f.ReleaseForm;
  end;
end;

end.
