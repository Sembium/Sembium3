unit fProfession;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, Menus, DBClient, AbmesClientDataSet, JvButtons,
  ImgList, ActnList, StdCtrls, Buttons, ExtCtrls, fBevelEditForm, Mask,
  DBCtrls, ToolWin, ComCtrls, AbmesFields, JvComponent, JvCaptionButton,
  JvComponentBase, fGridForm, ParamDataSet, GridsEh, DBGridEhGrouping,
  DBGridEh, AbmesDBGrid, ColorNavigator, JvExControls, JvDBLookup, fBaseForm,
  dDocClient, uClientTypes;

type
  [CanUseDocs]
  [CanEditOuterDataSet(False)]
  TfmProfession = class(TGridForm)
    cdsDataPROFESSION_CODE: TAbmesFloatField;
    cdsDataPROFESSION_NAME: TAbmesWideStringField;
    cdsDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDataDOC_CODE: TAbmesFloatField;
    bvlMain: TBevel;
    cdsDataqryProfessionPeriods: TDataSetField;
    cdsGridDataPROFESSION_PERIOD_CODE: TAbmesFloatField;
    cdsGridDataPROFESSION_CODE: TAbmesFloatField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataHOUR_PRICE: TAbmesFloatField;
    pnlDocs: TToolBar;
    btnDocs: TSpeedButton;
    cdsGridDataUSED_BY_EMPLOYEES: TAbmesFloatField;
    cdsGridDataUSED_BY_TEAMS: TAbmesFloatField;
    cdsGridDataIS_PAST: TAbmesFloatField;
    cdsGridDataIS_PRESENT: TAbmesFloatField;
    cdsGridDataIS_FUTURE: TAbmesFloatField;
    actPastPeriods: TAction;
    actPresentPeriods: TAction;
    actFuturePeriods: TAction;
    tlbPastPresentFuturePeriods: TToolBar;
    sepPastPresentFuturePeriods: TToolButton;
    btnPastPeriods: TSpeedButton;
    btnPresentPeriods: TSpeedButton;
    btnFuturePeriods: TSpeedButton;
    cdsDataqryProfessionConcreteOps: TDataSetField;
    cdsDataqryProfessionBaseOps: TDataSetField;
    cdsProfessionKinds: TAbmesClientDataSet;
    cdsProfessionBaseOps: TAbmesClientDataSet;
    cdsProfessionConcreteOps: TAbmesClientDataSet;
    cdsProfessionBaseOpsPROFESSION_CODE: TAbmesFloatField;
    cdsProfessionBaseOpsPRC_BASE_OP_CODE: TAbmesFloatField;
    cdsProfessionConcreteOpsPROFESSION_CODE: TAbmesFloatField;
    cdsProfessionConcreteOpsPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    dsProfessionBaseOps: TDataSource;
    dsProfessionConcreteOps: TDataSource;
    pcMain: TPageControl;
    tsDateIntervals: TTabSheet;
    tsPrcBaseOps: TTabSheet;
    tsPrcConcreteOps: TTabSheet;
    pnlPrcBaseOps: TPanel;
    pnlPrcBaseOpsNavigator: TPanel;
    navPrcBaseOps: TDBColorNavigator;
    grdPrcBaseOps: TAbmesDBGrid;
    pnlPrcConcreteOps: TPanel;
    pnlPrcConcreteOpsNavigator: TPanel;
    navPrcConcreteOps: TDBColorNavigator;
    grdPrcConcreteOps: TAbmesDBGrid;
    actInsertConcreteOp: TAction;
    actEditConcreteOp: TAction;
    actInsertBaseOp: TAction;
    actEditBaseOp: TAction;
    cdsProfessionBaseOpsPRC_BASE_OP_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsProfessionConcreteOpsPRC_CONCR_OP_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsProcessBaseOperations: TAbmesClientDataSet;
    cdsProcessBaseOperationsPRC_BASE_OP_CODE: TAbmesFloatField;
    cdsProcessBaseOperationsPRC_BASE_OP_LOCAL_NO: TAbmesFloatField;
    cdsProcessBaseOperationsPRC_BASE_OP_NAME: TAbmesWideStringField;
    cdsProcessBaseOperationsPRC_BASE_OP_SHORT_NAME: TAbmesWideStringField;
    cdsProcessBaseOperationsPRC_BASE_OP_FULL_NO: TAbmesWideStringField;
    cdsProcessBaseOperationsPRC_BASE_OP_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsProcessConcreteOperations: TAbmesClientDataSet;
    cdsProcessConcreteOperationsPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    cdsProcessConcreteOperationsPRC_CONCRETE_OP_NAME: TAbmesWideStringField;
    cdsProcessConcreteOperationsPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField;
    cdsProcessConcreteOperationsPRC_CONCRETE_OP_FULL_NO: TAbmesWideStringField;
    cdsProcessConcreteOperationsPRC_CONCR_OP_FORMATTED_FULL_NO: TAbmesWideStringField;
    cdsProfessionBaseOps_PRC_BASE_OP_FULL_NO: TAbmesWideStringField;
    cdsProfessionBaseOps_PRC_BASE_OP_SHORT_NAME: TAbmesWideStringField;
    cdsProfessionBaseOps_PRC_BASE_OP_NAME: TAbmesWideStringField;
    cdsProfessionConcreteOps_PRC_CONCRETE_OP_NAME: TAbmesWideStringField;
    cdsProfessionConcreteOps_PRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField;
    cdsProfessionConcreteOps_PRC_CONCRETE_OP_FULL_NO: TAbmesWideStringField;
    cdsDataPROFESSION_KIND_CODE: TAbmesFloatField;
    cdsProfessionKindsPROFESSION_KIND_CODE: TAbmesFloatField;
    cdsProfessionKindsPROFESSION_KIND_NAME: TAbmesWideStringField;
    cdsData_PROFESSION_KIND_NAME: TAbmesWideStringField;
    cdsProfessionKindsPROFESSION_KIND_NO: TAbmesFloatField;
    cdsProfessionKindsPROFESSION_TYPE_CODE: TAbmesFloatField;
    cdsData_PROFESSION_TYPE_CODE: TAbmesFloatField;
    cdsDataPROFESSION_LOCAL_NO: TAbmesFloatField;
    cdsDataPARENT_PROFESSION_CODE: TAbmesFloatField;
    cdsDataPARENT_FULL_NO: TAbmesWideStringField;
    cdsDataIS_GROUP: TAbmesFloatField;
    edtProfessionLocalNo: TDBEdit;
    edtParentProfessionFullNo: TDBEdit;
    lblProfessionNo: TLabel;
    actDoc: TAction;
    cdsDataHAS_DOC_ITEMS: TAbmesFloatField;
    pnlProfessionNameAndKind: TPanel;
    pnlProfessionName: TPanel;
    lblName: TLabel;
    edtProfessionName: TDBEdit;
    pnlProfessionKind: TPanel;
    lblProfessionKind: TLabel;
    cbProfessionKind: TJvDBLookupCombo;
    procedure btnDocsClick(Sender: TObject);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsGridDataBEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure actPastPresentFuturePeriodsExecute(Sender: TObject);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsGridDataBeforeInsert(DataSet: TDataSet);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure navPrcConcreteOpsBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure actInsertConcreteOpUpdate(Sender: TObject);
    procedure actEditConcreteOpUpdate(Sender: TObject);
    procedure actInsertConcreteOpExecute(Sender: TObject);
    procedure actEditConcreteOpExecute(Sender: TObject);
    procedure grdPrcConcreteOpsDblClick(Sender: TObject);
    procedure navPrcBaseOpsBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure actInsertBaseOpUpdate(Sender: TObject);
    procedure actEditBaseOpUpdate(Sender: TObject);
    procedure actEditBaseOpExecute(Sender: TObject);
    procedure actInsertBaseOpExecute(Sender: TObject);
    procedure grdPrcBaseOpsDblClick(Sender: TObject);
    procedure cdsProfessionBaseOpsPRC_BASE_OP_CODEChange(Sender: TField);
    procedure cdsProfessionConcreteOpsPRC_CONCRETE_OP_CODEChange(Sender: TField);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsProfessionBaseOpsNewRecord(DataSet: TDataSet);
    procedure cdsProfessionConcreteOpsNewRecord(DataSet: TDataSet);
    procedure cdsDataPROFESSION_KIND_CODEChange(Sender: TField);
    procedure cdsDataPROFESSION_KIND_CODEValidate(Sender: TField);
    procedure actApplyUpdatesExecute(Sender: TObject);
    procedure actCancelUpdatesExecute(Sender: TObject);
    procedure actDocExecute(Sender: TObject);
    procedure actDocUpdate(Sender: TObject);
    procedure cdsDataBeforePost(DataSet: TDataSet);
  private
    SavedmDocClientDataChanged: TNotifyEvent;
    FMaxProfessionPeriodCode: Integer;
    FIsProfessionTypeChanged: Boolean;
    FInsertGroupProfession: Boolean;
    FProfessionCode: Integer;
    procedure dmDocClientDataChanged(Sender: TObject);
    procedure RefilterPeriods;
    function GetBaseOpsReadOnly: Boolean;
    function GetConcreteOpsReadOnly: Boolean;
    procedure EnsureProfessionTypeUpdated;
    function IsRoot: Boolean;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoApplyUpdates; override;
    function GetOriginalFormCaption: string; override;
  public
    procedure Initialize; override;
    procedure Finalize; override;

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

