unit fExceptEvents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet, Buttons,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  StdCtrls, fGridForm, fEditForm, uClientTypes,
  Menus, ImgList, dDocClient, uUtils, uExceptEventClientUtils, Mask,
  DBGridEhGrouping, uNestProc;

type
  TDetailType = (dtExceptEventDamage, dtExceptEventTask);

  TfmExceptEvents = class(TMasterDetailForm)
    pcDetailViews: TPageControl;
    tsExceptEventDamages: TTabSheet;
    tsExceptEventTasks: TTabSheet;
    pnlExceptEventDamagesTop: TPanel;
    pnlExceptEventTasksTop: TPanel;
    grdExceptEventTasks: TAbmesDBGrid;
    cdsExceptEventTasks: TAbmesClientDataSet;
    dsExceptEventTasks: TDataSource;
    cdsGridDataEXCEPT_EVENT_CODE: TAbmesFloatField;
    cdsGridDataEXCEPT_EVENT_NO: TAbmesFloatField;
    cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEXCEPT_EVENT_TYPE_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataDESCRIPTION: TAbmesWideStringField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField;
    cdsGridDataDETECT_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataCTRL_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataCTRL_MAIN_EMPLOYEE: TAbmesWideStringField;
    cdsGridDataDMG_RESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDMG_RESOLVE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDMG_RESOLVE_REAL_WORKDAYS: TAbmesFloatField;
    cdsGridDataDMG_RESOLVE_WORKDAYS_LEFT: TAbmesFloatField;
    cdsGridDataEXCEPT_EVENT_TOTAL_PRICE: TAbmesFloatField;
    cdsGridDataRESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataRESOLVE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataRESOLVE_REAL_WORKDAYS: TAbmesFloatField;
    cdsGridDataRESOLVE_WORKDAYS_LEFT: TAbmesFloatField;
    navExceptEventTasks: TDBColorNavigator;
    navExceptEventDamages: TDBColorNavigator;
    pnlInsertDetail: TPanel;
    btnInsertDetail: TBitBtn;
    pnlDeleteDetail: TPanel;
    btnDeleteDetail: TBitBtn;
    pnlEditDetail: TPanel;
    btnEditDetail: TBitBtn;
    cdsExceptEventTasksEXCEPT_EVENT_TASK_CODE: TAbmesFloatField;
    cdsExceptEventTasksSTATE_CODE: TAbmesFloatField;
    cdsExceptEventTasksEXCEPT_EVENT_TASK_NO: TAbmesFloatField;
    cdsExceptEventTasksCREATE_DATE: TAbmesSQLTimeStampField;
    cdsExceptEventTasksTASK_REAL_WORKDAYS: TAbmesFloatField;
    cdsExceptEventTasksDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsExceptEventTasksDEPT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsExceptEventTasksDEPT_DOC_CODE: TAbmesFloatField;
    cdsExceptEventTasksDEPT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsExceptEventTasksEMPLOYEE_NO: TAbmesFloatField;
    cdsExceptEventTasksEMPLOYEE_NAME: TAbmesWideStringField;
    cdsExceptEventTasksEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsExceptEventTasksEMPLOYEE_DOC_CODE: TAbmesFloatField;
    cdsExceptEventTasksEMPLOYEE_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsExceptEventTasksDESCRIPTION: TAbmesWideStringField;
    cdsExceptEventTasksDOC_BRANCH_CODE: TAbmesFloatField;
    cdsExceptEventTasksDOC_CODE: TAbmesFloatField;
    cdsExceptEventTasksHAS_DOC_ITEMS: TAbmesFloatField;
    cdsExceptEventTasksPLAN_DATE: TAbmesSQLTimeStampField;
    cdsExceptEventTasksHAS_PROBLEMS_ENCOUNTERED: TAbmesFloatField;
    cdsExceptEventTasksCLOSE_DATE: TAbmesSQLTimeStampField;
    cdsExceptEventTasksIS_ANNULED: TAbmesFloatField;
    cdsExceptEventTasksTASK_WORKDAYS_LEFT: TAbmesFloatField;
    tlbExceptEventTaskDocs: TToolBar;
    lblExceptEventTaskDoc: TLabel;
    btnExceptEventTaskDoc: TToolButton;
    sepExceptEventTaskDoc: TToolButton;
    btnExceptEventTaskDeptDoc: TToolButton;
    sepExceptEventTaskDeptDoc: TToolButton;
    btnExceptEventTaskEmployeeDoc: TToolButton;
    lblExceptEventTaskEmployeeDoc: TLabel;
    actExceptEventTaskDoc: TAction;
    actExceptEventTaskDeptDoc: TAction;
    actExceptEventTaskEmployeeDoc: TAction;
    actInsertRootOrChildDamage: TAction;
    pmInsertExceptEventDamage: TPopupMenu;
    N1: TMenuItem;
    actInsertRootDamage: TAction;
    N2: TMenuItem;
    cdsDetailEXCEPT_EVENT_DAMAGE_CODE: TAbmesFloatField;
    cdsDetailFULL_NO: TAbmesWideStringField;
    cdsDetailFORMATED_FULL_NO: TAbmesWideStringField;
    cdsDetailEXCEPT_EVENT_CODE: TAbmesFloatField;
    cdsDetailPARENT_CODE: TAbmesFloatField;
    cdsDetailSTATE_CODE: TAbmesFloatField;
    cdsDetailCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDetailEE_DAMAGE_PROCESS_TYPE_NAME: TAbmesWideStringField;
    cdsDetailPRODUCT_QUANTITY: TAbmesFloatField;
    cdsDetailDAMAGE_WORKDAYS: TAbmesFloatField;
    cdsDetailPROCESS_IDENTIFIER: TAbmesWideStringField;
    cdsDetailPROCESS_PRODUCT_NO: TAbmesFloatField;
    cdsDetailPROCESS_PRODUCT_NAME: TAbmesWideStringField;
    cdsDetailPLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDetailPLAN_END_DATE: TAbmesSQLTimeStampField;
    cdsDetailPROCESS_PRODUCT_QUANTITY: TAbmesFloatField;
    cdsDetailPROCESS_PRODUCT_MEASURE: TAbmesWideStringField;
    cdsDetailDAMAGED_PRICE: TAbmesFloatField;
    tlbExceptEventDamageDocs: TToolBar;
    cdsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_DOC_CODE: TAbmesFloatField;
    cdsDetailPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    lblExceptEventDamageProductDoc: TLabel;
    btnExceptEventDamageProductDoc: TToolButton;
    actExceptEventDamageProductDoc: TAction;
    cdsGridDataSTATE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    tlbExceptEventDocs: TToolBar;
    lblExceptEventDoc: TLabel;
    btnExceptEventDoc: TToolButton;
    sepExceptEventDoc: TToolButton;
    btnExceptEvent: TToolButton;
    sepExceptEventProductDoc: TToolButton;
    lblExceptEventProductDoc: TLabel;
    actExceptEventDoc: TAction;
    actExceptEventProductDoc: TAction;
    tlbMove: TToolBar;
    btnStartMoving: TToolButton;
    btnFinishMoving: TToolButton;
    btnMakeRoot: TToolButton;
    sepExceptEventDamageProductDoc: TToolButton;
    actStartMoving: TAction;
    actFinishMoving: TAction;
    actMakeRoot: TAction;
    ilExceptEventDamages: TImageList;
    cdsDetailLOCAL_NO: TAbmesFloatField;
    cdsExceptEventDamageProcessTypes: TAbmesClientDataSet;
    cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField;
    cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_NO: TAbmesFloatField;
    cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_NAME: TAbmesWideStringField;
    cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_ABBREV: TAbmesWideStringField;
    cdsDetailSATISFIES_FILTER: TAbmesFloatField;
    cdsExceptEventTasksSATISFIES_FILTER: TAbmesFloatField;
    pdsGridDataParamsMIN_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsEXCEPT_EVENT_NO: TAbmesFloatField;
    pdsGridDataParamsCREATE_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsCREATE_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsALL_FILTERED_PRODUCTS: TAbmesFloatField;
    pdsGridDataParamsDEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsDETECT_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsCTRL_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsCTRL_MAIN_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsDAMAGES_NORMALIZED_STATE: TAbmesFloatField;
    pdsGridDataParamsDAMAGES_CONFIRM_STATE: TAbmesFloatField;
    pdsGridDataParamsDMG_RESOLVE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDMG_RESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsMIN_DMG_RESOLVE_WORKDAYS_LEFT: TAbmesFloatField;
    pdsGridDataParamsMAX_DMG_RESOLVE_WORKDAYS_LEFT: TAbmesFloatField;
    pdsGridDataParamsDMG_RESOLVE_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDMG_RESOLVE_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsIS_FILTERED_BY_DAMAGES: TAbmesFloatField;
    pdsGridDataParamsEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsEE_DMG_PROCESS_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsTASKS_RESOLVED_STATE: TAbmesFloatField;
    pdsGridDataParamsTASKS_CONFIRM_STATE: TAbmesFloatField;
    pdsGridDataParamsRESOLVE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsRESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsMIN_RESOLVE_WORKDAYS_LEFT: TAbmesFloatField;
    pdsGridDataParamsMAX_RESOLVE_WORKDAYS_LEFT: TAbmesFloatField;
    pdsGridDataParamsRESOLVE_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsRESOLVE_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsIS_FILTERED_BY_TASKS: TAbmesFloatField;
    pdsGridDataParamsMIN_TASK_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_TASK_STATE_CODE: TAbmesFloatField;
    pdsGridDataParamsTASK_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsTASK_PLAN_END_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsMIN_TASK_WORKDAYS_LEFT: TAbmesFloatField;
    pdsGridDataParamsMAX_TASK_WORKDAYS_LEFT: TAbmesFloatField;
    pdsGridDataParamsTASK_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsTASK_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsEXCEPT_EVENT_TASK_HAS_PROBLEMS: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParams_EE_DAMAGE_PROCESS_TYPE_NAME: TAbmesWideStringField;
    cdsGridData_SUM_DAMAGED_PRICE: TAggregateField;
    pdsGridDataParamsMLL_PRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParamsMLL_SALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParams_MLL_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParamsMLL_SALE_NO: TAbmesFloatField;
    pdsGridDataParamsMLL_SALE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParams_MLL_SALE_TYPE_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsSHP_SALE_DEAL_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsSHP_SALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParams_SHP_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParamsSHP_SALE_NO: TAbmesFloatField;
    pdsGridDataParamsSHP_SALE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsSHP_SALE_SHIPMENT_NO: TAbmesFloatField;
    pdsGridDataParams_SHP_SALE_TYPE_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsDEL_DELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsDEL_DCD_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsDEL_DCD_CODE: TAbmesFloatField;
    pdsGridDataParamsDEL_DELIVERY_PROJECT_CODE: TAbmesFloatField;
    pdsGridDataParams_DEL_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParamsEXCEPT_EVENT_GEN_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsOM_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsOM_CODE: TAbmesFloatField;
    pnlGridButtons: TPanel;
    btnInsertExceptEvent: TBitBtn;
    btnEditExceptEvent: TBitBtn;
    cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField;
    pdsGridDataParamsSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSHIPMENT_OBJECT_CODE: TAbmesFloatField;
    pdsGridDataParamsML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsML_OBJECT_CODE: TAbmesFloatField;
    pdsGridDataParamsDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsDELIVERY_OBJECT_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsSALE_OBJECT_CODE: TAbmesFloatField;
    pdsGridDataParamsDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsDCD_OBJECT_CODE: TAbmesFloatField;
    pdsGridDataParamsDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsGridDataEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField;
    cdsGridDataEXCEPT_EVENT_LEVEL_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField;
    cdsExceptEventLevels: TAbmesClientDataSet;
    cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField;
    cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_NO: TAbmesFloatField;
    cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_NAME: TAbmesWideStringField;
    cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_EXCEPT_EVENT_LEVEL_NAME: TAbmesWideStringField;
    cdsGridDataHAS_CAUSES: TAbmesFloatField;
    cdsGridDataHAS_CONSEQUENCES: TAbmesFloatField;
    actCopyProductNoToClipboard: TAction;
    tlbActions: TToolBar;
    cdsGridDataEXCEPT_EVENT_GEN_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridDataORG_TASK_PROPOSAL_CODE: TAbmesFloatField;
    cdsGridDataORG_TASK_PROPOSAL_NO: TAbmesFloatField;
    cdsGridDataOTP_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataOTP_DOC_CODE: TAbmesFloatField;
    cdsGridDataOTP_HAS_DOC_ITEMS: TAbmesFloatField;
    actOrgTaskProposalDoc: TAction;
    btnToggleDescription: TToolButton;
    actShowOrgTaskProposal: TAction;
    btnSetOrgTaskProposal: TBitBtn;
    actSetOrgTaskProposal: TAction;
    cdsOrgTaskProposalCode: TAbmesClientDataSet;
    cdsOrgTaskProposalCodeORG_TASK_PROPOSAL_CODE: TAbmesFloatField;
    cdsGridDataOTP_BIND_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataOTP_BIND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataOTP_BIND_TIME: TAbmesSQLTimeStampField;
    cdsOrgTaskProposalCodeOTP_BIND_DATE: TAbmesSQLTimeStampField;
    cdsOrgTaskProposalCodeOTP_BIND_TIME: TAbmesSQLTimeStampField;
    cdsOrgTaskProposalCodeOTP_BIND_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataDEPT_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDEPT_DOC_CODE: TAbmesFloatField;
    cdsGridDataDEPT_HAS_DOC_ITEMS: TAbmesFloatField;
    actExceptEventDeptDoc: TAction;
    btnToggleDeptsName: TToolButton;
    btnToggleGeneratorIdentifier: TToolButton;
    cdsGridDataDEPT_NAME: TAbmesWideStringField;
    cdsGridDataDETECT_DEPT_NAME: TAbmesWideStringField;
    cdsGridDataCTRL_DEPT_NAME: TAbmesWideStringField;
    pdsGridDataParamsHAS_GENERATOR: TAbmesFloatField;
    pdsGridDataParamsS_REQUEST_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsS_REQUEST_NO: TAbmesFloatField;
    pdsGridDataParamsS_REQUEST_LINE_NO: TAbmesFloatField;
    pdsGridDataParamsD_DCD_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsD_DCD_CODE: TAbmesFloatField;
    pdsGridDataParamsD_DELIVERY_PROJECT_CODE: TAbmesFloatField;
    pdsGridDataParams_S_REQUEST_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_D_DCD_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParamsOMG_OM_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsOMG_OM_NO: TAbmesFloatField;
    pdsGridDataParamsOMG_PRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsOMG_SALE_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsOMG_SALE_NO: TAbmesFloatField;
    pdsGridDataParamsOMG_SALE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsOMG_BEGIN_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParamsOMG_END_PRIORITY_CODE: TAbmesFloatField;
    pdsGridDataParams_OMG_OM_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_OMG_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_OMG_SALE_TYPE_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsCOMPANY_CODE: TAbmesFloatField;
    pdsGridDataParamsORG_TASK_PROPOSAL_NO: TAbmesFloatField;
    pdsGridDataParamsOTP_CREATE_BEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsOTP_CREATE_END_DATE: TAbmesSQLTimeStampField;
    btnShowOrgTaskProposal: TBitBtn;
    tlbCopyProductNo: TToolBar;
    btnCopyProductNoToClipboard: TToolButton;
    cdsGridDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    cdsExceptEventGenTypes: TAbmesClientDataSet;
    cdsExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_CODE: TAbmesFloatField;
    cdsExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_NO: TAbmesFloatField;
    cdsExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_NAME: TAbmesWideStringField;
    cdsExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_EXCEPT_EVENT_GEN_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParamsCAUSED_EXCEPT_EVENT_NO: TAbmesFloatField;
    pdsGridDataParamsCAUSE_EXCEPT_EVENT_NO: TAbmesFloatField;
    btnCauseExceptEvents: TBitBtn;
    btnCausedExceptEvents: TBitBtn;
    actShowCausedExceptEvents: TAction;
    actShowCauseExceptEvents: TAction;
    tlbExceptEventDocsContinued: TToolBar;
    sepOrgTaskProposalDoc: TToolButton;
    lblOrgTaskProposalDoc: TLabel;
    btnOrgTaskProposalDoc: TToolButton;
    sepExceptEventDeptDoc: TToolButton;
    lblExceptEventDeptDoc: TLabel;
    btnExceptEventDeptDoc: TToolButton;
    cdsExceptEventsParams: TAbmesClientDataSet;
    cdsExceptEventsParamsMAX_STATE_CODE: TAbmesFloatField;
    cdsExceptEventsParamsCAUSE_EXCEPT_EVENT_NO: TAbmesFloatField;
    cdsExceptEventsParamsCAUSED_EXCEPT_EVENT_NO: TAbmesFloatField;
    pnlConsequenceExceptEventNo: TPanel;
    pnlCauseExceptEventNo: TPanel;
    lblCauseExceptEventNo: TLabel;
    lblConsequenceExceptEventNo: TLabel;
    edtCauseExceptEventNo: TDBEdit;
    edtConsequenceExceptEventNo: TDBEdit;
    pnlShowCauseExceptEvent: TPanel;
    btnShowCauseExceptEvent: TSpeedButton;
    pnlShowConsequenceExceptEvent: TPanel;
    btnShowConsequenceExceptEvent: TSpeedButton;
    actShowCauseExceptEvent: TAction;
    actShowConsequenceExceptEvent: TAction;
    cdsShowExceptEventParam: TAbmesClientDataSet;
    cdsShowExceptEventParamEXCEPT_EVENT_CODE: TAbmesFloatField;
    btnAttachExceptEventsAsCause: TBitBtn;
    btnAttachExceptEventsAsConsequence: TBitBtn;
    btnDetachExceptEvents: TBitBtn;
    actDetachExceptEvents: TAction;
    actAttachExceptEventsAsCause: TAction;
    actAttachExceptEventsAsConsequence: TAction;
    pnlExceptEventTaskDeptDoc: TPanel;
    cdsGridDataPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField;
    pdsGridDataParamsPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    grdExceptEventDamages: TAbmesDBGrid;
    cdsGridDataPRODUCT_QUANTITY: TAbmesFloatField;
    cdsGridDataPRODUCT_MEASURE_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsEXCEPT_EVENT_IS_CAUSE: TAbmesFloatField;
    pdsGridDataParamsEXCEPT_EVENT_IS_CAUSED: TAbmesFloatField;
    cdsExceptEventsParamsEXCEPT_EVENT_IS_CAUSE: TAbmesFloatField;
    cdsExceptEventsParamsEXCEPT_EVENT_IS_CAUSED: TAbmesFloatField;
    pdsGridDataParamsDETECT_EMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataCREATE_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField;
    cdsGridDataDETECT_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_PSD_SINGLE_PRICE_IN_BC: TAbmesFloatField;
    cdsGridDataEE_TYPE_FULL_NO: TAbmesWideStringField;
    cdsGridDataCREATE_EMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataDETECT_EMPLOYEE_NO: TAbmesFloatField;
    cdsGridDataEXCEPT_EVENT_CAUSES: TAbmesWideStringField;
    cdsGridDataEXCEPT_EVENT_CONSEQUENCES: TAbmesWideStringField;
    cdsGridDataPRODUCT_PSD_TOTAL_PRICE_IN_BC: TAbmesFloatField;
    cdsGridDataIS_SINGLE_RESOLVABLE: TAbmesFloatField;
    pdsGridDataParamsSINGLE_RESOLVABLE: TAbmesFloatField;
    cdsExceptEventTasksEE_TASK_RESOLVE_TYPE_SHOW_NAME: TAbmesWideStringField;
    cdsGridDataIS_ACTIVATED: TAbmesFloatField;
    cdsGridDataIS_CLOSED: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsDetailAfterDelete(DataSet: TDataSet);
    procedure navExceptEventTasksBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure navExceptEventDamagesBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure grdExceptEventTasksDblClick(Sender: TObject);
    procedure grdExceptEventTasksDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure cdsDetailAfterOpen(DataSet: TDataSet);
    procedure cdsDetailBeforeClose(DataSet: TDataSet);
    procedure cdsExceptEventTasksBeforeOpen(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsExceptEventTasksSTATE_CODEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsExceptEventTasksHAS_PROBLEMS_ENCOUNTEREDGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure grdExceptEventTasksGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure actExceptEventTaskEmployeeDocUpdate(Sender: TObject);
    procedure actExceptEventTaskDeptDocUpdate(Sender: TObject);
    procedure actExceptEventTaskDocUpdate(Sender: TObject);
    procedure actExceptEventTaskDocExecute(Sender: TObject);
    procedure actExceptEventTaskDeptDocExecute(Sender: TObject);
    procedure actExceptEventTaskEmployeeDocExecute(Sender: TObject);
    procedure actInsertRootOrChildDamageUpdate(Sender: TObject);
    procedure actInsertRootOrChildDamageExecute(Sender: TObject);
    procedure actInsertRootDamageUpdate(Sender: TObject);
    procedure actInsertRootDamageExecute(Sender: TObject);
    procedure cdsDetailSTATE_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsDetailPLAN_BEGIN_DATEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actExceptEventDamageProductDocUpdate(Sender: TObject);
    procedure actExceptEventDamageProductDocExecute(Sender: TObject);
    procedure cdsGridDataSTATE_CODEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure grdDataGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actExceptEventDocUpdate(Sender: TObject);
    procedure actExceptEventProductDocUpdate(Sender: TObject);
    procedure actExceptEventDocExecute(Sender: TObject);
    procedure actExceptEventProductDocExecute(Sender: TObject);
    procedure actStartMovingUpdate(Sender: TObject);
    procedure actStartMovingExecute(Sender: TObject);
    procedure actFinishMovingUpdate(Sender: TObject);
    procedure actFinishMovingExecute(Sender: TObject);
    procedure actMakeRootUpdate(Sender: TObject);
    procedure actMakeRootExecute(Sender: TObject);
    procedure cdsDetailBeforeOpen(DataSet: TDataSet);
    procedure actInsertDetailRecordExecute(Sender: TObject);
    procedure grdExceptEventDamagesDblClick(Sender: TObject);
    procedure cdsExceptEventTasksAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure actExceptEventRelationsUpdate(Sender: TObject);
    procedure actExceptEventRelationsExecute(Sender: TObject);
    procedure actCopyProductNoToClipboardUpdate(Sender: TObject);
    procedure actCopyProductNoToClipboardExecute(Sender: TObject);
    procedure actOrgTaskProposalDocUpdate(Sender: TObject);
    procedure actOrgTaskProposalDocExecute(Sender: TObject);
    procedure actShowOrgTaskProposalUpdate(Sender: TObject);
    procedure actShowOrgTaskProposalExecute(Sender: TObject);
    procedure actSetOrgTaskProposalUpdate(Sender: TObject);
    procedure actSetOrgTaskProposalExecute(Sender: TObject);
    procedure cdsOrgTaskProposalCodeORG_TASK_PROPOSAL_CODEChange(
      Sender: TField);
    procedure actExceptEventDeptDocUpdate(Sender: TObject);
    procedure actExceptEventDeptDocExecute(Sender: TObject);
    procedure actShowCauseExceptEventsUpdate(Sender: TObject);
    procedure actShowCausedExceptEventsUpdate(Sender: TObject);
    procedure actShowCausedExceptEventsExecute(Sender: TObject);
    procedure actShowCauseExceptEventsExecute(Sender: TObject);
    procedure actShowCauseExceptEventUpdate(Sender: TObject);
    procedure actShowConsequenceExceptEventUpdate(Sender: TObject);
    procedure actShowCauseExceptEventExecute(Sender: TObject);
    procedure actShowConsequenceExceptEventExecute(Sender: TObject);
    procedure actDetachExceptEventsUpdate(Sender: TObject);
    procedure actDetachExceptEventsExecute(Sender: TObject);
    procedure actAttachExceptEventsAsCauseUpdate(Sender: TObject);
    procedure actAttachExceptEventsAsConsequenceUpdate(Sender: TObject);
    procedure actAttachExceptEventsAsCauseExecute(Sender: TObject);
    procedure actAttachExceptEventsAsConsequenceExecute(Sender: TObject);
    procedure grdExceptEventDamagesGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure grdExceptEventDamagesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure actPrintActiveGridExecute(Sender: TObject);
  private
    FMovedDamageCode: Integer;
    FMovedDamageParentCode: Integer;
    FMovedDamageExceptEventCode: Integer;
    FMovedDamageLocalNo: Integer;
    FSavedTasksParams: TParams;
    FSavedExceptEventTasksBookmark: TBookmark;
    FStartingDetailType: TDetailType;
    FBrowsingEditMode: TEditMode;
    function ActiveDetailType: TDetailType;
    procedure DetailNavigatorExecuteAction(AButton: TNavigateBtn);
    function GetUserDetailEditActivity: Integer;
    procedure MoveDamage(ADamageCode, AParentDamageCode, AExceptEventCode: Integer);
    function GetInsertDetailAction: TAction;
    procedure ShowExceptEvent(AExceptEventNoField: TAbmesFloatField);
    function GetSelectedExceptEvents: OleVariant;
    function InputExceptEventCode(AIsChoosingCause: Boolean): Integer;
    function GetImageIndex: Integer;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetDelRecordEnabled: Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
    function GetDelDetailRecordEnabled: Boolean; override;
    function GetEditDetailRecordEnabled: Boolean; override;
    function ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function GetInsertDetailRecordEnabled: Boolean; override;
    function GetFilterFormEnabled: Boolean; override;
  public
    class procedure ShowExceptEventsForGenerator(AEditMode: TEditMode;
      AExceptEventGenType: TExceptEventGenType; AGeneratorDataSet: TAbmesClientDataSet);
      
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AStartingDetailType: TDetailType = dtExceptEventTask; ABrowsingEditMode: TEditMode = emReadOnly): Boolean;

    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AStartingDetailType: TDetailType = dtExceptEventTask; ABrowsingEditMode: TEditMode = emReadOnly); reintroduce; virtual;

    procedure Initialize; override;
    class function CanUseDocs: Boolean; override;
    class function CanEditOuterDataSet: Boolean; override;
  end;

