unit fDeptsTreeEditorEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, fDateIntervalFrame, StdCtrls, JvExStdCtrls, JvDBCombobox,
  AbmesDBCheckBox, JvExControls, JvComponent, JvDBLookup, Mask, DBCtrls,
  ComCtrls, ToolWin, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, DB, DBClient,
  AbmesClientDataSet, JvCaptionButton, ActnList, Buttons, ExtCtrls,
  dDocClient, fDeptPeriods, uClientTypes, JvComponentBase, AbmesFields,
  GridsEh, DBGridEh, AbmesDBGrid, ColorNavigator, fPrcDataFieldEditFrame,
  JvCombobox, DBGridEhGrouping, fDualGridFrame, fDeptOWDPriorities;

type
  TfmDeptsTreeEditorEdit = class(TEditForm)
    actDocumentationData: TAction;
    frProduct: TfrProductFieldEditFrame;
    gbDeptIdentification: TGroupBox;
    tlbDocs: TToolBar;
    btnDocs: TToolButton;
    edtName: TDBEdit;
    lblName: TLabel;
    edtSuffixLetter: TDBEdit;
    edtCustomCode: TDBEdit;
    cbDeptType: TJvDBLookupCombo;
    lblDeptType: TLabel;
    gbOptions: TGroupBox;
    chbIsBranch: TAbmesDBCheckBox;
    gbDateInterval: TGroupBox;
    frDateIntervalFrame1: TfrDateIntervalFrame;
    cbIsExternal: TJvDBComboBox;
    lblsExternal: TLabel;
    lblIsRecurrent: TLabel;
    cbIsRecurrent: TJvDBComboBox;
    actDeptPeriods: TAction;
    btnDeptPeriods: TBitBtn;
    cdsStoreMinQuantities: TAbmesClientDataSet;
    cdsStoreMinQuantitiesPRODUCT_STORE_CODE: TAbmesFloatField;
    cdsStoreMinQuantitiesPRODUCT_CODE: TAbmesFloatField;
    cdsStoreMinQuantitiesPRODUCT_NAME: TAbmesWideStringField;
    cdsStoreMinQuantitiesPRODUCT_NO: TAbmesFloatField;
    cdsStoreMinQuantitiesSTORE_CODE: TAbmesFloatField;
    cdsStoreMinQuantitiesBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsStoreMinQuantitiesEND_DATE: TAbmesSQLTimeStampField;
    cdsStoreMinQuantitiesIS_PAST: TAbmesFloatField;
    cdsStoreMinQuantitiesIS_PRESENT: TAbmesFloatField;
    cdsStoreMinQuantitiesIS_FUTURE: TAbmesFloatField;
    cdsStoreMinQuantitiesMIN_QUANTITY: TAbmesFloatField;
    cdsStoreMinQuantitiesACCOUNT_MIN_QUANTITY: TAbmesFloatField;
    cdsStoreMinQuantitiesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsStoreMinQuantitiesDOC_CODE: TAbmesFloatField;
    cdsStoreMinQuantitiesHAS_DOC_ITEMS: TAbmesFloatField;
    pcMain: TPageControl;
    tsMinQuantities: TTabSheet;
    pnlMinQuantitiesButtons: TPanel;
    navMinQuantities: TDBColorNavigator;
    tlbMinQuantities: TToolBar;
    sepMinQuantitiesExcelExport: TToolButton;
    btnMinQuantitiesExcelExport: TToolButton;
    grdMinQuantities: TAbmesDBGrid;
    dsStoreMinQuantities: TDataSource;
    cdsStoreMinQuantitiesMEASURE_CODE: TAbmesFloatField;
    cdsStoreMinQuantitiesACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsStoreMinQuantitiesACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsStoreMinQuantities_MEASURE_ABBREV: TAbmesWideStringField;
    cdsStoreMinQuantities_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    tlbMinQuantityDocs: TToolBar;
    sepMinQuantityDocs: TToolButton;
    pnlMinQuantityDocs: TPanel;
    btnMinQuantityDocs: TToolButton;
    actMinQuantityDocs: TAction;
    actMinQuantitiesExcelExport: TAction;
    actMinQuantitiesWorkMeasure: TAction;
    actMinQuantitiesAccountMeasure: TAction;
    tlbToggleMinQuantitiesMeasures: TToolBar;
    btnMinQuantitiesWorkMeasure: TToolButton;
    btnMinQuantitiesAccountMeasure: TToolButton;
    actPastMinQuantities: TAction;
    actPresentMinQuantities: TAction;
    actFutureMinQuantities: TAction;
    sepPastMinQuantities: TToolButton;
    btnPastMinQuantities: TSpeedButton;
    btnPresentMinQuantities: TSpeedButton;
    btnFutureMinQuantities: TSpeedButton;
    actAddMinQuantity: TAction;
    actEditMinQuantity: TAction;
    actDelMinQuantity: TAction;
    cdsStoreMinQuantities_MAX_PRODUCT_STORE_CODE: TAggregateField;
    cdsStoreMinQuantitiesPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    actProductDocs: TAction;
    tlbProductDocs: TToolBar;
    sepProductDocs: TToolButton;
    pnlProductDocs: TPanel;
    btnProductDocs: TToolButton;
    cdsStoreTypes: TAbmesClientDataSet;
    cdsStoreTypesSTORE_TYPE_CODE: TAbmesFloatField;
    cdsStoreTypesSTORE_TYPE_NAME: TAbmesWideStringField;
    cdsStoreTypesSTORE_TYPE_ABBREV: TAbmesWideStringField;
    dsStoreTypes: TDataSource;
    gbStore: TGroupBox;
    chbIsStore: TAbmesDBCheckBox;
    chbIsComputerizedStore: TAbmesDBCheckBox;
    chbIsFinStore: TAbmesDBCheckBox;
    cbStoreType: TJvDBLookupCombo;
    bvlStore: TBevel;
    tsPrcData: TTabSheet;
    cdsDeptOWDPriorities: TAbmesClientDataSet;
    dsDeptOWDPriorities: TDataSource;
    cdsDeptOWDPrioritiesDEPT_CODE: TAbmesFloatField;
    cdsDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    tsDeptOWDPriorities: TTabSheet;
    cdsDeptNotOWDPriorities: TAbmesClientDataSet;
    dsDeptNotOWDPriorites: TDataSource;
    cdsDeptNotOWDPrioritiesDEPT_CODE: TAbmesFloatField;
    cdsDeptNotOWDPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    cdsDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField;
    cdsDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField;
    cdsDeptNotOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField;
    cdsDeptNotOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField;
    cdsDeptOWDPCoverTypes: TAbmesClientDataSet;
    cdsDeptOWDPriorities_DEPT_OWDP_COVER_TYPE_NAME: TAbmesWideStringField;
    pnlIsOWDPrioritiesSetComplete: TPanel;
    lblOWDPrioritiesCount: TLabel;
    tlbIsOWDPrioritiesSetComplete: TToolBar;
    btnIsOWDPrioritiesSetComplete: TToolButton;
    edtOWDPrioritiesCount: TDBEdit;
    cdsDeptOWDPriorities_OWD_PRIORITIES_COUNT: TAggregateField;
    actIsOWDPrioritiesSetComplete: TAction;
    cdsDeptOWDPrioritiesDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_NO: TAbmesFloatField;
    cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_NAME: TAbmesWideStringField;
    cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeptNotOWDPrioritiesHAS_NOT_COVERED_DESCENDANT: TAbmesFloatField;
    frDeptOWDPriorities: TfrDeptOWDPriorities;
    cdsDeptOWDPrioritiesHAS_NOT_COVERED_DESCENDANT: TAbmesFloatField;
    lblIsStore: TLabel;
    cdsOccWorkDeptPriorities: TAbmesClientDataSet;
    cdsOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    cdsOccWorkDeptPrioritiesORG_WORK_LEVEL_CODE: TAbmesFloatField;
    cdsDeptOWDPriorities_ORG_WORK_LEVEL_CODE: TAbmesFloatField;
    cdsDeptNotOWDPriorities_ORG_WORK_LEVEL_CODE: TAbmesFloatField;
    procedure actDeptPeriodsExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actDocumentationDataExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsStoreMinQuantitiesBeforeOpen(DataSet: TDataSet);
    procedure grdMinQuantitiesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure cdsStoreMinQuantitiesBEGIN_DATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsStoreMinQuantitiesPRODUCT_CODEChange(Sender: TField);
    procedure cdsStoreMinQuantitiesMIN_QUANTITYChange(Sender: TField);
    procedure cdsStoreMinQuantitiesACCOUNT_MIN_QUANTITYChange(
      Sender: TField);
    procedure actMinQuantityDocsUpdate(Sender: TObject);
    procedure actMinQuantityDocsExecute(Sender: TObject);
    procedure actMinQuantitiesExcelExportUpdate(Sender: TObject);
    procedure actMinQuantitiesExcelExportExecute(Sender: TObject);
    procedure actMinQuantitiesWorkMeasureExecute(Sender: TObject);
    procedure actMinQuantitiesAccountMeasureExecute(Sender: TObject);
    procedure actPastPresentFutureMinQuantitiesExecute(Sender: TObject);
    procedure cdsStoreMinQuantitiesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actAddMinQuantityUpdate(Sender: TObject);
    procedure actEditMinQuantityUpdate(Sender: TObject);
    procedure actDelMinQuantityUpdate(Sender: TObject);
    procedure actDelMinQuantityExecute(Sender: TObject);
    procedure actAddMinQuantityExecute(Sender: TObject);
    procedure actEditMinQuantityExecute(Sender: TObject);
    procedure navMinQuantitiesBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure grdMinQuantitiesDblClick(Sender: TObject);
    procedure cdsStoreMinQuantitiesNewRecord(DataSet: TDataSet);
    procedure cdsStoreMinQuantitiesBeforePost(DataSet: TDataSet);
    procedure actProductDocsUpdate(Sender: TObject);
    procedure actProductDocsExecute(Sender: TObject);
    procedure cdsDeptOWDPrioritiesBeforeOpen(DataSet: TDataSet);
    procedure cdsDeptNotOWDPrioritiesBeforeOpen(DataSet: TDataSet);
    procedure cdsDeptOWDPrioritiesNewRecord(DataSet: TDataSet);
    procedure actIsOWDPrioritiesSetCompleteUpdate(Sender: TObject);
    procedure actIsOWDPrioritiesSetCompleteExecute(Sender: TObject);
    procedure cdsDeptOWDPrioritiesDEPT_OWDP_COVER_TYPE_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDeptOWDPCoverTypesFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_CODEChange(Sender: TField);
  private
    FfmDeptPeriods: TfmDeptPeriods;
    FOlddmDocClientOnDataChanged: TNotifyEvent;
    FInQuantitySync: Boolean;
    FWasBranch: Boolean;
    FfrPrcData: TfrPrcDataFieldEditFrame;
    FInsertingGroup: Boolean;
    procedure DetailsChanged;
    procedure dmDocClientOnDataChanged(Sender: TObject);
    procedure SetMinQuantitiesColumns;
    procedure RefilterMinQuantities;
    function ShowMinQuantityEditForm(AEditMode: TEditMode): Boolean;
    function DelMinQuantityEnabled: Boolean;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AInsertingGroup: Boolean = False;
      ADeptPeriodsClientDataSetPointer: PPointer = nil;
      AStoreMinQuantitiesClientDataSetPointer: PPointer = nil;
      ADeptOWDPrioritiesClientDataSetPointer: PPointer = nil): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AInsertingGroup: Boolean = False); reintroduce; virtual;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

