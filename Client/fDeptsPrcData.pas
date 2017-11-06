unit fDeptsPrcData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, Menus, DB, AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  Buttons, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, StdCtrls,
  DBGridEhGrouping, fBaseFrame, fPrcDataFieldEditFrame, fDBFrame, fBaseForm, fEditForm, uClientConsts, uNestProc,
  uClientTypes, ImgList, fGridTreeListExpanderFrame, Generics.Collections,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.ImageList, System.Actions,
  EhLibVCL, DBAxisGridsEh;

type
  TSavedExpandedNodes = TList<Integer>;

type
  [CanUseDocs]
  [VerticalResizeStep(TreeListRowHeight)]
  TfmDeptsPrcData = class(TMasterDetailForm)
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataPARENT_CODE: TAbmesFloatField;
    cdsGridDataDEPT_NAME: TAbmesWideStringField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataIS_GROUP: TAbmesFloatField;
    cdsGridDataDEPT_IMAGE_INDEX: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    pcDetail: TPageControl;
    tsPrcData: TTabSheet;
    tsOccupations: TTabSheet;
    cdsDetailDEPT_CODE: TAbmesFloatField;
    cdsDetailIS_GROUP: TAbmesFloatField;
    cdsDetailPRC_DATA: TBlobField;
    cdsDetailBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDetailEND_DATE: TAbmesSQLTimeStampField;
    cdsDeptTypes: TAbmesClientDataSet;
    cdsDetailDEPT_TYPE_CODE: TAbmesFloatField;
    cdsDetailNODE_NO: TAbmesFloatField;
    cdsDetailSUFFIX_LETTER: TAbmesWideStringField;
    cdsDetailNODE_NAME: TAbmesWideStringField;
    cdsDeptTypesDEPT_TYPE_CODE: TAbmesFloatField;
    cdsDeptTypesDEPT_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeptTypesDEPT_TYPE_NAME: TAbmesWideStringField;
    cdsDetail_DEPT_TYPE_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsTO_DATE: TAbmesSQLTimeStampField;
    cdsGridDataTOTAL_DEPT_BASE_ACTIONS: TAbmesFloatField;
    cdsGridDataTOTAL_DEPT_CONCRETE_ACTIONS: TAbmesFloatField;
    cdsGridDataNOT_DISTRIBUTED_DEPT_ACTIONS: TAbmesFloatField;
    cdsGridDataNOT_DISTRIB_OCC_BASE_ACTIONS: TAbmesFloatField;
    cdsGridDataNOT_DISTRIB_OCC_CONCR_ACTIONS: TAbmesFloatField;
    cdsGridDataDEPT_DAYS_LEFT: TAbmesFloatField;
    tlbDeptsDoc: TToolBar;
    sepDeptsDoc: TToolButton;
    lblDeptDoc: TLabel;
    btnDeptDoc: TToolButton;
    actDeptDoc: TAction;
    cdsGridDataOCCUPATION_SHIFT_COUNT: TAbmesFloatField;
    cdsGridDataPARALLEL_PROCESS_COUNT: TAbmesFloatField;
    cdsGridDataPARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    cdsGridDataSORT_FIELD: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsPRC_FUNC_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_KNOWL_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_BASE_OP_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_BASE_ACTION_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    pdsGridDataParamsPRC_CONCRETE_ACTION_CODE: TAbmesFloatField;
    cdsGridDataIS_FILTER_ACCEPTED: TAbmesFloatField;
    cdsOccupations: TAbmesClientDataSet;
    cdsOccupationsOCCUPATION_CODE: TAbmesFloatField;
    cdsOccupationsDEPT_CODE: TAbmesFloatField;
    cdsOccupationsOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    cdsOccupationsDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField;
    cdsOccupationsSORT_FIELD: TAbmesWideStringField;
    cdsOccupationsTREE_DISPLAY_NAME: TAbmesWideStringField;
    dsOccupations: TDataSource;
    pnlOccupationsTop: TPanel;
    cdsOccupations_IMAGE_INDEX: TAbmesFloatField;
    cdsOccupationsASSIGNMENT_DAYS_LEFT: TAbmesFloatField;
    cdsOccupationsOWD_PRIORITY_STATE_CODE: TAbmesFloatField;
    cdsOccupationsIS_CAPACITY_GENERATOR: TAbmesFloatField;
    cdsOccupationsIS_ACTIVE: TAbmesFloatField;
    cdsOccupationsIS_OCCUPIED: TAbmesFloatField;
    cdsOccupationsIS_MAIN: TAbmesFloatField;
    cdsOccupationsOCCUPATION_PHASE: TAbmesWideStringField;
    cdsOccupationsOCCUPATION_LEVEL: TAbmesFloatField;
    cdsOccupationsOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsOccupationsOCCUPATION_DAYS_LEFT: TAbmesFloatField;
    cdsOccupationsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsOccupationsDOC_CODE: TAbmesFloatField;
    cdsOccupationsHAS_DOC_ITEMS: TAbmesFloatField;
    cdsOccupationsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsOccupationsPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsOccupationsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    tlbDocs: TToolBar;
    btnOccupationDoc: TToolButton;
    sepDocs: TToolButton;
    lblOccupationDoc: TLabel;
    btnOccupationProductDoc: TToolButton;
    actOccupationDoc: TAction;
    actOccupationProductDoc: TAction;
    cdsOccupationsEMPLOYEE_OCCUPATION_PROF_COUNT: TAbmesFloatField;
    cdsOccupationsOCCUPATION_PROFESSION_COUNT: TAbmesFloatField;
    cdsOccupationsOE_MASTERED_PRC_ACTIONS_COUNT: TAbmesFloatField;
    cdsOccupationsOCC_PRC_ACTIONS_COUNT: TAbmesFloatField;
    cdsOccupations_PROFESSIONS_STATUS: TAbmesWideStringField;
    cdsOccupations_OCC_PRC_ACTIONS_STATUS: TAbmesWideStringField;
    cdsOccupationsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    tlbOccupationEditButtons: TToolBar;
    btnInserOccupation: TToolButton;
    btnEditOccupation: TToolButton;
    pmInsertOccupationMenu: TPopupMenu;
    miInsertOccupation: TMenuItem;
    miCreateLikeOccupation: TMenuItem;
    actInsertOccupation: TAction;
    actOccupationCreateLike: TAction;
    actDelOccupation: TAction;
    actEditOccupation: TAction;
    actOccupationsAndEmployees: TAction;
    actOccupationsAndEmployeesByDept: TAction;
    actOccupationsAndEmployeesByOccWorkDept: TAction;
    pmOccupationsAndEmployees: TPopupMenu;
    miOccupationsAndEmployeesByDept: TMenuItem;
    miOccupationsAndEmployeesByOccWorkDept: TMenuItem;
    cdsOccupationsAndEmployeesParams: TAbmesClientDataSet;
    cdsOccupationsAndEmployeesParamsCHOSEN_DEPTS: TAbmesWideStringField;
    cdsOccupationsAndEmployeesParamsCHOSEN_DEPTS_ONLY: TAbmesFloatField;
    cdsOccupationsAndEmployeesParamsWORK_DEPT_CODE: TAbmesFloatField;
    cdsOccupationsAndEmployeesParamsIS_NOT_ACTIVE: TAbmesFloatField;
    cdsOccupationsAndEmployeesParamsSTATUS_DATE: TAbmesSQLTimeStampField;
    btnOccupationsAndEmployees: TBitBtn;
    cdsOccupationsOWDP_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsOccupationsOWDP_DOC_CODE: TAbmesFloatField;
    cdsOccupationsOWDP_HAS_DOC_ITEMS: TAbmesFloatField;
    lblOWDPDoc: TLabel;
    btnOWDPDoc: TToolButton;
    actOWDPriorityDoc: TAction;
    btnDelOccupation: TToolButton;
    cdsOccupationsEMPLOYEE_NAME: TAbmesWideStringField;
    pdsGridDataParamsOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    cdsOccupationWorkDeptPriorities: TAbmesClientDataSet;
    cdsOccupationWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField;
    cdsOccupationWorkDeptPrioritiesPRIORITY_FULL_NAME: TAbmesWideStringField;
    pdsGridDataParams_OCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField;
    cdsOccupationsIS_FILTER_ACCEPTED: TAbmesFloatField;
    sepToggleFilteredRecords: TToolButton;
    btnToggleFilteredRecords: TToolButton;
    actToggleFilteredRecords: TAction;
    pdsGridDataParamsORG_WORK_LEVEL_CODE: TAbmesFloatField;
    pdsGridDataParamsORG_WORK_MODE_CODE: TAbmesFloatField;
    cdsOrgWorkTypes: TAbmesClientDataSet;
    cdsOrgWorkTypesORG_WORK_LEVEL_CODE: TAbmesFloatField;
    cdsOrgWorkTypesORG_WORK_MODE_CODE: TAbmesFloatField;
    cdsOrgWorkTypesORG_WORK_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_ORG_WORK_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_OCCUPATION_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsSHIFT_CODE: TAbmesFloatField;
    cdsShifts: TAbmesClientDataSet;
    cdsShiftsSHIFT_CODE: TAbmesFloatField;
    cdsShiftsSHIFT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_SHIFT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParamsIS_ACTIVE: TAbmesFloatField;
    pdsGridDataParamsIS_OCCUPIED: TAbmesFloatField;
    pdsGridDataParamsMIN_OWD_PRIORITY_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_OWD_PRIORITY_STATE_CODE: TAbmesFloatField;
    ilOccupationsTree: TImageList;
    cdsOccupationsTREE_CODE: TAbmesWideStringField;
    cdsOccupationsPARENT_TREE_CODE: TAbmesWideStringField;
    pdsGridDataParamsORG_WORK_ACTIVITY_CODE: TAbmesFloatField;
    cdsOrgWorkActivities: TAbmesClientDataSet;
    cdsOrgWorkActivitiesORG_WORK_ACTIVITY_CODE: TAbmesFloatField;
    cdsOrgWorkActivitiesORG_WORK_ACTIVITY_NO: TAbmesFloatField;
    cdsOrgWorkActivitiesORG_WORK_ACTIVITY_NAME: TAbmesWideStringField;
    pdsGridDataParams_ORG_WORK_ACTIVITY_NAME: TAbmesWideStringField;
    cdsOccupationsDEPT_OWDP_COVERING_DEPT: TAbmesWideStringField;
    pnlOccupationProductDocLabel: TPanel;
    cdsGridDataIS_FIN_STORE: TAbmesFloatField;
    cdsOccupationsSHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataHAS_EXEC_EXPL_OWD_PRIORITIES: TAbmesFloatField;
    cdsGridDataHAS_MNG_EXPL_OWD_PRIORITIES: TAbmesFloatField;
    cdsGridDataHAS_EXEC_SVC_OWD_PRIORITIES: TAbmesFloatField;
    cdsGridDataDEPT_OWD_PRIORITY_STATE_CODE: TAbmesFloatField;
    grdDepts: TAbmesDBGrid;
    frDeptsTreeListExpander: TfrGridTreeListExpanderFrame;
    grdOccupations: TAbmesDBGrid;
    frOccupationsTreeListExpander: TfrGridTreeListExpanderFrame;
    sepOccupationsExcelExport: TToolButton;
    btnOccupationsExcelExport: TToolButton;
    actOccupationsExcelExport: TAction;
    cdsOccupationsEMPLOYEE_CODE: TAbmesFloatField;
    tlbOccupationsTopRightButtons: TToolBar;
    btnOccupationEmployee: TToolButton;
    btnEmployee: TToolButton;
    actOccupationEmployee: TAction;
    actEmployee: TAction;
    sepBeforeOccupationEmployee: TToolButton;
    cdsGridDataDEPT_PRODUCT_CODE: TAbmesFloatField;
    tlbDeptProductSpecDocStatus: TToolBar;
    btnDeptProductSpecDocStatus: TToolButton;
    sepDeptProductSpecDocStatus: TToolButton;
    actDeptProductSpecDocStatus: TAction;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure cdsDetailBeforeOpen(DataSet: TDataSet);
    procedure CountFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actDeptDocExecute(Sender: TObject);
    procedure actDeptDocUpdate(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure actExcelExportExecute(Sender: TObject);
    procedure cdsOccupationsBeforeOpen(DataSet: TDataSet);
    procedure cdsDetailAfterOpen(DataSet: TDataSet);
    procedure cdsDetailBeforeClose(DataSet: TDataSet);
    procedure cdsOccupationsCalcFields(DataSet: TDataSet);
    procedure cdsOccupationsAfterOpen(DataSet: TDataSet);
    procedure cdsOccupationsIS_OCCUPIEDGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsOccupationsIS_MAINGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actOccupationDocUpdate(Sender: TObject);
    procedure actOccupationProductDocUpdate(Sender: TObject);
    procedure actOccupationDocExecute(Sender: TObject);
    procedure actOccupationProductDocExecute(Sender: TObject);
    procedure actInsertOccupationUpdate(Sender: TObject);
    procedure actInsertOccupationExecute(Sender: TObject);
    procedure actOccupationCreateLikeUpdate(Sender: TObject);
    procedure actOccupationCreateLikeExecute(Sender: TObject);
    procedure actEditOccupationUpdate(Sender: TObject);
    procedure actEditOccupationExecute(Sender: TObject);
    procedure actDelOccupationUpdate(Sender: TObject);
    procedure actDelOccupationExecute(Sender: TObject);
    procedure actOccupationsAndEmployeesExecute(Sender: TObject);
    procedure actOccupationsAndEmployeesByDeptExecute(Sender: TObject);
    procedure actOccupationsAndEmployeesByOccWorkDeptExecute(Sender: TObject);
    procedure cdsOccupationsDEPT_OWDP_COVER_TYPE_CODEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actOWDPriorityDocUpdate(Sender: TObject);
    procedure actOWDPriorityDocExecute(Sender: TObject);
    procedure actToggleFilteredRecordsExecute(Sender: TObject);
    procedure cdsOccupationsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsOccupationsBeforeClose(DataSet: TDataSet);
    procedure cdsOccupationsIS_CAPACITY_GENERATORGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataDEPT_NAMEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataDEPT_IDENTIFIERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actFormUpdate(Sender: TObject);
    procedure grdDeptsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure grdDeptsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure grdDeptsDblClick(Sender: TObject);
    procedure grdDeptsDataHintShow(Sender: TCustomDBGridEh; CursorPos: TPoint; Cell: TGridCoord;
      InCellCursorPos: TPoint; Column: TColumnEh; var Params: TDBGridEhDataHintParams; var Processed: Boolean);
    procedure grdOccupationsDblClick(Sender: TObject);
    procedure grdOccupationsDataHintShow(Sender: TCustomDBGridEh; CursorPos: TPoint; Cell: TGridCoord;
      InCellCursorPos: TPoint; Column: TColumnEh; var Params: TDBGridEhDataHintParams; var Processed: Boolean);
    procedure grdOccupationsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure grdOccupationsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure cdsGridDataBeforeClose(DataSet: TDataSet);
    procedure cdsGridDataAfterScroll(DataSet: TDataSet);
    procedure cdsGridDataBeforeScroll(DataSet: TDataSet);
    procedure actOccupationsExcelExportUpdate(Sender: TObject);
    procedure actOccupationsExcelExportExecute(Sender: TObject);
    procedure actOccupationEmployeeUpdate(Sender: TObject);
    procedure actOccupationEmployeeExecute(Sender: TObject);
    procedure actEmployeeUpdate(Sender: TObject);
    procedure actEmployeeExecute(Sender: TObject);
    procedure actDeptProductSpecDocStatusUpdate(Sender: TObject);
    procedure actDeptProductSpecDocStatusExecute(Sender: TObject);
  private
    FfrPrcData: TfrPrcDataFieldEditFrame;
    FSavedOccupationsTreeCode: string;
    FSavedExpandedNodes: TSavedExpandedNodes;
    FScrollOptimizationSavedDeptCode: Integer;
    procedure AssignOccupationEmployeeDetailStatus(StatusField, TotalDetailsCountField, DetailsCountField: TField);
    procedure ShowOccupationsAndEmployees(ASetParamsProc: TProc);
    procedure EditOccupation(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin = doNone; AInsertWorkDept: Boolean = False);
    function GetOWDPriorityStateCellHint(AField: TField): string; overload;
    procedure GetOWDPriorityStateCellParams(Column: TColumnEh; var Background: TColor);
    procedure RestoreNodeExpandedStates;
    procedure SaveNodeExpandedStates;
    function CanEditOccupation: Boolean;
    function CanEditOccupationEmployee: Boolean;
  protected
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetEditRecordEnabled: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  rDeptPrcDataReport, uPrcDeclarations, uClientUtils, uAbmesDBGridHelpers,
  fDeptsPrcDataFilter, uUtils, uOWDPriorityTypes, uTotalCountField, uDocUtils,
  uClientDateTime, uClientPrcUtils, uExcelExport, fDeptPrcData, uTreeNodes,
  uColorConsts, uUserActivityConsts, fOccupation, fOccupationsAndEmployees,
  uXMLUtils, uOWDPriorityStates, dMain, uOWDPriorityClientConsts,
  uFinanceClientUtils, uTreeListUtils, fEmployee, fOccupationAndEmployee, Types,
  fSpecDocStatus, uScalingUtils;

const
  IsFilterAcceptedColors: array[Boolean] of TColor = (clGray, clWindowText);

  DeptsTreeListSeparatorsColor = $00EAEAEA;
  OccupationsFromCoveringDeptColor = $00EAEAEA;
  ParallelOperatorAndProcessCountColor = $DDF2FF;
  DeptDaysLeftColor = $FFEAD8;

{$R *.dfm}

{ TfmDeptsPrcData }

procedure TfmDeptsPrcData.FormCreate(Sender: TObject);
begin
  inherited;
  MaximizeStyle:= msFull;
  frDeptsTreeListExpander.TreeListGrid:= grdDepts;
  frOccupationsTreeListExpander.TreeListGrid:= grdOccupations;
  FilterFormClass:= TfmDeptsPrcDataFilter;
  EditFormClass:= TfmDeptPrcData;

  FSavedExpandedNodes:= TSavedExpandedNodes.Create;

  cdsGridDataNOT_DISTRIBUTED_DEPT_ACTIONS.TotalCountField:= cdsGridDataTOTAL_DEPT_BASE_ACTIONS;
  cdsGridDataNOT_DISTRIB_OCC_BASE_ACTIONS.TotalCountField:= cdsGridDataTOTAL_DEPT_BASE_ACTIONS;
  cdsGridDataNOT_DISTRIB_OCC_CONCR_ACTIONS.TotalCountField:= cdsGridDataTOTAL_DEPT_CONCRETE_ACTIONS;

  FfrPrcData:= TfrPrcDataFieldEditFrame.Create(Self);
  FfrPrcData.SetDataSet(cdsDetail);
  FfrPrcData.OwnerDisplayName:= SDept;
  FfrPrcData.PrcDataReportClass:= TrptDeptPrcDataReport;
  tsPrcData.InsertControl(FfrPrcData);
end;

procedure TfmDeptsPrcData.SaveNodeExpandedStates;
begin
  FreeAndNil(FSavedExpandedNodes);
  FSavedExpandedNodes:= TSavedExpandedNodes.Create;
  try
    grdDepts.TreeDataSet.TempDisableControls/
      grdDepts.TreeDataSet.ForEach/
        procedure begin
          if grdDepts.TreeDataSet.TreeNodeExpanded or not grdDepts.TreeDataSet.TreeNodeHasChildren then
            FSavedExpandedNodes.Add(grdDepts.TreeDataSet.FieldByName('DEPT_CODE').AsInteger);
        end;
  except
    FreeAndNil(FSavedExpandedNodes);
    raise;
  end;
end;

procedure TfmDeptsPrcData.RestoreNodeExpandedStates;
begin
  try
    if (FSavedExpandedNodes.Count > 0) then
      grdDepts.TreeDataSet.TempDisableControls/
        procedure begin
          grdDepts.TreeDataSet.ForEach/
            procedure begin
              grdDepts.TreeDataSet.TreeNode.NodeExpanded:= FSavedExpandedNodes.Contains(grdDepts.TreeDataSet.FieldByName('DEPT_CODE').AsInteger);
            end;

          grdDepts.TreeDataSet.RecordsView.MemoryTreeList.BuildVisibleItems;
          grdDepts.TreeDataSet.Resync([]);
        end;
  finally
    FreeAndNil(FSavedExpandedNodes);
  end;
end;

procedure TfmDeptsPrcData.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FSavedExpandedNodes);
end;

