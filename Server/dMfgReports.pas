unit dMfgReports;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, uPeriods, AbmesClientDataSet, JclDateTime,
  JvStringHolder, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock;

const
  MaxNoPos = 25;

type
  TMLLStagesDesc = record
    MLLCode: Integer;
    ParentMLLCode: Integer;
    StageCount: Integer;
    MaxStageNo: Integer;
    MinStageNo: Integer;
  end;

type
  TdmMfgReports = class(TDBPooledDataModule)
    qryModelStatusStages: TAbmesSQLQuery;
    mdModelStatusDetail: TAbmesClientDataSet;
    prvModelStatus: TDataSetProvider;
    qryModelStatus: TAbmesSQLQuery;
    prvModelStatusDetail: TDataSetProvider;
    qryModelStageCount: TAbmesSQLQuery;
    qryModelStageCountMLL_OBJECT_CODE: TAbmesFloatField;
    qryModelStageCountPARENT_MLL_OBJECT_CODE: TAbmesFloatField;
    qryModelStageCountSTAGE_COUNT: TAbmesFloatField;
    qryModelStatusStagesFORK_NO: TAbmesFloatField;
    qryModelStatusStagesDETAIL_NAME: TAbmesWideStringField;
    qryModelStatusStagesDETAIL_CUSTOM_CODE: TAbmesFloatField;
    qryModelStatusStagesDETAIL_MEASURE_ABBREV: TAbmesWideStringField;
    qryModelStatusStagesPRODUCT_NAME: TAbmesWideStringField;
    qryModelStatusStagesPRODUCT_CUSTOM_CODE: TAbmesFloatField;
    qryModelStatusStagesPRODUCT_WORK_MEASURE_ABBREV: TAbmesWideStringField;
    qryModelStatusStagesPRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryModelStatusStagesDETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryModelStatusStagesLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryModelStatusStagesPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryModelStatusStagesLINE_PRODUCT_WORK_QUANTITY: TAbmesFloatField;
    qryModelStatusStagesPLAN_TOTAL_PRICE: TAbmesFloatField;
    qryModelStatusStagesPULLED_QUANTITY: TAbmesFloatField;      
    qryModelStatusStagesPULLED_TOTAL_PRICE: TAbmesFloatField;
    qryModelStatusStagesML_MODEL_STAGE_NO: TAbmesFloatField;
    qryModelStatusStagesDEPT_IDENTIFIER: TAbmesWideStringField;
    qryModelStatusStagesPMM_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryModelStatusStagesMOVEMENT_DAYS: TAbmesFloatField;
    qryModelStatusStagesMOVED_QUANTITY: TAbmesFloatField;
    qryModelStatusStagesWASTED_QUANTITY: TAbmesFloatField;
    qryModelStatusStagesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryModelStatusStagesMLL_OBJECT_CODE: TAbmesFloatField;
    qryModelStatusStagesUNCOVERED_LINES: TAbmesFloatField;
    qryModelStatusStagesPMM_END_DATE: TAbmesSQLTimeStampField;
    qryArchiveModel: TAbmesSQLQuery;
    qryModelStatusML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryModelStatusML_OBJECT_CODE: TAbmesFloatField;
    qryModelStatusENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryModelStatusENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField;
    qryModelStatusSPEC_VERSION_NO: TAbmesFloatField;
    qryModelStatusSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryModelStatusIS_ARCHIVED: TAbmesFloatField;
    qryModelStatusLIMITING_EMPLOYEE_CODE: TAbmesFloatField;
    qryModelStatusLIMITING_EMPLOYEE_NAME: TAbmesWideStringField;
    qryModelStatusLIMITING_DATE: TAbmesSQLTimeStampField;
    qryModelStatusSTART_STAGE_COEF: TAbmesFloatField;
    qryModelStatusStagesPRODUCT_CODE: TAbmesFloatField;
    qryModelStatusStagesPRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryUnfinishedMfg: TAbmesSQLQuery;
    prvUnfinishedMfg: TDataSetProvider;
    qryUnfinishedMfgDEPT_CODE: TAbmesFloatField;
    qryUnfinishedMfgFORK_NO: TAbmesFloatField;
    qryUnfinishedMfgDETAIL_NAME: TAbmesWideStringField;
    qryUnfinishedMfgQUANTITY: TAbmesFloatField;
    qryUnfinishedMfgTOTAL_PRICE: TAbmesFloatField;
    qryUnfinishedMfgDETAIL_NO: TAbmesFloatField;
    qryUnfinishedMfgMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryUnfinishedMfgMLMS_OBJECT_CODE: TAbmesFloatField;
    prvModelStageCount: TDataSetProvider;
    cdsModelStageCount: TAbmesClientDataSet;
    cdsModelStageCountMLL_OBJECT_CODE: TAbmesFloatField;
    cdsModelStageCountPARENT_MLL_OBJECT_CODE: TAbmesFloatField;
    cdsModelStageCountSTAGE_COUNT: TAbmesFloatField;
    qryModelStatusStagesDETAIL_CODE: TAbmesFloatField;
    qryUnfinishedMfgNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryModelStatusStagesNO_AS_TEXT: TAbmesWideStringField;
    qryModelStatusStagesNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryCloseModel: TAbmesSQLQuery;
    qryModelStatusStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryModelStatusStagesNOTES: TAbmesWideStringField;
    qryUpdMllNotes: TAbmesSQLQuery;
    qryProductionOrders: TAbmesSQLQuery;
    prvProductionOrders: TDataSetProvider;
    qryProductionOrdersSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryProductionOrdersSALE_OBJECT_CODE: TAbmesFloatField;
    qryProductionOrdersML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryProductionOrdersML_OBJECT_CODE: TAbmesFloatField;
    qryProductionOrdersSALE_IDENTIFICATION: TAbmesWideStringField;
    qryProductionOrdersSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qryProductionOrdersSALE_TYPE_CODE: TAbmesFloatField;
    qryProductionOrdersML_STATE_CODE: TAbmesFloatField;
    qryProductionOrdersPRIORITY_CODE: TAbmesFloatField;
    qryProductionOrdersPRIORITY_FULL_NAME: TAbmesWideStringField;
    qryProductionOrdersOWNER_NAME: TAbmesWideStringField;
    qryProductionOrdersPRODUCT_CODE: TAbmesFloatField;
    qryProductionOrdersPRODUCT_NAME: TAbmesWideStringField;
    qryProductionOrdersPRODUCT_NO: TAbmesFloatField;
    qryProductionOrdersHAS_DOCUMENTATION: TAbmesFloatField;
    qryProductionOrdersPRODUCT_OTHER_NAME: TAbmesWideStringField;
    qryProductionOrdersMEASURE_CODE: TAbmesFloatField;
    qryProductionOrdersMEASURE_ABBREV: TAbmesWideStringField;
    qryProductionOrdersQUANTITY: TAbmesFloatField;
    qryProductionOrdersQUANTITY_IN: TAbmesFloatField;
    qryProductionOrdersQUANTITY_DEVIATION_PERCENT: TAbmesFloatField;
    qryProductionOrdersENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryProductionOrdersENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryProductionOrdersSTART_STAGE_COEF: TAbmesFloatField;
    qryProductionOrdersUNCOVERED_LINES: TAbmesFloatField;
    qryProductionOrdersMAIN_DEPT_CODE: TAbmesFloatField;
    qryProductionOrdersMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryProductionOrdersCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryProductionOrdersCREATE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryProductionOrdersCREATE_DATE: TAbmesSQLTimeStampField;
    qryProductionOrdersCREATE_TIME: TAbmesSQLTimeStampField;
    qryProductionOrdersCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryProductionOrdersCHANGE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryProductionOrdersCHANGE_DATE: TAbmesSQLTimeStampField;
    qryProductionOrdersCHANGE_TIME: TAbmesSQLTimeStampField;
    qryProductionOrdersFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    qryProductionOrdersFINISH_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryProductionOrdersFINISH_DATE: TAbmesSQLTimeStampField;
    qryProductionOrdersFINISH_TIME: TAbmesSQLTimeStampField;
    qryProductionOrdersANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryProductionOrdersANNUL_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryProductionOrdersANNUL_DATE: TAbmesSQLTimeStampField;
    qryProductionOrdersANNUL_TIME: TAbmesSQLTimeStampField;
    qryProductionOrdersLIMITING_DATE: TAbmesSQLTimeStampField;
    qryProductionOrdersLIMITING_TIME: TAbmesSQLTimeStampField;
    qryProductionOrdersLIMITING_EMPLOYEE_CODE: TAbmesFloatField;
    qryProductionOrdersLIMITING_EMPLOYEE_NAME: TAbmesWideStringField;
    qryProductionOrdersMODEL_CLOSE_DATE: TAbmesSQLTimeStampField;
    qryProductionOrdersMODEL_CLOSE_TIME: TAbmesSQLTimeStampField;
    qryProductionOrdersMODEL_CLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryProductionOrdersMODEL_CLOSE_EMPLOYEE_NAME: TAbmesWideStringField;
    qryModelStatusMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryModelStatusMLL_OBJECT_CODE: TAbmesFloatField;
    qryProductionOrdersIS_SALE: TAbmesFloatField;
    qryProductionOrdersMIN_PRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryModelStatusStagesMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryModelStatusStagesMLMS_OBJECT_CODE: TAbmesFloatField;
    qryModelStatusStagesMLL_HAS_STAGE_DOCUMENTATION: TAbmesFloatField;
    qryModelStatusStagesDETAIL_HAS_DOCUMENTATION: TAbmesFloatField;
    qryModelStatusStagesPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qryModelStatusStagesTOTAL_WASTE_DETAIL_TECH_QTY: TAbmesFloatField;
    qryModelStatusStagesNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    qryUnfinishedMfgNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    qryUnfinishedMfgML_MODEL_STAGE_NO: TAbmesFloatField;
    qryUnfinishedMfgDEPT_IDENTIFIER: TAbmesWideStringField;
    qryUnfinishedMfgDETAIL_MEASURE_CODE: TAbmesFloatField;
    qryUnfinishedMfgDETAIL_MEASURE_ABBREV: TAbmesWideStringField;
    qryUnfinishedMfgMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryUnfinishedMfgMLL_OBJECT_CODE: TAbmesFloatField;
    qryUnfinishedMfgML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryUnfinishedMfgML_OBJECT_CODE: TAbmesFloatField;
    qryUnfinishedMfgDETAIL_TECH_MEASURE_COEF: TAbmesFloatField;
    qryUnfinishedMfgTECH_QUANTITY: TAbmesFloatField;
    qryUnfinishedMfgTECH_SINGLE_PRICE: TAbmesFloatField;
    qryModelStatusStagesSTAGE_HAS_DOCUMENTATION: TAbmesFloatField;
    qryModelStatusStagesHAS_MLMSO_SPECIAL_CONTROL: TAbmesFloatField;
    qryModelStatusIS_OPERATIONS_MODEL: TAbmesFloatField;
    qryModelStatusML_STATE_CODE: TAbmesFloatField;
    qryModelStatusSALE_BRANCH_NO: TAbmesFloatField;
    qryModelStatusSALE_NO: TAbmesFloatField;
    qryModelStatusSALE_TYPE_ABBREV: TAbmesWideStringField;
    qryModelStatusSALE_DOC_BRANCH_CODE: TAbmesFloatField;
    qryModelStatusSALE_DOC_CODE: TAbmesFloatField;
    qryModelStatusSALE_HAS_DOCUMENTATION: TAbmesFloatField;
    qryModelStatusMANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    qryModelStatusMANAGER_EMPLOYEE_NAME: TAbmesWideStringField;
    qryModelStatusMIN_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qryModelStatusMAX_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qryModelStatusPRODUCTION_START_RESERVE_DAYS: TAbmesFloatField;
    qryModelStatusMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField;
    qryModelStatusMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField;
    qryModelStatusTECH_QUANTITY: TAbmesFloatField;
    qryModelStatusRESULT_STORE_CODE: TAbmesFloatField;
    qryModelStatusENTER_RES_STORE_RESERVE_DAYS: TAbmesFloatField;
    qryModelStatusMAIN_DEPT_CODE: TAbmesFloatField;
    qryModelStatusOKIDU_EMPLOYEE_CODE: TAbmesFloatField;
    qryModelStatusOKIDU_EMPLOYEE_NAME: TAbmesWideStringField;
    qryModelStatusIS_CLOSED: TAbmesFloatField;
    qryModelStatusTECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryModelStatusRESULT_PRODUCT_CODE: TAbmesFloatField;
    qryModelStatusNOTES: TAbmesWideStringField;
    qryModelStatusSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qryModelStatusStagesIS_SHRINKABLE: TAbmesFloatField;
    qryModelStatusStagesMLMS_DEPT_CODE: TAbmesFloatField;
    qryProductionOrdersOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    qryProductionOrdersOWNER_COMPANY_CODE: TAbmesFloatField;
    qryModelStatusMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField;
    qryModelStatusStagesUNCOVERED_CAPACITY_MLMSO_COUNT: TAbmesFloatField;
    prvModelsInvestedValues: TDataSetProvider;
    qryModelsInvestedValues: TAbmesSQLQuery;
    qryModelsInvestedValuesML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryModelsInvestedValuesML_OBJECT_CODE: TAbmesFloatField;
    qryModelsInvestedValuesML_STATE_CODE: TAbmesFloatField;
    qryModelsInvestedValuesSALE_IDENTIFICATION: TAbmesWideStringField;
    qryModelsInvestedValuesPRIORITY_FULL_NAME: TAbmesWideStringField;
    qryModelsInvestedValuesOWNER_NAME: TAbmesWideStringField;
    qryModelsInvestedValuesPRODUCT_CODE: TAbmesFloatField;
    qryModelsInvestedValuesPRODUCT_NAME: TAbmesWideStringField;
    qryModelsInvestedValuesPRODUCT_NO: TAbmesFloatField;
    qryModelsInvestedValuesPRODUCT_OTHER_NAME: TAbmesWideStringField;
    qryModelsInvestedValuesQUANTITY: TAbmesFloatField;
    qryModelsInvestedValuesMEASURE_ABBREV: TAbmesWideStringField;
    qryModelsInvestedValuesENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryModelsInvestedValuesENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryModelsInvestedValuesINVESTED_VALUE: TAbmesFloatField;
    qryModelsInvestedValuesPRIORITY_CODE: TAbmesFloatField;
    qryModelsInvestedValuesMEASURE_CODE: TAbmesFloatField;
    shActiveSaleCondition: TJvStrHolder;
    shUnifinishedMfgPastActive: TJvStrHolder;
    shUnifinishedMfgPresentAndFutureActive: TJvStrHolder;
    qryProductionOrderBaseTypes: TAbmesSQLQuery;
    prvProductionOrderBaseTypes: TDataSetProvider;
    qryProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    qryProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField;
    qryProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NAME: TAbmesWideStringField;
    qryProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_ABBREV: TAbmesWideStringField;
    qryUncoveredModels: TAbmesSQLQuery;
    prvUncoveredModels: TDataSetProvider;
    qryUncoveredModelsMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryUncoveredModelsMLL_OBJECT_CODE: TAbmesFloatField;
    qryUncoveredModelsML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryUncoveredModelsML_OBJECT_CODE: TAbmesFloatField;
    qryUncoveredModelsNO_AS_TEXT: TAbmesWideStringField;
    qryUncoveredModelsNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryUncoveredModelsFORK_NO: TAbmesFloatField;
    qryUncoveredModelsNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    qryUncoveredModelsDETAIL_CODE: TAbmesFloatField;
    qryUncoveredModelsDETAIL_NO: TAbmesFloatField;
    qryUncoveredModelsDETAIL_NAME: TAbmesWideStringField;
    qryUncoveredModelsDETAIL_HAS_DOC: TAbmesFloatField;
    qryUncoveredModelsDETAIL_TECH_MEASURE_CODE: TAbmesFloatField;
    qryUncoveredModelsDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryUncoveredModelsTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryUncoveredModelsMATERIAL_CODE: TAbmesFloatField;
    qryUncoveredModelsMATERIAL_NO: TAbmesFloatField;
    qryUncoveredModelsMATERIAL_NAME: TAbmesWideStringField;
    qryUncoveredModelsMATERIAL_HAS_DOC: TAbmesFloatField;
    qryUncoveredModelsMATERIAL_TECH_MEASURE_CODE: TAbmesFloatField;
    qryUncoveredModelsMATERIAL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryUncoveredModelsTOTAL_MATERIAL_QUANTITY: TAbmesFloatField;
    qryUncoveredModelsSTORE_IDENTIFIER: TAbmesWideStringField;
    qryUncoveredModelsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryUncoveredModelsPRIORITY_FULL_NAME: TAbmesWideStringField;
    qryUncoveredModelsPRIORITY_COLOR: TAbmesFloatField;
    qryUncoveredModelsPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryUncoveredModelsRESULT_PRODUCT_CODE: TAbmesFloatField;
    qryUncoveredModelsRESULT_PRODUCT_NO: TAbmesFloatField;
    qryUncoveredModelsRESULT_PRODUCT_NAME: TAbmesWideStringField;
    qryUncoveredModelsRESULT_PRODUCT_HAS_DOC: TAbmesFloatField;
    qryUncoveredModelsRESULT_PRODUCT_MEASURE_CODE: TAbmesFloatField;
    qryUncoveredModelsRESULT_PRODUCT_MEASURE_ABBREV: TAbmesWideStringField;
    qryUncoveredModelsRESULT_PRODUCT_QUANTITY: TAbmesFloatField;
    qryUncoveredModelsRESULT_PRODUCT_CLIENT_NAME: TAbmesWideStringField;
    qryUncoveredModelsMATERIAL_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryUncoveredModelsMATERIAL_NEED_END_DATE: TAbmesSQLTimeStampField;
    qryUncoveredModelsPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField;
    qryUncoveredModelsML_STATE_CODE: TAbmesFloatField;
    qryUncoveredModelsIS_WASTE_COMPENSATOR: TAbmesFloatField;
    qryUncoveredModelsHAS_WASTE: TAbmesFloatField;
    qryUncoveredModelsMODEL_START_DATE: TAbmesSQLTimeStampField;
    qryUnfinishedMfgPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField;
    qryModelStatusINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    qryModelStatusPRODUCTION_WORKDAYS: TAbmesFloatField;
    qryModelStatusMANUFACTURE_QUANTITY: TAbmesFloatField;
    qryModelStatusMEASURE_ABBREV: TAbmesWideStringField;
    qryModelStatusCOMPLETED_QUANTITY: TAbmesFloatField;
    qryModelStatusMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    qryModelStatusLINE_COUNT: TAbmesFloatField;
    qryModelStatusIS_WASTE_COMPENSATING_ORDER: TAbmesFloatField;
    qryModelStatusWASTING_SALE_OBJ_BRANCH_CODE: TAbmesFloatField;
    qryModelStatusWASTING_SALE_OBJ_CODE: TAbmesFloatField;
    qryModelStatusWASTING_SALE_BRANCH_NO: TAbmesFloatField;
    qryModelStatusWASTING_SALE_NO: TAbmesFloatField;
    qryModelStatusWASTING_ML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryModelStatusWASTING_ML_OBJECT_CODE: TAbmesFloatField;
    qryModelStatusPRIORITY_COLOR: TAbmesFloatField;
    qryModelStatusPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryModelStatusSALE_BRANCH_CODE: TAbmesFloatField;
    qryModelStatusPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryModelStatusDOC_BRANCH_CODE: TAbmesFloatField;
    qryModelStatusDOC_CODE: TAbmesFloatField;
    qryProductionOrdersIS_WASTE_COMPENSATOR: TAbmesFloatField;
    qryProductionOrdersHAS_WASTE: TAbmesFloatField;
    qryProductionOrdersQUANTITY_DIFF: TAbmesFloatField;
    qryProductionOrdersSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField;
    qryProductionOrdersPRODUCTION_START_DATE_DIFF: TAbmesFloatField;
    qryProductionOrdersENTER_SH_STORE_DATE_DIFF: TAbmesFloatField;
    qryProductionOrdersINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    qryProductionOrdersPRODUCTION_WORKDAYS: TAbmesFloatField;
    qryProductionOrdersMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField;
    qryProductionOrdersMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField;
    qryProductionOrdersPRODUCTION_WORKDAYS_PERCENT: TAbmesFloatField;
    qryProductionOrdersCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryProductionOrdersDOC_BRANCH_CODE: TAbmesFloatField;
    qryProductionOrdersDOC_CODE: TAbmesFloatField;
    qryModelsInvestedValuesIS_WASTE_COMPENSATOR: TAbmesFloatField;
    qryModelsInvestedValuesHAS_WASTE: TAbmesFloatField;
    qryModelsInvestedValuesCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryModelsInvestedValuesIS_SALE: TAbmesFloatField;
    qryProductionOrdersPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qryModelStatusHAS_WASTE: TAbmesFloatField;
    qryModelStatusWASTE_COMPENSATOR_COUNT: TAbmesFloatField;
    qryModelStatusSTART_AFTER_LIMITING_DAYS: TAbmesFloatField;
    qryProductionOrdersSTART_AFTER_LIMITING_DAYS: TAbmesFloatField;
    shUnarchivedModelCondition: TJvStrHolder;
    qryModelStatusPRIORITY_NO: TAbmesFloatField;
    qryModelStatusWORK_PRIORITY_NO: TAbmesFloatField;
    qryProductionOrdersWORK_PRIORITY_FULL_NAME: TAbmesWideStringField;
    qryProductionOrdersPRIORITY_NO: TAbmesFloatField;
    qryProductionOrdersWORK_PRIORITY_NO: TAbmesFloatField;
    qryUncoveredModelsPRIORITY_NO: TAbmesFloatField;
    qryUncoveredModelsWORK_PRIORITY_NO: TAbmesFloatField;
    qryUncoveredModelsWORK_PRIORITY_FULL_NAME: TAbmesWideStringField;
    qryUnfinishedMfgPRIORITY_NO: TAbmesFloatField;
    qryUnfinishedMfgPRIORITY_COLOR: TAbmesFloatField;
    qryUnfinishedMfgPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryUnfinishedMfgWORK_PRIORITY_NO: TAbmesFloatField;
    qryUnfinishedMfgDETAIL_HAS_DOC: TAbmesFloatField;
    qryUnfinishedMfgDETAIL_CODE: TAbmesFloatField;
    qryModelStatusCOMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryProductionOrdersCONSUME_DATE_DIFF: TAbmesFloatField;
    qryProductionOrdersCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryProductionOrdersCONSUME_END_DATE: TAbmesSQLTimeStampField;
    shCompensatorsForAWastingSaleCondition: TJvStrHolder;
    qryPrepareUncoveredPSD: TAbmesSQLQuery;
    qryUnprepareUncoveredPSD: TAbmesSQLQuery;
    qryPrepareUncoveredPSDByModel: TAbmesSQLQuery;
    qryModelsInvestedValuesWORK_PRIORITY_FULL_NAME: TAbmesWideStringField;
    qryModelsInvestedValuesINVESTED_VALUE_IS_INCOMPLETE: TAbmesFloatField;
    qryProductionOrdersDAMAGES_STATE_CODE: TAbmesFloatField;
    qryUncoveredModelsDETAIL_MEASURE_ABBREV: TAbmesWideStringField;
    qryUncoveredModelsTOTAL_DETAIL_QUANTITY: TAbmesFloatField;
    qryUncoveredModelsDETAIL_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    qryUncoveredModelsTOTAL_DETAIL_ACC_QUANTITY: TAbmesFloatField;
    qryUncoveredModelsTOTAL_MATERIAL_TECH_QUANTITY: TAbmesFloatField;
    qryUncoveredModelsMATERIAL_MEASURE_ABBREV: TAbmesWideStringField;
    qryUncoveredModelsMATERIAL_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    qryUncoveredModelsTOTAL_MATERIAL_ACC_QUANTITY: TAbmesFloatField;
    qryUncoveredModelsRESULT_PR_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryUncoveredModelsRESULT_PROD_TECH_QUANTITY: TAbmesFloatField;
    qryUncoveredModelsRESULT_PROD_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    qryUncoveredModelsRESULT_PROD_ACC_QUANTITY: TAbmesFloatField;
    qryUncoveredModelsRESULT_PR_TECH_MEASURE_CODE: TAbmesFloatField;
    qryUncoveredModelsRESULT_PROD_ACC_MEASURE_CODE: TAbmesFloatField;
    qryModelStatusStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    qryModelStatusStagesMLMS_DOC_BRANCH_CODE: TAbmesFloatField;
    qryModelStatusStagesMLMS_DOC_CODE: TAbmesFloatField;
    qryModelStatusStagesMLMS_HAS_DOC_ITEMS: TAbmesFloatField;
    qryProductionOrdersHAS_WASTE_COMPENSATORS: TAbmesFloatField;
    qryModelsInvestedValuesHAS_WASTE_COMPENSATORS: TAbmesFloatField;
    qryProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NAME_PL: TAbmesWideStringField;
    qryProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_ABBREV_PL: TAbmesWideStringField;
    qryModelStatusMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField;
    qryProductionOrdersWASTING_SALE_OBJ_PK: TAbmesWideStringField;
    qryProductionOrdersSALE_OBJECT_PK: TAbmesWideStringField;
    qryModelsInvestedValuesSALE_OBJECT_PK: TAbmesWideStringField;
    qryModelsInvestedValuesWASTING_SALE_OBJ_PK: TAbmesWideStringField;
    qryModelsInvestedValuesSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryModelsInvestedValuesSALE_OBJECT_CODE: TAbmesFloatField;
    qryModelStatusPRODUCTION_START_PLAN_DATE: TAbmesSQLTimeStampField;
    qryUncoveredModelsUNCOVERED_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryUncoveredModelsUNCOVERED_DETAIL_QUANTITY: TAbmesFloatField;
    qryUncoveredModelsUNCOVERED_DETAIL_ACC_QUANTITY: TAbmesFloatField;
    qryUncoveredModelsUNCOVERED_MATERIAL_QUANTITY: TAbmesFloatField;
    qryUncoveredModelsUNCOVERED_MTRL_TECH_QUANTITY: TAbmesFloatField;
    qryUncoveredModelsUNCOVERED_MTRL_ACC_QUANTITY: TAbmesFloatField;
    qryProductionOrdersMIN_ORDER_QUANTITY: TAbmesFloatField;
    qryProductionOrdersMAX_ORDER_QUANTITY: TAbmesFloatField;
    qryProductionOrdersBALANCE_QUANTITY: TAbmesFloatField;
    qryProductionOrdersQUANTITY_INTERVAL_PCT: TAbmesFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure prvModelStatusDetailGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvModelStatusDetailBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvModelStatusDetailAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryModelStatusStagesBeforeOpen(DataSet: TDataSet);
    procedure qryModelStatusStagesAfterClose(DataSet: TDataSet);
    procedure prvModelStatusBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryUnfinishedMfgBeforeOpen(DataSet: TDataSet);
    procedure prvModelStatusDetailBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryProductionOrdersBeforeOpen(DataSet: TDataSet);
    procedure qryProductionOrdersAfterClose(DataSet: TDataSet);
    procedure prvProductionOrdersGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure qryUnfinishedMfgCalcFields(DataSet: TDataSet);
    procedure qryUnfinishedMfgAfterClose(DataSet: TDataSet);
    procedure prvModelStatusDetailGetDataSetProperties(Sender: TObject;
      DataSet: TDataSet; out Properties: OleVariant);
    procedure qryModelsInvestedValuesBeforeOpen(DataSet: TDataSet);
    procedure qryModelsInvestedValuesAfterClose(DataSet: TDataSet);
    procedure qryUncoveredModelsBeforeOpen(DataSet: TDataSet);
    procedure qryUncoveredModelsAfterClose(DataSet: TDataSet);
    procedure qryProductionOrdersCalcFields(DataSet: TDataSet);
    procedure prvUncoveredModelsGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
  private
    FModelStatusParams: TParams;
    MLL: array of TMLLStagesDesc;
    FShowUncoveredLines: Boolean;
    FCapacityStatus: Boolean;
  protected
    procedure CreateDataSetStructure;

    procedure ArchiveModel(MLObjectBranchCode: Integer; MLObjectCode: Integer);
    procedure UnArchiveModel(MLObjectBranchCode: Integer; MLObjectCode: Integer);
    procedure CloseModel(MLObjectBranchCode: Integer; MLObjectCode: Integer);
  end;