implementation

uses
  fExceptEvent, fExceptEventTask, fExceptEventDamage, uClientUtils, uUserActivityConsts,
  Math, uDocUtils, dMain, StrUtils, fExceptEventsFilter, DateUtils, Clipbrd,
  fOrganisationTaskProposal, fOrgTaskProposalCodeEdit, fMain,
  fChooseExceptEvent, uClientDateTime, uTreeListUtils, AbmesDialogs;

resourcestring
  SStartMovingHint = 'Начало на преместване';
  SCancelMovingHint = 'Отказ на преместване';
  SCannotMoveNodeAsDescendantOfItself = 'Не можете да преместите избрания УОб като наследник на себе си!';
  SDuplicatedDamageLocalNo = 'Въведете номер на Верижно Поражение';
  SNewDamageLocalNo = 'No';
  SConfirmOverwriteOfOrgTaskProposals = 'Сред посочениете има Недопустими Отклонения, които вече са свързани с Проект.' + sLineBreak +
                                        'Желаете ли да създадете нова свързаност за тях?';
  SDeleteFromCauses = 'Премахване на избраните НО от Причини';
  SDeleteFromConsequences = 'Премахване на избраните НО от Следствия';

const
  DetailEditFormClasses: array[TDetailType] of TEditFormClass =
    (TfmExceptEventDamage, TfmExceptEventTask);

