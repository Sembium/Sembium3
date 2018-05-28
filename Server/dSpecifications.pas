unit dSpecifications;

interface                             

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, AbmesClientDataSet, WideStrings, FMTBcd, SqlExpr,
  AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmSpecifications = class(TDBPooledDataModule)
    qrySpecifications: TAbmesSQLQuery;
    prvSpecifications: TDataSetProvider;
    qrySpecificationTypes: TAbmesSQLQuery;
    prvSpecificationTypes: TDataSetProvider;
    qrySpecificationTypesSPEC_TYPE_CODE: TAbmesFloatField;
    qrySpecificationTypesSPEC_TYPE_NAME: TAbmesWideStringField;
    prvSpec: TDataSetProvider;
    qrySpec: TAbmesSQLQuery;
    dsSpec: TDataSource;
    qrySpecLines: TAbmesSQLQuery;
    prvInsertSpecLines: TDataSetProvider;
    qryInsertSpecLines: TAbmesSQLQuery;
    qrySpecificationsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecificationsPRODUCT_NAME: TAbmesWideStringField;
    qrySpecificationsPRODUCT_NO: TAbmesFloatField;
    qrySpecificationsSPEC_TYPE_NAME: TAbmesWideStringField;
    qrySpecificationsIS_VALID: TAbmesFloatField;
    qrySpecificationsSPEC_VERSION_NO: TAbmesFloatField;
    qrySpecificationsMANUFACTURER_SHORT_NAME: TAbmesWideStringField;
    qrySpecificationsNOTES: TAbmesWideStringField;
    qrySpecSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecSPEC_PRODUCT_NAME: TAbmesWideStringField;
    qrySpecSPEC_PRODUCT_NO: TAbmesFloatField;
    qrySpecSPEC_TYPE_CODE: TAbmesFloatField;
    qrySpecSPEC_VERSION_NO: TAbmesFloatField;
    qrySpecWORK_BRANCH_CODE: TAbmesFloatField;
    qrySpecMANUFACTURER_COMPANY_CODE: TAbmesFloatField;
    qrySpecAUTHOR_EMPLOYEE_CODE: TAbmesFloatField;
    qrySpecAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField;
    qrySpecAUTHORIZATION_DATE: TAbmesSQLTimeStampField;
    qrySpecAUTHORIZATION_TIME: TAbmesSQLTimeStampField;
    qrySpecVERSION_CREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySpecVERSION_CREATE_DATE: TAbmesSQLTimeStampField;
    qrySpecVERSION_CREATE_TIME: TAbmesSQLTimeStampField;
    qrySpecCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySpecCREATE_DATE: TAbmesSQLTimeStampField;
    qrySpecCREATE_TIME: TAbmesSQLTimeStampField;
    qrySpecCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySpecCHANGE_DATE: TAbmesSQLTimeStampField;
    qrySpecCHANGE_TIME: TAbmesSQLTimeStampField;
    qrySpecNOTES: TAbmesWideStringField;
    qrySpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecLinesSPEC_LINE_CODE: TAbmesFloatField;
    qrySpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField;
    qrySpecLinesNO_1: TAbmesFloatField;
    qrySpecLinesNO_2: TAbmesFloatField;
    qrySpecLinesNO_3: TAbmesFloatField;
    qrySpecLinesNO_4: TAbmesFloatField;
    qrySpecLinesNO_5: TAbmesFloatField;
    qrySpecLinesDETAIL_CODE: TAbmesFloatField;
    qrySpecLinesDETAIL_NAME: TAbmesWideStringField;
    qrySpecLinesDETAIL_NO: TAbmesFloatField;
    qrySpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField;
    qrySpecLinesTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qrySpecLinesPAR_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qrySpecLinesDETAIL_TECH_MEASURE_CODE: TAbmesFloatField;
    qrySpecLinesPRODUCT_CODE: TAbmesFloatField;
    qrySpecLinesPRODUCT_NAME: TAbmesWideStringField;
    qrySpecLinesPRODUCT_NO: TAbmesFloatField;
    qrySpecLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qrySpecLinesTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qrySpecLinesPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    qrySpecLinesPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField;
    qrySpecLinesTOTAL_PRODUCT_ACCOUNT_QUANTITY: TAbmesFloatField;
    qrySpecLinesPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qrySpecLinesPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qrySpecLinesPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField;
    qrySpecLinesPRODUCT_SECONDARY_TOTAL_PRICE: TAbmesFloatField;
    qrySpecLinesNOTES: TAbmesWideStringField;
    qrySpecModelVariants: TAbmesSQLQuery;
    qrySpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField;
    qrySpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    qrySpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField;
    qrySpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField;
    qrySpecModelVariantsAUTHORIZATION_DATE: TAbmesSQLTimeStampField;
    qrySpecModelVariantsAUTHORIZATION_TIME: TAbmesSQLTimeStampField;
    qrySpecModelVariantsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySpecModelVariantsCREATE_DATE: TAbmesSQLTimeStampField;
    qrySpecModelVariantsCREATE_TIME: TAbmesSQLTimeStampField;
    qrySpecModelVariantsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySpecModelVariantsCHANGE_DATE: TAbmesSQLTimeStampField;
    qrySpecModelVariantsCHANGE_TIME: TAbmesSQLTimeStampField;
    dsSpecLines: TDataSource;
    qrySpecModelVariantStages: TAbmesSQLQuery;
    qrySpecModelVariantStagesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecModelVariantStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySpecModelVariantStagesSPEC_LINE_CODE: TAbmesFloatField;
    qrySpecModelVariantStagesSPEC_LINE_STAGE_NO: TAbmesFloatField;
    qrySpecModelVariantStagesDEPT_CODE: TAbmesFloatField;
    qrySpecModelVariantStagesDEPT_IDENTIFIER: TAbmesWideStringField;
    qrySpecLinesDETAIL_HAS_DOCUMENTATION: TAbmesFloatField;
    qrySpecLinesPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qrySpecLinesPRODUCT_IS_FOR_TREATMENT_USE: TAbmesFloatField;
    qrySpecLinesPRODUCT_IS_FOR_DIRECT_USE: TAbmesFloatField;
    qrySpecModelVariantsMAIN_DEPT_NAME: TAbmesWideStringField;
    qrySpecModelVariantStagesDEPT_IS_STORE: TAbmesFloatField;
    qrySpecModelVariantStagesDEPT_NAME: TAbmesWideStringField;
    qrySpecCHANGE_BRANCH_CODE: TAbmesFloatField;
    qrySpecificationsWORK_BRANCH_CODE: TAbmesFloatField;
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
    qryInsertSpecLinesNO_1: TAbmesFloatField;
    qryInsertSpecLinesNO_2: TAbmesFloatField;
    qryInsertSpecLinesNO_3: TAbmesFloatField;
    qryInsertSpecLinesNO_4: TAbmesFloatField;
    qryInsertSpecLinesNO_5: TAbmesFloatField;
    qryUpdSpecVersion: TAbmesSQLQuery;
    qryInsSpecVersion: TAbmesSQLQuery;
    dsInsertSpecLines: TDataSource;
    qryInsertSpecLineModelStages: TAbmesSQLQuery;
    qryInsertSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSpecLinesSPEC_LINE_CODE: TAbmesFloatField;
    qryInsertSpecLineModelStagesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSpecLineModelStagesSPEC_LINE_CODE: TAbmesFloatField;
    qryInsertSpecLineModelStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryInsertSpecLineModelStagesSPEC_LINE_STAGE_NO: TAbmesFloatField;
    qryInsertSpecLineModelStagesDEPT_CODE: TAbmesFloatField;
    prvAuthorizedModelVariants: TDataSetProvider;
    qryAuthorizedModelVariants: TAbmesSQLQuery;
    qrySpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    qrySpecificationsAUTHOR_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qrySpecificationsAUTHORIZATION_EMPLOYEE_ABBREV: TAbmesWideStringField;
    prvCLSpec: TDataSetProvider;
    qryCLSpec: TAbmesSQLQuery;
    qryCLSpecSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryCLSpecSPEC_PRODUCT_NAME: TAbmesWideStringField;
    qryCLSpecSPEC_PRODUCT_NO: TAbmesFloatField;
    qryCLSpecSPEC_TYPE_CODE: TAbmesFloatField;
    qryCLSpecWORK_BRANCH_CODE: TAbmesFloatField;
    qryCLSpecMANUFACTURER_COMPANY_CODE: TAbmesFloatField;
    qryCLSpecNOTES: TAbmesWideStringField;
    dsCLSpec: TDataSource;
    qryCLSpecLines: TAbmesSQLQuery;
    qryCLSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryCLSpecLinesSPEC_LINE_CODE: TAbmesFloatField;
    qryCLSpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField;
    qryCLSpecLinesNO_1: TAbmesFloatField;
    qryCLSpecLinesNO_2: TAbmesFloatField;
    qryCLSpecLinesNO_3: TAbmesFloatField;
    qryCLSpecLinesNO_4: TAbmesFloatField;
    qryCLSpecLinesNO_5: TAbmesFloatField;
    qryCLSpecLinesDETAIL_CODE: TAbmesFloatField;
    qryCLSpecLinesDETAIL_NAME: TAbmesWideStringField;
    qryCLSpecLinesDETAIL_NO: TAbmesFloatField;
    qryCLSpecLinesDETAIL_HAS_DOCUMENTATION: TAbmesFloatField;
    qryCLSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryCLSpecLinesTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryCLSpecLinesPAR_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryCLSpecLinesDETAIL_TECH_MEASURE_CODE: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_CODE: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_NAME: TAbmesWideStringField;
    qryCLSpecLinesPRODUCT_NO: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryCLSpecLinesTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField;
    qryCLSpecLinesTOTAL_PRODUCT_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_SECONDARY_TOTAL_PRICE: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_IS_FOR_TREATMENT_USE: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_IS_FOR_DIRECT_USE: TAbmesFloatField;
    qryCLSpecLinesNOTES: TAbmesWideStringField;
    qryCLSpecModelVariants: TAbmesSQLQuery;
    qryCLSpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryCLSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryCLSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField;
    qryCLSpecModelVariantsMAIN_DEPT_NAME: TAbmesWideStringField;
    qryCLSpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryCLSpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField;
    qryCLSpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    dsCLSpecLines: TDataSource;
    qryCLSpecModelVariantStages: TAbmesSQLQuery;
    qryCLSpecModelVariantStagesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryCLSpecModelVariantStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryCLSpecModelVariantStagesSPEC_LINE_CODE: TAbmesFloatField;
    qryCLSpecModelVariantStagesSPEC_LINE_STAGE_NO: TAbmesFloatField;
    qryCLSpecModelVariantStagesDEPT_CODE: TAbmesFloatField;
    qryCLSpecModelVariantStagesDEPT_NAME: TAbmesWideStringField;
    qryCLSpecModelVariantStagesDEPT_IDENTIFIER: TAbmesWideStringField;
    qryCLSpecModelVariantStagesDEPT_IS_STORE: TAbmesFloatField;
    qryCLSpecORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecModelVariantStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    qrySpecModelVariantStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    qrySpecModelVariantStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    qryCLSpecModelVariantStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    qryCLSpecModelVariantStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    qryCLSpecModelVariantStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    qrySpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField;
    qrySpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField;
    qryCLSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField;
    qryCLSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField;
    qryInsertSpecLineModelStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    qryInsertSpecLineModelStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    qryInsertSpecLineModelStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    qrySpecificationsSPEC_DEPTH: TAbmesFloatField;
    qrySpecLinesNO_6: TAbmesFloatField;
    qrySpecLinesNO_7: TAbmesFloatField;
    qrySpecLinesNO_8: TAbmesFloatField;
    qryCLSpecLinesNO_6: TAbmesFloatField;
    qryCLSpecLinesNO_7: TAbmesFloatField;
    qryCLSpecLinesNO_8: TAbmesFloatField;
    qryInsertSpecLinesNO_6: TAbmesFloatField;
    qryInsertSpecLinesNO_7: TAbmesFloatField;
    qryInsertSpecLinesNO_8: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_6: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_7: TAbmesFloatField;
    qryInsertSpecLinesPARENT_NO_8: TAbmesFloatField;
    qrySpecVersion: TAbmesSQLQuery;
    qrySpecVersionSPEC_VERSION_NO: TAbmesFloatField;
    qrySpecModelVariantLines: TAbmesSQLQuery;
    dsSpecModelVariantLines: TDataSource;
    qrySpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField;
    qrySpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    dsCLSpecModelVariantLines: TDataSource;
    qryCLSpecModelVariantLines: TAbmesSQLQuery;
    qryCLSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryCLSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryCLSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField;
    qrySpecLinesIS_IMPORTED: TAbmesFloatField;
    qryCLSpecLinesIS_IMPORTED: TAbmesFloatField;
    qryCLSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField;
    qryCLSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryInsertSpecModelVariantLines: TAbmesSQLQuery;
    dsInsertSpecModelVariantLines: TDataSource;
    qryInsertSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryInsertSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField;
    qryInsertSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryInsertSpecLinesIS_IMPORTED: TAbmesFloatField;
    qryImportedSpecLines: TAbmesSQLQuery;
    qryImportedSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryImportedSpecLinesSPEC_LINE_CODE: TAbmesFloatField;
    qryImportedSpecLinesNO_1: TAbmesFloatField;
    qryImportedSpecLinesNO_2: TAbmesFloatField;
    qryImportedSpecLinesNO_3: TAbmesFloatField;
    qryImportedSpecLinesNO_4: TAbmesFloatField;
    qryImportedSpecLinesNO_5: TAbmesFloatField;
    qryImportedSpecLinesNO_6: TAbmesFloatField;
    qryImportedSpecLinesNO_7: TAbmesFloatField;
    qryImportedSpecLinesNO_8: TAbmesFloatField;
    qryImportedSpecLinesModelVLines: TAbmesSQLQuery;
    dsImportedSpecLines: TDataSource;
    qryImportedSpecLinesModelVLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryImportedSpecLinesModelVLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryImportedSpecLinesModelVLinesSPEC_LINE_CODE: TAbmesFloatField;
    qryImportedSpecLinesModelVLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField;
    qryImportedSpecLinesModelVLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryImportedSpecLinesModelVLinesLAST_STAGE_DEPT_CODE: TAbmesFloatField;
    qryImportedSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryDelImportedSpecLine: TAbmesSQLQuery;
    qryImportedSpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField;
    qryInsSpecLine: TAbmesSQLQuery;
    qryInsSpecLineModelVariantLine: TAbmesSQLQuery;
    qryInsSpecModelVariantStages: TAbmesSQLQuery;
    qrySpecificationsIMPORT_COUNT: TAbmesFloatField;
    qryLastStageInfo: TAbmesSQLQuery;
    qryImportedSpecLinesModelVLinesLAST_STAGE_TOTAL_TREATMENT_WDS: TAbmesFloatField;
    qryLastStageInfoSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryLastStageInfoSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryLastStageInfoSPEC_LINE_CODE: TAbmesFloatField;
    qryLastStageInfoSPEC_LINE_STAGE_NO: TAbmesFloatField;
    qryLastStageInfoTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    qryXSpecLines: TAbmesSQLQuery;
    dsXSpecLines: TDataSource;
    qryXSpecModelVariantLines: TAbmesSQLQuery;
    qryXSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryXSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryXSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField;
    qryXSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField;
    qryXSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryXSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryXSpecLinesSPEC_LINE_CODE: TAbmesFloatField;
    qryXSpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField;
    qryXSpecLinesNO_1: TAbmesFloatField;
    qryXSpecLinesNO_2: TAbmesFloatField;
    qryXSpecLinesNO_3: TAbmesFloatField;
    qryXSpecLinesNO_4: TAbmesFloatField;
    qryXSpecLinesNO_5: TAbmesFloatField;
    qryXSpecLinesNO_6: TAbmesFloatField;
    qryXSpecLinesNO_7: TAbmesFloatField;
    qryXSpecLinesNO_8: TAbmesFloatField;
    qryXSpecLinesDETAIL_CODE: TAbmesFloatField;
    qryXSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryXSpecLinesTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryXSpecLinesPRODUCT_CODE: TAbmesFloatField;
    qryXSpecLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryXSpecLinesNOTES: TAbmesWideStringField;
    qryXSpecLinesIS_IMPORTED: TAbmesFloatField;
    qrySpecLinesIS_IMPORTED_SUBDETAIL: TAbmesFloatField;
    qryCLSpecLinesIS_IMPORTED_SUBDETAIL: TAbmesFloatField;
    qryImportedSpecLinesPAR_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryMaxSpecLineCode: TAbmesSQLQuery;
    qryMaxSpecLineCodeMAX_SPEC_LINE_CODE: TAbmesFloatField;
    qrySpecificationsSPEC_MODEL_VARIANT_COUNT: TAbmesFloatField;
    qryDelSpecLines: TAbmesSQLQuery;
    qryDelSpecModelVariants: TAbmesSQLQuery;
    qryAuthorizedModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryAuthorizedModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryAuthorizedModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    dsSpecModelVariants: TDataSource;
    qrySpecModelVariantTasks: TAbmesSQLQuery;
    qrySpecModelVariantTasksSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecModelVariantTasksSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField;
    qrySpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NAME: TAbmesWideStringField;
    dsSpecModelVariantTasks: TDataSource;
    qrySpecModelVariantTaskDepts: TAbmesSQLQuery;
    qrySpecModelVariantTaskDeptsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField;
    qrySpecModelVariantTaskDeptsDEPT_CODE: TAbmesFloatField;
    qrySpecModelVariantTaskDeptsDEPT_NAME: TAbmesWideStringField;
    qrySpecModelVariantTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField;
    qrySpecificationsAUTHOR_EMPLOYEE_CODE: TAbmesFloatField;
    dsCLSpecModelVariants: TDataSource;
    qryCLSpecModelVariantTasks: TAbmesSQLQuery;
    dsCLSpecModelVariantTasks: TDataSource;
    qryCLSpecModelVariantTaskDepts: TAbmesSQLQuery;
    qryUpdSpecLineNosToPositive: TAbmesSQLQuery;
    qryReplaceProductInSpecs: TAbmesSQLQuery;
    qryCLSpecModelVariantsORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField;
    qryCLSpecLinesORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField;
    qryCLSpecModelVariantLinesORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecSTRUCT_CHANGE_CLEAR_EMPL_CODE: TAbmesFloatField;
    qrySpecSTRUCT_CHANGE_CLEAR_DATE: TAbmesSQLTimeStampField;
    qrySpecSTRUCT_CHANGE_CLEAR_TIME: TAbmesSQLTimeStampField;
    qrySpecLinesSTRUCT_CHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySpecLinesSTRUCT_CHANGE_DATE: TAbmesSQLTimeStampField;
    qrySpecLinesSTRUCT_CHANGE_TIME: TAbmesSQLTimeStampField;
    qrySpecLinesIS_STRUCT_CHANGED: TAbmesFloatField;
    prvXSpecLines: TDataSetProvider;
    cdsXSpecLines: TAbmesClientDataSet;
    cdsXSpecModelVariantLines: TAbmesClientDataSet;
    cdsXSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsXSpecLinesSPEC_LINE_CODE: TAbmesFloatField;
    cdsXSpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField;
    cdsXSpecLinesNO_1: TAbmesFloatField;
    cdsXSpecLinesNO_2: TAbmesFloatField;
    cdsXSpecLinesNO_3: TAbmesFloatField;
    cdsXSpecLinesNO_4: TAbmesFloatField;
    cdsXSpecLinesNO_5: TAbmesFloatField;
    cdsXSpecLinesNO_6: TAbmesFloatField;
    cdsXSpecLinesNO_7: TAbmesFloatField;
    cdsXSpecLinesNO_8: TAbmesFloatField;
    cdsXSpecLinesDETAIL_CODE: TAbmesFloatField;
    cdsXSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsXSpecLinesTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsXSpecLinesPRODUCT_CODE: TAbmesFloatField;
    cdsXSpecLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsXSpecLinesNOTES: TAbmesWideStringField;
    cdsXSpecLinesIS_IMPORTED: TAbmesFloatField;
    cdsXSpecLinesqryXSpecModelVariantLines: TDataSetField;
    cdsXSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsXSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsXSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField;
    cdsXSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsXSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    prvImportedSpecLines: TDataSetProvider;
    cdsImportedSpecLines: TAbmesClientDataSet;
    cdsImportedSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsImportedSpecLinesSPEC_LINE_CODE: TAbmesFloatField;
    cdsImportedSpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField;
    cdsImportedSpecLinesNO_1: TAbmesFloatField;
    cdsImportedSpecLinesNO_2: TAbmesFloatField;
    cdsImportedSpecLinesNO_3: TAbmesFloatField;
    cdsImportedSpecLinesNO_4: TAbmesFloatField;
    cdsImportedSpecLinesNO_5: TAbmesFloatField;
    cdsImportedSpecLinesNO_6: TAbmesFloatField;
    cdsImportedSpecLinesNO_7: TAbmesFloatField;
    cdsImportedSpecLinesNO_8: TAbmesFloatField;
    cdsImportedSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsImportedSpecLinesPAR_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsImportedSpecLinesqryImportedSpecLinesModelVLines: TDataSetField;
    cdsImportedSpecLinesModelVariantLines: TAbmesClientDataSet;
    cdsImportedSpecLinesModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsImportedSpecLinesModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsImportedSpecLinesModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField;
    cdsImportedSpecLinesModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsImportedSpecLinesModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsImportedSpecLinesModelVariantLinesLAST_STAGE_DEPT_CODE: TAbmesFloatField;
    cdsImportedSpecLinesModelVariantLinesLAST_STAGE_TOTAL_TREATMENT_WDS: TAbmesFloatField;
    dsSpecModelVariantStages: TDataSource;
    qrySMVSOperations: TAbmesSQLQuery;
    qrySMVSOperationsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySMVSOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySMVSOperationsSPEC_LINE_CODE: TAbmesFloatField;
    qrySMVSOperationsSMVS_OPERATION_CODE: TAbmesFloatField;
    qrySMVSOperationsSMVS_OPERATION_NO: TAbmesFloatField;
    qrySMVSOperationsPROFESSION_CODE: TAbmesFloatField;
    qrySMVSOperationsEFFORT_COEF: TAbmesFloatField;
    dsCLSpecModelVariantStages: TDataSource;
    qryCLSMVSOperations: TAbmesSQLQuery;
    qryCLSpecModelVariantStagesORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField;
    dsInsertSpecModelVariantStages: TDataSource;
    qryInsertSMVSOperations: TAbmesSQLQuery;
    prvAllSMVSOperations: TDataSetProvider;
    qryAllSMVSOperations: TAbmesSQLQuery;
    cdsAllSMVSOperations: TAbmesClientDataSet;
    qrySpecDoc: TAbmesSQLQuery;
    prvSpecDoc: TDataSetProvider;
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
    qryInsertSpecLinesNO_AS_TEXT: TAbmesWideStringField;
    qryInsertSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField;
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
    qrySpecLinesNO_9: TAbmesFloatField;
    qrySpecLinesNO_10: TAbmesFloatField;
    qrySpecLinesNO_11: TAbmesFloatField;
    qrySpecLinesNO_12: TAbmesFloatField;
    qrySpecLinesNO_13: TAbmesFloatField;
    qrySpecLinesNO_14: TAbmesFloatField;
    qrySpecLinesNO_15: TAbmesFloatField;
    qrySpecLinesNO_16: TAbmesFloatField;
    qrySpecLinesNO_17: TAbmesFloatField;
    qrySpecLinesNO_18: TAbmesFloatField;
    qrySpecLinesNO_19: TAbmesFloatField;
    qrySpecLinesNO_20: TAbmesFloatField;
    qrySpecLinesNO_21: TAbmesFloatField;
    qrySpecLinesNO_22: TAbmesFloatField;
    qrySpecLinesNO_23: TAbmesFloatField;
    qrySpecLinesNO_24: TAbmesFloatField;
    qrySpecLinesNO_25: TAbmesFloatField;
    qrySpecLinesNO_AS_TEXT: TAbmesWideStringField;
    qrySpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryCLSpecLinesNO_9: TAbmesFloatField;
    qryCLSpecLinesNO_10: TAbmesFloatField;
    qryCLSpecLinesNO_11: TAbmesFloatField;
    qryCLSpecLinesNO_12: TAbmesFloatField;
    qryCLSpecLinesNO_13: TAbmesFloatField;
    qryCLSpecLinesNO_14: TAbmesFloatField;
    qryCLSpecLinesNO_15: TAbmesFloatField;
    qryCLSpecLinesNO_16: TAbmesFloatField;
    qryCLSpecLinesNO_17: TAbmesFloatField;
    qryCLSpecLinesNO_18: TAbmesFloatField;
    qryCLSpecLinesNO_19: TAbmesFloatField;
    qryCLSpecLinesNO_20: TAbmesFloatField;
    qryCLSpecLinesNO_21: TAbmesFloatField;
    qryCLSpecLinesNO_22: TAbmesFloatField;
    qryCLSpecLinesNO_23: TAbmesFloatField;
    qryCLSpecLinesNO_24: TAbmesFloatField;
    qryCLSpecLinesNO_25: TAbmesFloatField;
    qryCLSpecLinesNO_AS_TEXT: TAbmesWideStringField;
    qryCLSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryXSpecLinesNO_9: TAbmesFloatField;
    qryXSpecLinesNO_10: TAbmesFloatField;
    qryXSpecLinesNO_11: TAbmesFloatField;
    qryXSpecLinesNO_12: TAbmesFloatField;
    qryXSpecLinesNO_13: TAbmesFloatField;
    qryXSpecLinesNO_14: TAbmesFloatField;
    qryXSpecLinesNO_15: TAbmesFloatField;
    qryXSpecLinesNO_16: TAbmesFloatField;
    qryXSpecLinesNO_17: TAbmesFloatField;
    qryXSpecLinesNO_18: TAbmesFloatField;
    qryXSpecLinesNO_19: TAbmesFloatField;
    qryXSpecLinesNO_20: TAbmesFloatField;
    qryXSpecLinesNO_21: TAbmesFloatField;
    qryXSpecLinesNO_22: TAbmesFloatField;
    qryXSpecLinesNO_23: TAbmesFloatField;
    qryXSpecLinesNO_24: TAbmesFloatField;
    qryXSpecLinesNO_25: TAbmesFloatField;
    qryXSpecLinesNO_AS_TEXT: TAbmesWideStringField;
    qryXSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsXSpecLinesNO_9: TAbmesFloatField;
    cdsXSpecLinesNO_10: TAbmesFloatField;
    cdsXSpecLinesNO_11: TAbmesFloatField;
    cdsXSpecLinesNO_12: TAbmesFloatField;
    cdsXSpecLinesNO_13: TAbmesFloatField;
    cdsXSpecLinesNO_14: TAbmesFloatField;
    cdsXSpecLinesNO_15: TAbmesFloatField;
    cdsXSpecLinesNO_16: TAbmesFloatField;
    cdsXSpecLinesNO_17: TAbmesFloatField;
    cdsXSpecLinesNO_18: TAbmesFloatField;
    cdsXSpecLinesNO_19: TAbmesFloatField;
    cdsXSpecLinesNO_20: TAbmesFloatField;
    cdsXSpecLinesNO_21: TAbmesFloatField;
    cdsXSpecLinesNO_22: TAbmesFloatField;
    cdsXSpecLinesNO_23: TAbmesFloatField;
    cdsXSpecLinesNO_24: TAbmesFloatField;
    cdsXSpecLinesNO_25: TAbmesFloatField;
    cdsXSpecLinesNO_AS_TEXT: TAbmesWideStringField;
    cdsXSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryImportedSpecLinesNO_9: TAbmesFloatField;
    qryImportedSpecLinesNO_10: TAbmesFloatField;
    qryImportedSpecLinesNO_11: TAbmesFloatField;
    qryImportedSpecLinesNO_12: TAbmesFloatField;
    qryImportedSpecLinesNO_13: TAbmesFloatField;
    qryImportedSpecLinesNO_14: TAbmesFloatField;
    qryImportedSpecLinesNO_15: TAbmesFloatField;
    qryImportedSpecLinesNO_16: TAbmesFloatField;
    qryImportedSpecLinesNO_17: TAbmesFloatField;
    qryImportedSpecLinesNO_18: TAbmesFloatField;
    qryImportedSpecLinesNO_19: TAbmesFloatField;
    qryImportedSpecLinesNO_20: TAbmesFloatField;
    qryImportedSpecLinesNO_21: TAbmesFloatField;
    qryImportedSpecLinesNO_22: TAbmesFloatField;
    qryImportedSpecLinesNO_23: TAbmesFloatField;
    qryImportedSpecLinesNO_24: TAbmesFloatField;
    qryImportedSpecLinesNO_25: TAbmesFloatField;
    cdsImportedSpecLinesNO_9: TAbmesFloatField;
    cdsImportedSpecLinesNO_10: TAbmesFloatField;
    cdsImportedSpecLinesNO_11: TAbmesFloatField;
    cdsImportedSpecLinesNO_12: TAbmesFloatField;
    cdsImportedSpecLinesNO_13: TAbmesFloatField;
    cdsImportedSpecLinesNO_14: TAbmesFloatField;
    cdsImportedSpecLinesNO_15: TAbmesFloatField;
    cdsImportedSpecLinesNO_16: TAbmesFloatField;
    cdsImportedSpecLinesNO_17: TAbmesFloatField;
    cdsImportedSpecLinesNO_18: TAbmesFloatField;
    cdsImportedSpecLinesNO_19: TAbmesFloatField;
    cdsImportedSpecLinesNO_20: TAbmesFloatField;
    cdsImportedSpecLinesNO_21: TAbmesFloatField;
    cdsImportedSpecLinesNO_22: TAbmesFloatField;
    cdsImportedSpecLinesNO_23: TAbmesFloatField;
    cdsImportedSpecLinesNO_24: TAbmesFloatField;
    cdsImportedSpecLinesNO_25: TAbmesFloatField;
    qryFixNoAsFormatedText: TAbmesSQLQuery;
    qrySpecLineExists: TAbmesSQLQuery;
    qrySpecLineExistsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecLineExistsSPEC_LINE_CODE: TAbmesFloatField;
    prvAllStages: TDataSetProvider;
    qryAllStages: TAbmesSQLQuery;
    cdsAllStages: TAbmesClientDataSet;
    qryAllStagesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryAllStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryAllStagesSPEC_LINE_CODE: TAbmesFloatField;
    qryAllStagesSPEC_LINE_STAGE_NO: TAbmesFloatField;
    qryAllStagesDEPT_CODE: TAbmesFloatField;
    qryAllStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    qryAllStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    qryAllStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    cdsAllStagesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsAllStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsAllStagesSPEC_LINE_CODE: TAbmesFloatField;
    cdsAllStagesSPEC_LINE_STAGE_NO: TAbmesFloatField;
    cdsAllStagesDEPT_CODE: TAbmesFloatField;
    cdsAllStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsAllStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    cdsAllStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    qryAllStagesDEPT_NAME: TAbmesWideStringField;
    qryAllStagesDEPT_IDENTIFIER: TAbmesWideStringField;
    qryAllStagesDEPT_IS_STORE: TAbmesFloatField;
    cdsAllStagesDEPT_NAME: TAbmesWideStringField;
    cdsAllStagesDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsAllStagesDEPT_IS_STORE: TAbmesFloatField;
    qryInsertSpecLineModelStagesDEPT_NAME: TAbmesWideStringField;
    qryInsertSpecLineModelStagesDEPT_IDENTIFIER: TAbmesWideStringField;
    qryInsertSpecLineModelStagesDEPT_IS_STORE: TAbmesFloatField;
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
    qryImportedSpecLinesModelVLinesPAR_FIRST_STAGE_TREATMENT_WDS: TAbmesFloatField;
    cdsImportedSpecLinesModelVariantLinesPAR_FIRST_STAGE_TREATMENT_WDS: TAbmesFloatField;
    qryInsertSpecLineModelStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryAllStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsAllStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    qrySpecModelVariantStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryCLSpecModelVariantStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    qrySpecModelVariantStagesDOC_BRANCH_CODE: TAbmesFloatField;
    qrySpecModelVariantStagesDOC_CODE: TAbmesFloatField;
    qryCLSpecModelVariantStagesDOC_BRANCH_CODE: TAbmesFloatField;
    qryCLSpecModelVariantStagesDOC_CODE: TAbmesFloatField;
    qrySpecModelVariantStagesHAS_DOCUMENTATION: TAbmesFloatField;
    qryCLSpecModelVariantStagesHAS_DOCUMENTATION: TAbmesFloatField;
    qryInsertSpecLineModelStagesDOC_BRANCH_CODE: TAbmesFloatField;
    qryInsertSpecLineModelStagesDOC_CODE: TAbmesFloatField;
    qryInsertSpecLineModelStagesHAS_DOCUMENTATION: TAbmesFloatField;
    qryAllStagesDOC_BRANCH_CODE: TAbmesFloatField;
    qryAllStagesDOC_CODE: TAbmesFloatField;
    qryAllStagesHAS_DOCUMENTATION: TAbmesFloatField;
    cdsAllStagesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsAllStagesDOC_CODE: TAbmesFloatField;
    cdsAllStagesHAS_DOCUMENTATION: TAbmesFloatField;
    qrySMVSOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qrySMVSOperationsDEPT_CODE: TAbmesFloatField;
    qrySMVSOperationsDEPT_NAME: TAbmesWideStringField;
    qrySMVSOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    qrySMVSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    qrySMVSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    qrySMVSOperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    qrySMVSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    qrySMVSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qrySMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qrySMVSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qrySMVSOperationsNOTES: TAbmesWideStringField;
    qryInsertSMVSOperationsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryInsertSMVSOperationsSPEC_LINE_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsSMVS_OPERATION_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsSMVS_OPERATION_NO: TAbmesFloatField;
    qryInsertSMVSOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryInsertSMVSOperationsDEPT_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsDEPT_NAME: TAbmesWideStringField;
    qryInsertSMVSOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryInsertSMVSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    qryInsertSMVSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    qryInsertSMVSOperationsPROFESSION_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsEFFORT_COEF: TAbmesFloatField;
    qryInsertSMVSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    qryInsertSMVSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsNOTES: TAbmesWideStringField;
    qryCLSMVSOperationsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryCLSMVSOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryCLSMVSOperationsSPEC_LINE_CODE: TAbmesFloatField;
    qryCLSMVSOperationsSMVS_OPERATION_CODE: TAbmesFloatField;
    qryCLSMVSOperationsSMVS_OPERATION_NO: TAbmesFloatField;
    qryCLSMVSOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryCLSMVSOperationsDEPT_CODE: TAbmesFloatField;
    qryCLSMVSOperationsDEPT_NAME: TAbmesWideStringField;
    qryCLSMVSOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryCLSMVSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    qryCLSMVSOperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    qryCLSMVSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    qryCLSMVSOperationsPROFESSION_CODE: TAbmesFloatField;
    qryCLSMVSOperationsEFFORT_COEF: TAbmesFloatField;
    qryCLSMVSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    qryCLSMVSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryCLSMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryCLSMVSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryCLSMVSOperationsNOTES: TAbmesWideStringField;
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
    cdsAllSMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsNOTES: TAbmesWideStringField;
    qrySMVSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qrySMVSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    qrySMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qrySMVSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    qrySMVSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qrySMVSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryInsertSMVSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryInsertSMVSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryInsertSMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryInsertSMVSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryInsertSMVSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryInsertSMVSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryCLSMVSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryCLSMVSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryCLSMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryCLSMVSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryCLSMVSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    qryCLSMVSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsAllSMVSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsAllSMVSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsAllSMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsAllSMVSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsAllSMVSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsAllSMVSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    qryInsertSMVSOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsDOC_CODE: TAbmesFloatField;
    qrySMVSOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    qrySMVSOperationsDOC_CODE: TAbmesFloatField;
    qryCLSMVSOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    qryCLSMVSOperationsDOC_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsDOC_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    qrySMVSOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    qryCLSMVSOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    cdsAllSMVSOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    qryInsertSMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    qrySMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    qryCLSMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    prvSMVSTypes: TDataSetProvider;
    qrySMVSTypes: TAbmesSQLQuery;
    qrySMVSTypesSMVS_TYPE_CODE: TAbmesFloatField;
    qrySMVSTypesSMVS_TYPE_NAME: TAbmesWideStringField;
    qryInsertSpecLineModelStagesSMVS_TYPE_CODE: TAbmesFloatField;
    qrySpecModelVariantStagesSMVS_TYPE_CODE: TAbmesFloatField;
    qryCLSpecModelVariantStagesSMVS_TYPE_CODE: TAbmesFloatField;
    qryAllStagesSMVS_TYPE_CODE: TAbmesFloatField;
    cdsAllStagesSMVS_TYPE_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    qrySMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    qryCLSMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryAllSMVSOperationsSPEC_LINE_CODE: TAbmesFloatField;
    qryAllSMVSOperationsSMVS_OPERATION_CODE: TAbmesFloatField;
    qryAllSMVSOperationsSMVS_OPERATION_NO: TAbmesFloatField;
    qryAllSMVSOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryAllSMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    qryAllSMVSOperationsDEPT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsDEPT_NAME: TAbmesWideStringField;
    qryAllSMVSOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryAllSMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
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
    qryInsertSpecLineModelStagesOPERATION_COUNT: TAbmesFloatField;
    qrySpecModelVariantStagesOPERATION_COUNT: TAbmesFloatField;
    qryCLSpecModelVariantStagesOPERATION_COUNT: TAbmesFloatField;
    qryAllStagesOPERATION_COUNT: TAbmesFloatField;
    cdsAllStagesOPERATION_COUNT: TAbmesFloatField;
    qryXSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField;
    cdsXSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField;
    qryInsertSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField;
    qrySpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField;
    qryCLSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField;
    qryInsertSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qryInsertSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qrySMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qrySMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qryCLSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qryCLSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qryAllSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qryAllSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsAllSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsAllSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qrySpecModelVariantsAUTHORIZATION_OF_OPERATIONS: TAbmesFloatField;
    qryInsertSpecLineModelStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qrySpecModelVariantStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qrySMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qryCLSpecModelVariantStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qryCLSMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qryAllSMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qryAllStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    cdsAllStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qryCheckAuthorizedStages: TAbmesSQLQuery;
    qryCheckAuthorizedStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryCheckAuthorizedStagesNO_AS_TEXT: TAbmesWideStringField;
    qryInsertSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField;
    qrySpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField;
    qryCLSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField;
    qryXSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField;
    cdsXSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField;
    qryImportedSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField;
    cdsImportedSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField;
    qryInsertSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    qryInsertSMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    qrySMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    qrySMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    qryCLSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    qryCLSMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    qryAllSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    qryAllSMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsAllSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    cdsAllSMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    qryNullModelSpecVersion: TAbmesSQLQuery;
    qryInsertSMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    qrySMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    qryCLSMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    qrySMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    qryCLSMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    qryAllSMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    cdsAllSMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    qrySpecCREATE_LIKE: TAbmesFloatField;
    qryCLSpecModelVariantTasksORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField;
    qryCLSpecModelVariantTasksSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryCLSpecModelVariantTasksSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryCLSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField;
    qryCLSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NAME: TAbmesWideStringField;
    qryCLSpecModelVariantTaskDeptsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryCLSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryCLSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField;
    qryCLSpecModelVariantTaskDeptsDEPT_CODE: TAbmesFloatField;
    qryCLSpecModelVariantTaskDeptsDEPT_NAME: TAbmesWideStringField;
    qryCLSpecModelVariantTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryInsertSpecLinesDETAIL_IS_INACTIVE: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_IS_INACTIVE: TAbmesFloatField;
    qrySpecLinesDETAIL_IS_INACTIVE: TAbmesFloatField;
    qrySpecLinesPRODUCT_IS_INACTIVE: TAbmesFloatField;
    qryCLSpecLinesDETAIL_IS_INACTIVE: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_IS_INACTIVE: TAbmesFloatField;
    qrySpecDocSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecDocSPEC_LINE_CODE: TAbmesFloatField;
    qrySpecDocDOC_ITEM_CODE: TAbmesFloatField;
    qrySpecDocPARENT_SPEC_LINE_CODE: TAbmesFloatField;
    qrySpecDocNO_AS_TEXT: TAbmesWideStringField;
    qrySpecDocNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qrySpecDocDETAIL_CODE: TAbmesFloatField;
    qrySpecDocDETAIL_NAME: TAbmesWideStringField;
    qrySpecDocDOC_ITEM_NAME: TAbmesWideStringField;
    qrySpecDocDOC_ITEM_TYPE_CODE: TAbmesFloatField;
    qrySpecDocDOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    qrySpecDocFILE_NAME: TAbmesWideStringField;
    qrySpecDocRELATIVE_PATH: TAbmesWideStringField;
    qrySpecDocDOC_BRANCH_CODE: TAbmesFloatField;
    qrySpecDocDOC_CODE: TAbmesFloatField;
    qryUnauthorizeWrongSpecModels: TAbmesSQLQuery;
    qryInsertSpecLineModelStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    qrySpecModelVariantStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    qryCLSpecModelVariantStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    qryAllStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    cdsAllStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    qrySMVSOperationsD_HOUR_PRICE: TAbmesFloatField;
    qryInsertSMVSOperationsD_HOUR_PRICE: TAbmesFloatField;
    qryCLSMVSOperationsD_HOUR_PRICE: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_SINGLE_PRICE: TAbmesFloatField;
    qrySpecLinesPRODUCT_SINGLE_PRICE: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_SINGLE_PRICE: TAbmesFloatField;
    qrySpecTECH_MEASURE_CODE: TAbmesFloatField;
    qryAllSMVSOperationsD_HOUR_PRICE: TAbmesFloatField;
    cdsAllSMVSOperationsD_HOUR_PRICE: TAbmesFloatField;
    qrySpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField;
    qryInsertSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField;
    qryCLSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField;
    qryXSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField;
    cdsXSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField;
    prvDSSpec: TDataSetProvider;
    qryDSSpec: TAbmesSQLQuery;
    qryDSSpecSPEC_PRODUCT_CODE: TAbmesFloatField;
    dsDSSpec: TDataSource;
    qryDSSpecLines: TAbmesSQLQuery;
    dsDSSpecLines: TDataSource;
    qryDSSpecModelVariantLines: TAbmesSQLQuery;
    qryDSSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryDSSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField;
    qryDSSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryDSSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField;
    dsDSSpecModelVariantLines: TDataSource;
    qryDSSpecModel: TAbmesSQLQuery;
    qryDSSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryDSSpecLinesSPEC_LINE_CODE: TAbmesFloatField;
    qryDSSpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField;
    qryDSSpecLinesNO_AS_TEXT: TAbmesWideStringField;
    qryDSSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qryDSSpecLinesDETAIL_CODE: TAbmesFloatField;
    qryDSSpecLinesDETAIL_NAME: TAbmesWideStringField;
    qryDSSpecLinesDETAIL_NO: TAbmesFloatField;
    qryDSSpecLinesPRODUCT_CODE: TAbmesFloatField;
    qryDSSpecLinesPRODUCT_NAME: TAbmesWideStringField;
    qryDSSpecLinesPRODUCT_NO: TAbmesFloatField;
    qryDSSpecLinesLEVEL_NO: TAbmesFloatField;
    qryDSSpecLinesDOC_BRANCH_CODE: TAbmesFloatField;
    qryDSSpecLinesDOC_CODE: TAbmesFloatField;
    qryDSSpecLinesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryDSSpecLinesDOC_IS_COMPLETE: TAbmesFloatField;
    qryDSSpecLinesACTIVE_DI_COUNT: TAbmesFloatField;
    qryDSSpecLinesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryDSSpecModelVariants: TAbmesSQLQuery;
    qryDSSpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryDSSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryDSSpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    qryDSSpecModelITEM_CODE: TAbmesFloatField;
    qryDSSpecModelPARENT_ITEM_CODE: TAbmesFloatField;
    qryDSSpecModelITEM_TYPE_CODE: TAbmesFloatField;
    qryDSSpecModelDEPT_CODE: TAbmesFloatField;
    qryDSSpecModelDEPT_IDENTIFIER: TAbmesWideStringField;
    qryDSSpecModelMODEL_VARIANT_QUANTITIES: TAbmesWideStringField;
    qryDSSpecModelSTAGE_NO: TAbmesFloatField;
    qryDSSpecModelWORKDAYS: TAbmesWideStringField;
    qryDSSpecModelOPERATION_NO: TAbmesFloatField;
    qryDSSpecModelOPERATION_HAS_SPECIAL_CONTROL: TAbmesFloatField;
    qryDSSpecModelOPERATION_HOUR_TECH_QUANTITIES: TAbmesWideStringField;
    qryDSSpecModelDOC_BRANCH_CODE: TAbmesFloatField;
    qryDSSpecModelDOC_CODE: TAbmesFloatField;
    qryDSSpecModelDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryDSSpecModelDOC_IS_COMPLETE: TAbmesFloatField;
    qryDSSpecModelACTIVE_DI_COUNT: TAbmesFloatField;
    qryDSSpecModelUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryDSSpecLinesDETAIL_HAS_SPECIFICATION: TAbmesFloatField;
    qryDSSpecLinesPRODUCT_HAS_SPECIFICATION: TAbmesFloatField;
    qryDSSpecLinesIS_IMPORTED: TAbmesFloatField;
    qryInsertSpecLinesIS_COMPLETE: TAbmesFloatField;
    qrySpecLinesIS_COMPLETE: TAbmesFloatField;
    qryCLSpecLinesIS_COMPLETE: TAbmesFloatField;
    qryXSpecLinesIS_COMPLETE: TAbmesFloatField;
    cdsXSpecLinesIS_COMPLETE: TAbmesFloatField;
    qryInsertSpecLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField;
    qrySpecLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField;
    qryCLSpecLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField;
    qrySMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField;
    qryInsertSMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField;
    qryCLSMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField;
    qryAllSMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField;
    cdsAllSMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField;
    qryAllDSSpecModels: TAbmesSQLQuery;
    prvAllDSSpecModels: TDataSetProvider;
    cdsAllDSSpecModels: TAbmesClientDataSet;
    qryAllDSSpecModelsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryAllDSSpecModelsSPEC_LINE_CODE: TAbmesFloatField;
    qryAllDSSpecModelsITEM_CODE: TAbmesFloatField;
    qryAllDSSpecModelsPARENT_ITEM_CODE: TAbmesFloatField;
    qryAllDSSpecModelsITEM_TYPE_CODE: TAbmesFloatField;
    qryAllDSSpecModelsDEPT_CODE: TAbmesFloatField;
    qryAllDSSpecModelsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryAllDSSpecModelsMODEL_VARIANT_QUANTITIES: TAbmesWideStringField;
    qryAllDSSpecModelsSTAGE_NO: TAbmesFloatField;
    qryAllDSSpecModelsWORKDAYS: TAbmesWideStringField;
    qryAllDSSpecModelsOPERATION_NO: TAbmesFloatField;
    qryAllDSSpecModelsOPERATION_HAS_SPECIAL_CONTROL: TAbmesFloatField;
    qryAllDSSpecModelsOPERATION_HOUR_TECH_QUANTITIES: TAbmesWideStringField;
    qryAllDSSpecModelsDOC_BRANCH_CODE: TAbmesFloatField;
    qryAllDSSpecModelsDOC_CODE: TAbmesFloatField;
    qryAllDSSpecModelsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllDSSpecModelsDOC_IS_COMPLETE: TAbmesFloatField;
    qryAllDSSpecModelsACTIVE_DI_COUNT: TAbmesFloatField;
    qryAllDSSpecModelsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsAllDSSpecModelsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsAllDSSpecModelsSPEC_LINE_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsITEM_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsPARENT_ITEM_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsITEM_TYPE_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsDEPT_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsAllDSSpecModelsMODEL_VARIANT_QUANTITIES: TAbmesWideStringField;
    cdsAllDSSpecModelsSTAGE_NO: TAbmesFloatField;
    cdsAllDSSpecModelsWORKDAYS: TAbmesWideStringField;
    cdsAllDSSpecModelsOPERATION_NO: TAbmesFloatField;
    cdsAllDSSpecModelsOPERATION_HAS_SPECIAL_CONTROL: TAbmesFloatField;
    cdsAllDSSpecModelsOPERATION_HOUR_TECH_QUANTITIES: TAbmesWideStringField;
    cdsAllDSSpecModelsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsDOC_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsDOC_IS_COMPLETE: TAbmesFloatField;
    cdsAllDSSpecModelsACTIVE_DI_COUNT: TAbmesFloatField;
    cdsAllDSSpecModelsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryDSSpecLinesIS_IMPORTED_SUBDETAIL: TAbmesFloatField;
    qryDSSpecLinesUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryDSSpecModelUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryAllDSSpecModelsUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsAllDSSpecModelsUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryDSSpecModelAPPROVED_DI_COUNT: TAbmesFloatField;
    qryAllDSSpecModelsAPPROVED_DI_COUNT: TAbmesFloatField;
    cdsAllDSSpecModelsAPPROVED_DI_COUNT: TAbmesFloatField;
    qryDSSpecModelVariantLinesMAIN_DEPT_CODE: TAbmesFloatField;
    qryInsertSpecLineModelStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryInsertSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qrySpecModelVariantStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qrySMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryCLSpecModelVariantStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryCLSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryAllStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsAllStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryAllSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsAllSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryInsertSpecLineModelStagesDOC_IS_COMPLETE: TAbmesFloatField;
    qryInsertSMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    qrySpecModelVariantStagesDOC_IS_COMPLETE: TAbmesFloatField;
    qrySMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    qryCLSpecModelVariantStagesDOC_IS_COMPLETE: TAbmesFloatField;
    qryCLSMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    qryAllSMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    cdsAllSMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    qryAllStagesDOC_IS_COMPLETE: TAbmesFloatField;
    cdsAllStagesDOC_IS_COMPLETE: TAbmesFloatField;
    qryInsertSpecLineModelStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qrySpecModelVariantStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qrySMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryCLSpecModelVariantStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryCLSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryDSSpecModelOPERATION_TYPE_CODE: TAbmesFloatField;
    qryAllDSSpecModelsOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsOPERATION_TYPE_CODE: TAbmesFloatField;
    prvSpecStructStatus: TDataSetProvider;
    qrySpecStructStatus: TAbmesSQLQuery;
    qrySpecStructStatusLEVEL_NO: TAbmesFloatField;
    qrySpecStructStatusLEVEL_IS_COMPLETE: TAbmesFloatField;
    qrySpecStructStatusMAX_LEVEL_NO: TAbmesFloatField;
    qrySpecStructStatusHAS_MISSING_CHILDREN: TAbmesFloatField;
    qryDSSpecLinesHAS_CHILDREN: TAbmesFloatField;
    qryDSSpecLinesIS_LAST_CHILD: TAbmesFloatField;
    qryDSSpecModelLEVEL_NO: TAbmesFloatField;
    qryDSSpecModelHAS_CHILDREN: TAbmesFloatField;
    qryDSSpecModelIS_LAST_CHILD: TAbmesFloatField;
    qryAllDSSpecModelsLEVEL_NO: TAbmesFloatField;
    qryAllDSSpecModelsHAS_CHILDREN: TAbmesFloatField;
    qryAllDSSpecModelsIS_LAST_CHILD: TAbmesFloatField;
    cdsAllDSSpecModelsLEVEL_NO: TAbmesFloatField;
    cdsAllDSSpecModelsHAS_CHILDREN: TAbmesFloatField;
    cdsAllDSSpecModelsIS_LAST_CHILD: TAbmesFloatField;
    qryDSSpecModelORDER_NO: TAbmesFloatField;
    qryAllDSSpecModelsORDER_NO: TAbmesFloatField;
    cdsAllDSSpecModelsORDER_NO: TAbmesFloatField;
    qryDSSpecLinesIS_COMPLETE: TAbmesFloatField;
    qryDSSpecSPEC_PRODUCT_NAME: TAbmesWideStringField;
    qryDSSpecAUTHOR_EMPLOYEE_CODE: TAbmesFloatField;
    qryDSSpecWORK_BRANCH_CODE: TAbmesFloatField;
    qryCheckOperationDocs: TAbmesSQLQuery;
    qryCheckOperationDocsWRONG_OPERATION_DOC_EXISTS: TAbmesFloatField;
    qryInsertSMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryInsertSMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField;
    qryInsertSpecLineModelStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryInsertSpecLineModelStagesDEPT_END_DATE: TAbmesSQLTimeStampField;
    qrySpecModelVariantStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qrySpecModelVariantStagesDEPT_END_DATE: TAbmesSQLTimeStampField;
    qrySMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qrySMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField;
    qrySpecModelVariantsMAIN_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qrySpecModelVariantsMAIN_DEPT_END_DATE: TAbmesSQLTimeStampField;
    qryCLSpecModelVariantStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryCLSpecModelVariantStagesDEPT_END_DATE: TAbmesSQLTimeStampField;
    qryCLSMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryCLSMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField;
    qryCLSpecModelVariantsMAIN_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryCLSpecModelVariantsMAIN_DEPT_END_DATE: TAbmesSQLTimeStampField;
    qryAllSMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryAllSMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsAllSMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsAllSMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField;
    qryAllStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryAllStagesDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsAllStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsAllStagesDEPT_END_DATE: TAbmesSQLTimeStampField;
    qrySpecMANUFACTURER_NAME: TAbmesWideStringField;
    qrySpecInsertionsCount: TAbmesSQLQuery;
    qrySpecInsertionsCountSPEC_INSERTIONS_COUNT: TAbmesFloatField;
    qrySpecSPEC_STATE_CODE: TAbmesFloatField;
    qrySpecSPEC_PRODUCT_PARENT_CODE: TAbmesFloatField;
    qrySpecModelVariantsMAX_TOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    qrySpecificationsSPEC_STATE_CODE: TAbmesFloatField;
    qrySpecificationsSPEC_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qrySpecModelVariantsIS_CHANGED: TAbmesFloatField;
    qrySpecType: TAbmesSQLQuery;
    qrySpecTypeSPEC_TYPE_CODE: TAbmesFloatField;
    qrySpecCOMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryCalcSpecTotalTreatmentWorkdays: TAbmesSQLQuery;
    qryAllSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryInsertSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qrySMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qrySMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qrySMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryCLSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryCLSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryCLSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    prvToolRequirements: TDataSetProvider;
    qryToolRequirements: TAbmesSQLQuery;
    qryToolRequirementsTOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryToolRequirementsTOOL_REQUIREMENT_NAME: TAbmesWideStringField;
    qryDSSpecModelDEPT_PRODUCT_CODE: TAbmesFloatField;
    qryDSSpecModelPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryDSSpecModelSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryDSSpecModelTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryDSSpecModelPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryDSSpecModelSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryDSSpecModelTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryDSSpecModelDEPT_PRODUCT_HAS_SPEC: TAbmesFloatField;
    qryDSSpecModelPROGRAM_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField;
    qryDSSpecModelSPECIFIC_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField;
    qryDSSpecModelTYPICAL_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField;
    qryAllDSSpecModelsDEPT_PRODUCT_CODE: TAbmesFloatField;
    qryAllDSSpecModelsDEPT_PRODUCT_HAS_SPEC: TAbmesFloatField;
    qryAllDSSpecModelsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryAllDSSpecModelsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryAllDSSpecModelsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryAllDSSpecModelsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllDSSpecModelsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllDSSpecModelsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryAllDSSpecModelsPROGRAM_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField;
    qryAllDSSpecModelsSPECIFIC_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField;
    qryAllDSSpecModelsTYPICAL_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField;
    cdsAllDSSpecModelsDEPT_PRODUCT_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsDEPT_PRODUCT_HAS_SPEC: TAbmesFloatField;
    cdsAllDSSpecModelsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsPROGRAM_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField;
    cdsAllDSSpecModelsSPECIFIC_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField;
    cdsAllDSSpecModelsTYPICAL_TOOL_PRODUCT_HAS_SPEC: TAbmesFloatField;
    qryAllDSSpecModelsDEPT_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryAllDSSpecModelsPROGRAM_TOOL_PRODUCT_HAS_DI: TAbmesFloatField;
    qryAllDSSpecModelsSPECIFIC_TOOL_PRODUCT_HAS_DI: TAbmesFloatField;
    qryAllDSSpecModelsTYPICAL_TOOL_PRODUCT_HAS_DI: TAbmesFloatField;
    cdsAllDSSpecModelsDEPT_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsAllDSSpecModelsPROGRAM_TOOL_PRODUCT_HAS_DI: TAbmesFloatField;
    cdsAllDSSpecModelsSPECIFIC_TOOL_PRODUCT_HAS_DI: TAbmesFloatField;
    cdsAllDSSpecModelsTYPICAL_TOOL_PRODUCT_HAS_DI: TAbmesFloatField;
    qryDSSpecModelDEPT_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryDSSpecModelPROGRAM_TOOL_PRODUCT_HAS_DI: TAbmesFloatField;
    qryDSSpecModelSPECIFIC_TOOL_PRODUCT_HAS_DI: TAbmesFloatField;
    qryDSSpecModelTYPICAL_TOOL_PRODUCT_HAS_DI: TAbmesFloatField;
    qrySpecificationsDetail: TAbmesSQLQuery;
    prvSpecificationsDetail: TDataSetProvider;
    qrySpecificationsDetailSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecificationsDetailSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySpecificationsDetailSPEC_MODEL_VARIANT_STATE: TAbmesFloatField;
    qrySpecificationsDetailMAIN_DEPT_CODE: TAbmesFloatField;
    qrySpecificationsDetailMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    qrySpecificationsDetailMAIN_DEPT_NAME: TAbmesWideStringField;
    qrySpecificationsDetailMIN_TECH_QUANTITY: TAbmesFloatField;
    qrySpecificationsDetailMAX_TECH_QUANTITY: TAbmesFloatField;
    qrySpecificationsDetailTECH_MEASURE_ABBREV: TAbmesWideStringField;
    qrySpecificationsDetailAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField;
    qrySpecificationsDetailAUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField;
    qrySpecificationsDetailAUTHORIZATION_DATE: TAbmesSQLTimeStampField;
    qrySpecificationsDetailAUTHORIZATION_OF_OPERATIONS: TAbmesFloatField;
    qrySpecificationsDetailCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySpecificationsDetailCHANGE_EMPLOYEE_NAME: TAbmesWideStringField;
    qrySpecificationsDetailCHANGE_DATE: TAbmesSQLTimeStampField;
    qrySpecificationsDetailMODEL_LENGTH_WORKDAYS: TAbmesFloatField;
    qryDelSpec: TAbmesSQLQuery;
    qryInsertSMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryInsertSMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryInsertSMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    qrySMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    qrySMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    qrySMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryCLSMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryCLSMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryCLSMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryAllSMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryAllSMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryAllSMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsAllSMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsAllSMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsAllSMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryAllDSSpecModelsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryAllDSSpecModelsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryAllDSSpecModelsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsAllDSSpecModelsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsAllDSSpecModelsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsAllDSSpecModelsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryDSSpecModelPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryDSSpecModelSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryDSSpecModelTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryInsertSMVSOperationsSETUP_COUNT: TAbmesFloatField;
    qrySMVSOperationsSETUP_COUNT: TAbmesFloatField;
    qryCLSMVSOperationsSETUP_COUNT: TAbmesFloatField;
    qryAllSMVSOperationsSETUP_COUNT: TAbmesFloatField;
    cdsAllSMVSOperationsSETUP_COUNT: TAbmesFloatField;
    qryInsertSMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    qrySMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    qryCLSMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    qryAllSMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    cdsAllSMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    qryInsertSMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    qryInsertSMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    qrySMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    qrySMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    qryCLSMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    qryCLSMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    qryAllSMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    qryAllSMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    cdsAllSMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    cdsAllSMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField;
    qrySpecLinesPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField;
    qrySpecLinesPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField;
    qrySpecLinesPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField;
    qrySpecLinesPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraph: TAbmesSQLQuery;
    prvSpecInvestedValueLevelsGraph: TDataSetProvider;
    qryGetPeriodFieldNames: TAbmesSQLQuery;
    qryGetPeriodFieldNamesTABLE_NAME: TAbmesWideStringField;
    qryGetPeriodFieldNamesYEAR_UNIT_NO_NAME: TAbmesWideStringField;
    qrySpecInvestedValueLevelsGraphDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField;
    qrySpecInvestedValueLevelsGraphDATE_UNIT_NO: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_1_INCOMPLETE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_2_INCOMPLETE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_3_INCOMPLETE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_4_INCOMPLETE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphINVESTMENT_LEVEL_5_INCOMPLETE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_1_VALUE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_1_INCOMPLETE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_2_VALUE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_2_INCOMPLETE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_3_VALUE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_3_INCOMPLETE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_4_VALUE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_4_INCOMPLETE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_5_VALUE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphFULL_INV_LEVEL_5_INCOMPLETE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphDATE_UNIT_LAST_DATE: TAbmesSQLTimeStampField;
    qrySpecInvestedValueLevelsGraphDATE_UNIT_WORKDAYS: TAbmesFloatField;
    prvSpecModelMainDepts: TDataSetProvider;
    qrySpecModelMainDepts: TAbmesSQLQuery;
    qrySpecModelMainDeptsMAIN_DEPT_CODE: TAbmesFloatField;
    qrySpecModelMainDeptsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    qrySpecInvestedValueLevelsGraphAGGR_INV_LEVEL_5_VALUE: TAbmesFloatField;
    qrySpecInvestedValueLevelsGraphAGGR_INV_LEVEL_5_INCOMPLETE: TAbmesFloatField;
    qryInsertSpecLinesPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField;
    qrySpecLinesPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField;
    qryCLSpecLinesPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField;
    qryAuthorizedModelVariantsSPEC_MODEL_VARIANT_STATE: TAbmesFloatField;
    qryDSSpecModelBASE_GROUP_CODE: TAbmesFloatField;
    qryDSSpecModelBASE_GROUP_DOC_BRANCH_CODE: TAbmesFloatField;
    qryDSSpecModelBASE_GROUP_DOC_CODE: TAbmesFloatField;
    qryDSSpecModelBASE_GROUP_HAS_DOC_ITEMS: TAbmesFloatField;
    qryAllDSSpecModelsBASE_GROUP_CODE: TAbmesFloatField;
    qryAllDSSpecModelsBASE_GROUP_DOC_BRANCH_CODE: TAbmesFloatField;
    qryAllDSSpecModelsBASE_GROUP_DOC_CODE: TAbmesFloatField;
    qryAllDSSpecModelsBASE_GROUP_HAS_DOC_ITEMS: TAbmesFloatField;
    cdsAllDSSpecModelsBASE_GROUP_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsBASE_GROUP_DOC_BRANCH_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsBASE_GROUP_DOC_CODE: TAbmesFloatField;
    cdsAllDSSpecModelsBASE_GROUP_HAS_DOC_ITEMS: TAbmesFloatField;
    qrySMVProductPeriods: TAbmesSQLQuery;
    qrySMVProductPeriodsPRODUCT_CODE: TAbmesFloatField;
    qrySMVProductPeriodsPRODUCT_PERIOD_CODE: TAbmesFloatField;
    qrySMVProductPeriodsBEGIN_DATE: TAbmesSQLTimeStampField;
    qrySMVProductPeriodsEND_DATE: TAbmesSQLTimeStampField;
    qryDSSpecLinesDETAIL_PARENT_CODE: TAbmesFloatField;
    qrySpecificationsAUTHOR_EMPLOYEE_NAME: TAbmesWideStringField;
    qrySpecificationsAUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField;
    qrySpecificationsIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    qrySpecificationsDetailNOTES: TAbmesWideStringField;
    qrySpecModelVariantsNOTES: TAbmesWideStringField;
    qryCLSpecModelVariantsNOTES: TAbmesWideStringField;
    qryDSSpecModelNOTES: TAbmesWideStringField;
    qryAllDSSpecModelsNOTES: TAbmesWideStringField;
    cdsAllDSSpecModelsNOTES: TAbmesWideStringField;
    qrySpecificationsT_DISPLAY_NAME: TAbmesWideStringField;
    qrySpecificationsT_SPEC_LINE_CODE: TAbmesFloatField;
    qrySpecificationsT_PARENT_SPEC_LINE_CODE: TAbmesFloatField;
    qrySpecificationsT_PRODUCT_CODE: TAbmesFloatField;
    qrySpecificationsT_DETAIL_CODE: TAbmesFloatField;
    qrySpecificationsT_IS_COMPLETE: TAbmesFloatField;
    qrySpecificationsT_IS_IMPORTED: TAbmesFloatField;
    qrySpecificationsORDER_BY_FIELD: TAbmesWideStringField;
    qrySpecInvestedValuesLevel1: TAbmesSQLQuery;
    prvSpecInvestedValuesLevel1: TDataSetProvider;
    qrySpecInvestedValuesLevel1PRODUCT_CODE: TAbmesFloatField;
    qrySpecInvestedValuesLevel1PRODUCT_NAME: TAbmesWideStringField;
    qrySpecInvestedValuesLevel1LINE_COUNT: TAbmesFloatField;
    qrySpecInvestedValuesLevel1PRECISION_LEVEL_NO: TAbmesFloatField;
    qrySpecInvestedValuesLevel1TOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qrySpecInvestedValuesLevel1TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qrySpecInvestedValuesLevel1TOTAL_PRODUCT_ACCOUNT_QUANTITY: TAbmesFloatField;
    qrySpecInvestedValuesLevel1ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qrySpecInvestedValuesLevel1PRODUCT_SINGLE_PRICE: TAbmesFloatField;
    qrySpecInvestedValuesLevel1PRODUCT_TOTAL_PRICE: TAbmesFloatField;
    qrySpecInvestedValuesLevel1PRODUCT_TOTAL_PRICE_PCT: TAbmesFloatField;
    qrySpecDepth: TAbmesSQLQuery;
    qrySpecDepthSPEC_DEPTH: TAbmesFloatField;
    qryDSSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryDSSpecLinesIS_DETAIL_DOC_AUTHORIZED: TAbmesFloatField;
    qryInsertSMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryInsertSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField;
    qrySMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    qrySMVSOperationsIS_AUTO_SETUP: TAbmesFloatField;
    qryCLSMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryCLSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField;
    qryAllSMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryAllSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField;
    cdsAllSMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsAllSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField;
    qryDSSpecLinesPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryDSSpecLinesPRODUCT_DOC_CODE: TAbmesFloatField;
    qryDSSpecLinesNOTES: TAbmesWideStringField;
    qryDSSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField;
    qrySpecLinesDETAIL_HAS_SPEC: TAbmesFloatField;
    qryCLSpecLinesDETAIL_HAS_SPEC: TAbmesFloatField;
    qryInsertSpecLinesDETAIL_HAS_SPEC: TAbmesFloatField;
    qryGetInlineModelCount: TAbmesSQLQuery;
    qryGetInlineModelCountINLINE_MODEL_COUNT: TAbmesFloatField;
    qrySpecModelVariantsIS_INACTIVE: TAbmesFloatField;
    qrySpecificationsDetailIS_INACTIVE: TAbmesFloatField;
    qrySpecificationsPRECISION_LEVEL_NO: TAbmesFloatField;
    qrySpecificationsPRECISION_LEVEL_COLOR: TAbmesFloatField;
    qrySpecificationsPRECISION_LEVEL_BACK_COLOR: TAbmesFloatField;
    qrySpecificationsBALANCE_QUANTITY: TAbmesFloatField;
    qrySpecificationsINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    qrySpecificationsINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    qrySpecificationsINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    qrySpecificationsINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    qrySpecificationsINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    qrySpecificationsINVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    qrySpecificationsWORK_MEASURE_ABBREV: TAbmesWideStringField;
    procedure prvSpecBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvSpecAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure prvSpecGetData(Sender: TObject; DataSet: TCustomClientDataSet);
    procedure prvCLSpecGetData(Sender: TObject; DataSet: TCustomClientDataSet);
    procedure prvSpecBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvSpecUpdateData(Sender: TObject; DataSet: TCustomClientDataSet);
    procedure prvSpecAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qrySpecificationsBeforeOpen(DataSet: TDataSet);
    procedure qrySpecModelVariantStagesBeforeScroll(DataSet: TDataSet);
    procedure prvSpecAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvSpecUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure qrySpecModelVariantLinesBeforeScroll(DataSet: TDataSet);
    procedure qryCLSpecModelVariantLinesBeforeScroll(DataSet: TDataSet);
    procedure qryCLSpecModelVariantStagesBeforeScroll(DataSet: TDataSet);
    procedure prvCLSpecAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryInsertSpecModelVariantLinesBeforeScroll(
      DataSet: TDataSet);
    procedure qryInsertSpecLineModelStagesBeforeScroll(DataSet: TDataSet);
    procedure prvInsertSpecLinesAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvInsertSpecLinesGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure qrySpecAfterProviderStartTransaction(DataSet: TDataSet);
    procedure qrySpecificationsAfterClose(DataSet: TDataSet);
    procedure qrySpecBeforeProviderEndTransaction(DataSet: TDataSet;
      Commit: Boolean);
    procedure prvSpecificationsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvDSSpecBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvDSSpecGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure qryDSSpecModelVariantLinesBeforeScroll(DataSet: TDataSet);
    procedure prvDSSpecAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvDSSpecBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvDSSpecAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryDSSpecAfterProviderStartTransaction(DataSet: TDataSet);
    procedure qrySpecInvestedValueLevelsGraphBeforeOpen(DataSet: TDataSet);
  private
    FUpdateDS: TDataSet;
    FCreateLikeOldSpecProductCode: Integer;
    FDeletedLineCodes: array of Integer;
    FDocsDelta: Variant;
    FUpdateSpecProductCode: Integer;
    procedure FixModelVariantIdentifiers(ADataSet: TDataSet);
    procedure SpecOnGetData(
      DataSet: TCustomClientDataSet;
      qrySpecLinesName,
      qrySpecModelVariantLinesName,
      qrySpecModelVariantStagesName,
      qrySMVSOperationsName: string;
      OriginalSpecProductCode: Integer = 0);
    function GetDateUnitTableName(DateUnitCode: Integer): string;
  protected
    function SpecificationExists(SpecProductCode: Integer;
      out Authorized: Boolean; out AuthorEmployeeCode: Integer): Boolean;
    function SpecificationVersion(SpecProductCode: Integer): Integer;
    procedure UpdateSpecificationsImported(SpecProductCode: Integer; HostSpecProductCode: Integer);
    function ReplaceProduct(Params: OleVariant): Integer;
    function SpecInsertionsCount(SpecProductCode: Integer): Integer;
    function GetSpecType(SpecProductCode: Integer): Integer;
    procedure DeleteSpecification(SpecProductCode: Integer);
    function GetSpecDepth(SpecProductCode: Integer): Integer;
    function GetProductInlineModelCount(const AProductCode: Integer): Integer;
  end;

