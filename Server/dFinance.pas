unit dFinance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  dDBPooledDataModule, dPooledDataModule, DB,
  AbmesSQLQuery, Provider, AbmesFields, DBClient, JvStringHolder,
  AbmesClientDataSet, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  DBXDevartOracle, uSmartLock;

type
  TdmFinance = class(TDBPooledDataModule)
    prvFinOrder: TDataSetProvider;
    qryFinOrder: TAbmesSQLQuery;
    dsFinOrder: TDataSource;
    qryRealFinModelLines: TAbmesSQLQuery;
    qryFinOrderFIN_ORDER_CODE: TAbmesFloatField;
    qryFinOrderFIN_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryFinOrderFIN_ORDER_NO: TAbmesFloatField;
    qryFinOrderEXEC_DEPT_CODE: TAbmesFloatField;
    qryFinOrderEXEC_DEPT_NAME: TAbmesWideStringField;
    qryFinOrderEXEC_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryFinOrderPRIORITY_CODE: TAbmesFloatField;
    qryFinOrderFIN_PROCESS_CODE: TAbmesFloatField;
    qryFinOrderBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryFinOrderBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryFinOrderPARTNER_CODE: TAbmesFloatField;
    qryFinOrderIN_OUT: TAbmesFloatField;
    qryFinOrderBASE_DATE: TAbmesSQLTimeStampField;
    qryFinOrderBASE_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    qryFinOrderBASE_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField;
    qryFinOrderBASE_FINANCIAL_PRODUCT_NO: TAbmesFloatField;
    qryFinOrderBASE_MEASURE_ABBREV: TAbmesWideStringField;
    qryFinOrderBASE_QUANTITY: TAbmesFloatField;
    qryFinOrderWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    qryFinOrderWORK_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField;
    qryFinOrderWORK_FINANCIAL_PRODUCT_NO: TAbmesFloatField;
    qryFinOrderWORK_MEASURE_ABBREV: TAbmesWideStringField;
    qryFinOrderFIN_CLASS_CODE: TAbmesFloatField;
    qryFinOrderDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    qryFinOrderDOCUMENT_DATE: TAbmesSQLTimeStampField;
    qryFinOrderNOTES: TAbmesWideStringField;
    qryFinOrderDOC_BRANCH_CODE: TAbmesFloatField;
    qryFinOrderDOC_CODE: TAbmesFloatField;
    qryFinOrderHAS_DOC_ITEMS: TAbmesFloatField;
    qryFinOrderCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryFinOrderCREATE_DATE: TAbmesSQLTimeStampField;
    qryFinOrderCREATE_TIME: TAbmesSQLTimeStampField;
    qryFinOrderCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryFinOrderCHANGE_DATE: TAbmesSQLTimeStampField;
    qryFinOrderCHANGE_TIME: TAbmesSQLTimeStampField;
    qryFinOrderPLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryFinOrderBEGIN_DATE_DIFF: TAbmesFloatField;
    qryFinOrderSPEC_MODEL_DURATION_DAYS: TAbmesFloatField;
    qryFinOrderREAL_MODEL_DURATION_DAYS: TAbmesFloatField;
    qryFinOrderMAX_POSITIVE_DIFF: TAbmesFloatField;
    qryFinOrderMAX_NEGATIVE_DIFF: TAbmesFloatField;
    qryFinOrderPLAN_IN_WORK_QUANTITY: TAbmesFloatField;
    qryFinOrderIN_WORK_QUANTITY_DIFF: TAbmesFloatField;
    qryFinOrderPLAN_OUT_WORK_QUANTITY: TAbmesFloatField;
    qryFinOrderOUT_WORK_QUANTITY_DIFF: TAbmesFloatField;
    qryFinOrderPLAN_END_DATE: TAbmesSQLTimeStampField;
    qryFinOrderIN_END_DATE_DIFF: TAbmesFloatField;
    qryFinOrderOUT_END_DATE_DIFF: TAbmesFloatField;
    qryFinOrderSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryFinOrderSALE_OBJECT_CODE: TAbmesFloatField;
    qryFinOrderDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryFinOrderDCD_OBJECT_CODE: TAbmesFloatField;
    qryFinOrderDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qryFinOrderBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryFinOrderBND_PO_PRODUCT_CODE: TAbmesFloatField;
    qryFinOrderBND_PO_WORK_QUANTITY: TAbmesFloatField;
    qryFinOrderBND_PO_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryFinOrderBND_PO_WORK_MEASURE_ABBREV: TAbmesWideStringField;
    qryFinOrderBND_PO_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryFinOrderSS_STATE_CODE: TAbmesFloatField;
    qryFinOrderDC_STATUS_CODE: TAbmesFloatField;
    qryFinOrderSG_STATUS_CODE: TAbmesFloatField;
    qryNewFinOrderCode: TAbmesSQLQuery;
    qryNewFinOrderCodeNEW_FIN_ORDER_CODE: TAbmesFloatField;
    qryFinOrderCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryFinOrderCLOSE_DATE: TAbmesSQLTimeStampField;
    qryFinOrderCLOSE_TIME: TAbmesSQLTimeStampField;
    qryFinOrderANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryFinOrderANNUL_DATE: TAbmesSQLTimeStampField;
    qryFinOrderANNUL_TIME: TAbmesSQLTimeStampField;
    qryFixRealFinModelLineNos: TAbmesSQLQuery;
    qryRealFinModelLinesRFML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryRealFinModelLinesRFML_OBJECT_CODE: TAbmesFloatField;
    qryRealFinModelLinesFIN_ORDER_CODE: TAbmesFloatField;
    qryRealFinModelLinesPARTNER_CODE: TAbmesFloatField;
    qryRealFinModelLinesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    qryRealFinModelLinesFIN_MODEL_LINE_NO: TAbmesFloatField;
    qryRealFinModelLinesLINE_QUANTITY_PERCENT: TAbmesFloatField;
    qryRealFinModelLinesMOVEMENT_OFFSET_DAYS: TAbmesFloatField;
    qryRealFinModelLinesABS_MOVEMENT_OFFSET_DAYS: TAbmesFloatField;
    qryRealFinModelLinesMOVEMENT_OFFSET_DAYS_SIGN: TAbmesFloatField;
    qryRealFinModelLinesMOVEMENT_DURATION_DAYS: TAbmesFloatField;
    qryRealFinModelLinesIN_OUT: TAbmesFloatField;
    qryRealFinModelLinesFIN_STORE_CODE: TAbmesFloatField;
    qryRealFinModelLinesFIN_STORE_IDENTIFIER: TAbmesWideStringField;
    qryRealFinModelLinesPARTNER_ACCOUNT_CODE: TAbmesFloatField;
    qryRealFinModelLinesFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField;
    qryRealFinModelLinesANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryRealFinModelLinesANNUL_DATE: TAbmesSQLTimeStampField;
    qryRealFinModelLinesANNUL_TIME: TAbmesSQLTimeStampField;
    qryRealFinModelLinesPRIMARY_LINE_QTY_PERCENT: TAbmesFloatField;
    qryFinClasses: TAbmesSQLQuery;
    qryFinClassesFIN_CLASS_CODE: TAbmesFloatField;
    qryFinClassesPARENT_FIN_CLASS_CODE: TAbmesFloatField;
    qryFinClassesFIN_CLASS_LOCAL_NO: TAbmesFloatField;
    qryFinClassesFIN_CLASS_FULL_NO: TAbmesWideStringField;
    qryFinClassesFIN_CLASS_FMT_FULL_NO: TAbmesWideStringField;
    qryFinClassesNAME: TAbmesWideStringField;
    qryFinClassesSHORT_NAME: TAbmesWideStringField;
    qryFinClassesIS_GROUP: TAbmesFloatField;
    qryFinClassesDOC_BRANCH_CODE: TAbmesFloatField;
    qryFinClassesDOC_CODE: TAbmesFloatField;
    qryFinClassesHAS_DOC_ITEMS: TAbmesFloatField;
    prvFinClasses: TDataSetProvider;
    qryFinClassesPrintTree: TAbmesSQLQuery;
    qryFinClassesPrintTreeNODE_ID: TAbmesFloatField;
    qryFinClassesPrintTreePARENT_NODE_ID: TAbmesFloatField;
    qryFinClassesPrintTreeNODE_NAME: TAbmesWideStringField;
    qryFinClassesPrintTreeFORMATED_NODE_NO: TAbmesWideStringField;
    qryFinClassesPrintTreeNODE_LEVEL: TAbmesFloatField;
    qryFinClassesPrintTreeNODE_CHILD_COUNT: TAbmesFloatField;
    qryFinClassesPrintTreeNODE_TYPE: TAbmesFloatField;
    qryFinClassesPrintTreeIS_LAST_CHILD: TAbmesFloatField;
    qryFinClassesPrintTreeHAS_CHILDREN: TAbmesFloatField;
    prvFinClassesPrintTree: TDataSetProvider;
    qryFinClass: TAbmesSQLQuery;
    prvFinClass: TDataSetProvider;
    qryFinClassFIN_CLASS_CODE: TAbmesFloatField;
    qryFinClassPARENT_FIN_CLASS_CODE: TAbmesFloatField;
    qryFinClassFIN_CLASS_LOCAL_NO: TAbmesFloatField;
    qryFinClassNAME: TAbmesWideStringField;
    qryFinClassSHORT_NAME: TAbmesWideStringField;
    qryFinClassIS_GROUP: TAbmesFloatField;
    qryFinClassDOC_BRANCH_CODE: TAbmesFloatField;
    qryFinClassDOC_CODE: TAbmesFloatField;
    qryFinClassHAS_DOC_ITEMS: TAbmesFloatField;
    qryFinClassPARENT_FULL_NO: TAbmesWideStringField;
    qryGetNewFinClassLocalNo: TAbmesSQLQuery;
    qryGetNewFinClassLocalNoNEW_FIN_CLASS_LOCAL_NO: TAbmesFloatField;
    qryGetNewFinClassCode: TAbmesSQLQuery;
    qryGetNewFinClassCodeNEW_FIN_CLASS_CODE: TAbmesFloatField;
    qryGetFinClassCodeByFullNo: TAbmesSQLQuery;
    qryGetFinClassIsInstance: TAbmesSQLQuery;
    qryGetFinClassCodeByFullNoFIN_CLASS_CODE: TAbmesFloatField;
    qryGetFinClassIsInstanceIS_INSTANCE: TAbmesFloatField;
    qryFinModelLineReasons: TAbmesSQLQuery;
    qryFinModelLineReasonsFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField;
    qryFinModelLineReasonsFIN_MODEL_LINE_REASON_NO: TAbmesFloatField;
    qryFinModelLineReasonsFIN_MODEL_LINE_REASON_NAME: TAbmesWideStringField;
    qryFinModelLineReasonsFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField;
    prvFinModelLineReasons: TDataSetProvider;
    qryGetNewFinModelLineReasonCode: TAbmesSQLQuery;
    qryGetNewFinModelLineReasonCodeNEW_FIN_MODEL_LINE_REASON_CODE: TAbmesFloatField;
    prvFinModelLineTypes: TDataSetProvider;
    qryFinModelLineTypes: TAbmesSQLQuery;
    qryFinModelLineTypesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    qryFinModelLineTypesFIN_MODEL_LINE_TYPE_NO: TAbmesFloatField;
    qryFinModelLineTypesFIN_MODEL_LINE_TYPE_NAME: TAbmesWideStringField;
    qryFinModelLineTypesFIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField;
    prvFinProcesses: TDataSetProvider;
    qryFinProcesses: TAbmesSQLQuery;
    qryFinProcessesPROCESS_CODE: TAbmesFloatField;
    qryFinProcessesPROCESS_ABBREV: TAbmesWideStringField;
    qryFinProcessesPROCESS_NAME: TAbmesWideStringField;
    qryFinProcessesPROCESS_NO: TAbmesFloatField;
    qryFinProcessesIS_MANUALLY_USABLE: TAbmesFloatField;
    qryFinOrderREQUEST_BRANCH_CODE: TAbmesFloatField;
    qryFinOrderREQUEST_NO: TAbmesFloatField;
    qryMaxFinOrderNo: TAbmesSQLQuery;
    qryMaxFinOrderNoMAX_FIN_ORDER_NO: TAbmesFloatField;
    qryFinOrderACTIVATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryFinOrderACTIVATE_DATE: TAbmesSQLTimeStampField;
    qryFinOrderACTIVATE_TIME: TAbmesSQLTimeStampField;
    prvFinOrdersMaster: TDataSetProvider;
    qryFinOrdersMaster: TAbmesSQLQuery;
    prvFinOrdersDetail: TDataSetProvider;
    qryFinOrdersDetail: TAbmesSQLQuery;
    prvFinOrderBndObject: TDataSetProvider;
    qryFinOrderBndObject: TAbmesSQLQuery;
    qryFinOrderSALE_SHIPMENT_NO: TAbmesFloatField;
    qryFinOrderBndObjectFIN_ORDER_CODE: TAbmesFloatField;
    qryFinOrderBndObjectSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryFinOrderBndObjectSALE_OBJECT_CODE: TAbmesFloatField;
    qryFinOrderBndObjectSALE_SHIPMENT_NO: TAbmesFloatField;
    qryFinOrderBndObjectDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryFinOrderBndObjectDCD_OBJECT_CODE: TAbmesFloatField;
    qryFinOrderBndObjectDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qryFinOrderBndObjectREQUEST_BRANCH_CODE: TAbmesFloatField;
    qryFinOrderBndObjectREQUEST_NO: TAbmesFloatField;
    qryRealFinModelLinesREAL_QUANTITY: TAbmesFloatField;
    qryRealFinModelLinesLATE_REAL_QUANTITY: TAbmesFloatField;
    qryRealFinModelLinesLATE_REAL_DAYS: TAbmesFloatField;
    qryFinOrderFIN_ORDER_BRANCH_NO: TAbmesFloatField;
    qryRealFinModelLinesFIN_MODEL_LINE_TYPE_ABBREV: TAbmesWideStringField;
    qryRealFinModelLinesBASE_FINANCIAL_PRODUCT_FIXING: TAbmesFloatField;
    qryRealFinModelLinesWORK_FINANCIAL_PRODUCT_FIXING: TAbmesFloatField;
    qryRealFinModelLinesREAL_QUANTITY_BASE_CRNCY: TAbmesFloatField;
    qryRealFinModelLinesLATE_REAL_QUANTITY_BASE_CRNCY: TAbmesFloatField;
    qryFinOrdersMasterFIN_ORDER_CODE: TAbmesFloatField;
    qryFinOrdersMasterSTATUS_CODE: TAbmesFloatField;
    qryFinOrdersMasterFIN_PROCESS_ABBREV: TAbmesWideStringField;
    qryFinOrdersMasterFIN_ORDER_BRANCH_NO: TAbmesFloatField;
    qryFinOrdersMasterFIN_ORDER_NO: TAbmesFloatField;
    qryFinOrdersMasterFIN_ORDER_IDENTIFIER: TAbmesWideStringField;
    qryFinOrdersMasterPLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryFinOrdersMasterBEGIN_DATE_DIFF: TAbmesFloatField;
    qryFinOrdersMasterMODEL_DURATION_DAYS: TAbmesFloatField;
    qryFinOrdersMasterEXEC_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryFinOrdersMasterWORK_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField;
    qryFinOrdersMasterPLAN_IN_QTY: TAbmesFloatField;
    qryFinOrdersMasterPLAN_IN_QTY_BC: TAbmesFloatField;
    qryFinOrdersMasterREMAINING_IN_QTY: TAbmesFloatField;
    qryFinOrdersMasterREMAINING_IN_QTY_BC: TAbmesFloatField;
    qryFinOrdersMasterLATE_PLAN_IN_QTY: TAbmesFloatField;
    qryFinOrdersMasterLATE_PLAN_IN_QTY_BC: TAbmesFloatField;
    qryFinOrdersMasterLATE_PLAN_IN_QTY_PERCENT: TAbmesFloatField;
    qryFinOrdersMasterLATE_PLAN_IN_QTY_BC_PERCENT: TAbmesFloatField;
    qryFinOrdersMasterLATE_PLAN_IN_DAYS: TAbmesFloatField;
    qryFinOrdersMasterLATE_REAL_IN_QTY: TAbmesFloatField;
    qryFinOrdersMasterLATE_REAL_IN_QTY_BC: TAbmesFloatField;
    qryFinOrdersMasterLATE_REAL_IN_QTY_PERCENT: TAbmesFloatField;
    qryFinOrdersMasterLATE_REAL_IN_QTY_BC_PERCENT: TAbmesFloatField;
    qryFinOrdersMasterLATE_REAL_IN_DAYS: TAbmesFloatField;
    qryFinOrdersMasterPLAN_OUT_QTY: TAbmesFloatField;
    qryFinOrdersMasterPLAN_OUT_QTY_BC: TAbmesFloatField;
    qryFinOrdersMasterREMAINING_OUT_QTY: TAbmesFloatField;
    qryFinOrdersMasterREMAINING_OUT_QTY_BC: TAbmesFloatField;
    qryFinOrdersMasterLATE_PLAN_OUT_QTY: TAbmesFloatField;
    qryFinOrdersMasterLATE_PLAN_OUT_QTY_BC: TAbmesFloatField;
    qryFinOrdersMasterLATE_PLAN_OUT_QTY_PERCENT: TAbmesFloatField;
    qryFinOrdersMasterLATE_PLAN_OUT_QTY_BC_PERCENT: TAbmesFloatField;
    qryFinOrdersMasterLATE_PLAN_OUT_DAYS: TAbmesFloatField;
    qryFinOrdersMasterLATE_REAL_OUT_QTY: TAbmesFloatField;
    qryFinOrdersMasterLATE_REAL_OUT_QTY_BC: TAbmesFloatField;
    qryFinOrdersMasterLATE_REAL_OUT_QTY_PERCENT: TAbmesFloatField;
    qryFinOrdersMasterLATE_REAL_OUT_QTY_BC_PERCENT: TAbmesFloatField;
    qryFinOrdersMasterLATE_REAL_OUT_DAYS: TAbmesFloatField;
    qryFinOrdersMasterPLAN_QTY: TAbmesFloatField;
    qryFinOrdersMasterPLAN_QTY_BC: TAbmesFloatField;
    qryFinOrdersMasterREMAINING_QTY: TAbmesFloatField;
    qryFinOrdersMasterREMAINING_QTY_BC: TAbmesFloatField;
    qryFinOrdersMasterLATE_PLAN_QTY: TAbmesFloatField;
    qryFinOrdersMasterLATE_PLAN_QTY_BC: TAbmesFloatField;
    qryFinOrdersMasterLATE_PLAN_QTY_PERCENT: TAbmesFloatField;
    qryFinOrdersMasterLATE_PLAN_QTY_BC_PERCENT: TAbmesFloatField;
    qryFinOrdersMasterLATE_PLAN_DAYS: TAbmesFloatField;
    qryFinOrdersMasterLATE_REAL_QTY: TAbmesFloatField;
    qryFinOrdersMasterLATE_REAL_QTY_BC: TAbmesFloatField;
    qryFinOrdersMasterLATE_REAL_QTY_PERCENT: TAbmesFloatField;
    qryFinOrdersMasterLATE_REAL_QTY_BC_PERCENT: TAbmesFloatField;
    qryFinOrdersMasterLATE_REAL_DAYS: TAbmesFloatField;
    qryFinOrdersMasterPARTNER_SHORT_NAME: TAbmesWideStringField;
    qryFinOrdersMasterBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryFinOrdersMasterFIN_CLASS_NAME: TAbmesWideStringField;
    qryFinOrdersDetailRFML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryFinOrdersDetailRFML_OBJECT_CODE: TAbmesFloatField;
    qryFinOrdersDetailFIN_ORDER_CODE: TAbmesFloatField;
    qryFinOrdersDetailFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    qryFinOrdersDetailFIN_MODEL_LINE_NO: TAbmesFloatField;
    qryFinOrdersDetailSHOW_NO: TAbmesWideStringField;
    qryFinOrdersDetailLINE_QTY_PERCENT: TAbmesFloatField;
    qryFinOrdersDetailPLAN_QTY: TAbmesFloatField;
    qryFinOrdersDetailPLAN_QTY_BC: TAbmesFloatField;
    qryFinOrdersDetailREMAINING_QTY: TAbmesFloatField;
    qryFinOrdersDetailREMAINING_QTY_BC: TAbmesFloatField;
    qryFinOrdersDetailLATE_PLAN_QTY: TAbmesFloatField;
    qryFinOrdersDetailLATE_PLAN_QTY_BC: TAbmesFloatField;
    qryFinOrdersDetailLATE_PLAN_QTY_PERCENT: TAbmesFloatField;
    qryFinOrdersDetailLATE_PLAN_QTY_BC_PERCENT: TAbmesFloatField;
    qryFinOrdersDetailLATE_PLAN_DAYS: TAbmesFloatField;
    qryFinOrdersDetailLATE_REAL_QTY: TAbmesFloatField;
    qryFinOrdersDetailLATE_REAL_QTY_BC: TAbmesFloatField;
    qryFinOrdersDetailLATE_REAL_QTY_PERCENT: TAbmesFloatField;
    qryFinOrdersDetailLATE_REAL_QTY_BC_PERCENT: TAbmesFloatField;
    qryFinOrdersDetailLATE_REAL_DAYS: TAbmesFloatField;
    qryFinOrdersDetailFIN_STORE_IDENTIFIER: TAbmesWideStringField;
    qryFinOrdersDetailIN_OUT: TAbmesFloatField;
    qryFinOrdersDetailPARTNER_ACCOUNT_FULL_NAME: TAbmesWideStringField;
    qryFinOrdersDetailMOVEMENT_DURATION_DAYS: TAbmesFloatField;
    qryFinOrdersDetailFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField;
    mshLocalMacroLibrary: TJvMultiStringHolder;
    qryFinOrderSTATUS_CODE: TAbmesFloatField;
    qryRealFinModelLinesIS_ANNULED: TAbmesFloatField;
    qryFinOrdersMasterWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    prvRealFinModelLinesRegister: TDataSetProvider;
    qryRealFinModelLinesRegister: TAbmesSQLQuery;
    qryFinOrdersMasterPRIORITY_FULL_NAME: TAbmesWideStringField;
    qryFinOrdersMasterPRIORITY_COLOR: TAbmesFloatField;
    qryFinOrdersMasterPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryRealFinModelLinesRegisterRFML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryRealFinModelLinesRegisterRFML_OBJECT_CODE: TAbmesFloatField;
    qryRealFinModelLinesRegisterFIN_ORDER_CODE: TAbmesFloatField;
    qryRealFinModelLinesRegisterFIN_ORDER_STATUS_CODE: TAbmesFloatField;
    qryRealFinModelLinesRegisterFIN_PROCESS_ABBREV: TAbmesWideStringField;
    qryRealFinModelLinesRegisterFIN_ORDER_BRANCH_NO: TAbmesFloatField;
    qryRealFinModelLinesRegisterFIN_ORDER_NO: TAbmesFloatField;
    qryRealFinModelLinesRegisterFIN_ORDER_IDENTIFIER: TAbmesWideStringField;
    qryRealFinModelLinesRegisterPARTNER_SHORT_NAME: TAbmesWideStringField;
    qryRealFinModelLinesRegisterBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryRealFinModelLinesRegisterFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    qryRealFinModelLinesRegisterFIN_MODEL_LINE_NO: TAbmesFloatField;
    qryRealFinModelLinesRegisterSHOW_NO: TAbmesWideStringField;
    qryRealFinModelLinesRegisterLINE_QUANTITY_PERCENT: TAbmesFloatField;
    qryRealFinModelLinesRegisterPLAN_QTY: TAbmesFloatField;
    qryRealFinModelLinesRegisterPLAN_QTY_BC: TAbmesFloatField;
    qryRealFinModelLinesRegisterREMAINING_QTY: TAbmesFloatField;
    qryRealFinModelLinesRegisterREMAINING_QTY_BC: TAbmesFloatField;
    qryRealFinModelLinesRegisterLATE_PLAN_QTY: TAbmesFloatField;
    qryRealFinModelLinesRegisterLATE_PLAN_QTY_BC: TAbmesFloatField;
    qryRealFinModelLinesRegisterLATE_PLAN_QTY_PERCENT: TAbmesFloatField;
    qryRealFinModelLinesRegisterLATE_PLAN_QTY_BC_PERCENT: TAbmesFloatField;
    qryRealFinModelLinesRegisterLATE_PLAN_DAYS: TAbmesFloatField;
    qryRealFinModelLinesRegisterLATE_REAL_QTY: TAbmesFloatField;
    qryRealFinModelLinesRegisterLATE_REAL_QTY_BC: TAbmesFloatField;
    qryRealFinModelLinesRegisterLATE_REAL_QTY_PERCENT: TAbmesFloatField;
    qryRealFinModelLinesRegisterLATE_REAL_QTY_BC_PERCENT: TAbmesFloatField;
    qryRealFinModelLinesRegisterLATE_REAL_DAYS: TAbmesFloatField;
    qryRealFinModelLinesRegisterFIN_STORE_IDENTIFIER: TAbmesWideStringField;
    qryRealFinModelLinesRegisterIN_OUT: TAbmesFloatField;
    qryRealFinModelLinesRegisterPARTNER_ACCOUNT_FULL_NAME: TAbmesWideStringField;
    qryRealFinModelLinesRegisterMOVEMENT_DURATION_DAYS: TAbmesFloatField;
    qryRealFinModelLinesRegisterFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField;
    qryRealFinModelLinesRegisterPRIORITY_FULL_NAME: TAbmesWideStringField;
    qryRealFinModelLinesRegisterPRIORITY_COLOR: TAbmesFloatField;
    qryRealFinModelLinesRegisterPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryRealFinModelLinesRegisterWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    qryRealFinModelLinesRegisterWORK_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField;
    qryFinOrderBOIO_STATUS_CODE: TAbmesFloatField;
    qryRealFinModelLinesRegisterPARTNER_CODE: TAbmesFloatField;
    qryRealFinModelLinesRegisterFIN_STORE_CODE: TAbmesFloatField;
    qryRealFinModelLinesRegisterPARTNER_ACCOUNT_CODE: TAbmesFloatField;
    prvSpecFinModels: TDataSetProvider;
    qrySpecFinModels: TAbmesSQLQuery;
    qrySpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    qrySpecFinModelsFINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    qrySpecFinModelsSPEC_FIN_MODEL_NAME: TAbmesWideStringField;
    qryFinOrderBndObjectBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryFinOrderBndObjectBUDGET_ORDER_CODE: TAbmesFloatField;
    qryFinOrderBndObjectBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    qryFinOrderBndObjectBOI_ORDER_CODE: TAbmesFloatField;
    qryFinOrderBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryFinOrderBUDGET_ORDER_CODE: TAbmesFloatField;
    qryFinOrderBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    qryFinOrderBOI_ORDER_CODE: TAbmesFloatField;
    qrySpecFinModelLines: TAbmesSQLQuery;
    prvSpecFinModelLines: TDataSetProvider;
    qrySpecFinModelLinesSPEC_FIN_MODEL_LINE_CODE: TAbmesFloatField;
    qrySpecFinModelLinesSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    qrySpecFinModelLinesFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    qrySpecFinModelLinesFIN_MODEL_LINE_NO: TAbmesFloatField;
    qrySpecFinModelLinesLINE_QUANTITY_PERCENT: TAbmesFloatField;
    qrySpecFinModelLinesMOVEMENT_OFFSET_DAYS: TAbmesFloatField;
    qrySpecFinModelLinesMOVEMENT_DURATION_DAYS: TAbmesFloatField;
    qrySpecFinModelLinesFIN_STORE_CODE: TAbmesFloatField;
    qrySpecFinModelLinesPARTNER_ACCOUNT_CODE: TAbmesFloatField;
    qrySpecFinModelLinesFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField;
    qryRealFinModelLinesREAL_LINE_QUANTITY_PERCENT: TAbmesFloatField;
    prvFinancialRelationsGraph: TDataSetProvider;
    qryFinancialRelationsGraph: TAbmesSQLQuery;
    qryGetPeriodFieldNames: TAbmesSQLQuery;
    qryGetPeriodFieldNamesTABLE_NAME: TAbmesWideStringField;
    qryGetPeriodFieldNamesYEAR_UNIT_NO_NAME: TAbmesWideStringField;
    qryFinancialRelationsTable: TAbmesSQLQuery;
    prvFinancialRelationsTable: TDataSetProvider;
    qryFinancialRelationsGraphDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField;
    qryFinancialRelationsGraphDATE_UNIT_LAST_DATE: TAbmesSQLTimeStampField;
    qryFinancialRelationsGraphYEAR_DATE_UNIT_NO: TAbmesFloatField;
    qryFinancialRelationsGraphDATE_UNIT_WORKDAYS: TAbmesFloatField;
    qryFinancialRelationsGraphDATE_UNIT_NO: TAbmesFloatField;
    qryFinancialRelationsGraphOTCH_TENSION: TAbmesFloatField;
    qryFinancialRelationsGraphPLAN_TENSION: TAbmesFloatField;
    qryFinancialRelationsGraphPARTNER_OTCH_TENSION: TAbmesFloatField;
    qryFinancialRelationsGraphOUR_OTCH_TENSION: TAbmesFloatField;
    qryFinancialRelationsGraphPARTNER_PLAN_REAL_TENSION: TAbmesFloatField;
    qryFinancialRelationsGraphOUR_PLAN_REAL_TENSION: TAbmesFloatField;
    qryFinancialRelationsGraphPARTNER_PLAN_POTENTIAL_TENSION: TAbmesFloatField;
    qryFinancialRelationsGraphOUR_PLAN_POTENTIAL_TENSION: TAbmesFloatField;
    qryGetRounder: TAbmesSQLQuery;
    qryGetRounderROUNDER: TAbmesFloatField;
    cdsFinancialRelationsTable: TAbmesClientDataSet;
    qryFinancialRelationsGraphDATE_UNIT_STATUS: TAbmesFloatField;
    qryFinancialRelationsTableDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField;
    qryFinancialRelationsTableDATE_UNIT_NO: TAbmesFloatField;
    qryFinancialRelationsTablePARTNER_CODE: TAbmesFloatField;
    qryFinancialRelationsTablePARTNER_SHORT_NAME: TAbmesWideStringField;
    qryFinancialRelationsTablePARTNER_NO: TAbmesFloatField;
    qryFinancialRelationsTablePARTNER_OTCH_TENSION: TAbmesFloatField;
    qryFinancialRelationsTableOUR_OTCH_TENSION: TAbmesFloatField;
    qryFinancialRelationsTableOTCH_TENSION: TAbmesFloatField;
    qryFinancialRelationsTablePARTNER_PLAN_REAL_TENSION: TAbmesFloatField;
    qryFinancialRelationsTablePARTNER_PLAN_POTENTIAL_TENSION: TAbmesFloatField;
    qryFinancialRelationsTableOUR_PLAN_REAL_TENSION: TAbmesFloatField;
    qryFinancialRelationsTableOUR_PLAN_POTENTIAL_TENSION: TAbmesFloatField;
    qryFinancialRelationsTablePARTNER_PLAN_TENSION: TAbmesFloatField;
    qryFinancialRelationsTableOUR_PLAN_TENSION: TAbmesFloatField;
    qryFinancialRelationsTablePLAN_TENSION: TAbmesFloatField;
    qryVatPeriods: TAbmesSQLQuery;
    prvVatPeriods: TDataSetProvider;
    qryVatPeriodsVAT_PERIOD_CODE: TAbmesFloatField;
    qryVatPeriodsBEGIN_DATE: TAbmesSQLTimeStampField;
    qryVatPeriodsEND_DATE: TAbmesSQLTimeStampField;
    qryVatPeriodsVAT_PERCENT: TAbmesFloatField;
    qryGetVatPercent: TAbmesSQLQuery;
    qryGetVatPercentVAT_PERCENT: TAbmesFloatField;
    qryFinOrdersMasterDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    qryFinOrdersMasterDOCUMENT_DATE: TAbmesSQLTimeStampField;
    qryRealFinModelLinesRegisterDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    qryRealFinModelLinesRegisterDOCUMENT_DATE: TAbmesSQLTimeStampField;
    qryFinOrderBASE_DATA_CHANGED: TAbmesFloatField;
    qryFinOrderBDC_CONFIRM_EMPLOYEE_CODE: TAbmesFloatField;
    qryFinOrderBDC_CONFIRM_DATE: TAbmesSQLTimeStampField;
    qryFinOrderBDC_CONFIRM_TIME: TAbmesSQLTimeStampField;
    qryRealFinModelLinesRegisterBASE_DATA_CHANGED: TAbmesFloatField;
    qryFinOrdersMasterBASE_DATA_CHANGED: TAbmesFloatField;
    qryFinOrderBND_OBJECT_IS_ANNULED: TAbmesFloatField;
    qryFinOrdersMasterPARTNER_FULL_NAME: TAbmesWideStringField;
    qryFinOrdersMasterPARTNER_BULSTAT_NO: TAbmesFloatField;
    qryFinOrdersMasterPARTNER_COUNTRY_NAME: TAbmesWideStringField;
    qryFinOrdersMasterPARTNER_CITY: TAbmesWideStringField;
    qryCloseFinOrder: TAbmesSQLQuery;
    qryFinOrderBUDGET_PRODUCT_CODE: TAbmesFloatField;
    qryFinOrderBOIO_DESCRIPTION: TAbmesWideStringField;
    qryFinOrderFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField;
    qryRealFinModelLinesMOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryRealFinModelLinesMOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryRealFinModelLinesORIGINAL_MOVEMENT_PLAN_DATE: TAbmesSQLTimeStampField;
    qryRealFinModelLinesREAL_BASE_QUANTITY: TAbmesFloatField;
    qryRealFinModelLinesOVERRIDE_DOCUMENT: TAbmesFloatField;
    qryRealFinModelLinesDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    qryRealFinModelLinesDOCUMENT_DATE: TAbmesSQLTimeStampField;
    qrySpecFinModelsFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField;
    qryUpdFinOrderFMMovementOffsetType: TAbmesSQLQuery;
    qryFinOrdersMasterBND_PROCESS_OBJECT_INFO: TAbmesWideStringField;
    qryRealFinModelLinesRegisterBND_PROCESS_OBJECT_INFO: TAbmesWideStringField;
    qryFinOrdersMasterBASE_DATE: TAbmesSQLTimeStampField;
    qryFinOrdersDetailMOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryFinOrdersDetailMOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryRealFinModelLinesRegisterMOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryRealFinModelLinesRegisterMOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryRealFinModelLinesRegisterMOVEMENT_OFFSET_DAYS: TAbmesFloatField;
    qryRealFinModelLinesRegisterFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField;
    qryRealFinModelLinesRegisterBASE_DATE: TAbmesSQLTimeStampField;
    qryRealFinModelLinesRegisterIS_MODIFIED: TAbmesFloatField;
    qryRealFinModelLinesRegisterREAL_QTY: TAbmesFloatField;
    qryRealFinModelLinesRegisterREAL_QTY_BC: TAbmesFloatField;
    qryRealFinModelLinesRegisterREAL_QTY_PERCENT: TAbmesFloatField;
    qryRealFinModelLinesRegisterREAL_QTY_BC_PERCENT: TAbmesFloatField;
    qryRealFinModelLinesRegisterMAX_REAL_DATE: TAbmesSQLTimeStampField;
    qryRFMLStoreDealsParams: TAbmesSQLQuery;
    qryRFMLStoreDealsParamsBND_PROCESS_CODE: TAbmesFloatField;
    qryRFMLStoreDealsParamsIS_STORNO: TAbmesFloatField;
    qryRFMLStoreDealsParamsSTART_DATE: TAbmesSQLTimeStampField;
    qryRFMLStoreDealsParamsEND_DATE: TAbmesSQLTimeStampField;
    qryRFMLStoreDealsParamsFIN_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryRFMLStoreDealsParamsFIN_ORDER_NO: TAbmesFloatField;
    qryRFMLStoreDealsParamsFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    qryRFMLStoreDealsParamsFIN_MODEL_LINE_NO: TAbmesFloatField;
    prvRFMLStoreDealsParams: TDataSetProvider;
    qryFinOrdersMasterPARTNER_NAME: TAbmesWideStringField;
    qryVatReasons: TAbmesSQLQuery;
    prvVatReasons: TDataSetProvider;
    qryVatReasonsVAT_REASON_CODE: TAbmesFloatField;
    qryVatReasonsVAT_REASON_NO: TAbmesFloatField;
    qryVatReasonsVAT_REASON_NAME: TAbmesWideStringField;
    qryVatReasonsVAT_REASON_ABBREV: TAbmesWideStringField;
    qryVatReasonsVAT_REASON_I_NAME: TAbmesWideStringField;
    qryVatReasonsVAT_REASON_I_ABBREV: TAbmesWideStringField;
    qryFinOrdersMasterNOTES: TAbmesWideStringField;
    qryCompleteFinOrder: TAbmesSQLQuery;
    qryRealFinModelLinesRegisterNOTES: TAbmesWideStringField;
    qryFinOrderCOMPLETE_MODEL_DATE: TAbmesSQLTimeStampField;
    qryNewFinOrder: TAbmesSQLQuery;
    procedure prvFinOrderBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure qryFinOrderBeforeProviderEndTransaction(DataSet: TDataSet;
      Commit: Boolean);
    procedure prvFinClassAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvFinClassBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryFinClassAfterProviderStartTransaction(DataSet: TDataSet);
    procedure prvFinModelLineReasonsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvFinOrderBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvFinOrderAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryFinOrderAfterProviderStartTransaction(DataSet: TDataSet);
    procedure prvFinOrderAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryFinancialRelationsAfterClose(DataSet: TDataSet);
    procedure prvFinancialRelationsGraphGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvFinancialRelationsGraphAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvFinancialRelationsTableBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvFinancialRelationsTableAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvFinancialRelationsTableGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure qryFinancialRelationsGraphBeforeOpen(DataSet: TDataSet);
    procedure qryFinancialRelationsTableBeforeOpen(DataSet: TDataSet);
    procedure qryRealFinModelLinesRegisterBeforeOpen(DataSet: TDataSet);
    procedure qryRealFinModelLinesRegisterAfterClose(DataSet: TDataSet);
    procedure qryFinOrdersMasterBeforeOpen(DataSet: TDataSet);
    procedure qryFinOrdersMasterAfterClose(DataSet: TDataSet);
    procedure prvFinOrdersMasterGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
  private
    FDocsDelta: Variant;
    FFinOrderCode: Integer;
    FMaxTensionDelta: Real;
    FFinancialRelationsTableDateUnitCount: Integer;
    FFinancialRelationsTableNonPeriodFieldCount: Integer;
    FFMMovementOffsetTypeCode: Variant;
    FCompleteFinOrder: Boolean;
    FCompleteFinOrderDate: TDateTime;
    function GetNewFinModelLineReasonCode: Integer;
    function NewFinOrderCode: Integer;
    function GetDateUnitTableName(DateUnitCode: Integer): string;
    function GetYearDateUnitNoFieldName(DateUnitCode: Integer): string;
    function GetRounder(Value: Real): Real;
    procedure CreateFinancialRelationsTableDataSetStructure(DateUnitCount: Integer);
    procedure CreateAndAddFieldToDataSet(ADataSet: TDataSet;
      AFieldClass: TFieldClass; AName: string; AStringSize: Integer = 250);
    procedure CompleteFinOrder(AFinOrderCode: Integer; ADate: TDateTime);
  protected
    function GetNewFinClassLocalNo(AParentFinClassCode: Integer): Integer;
    function GetNewFinClassCode: Integer;
    function GetFinClassCodeByFullNo(const AFinClassFullNo: string): Integer;
    function GetFinClassIsInstance(AFinClassCode: Integer): Boolean;
    function GetNewFinOrderNo(FinOrderBranchCode: Integer): Integer;
    function GetVatPercent(ADate: TDateTime): Double;
    function NewFinOrder(
      ABranchCode: Integer;
      AExecDeptCode: Integer;
      APriorityCode: Integer;
      AFinProcessCode: Integer;
      ABndProcessObjectBranchCode: Integer;
      ABndProcessObjectCode: Integer;
      APartnerCode: Integer;
      AInOut: Integer;
      ABaseDate: TDateTime;
      const ABaseFinancialProductCode: Variant;
      const ABaseCurrencyCode: Variant;
      ABaseQuantity: Real;
      AWorkFinancialProductCode: Integer;
      const ADocumentIdentifier: Variant;
      const ADocumentDate: Variant;
      const ASpecFinModelCode: Variant
    ): Integer;
    procedure CloseFinOrder(AFinOrderCode: Integer);
  end;

