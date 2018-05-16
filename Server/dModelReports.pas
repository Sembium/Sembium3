unit dModelReports;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, Variants, uPeriods, JvStringHolder,
  WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmModelReports = class(TDBPooledDataModule)
    qryModels: TAbmesSQLQuery;
    prvModels: TDataSetProvider;
    qryModelsSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qryModelsPRODUCT_CODE: TAbmesFloatField;
    qryModelsPRODUCT_NAME: TAbmesWideStringField;
    qryModelsPRODUCT_NO: TAbmesFloatField;
    qryModelsIS_ANNULED: TAbmesFloatField;
    qryModelsIS_FINISHED: TAbmesFloatField;
    qryModelsML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryModelsML_OBJECT_CODE: TAbmesFloatField;
    qryModelsMAIN_DEPT_CODE: TAbmesFloatField;
    qryModelsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryModelsIS_ARCHIVED: TAbmesFloatField;
    qryModelsREQUESTED_CHANGE_COUNT: TAbmesFloatField;
    qryModelsREQUESTED_MY_CHANGE_COUNT: TAbmesFloatField;
    qryModelsREJECTED_CHANGE_COUNT: TAbmesFloatField;
    qryModelsREJECTED_MY_CHANGE_COUNT: TAbmesFloatField;
    qryModelsIS_LIMITING: TAbmesFloatField;
    qryModelsPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryModelsPROCESS_OBJECT_CODE: TAbmesFloatField;
    qryModelsDEL_RECORD: TAbmesFloatField;
    qryModelsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryModelsSALE_OBJECT_CODE: TAbmesFloatField;
    qryModelsMIN_PRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryModelsENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField;
    qryModelsENGINEER_EMPLOYEE_CODE: TAbmesFloatField;
    qryModelsCURRENT_TO_LIMITING_DATE_DIFF: TAbmesFloatField;
    qryModelsML_STATE_CODE: TAbmesFloatField;
    qryModelsSPEC_STATE_CODE: TAbmesFloatField;
    qryModelsMANUFACTURE_DAYS: TAbmesFloatField;
    qryModelsMANUFACTURE_QUANTITY: TAbmesFloatField;
    qryModelsCLIENT_REQUEST_NO: TAbmesWideStringField;
    qryModelsMEASURE_ABBREV: TAbmesWideStringField;
    qryModelsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryModelsENGINEER_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryModelsMEASURE_CODE: TAbmesFloatField;
    qryModelsACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryModelsPRIORITY_FULL_NAME: TAbmesWideStringField;
    qryModelsCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    qryDelModel: TAbmesSQLQuery;
    prvOneMLMS: TDataSetProvider;
    qryOneMLMSOperations: TAbmesSQLQuery;
    qryOneMLMSOperationsMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOneMLMSOperationsMLMS_OBJECT_CODE: TAbmesFloatField;
    qryOneMLMSOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    qryOneMLMSOperationsSHOW_NO: TAbmesWideStringField;
    qryOneMLMSOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    qryOneMLMSOperationsDEPT_NAME: TAbmesWideStringField;
    qryOneMLMSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    qryOneMLMSOperationsSETUP_PROFESSION_NAME: TAbmesWideStringField;
    qryOneMLMSOperationsPROFESSION_NAME: TAbmesWideStringField;
    qryOneMLMSOperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    qryOneMLMSOperationsSETUP_HOUR_PRICE: TAbmesFloatField;
    qryOneMLMSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsEFFORT_COEF: TAbmesFloatField;
    qryOneMLMSOperationsHOUR_PRICE: TAbmesFloatField;
    qryOneMLMSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsNOTES: TAbmesWideStringField;
    qryOneMLMSOperationsIS_SETUP_DONE: TAbmesFloatField;
    qryOneMLMSOperationsSETUP_WORK_TIME: TAbmesFloatField;
    qryOneMLMSOperationsIN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsOUT_WASTE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsOUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    qryOneMLMSOperationsDOC_CODE: TAbmesFloatField;
    qryOneMLMSOperationsWORK_TIME: TAbmesFloatField;
    qryOneMLMSOperationsMLMS_OPERATION_NO: TAbmesFloatField;
    qryOneMLMSOperationsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryOneMLMSOperationsMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOneMLMSOperationsMLMSO_OBJECT_CODE: TAbmesFloatField;
    prvNextStageFirstOperation: TDataSetProvider;
    qryNextStageFirstOperation: TAbmesSQLQuery;
    qryNextStageFirstOperationMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryNextStageFirstOperationMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryNextStageFirstOperationOPERATION_TYPE_CODE: TAbmesFloatField;
    qryOperationalTasks: TAbmesSQLQuery;
    prvOperationalTasks: TDataSetProvider;
    qryOperationalTasksMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationalTasksMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryOperationalTasksMLMS_OPERATION_NO: TAbmesFloatField;
    qryOperationalTasksMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryOperationalTasksOPERATION_TYPE_CODE: TAbmesFloatField;
    qryOperationalTasksMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationalTasksMLMS_OBJECT_CODE: TAbmesFloatField;
    qryOperationalTasksML_MODEL_STAGE_NO: TAbmesFloatField;
    qryOperationalTasksTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOperationalTasksTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryOperationalTasksMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationalTasksMLL_OBJECT_CODE: TAbmesFloatField;
    qryOperationalTasksNO_AS_TEXT: TAbmesWideStringField;
    qryOperationalTasksFORK_NO: TAbmesFloatField;
    qryOperationalTasksDETAIL_CODE: TAbmesFloatField;
    qryOperationalTasksDETAIL_NAME: TAbmesWideStringField;
    qryOperationalTasksDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryOperationalTasksML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationalTasksML_OBJECT_CODE: TAbmesFloatField;
    qryOperationalTasksSALE_BRANCH_NO: TAbmesFloatField;
    qryOperationalTasksPRIORITY_CODE: TAbmesFloatField;
    qryOperationalTasksSHOW_NO: TAbmesWideStringField;
    qryOperationalTasksHAS_DOCUMENTATION: TAbmesFloatField;
    qryOperationalTasksSETUP_PROFESSION_CODE: TAbmesFloatField;
    qryOperationalTasksSETUP_EFFORT_COEF: TAbmesFloatField;
    qryOperationalTasksSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    qryOperationalTasksPROFESSION_CODE: TAbmesFloatField;
    qryOperationalTasksEFFORT_COEF: TAbmesFloatField;
    qryOperationalTasksHOUR_TECH_QUANTITY: TAbmesFloatField;
    qryOperationalTasksVARIANT_SETUP_TIME: TAbmesFloatField;
    qryOperationalTasksVARIANT_WORK_TIME: TAbmesFloatField;
    qryOperationalTasksDOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationalTasksDOC_CODE: TAbmesFloatField;
    qryOperationalTasksIS_SETUP_DONE: TAbmesFloatField;
    qryOneMLMSOperationsDEPT_CODE: TAbmesFloatField;
    qryOperationalTasksNEXT_OPERATION_TYPE_CODE: TAbmesFloatField;
    qryOperationalTasksIS_LAST_OPERATION_IN_STAGE: TAbmesFloatField;
    qryOperationalTasksOPERATION_VARIANT_COUNT: TAbmesFloatField;
    qryOperationalTasksDEPT_NAME: TAbmesWideStringField;
    qryOperationalTasksTO_LEAVE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationalTasksIS_LATE: TAbmesFloatField;
    qryOperationalTasksSETUP_NO_AS_TEXT: TAbmesWideStringField;
    qryOperationalTasksSETUP_FORK_NO: TAbmesFloatField;
    qryOperationalTasksSETUP_DETAIL_NAME: TAbmesWideStringField;
    qryOperationalTasksSETUP_DETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField;
    qryOperationalTasksSETUP_SHOW_NO: TAbmesWideStringField;
    qryOperationalTasksDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationalTasksDETAIL_DOC_CODE: TAbmesFloatField;
    qryOperationalTasksOPERATION_KIND: TAbmesFloatField;
    qryOperationalTasksPRIORITY_COLOR: TAbmesFloatField;
    qryOperationalTasksPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryOperationalTasksCLIENT_DETAIL_NAME: TAbmesWideStringField;
    qryOperationalTasksPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryOneMLMS: TAbmesSQLQuery;
    qryOneMLMSMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOneMLMSMLMS_OBJECT_CODE: TAbmesFloatField;
    qryOneMLMSSALE_IDENTIFIER: TAbmesWideStringField;
    qryOneMLMSDETAIL_CODE: TAbmesFloatField;
    qryOneMLMSDETAIL_NAME: TAbmesWideStringField;
    qryOneMLMSLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSML_MODEL_STAGE_NO: TAbmesFloatField;
    qryOneMLMSDEPT_IDENTIFIER: TAbmesWideStringField;
    qryOneMLMSOUTGOING_WORKDAYS: TAbmesFloatField;
    qryOneMLMSTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOneMLMSDOC_BRANCH_CODE: TAbmesFloatField;
    qryOneMLMSDOC_CODE: TAbmesFloatField;
    qryOneMLMSDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryOperationalTasksSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryOperationalTasksTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryOneMLMSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryOneMLMSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryOneMLMSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryOperationalTasksTO_ENTER_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationalTasksAVAILABLE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryOperationalTasksIS_LAST_STAGE_IN_MLL: TAbmesFloatField;
    qryOperationalTasksIS_FIRST_OPERATION_IN_STAGE: TAbmesFloatField;
    qryOperationalTasksIS_FIRST_STAGE_IN_MLL: TAbmesFloatField;
    qryOneMLMSTREATMENT_WORKDAYS: TAbmesFloatField;
    qryOperationInputWhenNotFirst: TAbmesSQLQuery;
    qryOperationInputWhenFirstInStage: TAbmesSQLQuery;
    qryOperationInputWhenFirstInMll: TAbmesSQLQuery;
    prvOperationInput: TDataSetProvider;
    qryOperationInputWhenNotFirstMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationInputWhenNotFirstMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryOperationInputWhenNotFirstMLMS_OPERATION_NO: TAbmesFloatField;
    qryOperationInputWhenNotFirstMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryOperationInputWhenNotFirstOPERATION_TYPE_CODE: TAbmesFloatField;
    qryOperationInputWhenNotFirstOPERATION_TYPE_ABBREV: TAbmesWideStringField;
    qryOperationInputWhenNotFirstSHOW_NO: TAbmesWideStringField;
    qryOperationInputWhenNotFirstTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOperationInputWhenNotFirstTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryOperationInputWhenNotFirstTREATMENT_DATE: TAbmesSQLTimeStampField;
    qryOperationInputWhenNotFirstRESERVE_DAYS: TAbmesFloatField;
    qryOperationInputWhenNotFirstDEPT_NAME: TAbmesWideStringField;
    qryOperationInputWhenNotFirstSTAGE_DEPT_NAME: TAbmesWideStringField;
    qryOperationInputWhenNotFirstNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryOperationInputWhenNotFirstDETAIL_CODE: TAbmesFloatField;
    qryOperationInputWhenNotFirstDETAIL_NAME: TAbmesWideStringField;
    qryOperationInputWhenNotFirstDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryOperationInputWhenNotFirstCLIENT_DETAIL_NAME: TAbmesWideStringField;
    qryOperationInputWhenNotFirstDOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationInputWhenNotFirstDOC_CODE: TAbmesFloatField;
    qryOperationInputWhenNotFirstHAS_DOCUMENTATION: TAbmesFloatField;
    qryOperationInputWhenNotFirstHOUR_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenNotFirstAVAILABLE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInStageMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInStageMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInStageMLMS_OPERATION_NO: TAbmesFloatField;
    qryOperationInputWhenFirstInStageMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryOperationInputWhenFirstInStageOPERATION_TYPE_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInStageOPERATION_TYPE_ABBREV: TAbmesWideStringField;
    qryOperationInputWhenFirstInStageSHOW_NO: TAbmesWideStringField;
    qryOperationInputWhenFirstInStageTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOperationInputWhenFirstInStageTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryOperationInputWhenFirstInStageTREATMENT_DATE: TAbmesSQLTimeStampField;
    qryOperationInputWhenFirstInStageRESERVE_DAYS: TAbmesFloatField;
    qryOperationInputWhenFirstInStageDEPT_NAME: TAbmesWideStringField;
    qryOperationInputWhenFirstInStageSTAGE_DEPT_NAME: TAbmesWideStringField;
    qryOperationInputWhenFirstInStageNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryOperationInputWhenFirstInStageDETAIL_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInStageDETAIL_NAME: TAbmesWideStringField;
    qryOperationInputWhenFirstInStageDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryOperationInputWhenFirstInStageCLIENT_DETAIL_NAME: TAbmesWideStringField;
    qryOperationInputWhenFirstInStageDOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInStageDOC_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInStageHAS_DOCUMENTATION: TAbmesFloatField;
    qryOperationInputWhenFirstInStageHOUR_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInStageAVAILABLE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInMllMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInMllMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInMllMLMS_OPERATION_NO: TAbmesFloatField;
    qryOperationInputWhenFirstInMllMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryOperationInputWhenFirstInMllOPERATION_TYPE_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInMllOPERATION_TYPE_ABBREV: TAbmesWideStringField;
    qryOperationInputWhenFirstInMllSHOW_NO: TAbmesWideStringField;
    qryOperationInputWhenFirstInMllTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOperationInputWhenFirstInMllTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryOperationInputWhenFirstInMllTREATMENT_DATE: TAbmesSQLTimeStampField;
    qryOperationInputWhenFirstInMllRESERVE_DAYS: TAbmesFloatField;
    qryOperationInputWhenFirstInMllDEPT_NAME: TAbmesWideStringField;
    qryOperationInputWhenFirstInMllSTAGE_DEPT_NAME: TAbmesWideStringField;
    qryOperationInputWhenFirstInMllNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryOperationInputWhenFirstInMllDETAIL_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInMllDETAIL_NAME: TAbmesWideStringField;
    qryOperationInputWhenFirstInMllDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryOperationInputWhenFirstInMllCLIENT_DETAIL_NAME: TAbmesWideStringField;
    qryOperationInputWhenFirstInMllDOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInMllDOC_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInMllHAS_DOCUMENTATION: TAbmesFloatField;
    qryOperationInputWhenFirstInMllHOUR_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInMllAVAILABLE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenNotFirstTO_LEAVE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInStageTO_LEAVE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInMllTO_LEAVE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    prvOperationOutput: TDataSetProvider;
    qryOperationOutputWhenNotLast: TAbmesSQLQuery;
    qryOperationOutputWhenLastInStage: TAbmesSQLQuery;
    qryOperationOutputWhenLastInMll: TAbmesSQLQuery;
    qryOperationOutputWhenNotLastMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationOutputWhenNotLastMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryOperationOutputWhenNotLastMLMS_OPERATION_NO: TAbmesFloatField;
    qryOperationOutputWhenNotLastMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryOperationOutputWhenNotLastOPERATION_TYPE_CODE: TAbmesFloatField;
    qryOperationOutputWhenNotLastSHOW_NO: TAbmesWideStringField;
    qryOperationOutputWhenNotLastTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOperationOutputWhenNotLastTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryOperationOutputWhenNotLastTREATMENT_DATE: TAbmesSQLTimeStampField;
    qryOperationOutputWhenNotLastRESERVE_DAYS: TAbmesFloatField;
    qryOperationOutputWhenNotLastDEPT_NAME: TAbmesWideStringField;
    qryOperationOutputWhenNotLastSTAGE_DEPT_NAME: TAbmesWideStringField;
    qryOperationOutputWhenLastInStageMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationOutputWhenLastInStageMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryOperationOutputWhenLastInStageMLMS_OPERATION_NO: TAbmesFloatField;
    qryOperationOutputWhenLastInStageMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryOperationOutputWhenLastInStageOPERATION_TYPE_CODE: TAbmesFloatField;
    qryOperationOutputWhenLastInStageSHOW_NO: TAbmesWideStringField;
    qryOperationOutputWhenLastInStageTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOperationOutputWhenLastInStageTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryOperationOutputWhenLastInStageTREATMENT_DATE: TAbmesSQLTimeStampField;
    qryOperationOutputWhenLastInStageRESERVE_DAYS: TAbmesFloatField;
    qryOperationOutputWhenLastInStageDEPT_NAME: TAbmesWideStringField;
    qryOperationOutputWhenLastInStageSTAGE_DEPT_NAME: TAbmesWideStringField;
    qryOperationOutputWhenLastInMllMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationOutputWhenLastInMllMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryOperationOutputWhenLastInMllMLMS_OPERATION_NO: TAbmesFloatField;
    qryOperationOutputWhenLastInMllMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryOperationOutputWhenLastInMllOPERATION_TYPE_CODE: TAbmesFloatField;
    qryOperationOutputWhenLastInMllSHOW_NO: TAbmesWideStringField;
    qryOperationOutputWhenLastInMllTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOperationOutputWhenLastInMllTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryOperationOutputWhenLastInMllTREATMENT_DATE: TAbmesSQLTimeStampField;
    qryOperationOutputWhenLastInMllRESERVE_DAYS: TAbmesFloatField;
    qryOperationOutputWhenLastInMllDEPT_NAME: TAbmesWideStringField;
    qryOperationOutputWhenLastInMllSTAGE_DEPT_NAME: TAbmesWideStringField;
    qryOperationalTasksNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    qryOperationInputWhenNotFirstFORK_NO: TAbmesFloatField;
    qryOperationInputWhenFirstInStageFORK_NO: TAbmesFloatField;
    qryOperationInputWhenFirstInMllFORK_NO: TAbmesFloatField;
    qryOperationInputWhenNotFirstML_MODEL_STAGE_NO: TAbmesFloatField;
    qryOperationInputWhenFirstInStageML_MODEL_STAGE_NO: TAbmesFloatField;
    qryOperationInputWhenFirstInMllML_MODEL_STAGE_NO: TAbmesFloatField;
    qryOperationalTasksNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryOperationalTasksSTAGE_DEPT_NAME: TAbmesWideStringField;
    qryOperationalTasksSTAGE_DEPT_CODE: TAbmesFloatField;
    qryOperationalTasksDEPT_CODE: TAbmesFloatField;
    qryOperationalTasksSTAGE_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryOperationInputWhenNotFirstSTAGE_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryOperationInputWhenFirstInStageSTAGE_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryOperationInputWhenFirstInMllSTAGE_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryOperationOutputWhenNotLastSTAGE_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryOperationOutputWhenLastInStageSTAGE_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryOperationOutputWhenLastInMllSTAGE_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryOneMLMSOperationsTO_ENTER_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsAVAILABLE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsTO_LEAVE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    qryOperationalTasksHAS_SPECIAL_CONTROL: TAbmesFloatField;
    qryOperationalTasksIN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationalTasksOUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenNotFirstSETUP_PROFESSION_CODE: TAbmesFloatField;
    qryOperationInputWhenNotFirstIS_SETUP_DONE: TAbmesFloatField;
    qryOperationInputWhenFirstInStageSETUP_PROFESSION_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInStageIS_SETUP_DONE: TAbmesFloatField;
    qryOperationInputWhenFirstInMllSETUP_PROFESSION_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInMllIS_SETUP_DONE: TAbmesFloatField;
    qryOneMLMSOperationsVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenNotFirstDEPT_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInStageDEPT_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInMllDEPT_CODE: TAbmesFloatField;
    qryOperationOutputWhenNotLastDEPT_CODE: TAbmesFloatField;
    qryOperationOutputWhenLastInStageDEPT_CODE: TAbmesFloatField;
    qryOperationOutputWhenLastInMllDEPT_CODE: TAbmesFloatField;
    qryOneMLMSOperationsML_MODEL_STAGE_NO: TAbmesFloatField;
    qryOneMLMSOperationsHAS_CAPACITY_DEFICIT: TAbmesFloatField;
    qryOperationInputWhenNotFirstHAS_CAPACITY_DEFICIT: TAbmesFloatField;
    qryOperationInputWhenFirstInStageHAS_CAPACITY_DEFICIT: TAbmesFloatField;
    qryOperationInputWhenFirstInMllHAS_CAPACITY_DEFICIT: TAbmesFloatField;
    qryOperationInputWhenNotFirstML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationInputWhenNotFirstML_OBJECT_CODE: TAbmesFloatField;
    qryOperationInputWhenNotFirstMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationInputWhenNotFirstMLL_OBJECT_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInStageML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInStageML_OBJECT_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInStageMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInStageMLL_OBJECT_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInMllML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInMllML_OBJECT_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInMllMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInMllMLL_OBJECT_CODE: TAbmesFloatField;
    qryOneMLMSNO_AS_TEXT: TAbmesWideStringField;
    qryOneMLMSFORK_NO: TAbmesFloatField;
    qryOperationalTasksREMAINING_SETUP_TIME: TAbmesFloatField;
    qryOperationalTasksREMAINING_WORK_TIME: TAbmesFloatField;
    qryOperationalTasksVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenNotFirstMLMSO_IS_AUTO_MOVEMENT: TAbmesFloatField;
    qryOperationInputWhenFirstInStageMLMSO_IS_AUTO_MOVEMENT: TAbmesFloatField;
    qryOperationInputWhenFirstInMllMLMSO_IS_AUTO_MOVEMENT: TAbmesFloatField;
    qryOperationalTasksIS_AUTO_RECEIVING_OPERATION: TAbmesFloatField;
    qryOneMLMSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryOneMLMSOperationsIS_AUTO_RECEIVING_OPERATION: TAbmesFloatField;
    qryOneMLMSOperationsOPERATION_KIND: TAbmesFloatField;
    prvOneMLMSOperations: TDataSetProvider;
    shActiveSaleCondition: TJvStrHolder;
    qryOperationalTasksSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationalTasksSALE_OBJECT_CODE: TAbmesFloatField;
    qryOperationalTasksIS_RECORD_CHANGED: TAbmesFloatField;
    qryOperationalTasksPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField;
    qryOperationalTasksIS_WASTE_COMPENSATOR: TAbmesFloatField;
    qryOneMLMSPRIORITY_COLOR: TAbmesFloatField;
    qryOneMLMSPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryStageLevelTasks: TAbmesSQLQuery;
    prvStageLevelTasks: TDataSetProvider;
    qryStageLevelTasksMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageLevelTasksMLMS_OBJECT_CODE: TAbmesFloatField;
    qryStageLevelTasksML_MODEL_STAGE_NO: TAbmesFloatField;
    qryStageLevelTasksIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryStageLevelTasksIS_AUTO_RECEIVING_STAGE: TAbmesFloatField;
    qryStageLevelTasksTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryStageLevelTasksTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryStageLevelTasksIS_LATE: TAbmesFloatField;
    qryStageLevelTasksMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageLevelTasksMLL_OBJECT_CODE: TAbmesFloatField;
    qryStageLevelTasksNO_AS_TEXT: TAbmesWideStringField;
    qryStageLevelTasksNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryStageLevelTasksNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    qryStageLevelTasksFORK_NO: TAbmesFloatField;
    qryStageLevelTasksDETAIL_CODE: TAbmesFloatField;
    qryStageLevelTasksDETAIL_NAME: TAbmesWideStringField;
    qryStageLevelTasksDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryStageLevelTasksCLIENT_DETAIL_NAME: TAbmesWideStringField;
    qryStageLevelTasksLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageLevelTasksML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageLevelTasksML_OBJECT_CODE: TAbmesFloatField;
    qryStageLevelTasksSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageLevelTasksSALE_OBJECT_CODE: TAbmesFloatField;
    qryStageLevelTasksPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField;
    qryStageLevelTasksSALE_BRANCH_NO: TAbmesFloatField;
    qryStageLevelTasksIS_WASTE_COMPENSATOR: TAbmesFloatField;
    qryStageLevelTasksPRIORITY_CODE: TAbmesFloatField;
    qryStageLevelTasksPRIORITY_COLOR: TAbmesFloatField;
    qryStageLevelTasksPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryStageLevelTasksSTAGE_DEPT_CODE: TAbmesFloatField;
    qryStageLevelTasksSTAGE_DEPT_NAME: TAbmesWideStringField;
    qryStageLevelTasksSTAGE_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryStageLevelTasksDOC_BRANCH_CODE: TAbmesFloatField;
    qryStageLevelTasksDOC_CODE: TAbmesFloatField;
    qryStageLevelTasksHAS_DOCUMENTATION: TAbmesFloatField;
    qryStageLevelTasksDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    qryStageLevelTasksDETAIL_DOC_CODE: TAbmesFloatField;
    qryStageLevelTasksIS_FIRST_STAGE_IN_MLL: TAbmesFloatField;
    qryStageLevelTasksIS_LAST_STAGE_IN_MLL: TAbmesFloatField;
    qryStageLevelTasksNEXT_OPERATION_TYPE_CODE: TAbmesFloatField;
    qryStageLevelTasksIN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageLevelTasksOUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageLevelTasksOUT_WASTE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageLevelTasksIS_RECORD_CHANGED: TAbmesFloatField;
    qryStageLevelTasksTO_ENTER_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageLevelTasksAVAILABLE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageLevelTasksTO_LEAVE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageLevelTasksWASTED_BEFORE_TECH_QUANTITY: TAbmesFloatField;
    qryOperationalTasksEFFECTIVE_TREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOperationalTasksEFFECTIVE_TREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryStageLevelTasksEFFECTIVE_TREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryStageLevelTasksEFFECTIVE_TREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryStageLevelTasksEFFECTIVE_TREATMENT_WORKDAYS: TAbmesFloatField;
    qryStageLevelTasksTREATMENT_WORKDAYS: TAbmesFloatField;
    qryStageLevelTasksOPERATION_TYPE_CODE: TAbmesFloatField;
    qryStageLevelTasksMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageLevelTasksMLMSO_OBJECT_CODE: TAbmesFloatField;
    prvStageOutput: TDataSetProvider;
    qryStageOutputWhenNotLastInMll: TAbmesSQLQuery;
    qryStageOutputWhenLastInMll: TAbmesSQLQuery;
    prvStageInput: TDataSetProvider;
    qryStageInputWhenNotFirstInMll: TAbmesSQLQuery;
    qryStageInputWhenFirstInMll: TAbmesSQLQuery;
    qryStageOutputWhenNotLastInMllMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageOutputWhenNotLastInMllMLMS_OBJECT_CODE: TAbmesFloatField;
    qryStageOutputWhenNotLastInMllMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageOutputWhenNotLastInMllMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryStageOutputWhenNotLastInMllOPERATION_TYPE_CODE: TAbmesFloatField;
    qryStageOutputWhenNotLastInMllML_MODEL_STAGE_NO: TAbmesFloatField;
    qryStageOutputWhenNotLastInMllTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryStageOutputWhenNotLastInMllTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryStageOutputWhenNotLastInMllRESERVE_DAYS: TAbmesFloatField;
    qryStageOutputWhenNotLastInMllDEPT_CODE: TAbmesFloatField;
    qryStageOutputWhenNotLastInMllDEPT_NAME: TAbmesWideStringField;
    qryStageOutputWhenNotLastInMllDEPT_IDENTIFIER: TAbmesWideStringField;
    qryStageOutputWhenLastInMllMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageOutputWhenLastInMllMLMS_OBJECT_CODE: TAbmesFloatField;
    qryStageOutputWhenLastInMllMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageOutputWhenLastInMllMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryStageOutputWhenLastInMllOPERATION_TYPE_CODE: TAbmesFloatField;
    qryStageOutputWhenLastInMllML_MODEL_STAGE_NO: TAbmesFloatField;
    qryStageOutputWhenLastInMllTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryStageOutputWhenLastInMllTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryStageOutputWhenLastInMllRESERVE_DAYS: TAbmesFloatField;
    qryStageOutputWhenLastInMllDEPT_CODE: TAbmesFloatField;
    qryStageOutputWhenLastInMllDEPT_NAME: TAbmesWideStringField;
    qryStageOutputWhenLastInMllDEPT_IDENTIFIER: TAbmesWideStringField;
    qryStageInputWhenNotFirstInMllMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllMLMS_OBJECT_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllOPERATION_TYPE_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllML_OBJECT_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllMLL_OBJECT_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllML_MODEL_STAGE_NO: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryStageInputWhenNotFirstInMllTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryStageInputWhenNotFirstInMllRESERVE_DAYS: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllDEPT_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllDEPT_NAME: TAbmesWideStringField;
    qryStageInputWhenNotFirstInMllNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryStageInputWhenNotFirstInMllFORK_NO: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllDETAIL_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllDETAIL_NAME: TAbmesWideStringField;
    qryStageInputWhenNotFirstInMllDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryStageInputWhenNotFirstInMllCLIENT_DETAIL_NAME: TAbmesWideStringField;
    qryStageInputWhenNotFirstInMllDOC_BRANCH_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllDOC_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllHAS_DOCUMENTATION: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllWASTED_BEFORE_TECH_QUANTITY: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllIN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllOUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageInputWhenFirstInMllMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageInputWhenFirstInMllMLMS_OBJECT_CODE: TAbmesFloatField;
    qryStageInputWhenFirstInMllMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageInputWhenFirstInMllMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryStageInputWhenFirstInMllOPERATION_TYPE_CODE: TAbmesFloatField;
    qryStageInputWhenFirstInMllML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageInputWhenFirstInMllML_OBJECT_CODE: TAbmesFloatField;
    qryStageInputWhenFirstInMllMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageInputWhenFirstInMllMLL_OBJECT_CODE: TAbmesFloatField;
    qryStageInputWhenFirstInMllML_MODEL_STAGE_NO: TAbmesFloatField;
    qryStageInputWhenFirstInMllTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryStageInputWhenFirstInMllTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryStageInputWhenFirstInMllRESERVE_DAYS: TAbmesFloatField;
    qryStageInputWhenFirstInMllIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryStageInputWhenFirstInMllDEPT_CODE: TAbmesFloatField;
    qryStageInputWhenFirstInMllDEPT_NAME: TAbmesWideStringField;
    qryStageInputWhenFirstInMllNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryStageInputWhenFirstInMllFORK_NO: TAbmesFloatField;
    qryStageInputWhenFirstInMllDETAIL_CODE: TAbmesFloatField;
    qryStageInputWhenFirstInMllDETAIL_NAME: TAbmesWideStringField;
    qryStageInputWhenFirstInMllDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryStageInputWhenFirstInMllCLIENT_DETAIL_NAME: TAbmesWideStringField;
    qryStageInputWhenFirstInMllDOC_BRANCH_CODE: TAbmesFloatField;
    qryStageInputWhenFirstInMllDOC_CODE: TAbmesFloatField;
    qryStageInputWhenFirstInMllHAS_DOCUMENTATION: TAbmesFloatField;
    qryStageInputWhenFirstInMllWASTED_BEFORE_TECH_QUANTITY: TAbmesFloatField;
    qryStageInputWhenFirstInMllIN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageInputWhenFirstInMllOUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllAVAILABLE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllTO_LEAVE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageInputWhenFirstInMllAVAILABLE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageInputWhenFirstInMllTO_LEAVE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllDEPT_IDENTIFIER: TAbmesWideStringField;
    qryStageInputWhenFirstInMllDEPT_IDENTIFIER: TAbmesWideStringField;
    qryStageInputWhenNotFirstInMllHAS_CAPACITY_DEFICIT: TAbmesFloatField;
    qryStageInputWhenFirstInMllHAS_CAPACITY_DEFICIT: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllOPERATION_TYPE_ABBREV: TAbmesWideStringField;
    qryStageInputWhenFirstInMllOPERATION_TYPE_ABBREV: TAbmesWideStringField;
    qryModelsSALE_IDENTIFICATION: TAbmesWideStringField;
    qryModelsIS_WASTE_COMPENSATOR: TAbmesFloatField;
    qryModelsHAS_WASTE: TAbmesFloatField;
    qryModelsCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryModelsDOC_BRANCH_CODE: TAbmesFloatField;
    qryModelsDOC_CODE: TAbmesFloatField;
    qryModelsOWNER_NAME: TAbmesWideStringField;
    qryModelsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryModelsIS_SALE: TAbmesFloatField;
    qryStageOutputWhenNotLastInMllFORK_NO: TAbmesFloatField;
    qryStageOutputWhenLastInMllFORK_NO: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageInputWhenFirstInMllLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageOutputWhenNotLastInMllDETAIL_CODE: TAbmesFloatField;
    qryStageOutputWhenNotLastInMllDETAIL_NAME: TAbmesWideStringField;
    qryStageOutputWhenLastInMllDETAIL_CODE: TAbmesFloatField;
    qryStageOutputWhenLastInMllDETAIL_NAME: TAbmesWideStringField;
    qryStageOutputWhenNotLastInMllNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryStageOutputWhenLastInMllNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryOperationOutputWhenNotLastNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryOperationOutputWhenNotLastFORK_NO: TAbmesFloatField;
    qryOperationOutputWhenNotLastDETAIL_CODE: TAbmesFloatField;
    qryOperationOutputWhenNotLastDETAIL_NAME: TAbmesWideStringField;
    qryOperationOutputWhenLastInStageNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryOperationOutputWhenLastInStageFORK_NO: TAbmesFloatField;
    qryOperationOutputWhenLastInStageDETAIL_CODE: TAbmesFloatField;
    qryOperationOutputWhenLastInStageDETAIL_NAME: TAbmesWideStringField;
    qryOperationOutputWhenLastInMllNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryOperationOutputWhenLastInMllFORK_NO: TAbmesFloatField;
    qryOperationOutputWhenLastInMllDETAIL_CODE: TAbmesFloatField;
    qryOperationOutputWhenLastInMllDETAIL_NAME: TAbmesWideStringField;
    qryModelsMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField;
    qryModelsHAS_DOC_ITEMS: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllDETAIL_DOC_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllDETAIL_HAS_DOC: TAbmesFloatField;
    qryStageInputWhenFirstInMllDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    qryStageInputWhenFirstInMllDETAIL_DOC_CODE: TAbmesFloatField;
    qryStageInputWhenFirstInMllDETAIL_HAS_DOC: TAbmesFloatField;
    qryOperationInputWhenNotFirstDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationInputWhenNotFirstDETAIL_DOC_CODE: TAbmesFloatField;
    qryOperationInputWhenNotFirstDETAIL_HAS_DOC: TAbmesFloatField;
    qryOperationInputWhenFirstInStageDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInStageDETAIL_DOC_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInStageDETAIL_HAS_DOC: TAbmesFloatField;
    qryOperationInputWhenFirstInMllDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInMllDETAIL_DOC_CODE: TAbmesFloatField;
    qryOperationInputWhenFirstInMllDETAIL_HAS_DOC: TAbmesFloatField;
    shUnarchivedModelCondition: TJvStrHolder;
    qryOperationalTasksPRIORITY_NO: TAbmesFloatField;
    qryOperationalTasksWORK_PRIORITY_CODE: TAbmesFloatField;
    qryOperationalTasksWORK_PRIORITY_NO: TAbmesFloatField;
    qryOneMLMSPRIORITY_NO: TAbmesFloatField;
    qryOneMLMSWORK_PRIORITY_NO: TAbmesFloatField;
    qryModelsWORK_PRIORITY_FULL_NAME: TAbmesWideStringField;
    qryStageLevelTasksPRIORITY_NO: TAbmesFloatField;
    qryStageLevelTasksWORK_PRIORITY_CODE: TAbmesFloatField;
    qryStageLevelTasksWORK_PRIORITY_NO: TAbmesFloatField;
    qryModelsPRIORITY_NO: TAbmesFloatField;
    qryModelsWORK_PRIORITY_NO: TAbmesFloatField;
    qryModelsPRIORITY_CODE: TAbmesFloatField;
    qryStageInputWhenNotFirstInMllSTORE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryStageInputWhenFirstInMllSTORE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInMllVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInMllSTORE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInMllWASTED_BEFORE_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInMllIN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInMllOUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInStageVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInStageSTORE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInStageWASTED_BEFORE_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInStageIN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenFirstInStageOUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenNotFirstVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenNotFirstSTORE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenNotFirstWASTED_BEFORE_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenNotFirstIN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationInputWhenNotFirstOUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryOneMLMSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryOneMLMSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryOperationalTasksPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryOperationalTasksSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryOperationalTasksTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    mshLocalMacroLibrary: TJvMultiStringHolder;
    qryOperationalTasksHAS_DNC_DOC_ITEMS: TAbmesFloatField;
    qryOneMLMSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryOneMLMSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryOneMLMSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryOperationalTasksPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryOperationalTasksSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryOperationalTasksTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryOperationalTasksSETUP_COUNT: TAbmesFloatField;
    qryOperationalTasksREMAINING_SETUP_COUNT: TAbmesFloatField;
    qryModelsHAS_WASTE_COMPENSATORS: TAbmesFloatField;
    qryModelsMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    qryModelsMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField;
    qryModelsSALE_OBJECT_PK: TAbmesWideStringField;
    qryModelsWASTING_SALE_OBJ_PK: TAbmesWideStringField;
    qryOperationalTasksMATERIAL_CODE: TAbmesFloatField;
    qryOperationalTasksMATERIAL_NO: TAbmesFloatField;
    qryOperationalTasksMATERIAL_NAME: TAbmesWideStringField;
    qryOperationalTasksMATERIAL_WORK_MEASURE_ABBREV: TAbmesWideStringField;
    qryOperationalTasksMATERIAL_TECH_MEASURE_COEF: TAbmesFloatField;
    qryOperationalTasksMATERIAL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationalTasksTO_ENTER_MATERIAL_WORK_QUANTITY: TAbmesFloatField;
    qryOperationalTasksMATERIAL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryOperationalTasksPROGRAM_TOOL_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationalTasksPROGRAM_TOOL_DOC_CODE: TAbmesFloatField;
    qryOperationalTasksSPECIFIC_TOOL_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationalTasksSPECIFIC_TOOL_DOC_CODE: TAbmesFloatField;
    qryOperationalTasksTYPICAL_TOOL_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationalTasksTYPICAL_TOOL_DOC_CODE: TAbmesFloatField;
    qryOneMLMSOperationsMLMSO_IS_AUTO_SETUP: TAbmesFloatField;
    qryOneMLMSOperationsMLMSO_IS_AUTO_MOVEMENT: TAbmesFloatField;
    qryOperationalTasksMLMSO_IS_AUTO_SETUP: TAbmesFloatField;
    qryOperationalTasksMLMSO_IS_AUTO_MOVEMENT: TAbmesFloatField;
    qryOneMLMSOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryOperationalTasksDEPT_IDENTIFIER: TAbmesWideStringField;
    qryOperationalTasksDEPT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryOperationalTasksDEPT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationalTasksDEPT_DOC_CODE: TAbmesFloatField;
    qryOperationalTasksDEPT_PRODUCT_CODE: TAbmesFloatField;
    qryOperationalTasksMANAGER_EMPLOYEE_NO: TAbmesFloatField;
    qryOperationalTasksMANAGER_EMPLOYEE_NAME: TAbmesWideStringField;
    qryOperationalTasksDETAIL_NO: TAbmesFloatField;
    qryOperationalTasksMLL_TYPE: TAbmesFloatField;
    qryOperationalTasksCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOperationalTasksCONSUME_END_DATE: TAbmesSQLTimeStampField;
    qryOperationalTasksIS_BEGIN_STORE_STAGE: TAbmesFloatField;
    qryOperationalTasksIS_NORMAL_STAGE: TAbmesFloatField;
    qryOperationalTasksIS_END_STORE_STAGE: TAbmesFloatField;
    qryOperationalTasksDONE_SETUP_COUNT: TAbmesFloatField;
    qryOperationalTasksDONE_SETUP_DATE: TAbmesSQLTimeStampField;
    qryOperationalTasksDONE_SETUP_TIME: TAbmesSQLTimeStampField;
    qryOperationalTasksENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOperationalTasksENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryOperationalTasksDETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationalTasksDETAIL_PARAMS_EXPORT_DATA: TAbmesWideStringField;
    qryOperationalTasksOP_AVAILABLE_DETAIL_TECH_QTY: TAbmesFloatField;
    qryOperationalTasksOP_IN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationalTasksOP_OUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationalTasksLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationalTasksOP_OLD_IN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationalTasksSALE_NO: TAbmesFloatField;
    qryOperationalTasksOM_LOAD_TO_DEPT_ZONE_NO: TAbmesFloatField;
    qryOperationalTasksOM_LOAD_TO_EMPLOYEE_NO: TAbmesFloatField;
    qryOperationalTasksOM_LOAD_TO_EMPLOYEE_NAME: TAbmesWideStringField;
    qryOperationalTasksOM_LOAD_DATE: TAbmesSQLTimeStampField;
    qryOperationalTasksOM_LOAD_TIME: TAbmesSQLTimeStampField;
    qryOperationalTasksOUT_WASTE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsOP_OLD_IN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsOP_IN_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsOP_OUT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsOP_AVAILABLE_DETAIL_TECH_QTY: TAbmesFloatField;
    qryOneMLMSOperationsLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsIS_BEGIN_STORE_STAGE: TAbmesFloatField;
    qryOneMLMSOperationsIS_NORMAL_STAGE: TAbmesFloatField;
    qryOneMLMSOperationsIS_END_STORE_STAGE: TAbmesFloatField;
    qryOneMLMSOperationsDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryOperationalTasksOUT_BACK_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationalTasksIN_NOAUTO_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationalTasksOP_INBACK_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsIN_NOAUTO_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsOUT_BACK_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsOP_INBACK_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationalTasksPREV_OPS_WASTE_QUANTITY: TAbmesFloatField;
    qryOperationalTasksNEXT_VARIANTS_NOT_LOADED_QTY: TAbmesFloatField;
    qryOneMLMSOperationsPREV_OPS_WASTE_QUANTITY: TAbmesFloatField;
    qryOneMLMSOperationsNEXT_VARIANTS_NOT_LOADED_QTY: TAbmesFloatField;
    qryOperationalTasksWASTING_ORDER_IDENTIFIER: TAbmesWideStringField;
    procedure prvModelsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure qryModelsBeforeOpen(DataSet: TDataSet);
    procedure qryOneMLMSOperationsCalcFields(DataSet: TDataSet);
    procedure qryOperationalTasksCalcFields(DataSet: TDataSet);
    procedure qryOperationInputWhenNotFirstCalcFields(DataSet: TDataSet);
    procedure qryOperationInputWhenFirstInStageCalcFields(
      DataSet: TDataSet);
    procedure qryOperationInputWhenFirstInMllCalcFields(DataSet: TDataSet);
    procedure prvOperationInputBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvOperationOutputBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryOperationalTasksBeforeOpen(DataSet: TDataSet);
    procedure qryModelsAfterClose(DataSet: TDataSet);
    procedure qryOperationalTasksAfterClose(DataSet: TDataSet);
    procedure qryStageLevelTasksBeforeOpen(DataSet: TDataSet);
    procedure qryStageLevelTasksAfterClose(DataSet: TDataSet);
    procedure qryStageLevelTasksCalcFields(DataSet: TDataSet);
    procedure qryStageInputWhenNotFirstInMllCalcFields(DataSet: TDataSet);
    procedure qryStageInputWhenFirstInMllCalcFields(DataSet: TDataSet);
    procedure prvStageInputBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvStageOutputBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure prvModelsGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvOperationalTasksGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
  end;

