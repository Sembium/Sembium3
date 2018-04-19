unit fOperationalTasks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, JvButtons, ParamDataSet, ActnList,
  DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, dbcgrids,
  AbmesFields, Mask, fBaseFrame, fDBFrame, fFieldEditFrame, JvToolEdit,
  uClientTypes, dDocClient, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDateIntervalFrame, JvComponent, JvCaptionButton, JvComponentBase,
  DBGridEhGrouping, uClientConsts, fEditForm, uDocExcelExport, fDBDataForm, ToolCtrlsEh, DBGridEhToolCtrls,
  System.Actions, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  [VerticalResizeStep(DualGridRowHeight)]
  [DocExcelExport]
  [PrintActiveGridEnabled(False)]
  TfmOperationalTasks = class(TGridForm)
    pnlHeader: TPanel;
    pnlHeaderSpace: TPanel;
    pnlTotals: TPanel;
    pnlDataButtons: TPanel;
    btnSetup: TBitBtn;
    btnNewOperationMovement: TBitBtn;
    actNewOperationMovement: TAction;
    actSetup: TAction;
    edtSumSetupTime: TDBEdit;
    edtSumWorkTime: TDBEdit;
    edtTotalTime: TDBEdit;
    lblTotalTime: TLabel;
    actWorkWork: TAction;
    actWorkOrganization: TAction;
    actOrganizationOrganization: TAction;
    actOrganizationWork: TAction;
    actWorkWaste: TAction;
    actOrganizationWaste: TAction;
    actRedirection: TAction;
    actShift: TAction;
    pmNewOperationMovement: TPopupMenu;
    miWorkWork: TMenuItem;
    miWorkOrganization: TMenuItem;
    miOrganizationOrganization: TMenuItem;
    miOrganizationWork: TMenuItem;
    miWorkWaste: TMenuItem;
    miRedirection: TMenuItem;
    miShift: TMenuItem;
    miOrganizationWaste: TMenuItem;
    cdsGridDataMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataMLMS_OPERATION_NO: TAbmesFloatField;
    cdsGridDataMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsGridDataOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsGridDataMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLMS_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataML_MODEL_STAGE_NO: TAbmesFloatField;
    cdsGridDataTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataNO_AS_TEXT: TAbmesWideStringField;
    cdsGridDataFORK_NO: TAbmesFloatField;
    cdsGridDataDETAIL_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_NAME: TAbmesWideStringField;
    cdsGridDataDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataML_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataSALE_BRANCH_NO: TAbmesFloatField;
    cdsGridDataPRIORITY_CODE: TAbmesFloatField;
    cdsGridDataSHOW_NO: TAbmesWideStringField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataSETUP_PROFESSION_CODE: TAbmesFloatField;
    cdsGridDataSETUP_EFFORT_COEF: TAbmesFloatField;
    cdsGridDataSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataPROFESSION_CODE: TAbmesFloatField;
    cdsGridDataEFFORT_COEF: TAbmesFloatField;
    cdsGridDataHOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataIS_SETUP_DONE: TAbmesFloatField;
    cdsGridDataTO_ENTER_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataTO_LEAVE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataAVAILABLE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    grpPeriod: TGroupBox;
    cdsGridDataIS_LAST_OPERATION_IN_STAGE: TAbmesFloatField;
    cdsGridDataNEXT_OPERATION_TYPE_CODE: TAbmesFloatField;
    cdsGridDataOPERATION_VARIANT_COUNT: TAbmesFloatField;
    cdsGridDataDEPT_NAME: TAbmesWideStringField;
    lblTotalTimeHours: TLabel;
    lblSumWorkTimeHours: TLabel;
    lblSumSetupTimeHours: TLabel;
    lblSumSetupTime: TLabel;
    lblSumWorkTime: TLabel;
    cdsGridData_SUM_REMAINING_SETUP_TIME: TAggregateField;
    cdsGridData_SUM_REMAINING_WORK_TIME: TAggregateField;
    cdsGridData_TOTAL_REMAINING_TIME: TAbmesFloatField;
    btnDNC: TBitBtn;
    actDNC: TAction;
    cdsGridDataIS_LATE: TAbmesFloatField;
    pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_NO: TAbmesFloatField;
    pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsOPERATION_STATUS: TAbmesFloatField;
    cdsGridDataSETUP_NO_AS_TEXT: TAbmesWideStringField;
    cdsGridDataSETUP_FORK_NO: TAbmesFloatField;
    cdsGridDataSETUP_DETAIL_NAME: TAbmesWideStringField;
    cdsGridDataSETUP_DETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField;
    cdsGridDataSETUP_SHOW_NO: TAbmesWideStringField;
    cdsGridDataDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_DOC_CODE: TAbmesFloatField;
    btnDetailDoc: TSpeedButton;
    btnOperationDoc: TSpeedButton;
    sepBeforeShowCapacityGraph: TToolButton;
    cdsGridDataOPERATION_KIND: TAbmesFloatField;
    cdsGridDataPRIORITY_COLOR: TAbmesFloatField;
    cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    cdsGridDataCLIENT_DETAIL_NAME: TAbmesWideStringField;
    actToggleClientData: TAction;
    btnToggleClientData: TSpeedButton;
    cdsGridDataPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataIS_LAST_STAGE_IN_MLL: TAbmesFloatField;
    cdsGridDataIS_FIRST_OPERATION_IN_STAGE: TAbmesFloatField;
    cdsGridDataIS_FIRST_STAGE_IN_MLL: TAbmesFloatField;
    cdsGridDataNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    actInputOutput: TAction;
    btnInputOutput: TBitBtn;
    cdsGridDataNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsGridDataSTAGE_DEPT_NAME: TAbmesWideStringField;
    cdsGridDataSTAGE_DEPT_CODE: TAbmesFloatField;
    cdsGridDataDEPT_CODE: TAbmesFloatField;
    cdsGridDataSTAGE_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataHAS_SPECIAL_CONTROL: TAbmesFloatField;
    pdsGridDataParamsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    pdsGridDataParamsIS_BEGIN_ORG_OPERATION: TAbmesFloatField;
    pdsGridDataParamsIS_NORMAL_OPERATION: TAbmesFloatField;
    pdsGridDataParamsIS_END_ORG_OPERATION: TAbmesFloatField;
    pdsGridDataParamsHAS_NO_SETUP: TAbmesFloatField;
    pdsGridDataParamsIS_SETUP_NOT_DONE: TAbmesFloatField;
    pdsGridDataParamsIS_SETUP_DONE: TAbmesFloatField;
    cdsGridData_SETUP_STATUS: TAbmesWideStringField;
    cdsGridData_STATUS: TAbmesWideStringField;
    cdsGridDataIN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataOUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    pdsGridDataParams_IN_SPECIAL_CONTROL_TASKS_MODE: TAbmesFloatField;
    actShowCapacityGraph: TAction;
    btnShowCapacityGraph: TSpeedButton;
    actActiveVariants: TAction;
    btnModelStatus: TBitBtn;
    actModelStatus: TAction;
    cdsGridDataVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataVARIANT_SETUP_TIME: TAbmesFloatField;
    cdsGridDataVARIANT_WORK_TIME: TAbmesFloatField;
    cdsGridDataREMAINING_SETUP_TIME: TAbmesFloatField;
    cdsGridDataREMAINING_WORK_TIME: TAbmesFloatField;
    cdsGridData_SUM_VARIANT_SETUP_TIME: TAggregateField;
    cdsGridData_SUM_VARIANT_WORK_TIME: TAggregateField;
    cdsGridData_TOTAL_VARIANT_TIME: TAbmesFloatField;
    sepBeforeDoc: TToolButton;
    btnToggleTimeData: TSpeedButton;
    actToggleTimeData: TAction;
    pdsGridDataParamsAVAILABLE_QUANTITY_STATUS: TAbmesFloatField;
    cdsGridDataOPERATION_SETUP_ABBREV: TAbmesWideStringField;
    cdsGridDataOPERATION_ABBREV: TAbmesWideStringField;
    cdsGridDataIS_AUTO_RECEIVING_OPERATION: TAbmesFloatField;
    pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField;
    frDateInterval: TfrDateIntervalFrame;
    cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataIS_RECORD_CHANGED: TAbmesFloatField;
    lblDetailDoc: TLabel;
    lblOperationDoc: TLabel;
    sepOperationDoc: TToolButton;
    btnProgramToolDoc: TSpeedButton;
    sepBeforeProgramToolDoc: TToolButton;
    lblProgramToolDoc: TLabel;
    lblSpecificToolDoc: TLabel;
    btnSpecificToolDoc: TSpeedButton;
    sepBeforeSpecificToolDoc: TToolButton;
    btnSpecificToolSpecDocStatus: TToolButton;
    sepBeforeTypicalToolDoc: TToolButton;
    lblTypicalToolDoc: TLabel;
    btnTypicalToolDoc: TSpeedButton;
    btnTypicalToolSpecDocStatus: TToolButton;
    cdsGridDataIS_WASTE_COMPENSATOR: TAbmesFloatField;
    cdsGridDataPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_SALE_TYPE_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsMLL_NO_AS_TEXT: TAbmesWideStringField;
    pdsGridDataParamsMLL_FORK_NO: TAbmesFloatField;
    cdsGridDataEFFECTIVE_TREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEFFECTIVE_TREATMENT_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParams_DATE_INTERVAL: TAbmesWideStringField;
    cdsGridDataPRIORITY_NO: TAbmesFloatField;
    cdsGridDataWORK_PRIORITY_CODE: TAbmesFloatField;
    cdsGridDataWORK_PRIORITY_NO: TAbmesFloatField;
    btnToggleCoefData: TSpeedButton;
    actToggleCoefData: TAction;
    cdsGridDataPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsGridDataSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsGridDataTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    actProgramToolSpecDocStatus: TAction;
    actSpecificToolSpecDocStatus: TAction;
    actTypicalToolSpecDocStatus: TAction;
    btnProgramToolSpecDocStatus: TToolButton;
    pdsGridDataParamsPRODUCTION_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsGridDataHAS_DNC_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsGridDataSETUP_COUNT: TAbmesFloatField;
    cdsGridDataREMAINING_SETUP_COUNT: TAbmesFloatField;
    cdsGridData_REPORT_TITLE: TAbmesWideStringField;
    pdsGridDataParams_CHOSEN_NODE_CODE: TAbmesFloatField;
    pdsGridDataParams_CHOSEN_NODE_NAME: TAbmesWideStringField;
    pdsGridDataParams_CHOSEN_NODE_NO: TAbmesWideStringField;
    gbDept: TGroupBox;
    edtChosenDeptName: TDBEdit;
    edtChosenDeptNo: TDBEdit;
    pdsGridDataParamsACTIVE_STATE: TAbmesFloatField;
    cdsGridDataMATERIAL_CODE: TAbmesFloatField;
    cdsGridDataMATERIAL_NO: TAbmesFloatField;
    cdsGridDataMATERIAL_NAME: TAbmesWideStringField;
    cdsGridDataMATERIAL_WORK_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataMATERIAL_TECH_MEASURE_COEF: TAbmesFloatField;
    cdsGridDataMATERIAL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataTO_ENTER_MATERIAL_WORK_QUANTITY: TAbmesFloatField;
    cdsGridDataMATERIAL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    grdHeader: TAbmesDBGrid;
    cdsGridDataPROGRAM_TOOL_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPROGRAM_TOOL_DOC_CODE: TAbmesFloatField;
    cdsGridDataSPECIFIC_TOOL_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSPECIFIC_TOOL_DOC_CODE: TAbmesFloatField;
    cdsGridDataTYPICAL_TOOL_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataTYPICAL_TOOL_DOC_CODE: TAbmesFloatField;
    cdsGridDataMLMSO_IS_AUTO_SETUP: TAbmesFloatField;
    cdsGridDataMLMSO_IS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    sepBeforeDeptDoc: TToolButton;
    lblDeptDoc: TLabel;
    btnDeptDoc: TSpeedButton;
    btnDeptSpecDocStatus: TToolButton;
    actDeptSpecDocStatus: TAction;
    cdsGridDataDEPT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataDEPT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDEPT_DOC_CODE: TAbmesFloatField;
    cdsGridDataDEPT_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataMANAGER_EMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataMANAGER_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataDETAIL_NO: TAbmesFloatField;
    actSpecialControl: TAction;
    miSpecialControl: TMenuItem;
    cdsGridDataMLL_TYPE: TAbmesFloatField;
    cdsGridData_MLL_TYPE: TAbmesWideStringField;
    cdsGridDataCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataCONSUME_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsIS_BEGIN_STORE_STAGE: TAbmesFloatField;
    pdsGridDataParamsIS_NORMAL_STAGE: TAbmesFloatField;
    pdsGridDataParamsIS_END_STORE_STAGE: TAbmesFloatField;
    cdsGridDataIS_BEGIN_STORE_STAGE: TAbmesFloatField;
    cdsGridDataIS_NORMAL_STAGE: TAbmesFloatField;
    cdsGridDataIS_END_STORE_STAGE: TAbmesFloatField;
    cdsGridDataDONE_SETUP_COUNT: TAbmesFloatField;
    cdsGridDataDONE_SETUP_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDONE_SETUP_TIME: TAbmesSQLTimeStampField;
    cdsGridDataENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataDETAIL_PARAMS_EXPORT_DATA: TAbmesWideStringField;
    miWorkNextOperation: TMenuItem;
    actWorkNextOperation: TAction;
    actLoading: TAction;
    pnlActiveVariantsButton: TPanel;
    btnActiveVariants: TBitBtn;
    pnlLoadingButton: TPanel;
    btnLoading: TBitBtn;
    actReturning: TAction;
    miReturning: TMenuItem;
    cdsGridDataOP_AVAILABLE_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsGridDataOP_IN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataOP_OUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    pdsGridDataParamsVARIANT_ACTIVE_STATE: TAbmesFloatField;
    pdsGridDataParamsOP_AVAILABLE_QUANTITY_STATUS: TAbmesFloatField;
    cdsGridDataLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataOP_OLD_IN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataSALE_NO: TAbmesFloatField;
    actOrganizationNextOperation: TAction;
    miOrganizationNextOperation: TMenuItem;
    cdsGridDataOM_LOAD_TO_DEPT_ZONE_NO: TAbmesFloatField;
    cdsGridDataOM_LOAD_TO_EMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataOM_LOAD_TO_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsGridDataOM_LOAD_DATE: TAbmesSQLTimeStampField;
    cdsGridDataOM_LOAD_TIME: TAbmesSQLTimeStampField;
    btnToggleOmLoadData: TSpeedButton;
    actToggleOmLoadData: TAction;
    cdsGridData_OM_LOAD_DATE_TIME_DISPLAY: TAbmesWideStringField;
    pdsGridDataParamsIS_SALE_STATE: TAbmesFloatField;
    pdsGridDataParamsOWNER_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    procedure actSetupUpdate(Sender: TObject);
    procedure actSetupExecute(Sender: TObject);
    procedure actNewOperationMovementUpdate(Sender: TObject);
    procedure actNewOperationMovementExecute(Sender: TObject);
    procedure actWorkWorkUpdate(Sender: TObject);
    procedure actWorkOrganizationUpdate(Sender: TObject);
    procedure actOrganizationOrganizationUpdate(Sender: TObject);
    procedure actOrganizationWorkUpdate(Sender: TObject);
    procedure actWorkWasteUpdate(Sender: TObject);
    procedure actOrganizationWasteUpdate(Sender: TObject);
    procedure actRedirectionUpdate(Sender: TObject);
    procedure actShiftUpdate(Sender: TObject);
    procedure actOperationMovementCommon(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure actDNCExecute(Sender: TObject);
    procedure btnDetailDocClick(Sender: TObject);
    procedure btnOperationDocClick(Sender: TObject);
    procedure actToggleClientDataExecute(Sender: TObject);
    procedure actToggleClientDataUpdate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actDNCUpdate(Sender: TObject);
    procedure btnProgramToolDocClick(Sender: TObject);
    procedure btnSpecificToolDocClick(Sender: TObject);
    procedure btnTypicalToolDocClick(Sender: TObject);
    procedure actInputOutputExecute(Sender: TObject);
    procedure actInputOutputUpdate(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure actShowCapacityGraphUpdate(Sender: TObject);
    procedure actShowCapacityGraphExecute(Sender: TObject);
    procedure actActiveVariantsUpdate(Sender: TObject);
    procedure actActiveVariantsExecute(Sender: TObject);
    procedure actModelStatusExecute(Sender: TObject);
    procedure actModelStatusUpdate(Sender: TObject);
    procedure actToggleTimeDataExecute(Sender: TObject);
    procedure actToggleTimeDataUpdate(Sender: TObject);
    procedure cdsGridDataOPERATION_KINDGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataEFFECTIVE_TREATMENT_BEGIN_DATEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure actToggleCoefDataExecute(Sender: TObject);
    procedure actToggleCoefDataUpdate(Sender: TObject);
    procedure cdsGridDataPROGRAM_TOOL_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataSPECIFIC_TOOL_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsGridDataTYPICAL_TOOL_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actProgramToolSpecDocStatusUpdate(Sender: TObject);
    procedure actSpecificToolSpecDocStatusUpdate(Sender: TObject);
    procedure actTypicalToolSpecDocStatusUpdate(Sender: TObject);
    procedure actProgramToolSpecDocStatusExecute(Sender: TObject);
    procedure actSpecificToolSpecDocStatusExecute(Sender: TObject);
    procedure actTypicalToolSpecDocStatusExecute(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsCHOSEN_DEPTSChange(Sender: TField);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdDataDblClick(Sender: TObject);
    procedure grdDataDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure grdHeaderSortMarkingChanged(Sender: TObject);
    procedure grdHeaderTitleClick(Column: TColumnEh);
    procedure actExcelExportExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actDeptSpecDocStatusUpdate(Sender: TObject);
    procedure actDeptSpecDocStatusExecute(Sender: TObject);
    procedure btnDeptDocClick(Sender: TObject);
    procedure actSpecialControlUpdate(Sender: TObject);
    procedure actWorkNextOperationUpdate(Sender: TObject);
    procedure actLoadingUpdate(Sender: TObject);
    procedure actReturningUpdate(Sender: TObject);
    procedure actOrganizationNextOperationUpdate(Sender: TObject);
    procedure actToggleOmLoadDataExecute(Sender: TObject);
    procedure actToggleOmLoadDataUpdate(Sender: TObject);
    procedure cdsGridDataOM_LOAD_TIMEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    FShowClientData: Boolean;
    FShowVariantTimeData: Boolean;
    FShowEffortCoef: Boolean;
    FShowOmLoadData: Boolean;
    FInSpecialControlTasksMode: Boolean;
    FProductionOrderBaseTypeCode: Integer;
    procedure SetIsSetupDone(ANewIsSetupDone: Boolean);
    procedure MarkPossiblyChangedRecords;
    procedure CheckRecordUnchanged;
    procedure ChosenDeptsFieldChange(Sender: TField);
    procedure SetColumns;
    function ColumnByTag(const ATag: Integer): TColumnEh;
  protected
    class function CanUseDocs: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    function GetFormCaption: string; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    procedure Initialize; override;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True; AInSpecialControlTasksMode: Boolean = False;
      AProductionOrderBaseTypeCode: Integer = 0): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True; AInSpecialControlTasksMode: Boolean = False;
      AProductionOrderBaseTypeCode: Integer = 0); reintroduce; virtual;
  end;

implementation

uses
  dMain, uExcelExport, uUtils, uClientUtils, uTreeClientUtils, JclDateTime,
  fBaseForm, uOperationTypes, fOperationMovement, fMLMSOperationSetup,
  fOperationalTasksFilter, rOperationalTasks, fDataForm, fSpecification,
  uUserActivityConsts, fOperationMovements, fOperationInputOutput,
  fCapacityGraph, fMLMSOperationVariants, fModelStatus,
  uOperationKinds, uModelUtils, uDocUtils, AbmesDialogs, uModelMovementTypes,
  uXMLUtils, uToolRequirements, fSpecDocStatus, uAspectTypes,
  uProductionOrderTypes, uClientDateTime, fBaseGroups,
  uAbmesDBGridHelpers;

{$R *.dfm}

resourcestring
  SCannotReportInfusion = 'Не можете да отчитате настройка преди да е преминало количество към текущата операция';
  SOperationSetupAbbrev = 'Н';
  SOperationAbbrev = 'И';
  SRefreshButtonCaption = 'Обновяване';
  SRecordPossiblyChanged =
    'Не можете да отчитате движение или настройка по тази операция, тъй като е възможно по нея да има промяна в следствие на предишно отчитане.' + SLineBreak +
    'Трябва първо да обновите съдържанието на екрана.';
  SDetailIsComposite = 'С';
  SDetailIsTreated = 'П';
  SDetailIsDirectUsed = 'Ф';
  SNotLoaded = 'Незаред';
  SLoaded = 'Заред.';
  SQty = 'К-во';

// poletata IS_LATE i IS_RECORD_CHANGED narochno sa fvtFloat

{ TfmOperationalTasks }

procedure TfmOperationalTasks.SetColumns;
var
  i: Integer;
begin
  grdData.Columns.BeginUpdate;
  try
    grdHeader.Columns[8].Visible:= not FShowClientData;
    ColumnByTag(16).Visible:= not FShowClientData;
    ColumnByTag(17).Visible:= not FShowClientData;

    grdHeader.Columns[9].Visible:= FShowClientData;
    ColumnByTag(18).Visible:= FShowClientData;
    ColumnByTag(19).Visible:= FShowClientData;

    grdHeader.Columns[16].Visible:= not FShowEffortCoef and not FShowOmLoadData;
    ColumnByTag(30).Visible:= not FShowEffortCoef and not FShowOmLoadData;
    ColumnByTag(31).Visible:= not FShowEffortCoef and not FShowOmLoadData;

    grdHeader.Columns[17].Visible:= FShowEffortCoef and not FShowOmLoadData;
    ColumnByTag(32).Visible:= FShowEffortCoef and not FShowOmLoadData;
    ColumnByTag(33).Visible:= FShowEffortCoef and not FShowOmLoadData;

    grdHeader.Columns[18].Visible:= FShowOmLoadData;
    ColumnByTag(34).Visible:= FShowOmLoadData;

    grdHeader.Columns[19].Visible:= FShowOmLoadData;
    ColumnByTag(35).Visible:= FShowOmLoadData;

    grdHeader.Columns[20].Visible:= not FShowOmLoadData;
    ColumnByTag(36).Visible:= not FShowOmLoadData;
    ColumnByTag(37).Visible:= not FShowOmLoadData;

    grdHeader.Columns[21].Visible:= not FShowOmLoadData;
    ColumnByTag(38).Visible:= not FShowOmLoadData;

    grdHeader.Columns[22].Visible:= not FShowOmLoadData;
    ColumnByTag(39).Visible:= not FShowOmLoadData;

    grdHeader.Columns[23].Visible:= not FShowOmLoadData;
    ColumnByTag(40).Visible:= not FShowOmLoadData;

    grdHeader.Columns[24].Visible:= not FShowVariantTimeData and not FShowOmLoadData;
    ColumnByTag(41).Visible:= not FShowVariantTimeData and not FShowOmLoadData;
    ColumnByTag(42).Visible:= not FShowVariantTimeData and not FShowOmLoadData;

    grdHeader.Columns[25].Visible:= FShowVariantTimeData and not FShowOmLoadData;
    ColumnByTag(43).Visible:= FShowVariantTimeData and not FShowOmLoadData;
    ColumnByTag(44).Visible:= FShowVariantTimeData and not FShowOmLoadData;

    grdHeader.Columns[26].Visible:= not FShowOmLoadData;
    ColumnByTag(45).Visible:= not FShowOmLoadData;
    ColumnByTag(46).Visible:= not FShowOmLoadData;

    grdHeader.Columns[27].Visible:= not FShowOmLoadData;
    ColumnByTag(47).Visible:= not FShowOmLoadData;
    ColumnByTag(48).Visible:= not FShowOmLoadData;

    for i:= 55 to grdData.Columns.Count - 1 do
      ColumnByTag(i).Visible:= False;

    for i:= 0 to grdData.Columns.Count - 1 do
      ColumnByTag(i).Index:= i;
  finally
    grdData.Columns.EndUpdate;
  end;
end;

procedure TfmOperationalTasks.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled, AInSpecialControlTasksMode: Boolean;
  AProductionOrderBaseTypeCode: Integer);
