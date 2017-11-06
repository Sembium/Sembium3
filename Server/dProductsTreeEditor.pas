unit dProductsTreeEditor;
                      
interface

uses
  Windows, Messages, SysUtils, Classes, Db, DBClient, Provider,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dNomWithParamsTree, AbmesClientDataSet, WideStrings, FMTBcd,
  SqlExpr, AbmesSQLConnection, JvStringHolder, DBXDevartOracle, uSmartLock, xChosenNodes;

type
  TdmProductsTreeEditor = class(TdmNomWithParamsTree)
    qryNodeParamsPRODUCT_CODE: TAbmesFloatField;
    qryNodeParamsPRODUCT_PARAM_CODE: TAbmesFloatField;
    qryNodeParamsPRODUCT_PARAM_NAME: TAbmesWideStringField;
    qryNodeChildrenPRODUCT_CODE: TAbmesFloatField;
    qryNodeChildrenPARENT_CODE: TAbmesFloatField;
    qryNodeChildrenNAME: TAbmesWideStringField;
    qryNodeChildrenCUSTOM_CODE: TAbmesFloatField;
    qryNodeChildrenMEASURE_CODE: TAbmesFloatField;
    qryNodeChildrenACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryNodeChildrenACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryNodeChildrenTECH_MEASURE_CODE: TAbmesFloatField;
    qryNodeChildrenTECH_MEASURE_COEF: TAbmesFloatField;
    qryNodeChildrenIS_VAT_FREE: TAbmesFloatField;
    qryNodeChildrenNAME_PREFIX: TAbmesWideStringField;
    qryNodeChildrenNAME_SUFFIX: TAbmesWideStringField;
    qryNodeChildrenNOTES: TAbmesWideStringField;
    qryNodeParamsPRODUCT_PARAM_ORDER_NO: TAbmesFloatField;
    qryUpdateChildren: TAbmesSQLQuery;
    qryNodeChildrenPARENT_MEASURE_CODE: TAbmesFloatField;
    qryNodeChildrenPARENT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryNodeChildrenPARENT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryNodeChildrenPARENT_TECH_MEASURE_CODE: TAbmesFloatField;
    qryNodeChildrenPARENT_TECH_MEASURE_COEF: TAbmesFloatField;
    qryNodeChildrenHAS_DOCUMENTATION: TAbmesFloatField;
    qryNodeChildrenSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryNodeChildrenTRANSPORT_MEASURE_CODE: TAbmesFloatField;
    qryNodeChildrenTRANSPORT_MEASURE_COEF: TAbmesFloatField;
    qryNodeChildrenPARENT_TRANSPORT_MEASURE_CODE: TAbmesFloatField;
    qryNodeChildrenPARENT_TRANSPORT_MEASURE_COEF: TAbmesFloatField;
    qryNodeChildrenIS_GROUP: TAbmesFloatField;
    qryNodeChildrenSELF_EXISTENT_STATUS_CODE: TAbmesFloatField;
    qryNodeChildrenPAR_SELF_EXISTENT_STATUS_CODE: TAbmesFloatField;
    prvProductLocations: TDataSetProvider;
    qryProductLocations: TAbmesSQLQuery;
    qryProductLocationsPRODUCT_CODE: TAbmesFloatField;
    qryProductLocationsDEPT_CODE: TAbmesFloatField;
    qryProductLocationsSTORE_CODE: TAbmesFloatField;
    qryProductLocationsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryProductLocationsDEPT_NAME: TAbmesWideStringField;
    qryInsProductLocations: TAbmesSQLQuery;
    qryUpdProductLocations: TAbmesSQLQuery;
    qryDelProductLocations: TAbmesSQLQuery;
    qryProductLocationsIS_INHERITED: TAbmesFloatField;
    qryProductLocationsPRODUCT_LEVEL: TAbmesFloatField;
    qryNodeChildrenDOC_BRANCH_CODE: TAbmesFloatField;
    qryNodeChildrenDOC_CODE: TAbmesFloatField;
    qryProductMinQuantities: TAbmesSQLQuery;
    qryProductMinQuantitiesPRODUCT_CODE: TAbmesFloatField;
    qryProductMinQuantitiesSTORE_CODE: TAbmesFloatField;
    qryProductMinQuantitiesIS_INHERITED: TAbmesFloatField;
    qryProductMinQuantitiesPRODUCT_LEVEL: TAbmesFloatField;
    prvProductMinQuantities: TDataSetProvider;
    qryProductMinQuantitiesMIN_QUANTITY: TAbmesFloatField;
    qryInsProductMinQuantities: TAbmesSQLQuery;
    qryUpdProductMinQuantities: TAbmesSQLQuery;
    qryDelProductMinQuantities: TAbmesSQLQuery;
    qryNodeChildrenWORKDAYS_TO_EXIST: TAbmesFloatField;
    qryNodeChildrenTRANSIENT_STATUS_CODE: TAbmesFloatField;
    qryNodeChildrenPAR_TRANSIENT_STATUS_CODE: TAbmesFloatField;
    qryNodeChildrenPARENT_WORKDAYS_TO_EXIST: TAbmesFloatField;
    qryProductLocationsSTORE_FULL_NAME: TAbmesWideStringField;
    qryProductMinQuantitiesSTORE_FULL_NAME: TAbmesWideStringField;
    qryNodeChildrenDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    qryNodeChildrenDOC_IS_COMPLETE: TAbmesFloatField;
    qryNodeChildrenACTIVE_DI_COUNT: TAbmesFloatField;
    qryNodeChildrenUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryNodeChildrenUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField;
    qryProductMinQuantitiesPRODUCT_STORE_CODE: TAbmesFloatField;
    qryProductMinQuantitiesBEGIN_DATE: TAbmesSQLTimeStampField;
    qryProductMinQuantitiesEND_DATE: TAbmesSQLTimeStampField;
    qryNewProductStoreCode: TAbmesSQLQuery;
    qryNewProductStoreCodeNEW_PRODUCT_STORE_CODE: TAbmesFloatField;
    qryDelProductStores: TAbmesSQLQuery;
    qryProductMinQuantitiesACCOUNT_MIN_QUANTITY: TAbmesFloatField;
    qryProductMinQuantitiesACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryProductMinQuantitiesMEASURE_CODE: TAbmesFloatField;
    qryProductMinQuantitiesACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryNodeChildrenIS_USED_BY_SALES: TAbmesFloatField;
    qryNodeChildrenUSED_BY_SALES_PR_CODE: TAbmesFloatField;
    qryNodeChildrenIS_USED_BY_SALE_PRODUCTION: TAbmesFloatField;
    qryNodeChildrenUSED_BY_SALE_PROD_PR_CODE: TAbmesFloatField;
    qryNodeChildrenIS_USED_BY_ENV_PRODUCTION: TAbmesFloatField;
    qryNodeChildrenUSED_BY_ENV_PROD_PR_CODE: TAbmesFloatField;
    qryNodeChildrenIS_PROVIDED_BY_DELIVERIES: TAbmesFloatField;
    qryNodeChildrenPROV_BY_DELIVERIES_PR_CODE: TAbmesFloatField;
    qryNodeChildrenIS_PROVIDED_BY_SALE_PRODUCTION: TAbmesFloatField;
    qryNodeChildrenPROV_BY_SALE_PROD_PR_CODE: TAbmesFloatField;
    qryNodeChildrenIS_PROVIDED_BY_ENV_PRODUCTION: TAbmesFloatField;
    qryNodeChildrenPROV_BY_ENV_PROD_PR_CODE: TAbmesFloatField;
    qryNodeChildrenIS_COMMON: TAbmesFloatField;
    qryNodeChildrenCOMMON_STATUS_CODE: TAbmesFloatField;
    qryNodeChildrenHAS_JOINED_PRODUCT: TAbmesFloatField;
    qryNodeChildrenIS_JOINED_PRODUCT: TAbmesFloatField;
    qryNodeChildrenIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    qryNodeChildrenPRODUCT_ORIGIN_CODE: TAbmesFloatField;
    prvProductOrigins: TDataSetProvider;
    qryProductOrigins: TAbmesSQLQuery;
    qryProductOriginsPRODUCT_ORIGIN_CODE: TAbmesFloatField;
    qryProductOriginsPRODUCT_ORIGIN_NAME: TAbmesWideStringField;
    qryProductOriginsPRODUCT_ORIGIN_ABBREV: TAbmesWideStringField;
    qryCommonProductInfo: TAbmesSQLQuery;
    prvCommonProductInfo: TDataSetProvider;
    qryCommonProductInfoCOMMON_PRODUCTS_LEVEL_NO: TAbmesFloatField;
    qryCommonProductInfoCOMMON_PRODUCTS_SUB_LEVELS: TAbmesFloatField;
    qryProductMinQuantitiesDOC_BRANCH_CODE: TAbmesFloatField;
    qryProductMinQuantitiesDOC_CODE: TAbmesFloatField;
    qryProductMinQuantitiesHAS_DOC_ITEMS: TAbmesFloatField;
    prvProductPeriods: TDataSetProvider;
    qryProductPeriods: TAbmesSQLQuery;
    qryProductPeriodsPRODUCT_CODE: TAbmesFloatField;
    qryProductPeriodsPRODUCT_PERIOD_CODE: TAbmesFloatField;
    qryProductPeriodsBEGIN_DATE: TAbmesSQLTimeStampField;
    qryProductPeriodsEND_DATE: TAbmesSQLTimeStampField;
    qryProductPeriodsDOC_BRANCH_CODE: TAbmesFloatField;
    qryProductPeriodsDOC_CODE: TAbmesFloatField;
    qryProductPeriodsHAS_DOC_ITEMS: TAbmesFloatField;
    qryProductPeriodsPRECISION_LEVEL_CODE: TAbmesFloatField;
    qryProductPeriodsBALANCE_QUANTITY: TAbmesFloatField;
    qryProductPeriodsINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    qryProductPeriodsINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    qryProductPeriodsINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    qryProductPeriodsINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    qryProductPeriodsINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    qryProductPeriodsINVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    qryProductPeriodsSALE_STORE_CODE: TAbmesFloatField;
    qryProductPeriodsSALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsSALE_ACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    qryProductPeriodsSALE_LEASE_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsSALE_LEASE_CURRENCY_CODE: TAbmesFloatField;
    qryProductPeriodsSALE_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryProductPeriodsDELIVERY_STORE_CODE: TAbmesFloatField;
    qryProductPeriodsDELIVERY_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsDELIVERY_ACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    qryProductPeriodsDELIVERY_LEASE_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsDELIVERY_LEASE_CURRENCY_CODE: TAbmesFloatField;
    qryProductPeriodsDELIVERY_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryProductPeriodsIS_PSD_PRICE_FROM_DELIVERY: TAbmesFloatField;
    qryNewProductPeriodCode: TAbmesSQLQuery;
    qryNewProductPeriodCodeNEW_PRODUCT_PERIOD_CODE: TAbmesFloatField;
    qryProductPeriodsHeader: TAbmesSQLQuery;
    dsProductPeriodsHeader: TDataSource;
    qryProductPeriodsSALE_STORE_IDENTIFIER: TAbmesWideStringField;
    qryProductPeriodsDELIVERY_STORE_IDENTIFIER: TAbmesWideStringField;
    qryProductPeriodsPREV_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    qryProductPeriodsPREV_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    qryProductPeriodsPREV_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    qryProductPeriodsPREV_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    qryProductPeriodsPREV_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    qryProductPeriodsPREV_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    qryProductPeriodsCMMN_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    qryProductPeriodsCMMN_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    qryProductPeriodsCMMN_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    qryProductPeriodsCMMN_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    qryProductPeriodsCMMN_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    qryProductPeriodsCMMN_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    qryProductPeriodsSALE_ACQUIRE_CURRENCY_FIXING: TAbmesFloatField;
    qryProductPeriodsDELIVERY_ACQUIRE_CURR_FIXING: TAbmesFloatField;
    qryProductPeriodsACC_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    qryProductPeriodsACC_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    qryProductPeriodsACC_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    qryProductPeriodsACC_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    qryProductPeriodsACC_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    qryProductPeriodsACC_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    qryProductPeriodsACC_SALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsACC_SALE_LEASE_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsACC_DLVRY_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsACC_DLVRY_LEASE_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsACC_BALANCE_QUANTITY: TAbmesFloatField;
    qryProductPeriodsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryProductPeriodsCREATE_DATE: TAbmesSQLTimeStampField;
    qryProductPeriodsCREATE_TIME: TAbmesSQLTimeStampField;
    qryProductPeriodsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryProductPeriodsCHANGE_DATE: TAbmesSQLTimeStampField;
    qryProductPeriodsCHANGE_TIME: TAbmesSQLTimeStampField;
    qryNodeChildrenSPEC_AUTHOR_EMPLOYEE_CODE: TAbmesFloatField;
    qryNodeChildrenCOMMON_PRODUCT_CODE: TAbmesFloatField;
    qryUpdCommonProduct: TAbmesSQLQuery;
    qryProductPeriodsHeaderPRODUCT_CODE: TAbmesFloatField;
    qryProductPeriodsHeaderPARENT_CODE: TAbmesFloatField;
    qryProductPeriodsHeaderMEASURE_ABBREV: TAbmesWideStringField;
    qryProductPeriodsHeaderACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryProductPeriodsHeaderACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryProductPeriodsHeaderIS_USED_BY_SALES: TAbmesFloatField;
    qryProductPeriodsHeaderUSED_BY_SALES_PR_NO: TAbmesFloatField;
    qryProductPeriodsHeaderIS_PROVIDED_BY_DELIVERIES: TAbmesFloatField;
    qryProductPeriodsHeaderPROV_BY_DELIVERIES_PR_NO: TAbmesFloatField;
    qryProductPeriodsHeaderCOMMON_PRODUCT_CODE: TAbmesFloatField;
    qryProductMinQuantitiesIS_PAST: TAbmesFloatField;
    qryProductMinQuantitiesIS_PRESENT: TAbmesFloatField;
    qryProductMinQuantitiesIS_FUTURE: TAbmesFloatField;
    qryProductPeriodsSALE_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    qryProductPeriodsDELIVERY_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    qryProductPeriodsHeaderTECH_MEASURE_COEF: TAbmesFloatField;
    qryNodeChildrenPRODUCT_CLASS_CODE: TAbmesFloatField;
    qryNodeParamsPRODUCT_CLASS_CODE: TAbmesFloatField;
    qryProductPeriodsHeaderPRODUCT_CLASS_CODE: TAbmesFloatField;
    qrySetSkipPeriodChecksProductCode: TAbmesSQLQuery;
    qryCheckProductPeriods: TAbmesSQLQuery;
    qryNodeChildrenBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    qryNodeChildrenBND_NORMAL_GROUP_PRODUCT_CODE: TAbmesFloatField;
    qryNodeParamsNOM_NO: TAbmesFloatField;
    qryProductPeriodsIS_PAST: TAbmesFloatField;
    qryProductPeriodsIS_PRESENT: TAbmesFloatField;
    qryProductPeriodsIS_FUTURE: TAbmesFloatField;
    dsProductPeriods: TDataSource;
    qryProdPerSpecModelVariants: TAbmesSQLQuery;
    qryProdPerSpecModelVariantsPRODUCT_CODE: TAbmesFloatField;
    qryProdPerSpecModelVariantsPRODUCT_PERIOD_CODE: TAbmesFloatField;
    qryProdPerSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryProdPerSpecModelVariantsIS_EST_VARIANT: TAbmesFloatField;
    qryProdPerSpecModelVariantsSPEC_MODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    qryClearIsEstVariant: TAbmesSQLQuery;
    qryNotProdPerSpecModelVariants: TAbmesSQLQuery;
    qryNotProdPerSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryNotProdPerSpecModelVariantsSPEC_MODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    qrySpecModelVariants: TAbmesSQLQuery;
    qrySpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySpecModelVariantsSPEC_MODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    prvSpecModelVariants: TDataSetProvider;
    qryNotProdPerSpecModelVariantsPRODUCT_CODE: TAbmesFloatField;
    qryNotProdPerSpecModelVariantsPRODUCT_PERIOD_CODE: TAbmesFloatField;
    qryProdPerSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField;
    qryProdPerSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField;
    qryProdPerSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField;
    qryNotProdPerSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField;
    qryNotProdPerSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField;
    qryNotProdPerSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField;
    qrySpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField;
    qrySpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField;
    qrySpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField;
    qryProdPerSpecModelVariantsSMV_NO: TAbmesFloatField;
    qryNotProdPerSpecModelVariantsSMV_NO: TAbmesFloatField;
    qryNodeChildrenPRODUCT_SPEC_REQUIREMENT_CODE: TAbmesFloatField;
    qryNodeChildrenPARENT_PRODUCT_SPEC_REQ_CODE: TAbmesFloatField;
    qryNodeChildrenIS_STRATEGIC: TAbmesFloatField;
    qryProductSets: TAbmesSQLQuery;
    prvProductSets: TDataSetProvider;
    qryNewProductSetCode: TAbmesSQLQuery;
    qryNewProductSetCodeNEW_PRODUCT_SET_CODE: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_PRECISION_LEVEL: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_BALANCE_QUANTITY: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_INV_LEVEL_1_VALUE: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_INV_LEVEL_2_VALUE: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_INV_LEVEL_3_VALUE: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_INV_LEVEL_4_VALUE: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_INV_LEVEL_5_VALUE: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_INV_LEVEL_6_VALUE: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_S_STORE: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_S_ACQUIRE_PRICE: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_S_LEASE_PRICE: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_S_RESOLVE_DUR_DAYS: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_D_STORE: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_D_ACQUIRE_PRICE: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_D_LEASE_PRICE: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_D_RESOLVE_DUR_DAYS: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_IS_PSD_PRICE_FROM_DLV: TAbmesFloatField;
    qryProductPeriodsINHRT_PRECISION_LEVEL_CODE: TAbmesFloatField;
    qryProductPeriodsINHRT_BALANCE_QUANTITY: TAbmesFloatField;
    qryProductPeriodsINHRT_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    qryProductPeriodsINHRT_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    qryProductPeriodsINHRT_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    qryProductPeriodsINHRT_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    qryProductPeriodsINHRT_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    qryProductPeriodsINHRT_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    qryProductPeriodsINHRT_S_STORE_CODE: TAbmesFloatField;
    qryProductPeriodsINHRT_S_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsINHRT_S_ACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    qryProductPeriodsINHRT_S_LEASE_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsINHRT_S_LEASE_CURRENCY_CODE: TAbmesFloatField;
    qryProductPeriodsINHRT_S_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryProductPeriodsINHRT_S_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    qryProductPeriodsINHRT_D_STORE_CODE: TAbmesFloatField;
    qryProductPeriodsINHRT_D_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsINHRT_D_ACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    qryProductPeriodsINHRT_D_LEASE_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsINHRT_D_LEASE_CURRENCY_CODE: TAbmesFloatField;
    qryProductPeriodsINHRT_D_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryProductPeriodsINHRT_D_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    qryProductPeriodsINHRT_IS_PSD_PRICE_FROM_DLVRY: TAbmesFloatField;
    qryInsertProductSetChosenProductParam: TAbmesSQLQuery;
    qryInsertProductSetChosenProductParamValue: TAbmesSQLQuery;
    qryInsertProductSetChosenProduct: TAbmesSQLQuery;
    qryDeleteProductSetChosenProducts: TAbmesSQLQuery;
    qryProductSet: TAbmesSQLQuery;
    qryProductSetPRODUCT_SET_CODE: TAbmesFloatField;
    qryProductSetPRODUCT_SET_NO: TAbmesFloatField;
    qryProductSetPRODUCT_SET_NAME: TAbmesWideStringField;
    qryProductSetBEGIN_DATE: TAbmesSQLTimeStampField;
    qryProductSetEND_DATE: TAbmesSQLTimeStampField;
    qryProductSetCHOSEN_PRODUCTS: TBlobField;
    qryProductSetsPRODUCT_SET_CODE: TAbmesFloatField;
    qryProductSetsPRODUCT_SET_NO: TAbmesFloatField;
    qryProductSetsPRODUCT_SET_NAME: TAbmesWideStringField;
    qryProductSetsBEGIN_DATE: TAbmesSQLTimeStampField;
    qryProductSetsEND_DATE: TAbmesSQLTimeStampField;
    prvProductSet: TDataSetProvider;
    qryProductPeriodsHeaderIS_CONCRETE_PRODUCT: TAbmesFloatField;
    qryProductSetChosenProducts: TAbmesSQLQuery;
    qryProductSetChosenProductsPRODUCT_CODE: TAbmesFloatField;
    qryProductSetChosenProductParams: TAbmesSQLQuery;
    qryProductSetChosenProductParamsPRODUCT_PARAM_CODE: TAbmesFloatField;
    qryProductSetChosenProductParamValues: TAbmesSQLQuery;
    qryProductSetChosenProductParamValuesPRODUCT_PARAM_VALUE_CODE: TAbmesFloatField;
    qryProductSetChosenProductParamValuesVALUE_NOM_CODE: TAbmesFloatField;
    qryProductSetChosenProductParamValuesVALUE_NOM_ITEM_CODE: TAbmesFloatField;
    qryProductSetChosenProductParamValuesVALUE_FLOAT_MIN: TAbmesFloatField;
    qryProductSetChosenProductParamValuesVALUE_FLOAT_MAX: TAbmesFloatField;
    qryProductPeriodsACC_INHRT_INV_LEVEL_1_VALUE: TAbmesFloatField;
    qryProductPeriodsACC_INHRT_INV_LEVEL_2_VALUE: TAbmesFloatField;
    qryProductPeriodsACC_INHRT_INV_LEVEL_3_VALUE: TAbmesFloatField;
    qryProductPeriodsACC_INHRT_INV_LEVEL_4_VALUE: TAbmesFloatField;
    qryProductPeriodsACC_INHRT_INV_LEVEL_5_VALUE: TAbmesFloatField;
    qryProductPeriodsACC_INHRT_INV_LEVEL_6_VALUE: TAbmesFloatField;
    qryProductPeriodsINHRT_S_STORE_IDENTIFIER: TAbmesWideStringField;
    qryProductPeriodsINHRT_D_STORE_IDENTIFIER: TAbmesWideStringField;
    qryProductPeriodsACC_INHRT_S_ACQ_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsACC_INHRT_S_LEASE_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsACC_INHRT_D_ACQ_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsACC_INHRT_D_LEASE_SINGLE_PRICE: TAbmesFloatField;
    qryProductPeriodsACC_INHRT_BALANCE_QUANTITY: TAbmesFloatField;
    qryUpdateProductSetProductsForProductSet: TAbmesSQLQuery;
    qryNewProductNo: TAbmesSQLQuery;
    qryNewProductNoNEW_PRODUCT_NO: TAbmesFloatField;
    qryUpdateProductSetProductsForProduct: TAbmesSQLQuery;
    qryProductSetChosenProductParamValuesVALUE_STRING: TAbmesWideStringField;
    qryNodeChildrenIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    qryShowNodeParamsNOM_DOC_BRANCH_CODE: TAbmesFloatField;
    qryShowNodeParamsNOM_DOC_CODE: TAbmesFloatField;
    qryShowNodeParamsNOM_HAS_DOC_ITEMS: TAbmesFloatField;
    qryShowNodeParamsVALUE_NOM_ITEM_DOC_BRANCH_CODE: TAbmesFloatField;
    qryShowNodeParamsVALUE_NOM_ITEM_DOC_CODE: TAbmesFloatField;
    qryShowNodeParamsVALUE_NOM_ITEM_HAS_DOC_ITEMS: TAbmesFloatField;
    qryShowNodeParamsDOC_BRANCH_CODE: TAbmesFloatField;
    qryShowNodeParamsDOC_CODE: TAbmesFloatField;
    qryShowNodeParamsHAS_DOC_ITEMS: TAbmesFloatField;
    qryFilterNodeParamsIS_DEFINED: TAbmesFloatField;
    qryPrintTreeChildrenBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    qryPrintTreeChildrenIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    qryPrintTreeChildrenCOMMON_STATUS_CODE: TAbmesFloatField;
    cdsPrintTreeChildrenBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsPrintTreeChildrenIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    cdsPrintTreeChildrenCOMMON_STATUS_CODE: TAbmesFloatField;
    qryPrintTreeBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    qryPrintTreeIS_THOROUGHLY_ENGINEERED: TAbmesFloatField;
    qryPrintTreeCOMMON_STATUS_CODE: TAbmesFloatField;
    qryNodeChildrenIMPORT_COUNT: TAbmesFloatField;
    prvProductDeptOptions: TDataSetProvider;
    qryProductDeptOptions: TAbmesSQLQuery;
    qryProductDeptOptionsPRODUCT_CODE: TAbmesFloatField;
    qryProductDeptOptionsDEPT_CODE: TAbmesFloatField;
    qryProductDeptOptionsIS_PSD_PRICE_FROM_DELIVERY: TAbmesFloatField;
    qryProductDeptOptionsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryProductDeptOptionsDEPT_NAME: TAbmesWideStringField;
    qryProductDeptOptionsIS_INHERITED: TAbmesFloatField;
    qryProductDeptOptionsPRODUCT_LEVEL: TAbmesFloatField;
    qryInsProductDeptOptions: TAbmesSQLQuery;
    qryUpdProductDeptOptions: TAbmesSQLQuery;
    qryDelProductDeptOptions: TAbmesSQLQuery;
    qryProductDeptOptionsOVERRIDE_IS_PSD_PRICE_FROM_DLV: TAbmesFloatField;
    qryProductPeriodsMIN_ORDER_QUANTITY: TAbmesFloatField;
    qryProductPeriodsMAX_ORDER_QUANTITY: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_MIN_ORDER_QUANTITY: TAbmesFloatField;
    qryProductPeriodsOVERRIDE_MAX_ORDER_QUANTITY: TAbmesFloatField;
    qryProductPeriodsINHRT_MIN_ORDER_QUANTITY: TAbmesFloatField;
    qryProductPeriodsINHRT_MAX_ORDER_QUANTITY: TAbmesFloatField;
    qryProductPeriodsACC_MIN_ORDER_QUANTITY: TAbmesFloatField;
    qryProductPeriodsACC_MAX_ORDER_QUANTITY: TAbmesFloatField;
    qryProductPeriodsACC_INHRT_MIN_ORDER_QUANTITY: TAbmesFloatField;
    qryProductPeriodsACC_INHRT_MAX_ORDER_QUANTITY: TAbmesFloatField;
    procedure prvProductPeriodsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvNodeChildrenBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvNodeChildrenAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvNodeChildrenUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure prvNodeChildrenBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryNodeChildrenBeforeProviderEndTransaction(
      DataSet: TDataSet; Commit: Boolean);
    procedure prvProductLocationsUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure prvProductLocationsBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvProductLocationsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvNodeChildrenAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryNodeChildrenAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure prvProductMinQuantitiesBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvProductMinQuantitiesUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure prvProductMinQuantitiesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvProductPeriodsBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvProductPeriodsAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryProductPeriodsHeaderAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure qryProductPeriodsHeaderAfterProviderEndTransaction(
      DataSet: TDataSet; Commit: Boolean);
    procedure qryProductPeriodsHeaderBeforeProviderEndTransaction(
      DataSet: TDataSet; Commit: Boolean);
    procedure prvProductSetAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvProductSetGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvProductDeptOptionsBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure prvProductDeptOptionsUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure prvProductDeptOptionsBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
  private
    FUpdateDS: TDataSet;
    FProductLocationsDelta: Variant;
    FProductMinQuantitiesDelta: Variant;
    FProductDeptOptionsDelta: Variant;
    FProductLocationsErrorMessage: string;
    FProductMinQuantitiesErrorMessage: string;
    FInsertedOrModifiedProductCode: Integer;
    FDocsDelta: Variant;
    FProductPeriodsProductCode: Integer;
    FProductDeptOptionsErrorMessage: string;
    function NewProductPeriodCode: Integer;
    function GetNewProductSetCode: Integer;
    procedure SetSkipPeriodChecksProductCode(ProductCode: Integer);
    function GetNewProductNo(AParentCode: Integer): Double;
  protected
    function NodeIDFieldNamePrefix: string; override;
    function GetNodeSqlTableAlias: string; override;
  end;