type
  IdmMfgReportsProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmMfgReportsProxy = class(TDBPooledDataModuleProxy, IdmMfgReportsProxy)
  private
    class var FSingleton: TdmMfgReportsProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmMfgReports>;
  strict protected
    property LockedInstance: ISmartLock<TdmMfgReports> read GetLockedInstance;
  public
    class property Singleton: TdmMfgReportsProxy read FSingleton;

    procedure ArchiveModel(MLObjectBranchCode: Integer; MLObjectCode: Integer);
    procedure UnArchiveModel(MLObjectBranchCode: Integer; MLObjectCode: Integer);
    procedure CloseModel(MLObjectBranchCode: Integer; MLObjectCode: Integer);
  end;

implementation

uses
  Variants, Math, uDBPooledDataModuleHelper, uTreeNodes, uUtils,
  uSvrUtils, uXMLUtils;

{$R *.DFM}

const
  UpArrow = '­';
  RightArrow = '®';
  RightTransitArrow = 'Ю';

  SFloatFieldDisplayFormat = ',0.##';
  StringFieldsSize = 250;
  mfgtOtch = 1;
  mfgtPlan = 2;
  eps = 0.01;

{ TdmMfgReportsProxy }

function TdmMfgReportsProxy.GetLockedInstance: ISmartLock<TdmMfgReports>;
begin
  Result:= ISmartLock<TdmMfgReports>(inherited LockedInstance);