type
  TfmDeptsTreeEditorEditClass = class of TfmDeptsTreeEditorEdit;

implementation

uses
  fTreeSelectForm, uUtils, dMain, uDocUtils, fBaseForm, uClientUtils,
  uTreeClientUtils, uExcelExport, fGridForm, Menus, fProductMinQuantityEdit,
  uTreeNodes, Math, uClientDateTime,
  uPrcDeclarations, uPrcUtils, rDeptPrcDataReport, uUserActivityConsts,
  uClientConsts, uOWDPriorityTypes, AbmesDialogs, uOWDPriorityClientConsts;

resourcestring
  SSkipOWDPTypeCheckHint = 'ТП е Групово и е обявено за Задържащо';

{$R *.DFM}

{ TfmDeptsTreeEditorEdit }

procedure TfmDeptsTreeEditorEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  OriginalModalResult: Integer;
begin
  OriginalModalResult:= ModalResult;

  if (ModalResult = mrOK) then
    CheckEditMode(dsData.DataSet);

  inherited;

  if (OriginalModalResult <> mrOK) and
     ((dsData.DataSet as TCustomClientDataSet).ChangeCount > 0) then
    (dsData.DataSet as TCustomClientDataSet).UndoLastChange(False);
end;

procedure TfmDeptsTreeEditorEdit.FormCreate(Sender: TObject);
begin
  inherited;

  pcMain.ActivePageIndex:= 0;

  frProduct.TreeDetailSelection:= tdsInstance;

  FfmDeptPeriods:= TfmDeptPeriods.CreateEx;
  FfmDeptPeriods.ChangeProc:= DetailsChanged;

  RegisterDateFields(cdsStoreMinQuantities);

  SetMinQuantitiesColumns;

  FfrPrcData:= TfrPrcDataFieldEditFrame.Create(Self);
  FfrPrcData.OwnerDisplayName:= SDept;
  FfrPrcData.PrcDataReportClass:= TrptDeptPrcDataReport;
  tsPrcData.InsertControl(FfrPrcData);

  MaximizeStyle:= msVertical;