type
  IdmSpecificationsProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmSpecificationsProxy = class(TDBPooledDataModuleProxy, IdmSpecificationsProxy)
  private
    class var FSingleton: TdmSpecificationsProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmSpecifications>;
  strict protected
    property LockedInstance: ISmartLock<TdmSpecifications> read GetLockedInstance;
  public
    class property Singleton: TdmSpecificationsProxy read FSingleton;

    function SpecificationExists(SpecProductCode: Integer; out Authorized: Boolean;
      out AuthorEmployeeCode: Integer): Boolean;
    function SpecificationVersion(SpecProductCode: Integer): Integer;
    procedure UpdateSpecificationsImported(SpecProductCode: Integer; HostSpecProductCode: Integer);
    function ReplaceProduct(Params: OleVariant): Integer;
    function SpecInsertionsCount(SpecProductCode: Integer): Integer;
    function GetSpecType(SpecProductCode: Integer): Integer;
    procedure DeleteSpecification(SpecProductCode: Integer);
    function GetSpecDepth(SpecProductCode: Integer): Integer;
    function GetProductInlineModelCount(const AProductCode: Integer): Integer;
  end;

implementation

uses
  Variants, uUtils, uSvrUtils, uTreeNodes, uDBPooledDataModuleHelper,
  uServerMessageIds, uMessageUtils, uDBLoginContext;