type
  IdmProductsTreeEditorProxy = interface(IdmNomWithParamsTreeProxy)
  end;

type
  TdmProductsTreeEditorProxy = class(TdmNomWithParamsTreeProxy, IdmProductsTreeEditorProxy)
  private
    class var FSingleton: TdmProductsTreeEditorProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmProductsTreeEditor>;
  strict protected
    property LockedInstance: ISmartLock<TdmProductsTreeEditor> read GetLockedInstance;
  public
    class property Singleton: TdmProductsTreeEditorProxy read FSingleton;

    function GetNewProductSetCode: Integer;
    function GetNewProductNo(AParentCode: Integer): Double;
  end;

implementation

uses
  uUtils, uSvrUtils, Variants, uDBPooledDataModuleHelper, DateUtils,
  XMLIntf, XMLDoc, uChosenNodes;

{$R *.DFM}

{ TdmProductsTreeEditorProxy }

function TdmProductsTreeEditorProxy.GetLockedInstance: ISmartLock<TdmProductsTreeEditor>;
begin
  Result:= ISmartLock<TdmProductsTreeEditor>(inherited LockedInstance);
end;

function TdmProductsTreeEditorProxy.GetNewProductNo(
  AParentCode: Integer): Double;
begin
  Result:= LockedInstance.Value.GetNewProductNo(AParentCode);