{$R *.dfm}

{ TfmExceptEvents }

class procedure TfmExceptEvents.ShowExceptEventsForGenerator(AEditMode: TEditMode;
  AExceptEventGenType: TExceptEventGenType; AGeneratorDataSet: TAbmesClientDataSet);
begin
  fmMain.ShowExceptEvents(AEditMode, AExceptEventGenType, AGeneratorDataSet);
end;

procedure TfmExceptEvents.SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
  AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
  AStartingDetailType: TDetailType; ABrowsingEditMode: TEditMode);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FStartingDetailType:= AStartingDetailType;
  FBrowsingEditMode:= ABrowsingEditMode;
end;

class function TfmExceptEvents.ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
  AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
  AStartingDetailType: TDetailType; ABrowsingEditMode: TEditMode): Boolean;
var
  f: TfmExceptEvents;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled, AStartingDetailType, ABrowsingEditMode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

class function TfmExceptEvents.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmExceptEvents.grdExceptEventDamagesGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (FMovedDamageCode > 0) and
     (grdExceptEventDamages.DataSource.DataSet.FieldByName('EXCEPT_EVENT_DAMAGE_CODE').AsInteger = FMovedDamageCode) and
     ( (ActiveControl <> grdExceptEventDamages) or
       (not (gdSelected in State))
     ) then
    AFont.Color:= clBlue
  else
    if (grdExceptEventDamages.DataSource.DataSet.FieldByName('SATISFIES_FILTER').AsInteger <> 1) then
      AFont.Color:= clGrayText;