begin
  FInSpecialControlTasksMode:= AInSpecialControlTasksMode;

  with cdsGridData.Params do
    begin
      ParamByName('BEGIN_DATE').AsDateTime:= ContextDate;
      ParamByName('END_DATE').AsDateTime:= ContextDate;
      ParamByName('OPERATION_STATUS').AsInteger:= 1;
      ParamByName('AVAILABLE_QUANTITY_STATUS').AsInteger:= 0;

      ParamByName('IS_BEGIN_ORG_OPERATION').AsInteger:= 1;
      ParamByName('IS_NORMAL_OPERATION').AsInteger:= 1;
      ParamByName('IS_END_ORG_OPERATION').AsInteger:= 1;

      ParamByName('HAS_NO_SETUP').AsInteger:= 1;
      ParamByName('IS_SETUP_NOT_DONE').AsInteger:= 1;
      ParamByName('IS_SETUP_DONE').AsInteger:= 1;

      if FInSpecialControlTasksMode then
        ParamByName('HAS_SPECIAL_CONTROL').AsInteger:= 1
      else
        ParamByName('HAS_SPECIAL_CONTROL').AsInteger:= 2;
    end;  { with }

  inherited SetDataParams(
    AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);

  FProductionOrderBaseTypeCode:= AProductionOrderBaseTypeCode;