type
  IdmModelReportsProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmModelReportsProxy = class(TDBPooledDataModuleProxy, IdmModelReportsProxy)
  private
    class var FSingleton: TdmModelReportsProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmModelReports>;
  strict protected
    property LockedInstance: ISmartLock<TdmModelReports> read GetLockedInstance;
  public
    class property Singleton: TdmModelReportsProxy read FSingleton;
  end;

implementation

uses
  uDBPooledDataModuleHelper, uUtils, uSaleOrderTypes, uTreeNodes,
  uOperationTypes, uSvrUtils, Math;

{$R *.DFM}

{ TdmModelReportsProxy }

function TdmModelReportsProxy.GetLockedInstance: ISmartLock<TdmModelReports>;
begin
  Result:= ISmartLock<TdmModelReports>(inherited LockedInstance);
end;

{ TdmModelReports }

procedure TdmModelReports.DataModuleCreate(Sender: TObject);
begin
  RegisterMacroLibrary(mshLocalMacroLibrary);
  inherited;
end;

procedure TdmModelReports.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  UnregisterMacroLibrary(mshLocalMacroLibrary);
end;

procedure TdmModelReports.prvModelsBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukModify) and
     not VarIsNullOrEmpty(DeltaDS.FieldByName('DEL_RECORD').NewValue) and
     (DeltaDS.FieldByName('DEL_RECORD').NewValue <> 0) then
    begin
      SetParams(qryDelModel.Params, DeltaDS);
      qryDelModel.ExecSQL;

      Applied:= True;
    end;   { if }