end;

procedure TfmExceptEvents.cdsDetailAfterDelete(DataSet: TDataSet);
var
  SaveCursor: TCursor;
begin
  inherited;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    if (cdsDetail.ApplyUpdates(0) > 0) then
      Abort;

    RefreshDataSet(cdsDetail);
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmExceptEvents.cdsDetailAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  cdsExceptEventTasks.Open;

  if FSavedTasksParams.IsEqual(cdsExceptEventTasks.Params) and
     not IsBookmarkEmpty(FSavedExceptEventTasksBookmark) then
    cdsExceptEventTasks.Bookmark:= FSavedExceptEventTasksBookmark;

  // dolnoto e workaround na towa che w MasterDetailForm - FetchDetails - p.Assign(Params) ako
  // nqkoi param e Null to na nowiq slaga Unassigned, sled koeto p.IsEqual(Params) srawnqwa
  // Unassigned s Null i te sa razlichni zaradi koeto ne wryshta Bookmark-a na Detail-a
  with cdsDetail.Params do
    for i:= 0 to Count - 1 do
      if Items[i].IsNull then
        Items[i].Value:= Unassigned;

  grdExceptEventDamages.ConvertToTreeList('EXCEPT_EVENT_DAMAGE_CODE', 'PARENT_CODE');
end;

procedure TfmExceptEvents.cdsDetailBeforeClose(DataSet: TDataSet);
begin
  inherited;
  FSavedTasksParams.Assign(cdsExceptEventTasks.Params);

  if not cdsExceptEventTasks.IsEmpty then
    FSavedExceptEventTasksBookmark:= cdsExceptEventTasks.Bookmark
  else
    FSavedExceptEventTasksBookmark:= EmptyBookmark;

  cdsExceptEventTasks.Close;
end;

procedure TfmExceptEvents.cdsExceptEventTasksAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  // dolnoto e workaround na towa che p.Assign(Params) ako nqkoi param e Null to na nowiq slaga
  // Unassigned, sled koeto p.IsEqual(Params) srawnqwa Unassigned s Null i te sa razlichni
  with cdsExceptEventTasks.Params do
    for i:= 0 to Count - 1 do
      if Items[i].IsNull then
        Items[i].Value:= Unassigned;
end;

procedure TfmExceptEvents.cdsExceptEventTasksBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsExceptEventTasks.Params, pdsGridDataParams);

  cdsExceptEventTasks.Params.ParamByName('EXCEPT_EVENT_CODE').AsInteger:=
    cdsGridDataEXCEPT_EVENT_CODE.AsInteger;
end;

procedure TfmExceptEvents.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmExceptEventsFilter;
  EditFormClass:= TfmExceptEvent;

  RegisterDateFields(cdsGridData);
  RegisterDateFields(cdsDetail);
  RegisterDateFields(cdsExceptEventTasks);

  FSavedTasksParams:= TParams.Create;

  RegisterFieldsTextVisibility(
    IsSalePriceVisible,
    [ cdsGridDataEXCEPT_EVENT_TOTAL_PRICE,
      cdsGridData_SUM_DAMAGED_PRICE,
      cdsDetailDAMAGED_PRICE]);
end;

procedure TfmExceptEvents.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FSavedTasksParams);
  inherited;
end;

function TfmExceptEvents.ActiveDetailType: TDetailType;
begin
  case pcDetailViews.ActivePageIndex of
    0: Result:= dtExceptEventDamage;
    1: Result:= dtExceptEventTask;
  else
    raise Exception.Create('Unknown Except Event Detail Type');
  end;  { case }
end;

procedure TfmExceptEvents.DetailNavigatorExecuteAction(AButton: TNavigateBtn);
begin
  case AButton of
    nbInsert:
      if not DetailInplaceEdit then
        begin
          actInsertDetailRecord.Execute;
          Abort;
        end;

    nbEdit:
      if not DetailInplaceEdit then
        begin
          actEditDetailRecord.Execute;
          Abort;
        end;

    nbDelete:
      if RecordChangePending or not GetDelDetailRecordEnabled then
        Abort;
  end;  { case }