procedure TfmDeptsPrcData.cdsGridDataBeforeClose(DataSet: TDataSet);
begin
  inherited;
  SaveNodeExpandedStates;
end;

procedure TfmDeptsPrcData.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  grdDepts.ConvertToTreeList('DEPT_CODE', 'PARENT_CODE');
  RestoreNodeExpandedStates;
  grdDepts.TreeDataSet.Locate('DEPT_CODE', tnRootDeptCode, []);
end;

procedure TfmDeptsPrcData.cdsGridDataBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  FScrollOptimizationSavedDeptCode:= cdsGridDataDEPT_CODE.AsInteger;
end;

procedure TfmDeptsPrcData.cdsGridDataAfterScroll(DataSet: TDataSet);
begin
  try
    if (cdsGridDataDEPT_CODE.AsInteger <> FScrollOptimizationSavedDeptCode) then
      inherited;
  finally
    FScrollOptimizationSavedDeptCode:= 0;
  end;
end;

procedure TfmDeptsPrcData.cdsGridDataDEPT_IDENTIFIERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  FinStoreFieldGetText(Sender, Text, DisplayText, Sender.DataSet.FieldByName('IS_FIN_STORE').AsBoolean);
end;

procedure TfmDeptsPrcData.cdsGridDataDEPT_NAMEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  FinStoreFieldGetText(Sender, Text, DisplayText, Sender.DataSet.FieldByName('IS_FIN_STORE').AsBoolean);
end;