end;

procedure TdmModelReports.prvModelsGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);

var
  MinSpecStateCode: Integer;
  MaxSpecStateCode: Integer;
  SpecStateCodeField: TField;
  IsGettingSaleObjectTree: Boolean;

  function ModelsFilterAccept(ADataSet: TDataSet): Boolean;
  begin
    Result:=
      IsGettingSaleObjectTree or
      SpecStateCodeField.IsNull or
      InRange(SpecStateCodeField.AsInteger, MinSpecStateCode, MaxSpecStateCode);
  end;  { ModelsFilterAccept }

begin
  inherited;

  MinSpecStateCode:= qryModels.CustomParams.ParamByName('MIN_SPEC_STATE_CODE').AsInteger;
  MaxSpecStateCode:= qryModels.CustomParams.ParamByName('MAX_SPEC_STATE_CODE').AsInteger;
  SpecStateCodeField:= DataSet.FieldByName('SPEC_STATE_CODE');
  IsGettingSaleObjectTree:= (qryModels.CustomParams.ParamByName('GET_SALE_OBJECT_TREE').AsInteger = 1);

  DataSet.First;
  while not DataSet.Eof do
    if not ModelsFilterAccept(DataSet) then
      DataSet.Delete
    else
      DataSet.Next;
end;

procedure TdmModelReports.qryModelsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryModels.ParamByName('USER_CODE').AsInteger:= LoginContext.UserCode;

  with qryModels.Params do
    begin
      ProcessUserParamBeforeQueryOpen(ParamByName('ENGINEER_EMPLOYEE_CODE'), LoginContext);
      ProcessUserParamBeforeQueryOpen(ParamByName('OWNER_EMPLOYEE_CODE'), LoginContext);
      SetCurrentDeptIfNeeded(ParamByName('MAIN_DEPT_CODE'), LoginContext);
      SetCurrentDeptIfNeeded(ParamByName('INCLUDE_DEPT_CODE'), LoginContext);
    end;

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

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

      MacroByName('GET_SALE_OBJECT_TREE').AsInteger:= CustomParams.ParamByName('GET_SALE_OBJECT_TREE').AsInteger;

      if (CustomParams.ParamByName('GET_SALE_OBJECT_TREE').AsInteger = 1) then
        MacroByName('SALES_TABLE_OR_TREE').AsString:= 's_tree'
      else
        MacroByName('SALES_TABLE_OR_TREE').AsString:= 'SALES';
    end;  { with }