end;

procedure TfmExceptEvents.navExceptEventDamagesBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  DetailNavigatorExecuteAction(Button);
end;

procedure TfmExceptEvents.navExceptEventTasksBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  DetailNavigatorExecuteAction(Button);
end;

procedure TfmExceptEvents.grdExceptEventTasksDblClick(Sender: TObject);
begin
  inherited;
  if not actEditDetailRecord.Execute then
    actInsertDetailRecord.Execute;
end;

procedure TfmExceptEvents.grdExceptEventTasksDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

function TfmExceptEvents.GetDelRecordEnabled: Boolean;
begin
  Result:= False;
end;

function TfmExceptEvents.GetDelDetailRecordEnabled: Boolean;
begin
  case ActiveDetailType of

    dtExceptEventDamage:
      Result:= inherited GetDelDetailRecordEnabled;

    dtExceptEventTask:
      Result:= False;

  else
    raise Exception.Create('Unknown Except Event Detail Type');
  end;  { case }
end;

function TfmExceptEvents.GetEditDetailRecordEnabled: Boolean;
begin
  case ActiveDetailType of

    dtExceptEventDamage:
      Result:= inherited GetEditDetailRecordEnabled;

    dtExceptEventTask:
      Result:=
        Assigned(DetailEditFormClass) and
        not cdsExceptEventTasks.IsEmpty;

  else
    raise Exception.Create('Unknown Except Event Detail Type');
  end;  { case }
end;

function TfmExceptEvents.GetUserDetailEditActivity: Integer;
begin
  case ActiveDetailType of
    dtExceptEventDamage:
      Result:= uaExceptEventDamagesEdit;

    dtExceptEventTask:
      Result:= uaExceptEventTasksEdit;
  else
    raise Exception.Create('Unknown Except Event Detail Type');
  end;  { case }
end;

function TfmExceptEvents.ShowEditForm(AEditMode: TEditMode): Boolean;
var
  ExceptEventGenType: TExceptEventGenType;
begin
  Assert(
    (AEditMode <> emInsert) or
    not pdsGridDataParamsEXCEPT_EVENT_GEN_TYPE_CODE.IsNull
  );

  if (AEditMode = emInsert) then
    begin
      ExceptEventGenType:= IntToExceptEventGenType(pdsGridDataParamsEXCEPT_EVENT_GEN_TYPE_CODE.AsInteger);
      Result:= TfmExceptEvent.ShowFormForInsert(ExceptEventGenType, dmDocClient, cdsGridData);
    end
  else
    Result:= inherited ShowEditForm(AEditMode);
end;

function TfmExceptEvents.ShowDetailEditForm(AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin): Boolean;
var
  DetailEditMode: TEditMode;
  ExceptEventCode: Integer;
  ExceptEventDamageCode: Integer;
begin
  if LoginContext.HasUserActivity(GetUserDetailEditActivity) then
    DetailEditMode:= AEditMode
  else
    DetailEditMode:= emReadOnly;

  if (AEditMode <> emInsert) then
    ExceptEventCode:= 0
  else
    ExceptEventCode:= cdsGridDataEXCEPT_EVENT_CODE.AsInteger;

  if (AEditMode <> emInsert) then
    ExceptEventDamageCode:= 0
  else
    ExceptEventDamageCode:= cdsDetailEXCEPT_EVENT_DAMAGE_CODE.AsInteger;

  case ActiveDetailType of
    dtExceptEventDamage:
      Result:= TfmExceptEventDamage.ShowForm(dmDocClient, cdsDetail, DetailEditMode, ADefaultsOrigin, ExceptEventCode, ExceptEventDamageCode);
    dtExceptEventTask:
      Result:= TfmExceptEventTask.ShowForm(dmDocClient, cdsExceptEventTasks, DetailEditMode, ADefaultsOrigin, ExceptEventCode, cdsGridDataIS_SINGLE_RESOLVABLE.AsBoolean);
  else
    raise Exception.Create('Unknown Except Event Detail Type');
  end;  { case }
end;

class function TfmExceptEvents.CanUseDocs: Boolean;
begin
  Result:= True;
end;

function TfmExceptEvents.GetInsertDetailAction: TAction;
begin
  case ActiveDetailType of
    dtExceptEventDamage:
      Result:= actInsertRootOrChildDamage;
    dtExceptEventTask:
      Result:= actInsertDetailRecord;
  else
    raise Exception.Create('Unknown Except Event Detail Type');
  end;  { case }
end;

procedure TfmExceptEvents.actFormUpdate(Sender: TObject);
begin
  inherited;
  pnlDeleteDetail.Visible:= (ActiveDetailType = dtExceptEventDamage);
  DetailEditFormClass:= DetailEditFormClasses[ActiveDetailType];

  if (btnInsertDetail.Action <> GetInsertDetailAction) then
    btnInsertDetail.Action:= GetInsertDetailAction;

  pnlCauseExceptEventNo.Visible:=
    (pdsGridDataParamsEXCEPT_EVENT_IS_CAUSED.AsExceptEventPositionFilter = eepfYes) and
    not pdsGridDataParamsCAUSE_EXCEPT_EVENT_NO.IsNull;

  pnlConsequenceExceptEventNo.Visible:=
    (pdsGridDataParamsEXCEPT_EVENT_IS_CAUSE.AsExceptEventPositionFilter = eepfYes) and
    not pdsGridDataParamsCAUSED_EXCEPT_EVENT_NO.IsNull;

  UpdateColumnsVisibility(grdData, tlbActions);
end;

procedure TfmExceptEvents.cdsExceptEventTasksSTATE_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(Sender.AsInteger, Low(ExceptEventTaskStateNames), High(ExceptEventTaskStateNames)) then
    Text:= ExceptEventTaskStateNames[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmExceptEvents.cdsExceptEventTasksHAS_PROBLEMS_ENCOUNTEREDGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
const
  HasProblemsIdentifiers: array[Boolean] of Char = ('J', 'L');
begin
  inherited;
  if DisplayText and not Sender.IsNull then
    Text:= HasProblemsIdentifiers[cdsExceptEventTasksHAS_PROBLEMS_ENCOUNTERED.AsBoolean]
  else
    Text:= Sender.AsString;
end;

procedure TfmExceptEvents.grdExceptEventTasksGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  inherited;

  if cdsExceptEventTasksIS_ANNULED.AsBoolean or not cdsExceptEventTasksSATISFIES_FILTER.AsBoolean then
    AFont.Color:= clGrayText
  else
    if cdsExceptEventTasksHAS_PROBLEMS_ENCOUNTERED.AsBoolean then
      AFont.Color:= clRed;
end;

procedure TfmExceptEvents.Initialize;
const
  DetailPageIndexes: array[TDetailType] of Integer = (0, 1);
begin
  inherited;
  pcDetailViews.ActivePageIndex:= DetailPageIndexes[FStartingDetailType];

  if not pdsGridDataParams_EXCEPT_EVENT_GEN_TYPE_NAME.IsNull then
    Caption:= Caption + Format(' - %s', [pdsGridDataParams_EXCEPT_EVENT_GEN_TYPE_NAME.AsString]);
end;

procedure TfmExceptEvents.actExceptEventTaskDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsExceptEventTasksHAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsExceptEventTasks.IsEmpty;
end;

procedure TfmExceptEvents.actExceptEventTaskDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotExceptEventTask,
    cdsExceptEventTasks);
end;

procedure TfmExceptEvents.actExceptEventTaskDeptDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsExceptEventTasksDEPT_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsExceptEventTasks.IsEmpty;
end;

procedure TfmExceptEvents.actExceptEventTaskDeptDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotDept,
    cdsExceptEventTasksDEPT_DOC_BRANCH_CODE,
    cdsExceptEventTasksDEPT_DOC_CODE);
end;

procedure TfmExceptEvents.actExceptEventTaskEmployeeDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsExceptEventTasksEMPLOYEE_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsExceptEventTasks.IsEmpty;
end;

procedure TfmExceptEvents.actExceptEventTaskEmployeeDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotEmployee,
    cdsExceptEventTasksEMPLOYEE_DOC_BRANCH_CODE,
    cdsExceptEventTasksEMPLOYEE_DOC_CODE);
end;