procedure TfmDeptsPrcData.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = FfrPrcData) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  inherited SetDBFrameReadOnly(AFrame);
end;

procedure TfmDeptsPrcData.grdDeptsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumnEh; State: TGridDrawState);
begin
  inherited;

  if not Assigned(Column.Field) or Column.Field.DataSet.IsEmpty then
    Exit;

  if (Column.FieldName = 'DEPT_NAME') then
    DrawTreeImageColumnCell(
      grdDepts,
      dmMain.ilDeptTypes,
      Column.Field.DataSet.FieldByName('DEPT_IMAGE_INDEX').AsInteger,
      Rect,
      Column);
end;

procedure TfmDeptsPrcData.grdDeptsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont;
  var Background: TColor; State: TGridDrawState);

  procedure GetCountColumnCellParams;
  begin
    if Column.Field.IsNull then
      Background:= clWindow
    else
      begin
        if (Column.Field.DataSet.FieldByName(Column.Field.TotalCountField.FieldName).AsInteger = 0) then
          Background:= NotDistributedColor
        else
          Background:= CountColumnColors[Column.Field.AsInteger > 0];
      end;

    AFont.Color:= clWindowText;
  end;

  procedure GetHasOWDPriorityCellParams;
  begin
    if (Column.Field.DataSet.FieldByName('DEPT_CODE').AsInteger <> tnRootDeptCode) and
       (not Column.Field.IsNull) and
       (not Column.Field.AsBoolean) then
      begin
        Background:= HasNotOWDPrioritiesOfTypeColor;
      end;
  end;