end;

procedure TdmModelReports.qryOneMLMSOperationsCalcFields(
  DataSet: TDataSet);
var
  InNoautoDetailTechQuantity: Double;
  InDetailTechQuantity: Double;
begin
  inherited;

  if qryOneMLMSOperationsIS_AUTO_RECEIVING_OPERATION.AsBoolean and not LoginContext.FeatureFlagOperationsLoading then
    InNoautoDetailTechQuantity:= Min(qryOneMLMSOperationsIN_NOAUTO_DETAIL_TECH_QUANTITY.AsFloat, qryOneMLMSOperationsVARIANT_DETAIL_TECH_QUANTITY.AsFloat)
  else
    InNoautoDetailTechQuantity:= qryOneMLMSOperationsIN_NOAUTO_DETAIL_TECH_QUANTITY.AsFloat;

  if qryOneMLMSOperationsIS_AUTO_RECEIVING_OPERATION.AsBoolean and not LoginContext.FeatureFlagOperationsLoading then
    InDetailTechQuantity:= Min(qryOneMLMSOperationsIN_DETAIL_TECH_QUANTITY.AsFloat, qryOneMLMSOperationsVARIANT_DETAIL_TECH_QUANTITY.AsFloat)
  else
    InDetailTechQuantity:= qryOneMLMSOperationsIN_DETAIL_TECH_QUANTITY.AsFloat;

  if (qryOneMLMSOperationsIS_BEGIN_STORE_STAGE.AsBoolean) then
    qryOneMLMSOperationsTO_ENTER_DETAIL_TECH_QUANTITY.Clear
  else
    begin
      if LoginContext.FeatureFlagOperationsLoading then
        qryOneMLMSOperationsTO_ENTER_DETAIL_TECH_QUANTITY.AsVarFloat:=
          Max(
            0,
            ( qryOneMLMSOperationsLINE_DETAIL_TECH_QUANTITY.AsFloat
              -
              IfThen( qryOneMLMSOperationsOPERATION_TYPE_CODE.AsInteger = otNormal,
                qryOneMLMSOperationsOP_IN_DETAIL_TECH_QUANTITY.AsFloat,
                InDetailTechQuantity
              )
              -
              qryOneMLMSOperationsOP_OLD_IN_DETAIL_TECH_QUANTITY.AsFloat
              -
              qryOneMLMSOperationsPREV_OPS_WASTE_QUANTITY.AsFloat
            )
          )
      else
        qryOneMLMSOperationsTO_ENTER_DETAIL_TECH_QUANTITY.AsVarFloat:=
          Max(
            0,
            ( qryOneMLMSOperationsVARIANT_DETAIL_TECH_QUANTITY.AsFloat
              -
              InDetailTechQuantity
              -
              Max(
                0,
                Min(
                  ( qryOneMLMSOperationsPREV_OPS_WASTE_QUANTITY.AsFloat
                    -
                    qryOneMLMSOperationsNEXT_VARIANTS_NOT_LOADED_QTY.AsFloat
                  ),
                  ( qryOneMLMSOperationsVARIANT_DETAIL_TECH_QUANTITY.AsFloat
                    -
                    ( InDetailTechQuantity
                      -
                      qryOneMLMSOperationsOUT_BACK_DETAIL_TECH_QUANTITY.AsFloat
                    )
                  )
                )
              )
            )
          );
    end;

  qryOneMLMSOperationsOP_AVAILABLE_DETAIL_TECH_QTY.AsVarFloat:=
    qryOneMLMSOperationsOP_IN_DETAIL_TECH_QUANTITY.AsFloat + qryOneMLMSOperationsOP_INBACK_DETAIL_TECH_QUANTITY.AsFloat - qryOneMLMSOperationsOP_OUT_DETAIL_TECH_QUANTITY.AsFloat;

  if (qryOneMLMSOperationsIS_BEGIN_STORE_STAGE.AsBoolean) then
    qryOneMLMSOperationsAVAILABLE_DETAIL_TECH_QUANTITY.Clear
  else
    qryOneMLMSOperationsAVAILABLE_DETAIL_TECH_QUANTITY.AsVarFloat:=
      IfThen(
        (qryOneMLMSOperationsOPERATION_TYPE_CODE.AsInteger = otNormal) and LoginContext.FeatureFlagOperationsLoading,
        InNoautoDetailTechQuantity,
        InDetailTechQuantity)
      -
      qryOneMLMSOperationsOUT_DETAIL_TECH_QUANTITY.AsFloat
      -
      qryOneMLMSOperationsOUT_BACK_DETAIL_TECH_QUANTITY.AsFloat
      -
      qryOneMLMSOperationsOUT_WASTE_DETAIL_TECH_QUANTITY.AsFloat;

  if (qryOneMLMSOperationsIS_END_STORE_STAGE.AsBoolean) then
    qryOneMLMSOperationsTO_LEAVE_DETAIL_TECH_QUANTITY.Clear
  else
    qryOneMLMSOperationsTO_LEAVE_DETAIL_TECH_QUANTITY.AsVarFloat:=
      Max(
        0,
        ( qryOneMLMSOperationsVARIANT_DETAIL_TECH_QUANTITY.AsFloat
          -
          qryOneMLMSOperationsOUT_DETAIL_TECH_QUANTITY.AsFloat
          -
          qryOneMLMSOperationsOUT_WASTE_DETAIL_TECH_QUANTITY.AsFloat
          -
          Max(
            0,
            Min(
              ( qryOneMLMSOperationsPREV_OPS_WASTE_QUANTITY.AsFloat
                -
                qryOneMLMSOperationsNEXT_VARIANTS_NOT_LOADED_QTY.AsFloat
              ),
              ( qryOneMLMSOperationsVARIANT_DETAIL_TECH_QUANTITY.AsFloat
                -
                ( InDetailTechQuantity
                  -
                  qryOneMLMSOperationsOUT_BACK_DETAIL_TECH_QUANTITY.AsFloat
                )
              )
            )
          )
        )
      );

  if (qryOneMLMSOperationsHOUR_TECH_QUANTITY.AsFloat = 0) then
    qryOneMLMSOperationsWORK_TIME.AsFloat:= 0
  else
    qryOneMLMSOperationsWORK_TIME.AsFloat:=
      (qryOneMLMSOperationsOUT_WASTE_DETAIL_TECH_QUANTITY.AsFloat +
       qryOneMLMSOperationsOUT_DETAIL_TECH_QUANTITY.AsFloat) /
      qryOneMLMSOperationsHOUR_TECH_QUANTITY.AsFloat;