end;

procedure TfmDeptsTreeEditorEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FfmDeptPeriods.ReleaseForm;
end;

procedure TfmDeptsTreeEditorEdit.grdMinQuantitiesDblClick(Sender: TObject);
begin
  inherited;
  if not actEditMinQuantity.Execute then
    actAddMinQuantity.Execute;
end;

procedure TfmDeptsTreeEditorEdit.grdMinQuantitiesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmDeptsTreeEditorEdit.actAddMinQuantityExecute(Sender: TObject);
begin
  inherited;
  ShowMinQuantityEditForm(emInsert);
end;

procedure TfmDeptsTreeEditorEdit.actAddMinQuantityUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsStoreMinQuantities.Active and
    (EditMode <> emReadOnly);
end;

procedure TfmDeptsTreeEditorEdit.actDelMinQuantityExecute(Sender: TObject);
begin
  inherited;
  navMinQuantities.BtnClick(nbDelete);
end;

procedure TfmDeptsTreeEditorEdit.actDelMinQuantityUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= DelMinQUantityEnabled;
end;

function TfmDeptsTreeEditorEdit.DelMinQuantityEnabled: Boolean;
begin
  Result:=
    cdsStoreMinQuantities.Active and
    (not cdsStoreMinQuantities.IsEmpty) and
    (EditMode <> emReadOnly);