begin
  inherited;
  if not ((gdSelected in State) and (gdFocused in State)) then
    begin
      if not Assigned(Column.Field) then
        begin
          Background:= DeptsTreeListSeparatorsColor;
          Exit;
        end;

      if ((Column.FieldName = 'PARALLEL_OPERATOR_COUNT') or (Column.FieldName = 'PARALLEL_PROCESS_COUNT')) then
        Background:= ParallelOperatorAndProcessCountColor;

      if (Column.FieldName = 'DEPT_DAYS_LEFT') then
        Background:= DeptDaysLeftColor;

      AFont.Color:= IsFilterAcceptedColors[Column.Field.DataSet.FieldByName('IS_FILTER_ACCEPTED').AsBoolean];

      if (Column.FieldName = 'NOT_DISTRIBUTED_DEPT_ACTIONS') or
         (Column.FieldName = 'NOT_DISTRIB_OCC_BASE_ACTIONS') or
         (Column.FieldName = 'NOT_DISTRIB_OCC_CONCR_ACTIONS') then
        begin
          GetCountColumnCellParams;
        end;

      if (Column.FieldName = 'DEPT_OWD_PRIORITY_STATE_CODE') then
        GetOWDPriorityStateCellParams(Column, Background);

      if (Column.FieldName = 'HAS_EXEC_EXPL_OWD_PRIORITIES') or
         (Column.FieldName = 'HAS_MNG_EXPL_OWD_PRIORITIES') or
         (Column.FieldName = 'HAS_EXEC_SVC_OWD_PRIORITIES') then
        begin
          GetHasOWDPriorityCellParams;
        end;
    end;