end;

procedure TdmModelReports.qryOperationalTasksCalcFields(DataSet: TDataSet);
var
  InNoautoDetailTechQuantity: Double;
  InDetailTechQuantity: Double;
begin
  inherited;

  if qryOperationalTasksIS_AUTO_RECEIVING_OPERATION.AsBoolean and not LoginContext.FeatureFlagOperationsLoading then
    InNoautoDetailTechQuantity:= Min(qryOperationalTasksIN_NOAUTO_DETAIL_TECH_QUANTITY.AsFloat, qryOperationalTasksVARIANT_DETAIL_TECH_QUANTITY.AsFloat)
  else
    InNoautoDetailTechQuantity:= qryOperationalTasksIN_NOAUTO_DETAIL_TECH_QUANTITY.AsFloat;

  if qryOperationalTasksIS_AUTO_RECEIVING_OPERATION.AsBoolean and not LoginContext.FeatureFlagOperationsLoading then
    InDetailTechQuantity:= Min(qryOperationalTasksIN_DETAIL_TECH_QUANTITY.AsFloat, qryOperationalTasksVARIANT_DETAIL_TECH_QUANTITY.AsFloat)
  else
    InDetailTechQuantity:= qryOperationalTasksIN_DETAIL_TECH_QUANTITY.AsFloat;

  if (qryOperationalTasksIS_BEGIN_STORE_STAGE.AsBoolean) then
    qryOperationalTasksTO_ENTER_DETAIL_TECH_QUANTITY.Clear
  else
    begin
      if LoginContext.FeatureFlagOperationsLoading then
        qryOperationalTasksTO_ENTER_DETAIL_TECH_QUANTITY.AsVarFloat:=
          Max(
            0,
            ( qryOperationalTasksLINE_DETAIL_TECH_QUANTITY.AsFloat
              -
              IfThen( qryOperationalTasksOPERATION_TYPE_CODE.AsInteger = otNormal,
                qryOperationalTasksOP_IN_DETAIL_TECH_QUANTITY.AsFloat,
                InDetailTechQuantity
              )
              -
              qryOperationalTasksOP_OLD_IN_DETAIL_TECH_QUANTITY.AsFloat
              -
              qryOperationalTasksPREV_OPS_WASTE_QUANTITY.AsFloat
            )
          )
      else
        qryOperationalTasksTO_ENTER_DETAIL_TECH_QUANTITY.AsVarFloat:=
          Max(
            0,
            ( qryOperationalTasksVARIANT_DETAIL_TECH_QUANTITY.AsFloat
              -
              InDetailTechQuantity
              -
              Max(
                0,
                Min(
                  ( qryOperationalTasksPREV_OPS_WASTE_QUANTITY.AsFloat
                    -
                    qryOperationalTasksNEXT_VARIANTS_NOT_LOADED_QTY.AsFloat
                  ),
                  ( qryOperationalTasksVARIANT_DETAIL_TECH_QUANTITY.AsFloat
                    -
                    ( InDetailTechQuantity
                      -
                      qryOperationalTasksOUT_BACK_DETAIL_TECH_QUANTITY.AsFloat
                    )
                  )
                )
              )
            )
          );
    end;

  qryOperationalTasksOP_AVAILABLE_DETAIL_TECH_QTY.AsVarFloat:=
    qryOperationalTasksOP_IN_DETAIL_TECH_QUANTITY.AsFloat + qryOperationalTasksOP_INBACK_DETAIL_TECH_QUANTITY.AsFloat - qryOperationalTasksOP_OUT_DETAIL_TECH_QUANTITY.AsFloat;

  if (qryOperationalTasksIS_BEGIN_STORE_STAGE.AsBoolean) then
    qryOperationalTasksAVAILABLE_DETAIL_TECH_QUANTITY.Clear
  else
    qryOperationalTasksAVAILABLE_DETAIL_TECH_QUANTITY.AsVarFloat:=
      IfThen(
        (qryOperationalTasksOPERATION_TYPE_CODE.AsInteger = otNormal) and LoginContext.FeatureFlagOperationsLoading,
        InNoautoDetailTechQuantity,
        InDetailTechQuantity)
      -
      qryOperationalTasksOUT_DETAIL_TECH_QUANTITY.AsFloat
      -
      qryOperationalTasksOUT_BACK_DETAIL_TECH_QUANTITY.AsFloat
      -
      qryOperationalTasksOUT_WASTE_DETAIL_TECH_QUANTITY.AsFloat;

  if (qryOperationalTasksIS_END_STORE_STAGE.AsBoolean) then
    qryOperationalTasksTO_LEAVE_DETAIL_TECH_QUANTITY.Clear
  else
    qryOperationalTasksTO_LEAVE_DETAIL_TECH_QUANTITY.AsVarFloat:=
      Max(
        0,
        ( qryOperationalTasksVARIANT_DETAIL_TECH_QUANTITY.AsFloat
          -
          qryOperationalTasksOUT_DETAIL_TECH_QUANTITY.AsFloat
          -
          qryOperationalTasksOUT_WASTE_DETAIL_TECH_QUANTITY.AsFloat
          -
          Max(
            0,
            Min(
              ( qryOperationalTasksPREV_OPS_WASTE_QUANTITY.AsFloat
                -
                qryOperationalTasksNEXT_VARIANTS_NOT_LOADED_QTY.AsFloat
              ),
              ( qryOperationalTasksVARIANT_DETAIL_TECH_QUANTITY.AsFloat
                -
                ( InDetailTechQuantity
                  -
                  qryOperationalTasksOUT_BACK_DETAIL_TECH_QUANTITY.AsFloat
                )
              )
            )
          )
        )
      );

  qryOperationalTasksTO_ENTER_MATERIAL_WORK_QUANTITY.AsVariant:=
    qryOperationalTasksTO_ENTER_DETAIL_TECH_QUANTITY.AsVariant *
    qryOperationalTasksMATERIAL_TECH_QUANTITY.AsVariant /
    qryOperationalTasksMATERIAL_TECH_MEASURE_COEF.AsVariant;

  if (qryOperationalTasksSETUP_HOUR_TECH_QUANTITY.AsFloat = 0) then
    qryOperationalTasksVARIANT_SETUP_TIME.AsFloat:= 0
  else
    qryOperationalTasksVARIANT_SETUP_TIME.AsFloat:=
      (qryOperationalTasksSETUP_COUNT.AsFloat / qryOperationalTasksSETUP_HOUR_TECH_QUANTITY.AsFloat);

  if (qryOperationalTasksHOUR_TECH_QUANTITY.AsFloat = 0) then
    qryOperationalTasksVARIANT_WORK_TIME.AsFloat:= 0
  else
    qryOperationalTasksVARIANT_WORK_TIME.AsFloat:=
      ( qryOperationalTasksVARIANT_DETAIL_TECH_QUANTITY.AsFloat /
        qryOperationalTasksHOUR_TECH_QUANTITY.AsFloat);

  if (qryOperationalTasksSETUP_HOUR_TECH_QUANTITY.AsFloat = 0) then
    qryOperationalTasksREMAINING_SETUP_TIME.AsFloat:= 0
  else
    qryOperationalTasksREMAINING_SETUP_TIME.AsFloat:=
      (qryOperationalTasksREMAINING_SETUP_COUNT.AsFloat / qryOperationalTasksSETUP_HOUR_TECH_QUANTITY.AsFloat);

  if (qryOperationalTasksHOUR_TECH_QUANTITY.AsFloat = 0) then
    qryOperationalTasksREMAINING_WORK_TIME.AsFloat:= 0
  else
    qryOperationalTasksREMAINING_WORK_TIME.AsFloat:=
      ( qryOperationalTasksTO_LEAVE_DETAIL_TECH_QUANTITY.AsFloat /
        qryOperationalTasksHOUR_TECH_QUANTITY.AsFloat);

  if qryOperationalTasksSETUP_PROFESSION_CODE.IsNull then
    begin
      qryOperationalTasksSETUP_NO_AS_TEXT.Clear;
      qryOperationalTasksSETUP_FORK_NO.Clear;
      qryOperationalTasksSETUP_DETAIL_NAME.Clear;
      qryOperationalTasksSETUP_DETAIL_TECH_MEASURE_ABBR.Clear;
      qryOperationalTasksSETUP_SHOW_NO.Clear;
    end
  else
    begin
      qryOperationalTasksSETUP_NO_AS_TEXT.AsVariant:= qryOperationalTasksNO_AS_TEXT.AsVariant;
      qryOperationalTasksSETUP_FORK_NO.AsVariant:= qryOperationalTasksFORK_NO.AsVariant;
      qryOperationalTasksSETUP_DETAIL_NAME.AsVariant:= qryOperationalTasksDETAIL_NAME.AsVariant;
      qryOperationalTasksSETUP_DETAIL_TECH_MEASURE_ABBR.AsVariant:= qryOperationalTasksDETAIL_TECH_MEASURE_ABBREV.AsVariant;
      qryOperationalTasksSETUP_SHOW_NO.AsVariant:= qryOperationalTasksSHOW_NO.AsVariant;
    end;