end;

procedure TfmDeptsTreeEditorEdit.actDeptPeriodsExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if (EditMode = emReadOnly) then
    em:= emReadOnly
  else
    em:= emEdit;

  FfmDeptPeriods.ExternalShowForm(dmDocClient, dsData.DataSet, em);
end;

procedure TfmDeptsTreeEditorEdit.actDocumentationDataExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(EditMode, (Sender as TAction).ActionComponent as TControl, dotDept, dsData.DataSet);
end;

procedure TfmDeptsTreeEditorEdit.actEditMinQuantityExecute(
  Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if (EditMode = emReadOnly) then
    em:= emReadOnly
  else
    em:= emEdit;

  ShowMinQuantityEditForm(em);
end;

procedure TfmDeptsTreeEditorEdit.actEditMinQuantityUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    cdsStoreMinQuantities.Active and
    (not cdsStoreMinQuantities.IsEmpty) and
    (EditMode <> emReadOnly);

  if (EditMode = emReadOnly) then
    (Sender as TAction).Caption:= SReadOnlyCaption + cDialogSuffix
  else
    (Sender as TAction).Caption:= SEditCaption + cDialogSuffix;
end;

procedure TfmDeptsTreeEditorEdit.actMinQuantitiesAccountMeasureExecute(
  Sender: TObject);
begin
  inherited;
  SetMinQuantitiesColumns;
end;

procedure TfmDeptsTreeEditorEdit.actMinQuantitiesExcelExportExecute(
  Sender: TObject);
begin
  inherited;
  GridExcelExport(grdMinQuantities);
end;

procedure TfmDeptsTreeEditorEdit.actMinQuantitiesExcelExportUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsStoreMinQuantities.Active and
    not cdsStoreMinQuantities.IsEmpty;
end;

procedure TfmDeptsTreeEditorEdit.actMinQuantitiesWorkMeasureExecute(
  Sender: TObject);
begin
  inherited;
  SetMinQuantitiesColumns;
end;

procedure TfmDeptsTreeEditorEdit.Initialize;

  function GetPrcOwner: TProcessOwner;
  var
    IsGroup: Boolean;
  begin
    IsGroup:= IfThen(EditMode = emInsert, FInsertingGroup, dsData.DataSet.FieldByName('IS_GROUP').AsBoolean);
    Result:= Utils.IfThen(IsGroup, ProcessOwners.GroupDept, ProcessOwners.DefiniteDept);
  end;

  procedure LoadPrcData;
  begin
    WriteVariantToBlobField(
      dmMain.SvrProcesses.LoadPrcData(GetPrcOwner.Name, dsData.DataSet.FieldByName('DEPT_CODE').AsVariant),
      dsData.DataSet.FieldByName('PRC_DATA'));
  end;

var
  NodeId: Integer;
  SavedDataSetReadOnly: Boolean;
begin
  if (EditMode = emInsert) then
    NodeId:= 0
  else
    NodeId:= dsData.DataSet.FieldByName('NODE_ID').AsInteger;

  FfmDeptPeriods.cdsGridData.Params.ParamByName('DEPT_CODE').AsInteger:= NodeId;

  FfrPrcData.ProcessOwner:= GetPrcOwner;

  inherited;

  if (EditMode <> emReadOnly) then
    CheckEditMode(dsData.DataSet);

  FOlddmDocClientOnDataChanged:= dmDocClient.OnDataChanged;
  dmDocClient.OnDataChanged:= dmDocClientOnDataChanged;

  InitializeAbmesDBGrid(grdMinQuantities);

  FWasBranch:= dsData.DataSet.FieldByName('IS_BRANCH').AsBoolean;

  case EditMode of
    emEdit:
      begin
        LoadPrcData;
      end;

    emInsert:
      begin
        // do nothing
      end;

    emReadOnly:
      begin
        SavedDataSetReadOnly:= (dsData.DataSet as TAbmesClientDataSet).ReadOnly;
        (dsData.DataSet as TAbmesClientDataSet).ReadOnly:= False;
        try
          dsData.DataSet.Edit;
          try
            LoadPrcData;
            dsData.DataSet.Post;
          except
            dsData.DataSet.Cancel;
            raise;
          end;  { try }

          (dsData.DataSet as TAbmesClientDataSet).MergeChangeLog;
        finally
          (dsData.DataSet as TAbmesClientDataSet).ReadOnly:= SavedDataSetReadOnly;
        end;  { try }
      end
  else
    raise Exception.Create('Unknown EditMode');
  end;  { case }

  if (dsData.DataSet.FieldByName('NODE_TYPE').AsInteger = Ord(ntClass)) then
    FfrPrcData.DefaultPrcOrgDistributionStatus:= podsGroupDept
  else
    FfrPrcData.DefaultPrcOrgDistributionStatus:= podsDefiniteDept;

  if (EditMode = emInsert) then
    begin
      if (dsData.DataSet.FieldByName('NODE_TYPE').AsInteger = Ord(ntInstance)) then
        frDeptOWDPriorities.DoIncludeAll
      else
        frDeptOWDPriorities.DoIncludeRecordsWhere(
          function: Boolean begin
            Result:= (cdsDeptNotOWDPriorities_ORG_WORK_LEVEL_CODE.AsOrgWorkLevel = owlManaging);
          end);
    end;
end;

procedure TfmDeptsTreeEditorEdit.navMinQuantitiesBeforeAction(
  Sender: TObject; Button: TNavigateBtn);
begin
  inherited;

  case Button of
    nbInsert:
      begin
        actAddMinQuantity.Execute;
        Abort;
      end;

    nbEdit:
      begin
        actEditMinQuantity.Execute;
        Abort;
      end;

    nbDelete:
      if not DelMinQuantityEnabled then
        Abort;
  end;
end;

procedure TfmDeptsTreeEditorEdit.OpenDataSets;
begin
  cdsMeasures.Open;
  cdsStoreTypes.Open;
  inherited;
  cdsStoreMinQuantities.Open;
  cdsDeptOWDPriorities.Open;
  cdsDeptNotOWDPriorities.Open;
end;

procedure TfmDeptsTreeEditorEdit.RefilterMinQuantities;
var
  ProductStoreCode: Integer;
begin
  with cdsStoreMinQuantities do
    begin
      DisableControls;
      try
        ProductStoreCode:= cdsStoreMinQuantitiesPRODUCT_STORE_CODE.AsInteger;

        Filtered:= False;
        Filtered:= True;

        Locate('PRODUCT_STORE_CODE', ProductStoreCode, []);
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmDeptsTreeEditorEdit.Finalize;
begin
  inherited;
  dmDocClient.OnDataChanged:= FOlddmDocClientOnDataChanged;
end;

procedure TfmDeptsTreeEditorEdit.actFormUpdate(Sender: TObject);
const
  SkipOWDPTypeCheckColors: array[Boolean] of TColor = (clWindowText, clRed);
  SkipOWDPTypeCheckHints: array[Boolean] of string = ('', SSkipOWDPTypeCheckHint);
var
  NodeType: Integer;
begin
  inherited;

  NodeType:= dsData.DataSet.FieldByName('NODE_TYPE').AsInteger;

  cbStoreType.Enabled:= chbIsStore.Checked;
  chbIsComputerizedStore.Enabled:= chbIsStore.Checked;
  chbIsFinStore.Enabled:= chbIsStore.Checked;
  btnDocs.ImageIndex:= dsData.DataSet.FieldByName('HAS_DOCUMENTATION').AsInteger;

  tsMinQuantities.TabVisible:= dsData.DataSet.FieldByName('IS_STORE').AsBoolean;

  edtCustomCode.ReadOnly:= FWasBranch;
  edtCustomCode.Color:= ReadOnlyColors[FWasBranch];

  chbIsFinStore.Visible:=
    LoginContext.HasUserActivity(uaShowFinStores) or
    ( LoginContext.HasUserWorkDept(dsData.DataSet.FieldByName('DEPT_CODE').AsInteger) and
      LoginContext.HasUserActivity(uaShowOccupationWorkDeptFinStores) );

  edtOWDPrioritiesCount.Font.Color:=
    IsOWDPrioritiesSetCompleteColors[dsData.DataSet.FieldByName('IS_OWD_PRIORITIES_SET_COMPLETE').AsBoolean];

  lblIsStore.Font.Color:= SkipOWDPTypeCheckColors[dsData.DataSet.FieldByName('SKIP_OWDP_TYPE_CHECK').AsBoolean];
  lblIsStore.Hint:= SkipOWDPTypeCheckHints[dsData.DataSet.FieldByName('SKIP_OWDP_TYPE_CHECK').AsBoolean];

  gbStore.Visible:=
    (NodeType = Ord(ntInstance)) or
    dsData.DataSet.FieldByName('SKIP_OWDP_TYPE_CHECK').AsBoolean;

  chbIsBranch.Visible:= (NodeType = Ord(ntClass));
end;

procedure TfmDeptsTreeEditorEdit.actIsOWDPrioritiesSetCompleteExecute(Sender: TObject);
var
  NewIsComplete: Boolean;
begin
  inherited;

  case MessageDlgEx(SConfirmOWDPrioritiesSetComplete, mtConfirmation, mbYesNoCancel, 0) of
    mrYes: NewIsComplete:= True;
    mrNo: NewIsComplete:= False;
  else
    Exit;
  end;

  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('IS_OWD_PRIORITIES_SET_COMPLETE').AsBoolean:= NewIsComplete;
end;

procedure TfmDeptsTreeEditorEdit.actIsOWDPrioritiesSetCompleteUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode <> emReadOnly);
end;