end;

procedure TfmDeptsPrcData.grdDeptsDataHintShow(Sender: TCustomDBGridEh; CursorPos: TPoint; Cell: TGridCoord;
  InCellCursorPos: TPoint; Column: TColumnEh; var Params: TDBGridEhDataHintParams; var Processed: Boolean);
begin
  inherited;
  if (Column.FieldName = 'DEPT_OWD_PRIORITY_STATE_CODE') then
    begin
      with grdDepts.CellRect(Cell.X, Cell.Y) do
        Params.HintPos:= Point(Left, Top);

      Params.HintStr:= GetOWDPriorityStateCellHint(Column.Field);
      Processed:= True;
    end;
end;

procedure TfmDeptsPrcData.grdDeptsDblClick(Sender: TObject);
begin
  inherited;
  actEditRecord.Execute;
end;

procedure TfmDeptsPrcData.cdsDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if cdsGridDataIS_GROUP.AsBoolean then
    FfrPrcData.ProcessOwner:= ProcessOwners.GroupDept
  else
    FfrPrcData.ProcessOwner:= ProcessOwners.DefiniteDept;
end;

procedure TfmDeptsPrcData.CountFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.IsNull then
    Text:= ''
  else
    Text:= Format('%d/%d', [-Sender.AsInteger, Sender.DataSet.FieldByName(Sender.TotalCountField.FieldName).AsInteger]);
end;

function TfmDeptsPrcData.GetEditRecordEnabled: Boolean;
begin
  Result:=
    inherited GetEditRecordEnabled and
    (cdsGridDataDEPT_CODE.AsInteger <> tnRootDeptCode);
end;

procedure TfmDeptsPrcData.actDeptDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl), dotDept, cdsGridData);
end;

procedure TfmDeptsPrcData.actDeptDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataHAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:=
    not cdsGridData.IsEmpty and
    (not cdsGridDataIS_FIN_STORE.AsBoolean or
     LoginContext.HasUserActivity(uaShowFinStores) or
     (LoginContext.HasUserWorkDept(cdsGridDataDEPT_CODE.AsInteger) and
      LoginContext.HasUserActivity(uaShowOccupationWorkDeptFinStores))
    );
end;