resourcestring
  SHourPrice = 'ВЕЦ (%s/час)';

implementation

uses
  uClientUtils, uUtils, dMain, uDocUtils,
  fProfessionIntervalEdit, uYearParts, Math, uClientDateTime,
  fProcessConcreteOperation, fProcessBaseOperation, uProfessionTypes,
  fProcessBaseOperationsTree, fTreeSelectForm, fProcessConcreteOperationsTree;

resourcestring
  SBaseOpsExist = 'Не може да смените типа, защото са въведени Познавателни Оператори';
  SConcreteOpsExist = 'Не може да смените типа, защото са въведени Познавателни Операнти';
  SChangesMustBeApplied = 'За да продължите, промените трябва да бъдат записани';
  SIsGroupFormCaption = 'Група Процесни Роли - %s';
  SIsDefiniteFormCaption = 'Процесна Роля - %s';

{$R *.dfm}

{ TfmProfession }

procedure TfmProfession.actApplyUpdatesExecute(Sender: TObject);
begin
  inherited;
  FProfessionCode:= cdsDataPROFESSION_CODE.AsInteger;
end;

procedure TfmProfession.actCancelUpdatesExecute(Sender: TObject);
begin
  inherited;
  FProfessionCode:= 0;
end;

procedure TfmProfession.actDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    EditMode,
    (Sender as TAction).ActionComponent as TControl,
    dotProfession,
    dsData.DataSet);