end;

class function TfmOperationalTasks.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled, AInSpecialControlTasksMode: Boolean;
  AProductionOrderBaseTypeCode: Integer): Boolean;
var
  f: TfmOperationalTasks;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled,
      AInSpecialControlTasksMode, AProductionOrderBaseTypeCode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmOperationalTasks.FormCreate(Sender: TObject);
var
  c: TColumnEh;
begin
  inherited;
  ReportClass:= TrptOperationalTasks;
  FilterFormClass:= TfmOperationalTasksFilter;

  RegisterDateFields(cdsGridData);

  for c in grdData.Columns do
    c.Tag:= c.Index;

  if not LoginContext.FeatureFlagOperationsLoading then
    begin
      grdHeader.Columns[27].Title.Caption:= StringReplace(grdHeader.Columns[27].Title.Caption, SNotLoaded, '-', []);
      grdHeader.Columns[28].Title.Caption:= StringReplace(grdHeader.Columns[28].Title.Caption, SLoaded, SQty, []);
    end;
end;

procedure TfmOperationalTasks.FormShow(Sender: TObject);
begin
  inherited;

  // da moje da se click-va po header-a i da sortira
  grdHeader.DataSource:= dsGridData;
  InitializeAbmesDBGrid(grdHeader);
end;

procedure TfmOperationalTasks.actFormUpdate(Sender: TObject);
const
  TimeWords: array[Boolean] of string = ('REMAINING', 'VARIANT');