type
  IdmFinanceProxy = interface(IDBPooledDataModuleProxy)
    function NewFinOrder(
      ABranchCode: Integer;
      AExecDeptCode: Integer;
      APriorityCode: Integer;
      AFinProcessCode: Integer;
      ABndProcessObjectBranchCode: Integer;
      ABndProcessObjectCode: Integer;
      APartnerCode: Integer;
      AInOut: Integer;
      ABaseDate: TDateTime;
      const ABaseFinancialProductCode: Variant;
      const ABaseCurrencyCode: Variant;
      ABaseQuantity: Real;
      AWorkFinancialProductCode: Integer;
      const ADocumentIdentifier: Variant;
      const ADocumentDate: Variant;
      const ASpecFinModelCode: Variant
    ): Integer;
    procedure CloseFinOrder(AFinOrderCode: Integer);
  end;

type
  TdmFinanceProxy = class(TDBPooledDataModuleProxy, IdmFinanceProxy)
  private
    class var FSingleton: TdmFinanceProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmFinance>;
  strict protected
    property LockedInstance: ISmartLock<TdmFinance> read GetLockedInstance;
  protected
    function NewFinOrder(
      ABranchCode: Integer;
      AExecDeptCode: Integer;
      APriorityCode: Integer;
      AFinProcessCode: Integer;
      ABndProcessObjectBranchCode: Integer;
      ABndProcessObjectCode: Integer;
      APartnerCode: Integer;
      AInOut: Integer;
      ABaseDate: TDateTime;
      const ABaseFinancialProductCode: Variant;
      const ABaseCurrencyCode: Variant;
      ABaseQuantity: Real;
      AWorkFinancialProductCode: Integer;
      const ADocumentIdentifier: Variant;
      const ADocumentDate: Variant;
      const ASpecFinModelCode: Variant
    ): Integer;
    procedure CloseFinOrder(AFinOrderCode: Integer);
  public
    class property Singleton: TdmFinanceProxy read FSingleton;

    function GetNewFinClassLocalNo(AParentFinClassCode: Integer): Integer;
    function GetNewFinClassCode: Integer;
    function GetFinClassCodeByFullNo(const AFinClassFullNo: string): Integer;
    function GetFinClassIsInstance(AFinClassCode: Integer): Boolean;
    function GetNewFinOrderNo(FinOrderBranchCode: Integer): Integer;
    function GetVatPercent(ADate: TDateTime): Double;
  end;