procedure TfmExceptEvents.actInsertRootOrChildDamageUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= inherited GetInsertDetailRecordEnabled;
end;

procedure TfmExceptEvents.actInsertRootOrChildDamageExecute(Sender: TObject);
begin
  inherited;
  PopupMenuFromButton((Sender as TAction).ActionComponent as TControl, pmInsertExceptEventDamage);
end;

procedure TfmExceptEvents.actInsertRootDamageUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    inherited GetInsertDetailRecordEnabled and
    cdsGridDataIS_ACTIVATED.AsBoolean and
    not cdsGridDataIS_CLOSED.AsBoolean;
end;

procedure TfmExceptEvents.actInsertDetailRecordExecute(Sender: TObject);
begin
  LoginContext.CheckUserActivity(GetUserDetailEditActivity);
  inherited;
end;

function TfmExceptEvents.GetInsertDetailRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertDetailRecordEnabled and
    cdsGridDataIS_ACTIVATED.AsBoolean and
    not cdsGridDataIS_CLOSED.AsBoolean and
    ( (ActiveDetailType <> dtExceptEventDamage) or
      not cdsDetail.IsEmpty
    );
end;

function TfmExceptEvents.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertRecordEnabled and
    not pdsGridDataParamsEXCEPT_EVENT_GEN_TYPE_CODE.IsNull;
end;

procedure TfmExceptEvents.actInsertRootDamageExecute(Sender: TObject);
var
  IsRecordInserted: Boolean;
begin
  inherited;

  if RecordChangePending then
    Abort;

  LoginContext.CheckUserActivity(GetUserDetailEditActivity);

  IsRecordInserted:=
    TfmExceptEventDamage.ShowForm(
      dmDocClient,
      cdsDetail,
      emInsert,
      GetDetailDefaultsOrigin,
      cdsGridDataEXCEPT_EVENT_CODE.AsInteger,
      0);

  if IsRecordInserted and not DetailEditFormClass.CanEditOuterDataset then
    RefreshGridData;
end;

procedure TfmExceptEvents.cdsDetailSTATE_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(Sender.AsInteger, Low(TExceptEventDamageStates), High(TExceptEventDamageStates)) then
    Text:= ExceptEventDamageStateNames[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmExceptEvents.cdsDetailPLAN_BEGIN_DATEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= ''
  else
    Text:= dmMain.GetDateIntervalAsShortString(Sender.AsDateTime, Sender.DataSet.FieldByName('PLAN_END_DATE').AsDateTime);
end;

procedure TfmExceptEvents.actExceptEventDamageProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsDetailPRODUCT_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmExceptEvents.actExceptEventDeptDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotDept,
    cdsGridDataDEPT_DOC_BRANCH_CODE,
    cdsGridDataDEPT_DOC_CODE);
end;

procedure TfmExceptEvents.actExceptEventDeptDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataDEPT_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmExceptEvents.actAttachExceptEventsAsCauseExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaExceptEventsEdit);
  dmMain.SvrExceptEvents.AttachExceptEventCauses(InputExceptEventCode(False), GetSelectedExceptEvents);
  RefreshDataSet(cdsGridData);
end;

procedure TfmExceptEvents.actAttachExceptEventsAsCauseUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (grdData.SelectedRows.Count > 0) and
    cdsGridData.Active and
    not cdsGridData.IsEmpty and
    ( (FBrowsingEditMode <> emReadOnly) or
      (EditMode <> emReadOnly)
    );
end;

function TfmExceptEvents.InputExceptEventCode(AIsChoosingCause: Boolean): Integer;
begin
  Result:= TfmChooseExceptEvent.ShowForm(nil, nil, emEdit, doNone, AIsChoosingCause);

  if (Result = 0) then
    Abort;
end;

procedure TfmExceptEvents.actAttachExceptEventsAsConsequenceExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaExceptEventsEdit);
  dmMain.SvrExceptEvents.AttachExceptEventConsequences(InputExceptEventCode(True), GetSelectedExceptEvents);
  RefreshDataSet(cdsGridData);
end;

procedure TfmExceptEvents.actAttachExceptEventsAsConsequenceUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (grdData.SelectedRows.Count > 0) and
    cdsGridData.Active and
    not cdsGridData.IsEmpty and
    ( (FBrowsingEditMode <> emReadOnly) or
      (EditMode <> emReadOnly)
    );
end;

procedure TfmExceptEvents.actCopyProductNoToClipboardExecute(Sender: TObject);
begin
  inherited;
  Clipboard.AsText:= cdsGridDataPRODUCT_NO.AsString;
end;

procedure TfmExceptEvents.actCopyProductNoToClipboardUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsGridData.IsEmpty;
end;

function TfmExceptEvents.GetSelectedExceptEvents: OleVariant;
begin
  Result:= GetSelectedIntegers(grdData, 'EXCEPT_EVENT_CODE');
end;

procedure TfmExceptEvents.actDetachExceptEventsExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaExceptEventsEdit);

  if (pdsGridDataParamsEXCEPT_EVENT_IS_CAUSE.AsExceptEventPositionFilter = eepfYes) then
    dmMain.SvrExceptEvents.DetachExceptEventCauses(
      dmMain.SvrExceptEvents.GetExceptEventCodeByNo(pdsGridDataParamsCAUSED_EXCEPT_EVENT_NO.AsInteger),
      GetSelectedExceptEvents)
  else
    dmMain.SvrExceptEvents.DetachExceptEventConsequences(
      dmMain.SvrExceptEvents.GetExceptEventCodeByNo(pdsGridDataParamsCAUSE_EXCEPT_EVENT_NO.AsInteger),
      GetSelectedExceptEvents);

  RefreshDataSet(cdsGridData);
end;

procedure TfmExceptEvents.actDetachExceptEventsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (grdData.SelectedRows.Count > 0) and
    cdsGridData.Active and
    not cdsGridData.IsEmpty and
    ( ( (pdsGridDataParamsEXCEPT_EVENT_IS_CAUSED.AsExceptEventPositionFilter = eepfYes) and
        (pdsGridDataParamsEXCEPT_EVENT_IS_CAUSE.AsExceptEventPositionFilter <> eepfYes) and
        not pdsGridDataParamsCAUSE_EXCEPT_EVENT_NO.IsNull
      ) or
      ( (pdsGridDataParamsEXCEPT_EVENT_IS_CAUSE.AsExceptEventPositionFilter = eepfYes) and
        (pdsGridDataParamsEXCEPT_EVENT_IS_CAUSED.AsExceptEventPositionFilter <> eepfYes) and
        not pdsGridDataParamsCAUSED_EXCEPT_EVENT_NO.IsNull
      )
    ) and
    ( (FBrowsingEditMode <> emReadOnly) or
      (EditMode <> emReadOnly)
    );

  if ( (pdsGridDataParamsEXCEPT_EVENT_IS_CAUSE.AsExceptEventPositionFilter = eepfYes) and
       (pdsGridDataParamsEXCEPT_EVENT_IS_CAUSED.AsExceptEventPositionFilter <> eepfYes) and
       not pdsGridDataParamsCAUSED_EXCEPT_EVENT_NO.IsNull
     ) then
    begin
      (Sender as TAction).Hint:= SDeleteFromCauses;
    end
  else
    if (pdsGridDataParamsEXCEPT_EVENT_IS_CAUSED.AsExceptEventPositionFilter = eepfYes) and
       (pdsGridDataParamsEXCEPT_EVENT_IS_CAUSE.AsExceptEventPositionFilter <> eepfYes) and
       not pdsGridDataParamsCAUSE_EXCEPT_EVENT_NO.IsNull then
      begin
        (Sender as TAction).Hint:= SDeleteFromConsequences;
      end
    else
      (Sender as TAction).Hint:= '';
end;

procedure TfmExceptEvents.actExceptEventDamageProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsDetailPRODUCT_DOC_BRANCH_CODE,
    cdsDetailPRODUCT_DOC_CODE);
end;