end;

procedure TdmMfgReportsProxy.ArchiveModel(MLObjectBranchCode,
  MLObjectCode: Integer);
begin
  LockedInstance.Value.ArchiveModel(MLObjectBranchCode, MLObjectCode);
end;

procedure TdmMfgReportsProxy.CloseModel(MLObjectBranchCode,
  MLObjectCode: Integer);
begin
  LockedInstance.Value.CloseModel(MLObjectBranchCode, MLObjectCode);
end;

procedure TdmMfgReportsProxy.UnArchiveModel(MLObjectBranchCode,
  MLObjectCode: Integer);
begin
  LockedInstance.Value.UnArchiveModel(MLObjectBranchCode, MLObjectCode);
end;

{ TdmMfgReports }

procedure TdmMfgReports.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FModelStatusParams:= TParams.Create;
end;

procedure TdmMfgReports.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FModelStatusParams);
end;

procedure TdmMfgReports.prvModelStatusDetailGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  MLLObjectBranchCode, MLLObjectCode: Integer;
  StageNo: Integer;
  MLLNo: Integer;
  ra: string;
  MovementDays, PassedDays: Integer;
  StageWarning: Boolean;
  LevelWarnings: array[0..MaxNoPos + 1] of Boolean;
  HasChildrenWarnings: Boolean;
  i: Integer;
  PriorLevel: Integer;
  Level: Integer;

  function GetMLLNo(MLLCode: Integer): Integer;
  var
    i: Integer;
    begin
      for i:= Low(MLL) + 1 to High(MLL) do
        if MLL[i].MLLCode = MLLCode then
          begin
            Result:= i;
            Exit;
          end;
      raise Exception.Create('Internal error: needed MODEl row not found');
    end;

  function GetLevel: Integer;
  var
    i: Integer;
  begin
    if (DataSet.FieldByName('FORK_NO').AsInteger > 0) then
      Result:= MaxNoPos
    else
      with DataSet.FieldByName('NO_AS_TEXT') do
        begin
          if (AsString = '0') then
            Result:= 0
          else
            begin
              Result:= 1;
              for i:= 1 to Length(AsString) do
                if (AsString[i] = '.') then
                  Inc(Result);
            end;
        end;  { with }
  end;