implementation

uses
  DateUtils, uSvrUtils, uDBPooledDataModuleHelper, uProcesses, uUtils,
  uProcessObjectIdentifierFormats, StrUtils, Math, JclStrings, uDealTypes;

{$R *.dfm}

{ TdmFinanceProxy }

function TdmFinanceProxy.GetLockedInstance: ISmartLock<TdmFinance>;
begin
  Result:= ISmartLock<TdmFinance>(inherited LockedInstance);
end;

function TdmFinanceProxy.GetVatPercent(ADate: TDateTime): Double;
begin
  Result:= LockedInstance.Value.GetVatPercent(ADate);
end;

function TdmFinanceProxy.NewFinOrder(ABranchCode, AExecDeptCode, APriorityCode,
  AFinProcessCode, ABndProcessObjectBranchCode, ABndProcessObjectCode,
  APartnerCode, AInOut: Integer; ABaseDate: TDateTime;
  const ABaseFinancialProductCode, ABaseCurrencyCode: Variant; ABaseQuantity: Real;
  AWorkFinancialProductCode: Integer; const ADocumentIdentifier,
  ADocumentDate, ASpecFinModelCode: Variant): Integer;
begin
  Result:=
    LockedInstance.Value.NewFinOrder(
      ABranchCode,
      AExecDeptCode,
      APriorityCode,
      AFinProcessCode,
      ABndProcessObjectBranchCode,
      ABndProcessObjectCode,
      APartnerCode,
      AInOut,
      ABaseDate,
      ABaseFinancialProductCode,
      ABaseCurrencyCode,
      ABaseQuantity,
      AWorkFinancialProductCode,
      ADocumentIdentifier,
      ADocumentDate,
      ASpecFinModelCode
    );