end;

procedure TfmProfession.actDocUpdate(Sender: TObject);
begin
  inherited;
  actDoc.ImageIndex:= Ord(cdsDataHAS_DOC_ITEMS.AsBoolean);
end;

procedure TfmProfession.actEditBaseOpExecute(Sender: TObject);
begin
  inherited;
  TfmProcessBaseOperation.ShowForm(dmDocClient, cdsProfessionBaseOps, emReadOnly);
end;

procedure TfmProfession.actEditBaseOpUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsProfessionBaseOps.IsEmpty;
end;

procedure TfmProfession.actEditConcreteOpExecute(Sender: TObject);
begin
  inherited;
  TfmProcessConcreteOperation.ShowForm(dmDocClient, cdsProfessionConcreteOps, emReadOnly);
end;

procedure TfmProfession.EnsureProfessionTypeUpdated;
begin
  if FIsProfessionTypeChanged then
    begin
      ConfirmAction(SChangesMustBeApplied);
      actApplyUpdates.Execute;
    end;  { if }
end;

procedure TfmProfession.actInsertBaseOpExecute(Sender: TObject);
var
  ProcessBaseOperationCode: Integer;
begin
  inherited;

  EnsureProfessionTypeUpdated;

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
        cdsProfessionBaseOps.SafeAppend/
          procedure begin
            cdsProfessionBaseOpsPRC_BASE_OP_CODE.AsInteger:= ProcessBaseOperationCode;
          end;  { lambda }
    end
  else
    TfmProcessBaseOperation.ShowForm(dmDocClient, cdsProfessionBaseOps, emInsert);
end;

procedure TfmProfession.actInsertBaseOpUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not GetBaseOpsReadOnly and
    GetInsertRecordEnabled;
end;