var
  MovementIntervalDateFormat: string;
begin
  inherited;

  if LoginContext.WeekDateFormatting then
    MovementIntervalDateFormat:= 'w\e'
  else
    MovementIntervalDateFormat:= Format('dd%smm', [FormatSettings.DateSeparator]);

  with qryModelStatusStages do
    begin
      ParamByName('ML_OBJECT_BRANCH_CODE').AsFloat:= FModelStatusParams.ParamByName('ML_OBJECT_BRANCH_CODE').AsFloat;
      ParamByName('ML_OBJECT_CODE').AsFloat:= FModelStatusParams.ParamByName('ML_OBJECT_CODE').AsFloat;
      ParamByName('CAPACITY_STATUS').AsFloat:= Ord(FCapacityStatus);
      Open;
      try
        MLLObjectBranchCode:= 0;
        MLLObjectCode:= 0;
        StageNo:= 0;
        MLLNo:= 0;
        while not Eof do
          begin
            if (qryModelStatusStagesMLL_OBJECT_BRANCH_CODE.AsFloat <> MLLObjectBranchCode) or
               (qryModelStatusStagesMLL_OBJECT_CODE.AsFloat <> MLLObjectCode) then
              begin
                MLLObjectBranchCode:= qryModelStatusStagesMLL_OBJECT_BRANCH_CODE.AsInteger;
                MLLObjectCode:= qryModelStatusStagesMLL_OBJECT_CODE.AsInteger;
                MLLNo:= GetMLLNo(MLLObjectCode);
                StageNo:= MLL[MLLNo].MinStageNo - 1;
                with DataSet do
                  begin
                    Insert;
                    FieldByName('MLL_OBJECT_BRANCH_CODE').AsFloat:= qryModelStatusStagesMLL_OBJECT_BRANCH_CODE.AsFloat;
                    FieldByName('MLL_OBJECT_CODE').AsFloat:= qryModelStatusStagesMLL_OBJECT_CODE.AsFloat;
                    if qryModelStatusStagesPRODUCT_CODE.IsNull then
                      FieldByName('PRODUCT_CODE').Clear
                    else
                      FieldByName('PRODUCT_CODE').AsInteger:= qryModelStatusStagesPRODUCT_CODE.AsInteger;
                    FieldByName('PRODUCT_NEED_BEGIN_DATE').AsDateTime:= qryModelStatusStagesPRODUCT_NEED_BEGIN_DATE.AsDateTime;

                    if qryModelStatusStagesIS_SHRINKABLE.AsBoolean then
                      FieldByName('IS_SHRUNK').AsInteger:= 0;

                    FieldByName('NO_AS_TEXT').AsString:= qryModelStatusStagesNO_AS_TEXT.AsString;
                    FieldByName('NO_AS_FORMATED_TEXT').AsString:= qryModelStatusStagesNO_AS_FORMATED_TEXT.AsString;
                    FieldByName('NO_AS_FORMATED_TEXT_EX').AsString:= qryModelStatusStagesNO_AS_FORMATED_TEXT_EX.AsString;
                    FieldByName('FORK_NO').AsFloat:= qryModelStatusStagesFORK_NO.AsFloat;
                    FieldByName('DETAIL_CODE').AsInteger:= qryModelStatusStagesDETAIL_CODE.AsInteger;
                    FieldByName('DETAIL_NAME').AsString:= qryModelStatusStagesDETAIL_NAME.AsString;
                    FieldByName('DETAIL_CUSTOM_CODE').AsFloat:= qryModelStatusStagesDETAIL_CUSTOM_CODE.AsFloat;
                    FieldByName('NOTES').AsVariant:= qryModelStatusStagesNOTES.AsVariant;
                    FieldByName('MLL_HAS_STAGE_DOCUMENTATION').AsString:= qryModelStatusStagesMLL_HAS_STAGE_DOCUMENTATION.DisplayText;
                    FieldByName('DETAIL_HAS_DOCUMENTATION').AsString:= qryModelStatusStagesDETAIL_HAS_DOCUMENTATION.DisplayText;
                    FieldByName('PRODUCT_HAS_DOCUMENTATION').AsString:= qryModelStatusStagesPRODUCT_HAS_DOCUMENTATION.DisplayText;

                    if qryModelStatusStagesDETAIL_TECH_QUANTITY.IsNull then
                      FieldByName('DETAIL_TECH_QUANTITY').Clear
                    else
                      FieldByName('DETAIL_TECH_QUANTITY').AsFloat:= qryModelStatusStagesDETAIL_TECH_QUANTITY.AsFloat;

                    FieldByName('LINE_DETAIL_TECH_QUANTITY').AsFloat:= qryModelStatusStagesLINE_DETAIL_TECH_QUANTITY.AsFloat;
                    FieldByName('DETAIL_MEASURE_ABBREV').AsString:= qryModelStatusStagesDETAIL_MEASURE_ABBREV.AsString;

                    FieldByName('PRODUCT_NAME').AsString:= qryModelStatusStagesPRODUCT_NAME.AsString;

                    if qryModelStatusStagesPRODUCT_NAME.IsNull then
                      begin
                        FieldByName('PRODUCT_CUSTOM_CODE').Clear;
                        FieldByName('PRODUCT_WORK_MEASURE_ABBREV').Clear;
                        FieldByName('PRODUCT_TECH_MEASURE_ABBREV').Clear;
                        FieldByName('PRODUCT_TECH_QUANTITY').Clear;
                        FieldByName('LINE_PRODUCT_WORK_QUANTITY').Clear;
                        FieldByName('PLAN_TOTAL_PRICE').Clear;
                        FieldByName('PULLED_QUANTITY').Clear;
                        FieldByName('PULLED_TOTAL_PRICE').Clear;
                      end
                    else
                      begin
                        FieldByName('PRODUCT_CUSTOM_CODE').AsFloat:= qryModelStatusStagesPRODUCT_CUSTOM_CODE.AsFloat;
                        FieldByName('PRODUCT_WORK_MEASURE_ABBREV').AsString:= qryModelStatusStagesPRODUCT_WORK_MEASURE_ABBREV.AsString;
                        FieldByName('PRODUCT_TECH_MEASURE_ABBREV').AsString:= qryModelStatusStagesPRODUCT_TECH_MEASURE_ABBREV.AsString;
                        FieldByName('PRODUCT_TECH_QUANTITY').AsFloat:= qryModelStatusStagesPRODUCT_TECH_QUANTITY.AsFloat;
                        FieldByName('LINE_PRODUCT_WORK_QUANTITY').AsFloat:= qryModelStatusStagesLINE_PRODUCT_WORK_QUANTITY.AsFloat;
                        FieldByName('PLAN_TOTAL_PRICE').AsFloat:= qryModelStatusStagesPLAN_TOTAL_PRICE.AsFloat;
                        FieldByName('PULLED_QUANTITY').AsFloat:= qryModelStatusStagesPULLED_QUANTITY.AsFloat;
                        FieldByName('PULLED_TOTAL_PRICE').AsFloat:= qryModelStatusStagesPULLED_TOTAL_PRICE.AsFloat;
                      end;

                    FieldByName('UNCOVERED_LINES').AsInteger:=
                      Ord(qryModelStatusStagesUNCOVERED_LINES.AsFloat > 0);

                    FieldByName('HAS_WARNINGS').AsInteger:= Ord(False);

                    Post;
                  end;
              end;

            Inc(StageNo);
            with DataSet do
              if Locate('MLL_OBJECT_BRANCH_CODE; MLL_OBJECT_CODE',
                   VarArrayOf([MLLObjectBranchCode, MLLObjectCode]), []) then
                begin
                  Edit;

                  FieldByName('MLMS_OBJECT_BRANCH_CODE_' + IntToStr(StageNo)).AsInteger:=
                    qryModelStatusStagesMLMS_OBJECT_BRANCH_CODE.AsInteger;
                  FieldByName('MLMS_OBJECT_CODE_' + IntToStr(StageNo)).AsInteger:=
                    qryModelStatusStagesMLMS_OBJECT_CODE.AsInteger;

                  FieldByName('MLMS_DEPT_CODE_' + IntToStr(StageNo)).AsInteger:=
                    qryModelStatusStagesMLMS_DEPT_CODE.AsInteger;
                  FieldByName('MLMS_IDENTIFIER_' + IntToStr(StageNo)).AsString:=
                    FloatToStr(qryModelStatusStagesML_MODEL_STAGE_NO.AsFloat) + ':' +
                    qryModelStatusStagesDEPT_IDENTIFIER.AsString +
                    qryModelStatusStagesHAS_MLMSO_SPECIAL_CONTROL.AsString +
                    qryModelStatusStagesSTAGE_HAS_DOCUMENTATION.AsString;
                  FieldByName('MLMS_DOC_BRANCH_CODE_' + IntToStr(StageNo)).AsInteger:=
                    qryModelStatusStagesMLMS_DOC_BRANCH_CODE.AsInteger;
                  FieldByName('MLMS_DOC_CODE_' + IntToStr(StageNo)).AsInteger:=
                    qryModelStatusStagesMLMS_DOC_CODE.AsInteger;
                  FieldByName('MLMS_HAS_DOC_ITEMS_' + IntToStr(StageNo)).AsInteger:=
                    qryModelStatusStagesMLMS_HAS_DOC_ITEMS.AsInteger;

                  if StageNo < MLL[1].MaxStageNo then
                    begin
                      if (not qryModelStatusStagesPMM_BEGIN_DATE.IsNull) and
                         ( (qryModelStatusStagesNO_AS_TEXT.AsString = '0') or
                           (qryModelStatusStagesOUTGOING_WORKDAYS.AsInteger > 0) ) then
                        begin
                          FieldByName('MOVEMENT_INTERVAL_' + IntToStr(StageNo)).AsString:=
                            JclDateTime.FormatDateTime(MovementIntervalDateFormat, qryModelStatusStagesPMM_BEGIN_DATE.AsDateTime) + '-' +
                            FloatToStr(qryModelStatusStagesMOVEMENT_DAYS.AsFloat);
                          FieldByName('PMM_BEGIN_DATE_' + IntToStr(StageNo)).AsDateTime:=
                            qryModelStatusStagesPMM_BEGIN_DATE.AsDateTime;
                          FieldByName('PMM_END_DATE_' + IntToStr(StageNo)).AsDateTime:=
                            qryModelStatusStagesPMM_END_DATE.AsDateTime;
                        end
                      else
                        FieldByName('MOVEMENT_INTERVAL_'+ IntToStr(StageNo)).Clear;

                      if (qryModelStatusStagesMOVED_QUANTITY.AsFloat > 0) or
                         (qryModelStatusStagesWasted_QUANTITY.AsFloat > 0) then
                         begin
                           FieldByName('QUANTITY_' + IntToStr(StageNo)).AsString:=
                             FormatFloat(',0.##', qryModelStatusStagesMOVED_QUANTITY.AsFloat) +
                             '(' +
                             FormatFloat(',0.##', qryModelStatusStagesWASTED_QUANTITY.AsFloat) +
                             ')';
                           FieldBYName('MOVED_QUANTITY_' + IntToStr(StageNo)).AsFloat:=
                             qryModelStatusStagesMOVED_QUANTITY.AsFloat;
                           FieldBYName('TOTAL_WASTE_DETAIL_TECH_QTY_' + IntToStr(StageNo)).AsFloat:=
                             qryModelStatusStagesTOTAL_WASTE_DETAIL_TECH_QTY.AsFloat;
                         end
                      else
                        begin
                          FieldByName('QUANTITY_' + IntToStr(StageNo)).Clear;
                          FieldBYName('MOVED_QUANTITY_' + IntToStr(StageNo)).Clear;
                          FieldBYName('TOTAL_WASTE_DETAIL_TECH_QTY_' + IntToStr(StageNo)).Clear;
                        end;

                      if FCapacityStatus then
                        FieldBYName('UNCOVERED_CAPACITY_' + IntToStr(StageNo)).AsInteger:=
                          Ord(qryModelStatusStagesUNCOVERED_CAPACITY_MLMSO_COUNT.AsInteger > 0);

                      if StageNo = MLL[MLLNo].MaxStageNo then
                        FieldByName('MLMS_POINTER_' + IntToStr(StageNo)).AsString:= UpArrow
                      else
                        begin
                          if qryModelStatusStagesIS_AUTO_MOVEMENT.AsBoolean then
                            ra:= RightTransitArrow
                          else
                            ra:= RightArrow;

                          FieldByName('MLMS_POINTER_' + IntToStr(StageNo)).AsString:= ra;
                        end;

                      // smetki za warningi po reda
                      StageWarning:= False;
                      if FCapacityStatus then
                        begin
                          StageWarning:= (qryModelStatusStagesUNCOVERED_CAPACITY_MLMSO_COUNT.AsInteger > 0);
                        end
                      else
                        begin
                          if (not qryModelStatusStagesPMM_BEGIN_DATE.IsNull) and
                             ( (qryModelStatusStagesNO_AS_TEXT.AsString = '0') or
                               (qryModelStatusStagesOUTGOING_WORKDAYS.AsInteger > 0) ) and
                             (qryModelStatusStagesMOVED_QUANTITY.AsFloat + 0.1 <
                              qryModelStatusStagesLINE_DETAIL_TECH_QUANTITY.AsFloat -
                              qryModelStatusStagesTOTAL_WASTE_DETAIL_TECH_QTY.AsFloat) then
                            begin
                              if (qryModelStatusStagesPMM_END_DATE.AsDateTime < ContextDate) then
                                StageWarning:= True
                              else
                                begin
                                  if (qryModelStatusStagesPMM_BEGIN_DATE.AsDateTime < ContextDate) then
                                    begin
                                      MovementDays:=
                                        Trunc(
                                          qryModelStatusStagesPMM_END_DATE.AsDateTime -
                                          qryModelStatusStagesPMM_BEGIN_DATE.AsDateTime + 1
                                        );

                                      PassedDays:=
                                        Trunc(ContextDate - qryModelStatusStagesPMM_BEGIN_DATE.AsDateTime);

                                      StageWarning:=
                                        (qryModelStatusStagesMOVED_QUANTITY.AsFloat + 0.1 <
                                         (PassedDays / MovementDays) *
                                         (qryModelStatusStagesLINE_DETAIL_TECH_QUANTITY.AsFloat -
                                          qryModelStatusStagesTOTAL_WASTE_DETAIL_TECH_QTY.AsFloat));
                                    end;
                                end;
                            end;
                        end;

                      with FieldByName('HAS_WARNINGS') do
                        AsInteger:= Ord(Boolean(AsInteger) or StageWarning);
                    end;

                  with FieldByName('UNCOVERED_CAPACITY_STAGE_COUNT') do
                    AsInteger:= AsInteger + Sign(qryModelStatusStagesUNCOVERED_CAPACITY_MLMSO_COUNT.AsInteger);

                  with FieldByName('UNCOVERED_CAPACITY_MLMSO_COUNT') do
                    AsInteger:= AsInteger + qryModelStatusStagesUNCOVERED_CAPACITY_MLMSO_COUNT.AsInteger;

                  Post;
                end;
            Next;
          end;
      finally
        Close;
      end;
    end;

  with DataSet do
    begin
      TClientDataSet(DataSet).IndexFieldNames:= 'NO_AS_FORMATED_TEXT_EX; FORK_NO';

      PriorLevel:= 0;
      Last;
      while not Bof do
        begin
          Level:= GetLevel;

          if (Level >= PriorLevel) then
            for i:= PriorLevel + 1 to MaxNoPos + 1 do
              LevelWarnings[i]:= False;

          LevelWarnings[Level]:=
            LevelWarnings[Level] or Boolean(FieldByName('HAS_WARNINGS').AsInteger);

          HasChildrenWarnings:= False;
          for i:= (Level + 1) to (MaxNoPos + 1) do
            HasChildrenWarnings:= HasChildrenWarnings or LevelWarnings[i];

          Edit;
          try
            FieldByName('HAS_CHILDREN_WARNINGS').AsInteger:= Ord(HasChildrenWarnings);
            Post;
          except
            Cancel;
            raise;
          end;  { try }

          PriorLevel:= Level;

          Prior;
        end;  { while }
    end;  { with }