end;

function TdmFinanceProxy.GetNewFinClassLocalNo(AParentFinClassCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewFinClassLocalNo(AParentFinClassCode);
end;

function TdmFinanceProxy.GetNewFinOrderNo(FinOrderBranchCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewFinOrderNo(FinOrderBranchCode);
end;

function TdmFinanceProxy.GetNewFinClassCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewFinClassCode;
end;

procedure TdmFinanceProxy.CloseFinOrder(AFinOrderCode: Integer);
begin
  LockedInstance.Value.CloseFinOrder(AFinOrderCode);
end;

function TdmFinanceProxy.GetFinClassCodeByFullNo(const AFinClassFullNo: string): Integer;
begin
  Result:= LockedInstance.Value.GetFinClassCodeByFullNo(AFinClassFullNo);
end;

function TdmFinanceProxy.GetFinClassIsInstance(AFinClassCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.GetFinClassIsInstance(AFinClassCode);
end;

{ TdmFinance }

function TdmFinance.NewFinOrder(ABranchCode, AExecDeptCode, APriorityCode, AFinProcessCode,
  ABndProcessObjectBranchCode, ABndProcessObjectCode, APartnerCode,
  AInOut: Integer; ABaseDate: TDateTime; const ABaseFinancialProductCode,
  ABaseCurrencyCode: Variant; ABaseQuantity: Real;
  AWorkFinancialProductCode: Integer; const ADocumentIdentifier,
  ADocumentDate, ASpecFinModelCode: Variant): Integer;
begin
  Assert(
    ( (VarToInt(ABaseFinancialProductCode) = 0) and (VarToInt(ABaseCurrencyCode) > 0) ) or
    ( (VarToInt(ABaseFinancialProductCode) > 0) and (VarToInt(ABaseCurrencyCode) = 0) )
  );

  qryNewFinOrder.ParamByName('BRANCH_CODE').AsInteger:= ABranchCode;
  qryNewFinOrder.ParamByName('EXEC_DEPT_CODE').AsInteger:= AExecDeptCode;
  qryNewFinOrder.ParamByName('PRIORITY_CODE').AsInteger:= APriorityCode;
  qryNewFinOrder.ParamByName('FIN_PROCESS_CODE').AsInteger:= AFinProcessCode;
  qryNewFinOrder.ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').AsInteger:= ABndProcessObjectBranchCode;
  qryNewFinOrder.ParamByName('BND_PROCESS_OBJECT_CODE').AsInteger:= ABndProcessObjectCode;
  qryNewFinOrder.ParamByName('PARTNER_CODE').AsInteger:= APartnerCode;
  qryNewFinOrder.ParamByName('IN_OUT').AsInteger:= AInOut;
  qryNewFinOrder.ParamByName('BASE_DATE').AsDateTime:= ABaseDate;
  qryNewFinOrder.ParamByName('BASE_FINANCIAL_PRODUCT_CODE').Value:= ABaseFinancialProductCode;
  qryNewFinOrder.ParamByName('BASE_CURRENCY_CODE').Value:= ABaseCurrencyCode;
  qryNewFinOrder.ParamByName('BASE_QUANTITY').AsFloat:= ABaseQuantity;
  qryNewFinOrder.ParamByName('WORK_FINANCIAL_PRODUCT_CODE').AsInteger:= AWorkFinancialProductCode;

  if VarIsNullOrEmpty(ADocumentIdentifier) then
    qryNewFinOrder.ParamByName('DOCUMENT_IDENTIFIER').Clear
  else
    qryNewFinOrder.ParamByName('DOCUMENT_IDENTIFIER').AsString:= ADocumentIdentifier;

  qryNewFinOrder.ParamByName('DOCUMENT_DATE').Value:= ADocumentDate;
  qryNewFinOrder.ParamByName('SPEC_FIN_MODEL_CODE').Value:= ASpecFinModelCode;

  qryNewFinOrder.ExecSQL;

  Result:= qryNewFinOrder.ParamByName('RESULT').AsInteger;
end;

function TdmFinance.NewFinOrderCode: Integer;
begin
  qryNewFinOrderCode.Open;
  try
    Result:= qryNewFinOrderCodeNEW_FIN_ORDER_CODE.AsInteger;
  finally
    qryNewFinOrderCode.Close;
  end;
end;

procedure TdmFinance.prvFinOrderAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
  FFMMovementOffsetTypeCode:= Unassigned;
end;

procedure TdmFinance.prvFinOrderAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;

  if (SourceDS = qryFinOrder) then
    begin
      FFinOrderCode:= GetFieldValue(DeltaDS.FieldByName('FIN_ORDER_CODE'));

      if (not VarIsNullOrEmpty(DeltaDS.FieldByName('COMPLETE_MODEL_DATE').NewValue)) and
         (VarToInt(DeltaDS.FieldByName('STATUS_CODE').NewValue) <> 7) then  // not annuled
        begin
          FCompleteFinOrder:= True;
          FCompleteFinOrderDate:= DeltaDS.FieldByName('COMPLETE_MODEL_DATE').NewValue;
        end;
    end;
end;

procedure TdmFinance.prvFinOrderBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData[0];
  FFMMovementOffsetTypeCode:= OwnerData[1];
  FFinOrderCode:= 0;
  FCompleteFinOrder:= False;
  FCompleteFinOrderDate:= 0;
end;

procedure TdmFinance.prvFinOrderBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;

  if (SourceDS = qryFinOrder) then
    begin
      if (UpdateKind = ukInsert) then
        begin
          DeltaDS.FieldByName('FIN_ORDER_CODE').NewValue:= NewFinOrderCode;
          DeltaDS.FieldByName('FIN_ORDER_NO').NewValue:=
            GetNewFinOrderNo(DeltaDS.FieldByName('FIN_ORDER_BRANCH_CODE').NewValue);
        end;

      FFMMovementOffsetTypeCode:= Unassigned;
    end;

  if (SourceDS = qryRealFinModelLines) then
    begin
      if (UpdateKind = ukInsert) then
        begin
          SvrCommon.SetProcessObjectKey(DeltaDS,
            'RFML_OBJECT_BRANCH_CODE', 'RFML_OBJECT_CODE', pocRealFinModelLine);

          DeltaDS.FieldByName('FIN_ORDER_CODE').NewValue:=
            GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('FIN_ORDER_CODE'));
          DeltaDS.FieldByName('PARTNER_CODE').NewValue:=
            GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('PARTNER_CODE'));
        end;

      if (UpdateKind in [ukInsert, ukModify]) then
        begin
          with DeltaDS.FieldByName('FIN_MODEL_LINE_NO') do
            if not VarIsEmpty(NewValue) then
              NewValue:= -Abs(NewValue);

          SvrCommon.UpdateProcessObjectIdentifier(
            GetFieldValue(DeltaDS.FieldByName('RFML_OBJECT_BRANCH_CODE')),
            GetFieldValue(DeltaDS.FieldByName('RFML_OBJECT_CODE')),
            Format(poifRealFinModelLine, [
              VarToFloat(GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('FIN_ORDER_BRANCH_NO'))),
              VarToInt(GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('FIN_ORDER_NO'))),
              VarToStr(GetFieldValue(DeltaDS.FieldByName('FIN_MODEL_LINE_TYPE_ABBREV'))),
              VarToInt(GetFieldValue(DeltaDS.FieldByName('FIN_MODEL_LINE_NO')))
            ])
          );

          if not VarIsNullOrEmpty(FFMMovementOffsetTypeCode) then
            begin
              SetParams(qryUpdFinOrderFMMovementOffsetType.Params, DeltaDS);
              qryUpdFinOrderFMMovementOffsetType.ParamByName('FM_MOVEMENT_OFFSET_TYPE_CODE').AsInteger:= FFMMovementOffsetTypeCode;
              qryUpdFinOrderFMMovementOffsetType.ExecSQL;
              Assert(qryUpdFinOrderFMMovementOffsetType.RowsAffected = 1);

              FFMMovementOffsetTypeCode:= Unassigned;
            end;
        end;
    end;

  Applied:= not RecordChanged(DeltaDS);