procedure TfmExceptEvents.cdsGridDataSTATE_CODEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText and
     InRange(Sender.AsInteger, Low(ExceptEventStateNames), High(ExceptEventStateNames)) then
    Text:= ExceptEventStateNames[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmExceptEvents.cdsOrgTaskProposalCodeORG_TASK_PROPOSAL_CODEChange(Sender: TField);
var
  CurrentDateTime: TDateTime;
begin
  inherited;
  if Sender.IsNull then
    ClearFieldsIfAssigned([
      cdsOrgTaskProposalCodeOTP_BIND_EMPLOYEE_CODE,
      cdsOrgTaskProposalCodeOTP_BIND_DATE,
      cdsOrgTaskProposalCodeOTP_BIND_TIME])
  else
    begin
      CurrentDateTime:= ContextNow;
      cdsOrgTaskProposalCodeOTP_BIND_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
      cdsOrgTaskProposalCodeOTP_BIND_DATE.AsDateTime:= DateOf(CurrentDateTime);
      cdsOrgTaskProposalCodeOTP_BIND_TIME.AsDateTime:= TimeOf(CurrentDateTime);
    end;
end;

procedure TfmExceptEvents.grdDataGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  CreateDateTime: TDateTime;
begin
  inherited;
  if ( (Column.Field = cdsGridDataDMG_RESOLVE_DATE) or
       (Column.Field = cdsGridDataRESOLVE_DATE)
     ) and
     Column.Field.IsNull then
    begin
      Background:= ExceptEventsWarningColor;
    end;  { if }

  CreateDateTime:= cdsGridDataCREATE_DATE.AsDateTime + cdsGridDataCREATE_TIME.AsDateTime;

  if (Column.Field = cdsGridDataEXCEPT_EVENT_LEVEL_ABBREV) and
     (not cdsGridDataEXCEPT_EVENT_LEVEL_CODE.IsNull) and
     (IntToExceptEventLevel(cdsGridDataEXCEPT_EVENT_LEVEL_CODE.AsInteger) = eelMinimal) and
     (HoursBetween(ContextNow, CreateDateTime) >= LoginContext.MinimalExceptEventHours) then
    begin
      BackGround:= ExceptEventsWarningColor;
    end;  { if }
end;

procedure TfmExceptEvents.actExceptEventDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataHAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmExceptEvents.actExceptEventDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotExceptEvent,
    cdsGridData);
end;

procedure TfmExceptEvents.actExceptEventProductDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataPRODUCT_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmExceptEvents.actExceptEventRelationsExecute(Sender: TObject);
begin
  inherited;
//  TfmExceptEventRelations.ShowForm(dmDocClient, cdsGridData, EditMode, doNone, False);
end;

procedure TfmExceptEvents.actExceptEventRelationsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmExceptEvents.actExceptEventProductDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsGridDataPRODUCT_DOC_BRANCH_CODE,
    cdsGridDataPRODUCT_DOC_CODE);
end;

procedure TfmExceptEvents.actStartMovingUpdate(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:=
        Checked or
        ( (EditMode = emEdit) and
          cdsDetail.Active and
          (not cdsDetail.IsEmpty)
        );

      ImageIndex:= 121 + Ord(Checked);
      Hint:= IfThen(Checked, SCancelMovingHint, SStartMovingHint);
    end;  { with }
end;

procedure TfmExceptEvents.actSetOrgTaskProposalExecute(Sender: TObject);
var
  OverwriteOrgTaskProposals: Boolean;
  b: TBookmark;
  i: Integer;
  ExistsSelectedExceptEventWithOTP: Boolean;
begin
  inherited;
  Assert(cdsGridData.ChangeCount = 0);

  LoginContext.CheckUserActivity(uaExceptEventsEditOTP);

  cdsOrgTaskProposalCode.CreateDataSet;
  try
    if not TfmOrgTaskProposalCodeEdit.ShowForm(dmDocClient, cdsOrgTaskProposalCode, emInsert) then
      Abort;

    cdsGridData.DisableControls;
    try
      b:= cdsGridData.Bookmark;
      try
        ExistsSelectedExceptEventWithOTP:= False;
        for i:= 0 to grdData.SelectedRows.Count - 1 do
          begin
            cdsGridData.Bookmark:= grdData.SelectedRows[i];
            if not cdsGridDataORG_TASK_PROPOSAL_CODE.IsNull then
              begin
                ExistsSelectedExceptEventWithOTP:= True;
                Break;
              end;  { if }
          end;  { for }

        OverwriteOrgTaskProposals:= False;
        if ExistsSelectedExceptEventWithOTP then
          case MessageDlgEx(SConfirmOverwriteOfOrgTaskProposals, mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
            mrYes: OverwriteOrgTaskProposals:= True;
            mrNo: OverwriteOrgTaskProposals:= False;
            mrCancel: Abort;
          else
            raise Exception.Create('Unknown modal result');
          end;  { case }

        for i:= 0 to grdData.SelectedRows.Count - 1 do
          begin
            cdsGridData.Bookmark:= grdData.SelectedRows[i];
            if OverwriteOrgTaskProposals or cdsGridDataORG_TASK_PROPOSAL_CODE.IsNull then
              begin
                cdsGridData.Edit;
                try
                  cdsGridDataORG_TASK_PROPOSAL_CODE.Assign(cdsOrgTaskProposalCodeORG_TASK_PROPOSAL_CODE);
                  cdsGridDataOTP_BIND_EMPLOYEE_CODE.Assign(cdsOrgTaskProposalCodeOTP_BIND_EMPLOYEE_CODE);
                  cdsGridDataOTP_BIND_DATE.Assign(cdsOrgTaskProposalCodeOTP_BIND_DATE);
                  cdsGridDataOTP_BIND_TIME.Assign(cdsOrgTaskProposalCodeOTP_BIND_TIME);
                  cdsGridData.Post;
                except
                  cdsGridData.Cancel;
                  raise;
                end;  { try }
              end;  { if }
          end;  { for }
      finally
        cdsGridData.Bookmark:= b;
      end;  { try }
    finally
      cdsGridData.EnableControls;
    end;  { try }
  finally
    cdsOrgTaskProposalCode.Close;
  end;  { try }

  DoApplyUpdates;
  RefreshDataSet(cdsGridData);
end;

procedure TfmExceptEvents.actSetOrgTaskProposalUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    (grdData.SelectedRows.Count > 0) and
    cdsGridData.Active and
    not cdsGridData.IsEmpty;
end;

procedure TfmExceptEvents.actShowCausedExceptEventsExecute(Sender: TObject);
var
  bem: TEditMode;
begin
  inherited;
  cdsExceptEventsParams.CreateDataSet;
  try
    cdsExceptEventsParams.Append;
    try
      cdsExceptEventsParamsMAX_STATE_CODE.AsInteger:= High(TExceptEventStates);
      cdsExceptEventsParamsEXCEPT_EVENT_IS_CAUSE.AsExceptEventPositionFilter:= eepfAll;
      cdsExceptEventsParamsEXCEPT_EVENT_IS_CAUSED.AsExceptEventPositionFilter:= eepfYes;
      cdsExceptEventsParamsCAUSE_EXCEPT_EVENT_NO.AsInteger:= cdsGridDataEXCEPT_EVENT_NO.AsInteger;
      cdsExceptEventsParams.Post;
    except
      cdsExceptEventsParams.Cancel;
      raise;
    end;  { try }

    if (EditMode = emEdit) or (FBrowsingEditMode = emEdit) then
      bem:= emEdit
    else
      bem:= emReadOnly;

    TfmExceptEvents.ShowForm(nil, cdsExceptEventsParams, emReadOnly, doNone, False, FStartingDetailType, bem);
    RefreshDataSet(cdsGridData);
  finally
    cdsExceptEventsParams.Close;
  end;  { try }
end;

procedure TfmExceptEvents.actShowCausedExceptEventsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsGridData.IsEmpty and
    cdsGridDataHAS_CONSEQUENCES.AsBoolean;
end;

procedure TfmExceptEvents.actShowCauseExceptEventExecute(Sender: TObject);
begin
  inherited;
  ShowExceptEvent(pdsGridDataParamsCAUSE_EXCEPT_EVENT_NO);
end;

procedure TfmExceptEvents.actShowCauseExceptEventsExecute(Sender: TObject);
var
  bem: TEditMode;
begin
  inherited;
  cdsExceptEventsParams.CreateDataSet;
  try
    cdsExceptEventsParams.Append;
    try
      cdsExceptEventsParamsMAX_STATE_CODE.AsInteger:= High(TExceptEventStates);
      cdsExceptEventsParamsEXCEPT_EVENT_IS_CAUSED.AsExceptEventPositionFilter:= eepfAll;
      cdsExceptEventsParamsEXCEPT_EVENT_IS_CAUSE.AsExceptEventPositionFilter:= eepfYes;
      cdsExceptEventsParamsCAUSED_EXCEPT_EVENT_NO.AsInteger:= cdsGridDataEXCEPT_EVENT_NO.AsInteger;
      cdsExceptEventsParams.Post;
    except
      cdsExceptEventsParams.Cancel;
      raise;
    end;  { try }

    if (EditMode = emEdit) or (FBrowsingEditMode = emEdit) then
      bem:= emEdit
    else
      bem:= emReadOnly;

    TfmExceptEvents.ShowForm(nil, cdsExceptEventsParams, emReadOnly, doNone, False, FStartingDetailType, bem);
    RefreshDataSet(cdsGridData);
  finally
    cdsExceptEventsParams.Close;
  end;  { try }
end;

procedure TfmExceptEvents.actShowCauseExceptEventsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsGridData.IsEmpty and
    cdsGridDataHAS_CAUSES.AsBoolean;
end;

procedure TfmExceptEvents.actShowCauseExceptEventUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (pdsGridDataParamsEXCEPT_EVENT_IS_CAUSED.AsExceptEventPositionFilter = eepfYes) and
    not pdsGridDataParamsCAUSE_EXCEPT_EVENT_NO.IsNull;
end;

procedure TfmExceptEvents.ShowExceptEvent(AExceptEventNoField: TAbmesFloatField);
begin
  cdsShowExceptEventParam.CreateDataSet;
  try
    cdsShowExceptEventParam.Append;
    try
      cdsShowExceptEventParamEXCEPT_EVENT_CODE.AsInteger:=
        dmMain.SvrExceptEvents.GetExceptEventCodeByNo(AExceptEventNoField.AsInteger);

      cdsShowExceptEventParam.Post;
    except
      cdsShowExceptEventParam.Cancel;
      raise;
    end;  { try }

    TfmExceptEvent.ShowForm(dmDocClient, cdsShowExceptEventParam, emReadOnly);
  finally
    cdsShowExceptEventParam.Close;
  end;  { try }
end;

procedure TfmExceptEvents.actShowConsequenceExceptEventExecute(Sender: TObject);
begin
  inherited;
  ShowExceptEvent(pdsGridDataParamsCAUSED_EXCEPT_EVENT_NO);
end;

procedure TfmExceptEvents.actShowConsequenceExceptEventUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (pdsGridDataParamsEXCEPT_EVENT_IS_CAUSE.AsExceptEventPositionFilter = eepfYes) and
    not pdsGridDataParamsCAUSED_EXCEPT_EVENT_NO.IsNull;
end;

procedure TfmExceptEvents.actShowOrgTaskProposalExecute(Sender: TObject);
begin
  inherited;
  TfmOrganisationTaskProposal.ShowForm(dmDocClient, cdsGridData, emReadOnly);
end;

procedure TfmExceptEvents.actShowOrgTaskProposalUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsGridData.IsEmpty and
    not cdsGridDataORG_TASK_PROPOSAL_CODE.IsNull;
end;

procedure TfmExceptEvents.actStartMovingExecute(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      Checked:= not Checked;

      if Checked then
        begin
          FMovedDamageCode:= cdsDetailEXCEPT_EVENT_DAMAGE_CODE.AsInteger;
          FMovedDamageExceptEventCode:= cdsDetailEXCEPT_EVENT_CODE.AsInteger; 
          FMovedDamageParentCode:= cdsDetailPARENT_CODE.AsInteger;
          FMovedDamageLocalNo:= cdsDetailLOCAL_NO.AsInteger;
        end
      else
        begin
          FMovedDamageCode:= 0;
          FMovedDamageExceptEventCode:= 0;
          FMovedDamageParentCode:= 0;
          FMovedDamageLocalNo:= 0;
        end;
    end;  { with }
end;

procedure TfmExceptEvents.actFinishMovingUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    (FMovedDamageCode > 0) and
    (not cdsDetail.IsEmpty);
end;

procedure TfmExceptEvents.actFinishMovingExecute(Sender: TObject);
begin
  inherited;

  Assert(not cdsDetail.IsEmpty);

  if dmMain.SvrExceptEvents.IsDamageDescendantOf(cdsDetailEXCEPT_EVENT_DAMAGE_CODE.AsInteger, FMovedDamageCode) then
    raise Exception.Create(SCannotMoveNodeAsDescendantOfItself);

  MoveDamage(FMovedDamageCode, cdsDetailEXCEPT_EVENT_DAMAGE_CODE.AsInteger, cdsDetailEXCEPT_EVENT_CODE.AsInteger);
  actStartMoving.Execute;
end;

procedure TfmExceptEvents.actMakeRootUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode = emEdit) and
    (FMovedDamageCode > 0) and
    ( (FMovedDamageParentCode > 0) or
      (FMovedDamageExceptEventCode <> cdsGridDataEXCEPT_EVENT_CODE.AsInteger)
    );
end;

procedure TfmExceptEvents.actOrgTaskProposalDocExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotOrgTaskProposal,
    cdsGridDataOTP_DOC_BRANCH_CODE,
    cdsGridDataOTP_DOC_CODE);
end;

procedure TfmExceptEvents.actOrgTaskProposalDocUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).ImageIndex:= Ord(cdsGridDataOTP_HAS_DOC_ITEMS.AsBoolean);
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmExceptEvents.actPrintActiveGridExecute(Sender: TObject);
begin
  Utils.IfThen(ActiveControl = grdData, grdData.TempDisableOption(dgMultiSelect))/
    procedure begin
      inherited;
    end;