procedure TfmDeptsPrcData.actDeptProductSpecDocStatusExecute(Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient, cdsGridDataDEPT_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmDeptsPrcData.actDeptProductSpecDocStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridDataDEPT_PRODUCT_CODE.IsNull;
end;

procedure TfmDeptsPrcData.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams.SafeEdit/
    procedure begin
      pdsGridDataParamsTO_DATE.AsDateTime:= ContextDate;
    end;
end;

procedure TfmDeptsPrcData.actExcelExportExecute(Sender: TObject);
begin
  // do not call inherited;
  GridExcelExport(grdDepts, True, '', dmMain.ilDeptTypes, 'DEPT_IMAGE_INDEX');
end;

procedure TfmDeptsPrcData.actFormUpdate(Sender: TObject);
begin
  inherited;

  tlbOccupationEditButtons.Height:= tlbOccupationEditButtons.Parent.Height;
  tlbOccupationEditButtons.ButtonHeight:= tlbOccupationEditButtons.Height;
  tlbOccupationEditButtons.ButtonWidth:= tlbOccupationEditButtons.Height;
end;

procedure TfmDeptsPrcData.cdsDetailAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsOccupations.Open;
end;

procedure TfmDeptsPrcData.cdsDetailBeforeClose(DataSet: TDataSet);
begin
  inherited;
  cdsOccupations.Close;
end;

procedure TfmDeptsPrcData.cdsOccupationsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsOccupations.Params, cdsGridData);
  SetParams(cdsOccupations.Params, pdsGridDataParams);
end;

procedure TfmDeptsPrcData.GetOWDPriorityStateCellParams(Column: TColumnEh; var Background: TColor);
begin
  if not Column.Field.IsNull then
    Background:= OWDPriorityStateColors[Column.Field.AsInteger];
end;

procedure TfmDeptsPrcData.grdOccupationsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  if not Assigned(Column.Field) or Column.Field.DataSet.IsEmpty then
    Exit;

  if (Column.FieldName = 'TREE_DISPLAY_NAME') then
    DrawTreeImageColumnCell(
      grdOccupations,
      ilOccupationsTree,
      Column.Field.DataSet.FieldByName('_IMAGE_INDEX').AsInteger,
      Rect,
      Column);
end;

procedure TfmDeptsPrcData.grdOccupationsGetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont;
  var Background: TColor; State: TGridDrawState);

  function GetSeparatorColumnIndex: Integer;
  var
    col: TColumnEh;
  begin
    Result:= -1;
    for col in grdOccupations.Columns do
      if not Assigned(col.Field) then
        Exit(col.Index);

    Assert(False, 'No separator column found');
  end;

  procedure GetOccupationEmployeeDetailStatusColumnCellParams(AField, ADetailsCountField, ATotalDetailsCountField: TField);
  begin
    if not AField.IsNull then
      if (ADetailsCountField.AsInteger = 0) and (ATotalDetailsCountField.AsInteger = 0) then
        AFont.Color:= clRed
      else
        if (ADetailsCountField.AsInteger < ATotalDetailsCountField.AsInteger) then
          Background:= ccTotalLateNotSelected
        else
          AFont.Color:= clGreen;
  end;

begin
  inherited;
  if not ((gdSelected in State) and (gdFocused in State)) then
    begin
      if not Assigned(Column.Field) then
        begin
          Background:= DeptsTreeListSeparatorsColor;
          Exit;
        end;

      if (Column.Index > GetSeparatorColumnIndex) and
         (not Column.Field.DataSet.FieldByName('OCCUPATION_CODE').IsNull) and
         (IntToDeptOWDPCoverType(Column.Field.DataSet.FieldByName('DEPT_OWDP_COVER_TYPE_CODE').AsInteger) = dowdpctAncestor) then
        begin
          Background:= OccupationsFromCoveringDeptColor;
        end;

      AFont.Color:= IsFilterAcceptedColors[Column.Field.DataSet.FieldByName('IS_FILTER_ACCEPTED').AsBoolean];

      if (Column.FieldName = '_OCC_PRC_ACTIONS_STATUS') then
        GetOccupationEmployeeDetailStatusColumnCellParams(
          Column.Field.DataSet.FieldByName('_OCC_PRC_ACTIONS_STATUS'),
          Column.Field.DataSet.FieldByName('OE_MASTERED_PRC_ACTIONS_COUNT'),
          Column.Field.DataSet.FieldByName('OCC_PRC_ACTIONS_COUNT'));

      if (Column.FieldName = '_PROFESSIONS_STATUS') then
        GetOccupationEmployeeDetailStatusColumnCellParams(
          Column.Field.DataSet.FieldByName('_PROFESSIONS_STATUS'),
          Column.Field.DataSet.FieldByName('EMPLOYEE_OCCUPATION_PROF_COUNT'),
          Column.Field.DataSet.FieldByName('OCCUPATION_PROFESSION_COUNT'));

      if (Column.FieldName = 'OWD_PRIORITY_STATE_CODE') then
        GetOWDPriorityStateCellParams(Column, Background);
    end;
end;

procedure TfmDeptsPrcData.grdOccupationsDataHintShow(Sender: TCustomDBGridEh; CursorPos: TPoint; Cell: TGridCoord;
  InCellCursorPos: TPoint; Column: TColumnEh; var Params: TDBGridEhDataHintParams; var Processed: Boolean);
begin
  inherited;
  if (Column.FieldName = 'OWD_PRIORITY_STATE_CODE') then
    begin
      with grdOccupations.CellRect(Cell.X, Cell.Y) do
        Params.HintPos:= Point(Left, Top);

      Params.HintStr:= GetOWDPriorityStateCellHint(Column.Field);
      Processed:= True;
    end;
end;