end;

procedure TdmFinance.prvFinOrdersMasterGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  DataSetPARTNER_NAME: TField;
  DataSetPARTNER_SHORT_NAME: TField;
  DataSetPARTNER_FULL_NAME: TField;
  DataSetPARTNER_BULSTAT_NO: TField;
  DataSetPARTNER_CITY: TField;
  DataSetPARTNER_COUNTRY_NAME: TField;
begin
  inherited;

  DataSetPARTNER_NAME:= DataSet.FieldByName('PARTNER_NAME');
  DataSetPARTNER_SHORT_NAME:= DataSet.FieldByName('PARTNER_SHORT_NAME');
  DataSetPARTNER_FULL_NAME:= DataSet.FieldByName('PARTNER_FULL_NAME');
  DataSetPARTNER_BULSTAT_NO:= DataSet.FieldByName('PARTNER_BULSTAT_NO');
  DataSetPARTNER_CITY:= DataSet.FieldByName('PARTNER_CITY');
  DataSetPARTNER_COUNTRY_NAME:= DataSet.FieldByName('PARTNER_COUNTRY_NAME');

  DataSet.ForEach/
    DataSet.SafeEdit/
      procedure begin
        DataSetPARTNER_NAME.AsString:=
          StrPadRight(DataSetPARTNER_SHORT_NAME.AsString, 50, ' ') +
          SLineBreak + DataSetPARTNER_FULL_NAME.AsString +
          IfThen(not DataSetPARTNER_BULSTAT_NO.IsNull, SLineBreak + DataSetPARTNER_BULSTAT_NO.AsString) +
          IfThen(not DataSetPARTNER_CITY.IsNull, SLineBreak + DataSetPARTNER_CITY.AsString) +
          IfThen(not DataSetPARTNER_COUNTRY_NAME.IsNull,
                 IfThen(DataSetPARTNER_COUNTRY_NAME.IsNull, SLineBreak, ', ') + DataSetPARTNER_COUNTRY_NAME.AsString);
      end;
