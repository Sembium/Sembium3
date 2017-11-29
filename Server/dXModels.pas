unit dXModels;

interface

uses
  Windows, Messages, SysUtils, Classes, dDBPooledDataModule, Provider,
  dPooledDataModule, Db, AbmesSQLQuery,
  AbmesFields, DBClient, AbmesClientDataSet, JvStringHolder, WideStrings,
  FMTBcd, SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock;

const
  MaxNoPos = 25;

type                                                                     
  TdmXModels = class(TDBPooledDataModule)
    prvBoundProcessObject: TDataSetProvider;
    prvXModel: TDataSetProvider;
    qryXModel: TAbmesSQLQuery;
    qryXModelML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryXModelML_OBJECT_CODE: TAbmesFloatField;
    qryXModelBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryXModelBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryXModelMAIN_DEPT_CODE: TAbmesFloatField;
    qryXModelRESULT_PRODUCT_CODE: TAbmesFloatField;
    qryXModelSPEC_VERSION_NO: TAbmesFloatField;
    qryXModelSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryXModelRESULT_STORE_CODE: TAbmesFloatField;
    qryXModelENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryXModelENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField;
    qryXModelIS_ARCHIVED: TAbmesFloatField;
    qryXModelCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryXModelCREATE_DATE: TAbmesSQLTimeStampField;
    qryXModelCREATE_TIME: TAbmesSQLTimeStampField;
    qryXModelCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryXModelCHANGE_DATE: TAbmesSQLTimeStampField;
    qryXModelCHANGE_TIME: TAbmesSQLTimeStampField;
    qryXModelLIMITING_EMPLOYEE_CODE: TAbmesFloatField;
    qryXModelLIMITING_DATE: TAbmesSQLTimeStampField;
    qryXModelLIMITING_TIME: TAbmesSQLTimeStampField;
    qryXModelCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryXModelCLOSE_DATE: TAbmesSQLTimeStampField;
    qryXModelCLOSE_TIME: TAbmesSQLTimeStampField;
    qryXModelANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryXModelANNUL_DATE: TAbmesSQLTimeStampField;
    qryXModelANNUL_TIME: TAbmesSQLTimeStampField;
    qryXModelNOTES: TAbmesWideStringField;
    dsXModel: TDataSource;
    qryXModelLines: TAbmesSQLQuery;
    qryXModelLinesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryXModelLinesMLL_OBJECT_CODE: TAbmesFloatField;
    qryXModelLinesPARENT_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryXModelLinesPARENT_MLL_OBJECT_CODE: TAbmesFloatField;
    qryXModelLinesFORK_0_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryXModelLinesFORK_0_MLL_OBJECT_CODE: TAbmesFloatField;
    qryXModelLinesNO_1: TAbmesFloatField;
    qryXModelLinesNO_2: TAbmesFloatField;
    qryXModelLinesNO_3: TAbmesFloatField;
    qryXModelLinesNO_4: TAbmesFloatField;
    qryXModelLinesNO_5: TAbmesFloatField;
    qryXModelLinesFORK_NO: TAbmesFloatField;
    qryXModelLinesDETAIL_CODE: TAbmesFloatField;
    qryXModelLinesDETAIL_NAME: TAbmesWideStringField;
    qryXModelLinesDETAIL_NO: TAbmesFloatField;
    qryXModelLinesDETAIL_HAS_DOCUMENTATION: TAbmesFloatField;
    qryXModelLinesDETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryXModelLinesTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryXModelLinesLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryXModelLinesPAR_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryXModelLinesDETAIL_TECH_MEASURE_CODE: TAbmesFloatField;
    qryXModelLinesPRODUCT_CODE: TAbmesFloatField;
    qryXModelLinesPRODUCT_NAME: TAbmesWideStringField;
    qryXModelLinesPRODUCT_NO: TAbmesFloatField;
    qryXModelLinesPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qryXModelLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryXModelLinesTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryXModelLinesPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    qryXModelLinesPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField;
    qryXModelLinesTOTAL_PRODUCT_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryXModelLinesPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryXModelLinesPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryXModelLinesPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField;
    qryXModelLinesPRODUCT_SECONDARY_TOTAL_PRICE: TAbmesFloatField;
    qryXModelLinesPRODUCT_IS_FOR_TREATMENT_USE: TAbmesFloatField;
    qryXModelLinesPRODUCT_IS_FOR_DIRECT_USE: TAbmesFloatField;
    qryXModelLinesSTORE_CODE: TAbmesFloatField;
    qryXModelLinesPRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryXModelLinesPRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField;
    qryXModelLinesNOTES: TAbmesWideStringField;
    qryXModelMAIN_DEPT_NAME: TAbmesWideStringField;
    qryXModelMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryXModelRESULT_PRODUCT_NAME: TAbmesWideStringField;
    qryXModelRESULT_PRODUCT_NO: TAbmesFloatField;
    dsXModelLines: TDataSource;
    qryXModelLineStages: TAbmesSQLQuery;
    qryXModelLineStagesMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryXModelLineStagesMLMS_OBJECT_CODE: TAbmesFloatField;
    qryXModelLineStagesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryXModelLineStagesMLL_OBJECT_CODE: TAbmesFloatField;
    qryXModelLineStagesML_MODEL_STAGE_NO: TAbmesFloatField;
    qryXModelLineStagesDEPT_CODE: TAbmesFloatField;
    qryXModelLineStagesDEPT_NAME: TAbmesWideStringField;
    qryXModelLineStagesDEPT_IDENTIFIER: TAbmesWideStringField;
    qryXModelLineStagesDEPT_IS_STORE: TAbmesFloatField;
    qryXModelLineStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    qryXModelLineStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    qryXModelLineStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    qryXModelLinesIS_NOT_FORK: TAbmesFloatField;
    qrySaleID: TAbmesSQLQuery;
    qryXModelExists: TAbmesSQLQuery;
    qryXModelExistsML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryXModelExistsML_OBJECT_CODE: TAbmesFloatField;
    qryXModelLinesNO_6: TAbmesFloatField;
    qryXModelLinesNO_7: TAbmesFloatField;
    qryXModelLinesNO_8: TAbmesFloatField;
    qryXModelLinesIS_FORK: TAbmesFloatField;
    qryXModelLinesML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryXModelLinesML_OBJECT_CODE: TAbmesFloatField;
    cdsNewMLLKey: TAbmesClientDataSet;
    cdsNewMLLKeyOLD_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsNewMLLKeyOLD_MLL_OBJECT_CODE: TAbmesFloatField;
    cdsNewMLLKeyNEW_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsNewMLLKeyNEW_MLL_OBJECT_CODE: TAbmesFloatField;
    qryXModelLinesMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField;
    qryXModelLinesMLL_CHANGE_STATUS: TAbmesFloatField;
    prvInsertSpecLines: TDataSetProvider;
    qryInsertSpecLines: TAbmesSQLQuery;
    dsInsertSpecLines: TDataSource;
    qryInsertSpecStages: TAbmesSQLQuery;
    qryInsertSpecStagesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSpecStagesSPEC_LINE_CODE: TAbmesFloatField;
    qryInsertSpecStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryInsertSpecStagesSPEC_LINE_STAGE_NO: TAbmesFloatField;
    qryInsertSpecStagesDEPT_CODE: TAbmesFloatField;
    qryInsertSpecStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    qryInsertSpecStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    qryInsertSpecStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    qryInsertSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSpecLinesSPEC_LINE_CODE: TAbmesFloatField;
    qryInsertSpecLinesNO_1: TAbmesFloatField;
    qryInsertSpecLinesNO_2: TAbmesFloatField;
    qryInsertSpecLinesNO_3: TAbmesFloatField;
    qryInsertSpecLinesNO_4: TAbmesFloatField;
    qryInsertSpecLinesNO_5: TAbmesFloatField;
    qryInsertSpecLinesNO_6: TAbmesFloatField;
    qryInsertSpecLinesNO_7: TAbmesFloatField;
    qryInsertSpecLinesNO_8: TAbmesFloatField;
    qryInsertSpecLinesDETAIL_CODE: TAbmesFloatField;
    qryInsertSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_CODE: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryInsertSpecLinesNOTES: TAbmesWideStringField;
    qryInsertSpecLinesPARENT_NO_1: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_2: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_3: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_4: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_5: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_6: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_7: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_8: TAbmesFloatField;
    qryAuthorizedSpecModelVariants: TAbmesSQLQuery;
    qryAuthorizedSpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryAuthorizedSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryAuthorizedSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField;
    qryAuthorizedSpecModelVariantsMAIN_DEPT_NAME: TAbmesWideStringField;
    qryAuthorizedSpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryAuthorizedSpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField;
    qryAuthorizedSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField;
    qryAuthorizedSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField;
    qryAuthorizedSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField;
    prvAuthorizedSpecModelVariants: TDataSetProvider;
    qryAuthorizedSpecModelVariantsAUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField;
    qryAuthorizedSpecModelVariantsAUTHORIZATION_DATE: TAbmesSQLTimeStampField;
    qryXModelOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    qryUpdSale: TAbmesSQLQuery;
    qryXModelBND_PROCESS_OBJECT_CLASS_CODE: TAbmesFloatField;
    qryXModelSALE_BRANCH_NO: TAbmesFloatField;
    qryXModelSALE_NO: TAbmesFloatField;
    qryXModelSALE_GROUP_BRANCH_NO: TAbmesFloatField;
    qryXModelSALE_GROUP_CODE: TAbmesFloatField;
    qryInsertSpecLinesMAIN_DEPT_CODE: TAbmesFloatField;
    qryInsertSpecLinesSPEC_VERSION_NO: TAbmesFloatField;
    qryInsModelStageLinks: TAbmesSQLQuery;
    qryUpdModelStageLinks: TAbmesSQLQuery;
    qryXModelTasks: TAbmesSQLQuery;
    qryXModelTasksML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryXModelTasksML_OBJECT_CODE: TAbmesFloatField;
    qryXModelTasksMATERIAL_LIST_TASK_NO: TAbmesFloatField;
    qryXModelTasksMATERIAL_LIST_TASK_NAME: TAbmesWideStringField;
    dsXModelTasks: TDataSource;
    qryXModelTaskDepts: TAbmesSQLQuery;
    qryXModelTaskDeptsML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryXModelTaskDeptsML_OBJECT_CODE: TAbmesFloatField;
    qryXModelTaskDeptsMATERIAL_LIST_TASK_NO: TAbmesFloatField;
    qryXModelTaskDeptsDEPT_CODE: TAbmesFloatField;
    qryXModelTaskDeptsDEPT_NAME: TAbmesWideStringField;
    qryXModelTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField;
    prvInsertSpecTasks: TDataSetProvider;
    qryInsertSpecTasks: TAbmesSQLQuery;
    qryInsertSpecTasksSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSpecTasksSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryInsertSpecTasksSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField;
    qryInsertSpecTasksSPEC_MODEL_VARIANT_TASK_NAME: TAbmesWideStringField;
    dsInsertSpecTasks: TDataSource;
    qryInsertSpecTaskDepts: TAbmesSQLQuery;
    qryInsertSpecTaskDeptsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSpecTaskDeptsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryInsertSpecTaskDeptsSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField;
    qryInsertSpecTaskDeptsDEPT_CODE: TAbmesFloatField;
    qryInsertSpecTaskDeptsDEPT_NAME: TAbmesWideStringField;
    qryInsertSpecTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryUpdMaterialListLineNosToPositive: TAbmesSQLQuery;
    qryDelLinePSD: TAbmesSQLQuery;
    qryXModelTECH_QUANTITY: TAbmesFloatField;
    qryXModelLineStagesNO_1: TAbmesFloatField;
    qryXModelLineStagesNO_2: TAbmesFloatField;
    qryXModelLineStagesNO_3: TAbmesFloatField;
    qryXModelLineStagesNO_4: TAbmesFloatField;
    qryXModelLineStagesNO_5: TAbmesFloatField;
    qryXModelLineStagesNO_6: TAbmesFloatField;
    qryXModelLineStagesNO_7: TAbmesFloatField;
    qryXModelLineStagesNO_8: TAbmesFloatField;
    qryXModelLineStagesFORK_NO: TAbmesFloatField;
    qryUpdMaterialListLineStageNosToPositive: TAbmesSQLQuery;
    qryNeededSpecModelVariantNo: TAbmesSQLQuery;
    qryNeededSpecModelVariantNoSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySaleIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    qrySaleGroupID: TAbmesSQLQuery;
    qryDelPlannedStoreDeal: TAbmesSQLQuery;
    qryInsertSpecLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    dsInsertSpecStages: TDataSource;
    qryInsertSpecOperations: TAbmesSQLQuery;
    dsXModelLineStages: TDataSource;
    qryMLMSOperations: TAbmesSQLQuery;
    qryMLMSOperationsMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationsMLMS_OBJECT_CODE: TAbmesFloatField;
    qryMLMSOperationsMLMS_OPERATION_NO: TAbmesFloatField;
    qryMLMSOperationsPROFESSION_CODE: TAbmesFloatField;
    qryMLMSOperationsEFFORT_COEF: TAbmesFloatField;
    prvAllMLMSOperations: TDataSetProvider;
    qryAllMLMSOperations: TAbmesSQLQuery;
    cdsAllMLMSOperations: TAbmesClientDataSet;
    qryXModelMAX_MLMS_OBJECT_CODE: TAbmesFloatField;
    qryXModelLineStagesTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryXModelLineStagesTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryUpdateStageDates: TAbmesSQLQuery;
    qryXModelLinesLAST_MM_MLMS_MODEL_STAGE_NO: TAbmesFloatField;
    qryXModelLinesANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryXModelLinesANNUL_DATE: TAbmesSQLTimeStampField;
    qryXModelLinesANNUL_TIME: TAbmesSQLTimeStampField;
    qryXModelLinesNOT_STORNO_STORE_DEAL_COUNT: TAbmesFloatField;
    qrySaleIDHAS_MANUFACTURE_TECH_QUANTITY: TAbmesFloatField;
    qryXModelLinesNO_9: TAbmesFloatField;
    qryXModelLinesNO_10: TAbmesFloatField;
    qryXModelLinesNO_11: TAbmesFloatField;
    qryXModelLinesNO_12: TAbmesFloatField;
    qryXModelLinesNO_13: TAbmesFloatField;
    qryXModelLinesNO_14: TAbmesFloatField;
    qryXModelLinesNO_15: TAbmesFloatField;
    qryXModelLinesNO_16: TAbmesFloatField;
    qryXModelLinesNO_17: TAbmesFloatField;
    qryXModelLinesNO_18: TAbmesFloatField;
    qryXModelLinesNO_19: TAbmesFloatField;
    qryXModelLinesNO_20: TAbmesFloatField;
    qryXModelLinesNO_21: TAbmesFloatField;
    qryXModelLinesNO_22: TAbmesFloatField;
    qryXModelLinesNO_23: TAbmesFloatField;
    qryXModelLinesNO_24: TAbmesFloatField;
    qryXModelLinesNO_25: TAbmesFloatField;
    qryXModelLinesNO_AS_TEXT: TAbmesWideStringField;
    qryXModelLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryXModelLineStagesNO_9: TAbmesFloatField;
    qryXModelLineStagesNO_10: TAbmesFloatField;
    qryXModelLineStagesNO_11: TAbmesFloatField;
    qryXModelLineStagesNO_12: TAbmesFloatField;
    qryXModelLineStagesNO_13: TAbmesFloatField;
    qryXModelLineStagesNO_14: TAbmesFloatField;
    qryXModelLineStagesNO_15: TAbmesFloatField;
    qryXModelLineStagesNO_16: TAbmesFloatField;
    qryXModelLineStagesNO_17: TAbmesFloatField;
    qryXModelLineStagesNO_18: TAbmesFloatField;
    qryXModelLineStagesNO_19: TAbmesFloatField;
    qryXModelLineStagesNO_20: TAbmesFloatField;
    qryXModelLineStagesNO_21: TAbmesFloatField;
    qryXModelLineStagesNO_22: TAbmesFloatField;
    qryXModelLineStagesNO_23: TAbmesFloatField;
    qryXModelLineStagesNO_24: TAbmesFloatField;
    qryXModelLineStagesNO_25: TAbmesFloatField;
    qryInsertSpecLinesNO_9: TAbmesFloatField;
    qryInsertSpecLinesNO_10: TAbmesFloatField;
    qryInsertSpecLinesNO_11: TAbmesFloatField;
    qryInsertSpecLinesNO_12: TAbmesFloatField;
    qryInsertSpecLinesNO_13: TAbmesFloatField;
    qryInsertSpecLinesNO_14: TAbmesFloatField;
    qryInsertSpecLinesNO_15: TAbmesFloatField;
    qryInsertSpecLinesNO_16: TAbmesFloatField;
    qryInsertSpecLinesNO_17: TAbmesFloatField;
    qryInsertSpecLinesNO_18: TAbmesFloatField;
    qryInsertSpecLinesNO_19: TAbmesFloatField;
    qryInsertSpecLinesNO_20: TAbmesFloatField;
    qryInsertSpecLinesNO_21: TAbmesFloatField;
    qryInsertSpecLinesNO_22: TAbmesFloatField;
    qryInsertSpecLinesNO_23: TAbmesFloatField;
    qryInsertSpecLinesNO_24: TAbmesFloatField;
    qryInsertSpecLinesNO_25: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_9: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_10: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_11: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_12: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_13: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_14: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_15: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_16: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_17: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_18: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_19: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_20: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_21: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_22: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_23: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_24: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_25: TAbmesFloatField;
    qryDelMLMSProcessObjects: TAbmesSQLQuery;
    qryXModelRES_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    qryXModelQUANTITY_IN: TAbmesFloatField;
    qryXModelRES_PRODUCT_TECH_MEASURE_COEF: TAbmesFloatField;
    prvAllStages: TDataSetProvider;
    qryAllStages: TAbmesSQLQuery;
    qryAllStagesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryAllStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryAllStagesSPEC_LINE_CODE: TAbmesFloatField;
    qryAllStagesSPEC_LINE_STAGE_NO: TAbmesFloatField;
    qryAllStagesDEPT_CODE: TAbmesFloatField;
    qryAllStagesDEPT_NAME: TAbmesWideStringField;
    qryAllStagesDEPT_IDENTIFIER: TAbmesWideStringField;
    qryAllStagesDEPT_IS_STORE: TAbmesFloatField;
    qryAllStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    qryAllStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    qryAllStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    cdsAllStages: TAbmesClientDataSet;
    cdsAllStagesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsAllStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsAllStagesSPEC_LINE_CODE: TAbmesFloatField;
    cdsAllStagesSPEC_LINE_STAGE_NO: TAbmesFloatField;
    cdsAllStagesDEPT_CODE: TAbmesFloatField;
    cdsAllStagesDEPT_NAME: TAbmesWideStringField;
    cdsAllStagesDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsAllStagesDEPT_IS_STORE: TAbmesFloatField;
    cdsAllStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsAllStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    cdsAllStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    qryInsertSpecStagesDEPT_NAME: TAbmesWideStringField;
    qryInsertSpecStagesDEPT_IDENTIFIER: TAbmesWideStringField;
    qryInsertSpecStagesDEPT_IS_STORE: TAbmesFloatField;
    prvAllSMVSOperations: TDataSetProvider;
    qryAllSMVSOperations: TAbmesSQLQuery;
    cdsAllSMVSOperations: TAbmesClientDataSet;
    qryInsertSpecLinesDETAIL_NAME: TAbmesWideStringField;
    qryInsertSpecLinesDETAIL_NO: TAbmesFloatField;
    qryInsertSpecLinesDETAIL_HAS_DOCUMENTATION: TAbmesFloatField;
    qryInsertSpecLinesDETAIL_TECH_MEASURE_CODE: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_NAME: TAbmesWideStringField;
    qryInsertSpecLinesPRODUCT_NO: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField;
    qryXModelLineStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryInsertSpecStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryAllStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsAllStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryInsertSpecLinesDETAIL_IS_PRODUCTION_PRODUCT: TAbmesFloatField;
    qryProductData: TAbmesSQLQuery;
    qryProductDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryProductDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryProductDataTECH_MEASURE_CODE: TAbmesFloatField;
    qryProductDataTECH_MEASURE_COEF: TAbmesFloatField;
    qryProductDataESTIMATED_SECONDARY_PRICE: TAbmesFloatField;
    qryXModelLineStagesDOC_BRANCH_CODE: TAbmesFloatField;
    qryXModelLineStagesDOC_CODE: TAbmesFloatField;
    qryXModelLineStagesHAS_DOCUMENTATION: TAbmesFloatField;
    qryInsertSpecStagesDOC_BRANCH_CODE: TAbmesFloatField;
    qryInsertSpecStagesDOC_CODE: TAbmesFloatField;
    qryInsertSpecStagesHAS_DOCUMENTATION: TAbmesFloatField;
    qryAllStagesDOC_BRANCH_CODE: TAbmesFloatField;
    qryAllStagesDOC_CODE: TAbmesFloatField;
    qryAllStagesHAS_DOCUMENTATION: TAbmesFloatField;
    cdsAllStagesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsAllStagesDOC_CODE: TAbmesFloatField;
    cdsAllStagesHAS_DOCUMENTATION: TAbmesFloatField;
    qryXModelInfo: TAbmesSQLQuery;
    qryXModelInfoFORK_COUNT: TAbmesFloatField;
    qryXModelInfoOUT_STORE_DEAL_COUNT: TAbmesFloatField;
    qryXModelInfoWAITING_CHANGE_REQUEST_COUNT: TAbmesFloatField;
    qryMLMSOperationsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryMLMSOperationsDEPT_CODE: TAbmesFloatField;
    qryMLMSOperationsDEPT_NAME: TAbmesWideStringField;
    qryMLMSOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryMLMSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    qryMLMSOperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    qryMLMSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    qryMLMSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    qryMLMSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryMLMSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryMLMSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryMLMSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryMLMSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryMLMSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryMLMSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryMLMSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryMLMSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryMLMSOperationsNOTES: TAbmesWideStringField;
    qryMLMSOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationsDOC_CODE: TAbmesFloatField;
    qryMLMSOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    qryAllMLMSOperationsMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryAllMLMSOperationsMLMS_OBJECT_CODE: TAbmesFloatField;
    qryAllMLMSOperationsMLMS_OPERATION_NO: TAbmesFloatField;
    qryAllMLMSOperationsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryAllMLMSOperationsDEPT_CODE: TAbmesFloatField;
    qryAllMLMSOperationsDEPT_NAME: TAbmesWideStringField;
    qryAllMLMSOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryAllMLMSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    qryAllMLMSOperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    qryAllMLMSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    qryAllMLMSOperationsPROFESSION_CODE: TAbmesFloatField;
    qryAllMLMSOperationsEFFORT_COEF: TAbmesFloatField;
    qryAllMLMSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    qryAllMLMSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryAllMLMSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryAllMLMSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryAllMLMSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryAllMLMSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryAllMLMSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryAllMLMSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryAllMLMSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryAllMLMSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryAllMLMSOperationsNOTES: TAbmesWideStringField;
    qryAllMLMSOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    qryAllMLMSOperationsDOC_CODE: TAbmesFloatField;
    qryAllMLMSOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    cdsAllMLMSOperationsMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsMLMS_OBJECT_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsMLMS_OPERATION_NO: TAbmesFloatField;
    cdsAllMLMSOperationsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsAllMLMSOperationsDEPT_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsDEPT_NAME: TAbmesWideStringField;
    cdsAllMLMSOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsAllMLMSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    cdsAllMLMSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsAllMLMSOperationsPROFESSION_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsEFFORT_COEF: TAbmesFloatField;
    cdsAllMLMSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsAllMLMSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsAllMLMSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsAllMLMSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsAllMLMSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsAllMLMSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsAllMLMSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsAllMLMSOperationsNOTES: TAbmesWideStringField;
    cdsAllMLMSOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsDOC_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    qryInsertSpecOperationsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSpecOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryInsertSpecOperationsSPEC_LINE_CODE: TAbmesFloatField;
    qryInsertSpecOperationsSMVS_OPERATION_CODE: TAbmesFloatField;
    qryInsertSpecOperationsSMVS_OPERATION_NO: TAbmesFloatField;
    qryInsertSpecOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryInsertSpecOperationsDEPT_CODE: TAbmesFloatField;
    qryInsertSpecOperationsDEPT_NAME: TAbmesWideStringField;
    qryInsertSpecOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryInsertSpecOperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    qryInsertSpecOperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    qryInsertSpecOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    qryInsertSpecOperationsPROFESSION_CODE: TAbmesFloatField;
    qryInsertSpecOperationsEFFORT_COEF: TAbmesFloatField;
    qryInsertSpecOperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    qryInsertSpecOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSpecOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryInsertSpecOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryInsertSpecOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSpecOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryInsertSpecOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryInsertSpecOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSpecOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryInsertSpecOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryInsertSpecOperationsNOTES: TAbmesWideStringField;
    qryInsertSpecOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    qryInsertSpecOperationsDOC_CODE: TAbmesFloatField;
    qryInsertSpecOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    qryAllSMVSOperationsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryAllSMVSOperationsSPEC_LINE_CODE: TAbmesFloatField;
    qryAllSMVSOperationsSMVS_OPERATION_CODE: TAbmesFloatField;
    qryAllSMVSOperationsSMVS_OPERATION_NO: TAbmesFloatField;
    qryAllSMVSOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryAllSMVSOperationsDEPT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsDEPT_NAME: TAbmesWideStringField;
    qryAllSMVSOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryAllSMVSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    qryAllSMVSOperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    qryAllSMVSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    qryAllSMVSOperationsPROFESSION_CODE: TAbmesFloatField;
    qryAllSMVSOperationsEFFORT_COEF: TAbmesFloatField;
    qryAllSMVSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    qryAllSMVSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryAllSMVSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryAllSMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryAllSMVSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryAllSMVSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryAllSMVSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryAllSMVSOperationsNOTES: TAbmesWideStringField;
    qryAllSMVSOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    qryAllSMVSOperationsDOC_CODE: TAbmesFloatField;
    qryAllSMVSOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    cdsAllSMVSOperationsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsAllSMVSOperationsSPEC_LINE_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsSMVS_OPERATION_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsSMVS_OPERATION_NO: TAbmesFloatField;
    cdsAllSMVSOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsAllSMVSOperationsDEPT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsDEPT_NAME: TAbmesWideStringField;
    cdsAllSMVSOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsAllSMVSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    cdsAllSMVSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsAllSMVSOperationsPROFESSION_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsEFFORT_COEF: TAbmesFloatField;
    cdsAllSMVSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsAllSMVSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsAllSMVSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsAllSMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsAllSMVSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsAllSMVSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsAllSMVSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsAllSMVSOperationsNOTES: TAbmesWideStringField;
    cdsAllSMVSOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsDOC_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    qryMLMSOperationsIS_ACTIVE: TAbmesFloatField;
    qryAllMLMSOperationsIS_ACTIVE: TAbmesFloatField;
    cdsAllMLMSOperationsIS_ACTIVE: TAbmesFloatField;
    qryMLMSOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    qryAllSMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    qryInsertSpecOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    qryInsertSpecStagesSMVS_TYPE_CODE: TAbmesFloatField;
    qryAllStagesSMVS_TYPE_CODE: TAbmesFloatField;
    cdsAllStagesSMVS_TYPE_CODE: TAbmesFloatField;
    qrySetActiveOperationVariants: TAbmesSQLQuery;
    qryAllMLMSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    qryMLMSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSpecOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    qryAllMLMSOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    qryInsertSpecStagesOPERATION_COUNT: TAbmesFloatField;
    qryAllStagesOPERATION_COUNT: TAbmesFloatField;
    cdsAllStagesOPERATION_COUNT: TAbmesFloatField;
    qryXModelLineStagesOPERATION_COUNT: TAbmesFloatField;
    qryXModelBND_SALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qryXModelDoc: TAbmesSQLQuery;
    prvXModelDoc: TDataSetProvider;
    qryInsertSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField;
    qryXModelLinesIS_FOR_SINGLE_USE: TAbmesFloatField;
    qryXModelTRANSIENT_STATUS_CODE: TAbmesFloatField;
    qryXModelWORKDAYS_TO_EXIST: TAbmesFloatField;
    qryInsertSpecOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qryInsertSpecOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qryAllMLMSOperationsMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryAllMLMSOperationsMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryAllMLMSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qryAllMLMSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsAllMLMSOperationsMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsAllMLMSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qryMLMSOperationsMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationsMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryMLMSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qryMLMSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qryMLMSOperationsNO_1: TAbmesFloatField;
    qryMLMSOperationsNO_2: TAbmesFloatField;
    qryMLMSOperationsNO_3: TAbmesFloatField;
    qryMLMSOperationsNO_4: TAbmesFloatField;
    qryMLMSOperationsNO_5: TAbmesFloatField;
    qryMLMSOperationsNO_6: TAbmesFloatField;
    qryMLMSOperationsNO_7: TAbmesFloatField;
    qryMLMSOperationsNO_8: TAbmesFloatField;
    qryMLMSOperationsNO_9: TAbmesFloatField;
    qryMLMSOperationsNO_10: TAbmesFloatField;
    qryMLMSOperationsNO_11: TAbmesFloatField;
    qryMLMSOperationsNO_12: TAbmesFloatField;
    qryMLMSOperationsNO_13: TAbmesFloatField;
    qryMLMSOperationsNO_14: TAbmesFloatField;
    qryMLMSOperationsNO_15: TAbmesFloatField;
    qryMLMSOperationsNO_16: TAbmesFloatField;
    qryMLMSOperationsNO_17: TAbmesFloatField;
    qryMLMSOperationsNO_18: TAbmesFloatField;
    qryMLMSOperationsNO_19: TAbmesFloatField;
    qryMLMSOperationsNO_20: TAbmesFloatField;
    qryMLMSOperationsNO_21: TAbmesFloatField;
    qryMLMSOperationsNO_22: TAbmesFloatField;
    qryMLMSOperationsNO_23: TAbmesFloatField;
    qryMLMSOperationsNO_24: TAbmesFloatField;
    qryMLMSOperationsNO_25: TAbmesFloatField;
    qryMLMSOperationsFORK_NO: TAbmesFloatField;
    qryMLMSOperationsML_MODEL_STAGE_NO: TAbmesFloatField;
    qryAllMLMSOperationsNO_1: TAbmesFloatField;
    qryAllMLMSOperationsNO_2: TAbmesFloatField;
    qryAllMLMSOperationsNO_3: TAbmesFloatField;
    qryAllMLMSOperationsNO_4: TAbmesFloatField;
    qryAllMLMSOperationsNO_5: TAbmesFloatField;
    qryAllMLMSOperationsNO_6: TAbmesFloatField;
    qryAllMLMSOperationsNO_7: TAbmesFloatField;
    qryAllMLMSOperationsNO_8: TAbmesFloatField;
    qryAllMLMSOperationsNO_9: TAbmesFloatField;
    qryAllMLMSOperationsNO_10: TAbmesFloatField;
    qryAllMLMSOperationsNO_11: TAbmesFloatField;
    qryAllMLMSOperationsNO_12: TAbmesFloatField;
    qryAllMLMSOperationsNO_13: TAbmesFloatField;
    qryAllMLMSOperationsNO_14: TAbmesFloatField;
    qryAllMLMSOperationsNO_15: TAbmesFloatField;
    qryAllMLMSOperationsNO_16: TAbmesFloatField;
    qryAllMLMSOperationsNO_17: TAbmesFloatField;
    qryAllMLMSOperationsNO_18: TAbmesFloatField;
    qryAllMLMSOperationsNO_19: TAbmesFloatField;
    qryAllMLMSOperationsNO_20: TAbmesFloatField;
    qryAllMLMSOperationsNO_21: TAbmesFloatField;
    qryAllMLMSOperationsNO_22: TAbmesFloatField;
    qryAllMLMSOperationsNO_23: TAbmesFloatField;
    qryAllMLMSOperationsNO_24: TAbmesFloatField;
    qryAllMLMSOperationsNO_25: TAbmesFloatField;
    qryAllMLMSOperationsFORK_NO: TAbmesFloatField;
    qryAllMLMSOperationsML_MODEL_STAGE_NO: TAbmesFloatField;
    cdsAllMLMSOperationsNO_1: TAbmesFloatField;
    cdsAllMLMSOperationsNO_2: TAbmesFloatField;
    cdsAllMLMSOperationsNO_3: TAbmesFloatField;
    cdsAllMLMSOperationsNO_4: TAbmesFloatField;
    cdsAllMLMSOperationsNO_5: TAbmesFloatField;
    cdsAllMLMSOperationsNO_6: TAbmesFloatField;
    cdsAllMLMSOperationsNO_7: TAbmesFloatField;
    cdsAllMLMSOperationsNO_8: TAbmesFloatField;
    cdsAllMLMSOperationsNO_9: TAbmesFloatField;
    cdsAllMLMSOperationsNO_10: TAbmesFloatField;
    cdsAllMLMSOperationsNO_11: TAbmesFloatField;
    cdsAllMLMSOperationsNO_12: TAbmesFloatField;
    cdsAllMLMSOperationsNO_13: TAbmesFloatField;
    cdsAllMLMSOperationsNO_14: TAbmesFloatField;
    cdsAllMLMSOperationsNO_15: TAbmesFloatField;
    cdsAllMLMSOperationsNO_16: TAbmesFloatField;
    cdsAllMLMSOperationsNO_17: TAbmesFloatField;
    cdsAllMLMSOperationsNO_18: TAbmesFloatField;
    cdsAllMLMSOperationsNO_19: TAbmesFloatField;
    cdsAllMLMSOperationsNO_20: TAbmesFloatField;
    cdsAllMLMSOperationsNO_21: TAbmesFloatField;
    cdsAllMLMSOperationsNO_22: TAbmesFloatField;
    cdsAllMLMSOperationsNO_23: TAbmesFloatField;
    cdsAllMLMSOperationsNO_24: TAbmesFloatField;
    cdsAllMLMSOperationsNO_25: TAbmesFloatField;
    cdsAllMLMSOperationsFORK_NO: TAbmesFloatField;
    cdsAllMLMSOperationsML_MODEL_STAGE_NO: TAbmesFloatField;
    qryXModelLineStagesLAST_OM_MLMS_OPERATION_NO: TAbmesFloatField;
    qryXModelIS_OPERATIONS_MODEL: TAbmesFloatField;
    qryAllSMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qryAllStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    cdsAllStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qryInsertSpecStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qryInsertSpecOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qryInsertSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField;
    qryXModelLinesCONSTRUCTION_NOTES: TAbmesWideStringField;
    qryMLMSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    qryMLMSOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    qryInsertSpecOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    qryInsertSpecOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    qryAllSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    qryAllSMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsAllSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    cdsAllSMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    qryAllMLMSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    qryAllMLMSOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsAllMLMSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    cdsAllMLMSOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    qryAllMLMSOperationsTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryAllMLMSOperationsTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsAllMLMSOperationsTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsAllMLMSOperationsTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryMLMSOperationsTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryMLMSOperationsTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryUpdMlmsoDates: TAbmesSQLQuery;
    qryXModelLinesNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    qryXModelLinesMAX_MOVED_TECH_QUANTITY: TAbmesFloatField;
    qryGetMllHasMovements: TAbmesSQLQuery;
    qryGetMllHasMovementsHAS_MOVEMENTS: TAbmesFloatField;
    qryMaxMllDetailTechQuantity: TAbmesSQLQuery;
    qryMaxMllDetailTechQuantityMAX_MOVED_DEATAIL_TECH_QTY: TAbmesFloatField;
    qryGetMllHasMovementsNO_AS_TEXT: TAbmesWideStringField;
    qryMLMSOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    qryInsertSpecOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    qryAllMLMSOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    qryXModelLinesDETAIL_PARENT_CODE: TAbmesFloatField;
    qryInsertSpecLinesDETAIL_PARENT_CODE: TAbmesFloatField;
    qryMLMSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    qryInsertSpecOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    qryAllSMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    cdsAllSMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    qryAllMLMSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    cdsAllMLMSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    qryXModelLinesIS_WASTE_FORK: TAbmesFloatField;
    qryMLMSOperationsVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qrySaleGroupIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleGroupIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    qryAllMLMSOperationsVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsAllMLMSOperationsVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_IS_INACTIVE: TAbmesFloatField;
    qryXModelLinesDETAIL_IS_INACTIVE: TAbmesFloatField;
    qryXModelLinesPRODUCT_IS_INACTIVE: TAbmesFloatField;
    qryInsertSpecLinesDETAIL_IS_INACTIVE: TAbmesFloatField;
    qryMLMSOperationsHAS_IN_MOVEMENTS: TAbmesFloatField;
    qryMLMSOperationsHAS_OUT_MOVEMENTS: TAbmesFloatField;
    qryAllMLMSOperationsHAS_IN_MOVEMENTS: TAbmesFloatField;
    qryAllMLMSOperationsHAS_OUT_MOVEMENTS: TAbmesFloatField;
    cdsAllMLMSOperationsHAS_IN_MOVEMENTS: TAbmesFloatField;
    cdsAllMLMSOperationsHAS_OUT_MOVEMENTS: TAbmesFloatField;
    qryXModelDocMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryXModelDocMLL_OBJECT_CODE: TAbmesFloatField;
    qryXModelDocDOC_ITEM_CODE: TAbmesFloatField;
    qryXModelDocPARENT_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryXModelDocPARENT_MLL_OBJECT_CODE: TAbmesFloatField;
    qryXModelDocNO_AS_TEXT: TAbmesWideStringField;
    qryXModelDocNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryXModelDocFORK_NO: TAbmesFloatField;
    qryXModelDocNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    qryXModelDocDETAIL_CODE: TAbmesFloatField;
    qryXModelDocDETAIL_NAME: TAbmesWideStringField;
    qryXModelDocDOC_ITEM_NAME: TAbmesWideStringField;
    qryXModelDocDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    qryXModelDocDOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    qryXModelDocFILE_NAME: TAbmesWideStringField;
    qryXModelDocRELATIVE_PATH: TAbmesWideStringField;
    qryXModelMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField;
    qryXModelDocDOC_BRANCH_CODE: TAbmesFloatField;
    qryXModelDocDOC_CODE: TAbmesFloatField;
    qryBoundProcessObjectPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryBoundProcessObjectPROCESS_OBJECT_CODE: TAbmesFloatField;
    qryBoundProcessObjectPROCESS_OBJECT_CLASS_CODE: TAbmesFloatField;
    qryBoundProcessObjectPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryBoundProcessObjectSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qryBoundProcessObjectSALE_BRANCH_NO: TAbmesFloatField;
    qryBoundProcessObjectSALE_NO: TAbmesFloatField;
    qryBoundProcessObjectSALE_TYPE_ABBREV: TAbmesWideStringField;
    qryBoundProcessObjectSALE_PRODUCT_CODE: TAbmesFloatField;
    qryBoundProcessObjectSALE_PRODUCT_NAME: TAbmesWideStringField;
    qryBoundProcessObjectSALE_PRODUCT_NO: TAbmesFloatField;
    qryBoundProcessObjectSALE_MEASURE_ABBREV: TAbmesWideStringField;
    qryBoundProcessObjectSALE_MANUFACTURE_QUANTITY: TAbmesFloatField;
    qryBoundProcessObjectSALE_MANUFACTURE_TECH_QUANTITY: TAbmesFloatField;
    qryBoundProcessObjectSALE_MANAGER_CODE: TAbmesFloatField;
    qryBoundProcessObjectSALE_MANAGER_NAME: TAbmesWideStringField;
    qryBoundProcessObjectS_ENTER_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryBoundProcessObjectS_ENTER_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryBoundProcessObjectOKIDU_EMPLOYEE_CODE: TAbmesFloatField;
    qryBoundProcessObjectSALE_CLIENT_COMPANY_SHORT_NAME: TAbmesWideStringField;
    qryBoundProcessObjectSALE_CLIENT_COUNTRY_ABBREV: TAbmesWideStringField;
    qryBoundProcessObjectSALE_CLIENT_PRODUCT_SIGNATURE: TAbmesWideStringField;
    qryBoundProcessObjectSALE_CLIENT_REQUEST_NO: TAbmesWideStringField;
    qryBoundProcessObjectSALE_PRODUCTION_DEPT_CODE: TAbmesFloatField;
    qryBoundProcessObjectSALE_TRANSIENT_STATUS_CODE: TAbmesFloatField;
    qryBoundProcessObjectSALE_WORKDAYS_TO_EXIST: TAbmesFloatField;
    qryBoundProcessObjectML_STATE_CODE: TAbmesFloatField;
    qryBoundProcessObjectMIN_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qryBoundProcessObjectPRODUCTION_START_RESERVE_DAYS: TAbmesFloatField;
    qryBoundProcessObjectSTART_STAGE_COEF: TAbmesFloatField;
    qryBoundProcessObjectMODEL_WORKDAYS: TAbmesFloatField;
    qryXModelLineStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    qryInsertSpecStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    qryAllStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    qryMLMSOperationsD_HOUR_PRICE: TAbmesFloatField;
    qryAllMLMSOperationsD_HOUR_PRICE: TAbmesFloatField;
    cdsAllMLMSOperationsD_HOUR_PRICE: TAbmesFloatField;
    cdsAllStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    qryAllSMVSOperationsD_HOUR_PRICE: TAbmesFloatField;
    cdsAllSMVSOperationsD_HOUR_PRICE: TAbmesFloatField;
    qryInsertSpecOperationsD_HOUR_PRICE: TAbmesFloatField;
    qryXModelMAX_MLMSO_OBJECT_CODE: TAbmesFloatField;
    qryXModelLinesPRODUCT_SINGLE_PRICE: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_SINGLE_PRICE: TAbmesFloatField;
    qryMllInvestedValues: TAbmesSQLQuery;
    qryMlmsInvestedValues: TAbmesSQLQuery;
    prvMllInvestedValues: TDataSetProvider;
    prvMlmsInvestedValues: TDataSetProvider;
    qryXModelMODEL_LEVEL_1_INVESTED_VALUE: TAbmesFloatField;
    qryBoundProcessObjectSHIPMENT_STORE_CODE: TAbmesFloatField;
    qryXModelLinesAPPROVE_CYCLE_NO: TAbmesFloatField;
    qryInsertSpecLinesAPPROVE_CYCLE_NO: TAbmesFloatField;
    prvDSXModel: TDataSetProvider;
    qryDSXModel: TAbmesSQLQuery;
    qryDSXModelML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDSXModelML_OBJECT_CODE: TAbmesFloatField;
    dsDSXModel: TDataSource;
    qryDSXModelLines: TAbmesSQLQuery;
    qryDSXModelLinesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDSXModelLinesMLL_OBJECT_CODE: TAbmesFloatField;
    qryDSXModelLinesPARENT_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDSXModelLinesPARENT_MLL_OBJECT_CODE: TAbmesFloatField;
    qryDSXModelLinesNO_AS_TEXT: TAbmesWideStringField;
    qryDSXModelLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryDSXModelLinesDETAIL_CODE: TAbmesFloatField;
    qryDSXModelLinesDETAIL_NAME: TAbmesWideStringField;
    qryDSXModelLinesDETAIL_NO: TAbmesFloatField;
    qryDSXModelLinesDETAIL_HAS_SPECIFICATION: TAbmesFloatField;
    qryDSXModelLinesPRODUCT_CODE: TAbmesFloatField;
    qryDSXModelLinesPRODUCT_NAME: TAbmesWideStringField;
    qryDSXModelLinesPRODUCT_NO: TAbmesFloatField;
    qryDSXModelLinesPRODUCT_HAS_SPECIFICATION: TAbmesFloatField;
    qryDSXModelLinesLEVEL_NO: TAbmesFloatField;
    qryDSXModelLinesDOC_BRANCH_CODE: TAbmesFloatField;
    qryDSXModelLinesDOC_CODE: TAbmesFloatField;
    qryDSXModelLinesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryDSXModelLinesDOC_IS_COMPLETE: TAbmesFloatField;
    qryDSXModelLinesACTIVE_DI_COUNT: TAbmesFloatField;
    qryDSXModelLinesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    dsDSXModelLines: TDataSource;
    qryDSXModelModel: TAbmesSQLQuery;
    qryDSXModelLinesML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDSXModelLinesML_OBJECT_CODE: TAbmesFloatField;
    qryDSXModelModelITEM_CODE: TAbmesFloatField;
    qryDSXModelModelPARENT_ITEM_CODE: TAbmesFloatField;
    qryDSXModelModelITEM_TYPE_CODE: TAbmesFloatField;
    qryDSXModelModelDEPT_CODE: TAbmesFloatField;
    qryDSXModelModelDEPT_IDENTIFIER: TAbmesWideStringField;
    qryDSXModelModelMODEL_VARIANT_QUANTITIES: TAbmesWideStringField;
    qryDSXModelModelSTAGE_NO: TAbmesFloatField;
    qryDSXModelModelWORKDAYS: TAbmesWideStringField;
    qryDSXModelModelOPERATION_NO: TAbmesFloatField;
    qryDSXModelModelOPERATION_HAS_SPECIAL_CONTROL: TAbmesFloatField;
    qryDSXModelModelOPERATION_HOUR_TECH_QUANTITIES: TAbmesWideStringField;
    qryDSXModelModelDOC_BRANCH_CODE: TAbmesFloatField;
    qryDSXModelModelDOC_CODE: TAbmesFloatField;
    qryDSXModelModelDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryDSXModelModelDOC_IS_COMPLETE: TAbmesFloatField;
    qryDSXModelModelACTIVE_DI_COUNT: TAbmesFloatField;
    qryDSXModelModelUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryDSXModelLinesAPPROVE_CYCLE_NO: TAbmesFloatField;
    qryDSXModelLinesNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    qryDSXModelLinesLINE_IDENTIFIER: TAbmesWideStringField;
    qryDSXModelLinesPARENT_LINE_IDENTIFIER: TAbmesWideStringField;
    qryDSXModelLinesFORK_NO: TAbmesFloatField;
    qryXModelLinesIS_COMPLETE: TAbmesFloatField;
    qryInsertSpecLinesIS_COMPLETE: TAbmesFloatField;
    qryXModelLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField;
    qryInsertSpecLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField;
    qryAllSMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField;
    cdsAllSMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField;
    qryInsertSpecOperationsIS_NORMAL_OPERATION: TAbmesFloatField;
    qryAllMLMSOperationsIS_NORMAL_OPERATION: TAbmesFloatField;
    cdsAllMLMSOperationsIS_NORMAL_OPERATION: TAbmesFloatField;
    qryMLMSOperationsIS_NORMAL_OPERATION: TAbmesFloatField;
    qryDSXModelLinesUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryDSXModelModelUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryDSXModelModelAPPROVED_DI_COUNT: TAbmesFloatField;
    qryXModelLineStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryMLMSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryInsertSpecStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryInsertSpecOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryAllStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryAllSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsAllSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsAllStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryAllMLMSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsAllMLMSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryXModelLineStagesDOC_IS_COMPLETE: TAbmesFloatField;
    qryMLMSOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    qryInsertSpecStagesDOC_IS_COMPLETE: TAbmesFloatField;
    qryInsertSpecOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    qryAllStagesDOC_IS_COMPLETE: TAbmesFloatField;
    cdsAllStagesDOC_IS_COMPLETE: TAbmesFloatField;
    qryAllSMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    cdsAllSMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    qryAllMLMSOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    cdsAllMLMSOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    qryXModelLineStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryMLMSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryInsertSpecStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryInsertSpecOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllMLMSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryDSXModelModelOPERATION_TYPE_CODE: TAbmesFloatField;
    qryDSXModelModelHAS_MOVEMENTS: TAbmesFloatField;
    qryDSXModelLinesHAS_CHILDREN: TAbmesFloatField;
    qryDSXModelLinesIS_LAST_CHILD: TAbmesFloatField;
    qryDSXModelModelORDER_NO: TAbmesFloatField;
    qryDSXModelModelLEVEL_NO: TAbmesFloatField;
    qryDSXModelModelHAS_CHILDREN: TAbmesFloatField;
    qryDSXModelModelIS_LAST_CHILD: TAbmesFloatField;
    qryDSXModelLinesIS_COMPLETE: TAbmesFloatField;
    qryDSXModelMODEL_IDENTIFIER: TAbmesWideStringField;
    qryDSXModelANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryDSXModelCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDSXModelLIMITING_EMPLOYEE_CODE: TAbmesFloatField;
    qryDSXModelOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    qryCheckOperationDocs: TAbmesSQLQuery;
    qryCheckOperationDocsWRONG_OPERATION_DOC_EXISTS: TAbmesFloatField;
    qryXModelLineStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryXModelLineStagesDEPT_END_DATE: TAbmesSQLTimeStampField;
    qryMLMSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryMLMSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField;
    qryInsertSpecStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryInsertSpecStagesDEPT_END_DATE: TAbmesSQLTimeStampField;
    qryInsertSpecOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryInsertSpecOperationsDEPT_END_DATE: TAbmesSQLTimeStampField;
    qryXModelMAIN_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryXModelMAIN_DEPT_END_DATE: TAbmesSQLTimeStampField;
    qryAllStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryAllStagesDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsAllStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsAllStagesDEPT_END_DATE: TAbmesSQLTimeStampField;
    qryAllSMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryAllSMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsAllSMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsAllSMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField;
    prvXModelStructStatus: TDataSetProvider;
    qryXModelStructStatus: TAbmesSQLQuery;
    qryXModelStructStatusLEVEL_NO: TAbmesFloatField;
    qryXModelStructStatusLEVEL_IS_COMPLETE: TAbmesFloatField;
    qryXModelStructStatusMAX_LEVEL_NO: TAbmesFloatField;
    qryXModelStructStatusHAS_MISSING_CHILDREN: TAbmesFloatField;
    qryXModelINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    qryBoundProcessObjectPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryBoundProcessObjectINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    qryBoundProcessObjectPRODUCTION_WORKDAYS: TAbmesFloatField;
    qryBoundProcessObjectMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField;
    qryBoundProcessObjectMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField;
    qryBoundProcessObjectIS_WASTE_COMPENSATING_ORDER: TAbmesFloatField;
    qryBoundProcessObjectWASTING_SALE_OBJ_BRANCH_CODE: TAbmesFloatField;
    qryBoundProcessObjectWASTING_SALE_OBJ_CODE: TAbmesFloatField;
    qryBoundProcessObjectWASTING_SALE_BRANCH_NO: TAbmesFloatField;
    qryBoundProcessObjectWASTING_SALE_NO: TAbmesFloatField;
    qryBoundProcessObjectWASTING_ML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryBoundProcessObjectWASTING_ML_OBJECT_CODE: TAbmesFloatField;
    qryBoundProcessObjectSALE_BRANCH_CODE: TAbmesFloatField;
    qryXModelLAST_SHIPMENT_STORE_IN_DATE: TAbmesSQLTimeStampField;
    qryBoundProcessObjectPRIORITY_COLOR: TAbmesFloatField;
    qryBoundProcessObjectPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryXModelSALE_REMAINING_QUANTITY: TAbmesFloatField;
    qryBoundProcessObjectDOC_BRANCH_CODE: TAbmesFloatField;
    qryBoundProcessObjectDOC_CODE: TAbmesFloatField;
    qryBoundProcessObjectHAS_WASTE: TAbmesFloatField;
    qryBoundProcessObjectWASTE_COMPENSATOR_COUNT: TAbmesFloatField;
    qryBoundProcessObjectREAL_PRODUCTION_WORKDAYS: TAbmesFloatField;
    qryBoundProcessObjectSTART_AFTER_LIMITING_DAYS: TAbmesFloatField;
    qryCheckWasteForks: TAbmesSQLQuery;
    qryCheckWasteForksNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryBoundProcessObjectPRIORITY_NO: TAbmesFloatField;
    qryBoundProcessObjectWORK_PRIORITY_NO: TAbmesFloatField;
    qryBoundProcessObjectCOMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryAuthorizedSpecModelVariantsAUTHORIZATION_EMPLOYEE_NO: TAbmesFloatField;
    qryInsertSpecOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryInsertSpecOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryInsertSpecOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qryAllSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsAllSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsAllSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsAllSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllMLMSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllMLMSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllMLMSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllMLMSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryMLMSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryMLMSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryMLMSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryDSXModelModelDEPT_PRODUCT_CODE: TAbmesFloatField;
    qryDSXModelModelPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryDSXModelModelSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryDSXModelModelTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryDSXModelModelPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryDSXModelModelSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryDSXModelModelTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryDSXModelModelDEPT_PRODUCT_HAS_SPEC: TAbmesFloatField;
    qryDSXModelModelPROGRAM_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField;
    qryDSXModelModelSPECIFIC_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField;
    qryDSXModelModelTYPICAL_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField;
    qryDSXModelModelDEPT_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryDSXModelModelPROGRAM_TOOL_PRODUCT_HAS_DI: TAbmesFloatField;
    qryDSXModelModelSPECIFIC_TOOL_PRODUCT_HAS_DI: TAbmesFloatField;
    qryDSXModelModelTYPICAL_TOOL_PRODUCT_HAS_DI: TAbmesFloatField;
    mshLocalMacroLibrary: TJvMultiStringHolder;
    qryAllMLMSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryAllMLMSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryAllMLMSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsAllMLMSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsAllMLMSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsAllMLMSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryMLMSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryMLMSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryMLMSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryAllSMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryAllSMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryAllSMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsAllSMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsAllSMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsAllSMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryInsertSpecOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryInsertSpecOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryInsertSpecOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryDSXModelModelPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryDSXModelModelSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryDSXModelModelTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryMLMSOperationsSETUP_COUNT: TAbmesFloatField;
    qryMLMSOperationsDONE_SETUP_COUNT: TAbmesFloatField;
    qryAllMLMSOperationsSETUP_COUNT: TAbmesFloatField;
    qryAllMLMSOperationsDONE_SETUP_COUNT: TAbmesFloatField;
    cdsAllMLMSOperationsSETUP_COUNT: TAbmesFloatField;
    cdsAllMLMSOperationsDONE_SETUP_COUNT: TAbmesFloatField;
    qryAllSMVSOperationsSETUP_COUNT: TAbmesFloatField;
    cdsAllSMVSOperationsSETUP_COUNT: TAbmesFloatField;
    qryInsertSpecOperationsSETUP_COUNT: TAbmesFloatField;
    qryMLMSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    qryInsertSpecOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    qryAllMLMSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    cdsAllMLMSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    qryAllSMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    cdsAllSMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    qryInsertSpecOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    qryInsertSpecOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    qryAllSMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    qryAllSMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    cdsAllSMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    cdsAllSMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    qryMLMSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    qryMLMSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    qryAllMLMSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    qryAllMLMSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    cdsAllMLMSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    cdsAllMLMSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField;
    qryXModelLinesPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField;
    qryXModelLinesPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField;
    qryXModelLinesPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField;
    qryXModelLinesPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField;
    qryMlmsInvestedValuesMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMlmsInvestedValuesMLMS_OBJECT_CODE: TAbmesFloatField;
    qryMlmsInvestedValuesPLAN_INVESTED_VALUE_2: TAbmesFloatField;
    qryMlmsInvestedValuesPLAN_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsInvestedValuesREAL_INVESTED_VALUE_2: TAbmesFloatField;
    qryMlmsInvestedValuesREAL_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsInvestedValuesWASTE_INVESTED_VALUE_2: TAbmesFloatField;
    qryMlmsInvestedValuesWASTE_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsInvestedValuesPLAN_INVESTED_VALUE_3: TAbmesFloatField;
    qryMlmsInvestedValuesPLAN_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsInvestedValuesREAL_INVESTED_VALUE_3: TAbmesFloatField;
    qryMlmsInvestedValuesREAL_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsInvestedValuesWASTE_INVESTED_VALUE_3: TAbmesFloatField;
    qryMlmsInvestedValuesWASTE_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsInvestedValuesPLAN_INVESTED_VALUE_4: TAbmesFloatField;
    qryMlmsInvestedValuesPLAN_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsInvestedValuesREAL_INVESTED_VALUE_4: TAbmesFloatField;
    qryMlmsInvestedValuesREAL_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsInvestedValuesWASTE_INVESTED_VALUE_4: TAbmesFloatField;
    qryMlmsInvestedValuesWASTE_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsInvestedValuesPLAN_INVESTED_VALUE_5: TAbmesFloatField;
    qryMlmsInvestedValuesPLAN_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsInvestedValuesREAL_INVESTED_VALUE_5: TAbmesFloatField;
    qryMlmsInvestedValuesREAL_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsInvestedValuesWASTE_INVESTED_VALUE_5: TAbmesFloatField;
    qryMlmsInvestedValuesWASTE_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    qryMllInvestedValuesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMllInvestedValuesMLL_OBJECT_CODE: TAbmesFloatField;
    qryMllInvestedValuesPLAN_INVESTED_VALUE_1: TAbmesFloatField;
    qryMllInvestedValuesPLAN_IV_1_IS_INCOMPLETE: TAbmesFloatField;
    qryMllInvestedValuesPLAN_INVESTED_VALUE_2: TAbmesFloatField;
    qryMllInvestedValuesPLAN_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    qryMllInvestedValuesPLAN_INVESTED_VALUE_3: TAbmesFloatField;
    qryMllInvestedValuesPLAN_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    qryMllInvestedValuesPLAN_INVESTED_VALUE_4: TAbmesFloatField;
    qryMllInvestedValuesPLAN_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    qryMllInvestedValuesPLAN_INVESTED_VALUE_5: TAbmesFloatField;
    qryMllInvestedValuesPLAN_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    qryMllInvestedValuesREAL_INVESTED_VALUE_1: TAbmesFloatField;
    qryMllInvestedValuesREAL_IV_1_IS_INCOMPLETE: TAbmesFloatField;
    qryMllInvestedValuesREAL_INVESTED_VALUE_2: TAbmesFloatField;
    qryMllInvestedValuesREAL_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    qryMllInvestedValuesREAL_INVESTED_VALUE_3: TAbmesFloatField;
    qryMllInvestedValuesREAL_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    qryMllInvestedValuesREAL_INVESTED_VALUE_4: TAbmesFloatField;
    qryMllInvestedValuesREAL_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    qryMllInvestedValuesREAL_INVESTED_VALUE_5: TAbmesFloatField;
    qryMllInvestedValuesREAL_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    qryMllInvestedValuesWASTE_INVESTED_VALUE_1: TAbmesFloatField;
    qryMllInvestedValuesWASTE_IV_1_IS_INCOMPLETE: TAbmesFloatField;
    qryMllInvestedValuesWASTE_INVESTED_VALUE_2: TAbmesFloatField;
    qryMllInvestedValuesWASTE_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    qryMllInvestedValuesWASTE_INVESTED_VALUE_3: TAbmesFloatField;
    qryMllInvestedValuesWASTE_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    qryMllInvestedValuesWASTE_INVESTED_VALUE_4: TAbmesFloatField;
    qryMllInvestedValuesWASTE_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    qryMllInvestedValuesWASTE_INVESTED_VALUE_5: TAbmesFloatField;
    qryMllInvestedValuesWASTE_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    qryXModelMODEL_LEVEL_1_IV_IS_INCOMPLETE: TAbmesFloatField;
    qryMLMSOperationsREAL_SETUP_HOUR_PRICE: TAbmesFloatField;
    qryMLMSOperationsREAL_HOUR_PRICE: TAbmesFloatField;
    qryAllMLMSOperationsREAL_SETUP_HOUR_PRICE: TAbmesFloatField;
    qryAllMLMSOperationsREAL_HOUR_PRICE: TAbmesFloatField;
    cdsAllMLMSOperationsREAL_SETUP_HOUR_PRICE: TAbmesFloatField;
    cdsAllMLMSOperationsREAL_HOUR_PRICE: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField;
    qryXModelLinesPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField;
    qryDSXModelModelBASE_GROUP_CODE: TAbmesFloatField;
    qryDSXModelModelBASE_GROUP_DOC_BRANCH_CODE: TAbmesFloatField;
    qryDSXModelModelBASE_GROUP_DOC_CODE: TAbmesFloatField;
    qryDSXModelModelBASE_GROUP_HAS_DOC_ITEMS: TAbmesFloatField;
    qryMlmsoInvestedValues: TAbmesSQLQuery;
    prvMlmsoInvestedValues: TDataSetProvider;
    qryMlmsoInvestedValuesMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMlmsoInvestedValuesMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_2: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_SETUP_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_INVESTED_VALUE_2: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_2: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_SETUP_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_INVESTED_VALUE_2: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_2: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_SETUP_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_INVESTED_VALUE_2: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_3: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_SETUP_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_INVESTED_VALUE_3: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_3: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_SETUP_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_INVESTED_VALUE_3: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_3: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_SETUP_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_INVESTED_VALUE_3: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_4: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_SETUP_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_INVESTED_VALUE_4: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_4: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_SETUP_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_INVESTED_VALUE_4: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_4: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_SETUP_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_INVESTED_VALUE_4: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_5: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_SETUP_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_INVESTED_VALUE_5: TAbmesFloatField;
    qryMlmsoInvestedValuesPLAN_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_5: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_SETUP_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_INVESTED_VALUE_5: TAbmesFloatField;
    qryMlmsoInvestedValuesREAL_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_5: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_SETUP_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_INVESTED_VALUE_5: TAbmesFloatField;
    qryMlmsoInvestedValuesWASTE_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    qryUpdSaleInStoreDeal: TAbmesSQLQuery;
    qryBoundProcessObjectMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    qryBoundProcessObjectMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField;
    qryUpdateModelPsdDepts: TAbmesSQLQuery;
    qryDSXModelLinesDETAIL_PARENT_CODE: TAbmesFloatField;
    qryBoundProcessObjectPRODUCTION_START_PLAN_DATE: TAbmesSQLTimeStampField;
    qryDSXModelModelNOTES: TAbmesWideStringField;
    qryDSXModelLinesIS_DETAIL_DOC_AUTHORIZED: TAbmesFloatField;
    qryMLMSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryMLMSOperationsIS_AUTO_SETUP: TAbmesFloatField;
    qryInsertSpecOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryInsertSpecOperationsIS_AUTO_SETUP: TAbmesFloatField;
    qryAllSMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryAllSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField;
    cdsAllSMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsAllSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField;
    qryAllMLMSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryAllMLMSOperationsIS_AUTO_SETUP: TAbmesFloatField;
    cdsAllMLMSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsAllMLMSOperationsIS_AUTO_SETUP: TAbmesFloatField;
    qryBoundProcessObjectPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField;
    qryDSXModelLinesPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryDSXModelLinesPRODUCT_DOC_CODE: TAbmesFloatField;
    qryAuthorizedSpecModelVariantsNOTES: TAbmesWideStringField;
    qryDSXModelLinesNOTES: TAbmesWideStringField;
    qryDSXModelLinesCONSTRUCTION_NOTES: TAbmesWideStringField;
    qryAuthorizedSpecModelVariantsIS_EST_VARIANT: TAbmesFloatField;
    procedure prvXModelBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvXModelBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvXModelAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvXModelAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvXModelUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure qryXModelLineStagesBeforeScroll(DataSet: TDataSet);
    procedure prvXModelAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvXModelGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure qryXModelBeforeProviderEndTransaction(DataSet: TDataSet;
      Commit: Boolean);
    procedure qryInsertSpecLinesBeforeScroll(DataSet: TDataSet);
    procedure qryInsertSpecStagesBeforeScroll(DataSet: TDataSet);
    procedure prvInsertSpecLinesAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvInsertSpecLinesGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure qryXModelAfterProviderStartTransaction(DataSet: TDataSet);
    procedure prvXModelUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure prvDSXModelBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvDSXModelBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvDSXModelAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryDSXModelAfterProviderStartTransaction(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FUpdateDS: TDataSet;
    FOldMLLObjectBranchCode: Integer;
    FOldMLLObjectCode: Integer;
    FInsertXModel: Boolean;

    FMLObjectBranchCode: Integer;
    FMLObjectCode: Integer;
    FBndProcessObjectBranchCode: Integer;
    FBndProcessObjectCode: Integer;
    FEnterResultStoreEndDate: TDateTime;

    FDocsDelta: Variant;

    procedure GetTheNewMLLKey(OldMLLObjectBranchCode, OldMLLObjectCode: Integer;
      out NewMLLObjectBranchCode, NewMLLObjectCode: Integer);
    procedure GetBndObjectData(cdsXModel: TDataSet;
      out BndObjBranchNo: Real; out BndObjNo: Integer);
  protected
    procedure GetBndProcessObjectID(IsSale: Boolean; BndObjectBranchCode: Integer;
                                    BndObjectNo: Integer; out BndProcessObjectBranchCode: Integer;
                                    out BndProcessObjectCode: Integer; out HasManufactureTechQuantity: Boolean);
    function XModelExists(BndProcessObjectBranchCode: Integer; BndProcessObjectCode: Integer): Boolean;
    function GetNeededSpecModelVariantNo(SpecProductCode: Integer; MainDeptCode: Integer;
      Quantity: Double; ToDate: TDateTime): Integer;
    procedure GetModelInfo(MLObjectBranchCode: Integer; MLObjectCode: Integer;
                           out ForkCount: Integer; out OutStoreDealCount: Integer;
                           out WaitingChangeRequestCount: Integer);
  end;

type
  IdmXModelsProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmXModelsProxy = class(TDBPooledDataModuleProxy, IdmXModelsProxy)
  private
    class var FSingleton: TdmXModelsProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmXModels>;
  strict protected
    property LockedInstance: ISmartLock<TdmXModels> read GetLockedInstance;
  public
    class property Singleton: TdmXModelsProxy read FSingleton;

    procedure GetBndProcessObjectID(
      IsSale: Boolean; BndObjectBranchCode: Integer;
      BndObjectNo: Integer; out BndProcessObjectBranchCode: Integer;
      out BndProcessObjectCode: Integer; out HasManufactureTechQuantity: Boolean);
    function XModelExists(BndProcessObjectBranchCode: Integer; BndProcessObjectCode: Integer): Boolean;
    function GetNeededSpecModelVariantNo(
      SpecProductCode: Integer; MainDeptCode: Integer;
      Quantity: Double; ToDate: TDateTime): Integer;
    procedure GetModelInfo(
      MLObjectBranchCode: Integer; MLObjectCode: Integer;
      out ForkCount: Integer; out OutStoreDealCount: Integer;
      out WaitingChangeRequestCount: Integer);
  end;

implementation

uses
  Variants, uUtils, uProcesses, uDBPooledDataModuleHelper, uServerMessageIds,
  uProcessObjectIdentifierFormats, uSvrUtils, uSaleOrderTypes, uMessageUtils;

{$R *.DFM}

{ TdmXModelsProxy }

function TdmXModelsProxy.GetLockedInstance: ISmartLock<TdmXModels>;
begin
  Result:= ISmartLock<TdmXModels>(inherited LockedInstance);
end;

procedure TdmXModelsProxy.GetBndProcessObjectID(IsSale: Boolean; BndObjectBranchCode: Integer;
  BndObjectNo: Integer; out BndProcessObjectBranchCode, BndProcessObjectCode: Integer;
  out HasManufactureTechQuantity: Boolean);
begin
  LockedInstance.Value.GetBndProcessObjectID(
    IsSale, BndObjectBranchCode, BndObjectNo,
    BndProcessObjectBranchCode,BndProcessObjectCode, HasManufactureTechQuantity);
end;

procedure TdmXModelsProxy.GetModelInfo(MLObjectBranchCode,
  MLObjectCode: Integer; out ForkCount, OutStoreDealCount,
  WaitingChangeRequestCount: Integer);
begin
  LockedInstance.Value.GetModelInfo(
    MLObjectBranchCode, MLObjectCode, ForkCount, OutStoreDealCount, WaitingChangeRequestCount);
end;

function TdmXModelsProxy.GetNeededSpecModelVariantNo(SpecProductCode,
  MainDeptCode: Integer; Quantity: Double; ToDate: TDateTime): Integer;
begin
  Result:=
    LockedInstance.Value.GetNeededSpecModelVariantNo(SpecProductCode, MainDeptCode, Quantity, ToDate);
end;

function TdmXModelsProxy.XModelExists(BndProcessObjectBranchCode,
  BndProcessObjectCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.XModelExists(BndProcessObjectBranchCode, BndProcessObjectCode);
end;

{ TdmXModels }

procedure TdmXModels.GetBndProcessObjectID(IsSale: Boolean; BndObjectBranchCode: Integer;
  BndObjectNo: Integer; out BndProcessObjectBranchCode, BndProcessObjectCode: Integer;
  out HasManufactureTechQuantity: Boolean);
var
  qry: TAbmesSQLQuery;
begin
  if IsSale then
    qry:= qrySaleID
  else
    qry:= qrySaleGroupID;

  with qry do
    begin
      ParamByName('BND_OBJECT_BRANCH_CODE').AsInteger:= BndObjectBranchCode;
      ParamByName('BND_OBJECT_NO').AsInteger:= BndObjectNO;

      Open;
      try
        BndProcessObjectBranchCode:= FieldByName('PROCESS_OBJECT_BRANCH_CODE').AsInteger;
        BndProcessObjectCode:= FieldByName('PROCESS_OBJECT_CODE').AsInteger;

        if IsSale then
          HasManufactureTechQuantity:= FieldByName('HAS_MANUFACTURE_TECH_QUANTITY').AsBoolean
        else
          HasManufactureTechQuantity:= False;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

function TdmXModels.XModelExists(BndProcessObjectBranchCode,
  BndProcessObjectCode: Integer): Boolean;
begin
  with qryXModelExists do
    begin
      ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').AsInteger:= BndProcessObjectBranchCode;
      ParamByName('BND_PROCESS_OBJECT_CODE').AsInteger:= BndProcessObjectCode;

      Open;
      try
        Result:= not (BOF and EOF);
      finally
        Close;
      end;   { try }
    end;   { with }
end;


procedure TdmXModels.prvXModelBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  FMLObjectBranchCode:= 0;
  FMLObjectCode:= 0;
  FBndProcessObjectBranchCode:= 0;
  FBndProcessObjectCode:= 0;
  FEnterResultStoreEndDate:= EncodeDate(1996, 1, 1);

  FOldMLLObjectBranchCode:= 0;
  FOldMLLObjectCode:= 0;

  cdsNewMLLKey.CreateDataSet;

  FDocsDelta:= OwnerData;
end;

procedure TdmXModels.prvXModelBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);

var
  ForkNo: Integer;
  f: TField;

  function GetLineNoAsText(ADataSet: TDataSet): string;
  var
    i, n: Integer;
  begin
    Result:= GetFieldValue(ADataSet.FieldByName('NO_1'));
    for i:= 2 to MaxNoPos do
      begin
        n:= GetFieldValue(ADataSet.FieldByName(Format('NO_%d', [i])));

        if (n <> 0) then            // tuk ne triabva da e prosto ">", shtoto moje i da sa otricatelni
          Result:= Result + '.' + IntToStr(n);
      end;
  end;

  procedure SetNegativeNo;
  var
    i: Integer;
  begin
    with DeltaDS do
      begin
        for i:= 1 to MaxNoPos do
          begin
            f:= FieldByName('NO_'+IntToStr(i));
            f.NewValue:= -GetFieldValue(f);
          end;  { for }

        f:= FieldByName('FORK_NO');
        f.NewValue:= -GetFieldValue(f);
      end;   { with }
  end;

  procedure MakeNegativeNoAsText(AField: TField);
  begin
    AField.NewValue:=
      '-' + StringReplace(GetFieldValue(AField), '.', '.-', [rfReplaceAll]);
  end;   { MakeNegativeNoAsText }

var
  NowDate: TDateTime;
  NowTime: TDateTime;
  cdsXModel: TCustomClientDataSet;
  cdsXModelLine: TCustomClientDataSet;
  ParentMLLObjectBranchCode: Integer;
  ParentMLLObjectCode: Integer;
  Fork0MLLObjectBranchCode: Integer;
  Fork0MLLObjectCode: Integer;
  BndObjBranchNo: Real;
  BndObjNo: Integer;
  StageNo: Integer;
  cdsTasks: TCustomClientDataSet;
  MasterUpdateKind: TUpdateKind;
  cdsStages: TCustomClientDataSet;
  OperationNo: Integer;
  OperationVariantNo: Integer;
begin
  inherited;

  FUpdateDS:= SourceDS;

  NowDate:= ContextDate;
  NowTime:= ContextTime;

  with DeltaDS do
    begin
      if (SourceDS = qryXModel) then
        begin
          if (UpdateKind = ukInsert) then
            begin
              FInsertXModel:= True;

              GetBndObjectData(DeltaDS, BndObjBranchNo, BndObjNo);

              SvrCommon.SetProcessObjectKey(DeltaDS,
                'ML_OBJECT_BRANCH_CODE', 'ML_OBJECT_CODE', pocMaterialList,
                Format(poifMaterialList, [
                  BndObjBranchNo,
                  BndObjNo]));

              FieldByName('CREATE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
              FieldByName('CREATE_DATE').NewValue:= NowDate;
              FieldByName('CREATE_TIME').NewValue:= NowTime;
            end;   { if }

          FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
          FieldByName('CHANGE_DATE').NewValue:= NowDate;
          FieldByName('CHANGE_TIME').NewValue:= NowTime;
        end;

      if (SourceDS = qryXModelLines) then
        begin
          if (UpdateKind = ukInsert) then
            begin
              cdsXModel:= DeltaDS.DataSetField.DataSet as TCustomClientDataSet;

              if (FOldMLLObjectCode = 0) then
                begin
                  FOldMLLObjectBranchCode:= FieldByName('MLL_OBJECT_BRANCH_CODE').NewValue;
                  FOldMLLObjectCode:= FieldByName('MLL_OBJECT_CODE').NewValue;
                end;   { if }

              SvrCommon.SetProcessObjectKey(DeltaDS,
                'MLL_OBJECT_BRANCH_CODE', 'MLL_OBJECT_CODE', pocMaterialListLine);

              FieldByName('ML_OBJECT_BRANCH_CODE').NewValue:=
                GetFieldValue(cdsXModel.FieldByName('ML_OBJECT_BRANCH_CODE'));
              FieldByName('ML_OBJECT_CODE').NewValue:=
                GetFieldValue(cdsXModel.FieldByName('ML_OBJECT_CODE'));

              if not VarIsNullOrEmpty(FieldByName('PARENT_MLL_OBJECT_CODE').NewValue) then
                begin
                  GetTheNewMLLKey(
                    GetFieldValue(FieldByName('PARENT_MLL_OBJECT_BRANCH_CODE')),
                    GetFieldValue(FieldByName('PARENT_MLL_OBJECT_CODE')),
                    ParentMLLObjectBranchCode,
                    ParentMLLObjectCode);
                  FieldByName('PARENT_MLL_OBJECT_BRANCH_CODE').NewValue:= ParentMLLObjectBranchCode;
                  FieldByName('PARENT_MLL_OBJECT_CODE').NewValue:= ParentMLLObjectCode;
                end;   { if }

              if not VarIsNullOrEmpty(FieldByName('FORK_0_MLL_OBJECT_CODE').NewValue) then
                begin
                  GetTheNewMLLKey(
                    GetFieldValue(FieldByName('FORK_0_MLL_OBJECT_BRANCH_CODE')),
                    GetFieldValue(FieldByName('FORK_0_MLL_OBJECT_CODE')),
                    Fork0MLLObjectBranchCode,
                    Fork0MLLObjectCode);
                  FieldByName('FORK_0_MLL_OBJECT_BRANCH_CODE').NewValue:= Fork0MLLObjectBranchCode;
                  FieldByName('FORK_0_MLL_OBJECT_CODE').NewValue:= Fork0MLLObjectCode;
                end;   { if }

              Assert(not VarIsNullOrEmpty(FieldByName('FORK_NO').NewValue));
              if (FieldByName('FORK_NO').NewValue = 0) then
                with qryGetMllHasMovements do
                  begin
                    SetParams(Params, DeltaDS);

                    Open;
                    try
                      if qryGetMllHasMovementsHAS_MOVEMENTS.AsBoolean then
                        raise Exception.Create(SHasMovementsId + '(' +
                          'StageNo:s=' + InternalEncodeString(StringReplace(qryGetMllHasMovementsNO_AS_TEXT.AsString, '-', '', [rfReplaceAll])) + ')');
                    finally
                      Close;
                    end;  { try }
                  end;  { with }

              if (UpdateKind = ukModify) and
                 (not VarIsEmpty(FieldByName('LINE_DETAIL_TECH_QUANTITY').NewValue)) and
                 (FieldByName('LINE_DETAIL_TECH_QUANTITY').NewValue < FieldByName('LINE_DETAIL_TECH_QUANTITY').OldValue) then
                with qryMaxMllDetailTechQuantity do
                  begin
                    SetParams(Params, DeltaDS);

                    Open;
                    try
                      if (qryMaxMllDetailTechQuantityMAX_MOVED_DEATAIL_TECH_QTY.AsFloat >
                          DeltaDS.FieldByName('LINE_DETAIL_TECH_QUANTITY').NewValue) then
                        raise Exception.Create(SSmallLineDetailTechQtyId + '(' +
                          'StageNo:s=' + InternalEncodeString(GetFieldValue(DeltaDS.FieldByName('NO_AS_TEXT'))) + ',' +
                          'ForkNo:s=' + InternalEncodeString(GetFieldValue(DeltaDS.FieldByName('FORK_NO'))) + ')');
                    finally
                      Close;
                    end;  { try }
                  end;  { with }
            end;   { if }

          if (UpdateKind <> ukDelete) then
            begin
              Assert(Assigned(DataSetField));
              MasterUpdateKind:= (DataSetField.DataSet as TPacketDataSet).UpdateKind;

              // make all new no_* fields negative - triabva da e predi sazdavaneto na PO
              if (MasterUpdateKind = ukModify) then
                begin
                  SetNegativeNo;
                  MakeNegativeNoAsText(FieldByName('NO_AS_TEXT'));
                  MakeNegativeNoAsText(FieldByName('NO_AS_FORMATED_TEXT'));
                end;

              GetBndObjectData(DeltaDS.DataSetField.DataSet, BndObjBranchNo, BndObjNo);

              ForkNo:= GetFieldValue(FieldByName('FORK_NO'));

              SvrCommon.UpdateProcessObjectIdentifier(
                GetFieldValue(FieldByName('MLL_OBJECT_BRANCH_CODE')),
                GetFieldValue(FieldByName('MLL_OBJECT_CODE')),
                Format(poifMaterialListLine, [
                  BndObjBranchNo,
                  BndObjNo,
                  GetLineNoAsText(DeltaDS),
                  ForkNo]));
            end;   { if }

          if (UpdateKind = ukDelete) then
            begin
              SetParams(qryDelPlannedStoreDeal.Params, DeltaDS);
              qryDelPlannedStoreDeal.ExecSQL;

              qryDelMLMSProcessObjects.ParamByName('MLL_OBJECT_BRANCH_CODE').AsInteger:=
                GetFieldValue(FieldByName('MLL_OBJECT_BRANCH_CODE'));
              qryDelMLMSProcessObjects.ParamByName('MLL_OBJECT_CODE').AsInteger:=
                GetFieldValue(FieldByName('MLL_OBJECT_CODE'));
              qryDelMLMSProcessObjects.ExecSQL;
            end;   { if }
        end;   { if }

      if (SourceDS = qryXModelLineStages) then
        begin
          if (UpdateKind = ukInsert) then
            begin
              cdsXModelLine:= DeltaDS.DataSetField.DataSet as TCustomClientDataSet;

              SvrCommon.SetProcessObjectKey(DeltaDS,
                'MLMS_OBJECT_BRANCH_CODE', 'MLMS_OBJECT_CODE', pocModelStage);

              FieldByName('MLL_OBJECT_BRANCH_CODE').NewValue:=
                GetFieldValue(cdsXModelLine.FieldByName('MLL_OBJECT_BRANCH_CODE'));
              FieldByName('MLL_OBJECT_CODE').NewValue:=
                GetFieldValue(cdsXModelLine.FieldByName('MLL_OBJECT_CODE'));
            end;   { if }

          if (UpdateKind <> ukDelete) then
            begin
              Assert(Assigned(DataSetField));
              MasterUpdateKind:= (DataSetField.DataSet.DataSetField.DataSet as TPacketDataSet).UpdateKind;

              // make all new no_* fields negative - triabva da e predi sazdavaneto na PO
              if (MasterUpdateKind = ukModify) then
                begin
                  SetNegativeNo;

                  f:= FieldByName('ML_MODEL_STAGE_NO');
                  f.NewValue:= EncodeTempNo(GetFieldValue(f));
                end;

              GetBndObjectData((DeltaDS.DataSetField.DataSet as TCustomClientDataSet).DataSetField.DataSet,
                BndObjBranchNo, BndObjNo);
              ForkNo:= GetFieldValue(FieldByName('FORK_NO'));
              StageNo:= GetFieldValue(FieldByName('ML_MODEL_STAGE_NO'));

              SvrCommon.UpdateProcessObjectIdentifier(
                GetFieldValue(FieldByName('MLMS_OBJECT_BRANCH_CODE')),
                GetFieldValue(FieldByName('MLMS_OBJECT_CODE')),
                Format(poifModelStage, [
                  BndObjBranchNo,
                  BndObjNo,
                  GetLineNoAsText(DeltaDS),
                  ForkNo,
                  StageNo]));

              if (UpdateKind = ukModify) then
                Applied:= not RecordChanged(DeltaDS);
            end;   { if }
        end;   { if }

      if (SourceDS = qryXModelTasks) then
        begin
          if (UpdateKind = ukInsert) then
            begin
              cdsXModel:= DeltaDS.DataSetField.DataSet as TCustomClientDataSet;

              FieldByName('ML_OBJECT_BRANCH_CODE').NewValue:=
                GetFieldValue(cdsXModel.FieldByName('ML_OBJECT_BRANCH_CODE'));
              FieldByName('ML_OBJECT_CODE').NewValue:=
                GetFieldValue(cdsXModel.FieldByName('ML_OBJECT_CODE'));
            end;   { if }
        end;   { if }

      if (SourceDS = qryXModelTaskDepts) then
        begin
          if (UpdateKind = ukInsert) then
            begin
              cdsTasks:= DeltaDS.DataSetField.DataSet as TCustomClientDataSet;

              FieldByName('ML_OBJECT_BRANCH_CODE').NewValue:=
                GetFieldValue(cdsTasks.FieldByName('ML_OBJECT_BRANCH_CODE'));
              FieldByName('ML_OBJECT_CODE').NewValue:=
                GetFieldValue(cdsTasks.FieldByName('ML_OBJECT_CODE'));
              FieldByName('MATERIAL_LIST_TASK_NO').NewValue:=
                GetFieldValue(cdsTasks.FieldByName('MATERIAL_LIST_TASK_NO'));
            end;   { if }
        end;   { if }

      if (SourceDS = qryMLMSOperations) then
        begin
          if (UpdateKind = ukInsert) then
            begin
              cdsStages:= DeltaDS.DataSetField.DataSet as TCustomClientDataSet;

              SvrCommon.SetProcessObjectKey(DeltaDS,
                'MLMSO_OBJECT_BRANCH_CODE', 'MLMSO_OBJECT_CODE', pocModelOperation);

              FieldByName('MLMS_OBJECT_BRANCH_CODE').NewValue:=
                GetFieldValue(cdsStages.FieldByName('MLMS_OBJECT_BRANCH_CODE'));
              FieldByName('MLMS_OBJECT_CODE').NewValue:=
                GetFieldValue(cdsStages.FieldByName('MLMS_OBJECT_CODE'));
            end;   { if }

          if (UpdateKind <> ukDelete) then
            begin
              Assert(Assigned(DataSetField));
              MasterUpdateKind:= (DataSetField.DataSet.DataSetField.DataSet.DataSetField.DataSet as TPacketDataSet).UpdateKind;

              // make all new no_* fields negative - triabva da e predi sazdavaneto na PO
              if (MasterUpdateKind = ukModify) then
                begin
                  SetNegativeNo;

                  f:= FieldByName('ML_MODEL_STAGE_NO');
                  f.NewValue:= EncodeTempNo(GetFieldValue(f));

                  f:= FieldByName('MLMS_OPERATION_NO');
                  f.NewValue:= EncodeTempNo(GetFieldValue(f));

                  f:= FieldByName('MLMS_OPERATION_VARIANT_NO');
                  f.NewValue:= EncodeTempNo(GetFieldValue(f));
                end;

              GetBndObjectData(DataSetField.DataSet.DataSetField.DataSet.DataSetField.DataSet,
                BndObjBranchNo, BndObjNo);
              ForkNo:= GetFieldValue(FieldByName('FORK_NO'));
              StageNo:= GetFieldValue(FieldByName('ML_MODEL_STAGE_NO'));
              OperationNo:= GetFieldValue(FieldByName('MLMS_OPERATION_NO'));
              OperationVariantNo:= GetFieldValue(FieldByName('MLMS_OPERATION_VARIANT_NO'));

              SvrCommon.UpdateProcessObjectIdentifier(
                GetFieldValue(FieldByName('MLMSO_OBJECT_BRANCH_CODE')),
                GetFieldValue(FieldByName('MLMSO_OBJECT_CODE')),
                Format(poifModelOperation, [
                  BndObjBranchNo,
                  BndObjNo,
                  GetLineNoAsText(DeltaDS),
                  ForkNo,
                  StageNo,
                  OperationNo,
                  OperationVariantNo]));

              if (UpdateKind = ukModify) then
                Applied:= not RecordChanged(DeltaDS);
            end;   { if }
        end;   { if }
    end;   { with }
end;

procedure TdmXModels.prvXModelAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;

  with DeltaDS do
    begin
      if (SourceDS = qryXModel) then
        begin
          FMLObjectBranchCode:= GetFieldValue(FieldByName('ML_OBJECT_BRANCH_CODE'));
          FMLObjectCode:= GetFieldValue(FieldByName('ML_OBJECT_CODE'));
          FBndProcessObjectBranchCode:= GetFieldValue(FieldByName('BND_PROCESS_OBJECT_BRANCH_CODE'));
          FBndProcessObjectCode:= GetFieldValue(FieldByName('BND_PROCESS_OBJECT_CODE'));
          FEnterResultStoreEndDate:= GetFieldValue(FieldByName('ENTER_RESULT_STORE_END_DATE'));
        end;   { if }

      if (SourceDS = qryXModelLines) then
        begin
          case UpdateKind of
            ukInsert:
              begin
                cdsNewMLLKey.Append;
                try
                  cdsNewMLLKeyOLD_MLL_OBJECT_BRANCH_CODE.AsInteger:= FOldMLLObjectBranchCode;
                  cdsNewMLLKeyOLD_MLL_OBJECT_CODE.AsInteger:= FOldMLLObjectCode;

                  cdsNewMLLKeyNEW_MLL_OBJECT_BRANCH_CODE.AsInteger:=
                    FieldByName('MLL_OBJECT_BRANCH_CODE').NewValue;
                  cdsNewMLLKeyNEW_MLL_OBJECT_CODE.AsInteger:=
                    FieldByName('MLL_OBJECT_CODE').NewValue;

                  cdsNewMLLKey.Post;
                except
                  cdsNewMLLKey.Cancel;
                  raise;
                end;   { try }

                FOldMLLObjectBranchCode:= 0;
                FOldMLLObjectCode:= 0;
              end;   { case ukInsert }

            ukDelete:
              begin
                SetParams(qryDelLinePSD.Params, DeltaDS);
                qryDelLinePSD.ExecSQL;
              end;
          end;   { case }
        end;   { if }

      if (SourceDS = qryXModelLineStages) then
        begin
          case UpdateKind of
            ukDelete:
              SvrCommon.DeleteProcessObject(
                DeltaDS, 'MLMS_OBJECT_BRANCH_CODE', 'MLMS_OBJECT_CODE');
          end;   { case }
        end;   { if }

      if (SourceDS = qryMLMSOperations) then
        begin
          case UpdateKind of
            ukDelete:
              SvrCommon.DeleteProcessObject(
                DeltaDS, 'MLMSO_OBJECT_BRANCH_CODE', 'MLMSO_OBJECT_CODE');
          end;   { case }
        end;   { if }
    end;   { with }
end;

procedure TdmXModels.prvXModelAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  cdsNewMLLKey.Close;
  FDocsDelta:= Unassigned;
end;

procedure TdmXModels.GetTheNewMLLKey(OldMLLObjectBranchCode, OldMLLObjectCode: Integer;
  out NewMLLObjectBranchCode, NewMLLObjectCode: Integer);
begin
  Assert(cdsNewMLLKey.Active, 'cdsNewMLLKey must be active');

  if cdsNewMLLKey.Locate('OLD_MLL_OBJECT_BRANCH_CODE; OLD_MLL_OBJECT_CODE',
       VarArrayOf([OldMLLObjectBranchCode, OldMLLObjectCode]), []) then
    begin
      NewMLLObjectBranchCode:= cdsNewMLLKeyNEW_MLL_OBJECT_BRANCH_CODE.AsInteger;
      NewMLLObjectCode:= cdsNewMLLKeyNEW_MLL_OBJECT_CODE.AsInteger;
    end
  else   { if }
    begin
      NewMLLObjectBranchCode:= OldMLLObjectBranchCode;
      NewMLLObjectCode:= OldMLLObjectCode;
    end;   { if }
end;

procedure TdmXModels.DataModuleCreate(Sender: TObject);
begin
  RegisterMacroLibrary(mshLocalMacroLibrary);
  inherited;
end;

procedure TdmXModels.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  UnregisterMacroLibrary(mshLocalMacroLibrary);
end;

procedure TdmXModels.GetBndObjectData(cdsXModel: TDataSet;
  out BndObjBranchNo: Real; out BndObjNo: Integer);
begin
  if (GetFieldValue(cdsXModel.FieldByName('BND_PROCESS_OBJECT_CLASS_CODE')) = pocSale) then
    begin
      BndObjBranchNo:= GetFieldValue(cdsXModel.FieldByName('SALE_BRANCH_NO'));
      BndObjNo:= GetFieldValue(cdsXModel.FieldByName('SALE_NO'));
    end
  else   { if }
    begin
      BndObjBranchNo:= GetFieldValue(cdsXModel.FieldByName('SALE_GROUP_BRANCH_NO'));
      BndObjNo:= GetFieldValue(cdsXModel.FieldByName('SALE_GROUP_CODE'));
    end;   { if }
end;

procedure TdmXModels.prvXModelUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  inherited;
  FInsertXModel:= False;
end;

function TdmXModels.GetNeededSpecModelVariantNo(SpecProductCode,
  MainDeptCode: Integer; Quantity: Double; ToDate: TDateTime): Integer;
var
  RecCount: Integer;
begin
  with qryNeededSpecModelVariantNo do
    begin
      ParamByName('SPEC_PRODUCT_CODE').AsInteger:= SpecProductCode;
      ParamByName('MAIN_DEPT_CODE').AsInteger:= MainDeptCode;
      ParamByName('QUANTITY').AsFloat:= Quantity;
      ParamByName('TO_DATE').AsDateTime:= ToDate;

      Open;
      try
        Result:= qryNeededSpecModelVariantNoSPEC_MODEL_VARIANT_NO.AsInteger;

        RecCount:= 0;
        while not qryNeededSpecModelVariantNo.Eof do
          begin
            Inc(RecCount);
            qryNeededSpecModelVariantNo.Next;
          end;

        if (RecCount > 1) then
          Result:= -1;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

procedure TdmXModels.qryXModelLineStagesBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  dsXModelLineStages.DataSet:= nil;
end;

procedure TdmXModels.prvXModelAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  dsXModelLineStages.DataSet:= qryXModelLineStages;
end;

procedure TdmXModels.prvXModelGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  cdsXModelLines: TDataSet;
  cdsXModelLineStages: TDataSet;
  cdsMLMSOperations: TDataSet;
  MlmsObjectBranchCode: Integer;
  MlmsObjectCode: Integer;
begin
  inherited;

  // set MLMSOperations
  cdsXModelLines:= (DataSet.FieldByName('qryXModelLines') as TDataSetField).NestedDataSet;
  cdsXModelLineStages:= (cdsXModelLines.FieldByName('qryXModelLineStages') as TDataSetField).NestedDataSet;
  cdsMLMSOperations:= (cdsXModelLineStages.FieldByName('qryMLMSOperations') as TDataSetField).NestedDataSet;

  with cdsAllMLMSOperations do
    begin
      Params.ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:=
        DataSet.FieldByName('ML_OBJECT_BRANCH_CODE').AsInteger;
      Params.ParamByName('ML_OBJECT_CODE').AsInteger:=
        DataSet.FieldByName('ML_OBJECT_CODE').AsInteger;

      Open;
    end;   { with }
  try
    cdsXModelLines.First;
    while not cdsXModelLines.Eof do
      begin
        cdsXModelLineStages.First;
        while not cdsXModelLineStages.Eof do
          begin
            with cdsMLMSOperations do
              begin
                while not (Bof and Eof) do
                  Delete;

                MlmsObjectBranchCode:= cdsXModelLineStages.FieldByName('MLMS_OBJECT_BRANCH_CODE').AsInteger;
                MlmsObjectCode:= cdsXModelLineStages.FieldByName('MLMS_OBJECT_CODE').AsInteger;

                cdsAllMLMSOperations.First;
                cdsAllMLMSOperations.Locate('MLMS_OBJECT_BRANCH_CODE; MLMS_OBJECT_CODE',
                  VarArrayOf([MlmsObjectBranchCode, MlmsObjectCode]), []);

                while (not cdsAllMLMSOperations.Eof) and
                      (cdsAllMLMSOperations.FieldByName('MLMS_OBJECT_BRANCH_CODE').AsInteger = MlmsObjectBranchCode) and
                      (cdsAllMLMSOperations.FieldByName('MLMS_OBJECT_CODE').AsInteger = MlmsObjectCode) do
                  begin
                    Append;
                    try
                      AssignFields(cdsAllMLMSOperations);
                      Post;
                    except
                      Cancel;
                      raise;
                    end;   { try }

                    cdsAllMLMSOperations.Next;
                  end;   { while }
              end;   { with }

            cdsXModelLineStages.Next;
          end;   { while not cdsXModelLineStages.Eof }
        cdsXModelLines.Next;
      end;   { while not cdsXModelLines.Eof }
  finally
    cdsAllMLMSOperations.Close;
  end;   { try }

  // workaround na posledvashto goliamo zamisliane v TBaseProvider.DoOnGetData na proverka za ChangeCount > 0
  DataSet.AppendRecord([]);
  DataSet.MergeChangeLog;
  DataSet.Delete;
end;

procedure TdmXModels.qryXModelBeforeProviderEndTransaction(
  DataSet: TDataSet; Commit: Boolean);
var
  s: string;
begin
  inherited;

  if Commit then
    begin
      // make all lines new no_* and fork_no fields positive
      with qryUpdMaterialListLineNosToPositive do
        begin
          ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= FMLObjectBranchCode;
          ParamByName('ML_OBJECT_CODE').AsInteger:= FMLObjectCode;
          ExecSQL;
        end;   { with }

      // make stages new no fields positive
      with qryUpdMaterialListLineStageNosToPositive do
        begin
          ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= FMLObjectBranchCode;
          ParamByName('ML_OBJECT_CODE').AsInteger:= FMLObjectCode;
          ExecSQL;
        end;   { with }

      // check for waste forks exceeding line and fork waste movements
      with qryCheckWasteForks do
        begin
          ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= FMLObjectBranchCode;
          ParamByName('ML_OBJECT_CODE').AsInteger:= FMLObjectCode;

          s:= '';
          Open;
          try
            while not Eof do
              begin
                s:= s + qryCheckWasteForksNO_AS_FORMATED_TEXT.AsString + SLineBreak;
                Next;
              end;  { while }
          finally
            Close;
          end;  { try }

          if (s <> '') then
            raise Exception.Create(SModelIncorrectWasteForksId + '(LineNos:s=' + s + ')');
        end;   { with }

      // check operation docs
      with qryCheckOperationDocs do
        begin
          ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= FMLObjectBranchCode;
          ParamByName('ML_OBJECT_CODE').AsInteger:= FMLObjectCode;
          Open;
          try
            if (qryCheckOperationDocsWRONG_OPERATION_DOC_EXISTS.AsInteger > 0) then
              raise Exception.Create('Incorrect operation docs!');
          finally
            Close;
          end;  { try }
        end;  { with }

      with qryUpdateStageDates do
        begin
          ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= FMLObjectBranchCode;
          ParamByName('ML_OBJECT_CODE').AsInteger:= FMLObjectCode;
          ParamByName('ENTER_RESULT_STORE_END_DATE').AsDateTime:= FEnterResultStoreEndDate;
          ExecSQL;
        end;   { with }

      with qryUpdMlmsoDates do
        begin
          ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= FMLObjectBranchCode;
          ParamByName('ML_OBJECT_CODE').AsInteger:= FMLObjectCode;
          ExecSQL;
        end;   { with }

      with qryUpdModelStageLinks do
        begin
          ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= FMLObjectBranchCode;
          ParamByName('ML_OBJECT_CODE').AsInteger:= FMLObjectCode;
          ExecSQL;
        end;   { with }

      with qryInsModelStageLinks do
        begin
          ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= FMLObjectBranchCode;
          ParamByName('ML_OBJECT_CODE').AsInteger:= FMLObjectCode;
          ExecSQL;
        end;   { with }

      with qryUpdSale do
        begin
          ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= FMLObjectBranchCode;
          ParamByName('ML_OBJECT_CODE').AsInteger:= FMLObjectCode;
          ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').AsInteger:= FBndProcessObjectBranchCode;
          ParamByName('BND_PROCESS_OBJECT_CODE').AsInteger:= FBndProcessObjectCode;
          ExecSQL;
        end;   { with }

      with qryUpdSaleInStoreDeal do
        begin
          ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').AsInteger:= FBndProcessObjectBranchCode;
          ParamByName('BND_PROCESS_OBJECT_CODE').AsInteger:= FBndProcessObjectCode;
          ExecSQL;
        end;   { with }

      with qrySetActiveOperationVariants do
        begin
          ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= FMLObjectBranchCode;
          ParamByName('ML_OBJECT_CODE').AsInteger:= FMLObjectCode;
          ExecSQL;
        end;   { with }

      with qryUpdateModelPsdDepts do
        begin
          ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= FMLObjectBranchCode;
          ParamByName('ML_OBJECT_CODE').AsInteger:= FMLObjectCode;
          ExecSQL;
        end;   { with }
    end;   { if }
end;

procedure TdmXModels.qryInsertSpecLinesBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  dsInsertSpecLines.DataSet:= nil;
end;

procedure TdmXModels.qryInsertSpecStagesBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  dsInsertSpecStages.DataSet:= nil;
end;

procedure TdmXModels.prvInsertSpecLinesAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  dsInsertSpecLines.DataSet:= qryInsertSpecLines;
  dsInsertSpecStages.DataSet:= qryInsertSpecStages;
end;

procedure TdmXModels.prvInsertSpecLinesGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  cdsInsertSpecLines: TDataSet;
  cdsInsertSpecStages: TDataSet;
  cdsInsertSpecOperations: TDataSet;
  SpecProductCode: Integer;
  SpecModelVariantNo: Integer;
  SpecLineCode: Integer;
  SpecLineStageCode: Integer;
  cdsInsertSpecLinesSPEC_LINE_CODE: TField;
  cdsInsertSpecLinesDETAIL_IS_PRODUCTION_PRODUCT: TField;
  cdsInsertSpecLinesPRODUCT_CODE: TField;
  cdsInsertSpecLinesNO_1: TField;
  cdsInsertSpecStagesSPEC_LINE_STAGE_CODE: TField;
begin
  inherited;

  cdsInsertSpecLines:= DataSet;
  cdsInsertSpecStages:= (cdsInsertSpecLines.FieldByName('qryInsertSpecStages') as TDataSetField).NestedDataSet;
  cdsInsertSpecOperations:= (cdsInsertSpecStages.FieldByName('qryInsertSpecOperations') as TDataSetField).NestedDataSet;

  cdsInsertSpecLinesSPEC_LINE_CODE:= cdsInsertSpecLines.FieldByName('SPEC_LINE_CODE');
  cdsInsertSpecLinesDETAIL_IS_PRODUCTION_PRODUCT:= cdsInsertSpecLines.FieldByName('DETAIL_IS_PRODUCTION_PRODUCT');
  cdsInsertSpecLinesPRODUCT_CODE:= cdsInsertSpecLines.FieldByName('PRODUCT_CODE');
  cdsInsertSpecLinesNO_1:= cdsInsertSpecLines.FieldByName('NO_1');
  cdsInsertSpecStagesSPEC_LINE_STAGE_CODE:= cdsInsertSpecStages.FieldByName('SPEC_LINE_STAGE_CODE');

  SpecProductCode:= DataSet.FieldByName('SPEC_PRODUCT_CODE').AsInteger;
  SpecModelVariantNo:= DataSet.FieldByName('SPEC_MODEL_VARIANT_NO').AsInteger;

  cdsAllStages.Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= SpecProductCode;
  cdsAllStages.Params.ParamByName('SPEC_MODEL_VARIANT_NO').AsInteger:= SpecModelVariantNo;
  cdsAllSMVSOperations.Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= SpecProductCode;
  cdsAllSMVSOperations.Params.ParamByName('SPEC_MODEL_VARIANT_NO').AsInteger:= SpecModelVariantNo;

  cdsAllStages.Open;
  try
    cdsAllSMVSOperations.Open;
    try
      cdsInsertSpecLines.First;
      while not cdsInsertSpecLines.Eof do
        begin
          SpecLineCode:= cdsInsertSpecLinesSPEC_LINE_CODE.AsInteger;
          with cdsInsertSpecStages do
            begin
              cdsAllStages.First;
              cdsAllStages.Locate('SPEC_LINE_CODE', SpecLineCode, []);

              while (not cdsAllStages.Eof) and
                    (cdsAllStagesSPEC_LINE_CODE.AsInteger = SpecLineCode) do
                begin
                  Append;
                  try
                    AssignFields(cdsAllStages);
                    Post;
                  except
                    Cancel;
                    raise;
                  end;   { try }

                  SpecLineStageCode:= cdsInsertSpecStagesSPEC_LINE_STAGE_CODE.AsInteger;

                  with cdsInsertSpecOperations do
                    begin
                      cdsAllSMVSOperations.First;
                      cdsAllSMVSOperations.Locate('SPEC_LINE_CODE; SPEC_LINE_STAGE_CODE',
                        VarArrayOf([SpecLineCode, SpecLineStageCode]), []);

                      while (not cdsAllSMVSOperations.Eof) and
                            (cdsAllSMVSOperationsSPEC_LINE_CODE.AsInteger = SpecLineCode) and
                            (cdsAllSMVSOperationsSPEC_LINE_STAGE_CODE.AsInteger = SpecLineStageCode) do
                        begin
                          Append;
                          try
                            AssignFields(cdsAllSMVSOperations);
                            Post;
                          except
                            Cancel;
                            raise;
                          end;   { try }

                          cdsAllSMVSOperations.Next;
                        end;   { while }
                    end;   { with }

                  cdsAllStages.Next;
                end;   { while }
            end;   { with cdsSpecModelVariantStages }

          if (cdsInsertSpecLinesDETAIL_IS_PRODUCTION_PRODUCT.AsInteger = 1) and
             (cdsInsertSpecLinesNO_1.AsInteger > 0) and
             (cdsInsertSpecLines.RecordCount > 1) then
            begin
              cdsInsertSpecLines.Edit;
              try
                cdsInsertSpecLinesPRODUCT_CODE.Assign(
                  cdsInsertSpecLines.FieldByName('DETAIL_CODE'));

                cdsInsertSpecLines.FieldByName('PRODUCT_NAME').Assign(cdsInsertSpecLines.FieldByName('DETAIL_NAME'));
                cdsInsertSpecLines.FieldByName('PRODUCT_NO').Assign(cdsInsertSpecLines.FieldByName('DETAIL_NO'));
                cdsInsertSpecLines.FieldByName('PRODUCT_HAS_DOCUMENTATION').Assign(cdsInsertSpecLines.FieldByName('DETAIL_HAS_DOCUMENTATION'));
                cdsInsertSpecLines.FieldByName('PRODUCT_TECH_QUANTITY').AsFloat:= 1;

                with qryProductData do
                  begin
                    ParamByName('PRODUCT_CODE').AsInteger:= cdsInsertSpecLines.FieldByName('PRODUCT_CODE').AsInteger;

                    Open;
                    try
                      cdsInsertSpecLines.FieldByName('PRODUCT_TECH_MEASURE_CODE').Assign(qryProductDataTECH_MEASURE_CODE);
                      cdsInsertSpecLines.FieldByName('PRODUCT_TECH_MEASURE_COEF').Assign(qryProductDataTECH_MEASURE_COEF);
                      cdsInsertSpecLines.FieldByName('PRODUCT_ACCOUNT_MEASURE_CODE').Assign(qryProductDataACCOUNT_MEASURE_CODE);
                      cdsInsertSpecLines.FieldByName('PRODUCT_ACCOUNT_MEASURE_COEF').Assign(qryProductDataACCOUNT_MEASURE_COEF);
                      cdsInsertSpecLines.FieldByName('PRODUCT_SECONDARY_SINGLE_PRICE').Assign(qryProductDataESTIMATED_SECONDARY_PRICE);
                    finally
                      Close;
                    end;   { try }
                  end;   { with }

                cdsInsertSpecLines.Post;
              except
                cdsInsertSpecLines.Cancel;
                raise;
              end;   { try }
            end;

          cdsInsertSpecLines.Next;
        end;   { while not cdsSpecLines.Eof }
    finally
      cdsAllSMVSOperations.Close;
    end;   { try }
  finally
    cdsAllStages.Close;
  end;   { try }

  // workaround na posledvashto goliamo zamisliane v TBaseProvider.DoOnGetData na proverka za ChangeCount > 0
  DataSet.AppendRecord([]);
  DataSet.MergeChangeLog;
  DataSet.Delete;
end;

procedure TdmXModels.qryXModelAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmXModels.GetModelInfo(MLObjectBranchCode,
  MLObjectCode: Integer; out ForkCount, OutStoreDealCount,
  WaitingChangeRequestCount: Integer);
begin
  with qryXModelInfo do
    begin
      ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MLObjectBranchCode;
      ParamByName('ML_OBJECT_CODE').AsInteger:= MLObjectCode;

      Open;
      try
        ForkCount:= qryXModelInfoFORK_COUNT.AsInteger;
        OutStoreDealCount:= qryXModelInfoOUT_STORE_DEAL_COUNT.AsInteger;
        WaitingChangeRequestCount:= qryXModelInfoWAITING_CHANGE_REQUEST_COUNT.AsInteger;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

procedure TdmXModels.prvXModelUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;

  if ( (FUpdateDS = qryXModelLines) or (FUpdateDS = qryXModelLineStages)  or (FUpdateDS = qryMLMSOperations))and
     (UpdateKind = ukDelete) and
     (E.ErrorCode = 1) then          // magic number, ama ogranichava da ne hvashta vsichki exception-i
    Response:= rrIgnore;
end;

procedure TdmXModels.prvDSXModelBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  Applied:= (SourceDS <> qryDSXModelLines);
end;

procedure TdmXModels.prvDSXModelBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmXModels.prvDSXModelAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmXModels.qryDSXModelAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

initialization
  TdmXModelsProxy.FSingleton:= TdmXModelsProxy.Create(TdmXModels);


finalization
  FreeAndNil(TdmXModelsProxy.FSingleton);
end.