end;

procedure TdmMfgReports.prvModelStatusDetailBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  Assert(not VarIsEmpty(OwnerData), 'Parameters not received from the client');
  UnpackParams(OwnerData[0], FModelStatusParams);
  FShowUncoveredLines:= OwnerData[1];
  FCapacityStatus:= OwnerData[2];
  CreateDataSetStructure;
  mdModelStatusDetail.CreateDataSet;
end;

procedure TdmMfgReports.CreateDataSetStructure;
const
  FieldsWithoutFormatCount = 11;
  FieldsWithoutFormat: array [1..FieldsWithoutFormatCount] of string =
    ('MLL_OBJECT_BRANCH_CODE','MLL_OBJECT_CODE',
     'NO_AS_TEXT','NO_AS_FORMATED_TEXT','FORK_NO',
     'DETAIL_CUSTOM_CODE','PRODUCT_CUSTOM_CODE', 'NOTES',
     'MLL_HAS_STAGE_DOCUMENTATION', 'DETAIL_HAS_DOCUMENTATION',
     'PRODUCT_HAS_DOCUMENTATION');
var
  i: Integer;

  function CheckFieldName(AName: string): Boolean;
  var
    i: Integer;
  begin
    for i:= 1 to FieldsWithoutFormatCount do
      if AName = FieldsWithoutFormat[i] then
        begin
          Result:= True;
          Exit;
        end;
    Result:= False;
  end;

  procedure CreateAndAddFieldToDataSet(AFieldClass: TFieldClass; AName: string);
  var
    AField: TField;
  begin
    AField:= AFieldClass.Create(Self);

    with AField do
      begin
        FieldName := AName;
        Name := mdModelStatusDetail.Name + FieldName;
        Index := mdModelStatusDetail.FieldCount;
        DataSet := mdModelStatusDetail;

        if (AFieldClass = TAbmesWideStringField) then
          begin
            Size:= StringFieldsSize;
            (AField as TAbmesWideStringField).Alignment:= taLeftJustify;
          end;
        if (AFieldClass = TAbmesFloatField) then
          begin
            if (not CheckFieldName(AName)) then
              (AField as TAbmesFloatField).DisplayFormat:= SFloatFieldDisplayFormat;
            (AField as TAbmesFloatField).Alignment:= taRightJustify;
          end;
      end;
  end;

  procedure FindMaxStageNo(MLLNo: Integer);
  var
    i: Integer;
    MaxStageNoChild: Integer;
  begin
    MaxStageNoChild:= 0;
    for i:= Low(MLL) + 1 to High(MLL) do
      if MLL[i].ParentMLLCode = MLL[MLLNo].MLLCode then
        begin
          FindMaxStageNo(i);
          if MaxStageNoChild < MLL[i].MaxStageNo then
            MaxStageNoChild:= MLL[i].MaxStageNo;
        end;
    if MaxStageNoChild = 0 then
      MLL[MLLNo].MaxStageNo:= MLL[MLLNo].StageCount
    else
      MLL[MLLNo].MaxStageNo:= MaxStageNoChild + MLL[MLLNo].StageCount - 1;
  end;

  procedure EvaluateStageNo(MLLNo,PrevMinStageNo: Integer);
  var
    i: Integer;
  begin
    if PrevMinStageNo <> 0 then
      MLL[MLLNo].MaxStageNo:= PrevMinStageNo;

    MLL[MLLNo].MinStageNo:= MLL[MLLNo].MaxStageNo - MLL[MLLNo].StageCount + 1;

    for i:= Low(MLL) + 1 to High(MLL) do
      if MLL[i].ParentMLLCode = MLL[MLLNo].MLLCode then
        EvaluateStageNo(i, MLL[MLLNo].MinStageNo);
  end;