begin
  inherited;

  edtSumSetupTime.DataField:= Format('_SUM_%s_SETUP_TIME', [TimeWords[FShowVariantTimeData]]);
  edtSumWorkTime.DataField:= Format('_SUM_%s_WORK_TIME', [TimeWords[FShowVariantTimeData]]);
  edtTotalTime.DataField:= Format('_TOTAL_%s_TIME', [TimeWords[FShowVariantTimeData]]);

  btnDetailDoc.Enabled:= not cdsGridData.IsEmpty;
  btnOperationDoc.Enabled:= cdsGridDataHAS_DOCUMENTATION.AsBoolean;
  btnProgramToolDoc.Enabled:= not cdsGridDataPROGRAM_TOOL_PRODUCT_CODE.IsNull;
  btnSpecificToolDoc.Enabled:= not cdsGridDataSPECIFIC_TOOL_PRODUCT_CODE.IsNull;
  btnTypicalToolDoc.Enabled:= not cdsGridDataTYPICAL_TOOL_PRODUCT_CODE.IsNull;
  btnDeptDoc.Enabled:= cdsGridDataDEPT_HAS_DOC_ITEMS.AsBoolean;

  pnlLoadingButton.Visible:= LoginContext.FeatureFlagOperationsLoading;
end;

procedure TfmOperationalTasks.actSetupUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    (EditMode <> emReadOnly) and
    (not FInSpecialControlTasksMode) and
    (not cdsGridDataSETUP_PROFESSION_CODE.IsNull) and
    ( (cdsGridDataAVAILABLE_DETAIL_TECH_QUANTITY.AsFloat > 0) or
      cdsGridDataIS_SETUP_DONE.AsBoolean
    );