end;

procedure TdmFinance.qryFinOrderAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmFinance.qryFinOrderBeforeProviderEndTransaction(DataSet: TDataSet;
  Commit: Boolean);
begin
  inherited;
  
  if Commit then
    begin
      qryFixRealFinModelLineNos.Params.ParamByName('FIN_ORDER_CODE').AsInteger:= FFinOrderCode;
      qryFixRealFinModelLineNos.ExecSQL;

      if FCompleteFinOrder then
        CompleteFinOrder(FFinOrderCode, FCompleteFinOrderDate);
    end;
end;

procedure TdmFinance.qryFinOrdersMasterAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);;
end;

procedure TdmFinance.qryFinOrdersMasterBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);
end;

procedure TdmFinance.qryRealFinModelLinesRegisterAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);;
end;

procedure TdmFinance.qryRealFinModelLinesRegisterBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);
end;

function TdmFinance.GetNewFinModelLineReasonCode: Integer;
begin
  qryGetNewFinModelLineReasonCode.Open;
  try
    Result:= qryGetNewFinModelLineReasonCodeNEW_FIN_MODEL_LINE_REASON_CODE.AsInteger;
  finally
    qryGetNewFinModelLineReasonCode.Close;
  end;  { try }
end;

function TdmFinance.GetNewFinOrderNo(FinOrderBranchCode: Integer): Integer;
begin
  qryMaxFinOrderNo.ParamByName('FIN_ORDER_BRANCH_CODE').AsInteger:= FinOrderBranchCode;
  qryMaxFinOrderNo.Open;
  try
    Result:= qryMaxFinOrderNoMAX_FIN_ORDER_NO.AsInteger + 1;
  finally
    qryMaxFinOrderNo.Close;
  end;