procedure TfmDeptsPrcData.grdOccupationsDblClick(Sender: TObject);
begin
  inherited;
  actEditOccupation.Execute;
end;

procedure TfmDeptsPrcData.AssignOccupationEmployeeDetailStatus(
  StatusField,
  TotalDetailsCountField,
  DetailsCountField: TField);
begin
  if cdsOccupationsOCCUPATION_EMPLOYEE_CODE.IsNull then
    StatusField.Clear
  else
    StatusField.AsString:=
      Format('%d/%d', [
        DetailsCountField.AsInteger - TotalDetailsCountField.AsInteger,
        TotalDetailsCountField.AsInteger]);
end;

procedure TfmDeptsPrcData.cdsOccupationsCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsOccupations_IMAGE_INDEX.AsInteger:=
    Ord(not cdsOccupationsOCCUPATION_CODE.IsNull) * 4 +
    Ord(IntToDeptOWDPCoverType(cdsOccupationsDEPT_OWDP_COVER_TYPE_CODE.AsInteger) = dowdpctAncestor) * 2 +
    Ord(not cdsOccupationsIS_FILTER_ACCEPTED.AsBoolean) * 1;

  AssignOccupationEmployeeDetailStatus(
    cdsOccupations_PROFESSIONS_STATUS,
    cdsOccupationsOCCUPATION_PROFESSION_COUNT,
    cdsOccupationsEMPLOYEE_OCCUPATION_PROF_COUNT);

  AssignOccupationEmployeeDetailStatus(
    cdsOccupations_OCC_PRC_ACTIONS_STATUS,
    cdsOccupationsOCC_PRC_ACTIONS_COUNT,
    cdsOccupationsOE_MASTERED_PRC_ACTIONS_COUNT);
end;

procedure TfmDeptsPrcData.cdsOccupationsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  grdOccupations.ConvertToTreeList('TREE_CODE', 'PARENT_TREE_CODE');
  grdOccupations.TreeDataSet.Locate('TREE_CODE', FSavedOccupationsTreeCode, []);
end;

procedure TfmDeptsPrcData.cdsOccupationsDEPT_OWDP_COVER_TYPE_CODEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull or not Sender.DataSet.FieldByName('OCCUPATION_CODE').IsNull then
    Text:= ''
  else
    Text:= DeptOWDPCoverTypeAbbrevs[IntToDeptOWDPCoverType(Sender.AsInteger)];
end;

procedure TfmDeptsPrcData.cdsOccupationsIS_OCCUPIEDGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:=
      OccupationActivityStatuses[Sender.DataSet.FieldByName('IS_ACTIVE').AsInteger] +
      OccupationAvailabilityStatuses[Sender.DataSet.FieldByName('IS_OCCUPIED').AsInteger];
end;

procedure TfmDeptsPrcData.cdsOccupationsIS_CAPACITY_GENERATORGetText(Sender: TField; var Text: string; DisplayText: Boolean);
const
  DisplayBoolValues: array[Boolean] of string = ('', '√');
begin
  inherited;
  if not Sender.DataSet.FieldByName('OCCUPATION_CODE').IsNull then
    Text:= ''
  else
    Text:= DisplayBoolValues[Sender.AsBoolean];
end;

procedure TfmDeptsPrcData.cdsOccupationsIS_MAINGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= OccupationIsMainAbbrevs[Sender.AsInteger];
end;

procedure TfmDeptsPrcData.actOccupationDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotOccupation,
    cdsOccupations);
end;

procedure TfmDeptsPrcData.actOccupationDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsOccupationsHAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsOccupations.IsEmpty;
end;

procedure TfmDeptsPrcData.actOccupationEmployeeExecute(Sender: TObject);
begin
  inherited;
  if TfmOccupationAndEmployee.ShowForm(dmDocClient, cdsOccupations, Utils.IfThen(CanEditOccupationEmployee, EditMode, emReadOnly)) then
    RefreshGridData;
end;

procedure TfmDeptsPrcData.actOccupationEmployeeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsOccupationsOCCUPATION_EMPLOYEE_CODE.IsNull;
end;

procedure TfmDeptsPrcData.actEmployeeExecute(Sender: TObject);
begin
  inherited;
  TfmEmployee.ShowForm(dmDocClient, cdsOccupations, emReadOnly);
end;

procedure TfmDeptsPrcData.actEmployeeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsOccupationsEMPLOYEE_CODE.IsNull;
end;

procedure TfmDeptsPrcData.actOccupationProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsOccupationsPRODUCT_DOC_BRANCH_CODE,
    cdsOccupationsPRODUCT_DOC_CODE);
end;

procedure TfmDeptsPrcData.actOccupationProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsOccupationsPRODUCT_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsOccupations.IsEmpty;
end;

procedure TfmDeptsPrcData.actOWDPriorityDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotOccWorkDeptPriority,
    cdsOccupationsOWDP_DOC_BRANCH_CODE,
    cdsOccupationsOWDP_DOC_CODE);
end;

procedure TfmDeptsPrcData.actOWDPriorityDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsOccupationsOWDP_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsOccupations.IsEmpty;
end;

procedure TfmDeptsPrcData.EditOccupation(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AInsertWorkDept: Boolean);
begin
  if TfmOccupation.ShowForm(dmDocClient, cdsOccupations, AEditMode, ADefaultsOrigin, True, AInsertWorkDept) then
    RefreshGridData;

  if AInsertWorkDept then
    grdOccupations.TreeDataSet.TreeList.FullExpand;
end;

procedure TfmDeptsPrcData.actInsertOccupationExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaOccupationsAndEmployeesEdit);
  if ShiftIsPressed then
    actOccupationCreateLike.Execute
  else
    EditOccupation(emInsert, doNone, True);