procedure TfmProfession.actInsertConcreteOpExecute(Sender: TObject);
var
  ProcessConcreteOperationCode: Integer;
begin
  inherited;

  EnsureProfessionTypeUpdated;

  if ShiftIsPressed or ControlIsPressed then
    begin
      ProcessConcreteOperationCode:=
        TfmProcessConcreteOperationsTree.ShowForm(
          nil,
          nil,
          emReadOnly,
          doNone,
          0,
          tdsInstance);

      if (ProcessConcreteOperationCode <> 0) then
        cdsProfessionConcreteOps.SafeAppend/
          procedure begin
            cdsProfessionConcreteOpsPRC_CONCRETE_OP_CODE.AsInteger:= ProcessConcreteOperationCode;
          end;  { lambda }
    end
  else
    TfmProcessConcreteOperation.ShowForm(dmDocClient, cdsProfessionConcreteOps, emInsert);
end;

procedure TfmProfession.actEditConcreteOpUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsProfessionConcreteOps.IsEmpty;
end;

procedure TfmProfession.actFormUpdate(Sender: TObject);

  function IsProfessionType(AProfessionType: TProfessionType): Boolean;
  begin
    Result:=
      not cdsData_PROFESSION_TYPE_CODE.IsNull and
      (IntToProfessionType(cdsData_PROFESSION_TYPE_CODE.AsInteger) = AProfessionType);
  end;

var
  ro: Boolean;
begin
  inherited;

  ro:= (EditMode = emReadOnly) or IsRoot;

  SetControlsReadOnly(ro, [
    edtProfessionLocalNo,
    edtProfessionName]);

  SetControlReadOnly(
    ro or cdsDataIS_GROUP.AsBoolean,
    cbProfessionKind);

  tsPrcBaseOps.TabVisible:= IsProfessionType(ptBaseOp);
  tsPrcConcreteOps.TabVisible:= IsProfessionType(ptConcreteOp);
end;

procedure TfmProfession.actInsertConcreteOpUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not GetConcreteOpsReadOnly and
    GetInsertRecordEnabled;
end;

procedure TfmProfession.actPastPresentFuturePeriodsExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  RefilterPeriods;
end;

procedure TfmProfession.btnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, btnDocs, dotProfession, dsData.DataSet);
end;

procedure TfmProfession.dmDocClientDataChanged(Sender: TObject);
begin
  CheckEditMode(dsData.DataSet);
end;

procedure TfmProfession.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= SavedmDocClientDataChanged;
end;

procedure TfmProfession.Initialize;
begin
  inherited;

  if cdsDataIS_GROUP.AsBoolean then
    begin
      pnlProfessionKind.Visible:= False;
      pcMain.Visible:= False;
      ClientHeight:= pcMain.Top + pnlBottomButtons.Height;
    end
  else
    actDoc.Visible:= False;

  SavedmDocClientDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientDataChanged;

  LocateDateInterval(ContextDate, cdsGridData);

  if (EditMode = emInsert) then
    dmDocClient.DSInitDoc(dotProfession, dsData.DataSet);
end;

function TfmProfession.IsRoot: Boolean;
begin
  Result:= cdsDataPARENT_PROFESSION_CODE.IsNull;
end;

procedure TfmProfession.navPrcBaseOpsBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  case Button of
    nbInsert:
      begin
        actInsertBaseOp.Execute;
        Abort;
      end;

    nbEdit:
      begin
        actEditBaseOp.Execute;
        Abort;
      end;

    nbDelete:
      if GetBaseOpsReadOnly then
        Abort;
  end;  { case }
end;

procedure TfmProfession.navPrcConcreteOpsBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  case Button of
    nbInsert:
      begin
        actInsertConcreteOp.Execute;
        Abort;
      end;

    nbEdit:
      begin
        actEditConcreteOp.Execute;
        Abort;
      end;

    nbDelete:
      if GetConcreteOpsReadOnly then
        Abort;
  end;  { case }
end;

procedure TfmProfession.RefilterPeriods;
var
  ProfessionPeriodCode: Integer;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        ProfessionPeriodCode:= cdsGridDataPROFESSION_PERIOD_CODE.AsInteger;

        Filtered:= False;
        Filtered:= True;

        Locate('PROFESSION_PERIOD_CODE', ProfessionPeriodCode, []);
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmProfession.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AInsertGroup: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FInsertGroupProfession:= AInsertGroup;
end;