procedure TfmDeptsTreeEditorEdit.actMinQuantityDocsExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl),
    dotProductStore, cdsStoreMinQuantities);
end;

procedure TfmDeptsTreeEditorEdit.actMinQuantityDocsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsStoreMinQuantities.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsStoreMinQuantitiesHAS_DOC_ITEMS.AsInteger;
end;

procedure TfmDeptsTreeEditorEdit.actPastPresentFutureMinQuantitiesExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  RefilterMinQuantities;
end;

procedure TfmDeptsTreeEditorEdit.actProductDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl),
    cdsStoreMinQuantitiesPRODUCT_CODE.AsInteger);
end;

procedure TfmDeptsTreeEditorEdit.actProductDocsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsStoreMinQuantities.IsEmpty;
  (Sender as TAction).ImageIndex:= cdsStoreMinQuantitiesPRODUCT_HAS_DOC_ITEMS.AsInteger;
end;

procedure TfmDeptsTreeEditorEdit.cdsDeptNotOWDPrioritiesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsDeptNotOWDPriorities.Params, dsData.DataSet);
end;

procedure TfmDeptsTreeEditorEdit.cdsDeptOWDPCoverTypesFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    ( (dsData.DataSet.FieldByName('NODE_TYPE').AsInteger = Ord(ntClass)) and
      (cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_CODE.AsDeptOWDPCoverType in [dowdpctAncestor, dowdpctLocalAndDescendants])
    ) or
    ( (dsData.DataSet.FieldByName('NODE_TYPE').AsInteger <> Ord(ntClass)) and
      (cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_CODE.AsDeptOWDPCoverType in [dowdpctLocal, dowdpctAncestor])
    );