end;

procedure TfmExceptEvents.actMakeRootExecute(Sender: TObject);
begin
  inherited;
  MoveDamage(FMovedDamageCode, 0, cdsGridDataEXCEPT_EVENT_CODE.AsInteger);
  actStartMoving.Execute;
end;

procedure TfmExceptEvents.MoveDamage(ADamageCode, AParentDamageCode, AExceptEventCode: Integer);
var
  LocalNo: Integer;
  LocalNoAsString: string;
begin
  LocalNoAsString:= IntToStr(FMovedDamageLocalNo);
  if not InputQuery(SDuplicatedDamageLocalNo, SNewDamageLocalNo, LocalNoAsString) then
    Abort;

  LocalNo:= StrToInt(LocalNoAsString);
  dmMain.SvrExceptEvents.MoveDamage(ADamageCode, AParentDamageCode, AExceptEventCode, LocalNo);
  RefreshGridData;
end;

procedure TfmExceptEvents.OpenDataSets;
begin
  cdsExceptEventGenTypes.Open;
  cdsExceptEventLevels.Open;
  cdsExceptEventDamageProcessTypes.Open;
  cdsBranches.Open;
  cdsSaleTypes.Open;
  inherited;
end;

procedure TfmExceptEvents.CloseDataSets;
begin
  inherited;
  cdsSaleTypes.Close;
  cdsBranches.Close;
  cdsExceptEventDamageProcessTypes.Close;
  cdsExceptEventLevels.Close;
  cdsExceptEventGenTypes.Close;
end;

procedure TfmExceptEvents.cdsDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsDetail.Params, pdsGridDataParams);
end;

procedure TfmExceptEvents.grdExceptEventDamagesDblClick(Sender: TObject);
begin
  inherited;
  if not actEditDetailRecord.Execute then
    actInsertDetailRecord.Execute;
end;

procedure TfmExceptEvents.grdExceptEventDamagesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;

  with Column.Field.DataSet do
    if BOF and EOF then
      Exit;

  if (Column.FieldName = 'FULL_NO') then
    DrawTreeImageColumnCell(grdExceptEventDamages, ilExceptEventDamages, GetImageIndex, Rect, Column);
end;

function TfmExceptEvents.GetImageIndex: Integer;
begin
  inherited;
  Result:= Ord(not VarIsNull(grdExceptEventDamages.DataSource.DataSet.FieldByName('PARENT_CODE').AsInteger));

  if (FMovedDamageCode > 0) and
     (grdExceptEventDamages.DataSource.DataSet.FieldByName('EXCEPT_EVENT_DAMAGE_CODE').AsInteger = FMovedDamageCode) then
    Inc(Result, 2);
end;

function TfmExceptEvents.GetFilterFormEnabled: Boolean;
begin
  Result:= inherited GetFilterFormEnabled or Visible;
end;

end.