end;

procedure TdmModelReports.qryOperationInputWhenNotFirstCalcFields(
  DataSet: TDataSet);
var
  ToLeaveDetailTechQuantity: Real;
begin
  inherited;
  ToLeaveDetailTechQuantity:=
    Max(
      0,
      ( DataSet.FieldByName('VARIANT_DETAIL_TECH_QUANTITY').AsFloat
        -
        DataSet.FieldByName('OUT_DETAIL_TECH_QUANTITY').AsFloat
        -
        DataSet.FieldByName('WASTED_BEFORE_TECH_QUANTITY').AsFloat
      )
    );

  DataSet.FieldByName('TO_LEAVE_DETAIL_TECH_QUANTITY').AsVariant:=
    FloatToVar(ToLeaveDetailTechQuantity);

  DataSet.FieldByName('AVAILABLE_DETAIL_TECH_QUANTITY').AsVariant:=
    FloatToVar(
      Min(
        ( DataSet.FieldByName('STORE_DETAIL_TECH_QUANTITY').AsFloat +
          DataSet.FieldByName('IN_DETAIL_TECH_QUANTITY').AsFloat -
          DataSet.FieldByName('OUT_DETAIL_TECH_QUANTITY').AsFloat
        ),
        ToLeaveDetailTechQuantity
      )
    );