begin
  mdModelStatusDetail.Fields.Clear;
  mdModelStatusDetail.FieldDefs.Clear;

  CreateAndAddFieldToDataSet(TAbmesFloatField, 'MLL_OBJECT_BRANCH_CODE');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'MLL_OBJECT_CODE');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'PRODUCT_CODE');
  CreateAndAddFieldToDataSet(TSQLTimeStampField, 'PRODUCT_NEED_BEGIN_DATE');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'IS_SHRUNK');
  CreateAndAddFieldToDataSet(TAbmesWideStringField, 'NO_AS_TEXT');
  CreateAndAddFieldToDataSet(TAbmesWideStringField, 'NO_AS_FORMATED_TEXT');
  CreateAndAddFieldToDataSet(TAbmesWideStringField, 'NO_AS_FORMATED_TEXT_EX');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'FORK_NO');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'HAS_CHILDREN_WARNINGS');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'HAS_WARNINGS');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'DETAIL_CODE');
  CreateAndAddFieldToDataSet(TAbmesWideStringField, 'DETAIL_NAME');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'DETAIL_CUSTOM_CODE');
  CreateAndAddFieldToDataSet(TAbmesWideStringField, 'DETAIL_HAS_DOCUMENTATION');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'DETAIL_TECH_QUANTITY');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'LINE_DETAIL_TECH_QUANTITY');
  CreateAndAddFieldToDataSet(TAbmesWideStringField, 'DETAIL_MEASURE_ABBREV');
  CreateAndAddFieldToDataSet(TAbmesWideStringField, 'PRODUCT_NAME');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'PRODUCT_CUSTOM_CODE');
  CreateAndAddFieldToDataSet(TAbmesWideStringField, 'PRODUCT_HAS_DOCUMENTATION');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'PRODUCT_TECH_QUANTITY');
  CreateAndAddFieldToDataSet(TAbmesWideStringField, 'PRODUCT_TECH_MEASURE_ABBREV');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'LINE_PRODUCT_WORK_QUANTITY');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'PULLED_QUANTITY');
  CreateAndAddFieldToDataSet(TAbmesWideStringField, 'PRODUCT_WORK_MEASURE_ABBREV');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'PLAN_TOTAL_PRICE');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'PULLED_TOTAL_PRICE');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'UNCOVERED_LINES');
  CreateAndAddFieldToDataSet(TAbmesWideStringField, 'NOTES');
  CreateAndAddFieldToDataSet(TAbmesWideStringField, 'MLL_HAS_STAGE_DOCUMENTATION');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'UNCOVERED_CAPACITY_STAGE_COUNT');
  CreateAndAddFieldToDataSet(TAbmesFloatField, 'UNCOVERED_CAPACITY_MLMSO_COUNT');

  with cdsModelStageCount do
    begin
      Params.ParamByName('ML_OBJECT_BRANCH_CODE').AsFloat:=
        FModelStatusParams.ParamByName('ML_OBJECT_BRANCH_CODE').AsFloat;
      Params.ParamByName('ML_OBJECT_CODE').AsFloat:=
        FModelStatusParams.ParamByName('ML_OBJECT_CODE').AsFloat;
      Open;
      try
        SetLength(MLL, RecordCount + 1);
        i:= 0;
        while not Eof do
          begin
            Inc(i);
            MLL[i].MLLCode:= Trunc(cdsModelStageCountMLL_OBJECT_CODE.AsFloat);
            MLL[i].ParentMLLCode:= Trunc(cdsModelStageCountPARENT_MLL_OBJECT_CODE.AsFloat);
            MLL[i].StageCount:= Trunc(cdsModelStageCountSTAGE_COUNT.AsFloat);
            MLL[i].MaxStageNo:= 0;
            MLL[i].MinStageNo:= 0;

            Next;
          end;
      finally
        Close;
      end;
    end;

  if (High(MLL) > 0) then
    begin
      FindMaxStageNo(1);
      EvaluateStageNo(1, 0);

      for i:= 1 to MLL[1].MaxStageNo do
        begin
          CreateAndAddFieldToDataSet(TAbmesFloatField, 'MLMS_OBJECT_BRANCH_CODE_' + IntToStr(i));
          CreateAndAddFieldToDataSet(TAbmesFloatField, 'MLMS_OBJECT_CODE_' + IntToStr(i));
          CreateAndAddFieldToDataSet(TAbmesWideStringField, 'MLMS_DEPT_CODE_' + IntToStr(i));
          CreateAndAddFieldToDataSet(TAbmesWideStringField, 'MLMS_IDENTIFIER_' + IntToStr(i));
          CreateAndAddFieldToDataSet(TAbmesFloatField,'MLMS_DOC_BRANCH_CODE_' + IntToStr(i));
          CreateAndAddFieldToDataSet(TAbmesFloatField,'MLMS_DOC_CODE_' + IntToStr(i));
          CreateAndAddFieldToDataSet(TAbmesFloatField,'MLMS_HAS_DOC_ITEMS_' + IntToStr(i));
          if (i < MLL[1].MaxStageNo) then
            begin
              CreateAndAddFieldToDataSet(TAbmesWideStringField, 'MOVEMENT_INTERVAL_' + IntToStr(i));
              CreateAndAddFieldToDataSet(TAbmesWideStringField, 'QUANTITY_' + IntToStr(i));
              CreateAndAddFieldToDataSet(TAbmesFloatField,'MOVED_QUANTITY_' + IntToStr(i));
              CreateAndAddFieldToDataSet(TAbmesFloatField,'TOTAL_WASTE_DETAIL_TECH_QTY_' + IntToStr(i));
              CreateAndAddFieldToDataSet(TAbmesWideStringField, 'MLMS_POINTER_' + IntToStr(i));
              CreateAndAddFieldToDataSet(TSQLTimeStampField,'PMM_BEGIN_DATE_' + IntToStr(i));
              CreateAndAddFieldToDataSet(TSQLTimeStampField,'PMM_END_DATE_' + IntToStr(i));

              if FCapacityStatus then
                CreateAndAddFieldToDataSet(TAbmesFloatField,'UNCOVERED_CAPACITY_' + IntToStr(i));
            end;
        end;
    end;
end;