end;

function TdmProductsTreeEditorProxy.GetNewProductSetCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewProductSetCode;
end;

{ TdmProductsTreeEditor }

function TdmProductsTreeEditor.NewProductPeriodCode: Integer;
begin
  qryNewProductPeriodCode.Open;
  try
    Result:= qryNewProductPeriodCodeNEW_PRODUCT_PERIOD_CODE.AsInteger;
  finally
    qryNewProductPeriodCode.Close;
  end;
end;

function TdmProductsTreeEditor.GetNewProductNo(AParentCode: Integer): Double;
begin
  qryNewProductNo.ParamByName('PARENT_CODE').AsInteger:= AParentCode;
  Result:=
    qryNewProductNo.TempOpen/
      function: Real begin
        Result:= qryNewProductNoNEW_PRODUCT_NO.AsFloat;
      end;
end;

function TdmProductsTreeEditor.GetNewProductSetCode: Integer;
begin
  Result:=
    qryNewProductSetCode.TempOpen/
      function: Integer begin
        Result:= qryNewProductSetCodeNEW_PRODUCT_SET_CODE.AsInteger;
      end;
end;

function TdmProductsTreeEditor.NodeIDFieldNamePrefix: string;
begin
  Result:= 'PRODUCT';
end;

procedure TdmProductsTreeEditor.prvNodeChildrenBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  FUpdateDS:= SourceDS;

  if (SourceDS = qryNodeChildren) and (UpdateKind = ukDelete) then
    begin
      SetParams(qryDelProductStores.Params, DeltaDS);
      qryDelProductStores.ExecSQL;
    end;

  if (UpdateKind in [ukInsert, ukModify]) then
    begin
      Assert(FInsertedOrModifiedProductCode = 0);
      FInsertedOrModifiedProductCode:= VarToInt(GetFieldValue(DeltaDS.FieldByName('PRODUCT_CODE')));
    end;  { if }