end;

procedure TdmModelReports.qryOperationInputWhenFirstInStageCalcFields(
  DataSet: TDataSet);
var
  ToLeaveDetailTechQuantity: Real;
begin
  inherited;
  ToLeaveDetailTechQuantity:=
    Max(
      0,
      ( DataSet.FieldByName('VARIANT_DETAIL_TECH_QUANTITY').AsFloat
        -
        DataSet.FieldByName('OUT_DETAIL_TECH_QUANTITY').AsFloat
        -
        DataSet.FieldByName('WASTED_BEFORE_TECH_QUANTITY').AsFloat
      )
    );

  DataSet.FieldByName('TO_LEAVE_DETAIL_TECH_QUANTITY').AsVariant:=
    FloatToVar(ToLeaveDetailTechQuantity);

  DataSet.FieldByName('AVAILABLE_DETAIL_TECH_QUANTITY').AsVariant:=
    FloatToVar(
      Min(
        ( DataSet.FieldByName('STORE_DETAIL_TECH_QUANTITY').AsFloat +
          DataSet.FieldByName('IN_DETAIL_TECH_QUANTITY').AsFloat -
          DataSet.FieldByName('OUT_DETAIL_TECH_QUANTITY').AsFloat
        ),
        ToLeaveDetailTechQuantity
      )
    );
end;

procedure TdmModelReports.qryOperationInputWhenFirstInMllCalcFields(
  DataSet: TDataSet);
var
  ToLeaveDetailTechQuantity: Real;
begin
  inherited;
  ToLeaveDetailTechQuantity:=
    Max(
      0,
      ( DataSet.FieldByName('VARIANT_DETAIL_TECH_QUANTITY').AsFloat
        -
        DataSet.FieldByName('OUT_DETAIL_TECH_QUANTITY').AsFloat
        -
        DataSet.FieldByName('WASTED_BEFORE_TECH_QUANTITY').AsFloat
      )
    );

  DataSet.FieldByName('TO_LEAVE_DETAIL_TECH_QUANTITY').AsVariant:=
    FloatToVar(ToLeaveDetailTechQuantity);

  DataSet.FieldByName('AVAILABLE_DETAIL_TECH_QUANTITY').AsVariant:=
    FloatToVar(
      Min(
        ( DataSet.FieldByName('STORE_DETAIL_TECH_QUANTITY').AsFloat +
          DataSet.FieldByName('IN_DETAIL_TECH_QUANTITY').AsFloat -
          DataSet.FieldByName('OUT_DETAIL_TECH_QUANTITY').AsFloat
        ),
        ToLeaveDetailTechQuantity
      )
    );
end;

procedure TdmModelReports.prvOperationalTasksGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  OperationStatusFilter: Integer;
  OpAvailableQuantityStatusFilter: Integer;
  AvailableQuantityStatusFilter: Integer;
  ToEnterDetailTechQuantityField: TField;
  OpAvailableDetailTechQuantityField: TField;
  AvailableDetailTechQuantityField: TField;
  ToLeaveDetailTechQuantityField: TField;
  OmLoadToDeptZoneNoField: TField;
  OmLoadToEmployeeNoField: TField;
  OmLoadToEmployeeNameField: TField;
  OmLoadDateField: TField;
  OmLoadTimeField: TField;