end;

procedure TfmDeptsPrcData.actInsertOccupationUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (cdsGridDataDEPT_CODE.AsInteger <> tnRootDeptCode) and
    (not cdsOccupations.IsEmpty) and
    (IntToDeptOWDPCoverType(cdsOccupationsDEPT_OWDP_COVER_TYPE_CODE.AsInteger) in [dowdpctLocal, dowdpctLocalAndDescendants]);
end;

procedure TfmDeptsPrcData.actOccupationCreateLikeExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaOccupationsAndEmployeesEdit);
  EditOccupation(emInsert, doServer);
end;

procedure TfmDeptsPrcData.actOccupationCreateLikeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (cdsGridDataDEPT_CODE.AsInteger <> tnRootDeptCode) and
    not cdsOccupationsOCCUPATION_CODE.IsNull;
end;

function TfmDeptsPrcData.CanEditOccupation: Boolean;
begin
  Result:=
    LoginContext.HasUserActivity(uaOccupationsAndEmployeesEdit) and
    (IntToDeptOWDPCoverType(cdsOccupationsDEPT_OWDP_COVER_TYPE_CODE.AsInteger) in [dowdpctLocal, dowdpctLocalAndDescendants]);
end;

function TfmDeptsPrcData.CanEditOccupationEmployee: Boolean;
begin
  Result:= CanEditOccupation;
end;

procedure TfmDeptsPrcData.actEditOccupationExecute(Sender: TObject);
begin
  inherited;
  EditOccupation(Utils.IfThen(CanEditOccupation, EditMode, emReadOnly));
end;

procedure TfmDeptsPrcData.actEditOccupationUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not cdsOccupationsOCCUPATION_CODE.IsNull;
end;

procedure TfmDeptsPrcData.actDelOccupationExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaOccupationsAndEmployeesEdit);
  ConfirmAction(SConfirmDeleteRecord);
  dmMain.SvrHumanResource.DeleteOccupation(cdsOccupationsOCCUPATION_CODE.AsInteger);
  cdsOccupations.Locate('TREE_CODE', cdsOccupationsPARENT_TREE_CODE.AsVariant, []);
  RefreshGridData;
end;

procedure TfmDeptsPrcData.actDelOccupationUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    not cdsOccupationsOCCUPATION_CODE.IsNull and
    (IntToDeptOWDPCoverType(cdsOccupationsDEPT_OWDP_COVER_TYPE_CODE.AsInteger) in [dowdpctLocal, dowdpctLocalAndDescendants]);
end;

function TfmDeptsPrcData.GetOWDPriorityStateCellHint(AField: TField): string;
begin
  if AField.IsNull then
    Result:= ''
  else
    Result:= OWDPriorityStateText(AField.AsInteger);
end;

procedure TfmDeptsPrcData.actOccupationsAndEmployeesExecute(Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(((Sender as TAction).ActionComponent as TControl), pmOccupationsAndEmployees);
end;

procedure TfmDeptsPrcData.actOccupationsExcelExportExecute(Sender: TObject);
begin
  inherited;
  GridExcelExport(grdOccupations);
end;

procedure TfmDeptsPrcData.actOccupationsExcelExportUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsOccupations.IsEmpty;
end;

procedure TfmDeptsPrcData.ShowOccupationsAndEmployees(ASetParamsProc: TProc);
begin
  cdsOccupationsAndEmployeesParams.TempCreateDataSet/
    procedure begin
      cdsOccupationsAndEmployeesParams.SafeAppend/
        procedure begin
          cdsOccupationsAndEmployeesParamsSTATUS_DATE.Assign(pdsGridDataParamsTO_DATE);
          cdsOccupationsAndEmployeesParamsIS_NOT_ACTIVE.AsBoolean:= True;
          ASetParamsProc;
        end;

      TfmOccupationsAndEmployees.ShowForm(dmDocClient, cdsOccupationsAndEmployeesParams, emReadOnly, doNone, False);
    end;
end;

procedure TfmDeptsPrcData.actOccupationsAndEmployeesByDeptExecute(Sender: TObject);
begin
  inherited;
  ShowOccupationsAndEmployees(
    procedure begin
      cdsOccupationsAndEmployeesParamsCHOSEN_DEPTS.AsString:= ChosenNodeCodeToXML(cdsGridDataDEPT_CODE.AsInteger);
      cdsOccupationsAndEmployeesParamsCHOSEN_DEPTS_ONLY.AsBoolean:= True;
    end);
end;

procedure TfmDeptsPrcData.actOccupationsAndEmployeesByOccWorkDeptExecute(Sender: TObject);
begin
  inherited;
  ShowOccupationsAndEmployees(
    procedure begin
      cdsOccupationsAndEmployeesParamsWORK_DEPT_CODE.Assign(cdsGridDataDEPT_CODE);
    end);
end;

procedure TfmDeptsPrcData.actToggleFilteredRecordsExecute(Sender: TObject);
begin
  inherited;
  cdsOccupations.Filtered:= not cdsOccupations.Filtered;
  grdOccupations.ConvertToTreeList('TREE_CODE', 'PARENT_TREE_CODE');
end;

procedure TfmDeptsPrcData.cdsOccupationsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:= cdsOccupationsIS_FILTER_ACCEPTED.AsBoolean;
end;

procedure TfmDeptsPrcData.cdsOccupationsBeforeClose(DataSet: TDataSet);
begin
  inherited;
  FSavedOccupationsTreeCode:= cdsOccupationsTREE_CODE.AsString;
end;

end.