class function TfmProfession.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AInsertGroup: Boolean): Integer;
var
  f: TfmProfession;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AInsertGroup);
    f.InternalShowForm;
    Result:= f.FProfessionCode;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmProfession.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmProfession.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not cdsDataIS_GROUP.AsBoolean then
    CheckRequiredField(cdsDataPROFESSION_KIND_CODE);
end;

procedure TfmProfession.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataPROFESSION_CODE.AsInteger:= 1;

  cdsDataPARENT_PROFESSION_CODE.AsVariant:= OuterDataSet.FieldByName('PROFESSION_CODE').AsVariant;
  cdsDataIS_GROUP.AsBoolean:= FInsertGroupProfession;

  if (cdsDataPARENT_PROFESSION_CODE.AsInteger <> ProfessionsTreeRootCode) then
    cdsDataPARENT_FULL_NO.AsVariant:= OuterDataSet.FieldByName('PROFESSION_FULL_NO').AsVariant;

  cdsDataPROFESSION_LOCAL_NO.AsInteger:=
    dmMain.SvrHumanResource.GetNewProfessionLocalNo(cdsDataPARENT_PROFESSION_CODE.AsInteger);
end;

procedure TfmProfession.cdsDataPROFESSION_KIND_CODEChange(Sender: TField);
begin
  inherited;
  pcMain.ActivePage:= tsDateIntervals;
  FIsProfessionTypeChanged:= True;
end;

procedure TfmProfession.cdsDataPROFESSION_KIND_CODEValidate(Sender: TField);
begin
  inherited;

  if not cdsProfessionBaseOps.IsEmpty then
    raise Exception.Create(SBaseOpsExist);

  if not cdsProfessionConcreteOps.IsEmpty then
    raise Exception.Create(SConcreteOpsExist);
end;

procedure TfmProfession.cdsGridDataBeforeInsert(DataSet: TDataSet);
var
  SaveFiltered: Boolean;
begin
  inherited;
  cdsGridData.DisableControls;
  try
    SaveFiltered:= cdsGridData.Filtered;
    cdsGridData.Filtered:= False;
    try
      FMaxProfessionPeriodCode:= 0;
      cdsGridData.First;
      while not cdsGridData.Eof do
        begin
          FMaxProfessionPeriodCode:=
            Max(FMaxProfessionPeriodCode, cdsGridDataPROFESSION_PERIOD_CODE.AsInteger);
          cdsGridData.Next;
        end;
    finally
      cdsGridData.Filtered:= SaveFiltered;
    end;
  finally
    cdsGridData.EnableControls;
  end;
end;

procedure TfmProfession.cdsGridDataBeforePost(DataSet: TDataSet);
var
  NowDate: TDateTime;
begin
  inherited;

  CheckRequiredFields([cdsGridDataBEGIN_DATE, cdsGridDataEND_DATE]);

  CheckDatePeriodYearParts(
    cdsGridDataBEGIN_DATE.AsDateTime,
    cdsGridDataEND_DATE.AsDateTime,
    LoginContext.DatePeriodsYearPartCode);

  NowDate:= ContextDate;

  cdsGridDataIS_PAST.AsBoolean:=
    (cdsGridDataEND_DATE.AsDateTime < NowDate);
  cdsGridDataIS_FUTURE.AsBoolean:=
    (cdsGridDataBEGIN_DATE.AsDateTime > NowDate);
  cdsGridDataIS_PRESENT.AsBoolean:=
    not cdsGridDataIS_PAST.AsBoolean and
    not cdsGridDataIS_FUTURE.AsBoolean;
end;

procedure TfmProfession.cdsGridDataBEGIN_DATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:=
    dmMain.GetDateIntervalAsString(cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime);
end;

procedure TfmProfession.cdsGridDataFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    (cdsGridDataIS_PAST.AsBoolean and actPastPeriods.Checked) or
    (cdsGridDataIS_PRESENT.AsBoolean and actPresentPeriods.Checked) or
    (cdsGridDataIS_FUTURE.AsBoolean and actFuturePeriods.Checked);
end;