{$R *.DFM}

const
  MaxNoPos = 25;

{ TdmSpecificationsProxy }

function TdmSpecificationsProxy.GetLockedInstance: ISmartLock<TdmSpecifications>;
begin
  Result:= ISmartLock<TdmSpecifications>(inherited LockedInstance);
end;

procedure TdmSpecificationsProxy.DeleteSpecification(
  SpecProductCode: Integer);
begin
  LockedInstance.Value.DeleteSpecification(SpecProductCode);
end;

function TdmSpecificationsProxy.ReplaceProduct(
  Params: OleVariant): Integer;
begin
  Result:= LockedInstance.Value.ReplaceProduct(Params);
end;

function TdmSpecificationsProxy.SpecificationExists(
  SpecProductCode: Integer; out Authorized: Boolean;
  out AuthorEmployeeCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.SpecificationExists(SpecProductCode, Authorized, AuthorEmployeeCode);
end;

function TdmSpecificationsProxy.SpecificationVersion(
  SpecProductCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.SpecificationVersion(SpecProductCode);
end;

function TdmSpecificationsProxy.SpecInsertionsCount(
  SpecProductCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.SpecInsertionsCount(SpecProductCode);
end;

procedure TdmSpecificationsProxy.UpdateSpecificationsImported(
  SpecProductCode, HostSpecProductCode: Integer);
begin
  LockedInstance.Value.UpdateSpecificationsImported(SpecProductCode, HostSpecProductCode);
end;

function TdmSpecificationsProxy.GetSpecDepth(SpecProductCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetSpecDepth(SpecProductCode);
end;

function TdmSpecificationsProxy.GetProductInlineModelCount(const AProductCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetProductInlineModelCount(AProductCode);
end;

function TdmSpecificationsProxy.GetSpecType(
  SpecProductCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetSpecType(SpecProductCode);
end;

{ TdmSpecifications }

procedure TdmSpecifications.prvSpecBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);

  procedure MakeNegativeNoAsText(AField: TField);
  begin
    AField.NewValue:=
      '-' + StringReplace(GetFieldValue(AField), '.', '.-', [rfReplaceAll]);
  end;   { MakeNegativeNoAsText }

  function SpecLineDeleted(ASpecLineCode: Integer): Boolean;
  var
    i: Integer;
  begin
    Result:= True;
    for i:= Low(FDeletedLineCodes) to High(FDeletedLineCodes) do
      if (FDeletedLineCodes[i] = ASpecLineCode) then
        Exit;
    Result:= False;
  end;

  procedure AddDeletedSpecLine(ASpecLineCode: Integer);
  begin
    SetLength(FDeletedLineCodes, Length(FDeletedLineCodes) + 1);
    FDeletedLineCodes[High(FDeletedLineCodes)]:= ASpecLineCode;
  end;

  function SpecLineDoesNotExist: Boolean;
  begin
    with qrySpecLineExists do
      begin
        SetParams(Params, DeltaDS);

        Open;
        try
          Result:= (Bof and Eof);
        finally
          Close;
        end;   { try }
      end;   { with }
  end;

var
  NowDate: TDateTime;
  NowTime: TDateTime;
  MasterUpdateKind: TUpdateKind;
  i: Integer;
  f: TField;
begin
  inherited;

  FUpdateDS:= SourceDS;

  NowDate:= ContextDate;
  NowTime:= ContextTime;

  if ParentRecordDeleted(DeltaDS) then
    begin
      Applied:= True;
      Exit;
    end;

  with DeltaDS do
    begin
      if (SourceDS = qrySpec) then
        begin
          FUpdateSpecProductCode:= GetFieldValue(FieldByName('SPEC_PRODUCT_CODE'));

          if (UpdateKind = ukInsert) then
            begin
              FieldByName('WORK_BRANCH_CODE').NewValue:= LoginContext.LocalBranchCode;

              FieldByName('CREATE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
              FieldByName('CREATE_DATE').NewValue:= NowDate;
              FieldByName('CREATE_TIME').NewValue:= NowTime;
            end;   { if }

          if (UpdateKind <> ukDelete) then
            FieldByName('CHANGE_BRANCH_CODE').NewValue:= LoginContext.LocalBranchCode;
        end;   { if (SourceDS = qrySpec) }

      if (SourceDS = qrySpecModelVariants) then
        begin
          if (UpdateKind = ukInsert) then
            begin
              FieldByName('CREATE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
              FieldByName('CREATE_DATE').NewValue:= NowDate;
              FieldByName('CREATE_TIME').NewValue:= NowTime;
            end;   { if }

          if (UpdateKind <> ukDelete) and
             VarIsNullOrEmpty(GetFieldValue(FieldByName('CHANGE_EMPLOYEE_CODE'))) then
            begin
              FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
              FieldByName('CHANGE_DATE').NewValue:= NowDate;
              FieldByName('CHANGE_TIME').NewValue:= NowTime;
            end;   { if }
        end;   { if (SourceDS = qrySpecModelVariants) }

      if (SourceDS = qrySpecLines) then
        begin
          if SpecLineDeleted(VarToInt(GetFieldValue(FieldByName('PARENT_SPEC_LINE_CODE')))) or
             ((UpdateKind in [ukModify, ukDelete]) and SpecLineDoesNotExist) then
            begin
              Applied:= True;
              Exit;
            end;   { if }

          if (UpdateKind = ukDelete) then
            AddDeletedSpecLine(VarToInt(GetFieldValue(FieldByName('SPEC_LINE_CODE'))));


          Assert(Assigned(DataSetField));
          MasterUpdateKind:= (DataSetField.DataSet as TPacketDataSet).UpdateKind;

          // make all new no_* fields negative
          if (UpdateKind <> ukDelete) and (MasterUpdateKind = ukModify) then
            begin
              for i:= 1 to MaxNoPos do
                begin
                  f:= FieldByName('NO_'+IntToStr(i));
                  f.NewValue:= -GetFieldValue(f);
                end;  { for }

              MakeNegativeNoAsText(FieldByName('NO_AS_TEXT'));
              MakeNegativeNoAsText(FieldByName('NO_AS_FORMATED_TEXT'));
            end;
        end;  { if }

      if (SourceDS = qrySMVSOperations) then
        begin
          Assert(Assigned(DataSetField));
          MasterUpdateKind:= (DataSetField.DataSet as TPacketDataSet).UpdateKind;

          // make all new SMVS_OPERATION_NO fields negative
          if (UpdateKind <> ukDelete) and (MasterUpdateKind = ukModify) then
            begin
              with FieldByName('SMVS_OPERATION_NO') do
                if (not VarIsNullOrEmpty(NewValue)) then
                  begin
                    NewValue:= EncodeTempNo(GetFieldValue(FieldByName('SMVS_OPERATION_NO')));
                  end;

              with FieldByName('SMVS_OPERATION_VARIANT_NO') do
                if (not VarIsNullOrEmpty(NewValue)) then
                  begin
                    NewValue:= EncodeTempNo(GetFieldValue(FieldByName('SMVS_OPERATION_VARIANT_NO')));
                  end;
            end;
        end;  { if }

      if (SourceDS = qrySpecModelVariantStages) then
        begin
          Assert(Assigned(DataSetField));
          MasterUpdateKind:= (DataSetField.DataSet as TPacketDataSet).UpdateKind;

          // make all new SPEC_LINE_STAGE_NO fields negative
          if (UpdateKind <> ukDelete) and (MasterUpdateKind = ukModify) then
            begin
              with FieldByName('SPEC_LINE_STAGE_NO') do
                if (not VarIsNullOrEmpty(NewValue)) then
                  begin
                    NewValue:= EncodeTempNo(GetFieldValue(FieldByName('SPEC_LINE_STAGE_NO')));
                  end;
            end;
        end;  { if }
    end;   { with }

  Applied:=
    (SourceDS = qrySMVProductPeriods) or
    ( (UpdateKind = ukModify) and not RecordChanged(DeltaDS) );
end;

procedure TdmSpecifications.prvSpecAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
var
  NowDate: TDateTime;
  NowTime: TDateTime;
begin
  inherited;

  NowDate:= ContextDate;
  NowTime:= ContextTime;

  with DeltaDS do
    begin
      if (SourceDS = qrySpec) then
        begin
          if (UpdateKind = ukModify) then
            begin
              // update the current version in SPEC_VERSIONS
              SetParams(qryUpdSpecVersion.Params, DeltaDS);

              qryUpdSpecVersion.ParamByName('SPEC_VERSION_NO').AsFloat:=
                DeltaDS.FieldByName('SPEC_VERSION_NO').OldValue;

              if not VarIsEmpty(FieldByName('SPEC_VERSION_NO').NewValue) then
                begin
                  if VarIsNull(FieldByName('AUTHORIZATION_EMPLOYEE_CODE').OldValue) then
                    begin
                      qryUpdSpecVersion.ParamByName('AUTHORIZATION_EMPLOYEE_CODE').AsFloat:= LoginContext.UserCode;
                      qryUpdSpecVersion.ParamByName('AUTHORIZATION_DATE').AsDateTime:= NowDate;
                      qryUpdSpecVersion.ParamByName('AUTHORIZATION_TIME').AsDateTime:= NowTime;
                    end
                  else   { if }
                    begin
                      qryUpdSpecVersion.ParamByName('AUTHORIZATION_EMPLOYEE_CODE').AsFloat:=
                        DeltaDS.FieldByName('AUTHORIZATION_EMPLOYEE_CODE').OldValue;
                      qryUpdSpecVersion.ParamByName('AUTHORIZATION_DATE').AsDateTime:=
                        DeltaDS.FieldByName('AUTHORIZATION_DATE').OldValue;
                      qryUpdSpecVersion.ParamByName('AUTHORIZATION_TIME').AsDateTime:=
                        DeltaDS.FieldByName('AUTHORIZATION_TIME').OldValue;
                    end;   { if }
                end;

              qryUpdSpecVersion.ExecSQL;
            end;   { if }

          if not VarIsEmpty(FieldByName('SPEC_VERSION_NO').NewValue) then
            begin
              // add the new version to SPEC_VERSIONS
              SetParams(qryInsSpecVersion.Params, DeltaDS);
              qryInsSpecVersion.ExecSQL;
            end;   { if }
        end;   { if }
    end;   { with }
end;

function TdmSpecifications.SpecificationExists(
  SpecProductCode: Integer; out Authorized: Boolean;
  out AuthorEmployeeCode: Integer): Boolean;
begin
  with qrySpec do
    begin
      ParamByName('SPEC_PRODUCT_CODE').AsInteger:= SpecProductCode;

      Open;
      try
        Result:= not (BOF and EOF);
        Authorized:= not qrySpecAUTHORIZATION_EMPLOYEE_CODE.IsNull;
        AuthorEmployeeCode:= qrySpecAUTHOR_EMPLOYEE_CODE.AsInteger;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

procedure TdmSpecifications.prvSpecGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  inherited;

  FixModelVariantIdentifiers(
    (DataSet.FieldByName('qrySpecModelVariants') as TDataSetField).NestedDataSet);

  SpecOnGetData(
    DataSet,
    'qrySpecLines',
    'qrySpecModelVariantLines',
    'qrySpecModelVariantStages',
    'qrySMVSOperations'
  );
end;

procedure TdmSpecifications.DeleteSpecification(SpecProductCode: Integer);
begin
  qryDelSpec.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= SpecProductCode;
  qryDelSpec.ExecSQL;
end;

procedure TdmSpecifications.FixModelVariantIdentifiers(
  ADataSet: TDataSet);
begin
  with ADataSet do
    begin
      First;
      while not EOF do
        begin
          Edit;
          try
            FieldByName('MODEL_VARIANT_IDENTIFIER').AsString:=
              Format('%d. %s [%s - %s] - %s', [
                FieldByName('SPEC_MODEL_VARIANT_NO').AsInteger,
                FieldByName('MAIN_DEPT_IDENTIFIER').AsString,
                FormatFloat(',0.###', FieldByName('MIN_TECH_QUANTITY').AsFloat),
                FormatFloat(',0.###', FieldByName('MAX_TECH_QUANTITY').AsFloat),
                FieldByName('MAIN_DEPT_NAME').AsString]);
            Post;
          except
            Cancel;
            raise;
          end;   { try }

          Next;
        end;   { while }
    end;   { with }
end;

procedure TdmSpecifications.prvCLSpecGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  inherited;

  FixModelVariantIdentifiers(
    (DataSet.FieldByName('qryCLSpecModelVariants') as TDataSetField).NestedDataSet);

  SpecOnGetData(
    DataSet,
    'qryCLSpecLines',
    'qryCLSpecModelVariantLines',
    'qryCLSpecModelVariantStages',
    'qryCLSMVSOperations',
    DataSet.FieldByName('ORIGINAL_SPEC_PRODUCT_CODE').AsInteger
  );
end;

function TdmSpecifications.SpecificationVersion(
  SpecProductCode: Integer): Integer;
begin
  with qrySpecVersion do
    begin
      ParamByName('SPEC_PRODUCT_CODE').AsInteger:= SpecProductCode;

      Open;
      try
        Result:= qrySpecVersionSPEC_VERSION_NO.AsInteger;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

procedure TdmSpecifications.UpdateSpecificationsImported(
  SpecProductCode, HostSpecProductCode: Integer);

  function GetNoField(ADataSet: TDataSet; ANo: Integer): TField;
  begin
    Result:= ADataSet.FieldByName(Format('NO_%d', [ANo]));
  end;

  function LastNoPos(ADataSet: TDataSet): Integer;
  begin
    Result:= MaxNoPos;
    while (Result >= 1) and (GetNoField(ADataSet, Result).AsInteger = 0) do
      Dec(Result);
  end;

var
  No: array[1..MaxNoPos] of Integer;
  ParentSpecLineCode: array[0..MaxNoPos + 1] of Integer;
  i, k: Integer;
  FirstZeroNoPos: Integer;
  Level: Integer;
  SpecLineCode: Integer;
  SpecLineRecNo: Integer;
  SpecLineLastStageNo: Integer;
  MaxSpecLineCode: Integer;
  s: string;
  FirstSpecLineCode: Integer;
begin
  DBDataModule.StartTransaction;
  try
    cdsXSpecLines.Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= SpecProductCode;

    cdsXSpecLines.Open;
    cdsXSpecModelVariantLines.Open;
    try
      with cdsImportedSpecLines do
        begin
          Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= SpecProductCode;
          if (HostSpecProductCode = 0) then
            Params.ParamByName('HOST_SPEC_PRODUCT_CODE').Clear
          else
            Params.ParamByName('HOST_SPEC_PRODUCT_CODE').AsInteger:= HostSpecProductCode;

          Open;
          try
            cdsImportedSpecLinesModelVariantLines.Open;
            try
              while not EOF do
                begin
                  SetParams(qryDelImportedSpecLine.Params, cdsImportedSpecLines);
                  qryDelImportedSpecLine.ExecSQL;


                  qryMaxSpecLineCode.ParamByName('SPEC_PRODUCT_CODE').AsInteger:=
                    cdsImportedSpecLinesSPEC_PRODUCT_CODE.AsInteger;

                  qryMaxSpecLineCode.Open;
                  try
                    MaxSpecLineCode:= qryMaxSpecLineCodeMAX_SPEC_LINE_CODE.AsInteger;
                  finally
                    qryMaxSpecLineCode.Close;
                  end;   { try }


                  ParentSpecLineCode[0]:= cdsImportedSpecLinesPARENT_SPEC_LINE_CODE.AsInteger;

                  for i:= 1 to MaxNoPos do
                    No[i]:= GetNoField(cdsImportedSpecLines, i).AsInteger;

                  FirstZeroNoPos:= LastNoPos(cdsImportedSpecLines) + 1;

                  cdsXSpecLines.First;
                  SpecLineRecNo:= 1;
                  FirstSpecLineCode:= 0;
                  while not cdsXSpecLines.EOF do
                    begin
                      Level:= LastNoPos(cdsXSpecLines);

                      // calc no
                      for i:= FirstZeroNoPos to MaxNoPos do
                        No[i]:= GetNoField(cdsXSpecLines, i - FirstZeroNoPos + 1).AsInteger;

                      // -------------------------------------------------------------------
                      // insert spec line

                      // DETAIL_CODE, PRODUCT_CODE, PRODUCT_TECH_QUANTITY, NOTES
                      SetParams(qryInsSpecLine.Params, cdsXSpecLines);

                      // SPEC_PRODUCT_CODE
                      qryInsSpecLine.ParamByName('SPEC_PRODUCT_CODE').AsInteger:=
                        cdsImportedSpecLinesSPEC_PRODUCT_CODE.AsInteger;

                      // SPEC_LINE_CODE
                      SpecLineCode:= MaxSpecLineCode + SpecLineRecNo;
                      qryInsSpecLine.ParamByName('SPEC_LINE_CODE').AsInteger:= SpecLineCode;
                      if (SpecLineRecNo = 1) then
                        FirstSpecLineCode:= SpecLineCode;

                      // PARENT_SPEC_LINE_CODE
                      qryInsSpecLine.ParamByName('PARENT_SPEC_LINE_CODE').AsInteger:=
                        ParentSpecLineCode[Level];
                      ParentSpecLineCode[Level + 1]:= SpecLineCode;

                      // NO_x
                      for i:= 1 to MaxNoPos do
                        qryInsSpecLine.ParamByName(Format('NO_%d', [i])).AsInteger:= No[i];

                      // DETAIL_TECH_QUANTITY
                      with qryInsSpecLine.ParamByName('DETAIL_TECH_QUANTITY') do
                        if cdsXSpecLinesDETAIL_TECH_QUANTITY.IsNull then
                          AsFloat:= cdsImportedSpecLinesDETAIL_TECH_QUANTITY.AsFloat
                        else
                          AsFloat:= cdsXSpecLinesDETAIL_TECH_QUANTITY.AsFloat;

                      // TOTAL_DETAIL_TECH_QUANTITY
                      qryInsSpecLine.ParamByName('TOTAL_DETAIL_TECH_QUANTITY').AsFloat:=
                        cdsXSpecLinesTOTAL_DETAIL_TECH_QUANTITY.AsFloat *
                        cdsImportedSpecLinesPAR_TOTAL_DETAIL_TECH_QUANTITY.AsFloat *
                        cdsImportedSpecLinesDETAIL_TECH_QUANTITY.AsFloat;

                      // IS_IMPORTED
                      qryInsSpecLine.ParamByName('IS_IMPORTED').AsFloat:=
                        Ord((cdsXSpecLinesNO_1.AsInteger = 0) or cdsXSpecLinesIS_IMPORTED.AsBoolean);

                      // NO_AS_TEXT & NO_AS_FORMATED_TEXT
                      s:= IntToStr(No[1]);
                      for k:= 2 to MaxNoPos do
                        if (No[k] > 0) then
                          s:= s + '.' + IntToStr(No[k]);
                      qryInsSpecLine.ParamByName('NO_AS_TEXT').AsString:= s;
                      qryInsSpecLine.ParamByName('NO_AS_FORMATED_TEXT').AsString:= s;

                      if (cdsXSpecLinesNO_1.AsInteger = 0) then
                        qryInsSpecLine.ParamByName('CONSTRUCTION_NOTES').AsString:=
                          cdsImportedSpecLinesCONSTRUCTION_NOTES.AsString;

                      qryInsSpecLine.ExecSQL;

                      // -------------------------------------------------------------------
                      // insert spec model variant lines
                      qryInsSpecLineModelVariantLine.ParamByName('SPEC_PRODUCT_CODE').AsInteger:=
                        cdsImportedSpecLinesSPEC_PRODUCT_CODE.AsInteger;
                      qryInsSpecLineModelVariantLine.ParamByName('SPEC_LINE_CODE').AsInteger:=
                        SpecLineCode;

                      cdsImportedSpecLinesModelVariantLines.First;
                      while not cdsImportedSpecLinesModelVariantLines.EOF do
                        begin
                          qryInsSpecLineModelVariantLine.ParamByName('SPEC_MODEL_VARIANT_NO').AsInteger:=
                            cdsImportedSpecLinesModelVariantLinesSPEC_MODEL_VARIANT_NO.AsInteger;

                          if (cdsImportedSpecLinesModelVariantLinesSPEC_PRODUCT_CODE.AsInteger =
                              cdsImportedSpecLinesModelVariantLinesIMPORT_SPEC_PRODUCT_CODE.AsInteger) then
                            begin
                              qryInsSpecLineModelVariantLine.ParamByName('IMPORT_SPEC_PRODUCT_CODE').Value:=
                                cdsImportedSpecLinesModelVariantLinesIMPORT_SPEC_PRODUCT_CODE.AsInteger;
                              qryInsSpecLineModelVariantLine.ParamByName('IMPORT_SPEC_MODEL_VARIANT_NO').Value:=
                                cdsImportedSpecLinesModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO.AsInteger;
                              qryInsSpecLineModelVariantLine.ParamByName('APPROVE_CYCLE_NO').Value:= 1;

                              qryInsSpecLineModelVariantLine.ExecSQL;
                            end
                          else   { if }
                            begin
                              cdsXSpecModelVariantLines.Locate('SPEC_MODEL_VARIANT_NO',
                                cdsImportedSpecLinesModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO.AsInteger, []);

                              qryInsSpecLineModelVariantLine.ParamByName('IMPORT_SPEC_PRODUCT_CODE').Value:=
                                cdsXSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE.AsVariant;
                              qryInsSpecLineModelVariantLine.ParamByName('IMPORT_SPEC_MODEL_VARIANT_NO').Value:=
                                cdsXSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO.AsVariant;

                              if cdsXSpecModelVariantLinesAPPROVE_CYCLE_NO.IsNull then
                                qryInsSpecLineModelVariantLine.ParamByName('APPROVE_CYCLE_NO').AsInteger:= 1
                              else
                                qryInsSpecLineModelVariantLine.ParamByName('APPROVE_CYCLE_NO').Value:=
                                  cdsXSpecModelVariantLinesAPPROVE_CYCLE_NO.AsVariant;

                              qryInsSpecLineModelVariantLine.ExecSQL;

                              // -------------------------------------------------------------------
                              // insert spec model variant stages

                              // :SPEC_PRODUCT_CODE, :SPEC_MODEL_VARIANT_NO, :SPEC_LINE_CODE
                              SetParams(qryInsSpecModelVariantStages.Params, cdsXSpecModelVariantLines);

                              qryInsSpecModelVariantStages.ParamByName('NEW_SPEC_PRODUCT_CODE').AsInteger:=
                                cdsImportedSpecLinesSPEC_PRODUCT_CODE.AsInteger;
                              qryInsSpecModelVariantStages.ParamByName('NEW_SPEC_LINE_CODE').AsInteger:=
                                SpecLineCode;
                              qryInsSpecModelVariantStages.ParamByName('NEW_SPEC_MODEL_VARIANT_NO').AsInteger:=
                                cdsImportedSpecLinesModelVariantLinesSPEC_MODEL_VARIANT_NO.AsInteger;

                              qryInsSpecModelVariantStages.ParamByName('LAST_STAGE_DEPT_CODE').Value:=
                                cdsImportedSpecLinesModelVariantLinesLAST_STAGE_DEPT_CODE.AsVariant;
                              qryInsSpecModelVariantStages.ParamByName('PAR_FIRST_STAGE_TREATMENT_WDS').Value:=
                                cdsImportedSpecLinesModelVariantLinesPAR_FIRST_STAGE_TREATMENT_WDS.AsVariant;

                              if (cdsXSpecLinesNO_1.AsInteger = 0) then
                                begin
                                  SetParams(qryLastStageInfo.Params, cdsXSpecModelVariantLines);
                                  qryLastStageInfo.Open;
                                  try
                                    SpecLineLastStageNo:= qryLastStageInfoSPEC_LINE_STAGE_NO.AsInteger;
                                  finally
                                    qryLastStageInfo.Close;
                                  end;   { try }
                                end   { if }
                              else
                                SpecLineLastStageNo:= -1;

                              qryInsSpecModelVariantStages.ParamByName('SPEC_LINE_LAST_STAGE_NO').AsInteger:=
                                SpecLineLastStageNo;

                              qryInsSpecModelVariantStages.ParamByName('LOCAL_BRANCH_CODE').AsInteger:=
                                LoginContext.LocalBranchCode;

                              qryInsSpecModelVariantStages.ExecSQL;
                            end;   { if }

                          cdsImportedSpecLinesModelVariantLines.Next;
                        end;   { while }

                      cdsXSpecLines.Next;
                      Inc(SpecLineRecNo);
                    end;   { while }

                  // proverka za lipsvashti etapi
                  qryUnauthorizeWrongSpecModels.ParamByName('SPEC_PRODUCT_CODE').AsInteger:=
                    cdsImportedSpecLinesSPEC_PRODUCT_CODE.AsInteger;
                  qryUnauthorizeWrongSpecModels.ExecSQL;

                  // update na TOTAL_TREATMENT_WORKDAYS
                  qryCalcSpecTotalTreatmentWorkdays.ParamByName('SPEC_PRODUCT_CODE').AsInteger:=
                    cdsImportedSpecLinesSPEC_PRODUCT_CODE.AsInteger;
                  qryCalcSpecTotalTreatmentWorkdays.ParamByName('SPEC_LINE_CODE').AsInteger:=
                    FirstSpecLineCode;
                  qryCalcSpecTotalTreatmentWorkdays.ExecSQL;

                  Next;
                end;   { while }
            finally
              cdsImportedSpecLinesModelVariantLines.Close;
            end;   { try }
          finally
            Close;
          end;   { try }
        end;   { with }
    finally
      cdsXSpecModelVariantLines.Close;
      cdsXSpecLines.Close;
    end;   { try }

    // РґР° РѕРїСЂР°РІРёРј РЅРѕРјРµСЂР°С‚Р° РЅР° СЃРїРµС†РёС„РёРєР°С†РёРёС‚Рµ, РІ РєРѕРёС‚Рѕ Рµ РІРјСЉРєРЅР°С‚Р° РґР°РґРµРЅР°С‚Р°
    qryFixNoAsFormatedText.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= SpecProductCode;
    qryFixNoAsFormatedText.ExecSQL;

    DBDataModule.Commit;
  except
    DBDataModule.Rollback;
    raise;
  end;   { try }
end;

procedure TdmSpecifications.prvSpecBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FCreateLikeOldSpecProductCode:= OwnerData[0];
  SetLength(FDeletedLineCodes, 0);

  FDocsDelta:= OwnerData[1];

  FUpdateSpecProductCode:= 0;
end;

procedure TdmSpecifications.prvSpecUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  inherited;

  if (FCreateLikeOldSpecProductCode > 0) then
    begin
      qryDelSpecLines.ParamByName('SPEC_PRODUCT_CODE').AsFloat:=
        FCreateLikeOldSpecProductCode;
      qryDelSpecLines.ExecSQL;

      qryDelSpecModelVariants.ParamByName('SPEC_PRODUCT_CODE').AsFloat:=
        FCreateLikeOldSpecProductCode;
      qryDelSpecModelVariants.ExecSQL;
    end;   { if }
end;

procedure TdmSpecifications.prvSpecAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FCreateLikeOldSpecProductCode:= 0;
  SetLength(FDeletedLineCodes, 0);
  FDocsDelta:= Unassigned;
end;

procedure TdmSpecifications.qrySpecificationsBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  with qrySpecifications.ParamByName('INCLUDE_DETAIL_CODE') do
    if IsNull then
      AsInteger:= tnRootProductCode;

  with qrySpecifications.Params.ParamByName('AUTHORIZATION_EMPLOYEE_CODE') do
    if (AsInteger = -1) then
      AsInteger:= LoginContext.UserCode;

  with qrySpecifications.Params.ParamByName('AUTHOR_EMPLOYEE_CODE') do
    if (AsInteger = -1) then
      AsInteger:= LoginContext.UserCode;

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_SPEC_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SetCurrentDeptIfNeeded((DataSet as TAbmesSQLQuery).Params.ParamByName('SMVS_DEPT_CODE'), LoginContext);
end;

procedure TdmSpecifications.qrySpecInvestedValueLevelsGraphBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;

  qrySpecInvestedValueLevelsGraph.MacroByName('THE_X_DATES').AsString:=
    GetDateUnitTableName(qrySpecInvestedValueLevelsGraph.Params.ParamByName('DATE_UNIT_CODE').AsInteger);
end;

function TdmSpecifications.ReplaceProduct(Params: OleVariant): Integer;
var
  ParamField: OleVariant;
  ParamName: string;
  ParamValue: Variant;
  i: Integer;
  ChosenSpecProductsParamFound: Boolean;
  ChosenSpecProductsParamValue: string;
begin
  Assert(VarIsArray(Params));

  ChosenSpecProductsParamFound:= False;
  ChosenSpecProductsParamValue:= '';

  for i:= VarArrayLowBound(Params, 1) to VarArrayHighBound(Params, 1) do
    begin
      ParamField:= Params[i];

      ParamName:= ParamField[0];
      ParamValue:= ParamField[1];

      if (ParamName = 'CHOSEN_SPEC_PRODUCTS') then
        begin
          ChosenSpecProductsParamValue:= VarToStr(ParamValue);
          ChosenSpecProductsParamFound:= True;
        end
      else
        SetParamValue(qryReplaceProductInSpecs, ParamName, ParamValue);
    end;   { for }

  with qryReplaceProductInSpecs.ParamByName('INCLUDE_DETAIL_CODE') do
    if IsNull then
      AsInteger:= tnRootProductCode;

  if ChosenSpecProductsParamFound then
    SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
      ChosenSpecProductsParamValue, [qryReplaceProductInSpecs]);
  try
    qryReplaceProductInSpecs.ExecSQL;
    Result:= qryReplaceProductInSpecs.RowsAffected;
  finally
    if ChosenSpecProductsParamFound then
      SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
        ChosenSpecProductsParamValue, [qryReplaceProductInSpecs]);
  end;  { try }
end;

procedure TdmSpecifications.qrySpecModelVariantStagesBeforeScroll(
  DataSet: TDataSet);
begin
  inherited;
  dsSpecModelVariantStages.DataSet:= nil;
end;

procedure TdmSpecifications.prvSpecAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  dsSpecModelVariantStages.DataSet:= qrySpecModelVariantStages;
  dsSpecModelVariantLines.DataSet:= qrySpecModelVariantLines;
end;

procedure TdmSpecifications.prvSpecUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;

  if (FUpdateDS = qrySpecModelVariantLines) and
     (UpdateKind = ukDelete) and
     (E.ErrorCode = 1) then          // magic number, ama ogranichava da ne hvashta vsichki exception-i
    Response:= rrIgnore;
end;

procedure TdmSpecifications.qrySpecModelVariantLinesBeforeScroll(
  DataSet: TDataSet);
begin
  inherited;
  dsSpecModelVariantLines.DataSet:= nil;
end;

procedure TdmSpecifications.SpecOnGetData(DataSet: TCustomClientDataSet;
  qrySpecLinesName, qrySpecModelVariantLinesName, qrySpecModelVariantStagesName,
  qrySMVSOperationsName: string; OriginalSpecProductCode: Integer);
var
  cdsSpecLines: TDataSet;
  cdsSpecModelVariantLines: TDataSet;
  cdsSpecModelVariantStages: TDataSet;
  cdsSMVSOperations: TDataSet;
  SpecProductCode: Integer;
  SpecModelVariantNo: Integer;
  SpecLineCode: Integer;
  SpecLineStageCode: Integer;
  cdsSpecLinesSPEC_PRODUCT_CODE: TField;
  cdsSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TField;
  cdsSpecModelVariantLinesSPEC_LINE_CODE: TField;
  cdsSpecModelVariantStagesSPEC_LINE_STAGE_CODE: TField;
  cdsSpecModelVariantStagesSPEC_PRODUCT_CODE: TField;
  cdsSpecModelVariantStagesORIGINAL_SPEC_PRODUCT_CODE: TField;
  cdsSMVSOperationsSPEC_PRODUCT_CODE: TField;
begin
  if (qrySpecLinesName = '') then
    cdsSpecLines:= DataSet
  else
    cdsSpecLines:= (DataSet.FieldByName(qrySpecLinesName) as TDataSetField).NestedDataSet;

  cdsSpecModelVariantLines:= (cdsSpecLines.FieldByName(qrySpecModelVariantLinesName) as TDataSetField).NestedDataSet;
  cdsSpecModelVariantStages:= (cdsSpecModelVariantLines.FieldByName(qrySpecModelVariantStagesName) as TDataSetField).NestedDataSet;
  cdsSMVSOperations:= (cdsSpecModelVariantStages.FieldByName(qrySMVSOperationsName) as TDataSetField).NestedDataSet;

  cdsSpecLinesSPEC_PRODUCT_CODE:= cdsSpecLines.FieldByName('SPEC_PRODUCT_CODE');
  cdsSpecModelVariantLinesSPEC_MODEL_VARIANT_NO:= cdsSpecModelVariantLines.FieldByName('SPEC_MODEL_VARIANT_NO');
  cdsSpecModelVariantLinesSPEC_LINE_CODE:= cdsSpecModelVariantLines.FieldByName('SPEC_LINE_CODE');
  cdsSpecModelVariantStagesSPEC_PRODUCT_CODE:= cdsSpecModelVariantStages.FieldByName('SPEC_PRODUCT_CODE');
  cdsSpecModelVariantStagesSPEC_LINE_STAGE_CODE:= cdsSpecModelVariantStages.FieldByName('SPEC_LINE_STAGE_CODE');
  cdsSMVSOperationsSPEC_PRODUCT_CODE:= cdsSMVSOperations.FieldByName('SPEC_PRODUCT_CODE');

  cdsSpecModelVariantStagesORIGINAL_SPEC_PRODUCT_CODE:=
    cdsSpecModelVariantStages.FindField('ORIGINAL_SPEC_PRODUCT_CODE');

  if Assigned(cdsSpecLines.FindField('ORIGINAL_SPEC_PRODUCT_CODE')) then
    SpecProductCode:= cdsSpecLines.FieldByName('ORIGINAL_SPEC_PRODUCT_CODE').AsInteger
  else
    SpecProductCode:= DataSet.FieldByName('SPEC_PRODUCT_CODE').AsInteger;

  cdsAllStages.Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= SpecProductCode;
  cdsAllSMVSOperations.Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= SpecProductCode;

  cdsAllStages.Open;
  try
    cdsAllSMVSOperations.Open;
    try
      cdsSpecLines.First;
      while not cdsSpecLines.Eof do
        begin
          cdsSpecModelVariantLines.First;
          while not cdsSpecModelVariantLines.Eof do
            begin
              with cdsSpecModelVariantStages do
                begin
                  SpecModelVariantNo:= cdsSpecModelVariantLinesSPEC_MODEL_VARIANT_NO.AsInteger;
                  SpecLineCode:= cdsSpecModelVariantLinesSPEC_LINE_CODE.AsInteger;

                  cdsAllStages.First;
                  cdsAllStages.Locate('SPEC_MODEL_VARIANT_NO; SPEC_LINE_CODE',
                    VarArrayOf([SpecModelVariantNo, SpecLineCode]), []);

                  while (not cdsAllStages.Eof) and
                        (cdsAllStagesSPEC_MODEL_VARIANT_NO.AsInteger = SpecModelVariantNo) and
                        (cdsAllStagesSPEC_LINE_CODE.AsInteger = SpecLineCode) do
                    begin
                      Append;
                      try
                        AssignFields(cdsAllStages);
                        cdsSpecModelVariantStagesSPEC_PRODUCT_CODE.AsVariant:=
                          cdsSpecLinesSPEC_PRODUCT_CODE.AsVariant;

                        if Assigned(cdsSpecModelVariantStagesORIGINAL_SPEC_PRODUCT_CODE) then
                          cdsSpecModelVariantStagesORIGINAL_SPEC_PRODUCT_CODE.AsInteger:= OriginalSpecProductCode;

                        Post;
                      except
                        Cancel;
                        raise;
                      end;   { try }

                      SpecLineStageCode:= cdsSpecModelVariantStagesSPEC_LINE_STAGE_CODE.AsInteger;

                      with cdsSMVSOperations do
                        begin
                          cdsAllSMVSOperations.First;
                          cdsAllSMVSOperations.Locate('SPEC_MODEL_VARIANT_NO; SPEC_LINE_CODE; SPEC_LINE_STAGE_CODE',
                            VarArrayOf([SpecModelVariantNo, SpecLineCode, SpecLineStageCode]), []);

                          while (not cdsAllSMVSOperations.Eof) and
                                (cdsAllSMVSOperationsSPEC_MODEL_VARIANT_NO.AsInteger = SpecModelVariantNo) and
                                (cdsAllSMVSOperationsSPEC_LINE_CODE.AsInteger = SpecLineCode) and
                                (cdsAllSMVSOperationsSPEC_LINE_STAGE_CODE.AsInteger = SpecLineStageCode) do
                            begin
                              Append;
                              try
                                AssignFields(cdsAllSMVSOperations);
                                cdsSMVSOperationsSPEC_PRODUCT_CODE.AsVariant:=
                                  cdsSpecLinesSPEC_PRODUCT_CODE.AsVariant;
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

              cdsSpecModelVariantLines.Next;
            end;   { while not cdsSpecModelVariantLines.Eof }
          cdsSpecLines.Next;
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

procedure TdmSpecifications.qryCLSpecModelVariantLinesBeforeScroll(
  DataSet: TDataSet);
begin
  inherited;
  dsCLSpecModelVariantLines.DataSet:= nil;
end;

procedure TdmSpecifications.qryCLSpecModelVariantStagesBeforeScroll(
  DataSet: TDataSet);
begin
  inherited;
  dsCLSpecModelVariantStages.DataSet:= nil;
end;

procedure TdmSpecifications.prvCLSpecAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  dsCLSpecModelVariantStages.DataSet:= qryCLSpecModelVariantStages;
  dsCLSpecModelVariantLines.DataSet:= qryCLSpecModelVariantLines;
end;

procedure TdmSpecifications.qryInsertSpecModelVariantLinesBeforeScroll(
  DataSet: TDataSet);
begin
  inherited;
  dsInsertSpecModelVariantLines.DataSet:= nil;
end;

procedure TdmSpecifications.qryInsertSpecLineModelStagesBeforeScroll(
  DataSet: TDataSet);
begin
  inherited;
  dsInsertSpecModelVariantStages.DataSet:= nil;
end;

procedure TdmSpecifications.prvInsertSpecLinesAfterGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  dsInsertSpecModelVariantStages.DataSet:= qryInsertSpecLineModelStages;
  dsInsertSpecModelVariantLines.DataSet:= qryInsertSpecModelVariantLines;
end;

procedure TdmSpecifications.prvInsertSpecLinesGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  inherited;

  SpecOnGetData(
    DataSet,
    '',
    'qryInsertSpecModelVariantLines',
    'qryInsertSpecLineModelStages',
    'qryInsertSMVSOperations'
  );
end;

procedure TdmSpecifications.qrySpecAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmSpecifications.qrySpecificationsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_SPEC_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmSpecifications.qrySpecBeforeProviderEndTransaction(
  DataSet: TDataSet; Commit: Boolean);
begin
  inherited;

  if Commit then
    begin
      qryUpdSpecLineNosToPositive.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= FUpdateSpecProductCode;
      qryUpdSpecLineNosToPositive.ExecSQL;

      with qryCheckAuthorizedStages do
        begin
          ParamByName('SPEC_PRODUCT_CODE').AsInteger:= FUpdateSpecProductCode;

          Open;
          try
            if not (Bof and Eof) then
              raise Exception.Create(SIncorrectModelVariantId + '(' +
                'VariantNo:i=' + InternalIntToStr(qryCheckAuthorizedStagesSPEC_MODEL_VARIANT_NO.AsInteger) + ',' +
                'StageNo:s=' + InternalEncodeString(qryCheckAuthorizedStagesNO_AS_TEXT.AsString) + ')');
          finally
            Close;
          end;  { try }
        end;  { with }

      // check operation docs
      with qryCheckOperationDocs do
        begin
          ParamByName('SPEC_PRODUCT_CODE').AsInteger:= FUpdateSpecProductCode;
          Open;
          try
            if (qryCheckOperationDocsWRONG_OPERATION_DOC_EXISTS.AsInteger > 0) then
              raise Exception.Create('Incorrect operation docs!');
          finally
            Close;
          end;  { try }
        end;  { with }
    end;
end;

procedure TdmSpecifications.prvSpecificationsBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukDelete) then
    begin
      SetParams(qryNullModelSpecVersion.Params, DeltaDS);
      qryNullModelSpecVersion.ExecSQL;
    end;
end;

procedure TdmSpecifications.prvDSSpecBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  Applied:= (SourceDS <> qryDSSpecModelVariantLines);
end;

procedure TdmSpecifications.prvDSSpecGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  cdsDSSpecLines: TDataSet;
  cdsDSSpecModelVariantLines: TDataSet;
  cdsDSSpecModel: TDataSet;
  cdsDSSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TField;
  cdsDSSpecModelVariantLinesSPEC_LINE_CODE: TField;
  cdsAllDSSpecModelsSPEC_MODEL_VARIANT_NO: TField;
  cdsAllDSSpecModelsSPEC_LINE_CODE: TField;
  SpecModelVariantNo: Integer;
  SpecLineCode: Integer;
begin
  inherited;

  cdsDSSpecLines:= (DataSet.FieldByName(qryDSSpecLines.Name) as TDataSetField).NestedDataSet;
  cdsDSSpecModelVariantLines:= (cdsDSSpecLines.FieldByName(qryDSSpecModelVariantLines.Name) as TDataSetField).NestedDataSet;
  cdsDSSpecModel:= (cdsDSSpecModelVariantLines.FieldByName(qryDSSpecModel.Name) as TDataSetField).NestedDataSet;

  cdsDSSpecModelVariantLinesSPEC_MODEL_VARIANT_NO:= cdsDSSpecModelVariantLines.FieldByName('SPEC_MODEL_VARIANT_NO');
  cdsDSSpecModelVariantLinesSPEC_LINE_CODE:= cdsDSSpecModelVariantLines.FieldByName('SPEC_LINE_CODE');
  cdsAllDSSpecModelsSPEC_MODEL_VARIANT_NO:= cdsAllDSSpecModels.FieldByName('SPEC_MODEL_VARIANT_NO');
  cdsAllDSSpecModelsSPEC_LINE_CODE:= cdsAllDSSpecModels.FieldByName('SPEC_LINE_CODE');

  SetParams(cdsAllDSSpecModels.Params, DataSet);
  cdsAllDSSpecModels.Open;
  try
    cdsDSSpecLines.First;
    while not cdsDSSpecLines.Eof do
      begin
        cdsDSSpecModelVariantLines.First;
        while not cdsDSSpecModelVariantLines.Eof do
          begin
            SpecModelVariantNo:= cdsDSSpecModelVariantLinesSPEC_MODEL_VARIANT_NO.AsInteger;
            SpecLineCode:= cdsDSSpecModelVariantLinesSPEC_LINE_CODE.AsInteger;

            cdsAllDSSpecModels.First;
            cdsAllDSSpecModels.Locate('SPEC_MODEL_VARIANT_NO; SPEC_LINE_CODE',
              VarArrayOf([SpecModelVariantNo, SpecLineCode]), []);

            while (not cdsAllDSSpecModels.Eof) and
                  (cdsAllDSSpecModelsSPEC_MODEL_VARIANT_NO.AsInteger = SpecModelVariantNo) and
                  (cdsAllDSSpecModelsSPEC_LINE_CODE.AsInteger = SpecLineCode) do
              begin
                cdsDSSpecModel.Append;
                try
                  AssignFields(cdsAllDSSpecModels, cdsDSSpecModel);
                  cdsDSSpecModel.Post;
                except
                  cdsDSSpecModel.Cancel;
                  raise;
                end;   { try }

                cdsAllDSSpecModels.Next;
              end;   { while }

            cdsDSSpecModelVariantLines.Next;
          end;  { while }

        cdsDSSpecLines.Next;
      end;  { while }
  finally
    cdsAllDSSpecModels.Close;
  end;  { try }

  // workaround na posledvashto goliamo zamisliane v TBaseProvider.DoOnGetData na proverka za ChangeCount > 0
  DataSet.AppendRecord([]);
  DataSet.MergeChangeLog;
  DataSet.Delete;
end;

procedure TdmSpecifications.qryDSSpecModelVariantLinesBeforeScroll(
  DataSet: TDataSet);
begin
  inherited;
  dsDSSpecModelVariantLines.DataSet:= nil;
end;

procedure TdmSpecifications.prvDSSpecAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  dsDSSpecModelVariantLines.DataSet:= qryDSSpecModelVariantLines;
end;

procedure TdmSpecifications.prvDSSpecBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmSpecifications.prvDSSpecAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmSpecifications.qryDSSpecAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

function TdmSpecifications.SpecInsertionsCount(
  SpecProductCode: Integer): Integer;
begin
  with qrySpecInsertionsCount do
    begin
      ParamByName('SPEC_PRODUCT_CODE').AsInteger:= SpecProductCode;

      Open;
      try
        Result:= qrySpecInsertionsCountSPEC_INSERTIONS_COUNT.AsInteger;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmSpecifications.GetDateUnitTableName(
  DateUnitCode: Integer): string;
begin
  qryGetPeriodFieldNames.ParamByName('THE_DATE_UNIT_CODE').AsInteger:= DateUnitCode;
  qryGetPeriodFieldNames.Open;
  try
    Result:= qryGetPeriodFieldNamesTABLE_NAME.AsString;
  finally
    qryGetPeriodFieldNames.Close;
  end;
end;

function TdmSpecifications.GetSpecDepth(SpecProductCode: Integer): Integer;
begin
  qrySpecDepth.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= SpecProductCode;
  qrySpecDepth.Open;
  Result:= qrySpecDepth.TempOpen /
    function: Integer begin
      Result:= qrySpecDepthSPEC_DEPTH.AsInteger;
    end;
end;

function TdmSpecifications.GetProductInlineModelCount(const AProductCode: Integer): Integer;
begin
  qryGetInlineModelCount.ParamByName('PRODUCT_CODE').AsInteger:= AProductCode;
  Result:= qryGetInlineModelCount.TempOpen /
    function: Integer begin
      Result:= qryGetInlineModelCountINLINE_MODEL_COUNT.AsInteger;
    end;
end;

function TdmSpecifications.GetSpecType(SpecProductCode: Integer): Integer;
begin
  with qrySpecType do
    begin
      ParamByName('SPEC_PRODUCT_CODE').AsInteger:= SpecProductCode;

      Open;
      try
        Result:= qrySpecTypeSPEC_TYPE_CODE.AsInteger;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

initialization
  TdmSpecificationsProxy.FSingleton:= TdmSpecificationsProxy.Create(TdmSpecifications);

finalization
  FreeAndNil(TdmSpecificationsProxy.FSingleton);
end.