procedure TdmMfgReports.prvModelStatusDetailAfterGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  mdModelStatusDetail.Close;
  mdModelStatusDetail.Fields.Clear;
  mdModelStatusDetail.FieldDefs.Clear;
  SetLength(MLL, 0);
end;

procedure TdmMfgReports.qryModelStatusStagesBeforeOpen(DataSet: TDataSet);
var
  Period: TPeriod;  
begin
  inherited;
  if FShowUncoveredLines then
    begin
      Period:= GetPeriodValue(LoginContext.DefaultDateUnitCode);
      with qryPrepareUncoveredPSDByModel do
        begin
          ParamByName('START_PERIOD_DATE').AsDateTime:= GetPeriodFirstDate(ContextDate, Period);
          ParamByName('END_PERIOD_DATE').AsDateTime:= GetPeriodLastDate(SvrDeficit.GetLastPSDDate, Period);
          ParamByName('DATE_UNIT_CODE').AsFloat:= LoginContext.DefaultDateUnitCode;
          ParamByName('ML_OBJECT_BRANCH_CODE').AsFloat:= FModelStatusParams.ParamByName('ML_OBJECT_BRANCH_CODE').AsFloat;
          ParamByName('ML_OBJECT_CODE').AsFloat:= FModelStatusParams.ParamByName('ML_OBJECT_CODE').AsFloat;
          ExecSQL;
        end;
    end;
end;

procedure TdmMfgReports.qryModelStatusStagesAfterClose(DataSet: TDataSet);
begin
  inherited;
  if FShowUncoveredLines then
    qryUnprepareUncoveredPSD.ExecSQL;
end;

procedure TdmMfgReports.ArchiveModel(MLObjectBranchCode,
  MLObjectCode: Integer);
begin
  with qryArchiveModel do
    begin
      ParamByName('ML_OBJECT_BRANCH_CODE').AsFloat:= MLObjectBranchCode;
      ParamByName('ML_OBJECT_CODE').AsFloat:= MLObjectCode;
      ParamByName('IS_ARCHIVED').AsFloat:= 1;
      ExecSQL;
    end;
end;

procedure TdmMfgReports.UnArchiveModel(MLObjectBranchCode,
  MLObjectCode: Integer);
begin
  with qryArchiveModel do
    begin
      ParamByName('ML_OBJECT_BRANCH_CODE').AsFloat:= MLObjectBranchCode;
      ParamByName('ML_OBJECT_CODE').AsFloat:= MLObjectCode;
      ParamByName('IS_ARCHIVED').AsFloat:= 0;
      ExecSQL;
    end;
end;

procedure TdmMfgReports.prvModelStatusBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FShowUncoveredLines:= OwnerData;
end;

procedure TdmMfgReports.qryUnfinishedMfgBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;

  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  with (DataSet as TAbmesSQLQuery) do
    begin
      if (ParamByName('UNFINISHED_TO_DATE').AsDateTime < ContextDate) then
        MacroByName('IF_IS_ACTIVE').AsString:= shUnifinishedMfgPastActive.Strings.Text
      else
        MacroByName('IF_IS_ACTIVE').AsString:= shUnifinishedMfgPresentAndFutureActive.Strings.Text;
    end;  { with }
end;

procedure TdmMfgReports.qryUnfinishedMfgAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmMfgReports.CloseModel(MLObjectBranchCode,
  MLObjectCode: Integer);
begin
  with qryCloseModel do
    begin
      ParamByName('ML_OBJECT_BRANCH_CODE').AsFloat:= MLObjectBranchCode;
      ParamByName('ML_OBJECT_CODE').AsFloat:= MLObjectCode;
      ParamByName('CLOSE_EMPLOYEE_CODE').AsFloat:= LoginContext.UserCode;
      ExecSQL;
    end;
end;

procedure TdmMfgReports.prvModelStatusDetailBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  Applied:= True;

  if (UpdateKind = ukModify) then
    begin
      SetParams(qryUpdMllNotes.Params, DeltaDS);

      with qryUpdMllNotes.ParamByName('MLL_OBJECT_BRANCH_CODE') do
        AsInteger:= Abs(AsInteger);
      with qryUpdMllNotes.ParamByName('MLL_OBJECT_CODE') do
        AsInteger:= Abs(AsInteger);

      qryUpdMllNotes.ExecSQL;
    end;   { if }
end;

procedure TdmMfgReports.qryProductionOrdersBeforeOpen(DataSet: TDataSet);
var
  Period: TPeriod;
begin
  inherited;

  ProcessUserParamBeforeQueryOpen(qryProductionOrders.ParamByName('OWNER_EMPLOYEE_CODE'), LoginContext);

  if (qryProductionOrders.ParamByName('FILTER_UNCOVERED_LINES_STATE').AsFloat <> 1) or  // 1-vsichki 2-neobezpecheni 3-obezpecheni
     (qryProductionOrders.CustomParams.ParamByName('SHOW_UNCOVERED_LINES').AsFloat = 1) then
    begin
      Period:= GetPeriodValue(LoginContext.DefaultDateUnitCode);

      SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
        ChosenNodeCodeToXML(tnRootProductCode));

      SvrDeptTreeNodeFilter.PrepareFilteredNodes(
        ChosenNodeCodeToXML(tnRootDeptCode));

      with qryPrepareUncoveredPSD do
        begin
          ParamByName('MAX_PSD_TYPE_CODE').AsFloat:= 1;
          ParamByName('START_PERIOD_DATE').AsDateTime:= GetPeriodFirstDate(ContextDate, Period);
          ParamByName('END_PERIOD_DATE').AsDateTime:= GetPeriodLastDate(SvrDeficit.GetLastPSDDate, Period);
          ParamByName('DATE_UNIT_CODE').AsFloat:= LoginContext.DefaultDateUnitCode;
          ExecSQL;
        end;

      SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes;
      SvrDeptTreeNodeFilter.UnPrepareFilteredNodes;
    end;

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [DataSet as TAbmesSQLQuery]);

  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTION_DEPTS'), [DataSet as TAbmesSQLQuery], 1);
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_OPERATION_DEPTS'), [DataSet as TAbmesSQLQuery], 2);
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_SHIPMENT_STORES'), [DataSet as TAbmesSQLQuery], 3);
  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_CONSUMER_DEPTS'), [DataSet as TAbmesSQLQuery], 4);

  with (DataSet as TAbmesSQLQuery) do
    begin
      if (ParamByName('MIN_ML_STATE_CODE').AsInteger <= 3) and
         (ParamByName('MAX_ML_STATE_CODE').AsInteger <= 8) then
        MacroByName('IF_IS_ACTIVE').AsString:= shActiveSaleCondition.Strings.Text
      else
        MacroByName('IF_IS_ACTIVE').AsString:= '(0=0)';

      if (ParamByName('MIN_ML_STATE_CODE').AsInteger >= 4) and
         (ParamByName('MAX_ML_STATE_CODE').AsInteger <= 9) then
        MacroByName('IF_IS_UNARCHIVED_MODEL').AsString:= shUnarchivedModelCondition.Strings.Text
      else
        MacroByName('IF_IS_UNARCHIVED_MODEL').AsString:= '(0=0)';

      if ParamByName('WASTING_SALE_NO').IsNull then
        MacroByName('IF_IS_COMPENSATOR_FOR_A_WASTING_SALE').AsString:= '(0=0)'
      else
        MacroByName('IF_IS_COMPENSATOR_FOR_A_WASTING_SALE').AsString:= shCompensatorsForAWastingSaleCondition.Strings.Text;

      MacroByName('GET_SALE_OBJECT_TREE').AsInteger:= CustomParams.ParamByName('GET_SALE_OBJECT_TREE').AsInteger;

      if (CustomParams.ParamByName('GET_SALE_OBJECT_TREE').AsInteger = 1) then
        MacroByName('SALES_TABLE_OR_TREE').AsString:= 's_tree'
      else
        MacroByName('SALES_TABLE_OR_TREE').AsString:= 'SALES';
    end;  { with }
end;

procedure TdmMfgReports.qryProductionOrdersAfterClose(DataSet: TDataSet);
begin
  inherited;

  if (qryProductionOrders.ParamByName('FILTER_UNCOVERED_LINES_STATE').AsFloat <> 1) or  // 1-vsichki 2-neobezpecheni 3-obezpecheni
     (qryProductionOrders.CustomParams.ParamByName('SHOW_UNCOVERED_LINES').AsFloat = 1) then
    qryUnprepareUncoveredPSD.ExecSQL;

  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_CONSUMER_DEPTS'), [DataSet as TAbmesSQLQuery], 4);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_SHIPMENT_STORES'), [DataSet as TAbmesSQLQuery], 3);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_OPERATION_DEPTS'), [DataSet as TAbmesSQLQuery], 2);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTION_DEPTS'), [DataSet as TAbmesSQLQuery], 1);

  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [DataSet as TAbmesSQLQuery]);
end;