end;

procedure TfmDeptsTreeEditorEdit.cdsDeptOWDPrioritiesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsDeptOWDPriorities.Params, dsData.DataSet);
end;

procedure TfmDeptsTreeEditorEdit.cdsDeptOWDPrioritiesDEPT_OWDP_COVER_TYPE_CODEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if DisplayText and not Sender.IsNull then
    Text:= DeptOWDPCoverTypeAbbrevs[IntToDeptOWDPCoverType(Sender.AsInteger)]
  else
    Text:= Sender.AsString;
end;

procedure TfmDeptsTreeEditorEdit.cdsDeptOWDPrioritiesNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDeptOWDPrioritiesDEPT_CODE.AsInteger:= dsData.DataSet.FieldByName('NODE_ID').AsInteger;
end;

procedure TfmDeptsTreeEditorEdit.cdsDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_CODEChange(Sender: TField);
begin
  inherited;
  cdsDeptOWDPrioritiesDEPT_OWDP_COVER_TYPE_CODE.AsDeptOWDPCoverType:=
    DefaultDeptOWDPCoverType(
      dsData.DataSet.FieldByName('NODE_TYPE').AsInteger = Ord(ntClass),
      cdsDeptOWDPriorities_ORG_WORK_LEVEL_CODE.AsOrgWorkLevel);