end;

procedure TfmOperationalTasks.actSetupExecute(Sender: TObject);
var
  NewIsSetupDone: Boolean;
begin
  inherited;
  CheckRecordUnchanged;

  if not LoginContext.HasUserActivity(uaOwnOperationSetup) then
    LoginContext.CheckUserActivity(uaOperationSetup);

  if cdsGridDataMLMSO_IS_AUTO_SETUP.AsBoolean then
    raise Exception.Create(SCannotReportAutoSetup);

  if (cdsGridDataIN_DETAIL_TECH_QUANTITY.AsFloat <= 0) and
     not cdsGridDataIS_SETUP_DONE.AsBoolean then
    raise Exception.Create(SCannotReportInfusion);

  if TfmMLMSOperationSetup.ShowForm(dmDocClient, cdsGridData, EditMode, doNone, @NewIsSetupDone) then
    SetIsSetupDone(NewIsSetupDone);
end;

procedure TfmOperationalTasks.actNewOperationMovementUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    (EditMode <> emReadOnly) and
    (not FInSpecialControlTasksMode) and
    (not cdsGridDataIS_BEGIN_STORE_STAGE.AsBoolean) and
    (not cdsGridDataIS_END_STORE_STAGE.AsBoolean) and
    (cdsGridDataAVAILABLE_DETAIL_TECH_QUANTITY.AsFloat > 0) and
    (not cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean);
end;

procedure TfmOperationalTasks.actNewOperationMovementExecute(
  Sender: TObject);
begin
  inherited;
  CheckRecordUnchanged;

  if not LoginContext.HasUserActivity(uaNewOwnOperationMovement) then
    LoginContext.CheckUserActivity(uaNewOperationMovement);

  PopupMenuFromButton(btnNewOperationMovement, pmNewOperationMovement);
end;

procedure TfmOperationalTasks.actWorkWorkUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger = otNormal) and
    (cdsGridDataNEXT_OPERATION_TYPE_CODE.AsInteger = otNormal) and
    (not cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean);

  (Sender as TAction).Visible:= not LoginContext.FeatureFlagOperationsLoading;
end;

procedure TfmOperationalTasks.actWorkNextOperationUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger = otNormal) and
    (not cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean);

  (Sender as TAction).Visible:= LoginContext.FeatureFlagOperationsLoading;
end;

procedure TfmOperationalTasks.actWorkOrganizationUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger = otNormal) and
    (cdsGridDataNEXT_OPERATION_TYPE_CODE.AsInteger in [otBegin, otEnd]) and
    (not cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean);

  (Sender as TAction).Visible:= not LoginContext.FeatureFlagOperationsLoading;
end;

procedure TfmOperationalTasks.actOrganizationNextOperationUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger in [otBegin, otEnd]) and
    (not cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean);

  (Sender as TAction).Visible:= LoginContext.FeatureFlagOperationsLoading;
end;

procedure TfmOperationalTasks.actOrganizationOrganizationUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger in [otBegin, otEnd]) and
    (cdsGridDataNEXT_OPERATION_TYPE_CODE.AsInteger in [otBegin, otEnd]) and
    (not cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean);

  (Sender as TAction).Visible:= not LoginContext.FeatureFlagOperationsLoading;
end;

procedure TfmOperationalTasks.actOrganizationWorkUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger in [otBegin, otEnd]) and
    (cdsGridDataNEXT_OPERATION_TYPE_CODE.AsInteger = otNormal) and
    (not cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean);

  (Sender as TAction).Visible:= not LoginContext.FeatureFlagOperationsLoading;
end;

procedure TfmOperationalTasks.actProgramToolSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient,
    cdsGridDataPROGRAM_TOOL_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmOperationalTasks.actProgramToolSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridDataPROGRAM_TOOL_PRODUCT_CODE.IsNull;
end;

procedure TfmOperationalTasks.actWorkWasteUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger = otNormal) and
    (not cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean);
end;

procedure TfmOperationalTasks.actOrganizationWasteUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger <> otNormal) and
    (not cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean);
end;

procedure TfmOperationalTasks.actRedirectionUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridDataOPERATION_VARIANT_COUNT.AsInteger > 1) and
    (not cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean);

  (Sender as TAction).Visible:= not LoginContext.FeatureFlagOperationsLoading;
end;

procedure TfmOperationalTasks.actReturningUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger = otNormal) and
    (not cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean);

  (Sender as TAction).Visible:= LoginContext.FeatureFlagOperationsLoading;
end;

procedure TfmOperationalTasks.actShiftUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (not cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean);
end;

procedure TfmOperationalTasks.actOperationMovementCommon(Sender: TObject);
var
  OperationMovementTypeCode: Integer;
begin
  inherited;
  CheckRecordUnchanged;

  OperationMovementTypeCode:= (Sender as TAction).Tag;

  if cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean then
    raise Exception.Create(SCannotReportAutoMovement);

  if not (OperationMovementTypeCode in (WasteOperationMovementTypes + [omtLoading, omtReturning]))  then
    begin
      if (not cdsGridDataSETUP_PROFESSION_CODE.IsNull) and (not cdsGridDataIS_SETUP_DONE.AsBoolean) then
        raise Exception.Create(SSetupNotDone);
    end;

  if TfmOperationMovement.ShowForm(dmDocClient, cdsGridData,
       emInsert, doNone, OperationMovementTypeCode) then
    MarkPossiblyChangedRecords;
end;

procedure TfmOperationalTasks.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  with pdsGridDataParams do
    begin
      Edit;
      try
        InitializePriorityInterval(pdsGridDataParamsBEGIN_PRIORITY_CODE, pdsGridDataParamsEND_PRIORITY_CODE);
        pdsGridDataParamsPRODUCTION_ORDER_BASE_TYPE_CODE.AsInteger:= FProductionOrderBaseTypeCode;
        ChosenDeptsFieldChange(pdsGridDataParamsCHOSEN_DEPTS);  // za da se update-ne poleto s imeto na izbranite FOrP-owe
        Post;
      except
        Cancel;
        raise;
      end;  { try }
    end;  { with }
end;

procedure TfmOperationalTasks.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if pdsGridDataParamsCHOSEN_DEPTS.Required and
     (not HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_DEPTS.AsString)) then
    raise Exception.Create(SDeptsRequired);

  CheckRequiredFields([pdsGridDataParamsBEGIN_DATE, pdsGridDataParamsEND_DATE]);
  CheckDatePeriod(pdsGridDataParamsBEGIN_DATE, pdsGridDataParamsEND_DATE);
end;