begin
  inherited;
  OperationStatusFilter:= qryOperationalTasks.ParamByName('OPERATION_STATUS').AsInteger;
  OpAvailableQuantityStatusFilter:= qryOperationalTasks.ParamByName('OP_AVAILABLE_QUANTITY_STATUS').AsInteger;
  AvailableQuantityStatusFilter:= qryOperationalTasks.ParamByName('AVAILABLE_QUANTITY_STATUS').AsInteger;

  ToEnterDetailTechQuantityField:= DataSet.FieldByName('TO_ENTER_DETAIL_TECH_QUANTITY');
  OpAvailableDetailTechQuantityField:= DataSet.FieldByName('OP_AVAILABLE_DETAIL_TECH_QTY');
  AvailableDetailTechQuantityField:= DataSet.FieldByName('AVAILABLE_DETAIL_TECH_QUANTITY');
  ToLeaveDetailTechQuantityField:= DataSet.FieldByName('TO_LEAVE_DETAIL_TECH_QUANTITY');

  OmLoadToDeptZoneNoField:= DataSet.FieldByName('OM_LOAD_TO_DEPT_ZONE_NO');
  OmLoadToEmployeeNoField:= DataSet.FieldByName('OM_LOAD_TO_EMPLOYEE_NO');
  OmLoadToEmployeeNameField:= DataSet.FieldByName('OM_LOAD_TO_EMPLOYEE_NAME');
  OmLoadDateField:= DataSet.FieldByName('OM_LOAD_DATE');
  OmLoadTimeField:= DataSet.FieldByName('OM_LOAD_TIME');

  DataSet.First;
  while not DataSet.Eof do
    begin
      if ( (OperationStatusFilter = 1) and
           ToEnterDetailTechQuantityField.IsNull and
           OpAvailableDetailTechQuantityField.IsNull and
           AvailableDetailTechQuantityField.IsNull and
           ToLeaveDetailTechQuantityField.IsNull
         ) or
         ( (OperationStatusFilter = 2) and
           ( not ToEnterDetailTechQuantityField.IsNull or
             not OpAvailableDetailTechQuantityField.IsNull or
             not AvailableDetailTechQuantityField.IsNull or
             not ToLeaveDetailTechQuantityField.IsNull
           )
         ) or
         ( (OpAvailableQuantityStatusFilter = 1) and
           OpAvailableDetailTechQuantityField.IsNull
         ) or
         ( (OpAvailableQuantityStatusFilter = 2) and
           not OpAvailableDetailTechQuantityField.IsNull
         ) or
         ( (AvailableQuantityStatusFilter = 1) and
           AvailableDetailTechQuantityField.IsNull
         ) or
         ( (AvailableQuantityStatusFilter = 2) and
           not AvailableDetailTechQuantityField.IsNull
         ) then
        begin
          DataSet.Delete;
        end
      else
        begin
          if AvailableDetailTechQuantityField.IsNull and
             not OmLoadDateField.IsNull
          then
            begin
              DataSet.SafeEdit /
                procedure begin
                  OmLoadToDeptZoneNoField.Clear;
                  OmLoadToEmployeeNoField.Clear;
                  OmLoadToEmployeeNameField.Clear;
                  OmLoadDateField.Clear;
                  OmLoadTimeField.Clear;
                end;
            end;

          DataSet.Next;
        end;
    end;
end;

procedure TdmModelReports.prvOperationInputBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
var
  p: TParams;
begin
  inherited;
  if VarIsNullOrEmpty(OwnerData) then
    Exit;

  p:= TParams.Create;
  try
    UnpackParams(OwnerData, p);

    if GetBoolValue(p.ParamByName('IS_FIRST_OPERATION_IN_STAGE')) then
      begin
        if GetBoolValue(p.ParamByName('IS_FIRST_STAGE_IN_MLL')) then
          (Sender as TDataSetProvider).DataSet:= qryOperationInputWhenFirstInMll
        else
          (Sender as TDataSetProvider).DataSet:= qryOperationInputWhenFirstInStage;
      end
    else
      (Sender as TDataSetProvider).DataSet:= qryOperationInputWhenNotFirst;

    IProviderSupportNG((Sender as TDataSetProvider).DataSet).PSSetParams(p);
  finally
    FreeAndNil(p);
  end;  { try }
end;

procedure TdmModelReports.prvOperationOutputBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
var
  p: TParams;
begin
  inherited;
  if VarIsNullOrEmpty(OwnerData) then
    Exit;

  p:= TParams.Create;
  try
    UnpackParams(OwnerData, p);

    if GetBoolValue(p.ParamByName('IS_LAST_OPERATION_IN_STAGE')) then
      begin
        if GetBoolValue(p.ParamByName('IS_LAST_STAGE_IN_MLL')) then
          (Sender as TDataSetProvider).DataSet:= qryOperationOutputWhenLastInMll
        else
          (Sender as TDataSetProvider).DataSet:= qryOperationOutputWhenLastInStage;
      end
    else
      (Sender as TDataSetProvider).DataSet:= qryOperationOutputWhenNotLast;

    IProviderSupportNG((Sender as TDataSetProvider).DataSet).PSSetParams(p);
  finally
    FreeAndNil(p);
  end;  { try }
end;

procedure TdmModelReports.qryModelsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmModelReports.qryOperationalTasksBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ProcessNoParamBeforeQueryOpen((DataSet as TAbmesSQLQuery).ParamByName('MLL_NO_AS_TEXT'));

  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmModelReports.qryOperationalTasksAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmModelReports.qryStageLevelTasksBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ProcessNoParamBeforeQueryOpen((DataSet as TAbmesSQLQuery).ParamByName('MLL_NO_AS_TEXT'));

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('RESULT_PRODUCT_CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('DETAIL_CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);

  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmModelReports.qryStageLevelTasksAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('DETAIL_CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('RESULT_PRODUCT_CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmModelReports.qryStageLevelTasksCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryStageLevelTasksTO_ENTER_DETAIL_TECH_QUANTITY.AsVariant:=
    FloatToVar(
      Max(
        0,
        ( qryStageLevelTasksLINE_DETAIL_TECH_QUANTITY.AsFloat
          -
          qryStageLevelTasksIN_DETAIL_TECH_QUANTITY.AsFloat
          -
          qryStageLevelTasksWASTED_BEFORE_TECH_QUANTITY.AsFloat
        )
      )
    );

  qryStageLevelTasksAVAILABLE_DETAIL_TECH_QUANTITY.AsVariant:=
    FloatToVar(
      qryStageLevelTasksIN_DETAIL_TECH_QUANTITY.AsFloat -
      qryStageLevelTasksOUT_DETAIL_TECH_QUANTITY.AsFloat);

  qryStageLevelTasksTO_LEAVE_DETAIL_TECH_QUANTITY.AsVariant:=
    FloatToVar(
      Max(
        0,
        ( qryStageLevelTasksLINE_DETAIL_TECH_QUANTITY.AsFloat
          -
          qryStageLevelTasksOUT_DETAIL_TECH_QUANTITY.AsFloat
          -
          qryStageLevelTasksWASTED_BEFORE_TECH_QUANTITY.AsFloat
        )
      )
    );
end;

procedure TdmModelReports.qryStageInputWhenNotFirstInMllCalcFields(
  DataSet: TDataSet);
var
  ToLeaveDetailTechQuantity: Real;
begin
  inherited;
  ToLeaveDetailTechQuantity:=
    Max(
      0,
      ( DataSet.FieldByName('LINE_DETAIL_TECH_QUANTITY').AsFloat
        -
        DataSet.FieldByName('OUT_DETAIL_TECH_QUANTITY').AsFloat
        -
        DataSet.FieldByName('WASTED_BEFORE_TECH_QUANTITY').AsFloat
      )
    );

  DataSet.FieldByName('TO_LEAVE_DETAIL_TECH_QUANTITY').AsVariant:=
    FloatToVar(ToLeaveDetailTechQuantity);

  DataSet.FieldByName('AVAILABLE_DETAIL_TECH_QUANTITY').AsVariant:=
    FloatToVar(
      Min(
        ( DataSet.FieldByName('STORE_DETAIL_TECH_QUANTITY').AsFloat +
          DataSet.FieldByName('IN_DETAIL_TECH_QUANTITY').AsFloat -
          DataSet.FieldByName('OUT_DETAIL_TECH_QUANTITY').AsFloat
        ),
        ToLeaveDetailTechQuantity
      )
    );
end;

procedure TdmModelReports.qryStageInputWhenFirstInMllCalcFields(
  DataSet: TDataSet);
var
  ToLeaveDetailTechQuantity: Real;
begin
  inherited;
  ToLeaveDetailTechQuantity:=
    Max(
      0,
      ( DataSet.FieldByName('LINE_DETAIL_TECH_QUANTITY').AsFloat
        -
        DataSet.FieldByName('OUT_DETAIL_TECH_QUANTITY').AsFloat
        -
        DataSet.FieldByName('WASTED_BEFORE_TECH_QUANTITY').AsFloat
      )
    );

  DataSet.FieldByName('TO_LEAVE_DETAIL_TECH_QUANTITY').AsVariant:=
    FloatToVar(ToLeaveDetailTechQuantity);

  DataSet.FieldByName('AVAILABLE_DETAIL_TECH_QUANTITY').AsVariant:=
    FloatToVar(
      Min(
        ( DataSet.FieldByName('STORE_DETAIL_TECH_QUANTITY').AsFloat +
          DataSet.FieldByName('IN_DETAIL_TECH_QUANTITY').AsFloat -
          DataSet.FieldByName('OUT_DETAIL_TECH_QUANTITY').AsFloat
        ),
        ToLeaveDetailTechQuantity
      )
    );
end;

procedure TdmModelReports.prvStageInputBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
var
  p: TParams;
begin
  inherited;
  if VarIsNullOrEmpty(OwnerData) then
    Exit;

  p:= TParams.Create;
  try
    UnpackParams(OwnerData, p);

    if GetBoolValue(p.ParamByName('IS_FIRST_STAGE_IN_MLL')) then
      (Sender as TDataSetProvider).DataSet:= qryStageInputWhenFirstInMll
    else
      (Sender as TDataSetProvider).DataSet:= qryStageInputWhenNotFirstInMll;

    IProviderSupportNG((Sender as TDataSetProvider).DataSet).PSSetParams(p);
  finally
    FreeAndNil(p);
  end;  { try }
end;

procedure TdmModelReports.prvStageOutputBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
var
  p: TParams;
begin
  inherited;
  if VarIsNullOrEmpty(OwnerData) then
    Exit;

  p:= TParams.Create;
  try
    UnpackParams(OwnerData, p);

    if GetBoolValue(p.ParamByName('IS_LAST_STAGE_IN_MLL')) then
      (Sender as TDataSetProvider).DataSet:= qryStageOutputWhenLastInMll
    else
      (Sender as TDataSetProvider).DataSet:= qryStageOutputWhenNotLastInMll;

    IProviderSupportNG((Sender as TDataSetProvider).DataSet).PSSetParams(p);
  finally
    FreeAndNil(p);
  end;  { try }
end;

initialization
  TdmModelReportsProxy.FSingleton:= TdmModelReportsProxy.Create(TdmModelReports);

finalization
  FreeAndNil(TdmModelReportsProxy.FSingleton);
end.