end;

procedure TfmDeptsTreeEditorEdit.cdsStoreMinQuantitiesACCOUNT_MIN_QUANTITYChange(
  Sender: TField);
begin
  inherited;

  if FInQuantitySync then
    Exit;

  FInQuantitySync:= True;
  try
    if Sender.IsNull or (cdsStoreMinQuantitiesACCOUNT_MEASURE_COEF.AsFloat = 0) then
      cdsStoreMinQuantitiesMIN_QUANTITY.Clear
    else
      cdsStoreMinQuantitiesMIN_QUANTITY.AsFloat:=
        Sender.AsFloat / cdsStoreMinQuantitiesACCOUNT_MEASURE_COEF.AsFloat;
  finally
    FInQuantitySync:= False;
  end;
end;

procedure TfmDeptsTreeEditorEdit.cdsStoreMinQuantitiesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsStoreMinQuantities.Params, dsData.DataSet);
end;

procedure TfmDeptsTreeEditorEdit.cdsStoreMinQuantitiesBeforePost(
  DataSet: TDataSet);
var
  NowDate: TDateTime;
begin
  inherited;

  NowDate:= ContextDate;

  cdsStoreMinQuantitiesIS_PAST.AsBoolean:=
    (cdsStoreMinQuantitiesEND_DATE.AsDateTime < NowDate);
  cdsStoreMinQuantitiesIS_FUTURE.AsBoolean:=
    (cdsStoreMinQuantitiesBEGIN_DATE.AsDateTime > NowDate);
  cdsStoreMinQuantitiesIS_PRESENT.AsBoolean:=
    not cdsStoreMinQuantitiesIS_PAST.AsBoolean and
    not cdsStoreMinQuantitiesIS_FUTURE.AsBoolean;      
end;

procedure TfmDeptsTreeEditorEdit.cdsStoreMinQuantitiesBEGIN_DATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= dmMain.GetDateIntervalAsShortString(Sender.AsDateTime, cdsStoreMinQuantitiesEND_DATE.AsDateTime);
end;

procedure TfmDeptsTreeEditorEdit.cdsStoreMinQuantitiesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (cdsStoreMinQuantitiesIS_PAST.AsBoolean and actPastMinQuantities.Checked) or
    (cdsStoreMinQuantitiesIS_PRESENT.AsBoolean and actPresentMinQuantities.Checked) or
    (cdsStoreMinQuantitiesIS_FUTURE.AsBoolean and actFutureMinQuantities.Checked);
end;

procedure TfmDeptsTreeEditorEdit.cdsStoreMinQuantitiesMIN_QUANTITYChange(
  Sender: TField);
begin
  inherited;

  if FInQuantitySync then
    Exit;

  FInQuantitySync:= True;
  try
    if Sender.IsNull or (cdsStoreMinQuantitiesACCOUNT_MEASURE_COEF.AsFloat = 0) then
      cdsStoreMinQuantitiesACCOUNT_MIN_QUANTITY.Clear
    else
      cdsStoreMinQuantitiesACCOUNT_MIN_QUANTITY.AsFloat:=
        Sender.AsFloat * cdsStoreMinQuantitiesACCOUNT_MEASURE_COEF.AsFloat;
  finally
    FInQuantitySync:= False;
  end;
end;

procedure TfmDeptsTreeEditorEdit.cdsStoreMinQuantitiesNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  cdsStoreMinQuantitiesPRODUCT_STORE_CODE.AsInteger:=
    VarToInt(cdsStoreMinQuantities_MAX_PRODUCT_STORE_CODE.AsVariant) + 1;

  cdsStoreMinQuantitiesSTORE_CODE.AsInteger:=
    dsData.DataSet.FieldByName('NODE_ID').AsInteger;
end;

procedure TfmDeptsTreeEditorEdit.cdsStoreMinQuantitiesPRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(Sender,
    cdsStoreMinQuantitiesPRODUCT_NAME, cdsStoreMinQuantitiesPRODUCT_NO,
    cdsStoreMinQuantitiesMEASURE_CODE,
    cdsStoreMinQuantitiesACCOUNT_MEASURE_CODE, cdsStoreMinQuantitiesACCOUNT_MEASURE_COEF,
    nil, nil, nil, nil, nil,
    cdsStoreMinQuantitiesPRODUCT_HAS_DOC_ITEMS);