procedure TfmOperationalTasks.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGridData_TOTAL_VARIANT_TIME.AsVariant:=
    FloatToVar(
      VarToFloat(cdsGridData_SUM_VARIANT_SETUP_TIME.AsVariant) +
      VarToFloat(cdsGridData_SUM_VARIANT_WORK_TIME.AsVariant));

  cdsGridData_TOTAL_REMAINING_TIME.AsVariant:=
    FloatToVar(
      VarToFloat(cdsGridData_SUM_REMAINING_SETUP_TIME.AsVariant) +
      VarToFloat(cdsGridData_SUM_REMAINING_WORK_TIME.AsVariant));

  if cdsGridDataSETUP_PROFESSION_CODE.IsNull then
    cdsGridData_SETUP_STATUS.Clear
  else
    begin
      if (cdsGridDataVARIANT_DETAIL_TECH_QUANTITY.AsFloat = 0) then
        cdsGridData_SETUP_STATUS.Clear
      else
        begin
          if cdsGridDataIS_SETUP_DONE.AsBoolean then
            cdsGridData_SETUP_STATUS.AsString:= SOtch
          else
            cdsGridData_SETUP_STATUS.AsString:= SPlan;
        end;
    end;

  if (cdsGridDataVARIANT_DETAIL_TECH_QUANTITY.AsFloat = 0) then
    cdsGridData_STATUS.Clear
  else
    begin
      if (cdsGridDataIN_DETAIL_TECH_QUANTITY.AsFloat = 0) then
        cdsGridData_STATUS.AsString:= SPlan
      else
        begin
          if (cdsGridDataTO_ENTER_DETAIL_TECH_QUANTITY.AsFloat > 0) or
             (cdsGridDataAVAILABLE_DETAIL_TECH_QUANTITY.AsFloat > 0) then
            cdsGridData_STATUS.AsString:= SPlanOtch
          else
            cdsGridData_STATUS.AsString:= SOtch;
        end;
    end;

  case cdsGridDataMLL_TYPE.AsInteger of
    1: cdsGridData_MLL_TYPE.AsString:= SDetailIsDirectUsed;
    2: cdsGridData_MLL_TYPE.AsString:= SDetailIsTreated;
    3: cdsGridData_MLL_TYPE.AsString:= SDetailIsComposite;
  else
    cdsGridData_MLL_TYPE.AsString:= '';
  end;

  cdsGridDataOPERATION_SETUP_ABBREV.AsString:= SOperationSetupAbbrev;
  cdsGridDataOPERATION_ABBREV.AsString:= SOperationAbbrev;
  cdsGridData_REPORT_TITLE.AsString:= Caption;

  if cdsGridDataOM_LOAD_DATE.IsNull then
    cdsGridData_OM_LOAD_DATE_TIME_DISPLAY.Clear
  else
    cdsGridData_OM_LOAD_DATE_TIME_DISPLAY.AsString:=
      FormatDateTime(dmMain.DateFormatString, cdsGridDataOM_LOAD_DATE.AsDateTime) + ' ' + cdsGridDataOM_LOAD_TIME.DisplayText + SLineBreak +
      cdsGridDataOM_LOAD_TO_EMPLOYEE_NAME.DisplayText;
end;

procedure TfmOperationalTasks.actDeptSpecDocStatusExecute(Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient, cdsGridDataDEPT_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmOperationalTasks.actDeptSpecDocStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridDataDEPT_PRODUCT_CODE.IsNull;
end;

procedure TfmOperationalTasks.actDNCExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDncDoc(
    ((Sender as TAction).ActionComponent as TControl),
    dotRealOperation,
    cdsGridDataDOC_BRANCH_CODE.AsInteger,
    cdsGridDataDOC_CODE.AsInteger,
    cdsGridDataDEPT_NAME.AsString,
    cdsGridDataMLMS_OPERATION_VARIANT_NO.AsInteger);
end;

procedure TfmOperationalTasks.actDNCUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (not FInSpecialControlTasksMode) and
    cdsGridDataHAS_DNC_DOC_ITEMS.AsBoolean;
end;

procedure TfmOperationalTasks.actExcelExportExecute(Sender: TObject);
var
  i: Integer;
begin
  grdData.Columns.BeginUpdate;
  try
    for i:= 0 to grdData.Columns.Count - 1 do
      ColumnByTag(i).Visible:= True;

    for i:= 0 to grdData.Columns.Count - 1 do
      ColumnByTag(i).Index:= i;

    try
      inherited;
    finally
      SetColumns;
    end;
  finally
    grdData.Columns.EndUpdate;
  end;
end;

procedure TfmOperationalTasks.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  // do not call inherited - sichko da stava readonly
  AFrame.ReadOnly:= True;
end;

class function TfmOperationalTasks.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmOperationalTasks.btnDeptDocClick(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TControl),
    dotDept,
    cdsGridDataDEPT_DOC_BRANCH_CODE,
    cdsGridDataDEPT_DOC_CODE);
end;

procedure TfmOperationalTasks.btnDetailDocClick(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TControl),
    dotProduct,
    cdsGridDataDETAIL_DOC_BRANCH_CODE,
    cdsGridDataDETAIL_DOC_CODE);
end;

procedure TfmOperationalTasks.btnOperationDocClick(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.DSOpenDoc(
    emReadOnly,
    (Sender as TControl),
    dotRealOperation,
    cdsGridDataDOC_BRANCH_CODE,
    cdsGridDataDOC_CODE,
    cdsGridDataMLMS_OPERATION_VARIANT_NO.AsInteger);
end;

function TfmOperationalTasks.ColumnByTag(const ATag: Integer): TColumnEh;
var
  c: TColumnEh;
begin
  Result:= nil;
  for c in grdData.Columns do
    if (c.Tag = ATag) then
      Exit(c);
  Assert(True, Format('Tag not found: %d', [ATag]));
end;

procedure TfmOperationalTasks.actToggleClientDataExecute(Sender: TObject);
begin
  inherited;
  FShowClientData:= not FShowClientData;
  SetColumns;
end;

procedure TfmOperationalTasks.actToggleClientDataUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= FShowClientData;
end;

procedure TfmOperationalTasks.actToggleTimeDataExecute(Sender: TObject);
begin
  inherited;
  FShowVariantTimeData:= not FShowVariantTimeData;
  SetColumns;
end;

procedure TfmOperationalTasks.actToggleTimeDataUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= FShowVariantTimeData;
end;

procedure TfmOperationalTasks.actTypicalToolSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient,
    cdsGridDataTYPICAL_TOOL_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmOperationalTasks.actTypicalToolSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridDataTYPICAL_TOOL_PRODUCT_CODE.IsNull;
end;

procedure TfmOperationalTasks.btnProgramToolDocClick(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TControl),
    cdsGridDataPROGRAM_TOOL_PRODUCT_CODE.AsInteger);
end;

procedure TfmOperationalTasks.btnSpecificToolDocClick(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TControl),
    cdsGridDataSPECIFIC_TOOL_PRODUCT_CODE.AsInteger);
end;

procedure TfmOperationalTasks.btnTypicalToolDocClick(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dmDocClient));
  dmDocClient.OpenProductDoc(
    emReadOnly,
    (Sender as TControl),
    cdsGridDataTYPICAL_TOOL_PRODUCT_CODE.AsInteger);
end;

procedure TfmOperationalTasks.grdDataDblClick(Sender: TObject);
var
  Column: TColumnEh;
