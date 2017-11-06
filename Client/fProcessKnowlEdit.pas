unit fProcessKnowlEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponentBase,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin,
  Mask, DBCtrls, dDocClient, uClientTypes, AbmesFields, fPrcDataFieldEditFrame,
  fBaseFrame, fDBFrame, fFieldEditFrame, fGridForm, Menus, ParamDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ColorNavigator, fBaseForm, DBGridEhGrouping;

type
  [CanUseDocs]
  [CanEditOuterDataSet(False)]
  TfmProcessKnowlEdit = class(TGridForm)
    actCopyNameToShortName: TAction;
    actDoc: TAction;
    lblProcessKnowlBaseOpsCaption: TLabel;
    cdsDataPRC_KNOWL_CODE: TAbmesFloatField;
    cdsDataPARENT_PRC_KNOWL_CODE: TAbmesFloatField;
    cdsDataPRC_KNOWL_LOCAL_NO: TAbmesFloatField;
    cdsDataPRC_KNOWL_NAME: TAbmesWideStringField;
    cdsDataPRC_KNOWL_SHORT_NAME: TAbmesWideStringField;
    cdsDataIS_GROUP: TAbmesFloatField;
    cdsDataPARENT_FULL_NO: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsDataqryProcessKnowlDetail: TDataSetField;
    cdsGridDataPRC_KNOWL_CODE: TAbmesFloatField;
    cdsGridDataPRC_BASE_OP_CODE: TAbmesFloatField;
    cdsGridDataPRC_BASE_OP_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsProcessBaseOperations: TAbmesClientDataSet;
    cdsProcessBaseOperationsPRC_BASE_OP_CODE: TAbmesFloatField;
    cdsProcessBaseOperationsPRC_BASE_OP_LOCAL_NO: TAbmesFloatField;
    cdsProcessBaseOperationsPRC_BASE_OP_NAME: TAbmesWideStringField;
    cdsProcessBaseOperationsPRC_BASE_OP_SHORT_NAME: TAbmesWideStringField;
    cdsProcessBaseOperationsPRC_BASE_OP_FULL_NO: TAbmesWideStringField;
    cdsProcessBaseOperationsPRC_BASE_OP_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsGridData_PRC_BASE_OP_NAME: TAbmesWideStringField;
    cdsGridData_PRC_BASE_OP_SHORT_NAME: TAbmesWideStringField;
    cdsGridData_PRC_BASE_OP_FULL_NO: TAbmesWideStringField;
    pnlTop: TPanel;
    gbProcessKnowl: TGroupBox;
    lblName: TLabel;
    lblShortName: TLabel;
    btnNameToShortName: TSpeedButton;
    lblProcessKnowlNo: TLabel;
    edtProcessKnowlName: TDBEdit;
    edtProcessKnowlShortName: TDBEdit;
    edtProcessKnowlLocalNo: TDBEdit;
    edtParentProcessKnowlFullNo: TDBEdit;
    tbDocButton: TToolBar;
    btnDoc: TToolButton;
    procedure actCopyNameToShortNameUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actCopyNameToShortNameExecute(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure actCancelUpdatesExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataPRC_BASE_OP_CODEChange(Sender: TField);
    procedure actInsertRecordExecute(Sender: TObject);
  private
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FInsertGroupProcessKnowl: Boolean;
    FProcessKnowlCode: Integer;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    function IsRoot: Boolean;
  protected
    function GetOriginalFormCaption: string; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
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
  dMain, uUtils, uClientUtils, uDocUtils, uPrcDeclarations, Math,
  fProcessBaseOperation, fProcessBaseOperationsTree, uTreeClientUtils,
  fTreeSelectForm;

resourcestring
  SIsGroupCaption = 'Група Познания за Управление в Духа на Съзидание';
  SIsGroupFormCaption = 'Група Познания за Управление в Духа на Съзидание - %s';
  SIsDefiniteCaption = 'Познание за Управление в Духа на Съзидание';
  SIsDefiniteFormCaption = 'Познание за Управление в Духа на Съзидание - %s';
  SIdentification = 'Идентификация на';

const
  RootProcessKnowlCode = 1;

{$R *.dfm}

{ TfmProcessKnowlEdit }

procedure TfmProcessKnowlEdit.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmProcessBaseOperation;
  MaximizeStyle:= msVertical;
end;

procedure TfmProcessKnowlEdit.actApplyUpdatesExecute(Sender: TObject);
begin
  inherited;
  FProcessKnowlCode:= cdsDataPRC_KNOWL_CODE.AsInteger;
end;

procedure TfmProcessKnowlEdit.actCancelUpdatesExecute(Sender: TObject);
begin
  inherited;
  FProcessKnowlCode:= 0;
end;

procedure TfmProcessKnowlEdit.actCopyNameToShortNameExecute(
  Sender: TObject);
begin
  inherited;
  CheckEditMode(cdsData);
  edtProcessKnowlShortName.SetFocus;
  cdsDataPRC_KNOWL_SHORT_NAME.AsVariant:= cdsDataPRC_KNOWL_NAME.AsVariant;
end;

procedure TfmProcessKnowlEdit.actCopyNameToShortNameUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emReadOnly) and not IsRoot;
end;