end;

procedure TfmDeptsTreeEditorEdit.CloseDataSets;
begin
  cdsDeptNotOWDPriorities.Close;
  cdsDeptOWDPriorities.Close;
  cdsStoreMinQuantities.Close;
  inherited;
  cdsStoreTypes.Close;
  cdsMeasures.Close;
end;

procedure TfmDeptsTreeEditorEdit.DetailsChanged;
begin
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('CHANGE_DATE_TIME').AsDateTime:= ContextNow;
end;

procedure TfmDeptsTreeEditorEdit.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDeptOWDPriorities) then
    begin
      AFrame.ReadOnly:= (EditMode = emReadOnly) or dsData.DataSet.FieldByName('IS_OWD_PRIORITIES_SET_COMPLETE').AsBoolean;
      Exit;
    end;

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmDeptsTreeEditorEdit.SetMinQuantitiesColumns;
begin
  grdMinQuantities.Columns.BeginUpdate;
  try
    grdMinQuantities.Columns[3].Visible:= actMinQuantitiesWorkMeasure.Checked;
    grdMinQuantities.Columns[4].Visible:= actMinQuantitiesAccountMeasure.Checked;
    grdMinQuantities.Columns[5].Visible:= actMinQuantitiesWorkMeasure.Checked;
    grdMinQuantities.Columns[6].Visible:= actMinQuantitiesAccountMeasure.Checked;
  finally
    grdMinQuantities.Columns.EndUpdate;
  end;
end;

procedure TfmDeptsTreeEditorEdit.SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AInsertingGroup: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FInsertingGroup:= AInsertingGroup;
end;

class function TfmDeptsTreeEditorEdit.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AInsertingGroup: Boolean;
  ADeptPeriodsClientDataSetPointer, AStoreMinQuantitiesClientDataSetPointer,
  ADeptOWDPrioritiesClientDataSetPointer: PPointer): Boolean;
var
  f: TfmDeptsTreeEditorEdit;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AInsertingGroup);
    ADeptPeriodsClientDataSetPointer^:= f.FfmDeptPeriods.cdsGridData;
    AStoreMinQuantitiesClientDataSetPointer^:= f.cdsStoreMinQuantities;
    ADeptOWDPrioritiesClientDataSetPointer^:= f.cdsDeptOWDPriorities;
    try
      f.InternalShowForm;
    finally
      ADeptPeriodsClientDataSetPointer^:= nil;
      AStoreMinQuantitiesClientDataSetPointer^:= nil;
      ADeptOWDPrioritiesClientDataSetPointer^:= nil;
    end;  { try }
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

function TfmDeptsTreeEditorEdit.ShowMinQuantityEditForm(
  AEditMode: TEditMode): Boolean;
var
  FSelectFinancialObject: Boolean;
begin
  FSelectFinancialObject:= dsData.DataSet.FieldByName('IS_FIN_STORE').AsBoolean;
  Result:= TfmProductMinQuantityEdit.ShowForm(dmDocClient, cdsStoreMinQuantities, AEditMode, doNone, FSelectFinancialObject);
end;

procedure TfmDeptsTreeEditorEdit.dmDocClientOnDataChanged(Sender: TObject);
begin
  with dsData, DataSet do
    if dmDocClient.DSIsCurrent(DataSet) then
      begin
        CheckEditMode(DataSet);

        FieldByName('DOC_EMPTINESS_REQUIREMENT_CODE').AsVariant:=
          dmDocClient.cdsDocsDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant;
        FieldByName('DOC_IS_COMPLETE').AsVariant:=
          dmDocClient.cdsDocsIS_COMPLETE.AsVariant;
        FieldByName('ACTIVE_DI_COUNT').AsInteger:=
          dmDocClient.DSDocItemCount(DataSet, True);
        FieldByName('UNAUTHORIZED_ACTIVE_DI_COUNT').AsInteger:=
          FieldByName('ACTIVE_DI_COUNT').AsInteger - dmDocClient.DSAuthorizedDocItemCount(DataSet, True);
        FieldByName('UNAPPROVED_ACTIVE_DI_COUNT').AsInteger:=
          FieldByName('ACTIVE_DI_COUNT').AsInteger - dmDocClient.DSApprovedDocItemCount(DataSet, True);

        FieldByName('HAS_DOCUMENTATION').AsBoolean:=
          (FieldByName('ACTIVE_DI_COUNT').AsInteger > 0);
      end;
end;

end.