begin
  inherited;

  Column:= GetColumnOnMouse(grdData);
  if not Assigned(Column) then
    Exit;

  if (Column.Field = cdsGridDataTO_ENTER_DETAIL_TECH_QUANTITY) then
    TfmOperationMovements.ShowForm(dmDocClient, cdsGridData, EditMode, doNone, False, mdIn)
  else
    begin
      if (Column.Field = cdsGridDataTO_LEAVE_DETAIL_TECH_QUANTITY) then
        TfmOperationMovements.ShowForm(dmDocClient, cdsGridData, EditMode, doNone, False, mdOutAndWaste)
      else
        actInputOutput.Execute;
    end;
end;

procedure TfmOperationalTasks.grdDataDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
//  inherited; do nothing
end;

procedure TfmOperationalTasks.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);

  procedure SetToolRequirementFont(ToolRequirementField, ToolIsCompleteField: TField);
  var
    ToolIsComplete: Boolean;
  begin
    ToolIsComplete:= (ToolIsCompleteField.AsInteger = 1);

    if ToolIsComplete then
      AFont.Color:= clGreen
    else
      AFont.Color:= clRed;
  end;

begin
  inherited;

  if (Column.Field = cdsGridDataPROGRAM_TOOL_REQUIREMENT_CODE) then
    SetToolRequirementFont(Column.Field, cdsGridDataPROGRAM_TOOL_IS_COMPLETE);

  if (Column.Field = cdsGridDataSPECIFIC_TOOL_REQUIREMENT_CODE) then
    SetToolRequirementFont(Column.Field, cdsGridDataSPECIFIC_TOOL_IS_COMPLETE);

  if (Column.Field = cdsGridDataTYPICAL_TOOL_REQUIREMENT_CODE) then
    SetToolRequirementFont(Column.Field, cdsGridDataTYPICAL_TOOL_IS_COMPLETE);

  if (Column.Tag = 2) and  // setup EFFECTIVE_TREATMENT_BEGIN_DATE
     cdsGridDataIS_LATE.AsBoolean and
     (not cdsGridDataSETUP_PROFESSION_CODE.IsNull) and
     (not cdsGridDataIS_SETUP_DONE.AsBoolean) then
    Background:= clRed;

  if (Column.Tag = 3) and  // EFFECTIVE_TREATMENT_BEGIN_DATE
     cdsGridDataIS_LATE.AsBoolean then
    Background:= clRed;

  if (Column.FieldName = 'PRIORITY_NO') then
    begin
      AFont.Color:= VarToIntDef(cdsGridDataPRIORITY_COLOR.AsVariant, grdData.Font.Color);
      Background:= VarToIntDef(cdsGridDataPRIORITY_BACKGROUND_COLOR.AsVariant, clWindow);
    end;

  if (Column.FieldName = 'OPERATION_KIND') and
     cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean then
    Background:= $00DECCC0;

  if (Column.Field = cdsGridDataAVAILABLE_DETAIL_TECH_QUANTITY) then
    begin
      if cdsGridDataIS_AUTO_RECEIVING_OPERATION.AsBoolean and
         ((cdsGridDataOPERATION_TYPE_CODE.AsInteger <> otNormal) or not LoginContext.FeatureFlagOperationsLoading) then
        Background:= clGray
      else
        if cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean then
          AFont.Color:= clGray;
    end;

  if (Column.Field = cdsGridDataOP_AVAILABLE_DETAIL_TECH_QTY) and
     cdsGridDataIS_AUTO_RECEIVING_OPERATION.AsBoolean and
     LoginContext.FeatureFlagOperationsLoading then
    Background:= clGray;

  if cdsGridDataIS_RECORD_CHANGED.AsBoolean then
    Background:= clMedGray;
end;

procedure TfmOperationalTasks.grdHeaderSortMarkingChanged(Sender: TObject);
begin
  inherited;
  ResortGridData(Sender as TAbmesDBGrid);
  ActiveControl:= grdData;
end;

procedure TfmOperationalTasks.grdHeaderTitleClick(Column: TColumnEh);
begin
  inherited;
  ActiveControl:= grdData;
end;

procedure TfmOperationalTasks.Initialize;
begin
  inherited;
  Caption:= GetFormCaption;
  SetColumns;
  InitializeAbmesDBGrid(grdHeader);

  RegisterExcelExportDoc('DETAIL_DOC_BRANCH_CODE', 'DETAIL_DOC_CODE', Trim(lblDetailDoc.Caption));
  RegisterExcelExportDoc('PROGRAM_TOOL_DOC_BRANCH_CODE', 'PROGRAM_TOOL_DOC_CODE', Trim(lblProgramToolDoc.Caption));
  RegisterExcelExportDoc('SPECIFIC_TOOL_DOC_BRANCH_CODE', 'SPECIFIC_TOOL_DOC_CODE', Trim(lblSpecificToolDoc.Caption));
  RegisterExcelExportDoc('TYPICAL_TOOL_DOC_BRANCH_CODE', 'TYPICAL_TOOL_DOC_CODE', Trim(lblTypicalToolDoc.Caption));
end;

procedure TfmOperationalTasks.actInputOutputExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if FInSpecialControlTasksMode then
    em:= emReadOnly
  else
    em:= EditMode;

  TfmOperationInputOutput.ShowForm(dmDocClient, cdsGridData, em);
end;

procedure TfmOperationalTasks.actInputOutputUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmOperationalTasks.actLoadingUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (EditMode <> emReadOnly) and
    (not FInSpecialControlTasksMode) and
    (cdsGridDataOPERATION_TYPE_CODE.AsInteger = otNormal) and
    (not cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean) and
    (cdsGridDataOP_AVAILABLE_DETAIL_TECH_QTY.AsFloat > 0);

  (Sender as TAction).Visible:= LoginContext.FeatureFlagOperationsLoading;
end;

procedure TfmOperationalTasks.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  pdsGridDataParams_IN_SPECIAL_CONTROL_TASKS_MODE.AsBoolean:=
    FInSpecialControlTasksMode;

  pdsGridDataParams_DATE_INTERVAL.AsString:=
    dmMain.GetDateIntervalAsString(pdsGridDataParamsBEGIN_DATE.AsDateTime, pdsGridDataParamsEND_DATE.AsDateTime);
end;

procedure TfmOperationalTasks.ChosenDeptsFieldChange(Sender: TField);
begin
  pdsGridDataParams_CHOSEN_NODE_CODE.Clear;
  pdsGridDataParams_CHOSEN_NODE_NAME.Clear;
  pdsGridDataParams_CHOSEN_NODE_NO.Clear;
     
  if HasChosenNodesOrParams(Sender.AsString) then
    if IsSingleChosenNodeWithoutParams(Sender.AsString) then
      begin
        pdsGridDataParams_CHOSEN_NODE_CODE.AsInteger:=
          ChosenNodeXMLToNodeCode(Sender.AsString);

        DoDeptFieldChanged(
          pdsGridDataParams_CHOSEN_NODE_CODE,
          pdsGridDataParams_CHOSEN_NODE_NAME,
          pdsGridDataParams_CHOSEN_NODE_NO);
      end
    else
      pdsGridDataParams_CHOSEN_NODE_NAME.AsString:= SDeptsSet;
end;

procedure TfmOperationalTasks.pdsGridDataParamsCHOSEN_DEPTSChange(Sender: TField);
begin
  inherited;
  ChosenDeptsFieldChange(Sender);