procedure TfmProcessKnowlEdit.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    EditMode,
    (Sender as TAction).ActionComponent as TControl,
    dotProcessKnowl,
    cdsData);
end;

procedure TfmProcessKnowlEdit.actDocUpdate(Sender: TObject);
begin
  inherited;
  actDoc.ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmProcessKnowlEdit.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
  KnowlCaption: string;
begin
  inherited;
  ro:= (EditMode = emReadOnly) or IsRoot;

  SetControlsReadOnly(ro, [
    edtProcessKnowlName,
    edtProcessKnowlShortName,
    edtProcessKnowlLocalNo]);

  if cdsDataIS_GROUP.AsBoolean then
    KnowlCaption:= SIsGroupCaption
  else
    KnowlCaption:= SIsDefiniteCaption;

  gbProcessKnowl.Caption:= Format(' %s %s ', [SIdentification, KnowlCaption]);
end;

procedure TfmProcessKnowlEdit.actInsertRecordExecute(Sender: TObject);
var
  ProcessBaseOperationCode: Integer;
begin
  if ShiftIsPressed or ControlIsPressed then
    begin
      ProcessBaseOperationCode:=
        TfmProcessBaseOperationsTree.ShowForm(
          nil,
          nil,
          emReadOnly,
          doNone,
          0,
          tdsInstance);

      if (ProcessBaseOperationCode <> 0) then
        cdsGridData.SafeAppend/
          procedure begin
            cdsGridDataPRC_BASE_OP_CODE.AsInteger:= ProcessBaseOperationCode;
          end;
    end
  else
    inherited;
end;

procedure TfmProcessKnowlEdit.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmProcessKnowlEdit.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataPRC_KNOWL_CODE.AsInteger:= dmMain.SvrProcesses.GetNewProcessKnowlCode;
  cdsDataPARENT_PRC_KNOWL_CODE.AsVariant:= OuterDataSet.FieldByName('PRC_KNOWL_CODE').AsVariant;
  cdsDataIS_GROUP.AsBoolean:= FInsertGroupProcessKnowl;

  if (cdsDataPARENT_PRC_KNOWL_CODE.AsInteger <> RootProcessKnowlCode) then
    cdsDataPARENT_FULL_NO.AsVariant:= OuterDataSet.FieldByName('PRC_KNOWL_FULL_NO').AsVariant;

  cdsDataPRC_KNOWL_LOCAL_NO.AsInteger:=
    dmMain.SvrProcesses.GetNewProcessKnowlLocalNo(cdsDataPARENT_PRC_KNOWL_CODE.AsInteger);
end;

procedure TfmProcessKnowlEdit.cdsGridDataPRC_BASE_OP_CODEChange(Sender: TField);
begin
  inherited;
  cdsGridDataPRC_BASE_OP_FORMATTED_FULL_NO.AsVariant:=
    cdsProcessBaseOperations.Lookup(
      'PRC_BASE_OP_CODE',
      cdsGridDataPRC_BASE_OP_CODE.AsVariant,
      'PRC_BASE_OP_FORMATTED_FULL_NO');
end;

procedure TfmProcessKnowlEdit.OpenDataSets;
begin
  cdsProcessBaseOperations.Open;
  inherited;
end;

procedure TfmProcessKnowlEdit.CloseDataSets;
begin
  cdsProcessBaseOperations.Close;
  inherited;
end;

procedure TfmProcessKnowlEdit.dmDocClientOnDataChanged(Sender: TObject);
begin
  dmDocClient.SetHasDocItemsField(cdsData.FieldByName('HAS_DOC_ITEMS'));
end;

procedure TfmProcessKnowlEdit.Initialize;
begin
  inherited;
  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  if cdsDataIS_GROUP.AsBoolean then
    begin
      pnlMain.Visible:= False;
      ClientHeight:= ClientHeight - pnlMain.Height + 8;
    end
  else
    BorderIcons:= BorderIcons + [biMaximize];
end;

procedure TfmProcessKnowlEdit.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
  FOlddmDocClientOnDataChanged:= nil;
end;

function TfmProcessKnowlEdit.GetOriginalFormCaption: string;
begin
  if cdsDataIS_GROUP.AsBoolean then
    Result:= SIsGroupFormCaption
  else
    Result:= SIsDefiniteFormCaption;
end;

function TfmProcessKnowlEdit.IsRoot: Boolean;
begin
  Result:= cdsDataPARENT_PRC_KNOWL_CODE.IsNull;
end;

procedure TfmProcessKnowlEdit.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AInsertGroup: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FInsertGroupProcessKnowl:= AInsertGroup;
end;

class function TfmProcessKnowlEdit.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AInsertGroup: Boolean): Integer;
var
  f: TfmProcessKnowlEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AInsertGroup);
    f.InternalShowForm;
    Result:= f.FProcessKnowlCode;
  finally
    f.ReleaseForm;
  end;
end;

end.