end;

procedure TdmProductsTreeEditor.prvNodeChildrenAfterUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
begin
  inherited;

  if (FUpdateDS = qryNodeChildren) and (UpdateKind = ukModify) then
    with qryUpdateChildren do
      begin
        SetParams(Params, DeltaDS);
        ExecSQL;
      end;   { with }

  if (FUpdateDS = qryNodeChildren) and (UpdateKind = ukInsert) then
    begin
      SetParams(qryUpdCommonProduct.Params, DeltaDS);
      qryUpdCommonProduct.ExecSQL;
    end;

  ResetApplyRetryCounter;
end;

procedure TdmProductsTreeEditor.prvNodeChildrenUpdateError(
  Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
  UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  inherited;
  ApplyRetry(E, Response);
end;

function TdmProductsTreeEditor.GetNodeSqlTableAlias: string;
begin
  Result:= 'p';
end;

procedure TdmProductsTreeEditor.prvNodeChildrenBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FProductLocationsDelta:= OwnerData[1];
  FDocsDelta:= OwnerData[2];
  FProductMinQuantitiesDelta:= OwnerData[3];
  FProductDeptOptionsDelta:= OwnerData[4];
end;

procedure TdmProductsTreeEditor.qryNodeChildrenBeforeProviderEndTransaction(
  DataSet: TDataSet; Commit: Boolean);
var
  ErrorCount: Integer;
  LocalInsertedOrModifiedProductCode: Integer;
begin
  LocalInsertedOrModifiedProductCode:= FInsertedOrModifiedProductCode;
  FInsertedOrModifiedProductCode:= 0;

  inherited;

  if Commit and not VarIsEmpty(FProductLocationsDelta) then
    begin
      prvProductLocations.ApplyUpdates(FProductLocationsDelta, 0, ErrorCount);

      if (ErrorCount > 0) then
        raise Exception.Create(FProductLocationsErrorMessage);
    end;

  if Commit and not VarIsEmpty(FProductMinQuantitiesDelta) then
    begin
      prvProductMinQuantities.ApplyUpdates(FProductMinQuantitiesDelta, 0, ErrorCount);

      if (ErrorCount > 0) then
        raise Exception.Create(FProductMinQuantitiesErrorMessage);
    end;

  if Commit and not VarIsEmpty(FProductDeptOptionsDelta) then
    begin
      prvProductDeptOptions.ApplyUpdates(FProductDeptOptionsDelta, 0, ErrorCount);

      if (ErrorCount > 0) then
        raise Exception.Create(FProductDeptOptionsErrorMessage);
    end;

  if Commit and (LocalInsertedOrModifiedProductCode <> 0) then
    begin
      qryUpdateProductSetProductsForProduct.ParamByName('PRODUCT_CODE').AsInteger:=
        LocalInsertedOrModifiedProductCode;
      qryUpdateProductSetProductsForProduct.ExecSQL;
    end;  { if }
end;

procedure TdmProductsTreeEditor.qryProductPeriodsHeaderAfterProviderEndTransaction(
  DataSet: TDataSet; Commit: Boolean);
begin
  inherited;
  if not Commit then
    SetSkipPeriodChecksProductCode(0);
end;

procedure TdmProductsTreeEditor.qryProductPeriodsHeaderAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
  SetSkipPeriodChecksProductCode(FProductPeriodsProductCode);
end;

procedure TdmProductsTreeEditor.qryProductPeriodsHeaderBeforeProviderEndTransaction(
  DataSet: TDataSet; Commit: Boolean);
begin
  inherited;
  if Commit then
    begin
      SetSkipPeriodChecksProductCode(0);
      
      qryCheckProductPeriods.ParamByName('PRODUCT_CODE').AsInteger:= FProductPeriodsProductCode;
      qryCheckProductPeriods.ExecSQL;
    end;
end;

procedure TdmProductsTreeEditor.SetSkipPeriodChecksProductCode(
  ProductCode: Integer);
begin
  qrySetSkipPeriodChecksProductCode.ParamByName('PRODUCT_CODE').AsInteger:= ProductCode;
  qrySetSkipPeriodChecksProductCode.ExecSQL;
end;

procedure TdmProductsTreeEditor.prvProductLocationsUpdateError(
  Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
  UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  inherited;

  if (FProductLocationsErrorMessage = '') then
    FProductLocationsErrorMessage:= E.Message;

  ApplyRetry(E, Response);
end;

procedure TdmProductsTreeEditor.prvProductDeptOptionsBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  ResetApplyRetryCounter;
  FProductDeptOptionsErrorMessage:= '';
end;

procedure TdmProductsTreeEditor.prvProductDeptOptionsBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
  DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if DeltaDS.GetOptionalParam('NEW_NODE') then
    case UpdateKind of
      ukModify:
        UpdateKind:= ukInsert;
      ukDelete:
        begin
          Applied:= True;
          Exit;
        end;
    end;   { case }

  if (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('PRODUCT_CODE').NewValue:= NodeID;

  if not GetBoolValue(DeltaDS.FieldByName('IS_INHERITED')) then
    ExecUpdateQuery(UpdateKind, DeltaDS,
      qryInsProductDeptOptions, qryUpdProductDeptOptions, qryDelProductDeptOptions,
      False);

  Applied:= True;
end;

procedure TdmProductsTreeEditor.prvProductDeptOptionsUpdateError(Sender: TObject; DataSet: TCustomClientDataSet;
  E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  inherited;

  if (FProductDeptOptionsErrorMessage = '') then
    FProductDeptOptionsErrorMessage:= E.Message;

  ApplyRetry(E, Response);
end;

procedure TdmProductsTreeEditor.prvProductLocationsBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  ResetApplyRetryCounter;
  FProductLocationsErrorMessage:= '';
end;

procedure TdmProductsTreeEditor.prvProductLocationsBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if DeltaDS.GetOptionalParam('NEW_NODE') then
    case UpdateKind of
      ukModify:
        UpdateKind:= ukInsert;
      ukDelete:
        begin
          Applied:= True;
          Exit;
        end;
    end;   { case }

  if (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('PRODUCT_CODE').NewValue:= NodeID;

  if not GetBoolValue(DeltaDS.FieldByName('IS_INHERITED')) then
    ExecUpdateQuery(UpdateKind, DeltaDS,
      qryInsProductLocations, qryUpdProductLocations, qryDelProductLocations,
      False);

  Applied:= True;
end;

procedure TdmProductsTreeEditor.prvNodeChildrenAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FProductLocationsDelta:= Unassigned;
  FDocsDelta:= Unassigned;
  FProductMinQuantitiesDelta:= Unassigned;
  FProductDeptOptionsDelta:= Unassigned;
end;

procedure TdmProductsTreeEditor.qryNodeChildrenAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmProductsTreeEditor.prvProductMinQuantitiesBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  ResetApplyRetryCounter;
  FProductMinQuantitiesErrorMessage:= '';
end;

procedure TdmProductsTreeEditor.prvProductMinQuantitiesUpdateError(
  Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
  UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  inherited;

  if (FProductMinQuantitiesErrorMessage = '') then
    FProductMinQuantitiesErrorMessage:= E.Message;

  ApplyRetry(E, Response);
end;

procedure TdmProductsTreeEditor.prvProductPeriodsAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmProductsTreeEditor.prvProductPeriodsBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FProductPeriodsProductCode:= OwnerData[0];
  FDocsDelta:= OwnerData[1];
end;

procedure TdmProductsTreeEditor.prvProductPeriodsBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
  NowDateTime: TDateTime;
begin
  inherited;

  NowDateTime:= ContextNow;

  if (SourceDS = qryProductPeriods) then
    begin
      if (UpdateKind = ukInsert) then
        begin
          DeltaDS.FieldByName('PRODUCT_PERIOD_CODE').NewValue:= NewProductPeriodCode;

          DeltaDS.FieldByName('CREATE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
          DeltaDS.FieldByName('CREATE_DATE').NewValue:= DateOf(NowDateTime);
          DeltaDS.FieldByName('CREATE_TIME').NewValue:= TimeOf(NowDateTime);
        end;

      if (UpdateKind in [ukInsert, ukModify]) then
        begin
          DeltaDS.FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
          DeltaDS.FieldByName('CHANGE_DATE').NewValue:= DateOf(NowDateTime);
          DeltaDS.FieldByName('CHANGE_TIME').NewValue:= TimeOf(NowDateTime);
        end;
    end;

  if (SourceDS = qryProdPerSpecModelVariants) then
    begin
      if (UpdateKind = ukInsert) then
        begin
          DeltaDS.FieldByName('PRODUCT_CODE').NewValue:=
            GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('PRODUCT_CODE'));
          DeltaDS.FieldByName('PRODUCT_PERIOD_CODE').NewValue:=
            GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('PRODUCT_PERIOD_CODE'));
        end;

      if (UpdateKind in [ukInsert, ukModify]) and
         (VarToInt(DeltaDS.FieldByName('IS_EST_VARIANT').NewValue) = 1) then
        begin
          SetParams(qryClearIsEstVariant.Params, DeltaDS);
          qryClearIsEstVariant.ExecSQL;
        end;
    end;

  Applied:=
    (SourceDS = qryNotProdPerSpecModelVariants) or
    (not RecordChanged(DeltaDS));
end;

procedure TdmProductsTreeEditor.prvProductSetAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
var
  XMLDocument: IXMLDocument;
  ChosenNodesAndParams: IXMLChosenNodesAndParams;
  ChosenNodes: IXMLChosenNodes;
  ChosenNode: IXMLChosenNode;
  NodeParam: IXMLNodeParam;
  NodeParamValue: IXMLNodeParamValue;
  ChosenNodesAndParamsXML: string;
begin
  inherited;
  if not VarIsEmpty(DeltaDS.FieldByName('CHOSEN_PRODUCTS').NewValue) then
    begin
      if (UpdateKind in [ukModify, ukDelete]) then
        begin
          qryDeleteProductSetChosenProducts.ParamByName('PRODUCT_SET_CODE').AsInteger:=
            GetFieldValue(DeltaDS.FieldByName('PRODUCT_SET_CODE'));
          qryDeleteProductSetChosenProducts.ExecSQL;
        end;  { if }

      if (UpdateKind in [ukInsert, ukModify]) and
         not VarIsNull(DeltaDS.FieldByName('CHOSEN_PRODUCTS').NewValue) then
        begin
          ChosenNodesAndParamsXML:= ReadStringFromBlobField(DeltaDS.FieldByName('CHOSEN_PRODUCTS'));

          XMLDocument:= NewXMLDocument;
          XMLDocument.XML.Text:= ChosenNodesAndParamsXML;
          ChosenNodesAndParams:= GetChosenNodesAndParams(XMLDocument);
          ChosenNodes:= ChosenNodesAndParams.ChosenNodes;

          for ChosenNode in All(ChosenNodes) do
            begin
              qryInsertProductSetChosenProduct.ParamByName('PRODUCT_SET_CODE').AsInteger:=
                GetFieldValue(DeltaDS.FieldByName('PRODUCT_SET_CODE'));
              qryInsertProductSetChosenProduct.ParamByName('PRODUCT_CODE').AsInteger:=
                VarToInt(ChosenNode.NodeCode);
              qryInsertProductSetChosenProduct.ExecSQL;

              for NodeParam in All(ChosenNode.NodeParams) do
                begin
                  qryInsertProductSetChosenProductParam.ParamByName('PRODUCT_SET_CODE').AsInteger:=
                    GetFieldValue(DeltaDS.FieldByName('PRODUCT_SET_CODE'));
                  qryInsertProductSetChosenProductParam.ParamByName('PRODUCT_CODE').AsInteger:=
                    VarToInt(ChosenNode.NodeCode);
                  qryInsertProductSetChosenProductParam.ParamByName('PRODUCT_PARAM_CODE').AsInteger:=
                    VarToInt(NodeParam.NodeParamCode);
                  qryInsertProductSetChosenProductParam.ExecSQL;

                  for NodeParamValue in All(NodeParam.NodeParamValues) do
                    begin
                      qryInsertProductSetChosenProductParamValue.ParamByName('PRODUCT_SET_CODE').AsInteger:=
                        GetFieldValue(DeltaDS.FieldByName('PRODUCT_SET_CODE'));
                      qryInsertProductSetChosenProductParamValue.ParamByName('PRODUCT_CODE').AsInteger:=
                        VarToInt(ChosenNode.NodeCode);
                      qryInsertProductSetChosenProductParamValue.ParamByName('PRODUCT_PARAM_CODE').AsInteger:=
                        VarToInt(NodeParam.NodeParamCode);
                      qryInsertProductSetChosenProductParamValue.ParamByName('PRODUCT_PARAM_VALUE_CODE').AsInteger:=
                        VarToInt(NodeParamValue.NodeParamValueCode);

                      qryInsertProductSetChosenProductParamValue.ParamByName('VALUE_NOM_CODE').Value:=
                        NodeParamValue.ValueNomCode;
                      qryInsertProductSetChosenProductParamValue.ParamByName('VALUE_NOM_ITEM_CODE').Value:=
                        NodeParamValue.ValueNomItemCode;
                      qryInsertProductSetChosenProductParamValue.ParamByName('VALUE_FLOAT_MIN').Value:=
                        NodeParamValue.ValueFloatMin;
                      qryInsertProductSetChosenProductParamValue.ParamByName('VALUE_FLOAT_MAX').Value:=
                        NodeParamValue.ValueFloatMax;
                      qryInsertProductSetChosenProductParamValue.ParamByName('VALUE_STRING').Value:=
                        NodeParamValue.ValueString;

                      qryInsertProductSetChosenProductParamValue.ExecSQL;
                    end;  { for }
                end;  { for }
            end;  { for }
        end;  { if }
    end;  { if }

  if (UpdateKind in [ukInsert, ukModify]) then
    begin
      SetParams(qryUpdateProductSetProductsForProductSet.Params, DeltaDS);
      qryUpdateProductSetProductsForProductSet.ExecSQL;
    end;  { if }
end;

procedure TdmProductsTreeEditor.prvProductSetGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  XMLDocument: IXMLDocument;
  ChosenNodesAndParams: IXMLChosenNodesAndParams;
  ChosenNodes: IXMLChosenNodes;
  ChosenNode: IXMLChosenNode;
  NodeParams: IXMLNodeParams;
  NodeParam: IXMLNodeParam;
  NodeParamValues: IXMLNodeParamValues;
  NodeParamValue: IXMLNodeParamValue;
begin
  inherited;

  if DataSet.FieldByName('PRODUCT_SET_CODE').IsNull then
    Exit;

  XMLDocument:= NewXMLDocument;
  ChosenNodesAndParams:= GetChosenNodesAndParams(XMLDocument);
  ChosenNodes:= ChosenNodesAndParams.ChosenNodes;

  qryProductSetChosenProducts.ParamByName('PRODUCT_SET_CODE').AsInteger:=
    DataSet.FieldByName('PRODUCT_SET_CODE').AsInteger;
  qryProductSetChosenProducts.TempOpen/
    qryProductSetChosenProducts.ForEach/
      procedure begin
        ChosenNode:= ChosenNodes.Add;
        ChosenNode.NodeCode:= qryProductSetChosenProductsPRODUCT_CODE.AsVariant;

        qryProductSetChosenProductParams.ParamByName('PRODUCT_SET_CODE').AsInteger:=
          DataSet.FieldByName('PRODUCT_SET_CODE').AsInteger;
        qryProductSetChosenProductParams.ParamByName('PRODUCT_CODE').AsInteger:=
          ChosenNode.NodeCode;

        NodeParams:= ChosenNode.NodeParams;

        qryProductSetChosenProductParams.TempOpen/
          qryProductSetChosenProductParams.ForEach/
            procedure begin
              NodeParam:= NodeParams.Add;
              NodeParam.NodeParamCode:= qryProductSetChosenProductParamsPRODUCT_PARAM_CODE.AsVariant;

              qryProductSetChosenProductParamValues.ParamByName('PRODUCT_SET_CODE').AsInteger:=
                DataSet.FieldByName('PRODUCT_SET_CODE').AsInteger;
              qryProductSetChosenProductParamValues.ParamByName('PRODUCT_CODE').AsInteger:=
                ChosenNode.NodeCode;
              qryProductSetChosenProductParamValues.ParamByName('PRODUCT_PARAM_CODE').AsInteger:=
                NodeParam.NodeParamCode;

              NodeParamValues:= NodeParam.NodeParamValues;

              qryProductSetChosenProductParamValues.TempOpen/
                qryProductSetChosenProductParamValues.ForEach/
                  procedure begin
                    NodeParamValue:= NodeParamValues.Add;
                    NodeParamValue.NodeParamValueCode:=
                      qryProductSetChosenProductParamValuesPRODUCT_PARAM_VALUE_CODE.AsVariant;
                    NodeParamValue.ValueNomCode:=
                      qryProductSetChosenProductParamValuesVALUE_NOM_CODE.AsVariant;
                    NodeParamValue.ValueNomItemCode:=
                      qryProductSetChosenProductParamValuesVALUE_NOM_ITEM_CODE.AsVariant;
                    NodeParamValue.ValueFloatMin:=
                      qryProductSetChosenProductParamValuesVALUE_FLOAT_MIN.AsVariant;
                    NodeParamValue.ValueFloatMax:=
                      qryProductSetChosenProductParamValuesVALUE_FLOAT_MAX.AsVariant;
                    NodeParamValue.ValueString:=
                      qryProductSetChosenProductParamValuesVALUE_STRING.AsVariant;
                  end;
            end;
      end;

  DataSet.SafeEdit/
    procedure begin
      WriteStringToBlobField(XMLDocument.XML.Text, DataSet.FieldByName('CHOSEN_PRODUCTS'));
    end;
end;

procedure TdmProductsTreeEditor.prvProductMinQuantitiesBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if DeltaDS.GetOptionalParam('NEW_NODE') then
    case UpdateKind of
      ukModify:
        UpdateKind:= ukInsert;
      ukDelete:
        begin
          Applied:= True;
          Exit;
        end;
    end;   { case }

  if (UpdateKind = ukInsert) then
    begin
      DeltaDS.FieldByName('PRODUCT_CODE').NewValue:= NodeID;

      qryNewProductStoreCode.Open;
      try
        DeltaDS.FieldByName('PRODUCT_STORE_CODE').NewValue:= qryNewProductStoreCodeNEW_PRODUCT_STORE_CODE.AsInteger;
      finally
        qryNewProductStoreCode.Close;
      end;  { try }
    end;

  if not GetBoolValue(DeltaDS.FieldByName('IS_INHERITED')) then
    ExecUpdateQuery(UpdateKind, DeltaDS,
      qryInsProductMinQuantities, qryUpdProductMinQuantities, qryDelProductMinQuantities,
      False);

  Applied:= True;
end;

initialization
  TdmProductsTreeEditorProxy.FSingleton:= TdmProductsTreeEditorProxy.Create(TdmProductsTreeEditor);

finalization
  FreeAndNil(TdmProductsTreeEditorProxy.FSingleton);
end.