procedure TfmProfession.FormCreate(Sender: TObject);
begin
  inherited;

  pnlMain.Parent:= tsDateIntervals;
  pnlMain.Align:= alClient;

  EditFormClass:= TfmProfessionIntervalEdit;

  cdsGridDataHOUR_PRICE.DisplayLabel:=
    Format(SHourPrice, [LoginContext.BaseCurrencyAbbrev]);
  grdData.Columns[1].Title.Caption:=
    cdsGridDataHOUR_PRICE.DisplayLabel;

  RegisterDateFields(cdsGridData);
  RegisterFieldTextVisibility(IsHighLevelInvestedValueVisible, cdsGridDataHOUR_PRICE);

  HasDocItemsField:= cdsDataHAS_DOC_ITEMS;
end;

procedure TfmProfession.grdPrcBaseOpsDblClick(Sender: TObject);
begin
  inherited;
  if not actEditBaseOp.Execute then
    actInsertBaseOp.Execute;
end;

procedure TfmProfession.grdPrcConcreteOpsDblClick(Sender: TObject);
begin
  inherited;
  if not actEditConcreteOp.Execute then
    actInsertConcreteOp.Execute;
end;

procedure TfmProfession.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataPROFESSION_CODE.Assign(cdsDataPROFESSION_CODE);

  cdsGridDataPROFESSION_PERIOD_CODE.AsInteger:=
    FMaxProfessionPeriodCode + 1;

  cdsGridDataUSED_BY_EMPLOYEES.AsBoolean:= True;
  cdsGridDataUSED_BY_TEAMS.AsBoolean:= True;
end;

procedure TfmProfession.cdsProfessionBaseOpsNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsProfessionBaseOpsPROFESSION_CODE.Assign(cdsDataPROFESSION_CODE);
end;

procedure TfmProfession.cdsProfessionBaseOpsPRC_BASE_OP_CODEChange(Sender: TField);
begin
  inherited;
  cdsProfessionBaseOpsPRC_BASE_OP_FORMATTED_FULL_NO.AsVariant:=
    cdsProcessBaseOperations.Lookup(
      'PRC_BASE_OP_CODE',
      cdsProfessionBaseOpsPRC_BASE_OP_CODE.AsVariant,
      'PRC_BASE_OP_FORMATTED_FULL_NO');
end;

procedure TfmProfession.cdsProfessionConcreteOpsNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsProfessionConcreteOpsPROFESSION_CODE.Assign(cdsDataPROFESSION_CODE);
end;

procedure TfmProfession.cdsProfessionConcreteOpsPRC_CONCRETE_OP_CODEChange(Sender: TField);
begin
  inherited;
  cdsProfessionConcreteOpsPRC_CONCR_OP_FORMATTED_FULL_NO.AsVariant:=
    cdsProcessConcreteOperations.Lookup(
      'PRC_CONCRETE_OP_CODE',
      cdsProfessionConcreteOpsPRC_CONCRETE_OP_CODE.AsVariant,
      'PRC_CONCR_OP_FORMATTED_FULL_NO');
end;

procedure TfmProfession.OpenDataSets;
begin
  cdsProfessionKinds.Open;
  cdsProcessBaseOperations.Open;
  cdsProcessConcreteOperations.Open;
  inherited;
end;

procedure TfmProfession.CloseDataSets;
begin
  inherited;
  cdsProcessConcreteOperations.Close;
  cdsProcessBaseOperations.Close;
  cdsProfessionKinds.Close;
end;

function TfmProfession.GetBaseOpsReadOnly: Boolean;
begin
  Result:= (EditMode = emReadOnly) or (IntToProfessionType(cdsData_PROFESSION_TYPE_CODE.AsInteger) <> ptBaseOp);
end;

function TfmProfession.GetConcreteOpsReadOnly: Boolean;
begin
  Result:= (EditMode = emReadOnly) or (IntToProfessionType(cdsData_PROFESSION_TYPE_CODE.AsInteger) <> ptConcreteOp);
end;

function TfmProfession.GetOriginalFormCaption: string;
begin
  if cdsDataIS_GROUP.AsBoolean then
    Result:= SIsGroupFormCaption
  else
    Result:= SIsDefiniteFormCaption;
end;

procedure TfmProfession.DoApplyUpdates;
begin
  inherited;
  FIsProfessionTypeChanged:= False;
end;

end.