end;

function TdmFinance.GetRounder(Value: Real): Real;
begin
  qryGetRounder.Params.ParamByName('VALUE').AsFloat:= Value;
  qryGetRounder.Open;
  try
    Result:= qryGetRounderROUNDER.AsFloat;
  finally
    qryGetRounder.Close;
  end;
end;

function TdmFinance.GetVatPercent(ADate: TDateTime): Double;
begin
  qryGetVatPercent.ParamByName('TO_DATE').AsDateTime:= ADate;
  Result:= qryGetVatPercent.TempOpen /
    function: Real begin
      Result:= qryGetVatPercentVAT_PERCENT.AsFloat;
    end;
end;

function TdmFinance.GetYearDateUnitNoFieldName(DateUnitCode: Integer): string;
begin
  qryGetPeriodFieldNames.ParamByName('THE_DATE_UNIT_CODE').AsInteger:= DateUnitCode;
  qryGetPeriodFieldNames.Open;
  try
    Result:= qryGetPeriodFieldNamesYEAR_UNIT_NO_NAME.AsString;
  finally
    qryGetPeriodFieldNames.Close;
  end;
end;

function TdmFinance.GetNewFinClassLocalNo(AParentFinClassCode: Integer): Integer;
begin
  qryGetNewFinClassLocalNo.ParamByName('PARENT_FIN_CLASS_CODE').AsInteger:= AParentFinClassCode;
  qryGetNewFinClassLocalNo.Open;
  try
    Result:= qryGetNewFinClassLocalNoNEW_FIN_CLASS_LOCAL_NO.AsInteger;
  finally
    qryGetNewFinClassLocalNo.Close;
  end;  { try }
end;

function TdmFinance.GetNewFinClassCode: Integer;
begin
  qryGetNewFinClassCode.Open;
  try
    Result:= qryGetNewFinClassCodeNEW_FIN_CLASS_CODE.AsInteger;
  finally
    qryGetNewFinClassCode.Close;
  end;  { try }
end;

procedure TdmFinance.CloseFinOrder(AFinOrderCode: Integer);
begin
  qryCloseFinOrder.ParamByName('FIN_ORDER_CODE').AsInteger:= AFinOrderCode;
  qryCloseFinOrder.ExecSQL;
  Assert(qryCloseFinOrder.RowsAffected = 1, 'FinOrder not closed');
end;

procedure TdmFinance.CompleteFinOrder(AFinOrderCode: Integer; ADate: TDateTime);
begin
  qryCompleteFinOrder.ParamByName('FIN_ORDER_CODE').AsInteger:= AFinOrderCode;
  qryCompleteFinOrder.ParamByName('STORE_DEAL_DATE').AsDateTime:= ADate;
  qryCompleteFinOrder.ParamByName('IN_DEAL_TYPE_ABBREV').AsString:= SInDealAbbrev;
  qryCompleteFinOrder.ParamByName('OUT_DEAL_TYPE_ABBREV').AsString:= SOutDealAbbrev;
  qryCompleteFinOrder.ExecSQL;
end;

procedure TdmFinance.CreateAndAddFieldToDataSet(ADataSet: TDataSet;
  AFieldClass: TFieldClass; AName: string; AStringSize: Integer);
var
  AField: TField;
begin
  AField:= AFieldClass.Create(Self);

  with AField do
    begin
      FieldName := AName;
      Name:= ADataSet.Name + FieldName;
      Index:= ADataSet.FieldCount;
      DataSet:= ADataSet;

      if (AFieldClass = TAbmesWideStringField) then
        begin
          Size:= AStringSize;
          (AField as TAbmesWideStringField).Alignment:= taLeftJustify;
        end;

      if (AFieldClass = TAbmesFloatField) then
        begin
          (AField as TAbmesFloatField).Alignment:= taRightJustify;
        end;
    end;
end;

procedure TdmFinance.CreateFinancialRelationsTableDataSetStructure(
  DateUnitCount: Integer);

  function PeriodField(AFieldName: string; DataFieldsOnly: Boolean): Boolean;
  const
    PeriodFieldNameSuffixes: array[1..2] of string = ('DATE_UNIT_FIRST_DATE', 'DATE_UNIT_NO');
    PeriodDataFieldNameSuffixes: array[1..1] of string = ('_TENSION');
  var
    s: string;
  begin
    Result:= True;

    if not DataFieldsOnly then
      for s in PeriodFieldNameSuffixes do
        if EndsStr(s, AFieldName) then
          Exit;

    for s in PeriodDataFieldNameSuffixes do
      if EndsStr(s, AFieldName) then
        Exit;

    Result:= False;
  end;  { ExcludedField }

var
  i, k: Integer;
begin
  cdsFinancialRelationsTable.Fields.Clear;
  cdsFinancialRelationsTable.FieldDefs.Clear;

  // полетата в началото
  FFinancialRelationsTableNonPeriodFieldCount:= 0;
  for i:= 0 to qryFinancialRelationsTable.FieldCount - 1 do
    if (not PeriodField(qryFinancialRelationsTable.Fields[i].FieldName, False)) then
      begin
        CreateAndAddFieldToDataSet(
          cdsFinancialRelationsTable,
          TFieldClass(qryFinancialRelationsTable.Fields[i].ClassType),
          qryFinancialRelationsTable.Fields[i].FieldName
        );
        Inc(FFinancialRelationsTableNonPeriodFieldCount);
      end;

  // периоди
  for k:= 1 to DateUnitCount do
    for i:= 0 to qryFinancialRelationsTable.FieldCount - 1 do
      if PeriodField(qryFinancialRelationsTable.Fields[i].FieldName, True) then
        CreateAndAddFieldToDataSet(
          cdsFinancialRelationsTable,
          TFieldClass(qryFinancialRelationsTable.Fields[i].ClassType),
          Format('%s_%d', [StringReplace(qryFinancialRelationsTable.Fields[i].FieldName, 'TENSION', 'TNSN', []), k])
        );

  // задаване на PrimaryKey
  cdsFinancialRelationsTable.FieldByName('PARTNER_CODE').ProviderFlags:= [pfInKey];
end;

procedure TdmFinance.DataModuleCreate(Sender: TObject);
begin
  RegisterMacroLibrary(mshLocalMacroLibrary);
  inherited;
end;

procedure TdmFinance.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  UnregisterMacroLibrary(mshLocalMacroLibrary);
end;

function TdmFinance.GetDateUnitTableName(DateUnitCode: Integer): string;
begin
  qryGetPeriodFieldNames.ParamByName('THE_DATE_UNIT_CODE').AsInteger:= DateUnitCode;
  qryGetPeriodFieldNames.Open;
  try
    Result:= qryGetPeriodFieldNamesTABLE_NAME.AsString;
  finally
    qryGetPeriodFieldNames.Close;
  end;
end;

function TdmFinance.GetFinClassCodeByFullNo(const AFinClassFullNo: string): Integer;
begin
  qryGetFinClassCodeByFullNo.ParamByName('FIN_CLASS_FULL_NO').AsString:= AFinClassFullNo;
  qryGetFinClassCodeByFullNo.Open;
  try
    Result:= qryGetFinClassCodeByFullNoFIN_CLASS_CODE.AsInteger;
  finally
    qryGetFinClassCodeByFullNo.Close;
  end;  { try }
end;

function TdmFinance.GetFinClassIsInstance(AFinClassCode: Integer): Boolean;
begin
  qryGetFinClassIsInstance.ParamByName('FIN_CLASS_CODE').AsInteger:= AFinClassCode;
  qryGetFinClassIsInstance.Open;
  try
    Result:= qryGetFinClassIsInstanceIS_INSTANCE.AsBoolean;
  finally
    qryGetFinClassIsInstance.Close;
  end;  { try }
end;

procedure TdmFinance.prvFinancialRelationsGraphAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= GetRounder(FMaxTensionDelta);
end;

procedure TdmFinance.prvFinancialRelationsGraphGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  MinTension: Real;
  MaxTension: Real;
  i: Integer;
begin
  inherited;

  if DataSet.IsEmpty then
    FMaxTensionDelta:= 0
  else
    begin
      MinTension:= MaxDouble;
      MaxTension:= MinDouble;

      DataSet.First;
      while not DataSet.Eof do
        begin
          for i:= 0 to DataSet.FieldCount - 1 do
            begin
              if EndsStr('_TENSION', DataSet.Fields[i].FieldName) then
                begin
                  MinTension:= Min(MinTension, DataSet.Fields[i].AsFloat);
                  MaxTension:= Max(MaxTension, DataSet.Fields[i].AsFloat);
                end;
            end;

          DataSet.Next;
        end;  { while }

      FMaxTensionDelta:= MaxTension - MinTension;
    end;  { if }
end;

procedure TdmFinance.prvFinancialRelationsTableAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  cdsFinancialRelationsTable.Close;
  cdsFinancialRelationsTable.Fields.Clear;
end;

procedure TdmFinance.prvFinancialRelationsTableBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  FFinancialRelationsTableDateUnitCount:=
    cdsFinancialRelationsTable.Params.ParamByName('DATE_UNIT_COUNT').AsInteger;

  CreateFinancialRelationsTableDataSetStructure(FFinancialRelationsTableDateUnitCount);
  cdsFinancialRelationsTable.CreateDataSet;
end;