procedure TdmMfgReports.prvProductionOrdersGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  inherited;

  // !!!!!!! ne triabva da ima DefaultOrder query-to, v koito uchastva poleto, deto go barame dolu !!!!!!!!!!
  // shtoto reda na obhojdane v taia situacia e nepredskazuem
  with DataSet do
    begin
      First;
      while not Eof do
        begin
          Edit;
          try
            FieldByName('QUANTITY_DIFF').AsFloat:=
              FieldByName('QUANTITY_IN').AsFloat - FieldByName('QUANTITY').AsFloat;

            if (FieldByName('QUANTITY').AsFloat = 0) then
              FieldByName('QUANTITY_DEVIATION_PERCENT').Clear
            else
              FieldByName('QUANTITY_DEVIATION_PERCENT').AsFloat:=
                FieldByName('QUANTITY_DIFF').AsFloat / FieldByName('QUANTITY').AsFloat * 100;

            Post;
          except
            Cancel;
            raise;
          end;

          if (qryProductionOrders.CustomParams.ParamByName('GET_SALE_OBJECT_TREE').AsInteger = 1) or

             ( (qryProductionOrders.CustomParams.ParamByName('BEGIN_PRODUCTION_WORKDAYS_PERCENT').IsNull or
                ((not DataSet.FieldByName('PRODUCTION_WORKDAYS_PERCENT').IsNull) and
                 (DataSet.FieldByName('PRODUCTION_WORKDAYS_PERCENT').AsFloat >=
                  qryProductionOrders.CustomParams.ParamByName('BEGIN_PRODUCTION_WORKDAYS_PERCENT').AsFloat))) and

               (qryProductionOrders.CustomParams.ParamByName('END_PRODUCTION_WORKDAYS_PERCENT').IsNull or
                ((not DataSet.FieldByName('PRODUCTION_WORKDAYS_PERCENT').IsNull) and
                 (DataSet.FieldByName('PRODUCTION_WORKDAYS_PERCENT').AsFloat <=
                  qryProductionOrders.CustomParams.ParamByName('END_PRODUCTION_WORKDAYS_PERCENT').AsFloat)))
             ) then
            Next
          else
            Delete;
        end;
    end;
end;

procedure TdmMfgReports.prvUncoveredModelsGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  HasWasteStatus: Integer;
  ModelStartBeginDate: Variant;
  ModelStartEndDate: Variant;
  ModelStartMinReserve: Variant;
  ModelStartMaxReserve: Variant;
  HasWasteField: TField;
  ModelStartDateField: TField;

  function UncoveredModelsFilterAccept(ADataSet: TDataSet): Boolean;
  begin
    Result:=
      ( (HasWasteStatus = 1) or
        ( (HasWasteStatus = 2) and (HasWasteField.AsInteger = 1) ) or
        ( (HasWasteStatus = 3) and (HasWasteField.AsInteger = 0) )
      );

    if not VarIsNullOrEmpty(ModelStartBeginDate) then
      Result:=
        Result and
        (ModelStartDateField.AsDateTime >= ModelStartBeginDate);

    if not VarIsNullOrEmpty(ModelStartEndDate) then
      Result:=
        Result and
        (ModelStartDateField.AsDateTime <= ModelStartEndDate);

    if not VarIsNullOrEmpty(ModelStartMinReserve) then
      Result:=
        Result and
        (ModelStartDateField.AsDateTime - Trunc(ContextDate) >= ModelStartMinReserve);

    if not VarIsNullOrEmpty(ModelStartMaxReserve) then
      Result:=
        Result and
        (ModelStartDateField.AsDateTime - Trunc(ContextDate) <= ModelStartMaxReserve);
  end;

begin
  inherited;

  HasWasteStatus:=
    qryUncoveredModels.CustomParams.ParamByName('HAS_WASTE_STATUS').AsInteger;
  ModelStartBeginDate:=
    qryUncoveredModels.CustomParams.ParamByName('MODEL_START_BEGIN_DATE').Value;
  ModelStartEndDate:=
    qryUncoveredModels.CustomParams.ParamByName('MODEL_START_END_DATE').Value;
  ModelStartMinReserve:=
    qryUncoveredModels.CustomParams.ParamByName('MODEL_START_MIN_RESERVE').Value;
  ModelStartMaxReserve:=
    qryUncoveredModels.CustomParams.ParamByName('MODEL_START_MAX_RESERVE').Value;

  HasWasteField:= DataSet.FieldByName('HAS_WASTE');
  ModelStartDateField:= DataSet.FieldByName('MODEL_START_DATE');

  DataSet.First;
  while not DataSet.Eof do
    if not UncoveredModelsFilterAccept(DataSet) then
      DataSet.Delete
    else
      DataSet.Next;
end;

procedure TdmMfgReports.qryUnfinishedMfgCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryUnfinishedMfgQUANTITY.AsVariant:=
    qryUnfinishedMfgTECH_QUANTITY.AsVariant /
    qryUnfinishedMfgDETAIL_TECH_MEASURE_COEF.AsVariant;

  qryUnfinishedMfgTOTAL_PRICE.AsVariant:=
    qryUnfinishedMfgTECH_QUANTITY.AsVariant *
    qryUnfinishedMfgTECH_SINGLE_PRICE.AsVariant;
end;

procedure TdmMfgReports.prvModelStatusDetailGetDataSetProperties(
  Sender: TObject; DataSet: TDataSet; out Properties: OleVariant);
var
  KeyList: Variant;
begin
  inherited;

  KeyList:= VarArrayCreate([0, 1], varSmallInt);
  KeyList[0]:= 8;
  KeyList[1]:= 9;
  Properties:= VarArrayCreate([0,0], varVariant);
  Properties[0]:= VarArrayOf(['DEFAULT_ORDER', Keylist, True]);
end;

procedure TdmMfgReports.qryModelsInvestedValuesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;

  with (DataSet as TAbmesSQLQuery) do
    begin
      ProcessUserParamBeforeQueryOpen(ParamByName('OWNER_EMPLOYEE_CODE'), LoginContext);

      SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
        CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

      if (ParamByName('MIN_ML_STATE_CODE').AsInteger >= 4) and
         (ParamByName('MAX_ML_STATE_CODE').AsInteger <= 9) then
        MacroByName('IF_IS_UNARCHIVED_MODEL').AsString:= shUnarchivedModelCondition.Strings.Text
      else
        MacroByName('IF_IS_UNARCHIVED_MODEL').AsString:= '(0=0)';

      MacroByName('GET_SALE_OBJECT_TREE').AsInteger:= CustomParams.ParamByName('GET_SALE_OBJECT_TREE').AsInteger;

      if (CustomParams.ParamByName('GET_SALE_OBJECT_TREE').AsInteger = 1) then
        MacroByName('SALES_TABLE_OR_TREE').AsString:= 's_tree'
      else
        MacroByName('SALES_TABLE_OR_TREE').AsString:= 'SALES';
    end;  { with }
end;

procedure TdmMfgReports.qryModelsInvestedValuesAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmMfgReports.qryUncoveredModelsBeforeOpen(DataSet: TDataSet);
var
  Period: TPeriod;
begin
  inherited;
  ProcessDeptParamBeforeQueryOpen(
    (DataSet as TAbmesSQLQuery).ParamByName('DEPT_CODE'),
    LoginContext);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);

  Period:= GetPeriodValue(LoginContext.DefaultDateUnitCode);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    ChosenNodeCodeToXML(tnRootProductCode));
  try
    SvrDeptTreeNodeFilter.PrepareFilteredNodes(
      ChosenNodeCodeToXML(tnRootDeptCode));
    try
      with qryPrepareUncoveredPSD do
        begin
          ParamByName('MAX_PSD_TYPE_CODE').AsFloat:= 1;
          ParamByName('START_PERIOD_DATE').AsDateTime:= GetPeriodFirstDate(ContextDate, Period);
          ParamByName('END_PERIOD_DATE').AsDateTime:= GetPeriodLastDate(SvrDeficit.GetLastPSDDate, Period);
          ParamByName('DATE_UNIT_CODE').AsFloat:= LoginContext.DefaultDateUnitCode;
          ParamByName('IS_TOWARDS_RESERVE').AsFloat:= (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('IS_TOWARDS_RESERVE').AsFloat;
          ExecSQL;
        end;  { with }
    finally
      SvrDeptTreeNodeFilter.UnPrepareFilteredNodes;
    end;  { try }
  finally
    SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes;
  end;  { try }
end;

procedure TdmMfgReports.qryUncoveredModelsAfterClose(DataSet: TDataSet);
begin
  inherited;
  qryUnprepareUncoveredPSD.ExecSQL;

  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);
end;

procedure TdmMfgReports.qryProductionOrdersCalcFields(DataSet: TDataSet);
begin
  inherited;

  if (qryProductionOrdersINITIAL_TREATMENT_WORKDAYS.AsFloat = 0) then
    qryProductionOrdersPRODUCTION_WORKDAYS_PERCENT.Clear
  else
    qryProductionOrdersPRODUCTION_WORKDAYS_PERCENT.AsFloat:=
      100 -
      (qryProductionOrdersPRODUCTION_WORKDAYS.AsFloat / qryProductionOrdersINITIAL_TREATMENT_WORKDAYS.AsFloat * 100);

  if (qryProductionOrdersMIN_ORDER_QUANTITY.AsFloat > 0) and
     (qryProductionOrdersQUANTITY.AsFloat < qryProductionOrdersMIN_ORDER_QUANTITY.AsFloat) then
     begin
      qryProductionOrdersQUANTITY_INTERVAL_PCT.AsFloat:=
        -(qryProductionOrdersMIN_ORDER_QUANTITY.AsFloat - qryProductionOrdersQUANTITY.AsFloat) / qryProductionOrdersMIN_ORDER_QUANTITY.AsFloat;
     end
  else
    begin
      if (qryProductionOrdersMAX_ORDER_QUANTITY.AsFloat > 0) and
         (qryProductionOrdersQUANTITY.AsFloat > qryProductionOrdersMAX_ORDER_QUANTITY.AsFloat) then
        begin
          qryProductionOrdersQUANTITY_INTERVAL_PCT.AsFloat:=
            (qryProductionOrdersQUANTITY.AsFloat - qryProductionOrdersMAX_ORDER_QUANTITY.AsFloat) / qryProductionOrdersMAX_ORDER_QUANTITY.AsFloat;
        end
      else
        qryProductionOrdersQUANTITY_INTERVAL_PCT.Clear;
    end;
end;

initialization
  TdmMfgReportsProxy.FSingleton:= TdmMfgReportsProxy.Create(TdmMfgReports);

finalization
  FreeAndNil(TdmMfgReportsProxy.FSingleton);
end.