end;

function TfmOperationalTasks.GetFormCaption: string;
begin
  Result:=
    OperationalTasksCaptions[FInSpecialControlTasksMode] + ' %s';
  Result:= Format(Result, [ProductionOrderBaseTypes[FProductionOrderBaseTypeCode].CoveringAbbrevPlural]);
end;

procedure TfmOperationalTasks.actShowCapacityGraphUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmOperationalTasks.actSpecialControlUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (not cdsGridDataMLMSO_IS_AUTO_MOVEMENT.AsBoolean) and
    cdsGridDataHAS_SPECIAL_CONTROL.AsBoolean;
end;

procedure TfmOperationalTasks.actSpecificToolSpecDocStatusExecute(
  Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient,
    cdsGridDataSPECIFIC_TOOL_PRODUCT_CODE.AsInteger, emReadOnly);
end;

procedure TfmOperationalTasks.actSpecificToolSpecDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsGridDataSPECIFIC_TOOL_PRODUCT_CODE.IsNull;
end;

procedure TfmOperationalTasks.actShowCapacityGraphExecute(Sender: TObject);
begin
  inherited;
  TfmCapacityGraph.ShowGraph(
    dmDocClient,
    atRealization,
    cdsGridDataDEPT_CODE.AsInteger,
    cdsGridDataTREATMENT_BEGIN_DATE.AsDateTime
  );
end;

procedure TfmOperationalTasks.actActiveVariantsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmOperationalTasks.actActiveVariantsExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaSetOperationVariants);
  if TfmMLMSOperationVariants.ShowForm(dmDocClient, cdsGridData, emEdit,
       doNone, True) then
    RefreshDataSet(cdsGridData);
end;

procedure TfmOperationalTasks.actModelStatusExecute(Sender: TObject);
begin
  inherited;
  if TfmModelStatus.ShowForm(dmDocClient, cdsGridData, EditMode) then
    RefreshDataSet(cdsGridData);
end;

procedure TfmOperationalTasks.actModelStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmOperationalTasks.cdsGridDataOM_LOAD_TIMEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  TimeFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmOperationalTasks.cdsGridDataOPERATION_KINDGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if not Sender.IsNull then
    Text:=
      OperationKindAbbrevs[IntToOperationKind(Sender.AsInteger)] +
      ' - ' +
      OperationKindNames[IntToOperationKind(Sender.AsInteger)];
end;

procedure TfmOperationalTasks.cdsGridDataPROGRAM_TOOL_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ToolRequirementFieldGetText(Sender, cdsGridDataPROGRAM_TOOL_IS_COMPLETE, cdsGridDataOPERATION_TYPE_CODE,
    Text, DisplayText);
end;

procedure TfmOperationalTasks.cdsGridDataSPECIFIC_TOOL_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ToolRequirementFieldGetText(Sender, cdsGridDataSPECIFIC_TOOL_IS_COMPLETE, cdsGridDataOPERATION_TYPE_CODE,
    Text, DisplayText);
end;

procedure TfmOperationalTasks.cdsGridDataTYPICAL_TOOL_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ToolRequirementFieldGetText(Sender, cdsGridDataTYPICAL_TOOL_IS_COMPLETE, cdsGridDataOPERATION_TYPE_CODE,
    Text, DisplayText);
end;

procedure TfmOperationalTasks.SetIsSetupDone(ANewIsSetupDone: Boolean);
begin
  if (cdsGridDataIS_SETUP_DONE.AsBoolean <> ANewIsSetupDone) then
    begin
      cdsGridData.Edit;
      try
        cdsGridDataIS_SETUP_DONE.AsBoolean:= ANewIsSetupDone;
        cdsGridData.Post;
      except
        cdsGridData.Cancel;
        raise;
      end;  { try }
    end;  { if }
end;

procedure TfmOperationalTasks.MarkPossiblyChangedRecords;
var
  SaleObjectBranchCode, SaleObjectCode: Integer;
  MllNoAsFormatedText: string;
  bm: TBookmark;
begin
  SaleObjectBranchCode:= cdsGridDataSALE_OBJECT_BRANCH_CODE.AsInteger;
  SaleObjectCode:= cdsGridDataSALE_OBJECT_CODE.AsInteger;
  MllNoAsFormatedText:= cdsGridDataNO_AS_FORMATED_TEXT.AsString;

  cdsGridData.DisableControls;
  try
    bm:= cdsGridData.Bookmark;
    try
      cdsGridData.First;
      while not cdsGridData.Eof do
        begin
          if (cdsGridDataSALE_OBJECT_BRANCH_CODE.AsInteger = SaleObjectBranchCode) and
             (cdsGridDataSALE_OBJECT_CODE.AsInteger = SaleObjectCode) and
             (Pos(cdsGridDataNO_AS_FORMATED_TEXT.AsString + '.', MllNoAsFormatedText + '.') = 1) then
            begin
              cdsGridData.Edit;
              try
                cdsGridDataIS_RECORD_CHANGED.AsInteger:= 1;
                cdsGridData.Post;
              except
                cdsGridData.Cancel;
                raise;
              end;  { try }
            end;  { if }

          cdsGridData.Next;
        end;  { while }

      cdsGridData.MergeChangeLog;
    finally
      cdsGridData.Bookmark:= bm;
    end;  { try }
  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

procedure TfmOperationalTasks.CheckRecordUnchanged;
begin
  if (cdsGridDataIS_RECORD_CHANGED.AsInteger = 1) then
    begin
      if (MessageDlgBtn(
            SRecordPossiblyChanged,
            mtInformation,
            [SRefreshButtonCaption, bcCancel],
            0) = 0) then
        RefreshDataset(cdsGridData);

      // abort no matter which button was clicked
      Abort;
    end;  { if }
end;

procedure TfmOperationalTasks.OpenDataSets;
begin
  cdsBranches.Open;
  cdsSaleTypes.Open;
  inherited;
end;

procedure TfmOperationalTasks.CloseDataSets;
begin
  inherited;
  cdsSaleTypes.Close;
  cdsBranches.Close;
end;

procedure TfmOperationalTasks.cdsGridDataEFFECTIVE_TREATMENT_BEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if cdsGridDataEFFECTIVE_TREATMENT_BEGIN_DATE.IsNull then
    Text:= ''
  else
    Text:=
      dmMain.GetDateIntervalAsShortString(
        cdsGridDataEFFECTIVE_TREATMENT_BEGIN_DATE.AsDateTime,
        cdsGridDataEFFECTIVE_TREATMENT_BEGIN_DATE.AsDateTime);
end;

procedure TfmOperationalTasks.actToggleCoefDataExecute(Sender: TObject);
begin
  inherited;
  FShowEffortCoef:= not FShowEffortCoef;
  SetColumns;
end;

procedure TfmOperationalTasks.actToggleCoefDataUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= FShowEffortCoef;
end;

procedure TfmOperationalTasks.actToggleOmLoadDataExecute(Sender: TObject);
begin
  inherited;
  FShowOmLoadData:= not FShowOmLoadData;
  SetColumns;
end;

procedure TfmOperationalTasks.actToggleOmLoadDataUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= FShowOmLoadData;
  (Sender as TAction).Visible:= LoginContext.FeatureFlagOperationsLoading;
end;

end.