procedure TdmFinance.prvFinancialRelationsTableGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
type
  TFinancialRelationsTableFieldGroup = record
    PartnerOtchTensionField: TField;
    OurOtchTensionField: TField;
    OtchTensionField: TField;
    PartnerPlanRealTensionField: TField;
    PartnerPlanPotentialTensionField: TField;
    OurPlanRealTensionField: TField;
    OurPlanPotentialTensionField: TField;
    PartnerPlanTensionField: TField;
    OurPlanTensionField: TField;
    PlanTensionField: TField;
  end;

var
  FinancialRelationsTableFieldGroups: array of TFinancialRelationsTableFieldGroup;
  PartnerCode: Integer;
  OldNullFieldCount: Integer;
  NewNullFieldCount: Integer;
  FirstPeriodDataFieldIndex: Integer;
  NonPeriodFieldMappings: array of TField;
  SaveAutoCalcFields: Boolean;

  procedure AssignFinancialRelationsTableFieldGroupFields(
    var AFinancialRelationsTableFieldGroup: TFinancialRelationsTableFieldGroup;
    ANo: Integer; ADataSet: TDataSet);
  begin
    with AFinancialRelationsTableFieldGroup do
      begin
        PartnerOtchTensionField:= ADataSet.FieldByName(Format('PARTNER_OTCH_TNSN_%d', [ANo]));
        OurOtchTensionField:= ADataSet.FieldByName(Format('OUR_OTCH_TNSN_%d', [ANo]));
        OtchTensionField:= ADataSet.FieldByName(Format('OTCH_TNSN_%d', [ANo]));
        PartnerPlanRealTensionField:= ADataSet.FieldByName(Format('PARTNER_PLAN_REAL_TNSN_%d', [ANo]));
        PartnerPlanPotentialTensionField:= ADataSet.FieldByName(Format('PARTNER_PLAN_POTENTIAL_TNSN_%d', [ANo]));
        OurPlanRealTensionField:= ADataSet.FieldByName(Format('OUR_PLAN_REAL_TNSN_%d', [ANo]));
        OurPlanPotentialTensionField:= ADataSet.FieldByName(Format('OUR_PLAN_POTENTIAL_TNSN_%d', [ANo]));
        PartnerPlanTensionField:= ADataSet.FieldByName(Format('PARTNER_PLAN_TNSN_%d', [ANo]));
        OurPlanTensionField:= ADataSet.FieldByName(Format('OUR_PLAN_TNSN_%d', [ANo]));
        PlanTensionField:= ADataSet.FieldByName(Format('PLAN_TNSN_%d', [ANo]));
      end;  { with }
  end;  { AssignFinancialRelationsTableFieldGroupFields }

  procedure SetFinancialRelationsTableFieldGroupValues(AFinancialRelationsTableFieldGroup: TFinancialRelationsTableFieldGroup);
  begin
    with AFinancialRelationsTableFieldGroup do
      begin
        PartnerOtchTensionField.AsVariant:= qryFinancialRelationsTablePARTNER_OTCH_TENSION.AsVariant;
        OurOtchTensionField.AsVariant:= qryFinancialRelationsTableOUR_OTCH_TENSION.AsVariant;
        OtchTensionField.AsVariant:= qryFinancialRelationsTableOTCH_TENSION.AsVariant;
        PartnerPlanRealTensionField.AsVariant:= qryFinancialRelationsTablePARTNER_PLAN_REAL_TENSION.AsVariant;
        PartnerPlanPotentialTensionField.AsVariant:= qryFinancialRelationsTablePARTNER_PLAN_POTENTIAL_TENSION.AsVariant;
        OurPlanRealTensionField.AsVariant:= qryFinancialRelationsTableOUR_PLAN_REAL_TENSION.AsVariant;
        OurPlanPotentialTensionField.AsVariant:= qryFinancialRelationsTableOUR_PLAN_POTENTIAL_TENSION.AsVariant;
        PartnerPlanTensionField.AsVariant:= qryFinancialRelationsTablePARTNER_PLAN_TENSION.AsVariant;
        OurPlanTensionField.AsVariant:= qryFinancialRelationsTableOUR_PLAN_TENSION.AsVariant;
        PlanTensionField.AsVariant:= qryFinancialRelationsTablePLAN_TENSION.AsVariant;
      end;  { with }
  end;  { SetPriceFieldGroupValues }

  procedure FillNonPeriodFieldMappings;
  var
    k: Integer;
  begin
    for k:= 0 to FFinancialRelationsTableNonPeriodFieldCount - 1 do
      begin
        SetLength(NonPeriodFieldMappings, Length(NonPeriodFieldMappings) + 1);
        NonPeriodFieldMappings[Length(NonPeriodFieldMappings)-1]:=
          qryFinancialRelationsTable.FieldByName(DataSet.Fields[k].FieldName);
      end;  { for }
  end;  { FillNonPeriodFieldMappings }

  procedure AssignNonPeriodFields;
  var
    k: Integer;
  begin
    for k:= 0 to FFinancialRelationsTableNonPeriodFieldCount - 1 do
      DataSet.Fields[k].AsVariant:= NonPeriodFieldMappings[k].AsVariant;
  end;  { AssignNonPeriodFields }

var
  i: Integer;
begin
  inherited;

  SetLength(FinancialRelationsTableFieldGroups, FFinancialRelationsTableDateUnitCount);
  for i:= 1 to FFinancialRelationsTableDateUnitCount do
    AssignFinancialRelationsTableFieldGroupFields(FinancialRelationsTableFieldGroups[i-1], i, DataSet);

  FirstPeriodDataFieldIndex:= 0;
  while (Pos('_TNSN', DataSet.Fields[FirstPeriodDataFieldIndex].FieldName) = 0) do
    Inc(FirstPeriodDataFieldIndex);

  FillNonPeriodFieldMappings;

  SaveAutoCalcFields:= qryFinancialRelationsTable.AutoCalcFields;
  qryFinancialRelationsTable.AutoCalcFields:= False;
  try
    qryFinancialRelationsTable.Open;
    try
      while not qryFinancialRelationsTable.Eof do
        begin
          DataSet.Append;
          try
            AssignNonPeriodFields;

            OldNullFieldCount:= 0;
            for i:= 0 to DataSet.FieldCount - 1 do
              Inc(OldNullFieldCount, Ord(DataSet.Fields[i].IsNull));

            PartnerCode:= qryFinancialRelationsTablePARTNER_CODE.AsInteger;
            while (not qryFinancialRelationsTable.Eof) and
                  (qryFinancialRelationsTablePARTNER_CODE.AsInteger = PartnerCode) do
              begin
                Assert(InRange(qryFinancialRelationsTableDATE_UNIT_NO.AsInteger, 1, FFinancialRelationsTableDateUnitCount));
                SetFinancialRelationsTableFieldGroupValues(
                  FinancialRelationsTableFieldGroups[qryFinancialRelationsTableDATE_UNIT_NO.AsInteger-1]);

                qryFinancialRelationsTable.Next;
              end;  { while }

            // clear zeros
            for i:= FirstPeriodDataFieldIndex to DataSet.FieldCount - 1 do
              if (DataSet.Fields[i].DataType = ftFloat) and
                 (not DataSet.Fields[i].IsNull) and
                 (DataSet.Fields[i].AsFloat = 0) then
                DataSet.Fields[i].Clear;

            NewNullFieldCount:= 0;
            for i:= 0 to DataSet.FieldCount - 1 do
              Inc(NewNullFieldCount, Ord(DataSet.Fields[i].IsNull));

            if (OldNullFieldCount = NewNullFieldCount) then
              DataSet.Cancel
            else
              DataSet.Post;
          except
            DataSet.Cancel;
            raise;
          end;
        end;  { while }
    finally
      qryFinancialRelationsTable.Close;
    end;
  finally
    qryFinancialRelationsTable.AutoCalcFields:= SaveAutoCalcFields;
  end;
end;

procedure TdmFinance.prvFinClassAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmFinance.prvFinClassBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmFinance.qryFinancialRelationsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);;
end;

procedure TdmFinance.qryFinancialRelationsGraphBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  (DataSet as TAbmesSQLQuery).MacroByName('THE_X_DATES').AsString:=
    GetDateUnitTableName(
      (DataSet as TAbmesSQLQuery).Params.ParamByName('DATE_UNIT_CODE').AsInteger);

  (DataSet as TAbmesSQLQuery).MacroByName('YEAR_X_NO').AsString:=
    GetYearDateUnitNoFieldName(
      (DataSet as TAbmesSQLQuery).Params.ParamByName('DATE_UNIT_CODE').AsInteger);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);
end;

procedure TdmFinance.qryFinancialRelationsTableBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  qryFinancialRelationsTable.Params.AssignValues(cdsFinancialRelationsTable.Params);
  qryFinancialRelationsTable.CustomParams.AssignValues(cdsFinancialRelationsTable.Params);

  (DataSet as TAbmesSQLQuery).MacroByName('THE_X_DATES').AsString:=
    GetDateUnitTableName(
      (DataSet as TAbmesSQLQuery).Params.ParamByName('DATE_UNIT_CODE').AsInteger);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);
end;

procedure TdmFinance.qryFinClassAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmFinance.prvFinModelLineReasonsBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  if (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('FIN_MODEL_LINE_REASON_CODE').NewValue:= GetNewFinModelLineReasonCode;
end;

initialization
  TdmFinanceProxy.FSingleton:= TdmFinanceProxy.Create(TdmFinance);

finalization
  FreeAndNil(TdmFinanceProxy.FSingleton);
end.
