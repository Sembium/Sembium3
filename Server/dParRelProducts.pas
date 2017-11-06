unit dParRelProducts;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, AbmesClientDataSet,
  dPooledDataModule, dDBPooledDataModule, WideStrings, FMTBcd, SqlExpr,
  AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmParRelProducts = class(TDBPooledDataModule)
    prvSaleQuantities: TDataSetProvider;                                                        
    qrySaleQuantitiesProductGroups: TAbmesSQLQuery;
    qrySaleQuantitiesProductInstances: TAbmesSQLQuery;
    qrySaleQuantitiesProductGroupsCLIENT_COMPANY_CODE: TAbmesFloatField;
    qrySaleQuantitiesProductGroupsPRODUCT_CODE: TAbmesFloatField;
    qrySaleQuantitiesProductGroupsPRODUCT_NAME: TAbmesWideStringField;
    qrySaleQuantitiesProductGroupsPRODUCT_NO: TAbmesFloatField;
    qrySaleQuantitiesProductGroupsMEASURE_CODE: TAbmesFloatField;
    qrySaleQuantitiesProductGroupsMEASURE_ABBREV: TAbmesWideStringField;
    qrySaleQuantitiesProductGroupsTOTAL_WANTED_QUANTITY: TAbmesFloatField;
    qrySaleQuantitiesProductGroupsTOTAL_WANTED_SECONDARY_PRICE: TAbmesFloatField;
    qrySaleQuantitiesProductGroupsTOTAL_CONTRACTED_QUANTITY: TAbmesFloatField;
    qrySaleQuantitiesProductGroupsTOTAL_CONTRACTED_SEC_PRICE: TAbmesFloatField;
    qrySaleQuantitiesProductGroupsTOTAL_SHIPPED_QUANTITY: TAbmesFloatField;
    qrySaleQuantitiesProductGroupsTOTAL_SHIPPED_SECONDARY_PRICE: TAbmesFloatField;
    qrySaleQuantitiesProductGroupsTOTAL_INVOICE_QUANTITY: TAbmesFloatField;
    qrySaleQuantitiesProductGroupsTOTAL_INVOICE_SECONDARY_PRICE: TAbmesFloatField;
    qrySaleQuantitiesProductGroupsMIN_WANTED_NO_RATE_DATE: TAbmesSQLTimeStampField;
    qrySaleQuantitiesProductGroupsMIN_CONTRACTED_NO_RATE_DATE: TAbmesSQLTimeStampField;
    qrySaleQuantitiesProductGroupsMIN_SHIPMENT_NO_RATE_DATE: TAbmesSQLTimeStampField;
    qrySaleQuantitiesProductGroupsMIN_INVOICE_NO_RATE_DATE: TAbmesSQLTimeStampField;
    qrySaleQuantitiesProductInstancesCLIENT_COMPANY_CODE: TAbmesFloatField;
    qrySaleQuantitiesProductInstancesPRODUCT_CODE: TAbmesFloatField;
    qrySaleQuantitiesProductInstancesPRODUCT_NAME: TAbmesWideStringField;
    qrySaleQuantitiesProductInstancesPRODUCT_NO: TAbmesFloatField;
    qrySaleQuantitiesProductInstancesMEASURE_CODE: TAbmesFloatField;
    qrySaleQuantitiesProductInstancesMEASURE_ABBREV: TAbmesWideStringField;
    qrySaleQuantitiesProductInstancesTOTAL_WANTED_QUANTITY: TAbmesFloatField;
    qrySaleQuantitiesProductInstancesTOTAL_WANTED_SECONDARY_PRICE: TAbmesFloatField;
    qrySaleQuantitiesProductInstancesMIN_WANTED_NO_RATE_DATE: TAbmesSQLTimeStampField;
    qrySaleQuantitiesProductInstancesTOTAL_CONTRACTED_QUANTITY: TAbmesFloatField;
    qrySaleQuantitiesProductInstancesTOTAL_CONTRACTED_SEC_PRICE: TAbmesFloatField;
    qrySaleQuantitiesProductInstancesMIN_CONTRACTED_NO_RATE_DATE: TAbmesSQLTimeStampField;
    qrySaleQuantitiesProductInstancesTOTAL_SHIPPED_QUANTITY: TAbmesFloatField;
    qrySaleQuantitiesProductInstancesTOTAL_SHIPPED_SECONDARY_PRICE: TAbmesFloatField;
    qrySaleQuantitiesProductInstancesMIN_SHIPMENT_NO_RATE_DATE: TAbmesSQLTimeStampField;
    qrySaleQuantitiesProductInstancesTOTAL_INVOICE_QUANTITY: TAbmesFloatField;
    qrySaleQuantitiesProductInstancesTOTAL_INVOICE_SECONDARY_PRICE: TAbmesFloatField;
    qrySaleQuantitiesProductInstancesMIN_INVOICE_NO_RATE_DATE: TAbmesSQLTimeStampField;
    qrySaleQuantitiesProductInstancesCLIENT_COMPANY_NAME: TAbmesWideStringField;
    qrySaleQuantitiesProductGroupsCLIENT_COMPANY_NAME: TAbmesWideStringField;
    qryParRelProducts: TAbmesSQLQuery;
    qryParRelProductsPARTNER_CODE: TAbmesFloatField;
    qryParRelProductsPRODUCT_CODE: TAbmesFloatField;
    qryParRelProductsDOC_BRANCH_CODE: TAbmesFloatField;
    qryParRelProductsDOC_CODE: TAbmesFloatField;
    qryParRelProductsIS_REGULAR: TAbmesFloatField;
    qryParRelProductsPARTNER_NO: TAbmesFloatField;
    qryParRelProductsPARTNER_NAME: TAbmesWideStringField;
    qryParRelProductsPARTNER_DOC_BRANCH_CODE: TAbmesFloatField;
    qryParRelProductsPARTNER_DOC_CODE: TAbmesFloatField;
    qryParRelProductsPARTNER_HAS_DOC: TAbmesFloatField;
    qryParRelProductsPARTNER_PRIORITY_CODE: TAbmesFloatField;
    qryParRelProductsPARTNER_PRIORITY_NO: TAbmesFloatField;
    qryParRelProductsPAR_PRIORITY_COLOR: TAbmesFloatField;
    qryParRelProductsPAR_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryParRelProductsPARTNER_COMPANY_CLASS_CODE: TAbmesFloatField;
    qryParRelProductsPARTNER_COMPANY_CLASS_ABBREV: TAbmesWideStringField;
    qryParRelProductsPARTNER_STATUS_CODE: TAbmesFloatField;
    qryParRelProductsPARTNER_STATUS_NAME: TAbmesWideStringField;
    qryParRelProductsPARTNER_EXISTENCE_MONTHS: TAbmesFloatField;
    qryParRelProductsPRODUCT_NO: TAbmesFloatField;
    qryParRelProductsPRODUCT_NAME: TAbmesWideStringField;
    qryParRelProductsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryParRelProductsPRODUCT_DOC_CODE: TAbmesFloatField;
    qryParRelProductsPRODUCT_HAS_DOC: TAbmesFloatField;
    qryParRelProductsPRODUCT_PRIORITY_CODE: TAbmesFloatField;
    qryParRelProductsPRODUCT_PRIORITY_NO: TAbmesFloatField;
    qryParRelProductsPROD_PRIORITY_COLOR: TAbmesFloatField;
    qryParRelProductsPROD_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryParRelProductsPRODUCT_MEASURE_CODE: TAbmesFloatField;
    qryParRelProductsPRODUCT_MEASURE_ABBREV: TAbmesWideStringField;
    qryParRelProductsEST_QUANTITY: TAbmesFloatField;
    qryParRelProductsEST_TOTAL_PRICE: TAbmesFloatField;
    qryParRelProductsEST_TOTAL_INVESTMENT_VALUE: TAbmesFloatField;
    qryParRelProductsREAL_QUANTITY: TAbmesFloatField;
    qryParRelProductsREAL_TOTAL_PRICE: TAbmesFloatField;
    qryParRelProductsREAL_TOTAL_INVESTMENT_VALUE: TAbmesFloatField;
    qryParRelProductsPROD_MIN_PREC_LEVEL_NO: TAbmesFloatField;
    qryParRelProductsPROD_MIN_PREC_LEVEL_COLOR: TAbmesFloatField;
    qryParRelProductsPROD_MIN_PREC_LEVEL_BACK_COLOR: TAbmesFloatField;
    qryParRelProductsPROD_MAX_PREC_LEVEL_NO: TAbmesFloatField;
    qryParRelProductsPROD_MAX_PREC_LEVEL_COLOR: TAbmesFloatField;
    qryParRelProductsPROD_MAX_PREC_LEVEL_BACK_COLOR: TAbmesFloatField;
    qryParRelProductsENGINEERING_ORDER_CODE: TAbmesFloatField;
    qryParRelProductsEO_ENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryParRelProductsEO_ENGINEERING_PLAN_WORKDAYS: TAbmesFloatField;
    qryParRelProductsEO_ENGINEERING_REAL_WORKDAYS: TAbmesFloatField;
    qryParRelProductsEO_ENGINEERING_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryParRelProductsPRODUCT_SPEC_STATE_CODE: TAbmesFloatField;
    qryParRelProductsJOINED_PRODUCT_COUNT: TAbmesFloatField;
    qryParRelProductsJOINED_SPEC_STATE_1_COUNT: TAbmesFloatField;
    qryParRelProductsJOINED_SPEC_STATE_2_COUNT: TAbmesFloatField;
    qryParRelProductsJOINED_SPEC_STATE_3_COUNT: TAbmesFloatField;
    qryParRelProductsJOINED_SPEC_STATE_4_COUNT: TAbmesFloatField;
    qryParRelProductsJOINED_SPEC_STATE_5_COUNT: TAbmesFloatField;
    qryParRelProductsJOINED_SPEC_STATE_6_COUNT: TAbmesFloatField;
    qryParRelProductsEST_SINGLE_PRICE: TAbmesFloatField;
    qryParRelProductsEST_BUSINESS_RESULT_VALUE: TAbmesFloatField;
    qryParRelProductsEST_BUSINESS_RESULT_PERCENT: TAbmesFloatField;
    qryParRelProductsREAL_BUSINESS_RESULT_VALUE: TAbmesFloatField;
    qryParRelProductsREAL_BUSINESS_RESULT_PERCENT: TAbmesFloatField;
    prvParRelProducts: TDataSetProvider;
    qryParRelProductsREAL_SINGLE_PRICE: TAbmesFloatField;
    qryBorderRelTypeObtainmentTypes: TAbmesSQLQuery;
    prvBorderRelTypeObtainmentTypes: TDataSetProvider;
    qryInvestmentLevels: TAbmesSQLQuery;
    prvInvestmentLevels: TDataSetProvider;
    qryBorderRelTypeObtainmentTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    qryBorderRelTypeObtainmentTypesOBTAINMENT_TYPE_NAME: TAbmesWideStringField;
    qryInvestmentLevelsINVESTMENT_LEVEL_CODE: TAbmesFloatField;
    qryInvestmentLevelsINVESTMENT_LEVEL_NAME: TAbmesWideStringField;
    qryParRelProductsHAS_DOC: TAbmesFloatField;
    qryParRelProductsPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryParRelProductsPRODUCT_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryParRelProductsPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryParRelProductsPRODUCT_COMMON_STATUS_CODE: TAbmesFloatField;
    qryParRelProductsEST_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryParRelProductsREAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryParRelProductsEST_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qryParRelProductsREAL_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qryParRelProductsEO_ENGINEERING_WORKDAYS_DIFF: TAbmesFloatField;
    qryParRelProductsEO_ENGINEERING_WORKDAYS_DIFF_PERCENT: TAbmesFloatField;
    qryParRelProductsREAL_QUANTITY_DIFF: TAbmesFloatField;
    qryParRelProductsREAL_ACCOUNT_QUANTITY_DIFF: TAbmesFloatField;
    qryParRelProductsREAL_SINGLE_PRICE_DIFF: TAbmesFloatField;
    qryParRelProductsREAL_ACCOUNT_SINGLE_PRICE_DIFF: TAbmesFloatField;
    qryParRelProductsREAL_TOTAL_PRICE_DIFF: TAbmesFloatField;
    qryParRelProductsREAL_BUSINESS_RESULT_VALUE_DIFF: TAbmesFloatField;
    qryParRelProductsREAL_BUSINESS_RESULT_PERCENT_DIFF: TAbmesFloatField;
    qryParRelProductsREAL_QUANTITY_DIFF_PERCENT: TAbmesFloatField;
    qryParRelProductsREAL_ACCOUNT_QUANTITY_DIFF_PERCENT: TAbmesFloatField;
    qryParRelProductsREAL_SINGLE_PRICE_DIFF_PERCENT: TAbmesFloatField;
    qryParRelProductsREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT: TAbmesFloatField;
    qryParRelProductsREAL_TOTAL_PRICE_DIFF_PERCENT: TAbmesFloatField;
    qryParRelProductsREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT: TAbmesFloatField;
    qryParRelProductsREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT: TAbmesFloatField;
    qryParRelProductsIS_PRODUCT_SPEC_STATE_1: TAbmesFloatField;
    qryParRelProductsIS_PRODUCT_SPEC_STATE_2: TAbmesFloatField;
    qryParRelProductsIS_PRODUCT_SPEC_STATE_3: TAbmesFloatField;
    qryParRelProductsIS_PRODUCT_SPEC_STATE_4: TAbmesFloatField;
    qryParRelProductsIS_PRODUCT_SPEC_STATE_5: TAbmesFloatField;
    qryParRelProductsIS_PRODUCT_SPEC_STATE_6: TAbmesFloatField;
    qryParRelProductsEST_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField;
    qryParRelProductsREAL_TOTAL_INVESTMENT_PERCENT: TAbmesFloatField;
    qryParRelProductsREAL_TOTAL_INVESTMENT_VALUE_DIFF: TAbmesFloatField;
    qryParRelProductsREAL_TOTAL_INVESTMENT_PERCENT_DIFF: TAbmesFloatField;
    qryParRelProductsREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT: TAbmesFloatField;
    qryParRelProductsREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT: TAbmesFloatField;
    qryParRelProductsJOINED_SPEC_STATE_1_PERCENT: TAbmesFloatField;
    qryParRelProductsJOINED_SPEC_STATE_2_PERCENT: TAbmesFloatField;
    qryParRelProductsJOINED_SPEC_STATE_3_PERCENT: TAbmesFloatField;
    qryParRelProductsJOINED_SPEC_STATE_4_PERCENT: TAbmesFloatField;
    qryParRelProductsJOINED_SPEC_STATE_5_PERCENT: TAbmesFloatField;
    qryParRelProductsJOINED_SPEC_STATE_6_PERCENT: TAbmesFloatField;
    qryParRelProductsBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qryParRelProductsPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    qryParRelProductsPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    qryParRelProductsPAR_REL_PRODUCT_EXIST_MONTHS: TAbmesFloatField;
    qryParRelProductsLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryParRelProductsPRP_STATUS_REACH_MONTHS: TAbmesFloatField;
    prvParRelProduct: TDataSetProvider;
    qryParRelProduct: TAbmesSQLQuery;
    qryParRelProductPARTNER_CODE: TAbmesFloatField;
    qryParRelProductBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qryParRelProductPRODUCT_CODE: TAbmesFloatField;
    qryParRelProductDOC_BRANCH_CODE: TAbmesFloatField;
    qryParRelProductDOC_CODE: TAbmesFloatField;
    qryParRelProductIS_REGULAR: TAbmesFloatField;
    qryParRelProductHAS_DOC_ITEMS: TAbmesFloatField;
    dsParRelProduct: TDataSource;
    qryParRelProductPeriods: TAbmesSQLQuery;
    qryParRelProductPeriodsPARTNER_CODE: TAbmesFloatField;
    qryParRelProductPeriodsBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qryParRelProductPeriodsPRODUCT_CODE: TAbmesFloatField;
    qryParRelProductPeriodsPAR_REL_PRODUCT_PERIOD_CODE: TAbmesFloatField;
    qryParRelProductPeriodsBEGIN_DATE: TAbmesSQLTimeStampField;
    qryParRelProductPeriodsEND_DATE: TAbmesSQLTimeStampField;
    qryParRelProductPeriodsDOC_BRANCH_CODE: TAbmesFloatField;
    qryParRelProductPeriodsDOC_CODE: TAbmesFloatField;
    qryParRelProductPeriodsHAS_DOC_ITEMS: TAbmesFloatField;
    qryParRelProductPeriodsIS_APPROVED_BY_PARTNER: TAbmesFloatField;
    qryParRelProductPeriodsEST_SALE_COVER_ACQUIRE_QTY: TAbmesFloatField;
    qryParRelProductPeriodsEST_SALE_COVER_LEASE_QTY: TAbmesFloatField;
    qryParRelProductPeriodsEST_SALE_COVER_LEASE_DURATION: TAbmesFloatField;
    qryParRelProductPeriodsEST_SALE_COVER_CONSIGN_QTY: TAbmesFloatField;
    qryParRelProductPeriodsEST_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField;
    qryParRelProductPeriodsEST_ENV_COVER_LEASE_QTY: TAbmesFloatField;
    qryParRelProductPeriodsEST_ENV_COVER_LEASE_DURATION: TAbmesFloatField;
    qryParRelProductPeriodsACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    qryParRelProductPeriodsACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    qryParRelProductPeriodsOVERRIDE_ACQUIRE_PRICE: TAbmesFloatField;
    qryParRelProductPeriodsLEASE_SINGLE_PRICE: TAbmesFloatField;
    qryParRelProductPeriodsLEASE_CURRENCY_CODE: TAbmesFloatField;
    qryParRelProductPeriodsLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryParRelProductPeriodsOVERRIDE_LEASE_PRICE: TAbmesFloatField;
    qryParRelProductPeriodsSTORE_CODE: TAbmesFloatField;
    qryParRelProductPeriodsOVERRIDE_STORE: TAbmesFloatField;
    qryParRelProductPeriodsPARTNER_OFFICE_CODE: TAbmesFloatField;
    qryParRelProductPeriodsOVERRIDE_PARTNER_OFFICE: TAbmesFloatField;
    qryParRelProductPeriodsTRANSPORT_DURATION_DAYS: TAbmesFloatField;
    qryParRelProductPeriodsOVERRIDE_TRANSPORT_DURATION: TAbmesFloatField;
    qryParRelProductPeriodsMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    qryParRelProductPeriodsOVERRIDE_MEDIATOR_COMPANY: TAbmesFloatField;
    qryParRelProductPeriodsSHIPMENT_TYPE_CODE: TAbmesFloatField;
    qryParRelProductPeriodsOVERRIDE_SHIPMENT_TYPE: TAbmesFloatField;
    qryParRelProductPeriodsIS_PARTNER_TRANSPORT: TAbmesFloatField;
    qryParRelProductPeriodsOVERRIDE_IS_PARTNER_TRANSPORT: TAbmesFloatField;
    qryParRelProductPeriodsCUSTOMHOUSE_CODE: TAbmesFloatField;
    qryParRelProductPeriodsOVERRIDE_CUSTOMHOUSE: TAbmesFloatField;
    qryGetNewParRelProductPeriodCode: TAbmesSQLQuery;
    qryGetNewParRelProductPeriodCodeNEW_PAR_REL_PROD_PERIOD_CODE: TAbmesFloatField;
    prvParRelProductStatuses: TDataSetProvider;
    qryParRelProductStatuses: TAbmesSQLQuery;
    qryParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    qryParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    prvParRelProductStatus: TDataSetProvider;
    qryParRelProductStatus: TAbmesSQLQuery;
    dsParRelProductStatus: TDataSource;
    qryParRelProductStatusChanges: TAbmesSQLQuery;
    qryParRelProductStatusPARTNER_CODE: TAbmesFloatField;
    qryParRelProductStatusBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qryParRelProductStatusPRODUCT_CODE: TAbmesFloatField;
    qryParRelProductStatusPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    qryParRelProductStatusEXISTANCE_MONTHS: TAbmesFloatField;
    qryParRelProductStatusCURRENT_STATUS_REACH_MONTHS: TAbmesFloatField;
    qryParRelProductStatusChangesPARTNER_CODE: TAbmesFloatField;
    qryParRelProductStatusChangesBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qryParRelProductStatusChangesPRODUCT_CODE: TAbmesFloatField;
    qryParRelProductStatusChangesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    qryParRelProductStatusChangesSTATUS_DATE: TAbmesSQLTimeStampField;
    qryParRelProductStatusChangesNEXT_STATUS_DATE: TAbmesSQLTimeStampField;
    qryParRelProductPeriodsMEDIATOR_COMP_SHORT_NAME: TAbmesWideStringField;
    qryParRelProductPeriodsSTORE_IDENTIFIER: TAbmesWideStringField;
    qryParRelProductMEASURE_CODE: TAbmesFloatField;
    qryParRelProductACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryParRelProductACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryParRelProductPeriodsINHRT_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    qryParRelProductPeriodsINHRT_ACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    qryParRelProductPeriodsINHRT_LEASE_SINGLE_PRICE: TAbmesFloatField;
    qryParRelProductPeriodsINHRT_LEASE_CURRENCY_CODE: TAbmesFloatField;
    qryParRelProductPeriodsINHRT_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryParRelProductPeriodsINHRT_STORE_CODE: TAbmesFloatField;
    qryParRelProductPeriodsINHRT_STORE_IDENTIFIER: TAbmesWideStringField;
    qryParRelProductPeriodsINHRT_PARTNER_OFFICE_CODE: TAbmesFloatField;
    qryParRelProductPeriodsINHRT_TRANSPORT_DURATION_DAYS: TAbmesFloatField;
    qryParRelProductPeriodsINHRT_MEDIATOR_COMPANY_CODE: TAbmesFloatField;
    qryParRelProductPeriodsINHRT_MEDIATOR_COMP_SHORT_NAME: TAbmesWideStringField;
    qryParRelProductPeriodsINHRT_SHIPMENT_TYPE_CODE: TAbmesFloatField;
    qryParRelProductPeriodsINHRT_IS_PARTNER_TRANSPORT: TAbmesFloatField;
    qryParRelProductPeriodsINHRT_CUSTOMHOUSE_CODE: TAbmesFloatField;
    qryParRelProductPeriodsINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    qryParRelProductPeriodsINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    qryParRelProductPeriodsINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    qryParRelProductPeriodsINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    qryParRelProductPeriodsINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    qryParRelProductPeriodsINVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    qryParRelProductPeriodsCMMN_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    qryParRelProductPeriodsCMMN_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    qryParRelProductPeriodsCMMN_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    qryParRelProductPeriodsCMMN_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    qryParRelProductPeriodsCMMN_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    qryParRelProductPeriodsCMMN_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    qryParRelProductPeriodsPRECISION_LEVEL_CODE: TAbmesFloatField;
    qryParRelProductPeriodsBALANCE_QUANTITY: TAbmesFloatField;
    qryParRelProductPeriodsACC_EST_SALE_COVER_ACQUIRE_QTY: TAbmesFloatField;
    qryParRelProductPeriodsACC_EST_SALE_COVER_LEASE_QTY: TAbmesFloatField;
    qryParRelProductPeriodsACC_EST_SALE_COVER_CONSIGN_QTY: TAbmesFloatField;
    qryParRelProductPeriodsACC_EST_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField;
    qryParRelProductPeriodsACC_EST_ENV_COVER_LEASE_QTY: TAbmesFloatField;
    qryParRelProductPeriodsACC_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    qryParRelProductPeriodsACC_LEASE_SINGLE_PRICE: TAbmesFloatField;
    qryParRelProductPeriodsACQUIRE_CURRENCY_FIXING: TAbmesFloatField;
    qryParRelProductPeriodsPREV_TOTAL_VG_LEVEL_1_PART: TAbmesFloatField;
    qryParRelProductPeriodsPREV_TOTAL_VG_LEVEL_2_PART: TAbmesFloatField;
    qryParRelProductPeriodsPREV_TOTAL_VG_LEVEL_3_PART: TAbmesFloatField;
    qryParRelProductPeriodsPREV_TOTAL_VG_LEVEL_4_PART: TAbmesFloatField;
    qryParRelProductPeriodsPREV_TOTAL_VG_LEVEL_5_PART: TAbmesFloatField;
    qryParRelProductPeriodsPREV_TOTAL_VG_LEVEL_6_PART: TAbmesFloatField;
    qryParRelProductPeriodsLEASE_CURRENCY_FIXING: TAbmesFloatField;
    qryParRelProductsEST_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryParRelProductsREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryParRelProductsOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    qryParRelProductsPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    qryPRPPInheritedData: TAbmesSQLQuery;
    qryPRPPInheritedDataINHRT_ACQUIRE_SINGLE_PRICE: TAbmesFloatField;
    qryPRPPInheritedDataINHRT_ACQUIRE_CURRENCY_CODE: TAbmesFloatField;
    qryPRPPInheritedDataINHRT_LEASE_SINGLE_PRICE: TAbmesFloatField;
    qryPRPPInheritedDataINHRT_LEASE_CURRENCY_CODE: TAbmesFloatField;
    qryPRPPInheritedDataINHRT_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryPRPPInheritedDataINHRT_STORE_CODE: TAbmesFloatField;
    qryPRPPInheritedDataINHRT_STORE_IDENTIFIER: TAbmesWideStringField;
    qryPRPPInheritedDataINHRT_PARTNER_OFFICE_CODE: TAbmesFloatField;
    qryPRPPInheritedDataINHRT_TRANSPORT_DURATION_DAYS: TAbmesFloatField;
    qryPRPPInheritedDataINHRT_MEDIATOR_COMPANY_CODE: TAbmesFloatField;
    qryPRPPInheritedDataINHRT_MEDIATOR_COMP_SHORT_NAME: TAbmesWideStringField;
    qryPRPPInheritedDataINHRT_SHIPMENT_TYPE_CODE: TAbmesFloatField;
    qryPRPPInheritedDataINHRT_IS_PARTNER_TRANSPORT: TAbmesFloatField;
    qryPRPPInheritedDataINHRT_CUSTOMHOUSE_CODE: TAbmesFloatField;
    qryPRPPInheritedDataINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    qryPRPPInheritedDataINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    qryPRPPInheritedDataINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    qryPRPPInheritedDataINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    qryPRPPInheritedDataINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    qryPRPPInheritedDataINVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    qryPRPPInheritedDataCMMN_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    qryPRPPInheritedDataCMMN_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    qryPRPPInheritedDataCMMN_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    qryPRPPInheritedDataCMMN_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    qryPRPPInheritedDataCMMN_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    qryPRPPInheritedDataCMMN_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField;
    qryPRPPInheritedDataPRECISION_LEVEL_CODE: TAbmesFloatField;
    qryPRPPInheritedDataBALANCE_QUANTITY: TAbmesFloatField;
    prvPRPPInheritedData: TDataSetProvider;
    qryParRelProductExists: TAbmesSQLQuery;
    qryParRelProductExistsPAR_REL_PRODUCT_EXISTS: TAbmesFloatField;
    qryParRelProductSTATUS_CHANGED: TAbmesFloatField;
    qryParRelProductPeriodsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryParRelProductPeriodsCREATE_DATE: TAbmesSQLTimeStampField;
    qryParRelProductPeriodsCREATE_TIME: TAbmesSQLTimeStampField;
    qryParRelProductPeriodsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryParRelProductPeriodsCHANGE_DATE: TAbmesSQLTimeStampField;
    qryParRelProductPeriodsCHANGE_TIME: TAbmesSQLTimeStampField;
    prvPriceList: TDataSetProvider;
    qryPriceList: TAbmesSQLQuery;
    cdsPriceList: TAbmesClientDataSet;
    qryGetPeriodFieldNames: TAbmesSQLQuery;
    qryGetPeriodFieldNamesTABLE_NAME: TAbmesWideStringField;
    qryPriceListPARTNER_CODE: TAbmesFloatField;
    qryPriceListBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qryPriceListPRODUCT_CODE: TAbmesFloatField;
    qryPriceListDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField;
    qryPriceListSINGLE_PRICE: TAbmesFloatField;
    qryPriceListCURRENCY_CODE: TAbmesFloatField;
    qryPriceListCURRENCY_ABBREV: TAbmesWideStringField;
    qryPriceListBASE_SINGLE_PRICE: TAbmesFloatField;
    qryPriceListPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField;
    qryPriceListPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    qryPriceListPAR_REL_PRODUCT_EXIST_MONTHS: TAbmesFloatField;
    qryPriceListPRP_STATUS_REACH_MONTHS: TAbmesFloatField;
    qryPriceListPARTNER_STATUS_CODE: TAbmesFloatField;
    qryPriceListPARTNER_STATUS_NAME: TAbmesWideStringField;
    qryPriceListPARTNER_EXISTENCE_MONTHS: TAbmesFloatField;
    qryPriceListPARTNER_CLASS_ABBREV: TAbmesWideStringField;
    qryPriceListPARTNER_PRIORITY_NO: TAbmesFloatField;
    qryPriceListPAR_PRIORITY_COLOR: TAbmesFloatField;
    qryPriceListPAR_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryPriceListPARTNER_NAME: TAbmesWideStringField;
    qryPriceListPARTNER_DOC_BRANCH_CODE: TAbmesFloatField;
    qryPriceListPARTNER_DOC_CODE: TAbmesFloatField;
    qryPriceListPARTNER_HAS_DOC_ITEMS: TAbmesFloatField;
    qryPriceListPRODUCT_PRIORITY_NO: TAbmesFloatField;
    qryPriceListPRODUCT_PRIORITY_COLOR: TAbmesFloatField;
    qryPriceListPRODUCT_PRIORITY_BACKGR_COLOR: TAbmesFloatField;
    qryPriceListPRODUCT_NAME: TAbmesWideStringField;
    qryPriceListPRODUCT_NO: TAbmesFloatField;
    qryPriceListMEASURE_ABBREV: TAbmesWideStringField;
    qryPriceListACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryPriceListACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryPriceListPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryPriceListPRODUCT_DOC_CODE: TAbmesFloatField;
    qryPriceListPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryPriceListDATE_UNIT_NO: TAbmesFloatField;
    qryPriceListPRODUCT_COMMON_STATUS_CODE: TAbmesFloatField;
    qryPriceListLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryParRelProductsDETAIL_QUANTITY: TAbmesFloatField;
    qryParRelProductsMATERIAL_QUANTITY: TAbmesFloatField;
    qryParRelProductsCAPACITY_BUSY_HOURS: TAbmesFloatField;
    prvEstQuantitiesTable: TDataSetProvider;
    qryEstQuantitiesTable: TAbmesSQLQuery;
    cdsEstQuantitiesTable: TAbmesClientDataSet;
    qryParRelProductsDETAIL_MEASURE_ABBR: TAbmesWideStringField;
    qryParRelProductsDETAIL_ACCOUNT_MEASURE_ABBR: TAbmesWideStringField;
    qryParRelProductsMATERIAL_MEASURE_ABBR: TAbmesWideStringField;
    qryParRelProductsMATERIAL_ACCOUNT_MEASURE_ABBR: TAbmesWideStringField;
    qryParRelProductsDETAIL_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryParRelProductsMATERIAL_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryParRelProductsDETAIL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryParRelProductsMATERIAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    prvEstQuantitiesGraph: TDataSetProvider;
    qryEstQuantitiesGraph: TAbmesSQLQuery;
    qryEstQuantitiesGraphDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField;
    qryEstQuantitiesGraphIN_SALE_COVER_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphIN_ENV_COVER_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphIN_CONSIGN_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphTOTAL_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphDEFICIT_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphPASSIVE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_IN_SALE_COVER_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_IN_ENV_COVER_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_IN_CONSIGN_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_TOTAL_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_DEFICIT_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_PASSIVE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphIN_SALE_COVER_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphIN_ENV_COVER_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphIN_CONSIGN_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphTOTAL_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphDEFICIT_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphPASSIVE_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphSAME_MEASURE: TAbmesFloatField;
    qryEstQuantitiesGraphMEASURE_ABBREV: TAbmesWideStringField;
    qryEstQuantitiesGraphACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryGetRounder: TAbmesSQLQuery;
    qryGetRounderROUNDER: TAbmesFloatField;
    qryEstQuantitiesGraphWORKDAYS: TAbmesFloatField;
    qryEstQuantitiesGraphDATE_UNIT_NO: TAbmesFloatField;
    prvEstPricesCompareGraph: TDataSetProvider;
    qryEstPricesCompareGraph: TAbmesSQLQuery;
    qryEstPricesCompareGraphDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField;
    qryEstPricesCompareGraphDATE_UNIT_LAST_DATE: TAbmesSQLTimeStampField;
    qryEstPricesCompareGraphDATE_UNIT_NO: TAbmesFloatField;
    qryEstPricesCompareGraphDATE_UNIT_WORKDAYS: TAbmesFloatField;
    qryEstPricesCompareGraphPAST_EST_ACQUIRE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphPAST_EST_LEASE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphPAST_EST_ACQUIRE_IV: TAbmesFloatField;
    qryEstPricesCompareGraphFUTURE_EST_ACQUIRE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphFUTURE_EST_LEASE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphFUTURE_EST_ACQUIRE_IV: TAbmesFloatField;
    qryEstPricesCompareGraphPAST_PLAN_REM_ACQUIRE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphPAST_PLAN_REM_LEASE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphPAST_PLAN_REM_ACQUIRE_IV: TAbmesFloatField;
    qryEstPricesCompareGraphFUTURE_PLAN_REM_ACQUIRE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphFUTURE_PLAN_REM_LEASE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphFUTURE_PLAN_REM_ACQUIRE_IV: TAbmesFloatField;
    qryEstPricesCompareGraphPAST_REAL_ACQUIRE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphPAST_REAL_LEASE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphPAST_REAL_ACQUIRE_IV: TAbmesFloatField;
    qryEstPricesCompareGraphFUTURE_REAL_ACQUIRE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphFUTURE_REAL_LEASE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphFUTURE_REAL_ACQUIRE_IV: TAbmesFloatField;
    qryEstPricesCompareGraphPAST_EST_ACQUIRE_VA: TAbmesFloatField;
    qryEstPricesCompareGraphPAST_REAL_ACQUIRE_VA: TAbmesFloatField;
    qryEstPricesCompareGraphFUTURE_EST_ACQUIRE_VA: TAbmesFloatField;
    qryEstPricesCompareGraphFUTURE_REAL_ACQUIRE_VA: TAbmesFloatField;
    qryEstPricesCompareGraphPAST_PLAN_REM_ACQUIRE_VA: TAbmesFloatField;
    qryEstPricesCompareGraphFUTURE_PLAN_REM_ACQUIRE_VA: TAbmesFloatField;
    qryEstQuantitiesGraphNEGATIVE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphPOSITIVE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_NEGATIVE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_POSITIVE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphNEGATIVE_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphPOSITIVE_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphSINGLE_PRODUCT: TAbmesFloatField;
    qryEstPricesCompareGraphPLAN_BUDGET_PRICE: TAbmesFloatField;
    qryEstPricesCompareGraphREAL_BUDGET_PRICE: TAbmesFloatField;
    qryEstPricesCompareGraphPLAN_REM_BUDGET_PRICE: TAbmesFloatField;
    qryGetPeriodFieldNamesYEAR_UNIT_NO_NAME: TAbmesWideStringField;
    qryEstPricesCompareGraphYEAR_DATE_UNIT_NO: TAbmesFloatField;
    qryEstPricesCompareGraphDENSITY_WITH_LATE_PLAN: TAbmesFloatField;
    qryEstPricesCompareGraphDENSITY_WITHOUT_LATE_PLAN: TAbmesFloatField;
    qryEstPricesCompareGraphTOTAL_EST_ACQUIRE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphTOTAL_EST_LEASE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphTOTAL_EST_ACQUIRE_IV: TAbmesFloatField;
    qryEstPricesCompareGraphTOTAL_EST_ACQUIRE_VA: TAbmesFloatField;
    qryEstPricesCompareGraphTOTAL_PLAN_REM_ACQUIRE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphTOTAL_PLAN_REM_LEASE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphTOTAL_PLAN_REM_ACQUIRE_IV: TAbmesFloatField;
    qryEstPricesCompareGraphTOTAL_PLAN_REM_ACQUIRE_VA: TAbmesFloatField;
    qryEstPricesCompareGraphTOTAL_REAL_ACQUIRE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphTOTAL_REAL_LEASE_VG: TAbmesFloatField;
    qryEstPricesCompareGraphTOTAL_REAL_ACQUIRE_IV: TAbmesFloatField;
    qryEstPricesCompareGraphTOTAL_REAL_ACQUIRE_VA: TAbmesFloatField;
    qryEstQuantitiesGraphDATE_UNIT_LAST_DATE: TAbmesSQLTimeStampField;
    qryBorderDealTypes: TAbmesSQLQuery;
    prvBorderDealTypes: TDataSetProvider;
    qryBorderDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    qryBorderDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    qryBorderDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qryBorderDealTypesBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qryBorderDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    qryBorderDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    qryObtainmentTypesForBorderRelTypeAndProdOrderBaseType: TAbmesSQLQuery;
    prvObtainmentTypesForBorderRelTypeAndProdOrderBaseType: TDataSetProvider;
    qryObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    qryObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeOBTAINMENT_TYPE_NAME: TAbmesWideStringField;
    qryObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qryEstQuantitiesGraphIN_MODEL_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_SALE_ACQUIRE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_IN_MODEL_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_OUT_SALE_ACQUIRE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_OUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_OUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_OUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesGraphIN_MODEL_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_SALE_CONSIGN_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_SPEC_ACQUIRE_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_SPEC_CONSIGN_PRICE: TAbmesFloatField;
    qryEstQuantitiesTablePRODUCT_CODE: TAbmesFloatField;
    qryEstQuantitiesTablePRODUCT_NAME: TAbmesWideStringField;
    qryEstQuantitiesTablePRODUCT_NO: TAbmesFloatField;
    qryEstQuantitiesTablePARTNER_PRODUCT_NAMES: TAbmesWideStringField;
    qryEstQuantitiesTablePRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryEstQuantitiesTablePRODUCT_DOC_CODE: TAbmesFloatField;
    qryEstQuantitiesTablePRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryEstQuantitiesTableMEASURE_ABBREV: TAbmesWideStringField;
    qryEstQuantitiesTableACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryEstQuantitiesTableDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField;
    qryEstQuantitiesTableDATE_UNIT_NO: TAbmesFloatField;
    qryEstQuantitiesTableIN_SALE_COVER_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableACC_IN_SALE_COVER_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableIN_SALE_COVER_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableIN_CONSIGN_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableACC_IN_CONSIGN_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableIN_CONSIGN_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableIN_ENV_COVER_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableACC_IN_ENV_COVER_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableIN_ENV_COVER_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableIN_MODEL_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableACC_IN_MODEL_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableIN_MODEL_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableOUT_SALE_ACQUIRE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableACC_OUT_SALE_ACQUIRE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableOUT_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableOUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableACC_OUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableOUT_SALE_CONSIGN_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableOUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableACC_OUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableOUT_SPEC_ACQUIRE_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableOUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableACC_OUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableOUT_SPEC_CONSIGN_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableTOTAL_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableACC_TOTAL_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableTOTAL_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableDEFICIT_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableACC_DEFICIT_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableDEFICIT_PRICE: TAbmesFloatField;
    qryEstQuantitiesTablePASSIVE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableACC_PASSIVE_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTablePASSIVE_PRICE: TAbmesFloatField;
    qryParRelProductPeriodsRESOLVE_DURATION_DAYS: TAbmesFloatField;
    qryParRelProductPeriodsOVERRIDE_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    qryParRelProductPeriodsINHRT_RESOLVE_DURATION_DAYS: TAbmesFloatField;
    qryObtainmentTypesForBorderRelTypeAndProdOrderBaseTypeBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    qryParRelProductsPARTNER_PRODUCT_NAME: TAbmesWideStringField;
    qryParRelProductsPARTNER_PRODUCT_NAMES: TAbmesWideStringField;
    qryParRelProductPRODUCT_CLASS_CODE: TAbmesFloatField;
    qryParRelProductPeriodsIS_PAST: TAbmesFloatField;
    qryParRelProductPeriodsIS_PRESENT: TAbmesFloatField;
    qryParRelProductPeriodsIS_FUTURE: TAbmesFloatField;
    qryParRelProductPeriodsEST_SPEC_FIN_MODEL_CODE: TAbmesFloatField;
    qryParRelProductPeriodsOVERRIDE_EST_SPEC_FIN_MODEL: TAbmesFloatField;
    qryParRelProductPeriodsINHRT_EST_SPEC_FIN_MODEL_CODE: TAbmesFloatField;
    qryPRPPInheritedDataINHRT_EST_SPEC_FIN_MODEL_CODE: TAbmesFloatField;
    qryParRelProductPeriodsEST_SPEC_FIN_MODEL_NAME: TAbmesWideStringField;
    qryParRelProductPeriodsINHRT_EST_SPEC_FIN_MODEL_NAME: TAbmesWideStringField;
    qryPRPPInheritedDataINHRT_EST_SPEC_FIN_MODEL_NAME: TAbmesWideStringField;
    prvSpecFinModels: TDataSetProvider;
    qrySpecFinModels: TAbmesSQLQuery;
    qrySpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    qrySpecFinModelsSPEC_FIN_MODEL_NAME: TAbmesWideStringField;
    qryEstQuantitiesTableIN_PAY_SALE_ACQUIRE_QTY: TAbmesFloatField;
    qryEstQuantitiesTableACC_IN_PAY_SALE_ACQUIRE_QTY: TAbmesFloatField;
    qryEstQuantitiesTableIN_PAY_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableIN_PAY_SALE_LEASE_QTY: TAbmesFloatField;
    qryEstQuantitiesTableACC_IN_PAY_SALE_LEASE_QTY: TAbmesFloatField;
    qryEstQuantitiesTableIN_PAY_SALE_LEASE_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableIN_PAY_FIN_SALE_QTY: TAbmesFloatField;
    qryEstQuantitiesTableACC_IN_PAY_FIN_SALE_QTY: TAbmesFloatField;
    qryEstQuantitiesTableIN_PAY_FIN_SALE_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableOUT_PAY_SALE_COVER_ACQ_QTY: TAbmesFloatField;
    qryEstQuantitiesTableACC_OUT_PAY_SALE_COVER_ACQ_QTY: TAbmesFloatField;
    qryEstQuantitiesTableOUT_PAY_SALE_COVER_ACQ_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableOUT_PAY_SALE_COVER_LEASE_QTY: TAbmesFloatField;
    qryEstQuantitiesTableACC_OUT_PAY_SALE_COVER_LSE_QTY: TAbmesFloatField;
    qryEstQuantitiesTableOUT_PAY_SALE_COVER_LSE_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableOUT_PAY_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField;
    qryEstQuantitiesTableACC_OUT_PAY_ENV_COVER_ACQ_QTY: TAbmesFloatField;
    qryEstQuantitiesTableOUT_PAY_ENV_COVER_ACQ_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableOUT_PAY_ENV_COVER_LEASE_QTY: TAbmesFloatField;
    qryEstQuantitiesTableACC_OUT_PAY_ENV_COVER_LSE_QTY: TAbmesFloatField;
    qryEstQuantitiesTableOUT_PAY_ENV_COVER_LSE_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableOUT_PAY_FIN_DELIVERY_QTY: TAbmesFloatField;
    qryEstQuantitiesTableACC_OUT_PAY_FIN_DELIVERY_QTY: TAbmesFloatField;
    qryEstQuantitiesTableOUT_PAY_FIN_DELIVERY_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableOUT_PAY_BUDGET_DELIVERY_QTY: TAbmesFloatField;
    qryEstQuantitiesTableACC_OUT_PAY_BUDGET_DELIV_QTY: TAbmesFloatField;
    qryEstQuantitiesTableOUT_PAY_BUDGET_DELIV_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphIN_PAY_SALE_ACQUIRE_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphIN_PAY_SALE_LEASE_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphIN_PAY_FIN_SALE_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_PAY_SALE_COVER_ACQUIRE_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_PAY_SALE_COVER_LEASE_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_PAY_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_PAY_ENV_COVER_LEASE_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_PAY_FIN_DELIVERY_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_PAY_BUDGET_DELIVERY_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_IN_PAY_SALE_ACQUIRE_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_IN_PAY_SALE_LEASE_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_IN_PAY_FIN_SALE_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_OUT_PAY_SALE_COVER_ACQ_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_OUT_PAY_SALE_COVER_LSE_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_OUT_PAY_ENV_COVER_ACQ_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_OUT_PAY_ENV_COVER_LSE_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_OUT_PAY_FIN_DELIV_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphACC_OUT_PAY_BUDGET_DELIV_QTY: TAbmesFloatField;
    qryEstQuantitiesGraphIN_PAY_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphIN_PAY_SALE_LEASE_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphIN_PAY_FIN_SALE_PRICE: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_PAY_SALE_COVER_ACQUIRE_PRC: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_PAY_SALE_COVER_LEASE_PRC: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_PAY_ENV_COVER_ACQUIRE_PRC: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_PAY_ENV_COVER_LEASE_PRC: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_PAY_FIN_DELIVERY_PRC: TAbmesFloatField;
    qryEstQuantitiesGraphOUT_PAY_BUDGET_DELIVERY_PRC: TAbmesFloatField;
    qryParRelProductsPARTNER_BASE_ROLE_CODE: TAbmesFloatField;
    qryGetYearFirstDateUnit: TAbmesSQLQuery;
    qryGetYearFirstDateUnitYEAR_FIRST_DATE_UNIT_DATE: TAbmesSQLTimeStampField;
    qryEstPricesCompareGraphVALUE_ADDED_DENSITY: TAbmesFloatField;
    prvParRelProductDoc: TDataSetProvider;
    qryParRelProductDoc: TAbmesSQLQuery;
    qryParRelProductDocDOC_BRANCH_CODE: TAbmesFloatField;
    qryParRelProductDocDOC_CODE: TAbmesFloatField;
    qryParRelProductDocHAS_DOC_ITEMS: TAbmesFloatField;
    prvProductPartnerPrice: TDataSetProvider;
    qryProductPartnerPrice: TAbmesSQLQuery;
    qryProductPartnerPriceTHE_DATE: TAbmesSQLTimeStampField;
    qryProductPartnerPricePARTNER_CODE: TAbmesFloatField;
    qryProductPartnerPricePRODUCT_CODE: TAbmesFloatField;
    qryProductPartnerPriceCOMMON_PARTNER_CODE: TAbmesFloatField;
    qryProductPartnerPriceCOMMON_PRODUCT_CODE: TAbmesFloatField;
    qryProductPartnerPricePARTNER_PRODUCT_NAME: TAbmesWideStringField;
    qryProductPartnerPricePAR_REL_PRODUCT_PRICE: TAbmesFloatField;
    qryProductPartnerPricePAR_REL_PRODUCT_CURRENCY_CODE: TAbmesFloatField;
    qryProductPartnerPricePAR_REL_PRODUCT_DATE_UNIT_CODE: TAbmesFloatField;
    qryProductPartnerPriceCPRODUCT_PRP_PRICE: TAbmesFloatField;
    qryProductPartnerPriceCPRODUCT_PRP_CURRENCY_CODE: TAbmesFloatField;
    qryProductPartnerPriceCPRODUCT_PRP_DATE_UNIT_CODE: TAbmesFloatField;
    qryProductPartnerPriceCPARTNER_PRP_PRICE: TAbmesFloatField;
    qryProductPartnerPriceCPARTNER_PRP_CURRENCY_CODE: TAbmesFloatField;
    qryProductPartnerPriceCPARTNER_PRP_DATE_UNIT_CODE: TAbmesFloatField;
    qryProductPartnerPriceCPROD_CPAR_PRP_PRICE: TAbmesFloatField;
    qryProductPartnerPriceCPROD_CPAR_PRP_CURRENCY_CODE: TAbmesFloatField;
    qryProductPartnerPriceCPROD_CPAR_PRP_DATE_UNIT_CODE: TAbmesFloatField;
    qryProductPartnerPricePRODUCT_PERIOD_PRICE: TAbmesFloatField;
    qryProductPartnerPricePRODUCT_PERIOD_CURRENCY_CODE: TAbmesFloatField;
    qryProductPartnerPricePRODUCT_PERIOD_DATE_UNIT_CODE: TAbmesFloatField;
    qryProductPartnerPricePROD_PER_PRICE_OVERRIDDEN: TAbmesFloatField;
    qryProductPartnerPricePARTNER_PRICE_MODIFIER_NAME: TAbmesWideStringField;
    qryProductPartnerPriceCPARTNER_PRICE_MODIFIER_NAME: TAbmesWideStringField;
    qryProductPartnerPriceVAT_PERCENT: TAbmesFloatField;
    qryProductPartnerPricePRP_PRICE_OVERRIDDEN: TAbmesFloatField;
    qryProductPartnerPriceMEASURE_ABBREV: TAbmesWideStringField;
    qryProductPartnerPricePARTNER_PRICE_MODIFIER_VALUE: TAbmesFloatField;
    qryProductPartnerPriceCPARTNER_PRICE_MODIFIER_VALUE: TAbmesFloatField;
    qryPriceListVAT_PERCENT: TAbmesFloatField;
    qryPriceListHAS_PARTNER: TAbmesFloatField;
    qryProductPartnerPricePRODUCT_CLASS_CODE: TAbmesFloatField;
    qryEstQuantitiesTableIN_TOTAL_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableACC_IN_TOTAL_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableIN_TOTAL_PRICE: TAbmesFloatField;
    qryEstQuantitiesTableOUT_TOTAL_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableACC_OUT_TOTAL_QUANTITY: TAbmesFloatField;
    qryEstQuantitiesTableOUT_TOTAL_PRICE: TAbmesFloatField;
    procedure qryParRelProductsCalcFields(DataSet: TDataSet);
    procedure prvSaleQuantitiesBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qrySaleQuantitiesProductGroupsBeforeOpen(DataSet: TDataSet);
    procedure qrySaleQuantitiesProductGroupsAfterClose(DataSet: TDataSet);
    procedure qrySaleQuantitiesProductInstancesAfterClose(
      DataSet: TDataSet);
    procedure qrySaleQuantitiesProductInstancesBeforeOpen(
      DataSet: TDataSet);
    procedure prvParRelProductBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvParRelProductAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryParRelProductAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure prvParRelProductBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvParRelProductStatusBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryParRelProductsBeforeOpen(DataSet: TDataSet);
    procedure qryParRelProductsAfterClose(DataSet: TDataSet);
    procedure prvParRelProductStatusBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvParRelProductStatusUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure qryParRelProductBeforeProviderEndTransaction(
      DataSet: TDataSet; Commit: Boolean);
    procedure qryPriceListBeforeOpen(DataSet: TDataSet);
    procedure qryPriceListAfterClose(DataSet: TDataSet);
    procedure prvPriceListBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvPriceListAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvPriceListGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvEstQuantitiesTableBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvEstQuantitiesTableAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryEstQuantitiesTableBeforeOpen(DataSet: TDataSet);
    procedure prvEstQuantitiesTableGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure qryEstQuantitiesGraphBeforeOpen(DataSet: TDataSet);
    procedure qryEstQuantitiesTableAfterClose(DataSet: TDataSet);
    procedure qryEstQuantitiesGraphAfterClose(DataSet: TDataSet);
    procedure prvEstQuantitiesGraphGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvEstQuantitiesGraphAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvEstPricesCompareGraphGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvEstPricesCompareGraphAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryEstPricesCompareGraphBeforeOpen(DataSet: TDataSet);
    procedure qryEstPricesCompareGraphAfterClose(DataSet: TDataSet);
    procedure qryEstPricesCompareGraphCalcFields(DataSet: TDataSet);
    procedure qryPriceListCalcFields(DataSet: TDataSet);
  private
    FDocsDelta: Variant;
    FStatusDelta: Variant;
    FParRelProductStatusErrorMessage: string;
    FPriceListDateUnitCount: Integer;
    FEstQuantitiesTableDateUnitCount: Integer;
    FMaxQuantityDelta: Real;
    FMaxAccountQuantityDelta: Real;
    FMaxPriceDelta: Real;
    FEstQuantitiesTableNonPeriodFieldCount: Integer;
    function NewParRelProductPeriodCode: Integer;
    procedure ApplyParRelProductStatus(const ADelta: Variant);
    function GetDateUnitTableName(DateUnitCode: Integer): string;
    function GetYearDateUnitNoFieldName(DateUnitCode: Integer): string;
    procedure CreatePriceListDataSetStructure(DateUnitCount: Integer);
    procedure CreateAndAddFieldToDataSet(ADataSet: TDataSet;
      AFieldClass: TFieldClass; AName: string; AStringSize: Integer = 250);
    procedure CreateEstQuantitiesTableDataSetStructure(DateUnitCount: Integer);
    function GetRounder(Value: Real): Real;
    function CalcEstPricesCompareGraphDensity: Boolean;
  protected
    function ParRelProductExists(PartnerCode: Integer; BorderRelTypeCode: Integer;
      ProductCode: Integer): Boolean;
  end;

type
  IdmParRelProductsProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmParRelProductsProxy = class(TDBPooledDataModuleProxy, IdmParRelProductsProxy)
  private
    class var FSingleton: TdmParRelProductsProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmParRelProducts>;
  strict protected
    property LockedInstance: ISmartLock<TdmParRelProducts> read GetLockedInstance;
  public
    class property Singleton: TdmParRelProductsProxy read FSingleton;

    function ParRelProductExists(PartnerCode: Integer; BorderRelTypeCode: Integer;
      ProductCode: Integer): Boolean;
  end;

implementation

uses
  Variants, uTreeNodes, uDBPooledDataModuleHelper, uUtils, uSvrUtils,
  DateUtils, StrUtils, Math;

{$R *.DFM}

{ TdmParRelProductsProxy }

function TdmParRelProductsProxy.GetLockedInstance: ISmartLock<TdmParRelProducts>;
begin
  Result:= ISmartLock<TdmParRelProducts>(inherited LockedInstance);
end;

function TdmParRelProductsProxy.ParRelProductExists(PartnerCode,
  BorderRelTypeCode, ProductCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.ParRelProductExists(PartnerCode, BorderRelTypeCode, ProductCode);
end;

{ TdmParRelProducts }

procedure TdmParRelProducts.CreateAndAddFieldToDataSet(ADataSet: TDataSet;
  AFieldClass: TFieldClass; AName: string; AStringSize: Integer = 250);
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

procedure TdmParRelProducts.ApplyParRelProductStatus(const ADelta: Variant);
var
  ErrorCount: Integer;
begin
  if not VarIsEmpty(FStatusDelta) then
    begin
      prvParRelProductStatus.ApplyUpdates(FStatusDelta, 0, ErrorCount);

      if (ErrorCount > 0) then
        raise Exception.Create(FParRelProductStatusErrorMessage);
    end;   { if }
end;

procedure TdmParRelProducts.CreatePriceListDataSetStructure(
  DateUnitCount: Integer);

  function ExcludedField(AFieldName: string): Boolean;
  const
    ExcludedFieldNames: array[1..7] of string =
      ('DATE_UNIT_FIRST_DATE', 'DATE_UNIT_NO', 'SINGLE_PRICE', 'CURRENCY_CODE',
       'CURRENCY_ABBREV', 'BASE_SINGLE_PRICE', 'LEASE_DATE_UNIT_NAME');
  var
    s: string;
  begin
    Result:= True;
    for s in ExcludedFieldNames do
      if (s = AFieldName) then
        Exit;
    Result:= False;
  end;  { ExcludedField }

var
  i: Integer;
begin
  cdsPriceList.Fields.Clear;
  cdsPriceList.FieldDefs.Clear;

  // полетата в началото
  for i:= 0 to qryPriceList.FieldCount - 1 do
    if not ExcludedField(qryPriceList.Fields[i].FieldName) then
      CreateAndAddFieldToDataSet(
        cdsPriceList,
        TFieldClass(qryPriceList.Fields[i].ClassType),
        qryPriceList.Fields[i].FieldName
      );

  // цени по периоди
  for i:= 1 to DateUnitCount do
    begin
      CreateAndAddFieldToDataSet(cdsPriceList, TAbmesFloatField, Format('SINGLE_PRICE_%d', [i]));
      CreateAndAddFieldToDataSet(cdsPriceList, TAbmesFloatField, Format('SINGLE_PRICE_V_%d', [i]));
      CreateAndAddFieldToDataSet(cdsPriceList, TAbmesFloatField, Format('ACCOUNT_SINGLE_PRICE_%d', [i]));
      CreateAndAddFieldToDataSet(cdsPriceList, TAbmesFloatField, Format('ACCOUNT_SINGLE_PRICE_V_%d', [i]));
      CreateAndAddFieldToDataSet(cdsPriceList, TAbmesWideStringField,     Format('CURRENCY_ABBREV_%d', [i]), 5);
      CreateAndAddFieldToDataSet(cdsPriceList, TAbmesFloatField, Format('BASE_SINGLE_PRICE_%d', [i]));
      CreateAndAddFieldToDataSet(cdsPriceList, TAbmesFloatField, Format('BASE_SINGLE_PRICE_V_%d', [i]));
      CreateAndAddFieldToDataSet(cdsPriceList, TAbmesFloatField, Format('BASE_ACCOUNT_SINGLE_PRICE_%d', [i]));
      CreateAndAddFieldToDataSet(cdsPriceList, TAbmesFloatField, Format('BASE_ACCOUNT_SINGLE_PRICE_V_%d', [i]));
      CreateAndAddFieldToDataSet(cdsPriceList, TAbmesWideStringField,     Format('BASE_CURRENCY_ABBREV_%d', [i]), 5);
      CreateAndAddFieldToDataSet(cdsPriceList, TAbmesWideStringField,     Format('LEASE_DATE_UNIT_NAME_%d', [i]), 50);
      CreateAndAddFieldToDataSet(cdsPriceList, TAbmesFloatField, Format('PRICE_CHANGE_SIGN_%d', [i]));
    end;  { for }

  // задаване на PrimaryKey
  cdsPriceList.FieldByName('PARTNER_CODE').ProviderFlags:= [pfInKey];
  cdsPriceList.FieldByName('BORDER_REL_TYPE_CODE').ProviderFlags:= [pfInKey];
  cdsPriceList.FieldByName('PRODUCT_CODE').ProviderFlags:= [pfInKey];
end;

function TdmParRelProducts.GetDateUnitTableName(
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

function TdmParRelProducts.GetYearDateUnitNoFieldName(
  DateUnitCode: Integer): string;
begin
  qryGetPeriodFieldNames.ParamByName('THE_DATE_UNIT_CODE').AsInteger:= DateUnitCode;
  qryGetPeriodFieldNames.Open;
  try
    Result:= qryGetPeriodFieldNamesYEAR_UNIT_NO_NAME.AsString;
  finally
    qryGetPeriodFieldNames.Close;
  end;
end;

function TdmParRelProducts.NewParRelProductPeriodCode: Integer;
begin
  qryGetNewParRelProductPeriodCode.Open;
  try
    Result:= qryGetNewParRelProductPeriodCodeNEW_PAR_REL_PROD_PERIOD_CODE.AsInteger;
  finally
    qryGetNewParRelProductPeriodCode.Close;
  end;
end;

function TdmParRelProducts.ParRelProductExists(PartnerCode,
  BorderRelTypeCode, ProductCode: Integer): Boolean;
begin
  with qryParRelProductExists do
    begin
      ParamByName('PARTNER_CODE').AsInteger:= PartnerCode;
      ParamByName('BORDER_REL_TYPE_CODE').AsInteger:= BorderRelTypeCode;
      ParamByName('PRODUCT_CODE').AsInteger:= ProductCode;

      Open;
      try
        Result:= qryParRelProductExistsPAR_REL_PRODUCT_EXISTS.AsBoolean;
      finally
        Close;
      end;
    end;  { with }
end;

procedure TdmParRelProducts.prvEstPricesCompareGraphAfterGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= GetRounder(FMaxPriceDelta);
end;

procedure TdmParRelProducts.prvEstPricesCompareGraphGetData(
  Sender: TObject; DataSet: TCustomClientDataSet);
var
  MaxPrice: Real;
  i: Integer;
  PreviousValueGainedWithLatePlan: Real;
  PreviousValueGainedWithoutLatePlan: Real;
  CalcDensity: Boolean;
  PastPlanRemValueGained: Real;
  PastRealValueGained: Real;
  FutureValueGained: Real;
begin
  inherited;

  if DataSet.IsEmpty then
    FMaxPriceDelta:= 0
  else
    begin
      MaxPrice:= MinDouble;

      CalcDensity:= CalcEstPricesCompareGraphDensity;

      PreviousValueGainedWithLatePlan:= 0;
      PreviousValueGainedWithoutLatePlan:= 0;

      DataSet.First;
      Assert((DataSet.FieldByName('YEAR_DATE_UNIT_NO').AsInteger = 1));
      while not DataSet.Eof do
        begin
          if CalcDensity then
            begin
              PastPlanRemValueGained:=
                DataSet.FieldByName('PAST_PLAN_REM_LEASE_VG').AsFloat +
                DataSet.FieldByName('PAST_PLAN_REM_ACQUIRE_VG').AsFloat;

              PastRealValueGained:=
                DataSet.FieldByName('PAST_REAL_LEASE_VG').AsFloat +
                DataSet.FieldByName('PAST_REAL_ACQUIRE_VG').AsFloat;

              FutureValueGained:=
                DataSet.FieldByName('FUTURE_PLAN_REM_LEASE_VG').AsFloat +
                DataSet.FieldByName('FUTURE_PLAN_REM_ACQUIRE_VG').AsFloat +
                DataSet.FieldByName('FUTURE_REAL_LEASE_VG').AsFloat +
                DataSet.FieldByName('FUTURE_REAL_ACQUIRE_VG').AsFloat;

              if (DataSet.FieldByName('YEAR_DATE_UNIT_NO').AsInteger = 1) then
                begin
                  PreviousValueGainedWithLatePlan:= 0;
                  PreviousValueGainedWithoutLatePlan:= 0;
                end;  { if }

              PreviousValueGainedWithLatePlan:=
                PreviousValueGainedWithLatePlan +
                PastPlanRemValueGained +
                PastRealValueGained +
                FutureValueGained;

              PreviousValueGainedWithoutLatePlan:=
                PreviousValueGainedWithoutLatePlan +
                PastRealValueGained +
                FutureValueGained;

              DataSet.Edit;
              try
                DataSet.FieldByName('DENSITY_WITH_LATE_PLAN').AsFloat:=
                  PreviousValueGainedWithLatePlan /
                  DataSet.FieldByName('YEAR_DATE_UNIT_NO').AsInteger;

                DataSet.FieldByName('DENSITY_WITHOUT_LATE_PLAN').AsFloat:=
                  PreviousValueGainedWithoutLatePlan /
                  DataSet.FieldByName('YEAR_DATE_UNIT_NO').AsInteger;
                DataSet.Post;
              except
                DataSet.Cancel;
                raise;
              end;
            end;  { if }

          for i:= 0 to DataSet.FieldCount - 1 do
            if EndsStr('_VG', DataSet.Fields[i].FieldName) or
               EndsStr('_IV', DataSet.Fields[i].FieldName) or
               EndsStr('_VA', DataSet.Fields[i].FieldName) or
               EndsStr('_PRICE', DataSet.Fields[i].FieldName) or
               StartsStr('DENSITY_', DataSet.Fields[i].FieldName) then
              MaxPrice:= Max(MaxPrice, DataSet.Fields[i].AsFloat);

          DataSet.Next;
        end;  { while }

      FMaxPriceDelta:= MaxPrice;
    end;  { if }
end;

procedure TdmParRelProducts.prvEstQuantitiesGraphAfterGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= VarArrayOf([
    GetRounder(FMaxQuantityDelta),
    GetRounder(FMaxAccountQuantityDelta),
    GetRounder(FMaxPriceDelta)
  ]);
end;

procedure TdmParRelProducts.prvEstQuantitiesGraphGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  MinQuantity: Real;
  MaxQuantity: Real;
  MinAccountQuantity: Real;
  MaxAccountQuantity: Real;
  MinPrice: Real;
  MaxPrice: Real;
  i: Integer;
begin
  inherited;

  if DataSet.IsEmpty then
    begin
      FMaxQuantityDelta:= 0;
      FMaxAccountQuantityDelta:= 0;
      FMaxPriceDelta:= 0;
    end
  else
    begin
      MinQuantity:= MaxDouble;
      MaxQuantity:= MinDouble;
      MinAccountQuantity:= MaxDouble;
      MaxAccountQuantity:= MinDouble;
      MinPrice:= MaxDouble;
      MaxPrice:= MinDouble;

      DataSet.First;
      while not DataSet.Eof do
        begin
          for i:= 0 to DataSet.FieldCount - 1 do
            begin
              if EndsStr('_QUANTITY', DataSet.Fields[i].FieldName) or
                 EndsStr('_QTY', DataSet.Fields[i].FieldName) then
                begin
                  if StartsStr('ACC_', DataSet.Fields[i].FieldName) then
                    begin
                      MinAccountQuantity:= Min(MinAccountQuantity, DataSet.Fields[i].AsFloat);
                      MaxAccountQuantity:= Max(MaxAccountQuantity, DataSet.Fields[i].AsFloat);
                    end
                  else
                    begin
                      MinQuantity:= Min(MinQuantity, DataSet.Fields[i].AsFloat);
                      MaxQuantity:= Max(MaxQuantity, DataSet.Fields[i].AsFloat);
                    end;  { if }
                end;

              if EndsStr('_PRICE', DataSet.Fields[i].FieldName) or
                 EndsStr('_PRC', DataSet.Fields[i].FieldName) then
                begin
                  MinPrice:= Min(MinPrice, DataSet.Fields[i].AsFloat);
                  MaxPrice:= Max(MaxPrice, DataSet.Fields[i].AsFloat);
                end;
            end;

          DataSet.Next;
        end;  { while }

      FMaxQuantityDelta:= MaxQuantity - MinQuantity;
      FMaxAccountQuantityDelta:= MaxAccountQuantity - MinAccountQuantity;
      FMaxPriceDelta:= MaxPrice - MinPrice;
    end;  { if }
end;

procedure TdmParRelProducts.prvEstQuantitiesTableAfterGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  cdsEstQuantitiesTable.Close;
  cdsEstQuantitiesTable.Fields.Clear;
end;

procedure TdmParRelProducts.prvEstQuantitiesTableBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;

  FEstQuantitiesTableDateUnitCount:=
    cdsEstQuantitiesTable.Params.ParamByName('DATE_UNIT_COUNT').AsInteger;

  CreateEstQuantitiesTableDataSetStructure(FEstQuantitiesTableDateUnitCount);
  cdsEstQuantitiesTable.CreateDataSet;
end;

procedure TdmParRelProducts.prvEstQuantitiesTableGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
type
  TEstQuantitiesTableFieldGroup = record
    InSaleCoverQuantityField: TField;
    InEnvCoverQuantityField: TField;
    InConsignQuantityField: TField;
    InModelQuantityField: TField;
    InTotalQuantityField: TField;
    OutSaleAcquireQuantityField: TField;
    OutSaleConsignQuantityField: TField;
    OutSpecAcquireQuantityField: TField;
    OutSpecConsignQuantityField: TField;
    OutTotalQuantityField: TField;
    TotalQuantityField: TField;
    DeficitQuantityField: TField;
    PassiveQuantityField: TField;
    AccInSaleCoverQuantityField: TField;
    AccInEnvCoverQuantityField: TField;
    AccInConsignQuantityField: TField;
    AccInModelQuantityField: TField;
    AccInTotalQuantityField: TField;
    AccOutSaleAcquireQuantityField: TField;
    AccOutSaleConsignQuantityField: TField;
    AccOutSpecAcquireQuantityField: TField;
    AccOutSpecConsignQuantityField: TField;
    AccOutTotalQuantityField: TField;
    AccTotalQuantityField: TField;
    AccDeficitQuantityField: TField;
    AccPassiveQuantityField: TField;
    InSaleCoverPriceField: TField;
    InEnvCoverPriceField: TField;
    InConsignPriceField: TField;
    InModelPriceField: TField;
    InTotalPriceField: TField;
    OutSaleAcquirePriceField: TField;
    OutSaleConsignPriceField: TField;
    OutSpecAcquirePriceField: TField;
    OutSpecConsignPriceField: TField;
    OutTotalPriceField: TField;
    TotalPriceField: TField;
    DeficitPriceField: TField;
    PassivePriceField: TField;

    InPaySaleAcquireQuantityField: TField;
    InPaySaleLeaseQuantityField: TField;
    InPayFinSaleQuantityField: TField;
    OutPaySaleCoverAcquireQuantityField: TField;
    OutPaySaleCoverLeaseQuantityField: TField;
    OutPayEnvCoverAcquireQuantityField: TField;
    OutPayEnvCoverLeaseQuantityField: TField;
    OutPayFinDeliveryQuantityField: TField;
    OutPayBudgetDeliveryQuantityField: TField;

    AccInPaySaleAcquireQuantityField: TField;
    AccInPaySaleLeaseQuantityField: TField;
    AccInPayFinSaleQuantityField: TField;
    AccOutPaySaleCoverAcquireQuantityField: TField;
    AccOutPaySaleCoverLeaseQuantityField: TField;
    AccOutPayEnvCoverAcquireQuantityField: TField;
    AccOutPayEnvCoverLeaseQuantityField: TField;
    AccOutPayFinDeliveryQuantityField: TField;
    AccOutPayBudgetDeliveryQuantityField: TField;

    InPaySaleAcquirePriceField: TField;
    InPaySaleLeasePriceField: TField;
    InPayFinSalePriceField: TField;
    OutPaySaleCoverAcquirePriceField: TField;
    OutPaySaleCoverLeasePriceField: TField;
    OutPayEnvCoverAcquirePriceField: TField;
    OutPayEnvCoverLeasePriceField: TField;
    OutPayFinDeliveryPriceField: TField;
    OutPayBudgetDeliveryPriceField: TField;
  end;

var
  EstQuantitiesTableFieldGroups: array of TEstQuantitiesTableFieldGroup;
  ProductCode: Integer;
  OldNullFieldCount: Integer;
  NewNullFieldCount: Integer;
  FirstPeriodDataFieldIndex: Integer;
  InQuantitiesParam: Integer;
  OutQuantitiesParam: Integer;
  DeficitParam: Integer;
  HasInQuantities: Boolean;
  HasOutQuantities: Boolean;
  HasDeficit: Boolean;
  NonPeriodFieldMappings: array of TField;
  SaveAutoCalcFields: Boolean;

  procedure AssignEstQuantitiesTableFieldGroupFields(
    var AEstQuantitiesTableFieldGroup: TEstQuantitiesTableFieldGroup;
    ANo: Integer; ADataSet: TDataSet);
  begin
    with AEstQuantitiesTableFieldGroup do
      begin
        InSaleCoverQuantityField:= ADataSet.FieldByName(Format('IN_SALE_COVER_QTY_%d', [ANo]));
        InEnvCoverQuantityField:= ADataSet.FieldByName(Format('IN_ENV_COVER_QTY_%d', [ANo]));
        InConsignQuantityField:= ADataSet.FieldByName(Format('IN_CONSIGN_QTY_%d', [ANo]));
        InModelQuantityField:= ADataSet.FieldByName(Format('IN_MODEL_QTY_%d', [ANo]));
        InTotalQuantityField:= ADataSet.FieldByName(Format('IN_TOTAL_QTY_%d', [ANo]));
        OutSaleAcquireQuantityField:= ADataSet.FieldByName(Format('OUT_SALE_ACQUIRE_QTY_%d', [ANo]));
        OutSaleConsignQuantityField:= ADataSet.FieldByName(Format('OUT_SALE_CONSIGN_QTY_%d', [ANo]));
        OutSpecAcquireQuantityField:= ADataSet.FieldByName(Format('OUT_SPEC_ACQUIRE_QTY_%d', [ANo]));
        OutSpecConsignQuantityField:= ADataSet.FieldByName(Format('OUT_SPEC_CONSIGN_QTY_%d', [ANo]));
        OutTotalQuantityField:= ADataSet.FieldByName(Format('OUT_TOTAL_QTY_%d', [ANo]));
        TotalQuantityField:= ADataSet.FieldByName(Format('TOTAL_QTY_%d', [ANo]));
        DeficitQuantityField:= ADataSet.FieldByName(Format('DEFICIT_QTY_%d', [ANo]));
        PassiveQuantityField:= ADataSet.FieldByName(Format('PASSIVE_QTY_%d', [ANo]));
        AccInSaleCoverQuantityField:= ADataSet.FieldByName(Format('ACC_IN_SALE_COVER_QTY_%d', [ANo]));
        AccInEnvCoverQuantityField:= ADataSet.FieldByName(Format('ACC_IN_ENV_COVER_QTY_%d', [ANo]));
        AccInConsignQuantityField:= ADataSet.FieldByName(Format('ACC_IN_CONSIGN_QTY_%d', [ANo]));
        AccInModelQuantityField:= ADataSet.FieldByName(Format('ACC_IN_MODEL_QTY_%d', [ANo]));
        AccInTotalQuantityField:= ADataSet.FieldByName(Format('ACC_IN_TOTAL_QTY_%d', [ANo]));
        AccOutSaleAcquireQuantityField:= ADataSet.FieldByName(Format('ACC_OUT_SALE_ACQUIRE_QTY_%d', [ANo]));
        AccOutSaleConsignQuantityField:= ADataSet.FieldByName(Format('ACC_OUT_SALE_CONSIGN_QTY_%d', [ANo]));
        AccOutSpecAcquireQuantityField:= ADataSet.FieldByName(Format('ACC_OUT_SPEC_ACQUIRE_QTY_%d', [ANo]));
        AccOutSpecConsignQuantityField:= ADataSet.FieldByName(Format('ACC_OUT_SPEC_CONSIGN_QTY_%d', [ANo]));
        AccOutTotalQuantityField:= ADataSet.FieldByName(Format('ACC_OUT_TOTAL_QTY_%d', [ANo]));
        AccTotalQuantityField:= ADataSet.FieldByName(Format('ACC_TOTAL_QTY_%d', [ANo]));
        AccDeficitQuantityField:= ADataSet.FieldByName(Format('ACC_DEFICIT_QTY_%d', [ANo]));
        AccPassiveQuantityField:= ADataSet.FieldByName(Format('ACC_PASSIVE_QTY_%d', [ANo]));
        InSaleCoverPriceField:= ADataSet.FieldByName(Format('IN_SALE_COVER_PRICE_%d', [ANo]));
        InEnvCoverPriceField:= ADataSet.FieldByName(Format('IN_ENV_COVER_PRICE_%d', [ANo]));
        InConsignPriceField:= ADataSet.FieldByName(Format('IN_CONSIGN_PRICE_%d', [ANo]));
        InModelPriceField:= ADataSet.FieldByName(Format('IN_MODEL_PRICE_%d', [ANo]));
        InTotalPriceField:= ADataSet.FieldByName(Format('IN_TOTAL_PRICE_%d', [ANo]));
        OutSaleAcquirePriceField:= ADataSet.FieldByName(Format('OUT_SALE_ACQUIRE_PRICE_%d', [ANo]));
        OutSaleConsignPriceField:= ADataSet.FieldByName(Format('OUT_SALE_CONSIGN_PRICE_%d', [ANo]));
        OutSpecAcquirePriceField:= ADataSet.FieldByName(Format('OUT_SPEC_ACQUIRE_PRICE_%d', [ANo]));
        OutSpecConsignPriceField:= ADataSet.FieldByName(Format('OUT_SPEC_CONSIGN_PRICE_%d', [ANo]));
        OutTotalPriceField:= ADataSet.FieldByName(Format('OUT_TOTAL_PRICE_%d', [ANo]));
        TotalPriceField:= ADataSet.FieldByName(Format('TOTAL_PRICE_%d', [ANo]));
        DeficitPriceField:= ADataSet.FieldByName(Format('DEFICIT_PRICE_%d', [ANo]));
        PassivePriceField:= ADataSet.FieldByName(Format('PASSIVE_PRICE_%d', [ANo]));

        InPaySaleAcquireQuantityField:= ADataSet.FieldByName(Format('IN_PAY_SALE_ACQUIRE_QTY_%d', [ANo]));
        InPaySaleLeaseQuantityField:= ADataSet.FieldByName(Format('IN_PAY_SALE_LEASE_QTY_%d', [ANo]));
        InPayFinSaleQuantityField:= ADataSet.FieldByName(Format('IN_PAY_FIN_SALE_QTY_%d', [ANo]));                          
        OutPaySaleCoverAcquireQuantityField:= ADataSet.FieldByName(Format('OUT_PAY_SALE_COVER_ACQ_QTY_%d', [ANo]));         
        OutPaySaleCoverLeaseQuantityField:= ADataSet.FieldByName(Format('OUT_PAY_SALE_COVER_LEASE_QTY_%d', [ANo]));         
        OutPayEnvCoverAcquireQuantityField:= ADataSet.FieldByName(Format('OUT_PAY_ENV_COVER_ACQUIRE_QTY_%d', [ANo]));       
        OutPayEnvCoverLeaseQuantityField:= ADataSet.FieldByName(Format('OUT_PAY_ENV_COVER_LEASE_QTY_%d', [ANo]));           
        OutPayFinDeliveryQuantityField:= ADataSet.FieldByName(Format('OUT_PAY_FIN_DELIVERY_QTY_%d', [ANo]));                
        OutPayBudgetDeliveryQuantityField:= ADataSet.FieldByName(Format('OUT_PAY_BUDGET_DELIVERY_QTY_%d', [ANo]));          

        AccInPaySaleAcquireQuantityField:= ADataSet.FieldByName(Format('ACC_IN_PAY_SALE_ACQUIRE_QTY_%d', [ANo]));           
        AccInPaySaleLeaseQuantityField:= ADataSet.FieldByName(Format('ACC_IN_PAY_SALE_LEASE_QTY_%d', [ANo]));               
        AccInPayFinSaleQuantityField:= ADataSet.FieldByName(Format('ACC_IN_PAY_FIN_SALE_QTY_%d', [ANo]));                   
        AccOutPaySaleCoverAcquireQuantityField:= ADataSet.FieldByName(Format('ACC_OUT_PAY_SALE_COVER_ACQ_QTY_%d', [ANo]));  
        AccOutPaySaleCoverLeaseQuantityField:= ADataSet.FieldByName(Format('ACC_OUT_PAY_SALE_COVER_LSE_QTY_%d', [ANo]));    
        AccOutPayEnvCoverAcquireQuantityField:= ADataSet.FieldByName(Format('ACC_OUT_PAY_ENV_COVER_ACQ_QTY_%d', [ANo]));    
        AccOutPayEnvCoverLeaseQuantityField:= ADataSet.FieldByName(Format('ACC_OUT_PAY_ENV_COVER_LSE_QTY_%d', [ANo]));      
        AccOutPayFinDeliveryQuantityField:= ADataSet.FieldByName(Format('ACC_OUT_PAY_FIN_DELIVERY_QTY_%d', [ANo]));         
        AccOutPayBudgetDeliveryQuantityField:= ADataSet.FieldByName(Format('ACC_OUT_PAY_BUDGET_DELIV_QTY_%d', [ANo]));      

        InPaySaleAcquirePriceField:= ADataSet.FieldByName(Format('IN_PAY_SALE_ACQUIRE_PRICE_%d', [ANo]));                   
        InPaySaleLeasePriceField:= ADataSet.FieldByName(Format('IN_PAY_SALE_LEASE_PRICE_%d', [ANo]));                       
        InPayFinSalePriceField:= ADataSet.FieldByName(Format('IN_PAY_FIN_SALE_PRICE_%d', [ANo]));                           
        OutPaySaleCoverAcquirePriceField:= ADataSet.FieldByName(Format('OUT_PAY_SALE_COVER_ACQ_PRICE_%d', [ANo]));          
        OutPaySaleCoverLeasePriceField:= ADataSet.FieldByName(Format('OUT_PAY_SALE_COVER_LSE_PRICE_%d', [ANo]));            
        OutPayEnvCoverAcquirePriceField:= ADataSet.FieldByName(Format('OUT_PAY_ENV_COVER_ACQ_PRICE_%d', [ANo]));            
        OutPayEnvCoverLeasePriceField:= ADataSet.FieldByName(Format('OUT_PAY_ENV_COVER_LSE_PRICE_%d', [ANo]));              
        OutPayFinDeliveryPriceField:= ADataSet.FieldByName(Format('OUT_PAY_FIN_DELIVERY_PRICE_%d', [ANo]));                 
        OutPayBudgetDeliveryPriceField:= ADataSet.FieldByName(Format('OUT_PAY_BUDGET_DELIV_PRICE_%d', [ANo]));              
      end;  { with }
  end;  { AssignEstQuantitiesTableFieldGroupFields }

  procedure SetEstQuantitiesTableFieldGroupValues(AEstQuantitiesTableFieldGroup: TEstQuantitiesTableFieldGroup);
  begin
    with AEstQuantitiesTableFieldGroup do
      begin
        InSaleCoverQuantityField.AsVariant:= qryEstQuantitiesTableIN_SALE_COVER_QUANTITY.AsVariant;
        InEnvCoverQuantityField.AsVariant:= qryEstQuantitiesTableIN_ENV_COVER_QUANTITY.AsVariant;
        InConsignQuantityField.AsVariant:= qryEstQuantitiesTableIN_CONSIGN_QUANTITY.AsVariant;
        InModelQuantityField.AsVariant:= qryEstQuantitiesTableIN_MODEL_QUANTITY.AsVariant;
        InTotalQuantityField.AsVariant:= qryEstQuantitiesTableIN_TOTAL_QUANTITY.AsVariant;
        OutSaleAcquireQuantityField.AsVariant:= qryEstQuantitiesTableOUT_SALE_ACQUIRE_QUANTITY.AsVariant;
        OutSaleConsignQuantityField.AsVariant:= qryEstQuantitiesTableOUT_SALE_CONSIGN_QUANTITY.AsVariant;
        OutSpecAcquireQuantityField.AsVariant:= qryEstQuantitiesTableOUT_SPEC_ACQUIRE_QUANTITY.AsVariant;
        OutSpecConsignQuantityField.AsVariant:= qryEstQuantitiesTableOUT_SPEC_CONSIGN_QUANTITY.AsVariant;
        OutTotalQuantityField.AsVariant:= qryEstQuantitiesTableOUT_TOTAL_QUANTITY.AsVariant;
        TotalQuantityField.AsVariant:= qryEstQuantitiesTableTOTAL_QUANTITY.AsVariant;
        DeficitQuantityField.AsVariant:= qryEstQuantitiesTableDEFICIT_QUANTITY.AsVariant;
        PassiveQuantityField.AsVariant:= qryEstQuantitiesTablePASSIVE_QUANTITY.AsVariant;
        AccInSaleCoverQuantityField.AsVariant:= qryEstQuantitiesTableACC_IN_SALE_COVER_QUANTITY.AsVariant;
        AccInEnvCoverQuantityField.AsVariant:= qryEstQuantitiesTableACC_IN_ENV_COVER_QUANTITY.AsVariant;
        AccInConsignQuantityField.AsVariant:= qryEstQuantitiesTableACC_IN_CONSIGN_QUANTITY.AsVariant;
        AccInModelQuantityField.AsVariant:= qryEstQuantitiesTableACC_IN_MODEL_QUANTITY.AsVariant;
        AccInTotalQuantityField.AsVariant:= qryEstQuantitiesTableACC_IN_TOTAL_QUANTITY.AsVariant;
        AccOutSaleAcquireQuantityField.AsVariant:= qryEstQuantitiesTableACC_OUT_SALE_ACQUIRE_QUANTITY.AsVariant;
        AccOutSaleConsignQuantityField.AsVariant:= qryEstQuantitiesTableACC_OUT_SALE_CONSIGN_QUANTITY.AsVariant;
        AccOutSpecAcquireQuantityField.AsVariant:= qryEstQuantitiesTableACC_OUT_SPEC_ACQUIRE_QUANTITY.AsVariant;
        AccOutSpecConsignQuantityField.AsVariant:= qryEstQuantitiesTableACC_OUT_SPEC_CONSIGN_QUANTITY.AsVariant;
        AccOutTotalQuantityField.AsVariant:= qryEstQuantitiesTableACC_OUT_TOTAL_QUANTITY.AsVariant;
        AccTotalQuantityField.AsVariant:= qryEstQuantitiesTableACC_TOTAL_QUANTITY.AsVariant;
        AccDeficitQuantityField.AsVariant:= qryEstQuantitiesTableACC_DEFICIT_QUANTITY.AsVariant;
        AccPassiveQuantityField.AsVariant:= qryEstQuantitiesTableACC_PASSIVE_QUANTITY.AsVariant;
        InSaleCoverPriceField.AsVariant:= qryEstQuantitiesTableIN_SALE_COVER_PRICE.AsVariant;
        InEnvCoverPriceField.AsVariant:= qryEstQuantitiesTableIN_ENV_COVER_PRICE.AsVariant;
        InConsignPriceField.AsVariant:= qryEstQuantitiesTableIN_CONSIGN_PRICE.AsVariant;
        InModelPriceField.AsVariant:= qryEstQuantitiesTableIN_MODEL_PRICE.AsVariant;
        InTotalPriceField.AsVariant:= qryEstQuantitiesTableIN_TOTAL_PRICE.AsVariant;
        OutSaleAcquirePriceField.AsVariant:= qryEstQuantitiesTableOUT_SALE_ACQUIRE_PRICE.AsVariant;
        OutSaleConsignPriceField.AsVariant:= qryEstQuantitiesTableOUT_SALE_CONSIGN_PRICE.AsVariant;
        OutSpecAcquirePriceField.AsVariant:= qryEstQuantitiesTableOUT_SPEC_ACQUIRE_PRICE.AsVariant;
        OutSpecConsignPriceField.AsVariant:= qryEstQuantitiesTableOUT_SPEC_CONSIGN_PRICE.AsVariant;
        OutTotalPriceField.AsVariant:= qryEstQuantitiesTableOUT_TOTAL_PRICE.AsVariant;
        TotalPriceField.AsVariant:= qryEstQuantitiesTableTOTAL_PRICE.AsVariant;
        DeficitPriceField.AsVariant:= qryEstQuantitiesTableDEFICIT_PRICE.AsVariant;
        PassivePriceField.AsVariant:= qryEstQuantitiesTablePASSIVE_PRICE.AsVariant;

        InPaySaleAcquireQuantityField.AsVariant:=          qryEstQuantitiesTableIN_PAY_SALE_ACQUIRE_QTY.AsVariant;
        InPaySaleLeaseQuantityField.AsVariant:=            qryEstQuantitiesTableIN_PAY_SALE_LEASE_QTY.AsVariant;
        InPayFinSaleQuantityField.AsVariant:=              qryEstQuantitiesTableIN_PAY_FIN_SALE_QTY.AsVariant;
        OutPaySaleCoverAcquireQuantityField.AsVariant:=    qryEstQuantitiesTableOUT_PAY_SALE_COVER_ACQ_QTY.AsVariant;
        OutPaySaleCoverLeaseQuantityField.AsVariant:=      qryEstQuantitiesTableOUT_PAY_SALE_COVER_LEASE_QTY.AsVariant;
        OutPayEnvCoverAcquireQuantityField.AsVariant:=     qryEstQuantitiesTableOUT_PAY_ENV_COVER_ACQUIRE_QTY.AsVariant;
        OutPayEnvCoverLeaseQuantityField.AsVariant:=       qryEstQuantitiesTableOUT_PAY_ENV_COVER_LEASE_QTY.AsVariant;
        OutPayFinDeliveryQuantityField.AsVariant:=         qryEstQuantitiesTableOUT_PAY_FIN_DELIVERY_QTY.AsVariant;
        OutPayBudgetDeliveryQuantityField.AsVariant:=      qryEstQuantitiesTableOUT_PAY_BUDGET_DELIVERY_QTY.AsVariant;

        AccInPaySaleAcquireQuantityField.AsVariant:=       qryEstQuantitiesTableACC_IN_PAY_SALE_ACQUIRE_QTY.AsVariant;
        AccInPaySaleLeaseQuantityField.AsVariant:=         qryEstQuantitiesTableACC_IN_PAY_SALE_LEASE_QTY.AsVariant;
        AccInPayFinSaleQuantityField.AsVariant:=           qryEstQuantitiesTableACC_IN_PAY_FIN_SALE_QTY.AsVariant;
        AccOutPaySaleCoverAcquireQuantityField.AsVariant:= qryEstQuantitiesTableACC_OUT_PAY_SALE_COVER_ACQ_QTY.AsVariant;
        AccOutPaySaleCoverLeaseQuantityField.AsVariant:=   qryEstQuantitiesTableACC_OUT_PAY_SALE_COVER_LSE_QTY.AsVariant;
        AccOutPayEnvCoverAcquireQuantityField.AsVariant:=  qryEstQuantitiesTableACC_OUT_PAY_ENV_COVER_ACQ_QTY.AsVariant;
        AccOutPayEnvCoverLeaseQuantityField.AsVariant:=    qryEstQuantitiesTableACC_OUT_PAY_ENV_COVER_LSE_QTY.AsVariant;
        AccOutPayFinDeliveryQuantityField.AsVariant:=      qryEstQuantitiesTableACC_OUT_PAY_FIN_DELIVERY_QTY.AsVariant;
        AccOutPayBudgetDeliveryQuantityField.AsVariant:=   qryEstQuantitiesTableACC_OUT_PAY_BUDGET_DELIV_QTY.AsVariant;

        InPaySaleAcquirePriceField.AsVariant:=             qryEstQuantitiesTableIN_PAY_SALE_ACQUIRE_PRICE.AsVariant;
        InPaySaleLeasePriceField.AsVariant:=               qryEstQuantitiesTableIN_PAY_SALE_LEASE_PRICE.AsVariant;
        InPayFinSalePriceField.AsVariant:=                 qryEstQuantitiesTableIN_PAY_FIN_SALE_PRICE.AsVariant;
        OutPaySaleCoverAcquirePriceField.AsVariant:=       qryEstQuantitiesTableOUT_PAY_SALE_COVER_ACQ_PRICE.AsVariant;
        OutPaySaleCoverLeasePriceField.AsVariant:=         qryEstQuantitiesTableOUT_PAY_SALE_COVER_LSE_PRICE.AsVariant;
        OutPayEnvCoverAcquirePriceField.AsVariant:=        qryEstQuantitiesTableOUT_PAY_ENV_COVER_ACQ_PRICE.AsVariant;
        OutPayEnvCoverLeasePriceField.AsVariant:=          qryEstQuantitiesTableOUT_PAY_ENV_COVER_LSE_PRICE.AsVariant;
        OutPayFinDeliveryPriceField.AsVariant:=            qryEstQuantitiesTableOUT_PAY_FIN_DELIVERY_PRICE.AsVariant;
        OutPayBudgetDeliveryPriceField.AsVariant:=         qryEstQuantitiesTableOUT_PAY_BUDGET_DELIV_PRICE.AsVariant;
      end;  { with }
  end;  { SetPriceFieldGroupValues }

  function qryEstQuantitiesTableHasInQuantity: Boolean;
  begin
    Result:=
      (qryEstQuantitiesTableIN_SALE_COVER_QUANTITY.AsFloat > 0) or
      (qryEstQuantitiesTableIN_ENV_COVER_QUANTITY.AsFloat > 0) or
      (qryEstQuantitiesTableIN_CONSIGN_QUANTITY.AsFloat > 0) or
      (qryEstQuantitiesTableIN_MODEL_QUANTITY.AsFloat > 0) or
      (qryEstQuantitiesTableIN_PAY_SALE_ACQUIRE_QTY.AsFloat > 0) or
      (qryEstQuantitiesTableIN_PAY_SALE_LEASE_QTY.AsFloat > 0) or
      (qryEstQuantitiesTableIN_PAY_FIN_SALE_QTY.AsFloat > 0);
  end;  { qryEstQuantitiesTableHasInQuantity }

  function qryEstQuantitiesTableHasOutQuantity: Boolean;
  begin
    Result:=
      (qryEstQuantitiesTableOUT_SALE_ACQUIRE_QUANTITY.AsFloat > 0) or
      (qryEstQuantitiesTableOUT_SALE_CONSIGN_QUANTITY.AsFloat > 0) or
      (qryEstQuantitiesTableOUT_SPEC_ACQUIRE_QUANTITY.AsFloat > 0) or
      (qryEstQuantitiesTableOUT_SPEC_CONSIGN_QUANTITY.AsFloat > 0) or
      (qryEstQuantitiesTableOUT_PAY_SALE_COVER_ACQ_QTY.AsFloat > 0) or
      (qryEstQuantitiesTableOUT_PAY_SALE_COVER_LEASE_QTY.AsFloat > 0) or
      (qryEstQuantitiesTableOUT_PAY_ENV_COVER_ACQUIRE_QTY.AsFloat > 0) or
      (qryEstQuantitiesTableOUT_PAY_ENV_COVER_LEASE_QTY.AsFloat > 0) or
      (qryEstQuantitiesTableOUT_PAY_FIN_DELIVERY_QTY.AsFloat > 0) or
      (qryEstQuantitiesTableOUT_PAY_BUDGET_DELIVERY_QTY.AsFloat > 0);
  end;  { qryEstQuantitiesTableHasOutQuantity }

  procedure FillNonPeriodFieldMappings;
  var
    k: Integer;
  begin
    for k:= 0 to FEstQuantitiesTableNonPeriodFieldCount - 1 do
      begin
        SetLength(NonPeriodFieldMappings, Length(NonPeriodFieldMappings) + 1);
        NonPeriodFieldMappings[Length(NonPeriodFieldMappings)-1]:=
          qryEstQuantitiesTable.FieldByName(DataSet.Fields[k].FieldName);
      end;  { for }
  end;  { FillNonPeriodFieldMappings }

  procedure AssignNonPeriodFields;
  var
    k: Integer;
  begin
    for k:= 0 to FEstQuantitiesTableNonPeriodFieldCount - 1 do
      DataSet.Fields[k].AsVariant:= NonPeriodFieldMappings[k].AsVariant;
  end;  { AssignNonPeriodFields }

var
  i: Integer;
begin
  inherited;

  SetLength(EstQuantitiesTableFieldGroups, FEstQuantitiesTableDateUnitCount);
  for i:= 1 to FEstQuantitiesTableDateUnitCount do
    AssignEstQuantitiesTableFieldGroupFields(EstQuantitiesTableFieldGroups[i-1], i, DataSet);

  FirstPeriodDataFieldIndex:= 0;
  while (FirstPeriodDataFieldIndex < DataSet.FieldCount) and
        (Pos('_QUANTITY', DataSet.Fields[FirstPeriodDataFieldIndex].FieldName) = 0) and
        (Pos('_PRICE', DataSet.Fields[FirstPeriodDataFieldIndex].FieldName) = 0) and
        (Pos('_QTY', DataSet.Fields[FirstPeriodDataFieldIndex].FieldName) = 0) and
        (Pos('_PRC', DataSet.Fields[FirstPeriodDataFieldIndex].FieldName) = 0) do
    Inc(FirstPeriodDataFieldIndex);

  InQuantitiesParam:= cdsEstQuantitiesTable.Params.ParamByName('IN_QUANTITIES').AsInteger;
  OutQuantitiesParam:= cdsEstQuantitiesTable.Params.ParamByName('OUT_QUANTITIES').AsInteger;
  DeficitParam:= cdsEstQuantitiesTable.Params.ParamByName('DEFICIT').AsInteger;

  FillNonPeriodFieldMappings;

  SaveAutoCalcFields:= qryEstQuantitiesTable.AutoCalcFields;
  qryEstQuantitiesTable.AutoCalcFields:= False;
  try
    qryEstQuantitiesTable.Open;
    try
      while not qryEstQuantitiesTable.Eof do
        begin
          HasInQuantities:= False;
          HasOutQuantities:= False;
          HasDeficit:= False;

          DataSet.Append;
          try
            AssignNonPeriodFields;

            OldNullFieldCount:= 0;
            for i:= 0 to DataSet.FieldCount - 1 do
              Inc(OldNullFieldCount, Ord(DataSet.Fields[i].IsNull));

            ProductCode:= qryEstQuantitiesTablePRODUCT_CODE.AsInteger;
            while (not qryEstQuantitiesTable.Eof) and
                  (qryEstQuantitiesTablePRODUCT_CODE.AsInteger = ProductCode) do
              begin
                Assert(InRange(qryEstQuantitiesTableDATE_UNIT_NO.AsInteger, 1, FEstQuantitiesTableDateUnitCount));
                SetEstQuantitiesTableFieldGroupValues(
                  EstQuantitiesTableFieldGroups[qryEstQuantitiesTableDATE_UNIT_NO.AsInteger-1]);

                HasInQuantities:= HasInQuantities or qryEstQuantitiesTableHasInQuantity;
                HasOutQuantities:= HasOutQuantities or qryEstQuantitiesTableHasOutQuantity;
                HasDeficit:= HasDeficit or (qryEstQuantitiesTableDEFICIT_QUANTITY.AsFloat < 0);

                qryEstQuantitiesTable.Next;
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

            if (OldNullFieldCount = NewNullFieldCount) or
               ((InQuantitiesParam = 2) and (not HasInQuantities)) or
               ((InQuantitiesParam = 3) and HasInQuantities) or
               ((OutQuantitiesParam = 2) and (not HasOutQuantities)) or
               ((OutQuantitiesParam = 3) and HasOutQuantities) or
               ((DeficitParam = 2) and (not HasDeficit)) or
               ((DeficitParam = 3) and HasDeficit) then
              DataSet.Cancel
            else
              DataSet.Post;
          except
            DataSet.Cancel;
            raise;
          end;
        end;  { while }
    finally
      qryEstQuantitiesTable.Close;
    end;
  finally
    qryEstQuantitiesTable.AutoCalcFields:= SaveAutoCalcFields;
  end;
end;

procedure TdmParRelProducts.prvParRelProductAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmParRelProducts.prvParRelProductBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData[0];
  FStatusDelta:= OwnerData[1];
end;

procedure TdmParRelProducts.prvParRelProductBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
  NowDateTime: TDateTime;
begin
  inherited;

  NowDateTime:= ContextNow;

  if (SourceDS = qryParRelProductPeriods) then
    begin           
      if (UpdateKind = ukInsert) then
        begin
          DeltaDS.FieldByName('PAR_REL_PRODUCT_PERIOD_CODE').NewValue:= NewParRelProductPeriodCode;

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

  Applied:= not RecordChanged(DeltaDS);
end;

procedure TdmParRelProducts.prvParRelProductStatusBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FParRelProductStatusErrorMessage:= '';
end;

procedure TdmParRelProducts.prvParRelProductStatusBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  Applied:= (SourceDS = qryParRelProductStatus);
end;

procedure TdmParRelProducts.prvParRelProductStatusUpdateError(
  Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
  UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  inherited;

  if (FParRelProductStatusErrorMessage = '') then
    FParRelProductStatusErrorMessage:= E.Message;
end;

procedure TdmParRelProducts.prvPriceListAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  cdsPriceList.Close;
  cdsPriceList.Fields.Clear;
end;

procedure TdmParRelProducts.prvPriceListBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  FPriceListDateUnitCount:=
    cdsPriceList.Params.ParamByName('DATE_UNIT_COUNT').AsInteger;

  CreatePriceListDataSetStructure(FPriceListDateUnitCount);
  cdsPriceList.CreateDataSet;
end;

procedure TdmParRelProducts.prvPriceListGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
type
  TPriceFieldGroup = record
    SinglePriceField: TField;
    SinglePriceWithVATField: TField;
    AccountSinglePriceField: TField;
    AccountSinglePriceWithVATField: TField;
    CurrencyAbbrevField: TField;
    BaseSinglePriceField: TField;
    BaseSinglePriceWithVATField: TField;
    BaseAccountSinglePriceField: TField;
    BaseAccountSinglepRICEWithVATField: TField;
    BaseCurrencyAbbrevField: TField;
    LeaseDateUnitNameField: TField;
    PriceChangeSignField: TField;
  end;

var
  ShowEmptyLines: Boolean;
  GroupField: TField;
  GroupCode: Integer;
  PriceFieldGroups: array of TPriceFieldGroup;
  i: Integer;

  procedure AssignPriceFieldGroupFields(var APriceFieldGroup: TPriceFieldGroup;
    ANo: Integer; ADataSet: TDataSet);
  begin
    with APriceFieldGroup do
      begin
        SinglePriceField:= ADataSet.FieldByName(Format('SINGLE_PRICE_%d', [ANo]));
        SinglePriceWithVATField:= ADataSet.FieldByName(Format('SINGLE_PRICE_V_%d', [ANo]));
        AccountSinglePriceField:= ADataSet.FieldByName(Format('ACCOUNT_SINGLE_PRICE_%d', [ANo]));
        AccountSinglePriceWithVATField:= ADataSet.FieldByName(Format('ACCOUNT_SINGLE_PRICE_V_%d', [ANo]));
        CurrencyAbbrevField:= ADataSet.FieldByName(Format('CURRENCY_ABBREV_%d', [ANo]));
        BaseSinglePriceField:= ADataSet.FieldByName(Format('BASE_SINGLE_PRICE_%d', [ANo]));
        BaseSinglePriceWithVATField:= ADataSet.FieldByName(Format('BASE_SINGLE_PRICE_V_%d', [ANo]));
        BaseAccountSinglePriceField:= ADataSet.FieldByName(Format('BASE_ACCOUNT_SINGLE_PRICE_%d', [ANo]));
        BaseAccountSinglePriceWithVATField:= ADataSet.FieldByName(Format('BASE_ACCOUNT_SINGLE_PRICE_V_%d', [ANo]));
        BaseCurrencyAbbrevField:= ADataSet.FieldByName(Format('BASE_CURRENCY_ABBREV_%d', [ANo]));
        LeaseDateUnitNameField:= ADataSet.FieldByName(Format('LEASE_DATE_UNIT_NAME_%d', [ANo]));
        PriceChangeSignField:= ADataSet.FieldByName(Format('PRICE_CHANGE_SIGN_%d', [ANo]));
      end;  { with }
  end;  { AssignPriceFieldGroupFields }

  procedure SetPriceFieldGroupValues(APriceFieldGroup: TPriceFieldGroup);
  var
    VATPercent: Real;
  begin
    if qryPriceListVAT_PERCENT.IsNull then
      VATPercent:= 1
    else
      VATPercent:= 1 + qryPriceListVAT_PERCENT.AsFloat;

    with APriceFieldGroup do
      begin
        SinglePriceField.AsVariant:=
          qryPriceListSINGLE_PRICE.AsVariant;
        SinglePriceWithVATField.AsVariant:=
          VarMult(SinglePriceField.AsVariant, VATPercent);
        AccountSinglePriceField.AsVariant:=
          VarDivide(qryPriceListSINGLE_PRICE.AsVariant, qryPriceListACCOUNT_MEASURE_COEF.AsVariant);
        AccountSinglePriceWithVATField.AsVariant:=
          VarMult(AccountSinglePriceField.AsVariant, VATPercent);
        CurrencyAbbrevField.AsVariant:=
          qryPriceListCURRENCY_ABBREV.AsVariant;
        BaseSinglePriceField.AsVariant:=
          qryPriceListBASE_SINGLE_PRICE.AsVariant;
        BaseSinglePriceWithVATField.AsVariant:=
          VarMult(BaseSinglePriceField.AsVariant, VATPercent);
        BaseAccountSinglePriceField.AsVariant:=
          VarDivide(qryPriceListBASE_SINGLE_PRICE.AsVariant, qryPriceListACCOUNT_MEASURE_COEF.AsVariant);
        BaseAccountSinglePriceWithVATField.AsVariant:=
          VarMult(BaseAccountSinglePriceField.AsVariant, VATPercent);

        if not BaseSinglePriceField.IsNull then
          BaseCurrencyAbbrevField.AsVariant:=
            LoginContext.BaseCurrencyAbbrev;

        LeaseDateUnitNameField.AsVariant:=
          qryPriceListLEASE_DATE_UNIT_NAME.AsVariant;
      end;  { with }
  end;  { SetPriceFieldGroupValues }

  procedure SetPriceChanges;
  var
    k, i: Integer;
    PrevSinglePrice: Real;
    PrevCurrencyAbbrev: string;
    PrevBaseSinglePrice: Real;

    procedure FillPrevData(APriceFieldGroup: TPriceFieldGroup);
    begin
      PrevSinglePrice:= APriceFieldGroup.SinglePriceField.AsFloat;
      PrevCurrencyAbbrev:= APriceFieldGroup.CurrencyAbbrevField.AsString;
      PrevBaseSinglePrice:= APriceFieldGroup.BaseSinglePriceField.AsFloat;
    end;  { FillPrevData }

  begin
    k:= Low(PriceFieldGroups);
    while (k <= High(PriceFieldGroups)) and PriceFieldGroups[k].SinglePriceField.IsNull do
      Inc(k);

    if (k <= High(PriceFieldGroups)) and (not PriceFieldGroups[k].SinglePriceField.IsNull) then
      begin
        FillPrevData(PriceFieldGroups[k]);

        for i:= k + 1 to High(PriceFieldGroups) do
          if not PriceFieldGroups[i].SinglePriceField.IsNull then
            begin
              if (PriceFieldGroups[i].CurrencyAbbrevField.AsString = PrevCurrencyAbbrev) then
                PriceFieldGroups[i].PriceChangeSignField.AsInteger:=
                  Sign(PriceFieldGroups[i].SinglePriceField.AsFloat - PrevSinglePrice)
              else
                PriceFieldGroups[i].PriceChangeSignField.AsInteger:=
                  Sign(PriceFieldGroups[i].BaseSinglePriceField.AsFloat - PrevBaseSinglePrice);

              FillPrevData(PriceFieldGroups[i]);
            end;  { if }
      end;  { if }
  end;  { SetPriceChanges }

  function IsEmptyPriceRecord: Boolean;
  var
    PriceFieldGroup: TPriceFieldGroup;
  begin
    for PriceFieldGroup in PriceFieldGroups do
      if not PriceFieldGroup.SinglePriceField.IsNull then
        Exit(False);

    Result:= True;
  end;  { IsEmptyPriceRecord }

begin
  inherited;

  ShowEmptyLines:= (cdsPriceList.Params.ParamByName('SHOW_EMPTY_LINES').AsInteger = 1);

  SetLength(PriceFieldGroups, FPriceListDateUnitCount);
  for i:= 1 to FPriceListDateUnitCount do
    AssignPriceFieldGroupFields(PriceFieldGroups[i-1], i, DataSet);

  if (cdsPriceList.Params.ParamByName('PAR_REL_PRODUCT_ORIENTATION').AsInteger = 1) then
    GroupField:= qryPriceListPARTNER_CODE
  else
    GroupField:= qryPriceListPRODUCT_CODE;

  qryPriceList.Open;
  try
    while not qryPriceList.Eof do
      begin
        DataSet.Append;
        try
          DataSet.AssignFields(qryPriceList);

          GroupCode:= GroupField.AsInteger;
          while (not qryPriceList.Eof) and (GroupField.AsInteger = GroupCode) do
            begin
              Assert(InRange(qryPriceListDATE_UNIT_NO.AsInteger, 1, FPriceListDateUnitCount));
              SetPriceFieldGroupValues(PriceFieldGroups[qryPriceListDATE_UNIT_NO.AsInteger-1]);
              qryPriceList.Next;
            end;  { while }

          if (not ShowEmptyLines) and IsEmptyPriceRecord then
            DataSet.Cancel
          else
            begin
              SetPriceChanges;
              DataSet.Post;
            end;
        except
          DataSet.Cancel;
          raise;
        end;
      end;  { while }
  finally
    qryPriceList.Close;
  end;
end;

procedure TdmParRelProducts.prvSaleQuantitiesBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
var
  SaleQuantitiesParams: TParams;
  TheQuery: TAbmesSQLQuery;
begin
  inherited;

  SaleQuantitiesParams:= TParams.Create;
  try
    UnpackParams(OwnerData, SaleQuantitiesParams);

    if SaleQuantitiesParams.ParamByName('SHOW_INSTANCES').AsBoolean then
      TheQuery:= qrySaleQuantitiesProductInstances
    else
      TheQuery:= qrySaleQuantitiesProductGroups;

    prvSaleQuantities.DataSet:= TheQuery;
    IProviderSupportNG(TheQuery).PSSetParams(SaleQuantitiesParams);
    with TheQuery do
      begin
        if SaleQuantitiesParams.ParamByName('GROUP_BY_CLIENT').AsBoolean then
          begin
            MacroByName('CLIENT_COMPANY_CODE_IN_SELECT').AsString:= 'si.CLIENT_COMPANY_CODE,';
            MacroByName('CLIENT_COMPANY_NAME_IN_SELECT').AsString:= 'c.SHORT_NAME as CLIENT_COMPANY_NAME,';
            MacroByName('CLIENT_COMPANY_CODE_IN_GROUP_BY').AsString:= 'si.CLIENT_COMPANY_CODE,';
            MacroByName('CLIENT_COMPANY_NAME_IN_GROUP_BY').AsString:= 'c.SHORT_NAME,';
          end
        else   { if }
          begin
            MacroByName('CLIENT_COMPANY_CODE_IN_SELECT').AsString:= '(-1) as CLIENT_COMPANY_CODE,';
            MacroByName('CLIENT_COMPANY_NAME_IN_SELECT').AsString:= 'Cast(''Client'' as Varchar2(20 char)) as CLIENT_COMPANY_NAME,';
            MacroByName('CLIENT_COMPANY_CODE_IN_GROUP_BY').AsString:= '';
            MacroByName('CLIENT_COMPANY_NAME_IN_GROUP_BY').AsString:= '';
          end;   { if }
      end;   { with }
  finally
    FreeAndNil(SaleQuantitiesParams);
  end;  { try }
end;

procedure TdmParRelProducts.qrySaleQuantitiesProductGroupsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmParRelProducts.qryEstPricesCompareGraphAfterClose(
  DataSet: TDataSet);
begin
  inherited;

  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);;

  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [DataSet as TAbmesSQLQuery]);
end;

procedure TdmParRelProducts.qryEstPricesCompareGraphBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;

  qryEstPricesCompareGraph.MacroByName('THE_X_DATES').AsString:=
    GetDateUnitTableName(qryEstPricesCompareGraph.Params.ParamByName('DATE_UNIT_CODE').AsInteger);
  qryEstPricesCompareGraph.MacroByName('YEAR_X_NO').AsString:=
    GetYearDateUnitNoFieldName(qryEstPricesCompareGraph.Params.ParamByName('DATE_UNIT_CODE').AsInteger);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [DataSet as TAbmesSQLQuery]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);

  // calc and set :YEAR_FIRST_DATE_UNIT_DATE
  qryGetYearFirstDateUnit.Macros.AssignValues(qryEstPricesCompareGraph.Macros);
  qryGetYearFirstDateUnit.ParamByName('DATE_UNIT_DATE').AsDateTime:=
    qryEstPricesCompareGraph.ParamByName('BEGIN_DATE').AsDateTime;

  qryGetYearFirstDateUnit.Open;
  try
    qryEstPricesCompareGraph.ParamByName('YEAR_FIRST_DATE_UNIT_DATE').AsDateTime:=
      qryGetYearFirstDateUnitYEAR_FIRST_DATE_UNIT_DATE.AsDateTime;
  finally
    qryGetYearFirstDateUnit.Close;
  end;
end;

procedure TdmParRelProducts.qryEstPricesCompareGraphCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  qryEstPricesCompareGraphPAST_EST_ACQUIRE_VA.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPAST_EST_ACQUIRE_VG.AsFloat -
      qryEstPricesCompareGraphPAST_EST_ACQUIRE_IV.AsFloat
    );

  qryEstPricesCompareGraphFUTURE_EST_ACQUIRE_VA.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphFUTURE_EST_ACQUIRE_VG.AsFloat -
      qryEstPricesCompareGraphFUTURE_EST_ACQUIRE_IV.AsFloat
    );

  qryEstPricesCompareGraphPAST_PLAN_REM_ACQUIRE_VA.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPAST_PLAN_REM_ACQUIRE_VG.AsFloat -
      qryEstPricesCompareGraphPAST_PLAN_REM_ACQUIRE_IV.AsFloat
    );

  qryEstPricesCompareGraphFUTURE_PLAN_REM_ACQUIRE_VA.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphFUTURE_PLAN_REM_ACQUIRE_VG.AsFloat -
      qryEstPricesCompareGraphFUTURE_PLAN_REM_ACQUIRE_IV.AsFloat
    );

  qryEstPricesCompareGraphPAST_REAL_ACQUIRE_VA.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPAST_REAL_ACQUIRE_VG.AsFloat -
      qryEstPricesCompareGraphPAST_REAL_ACQUIRE_IV.AsFloat
    );

  qryEstPricesCompareGraphFUTURE_REAL_ACQUIRE_VA.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphFUTURE_REAL_ACQUIRE_VG.AsFloat -
      qryEstPricesCompareGraphFUTURE_REAL_ACQUIRE_IV.AsFloat
    );

  qryEstPricesCompareGraphPLAN_REM_BUDGET_PRICE.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPLAN_BUDGET_PRICE.AsFloat -
      qryEstPricesCompareGraphREAL_BUDGET_PRICE.AsFloat
    );

  qryEstPricesCompareGraphTOTAL_EST_ACQUIRE_VG.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPAST_EST_ACQUIRE_VG.AsFloat +
      qryEstPricesCompareGraphFUTURE_EST_ACQUIRE_VG.AsFloat
    );

  qryEstPricesCompareGraphTOTAL_EST_LEASE_VG.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPAST_EST_LEASE_VG.AsFloat +
      qryEstPricesCompareGraphFUTURE_EST_LEASE_VG.AsFloat
    );

  qryEstPricesCompareGraphTOTAL_EST_ACQUIRE_IV.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPAST_EST_ACQUIRE_IV.AsFloat +
      qryEstPricesCompareGraphFUTURE_EST_ACQUIRE_IV.AsFloat
    );

  qryEstPricesCompareGraphTOTAL_EST_ACQUIRE_VA.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPAST_EST_ACQUIRE_VA.AsFloat +
      qryEstPricesCompareGraphFUTURE_EST_ACQUIRE_VA.AsFloat
    );

  qryEstPricesCompareGraphTOTAL_PLAN_REM_ACQUIRE_VG.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPAST_PLAN_REM_ACQUIRE_VG.AsFloat +
      qryEstPricesCompareGraphFUTURE_PLAN_REM_ACQUIRE_VG.AsFloat
    );

  qryEstPricesCompareGraphTOTAL_PLAN_REM_LEASE_VG.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPAST_PLAN_REM_LEASE_VG.AsFloat +
      qryEstPricesCompareGraphFUTURE_PLAN_REM_LEASE_VG.AsFloat
    );

  qryEstPricesCompareGraphTOTAL_PLAN_REM_ACQUIRE_IV.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPAST_PLAN_REM_ACQUIRE_IV.AsFloat +
      qryEstPricesCompareGraphFUTURE_PLAN_REM_ACQUIRE_IV.AsFloat
    );

  qryEstPricesCompareGraphTOTAL_PLAN_REM_ACQUIRE_VA.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPAST_PLAN_REM_ACQUIRE_VA.AsFloat +
      qryEstPricesCompareGraphFUTURE_PLAN_REM_ACQUIRE_VA.AsFloat
    );

  qryEstPricesCompareGraphTOTAL_REAL_ACQUIRE_VG.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPAST_REAL_ACQUIRE_VG.AsFloat +
      qryEstPricesCompareGraphFUTURE_REAL_ACQUIRE_VG.AsFloat
    );

  qryEstPricesCompareGraphTOTAL_REAL_LEASE_VG.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPAST_REAL_LEASE_VG.AsFloat +
      qryEstPricesCompareGraphFUTURE_REAL_LEASE_VG.AsFloat
    );

  qryEstPricesCompareGraphTOTAL_REAL_ACQUIRE_IV.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPAST_REAL_ACQUIRE_IV.AsFloat +
      qryEstPricesCompareGraphFUTURE_REAL_ACQUIRE_IV.AsFloat
    );

  qryEstPricesCompareGraphTOTAL_REAL_ACQUIRE_VA.AsVariant:=
    FloatToVar(
      qryEstPricesCompareGraphPAST_REAL_ACQUIRE_VA.AsFloat +
      qryEstPricesCompareGraphFUTURE_REAL_ACQUIRE_VA.AsFloat
    );

  if (qryEstPricesCompareGraph.ParamByName('SHOW_INVESTED_VALUES').AsInteger = 0) then
    begin
      if not qryEstPricesCompareGraphTOTAL_EST_ACQUIRE_VG.IsNull then
        begin
          qryEstPricesCompareGraphTOTAL_EST_ACQUIRE_IV.AsFloat:= 0;
          qryEstPricesCompareGraphTOTAL_EST_ACQUIRE_VA.AsFloat:= 0;
        end;

      if not qryEstPricesCompareGraphTOTAL_PLAN_REM_ACQUIRE_VG.IsNull then
        begin
          qryEstPricesCompareGraphTOTAL_PLAN_REM_ACQUIRE_IV.AsFloat:= 0;
          qryEstPricesCompareGraphTOTAL_PLAN_REM_ACQUIRE_VA.AsFloat:= 0;
        end;

      if not qryEstPricesCompareGraphTOTAL_REAL_ACQUIRE_VG.IsNull then
        begin
          qryEstPricesCompareGraphTOTAL_REAL_ACQUIRE_IV.AsFloat:= 0;
          qryEstPricesCompareGraphTOTAL_REAL_ACQUIRE_VA.AsFloat:= 0;
        end;
    end;  { if }
end;

procedure TdmParRelProducts.qryEstQuantitiesGraphAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmParRelProducts.qryEstQuantitiesGraphBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;

  qryEstQuantitiesGraph.MacroByName('THE_X_DATES').AsString:=
    GetDateUnitTableName(qryEstQuantitiesGraph.Params.ParamByName('DATE_UNIT_CODE').AsInteger);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmParRelProducts.qryEstQuantitiesTableAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmParRelProducts.qryEstQuantitiesTableBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;

  qryEstQuantitiesTable.MacroByName('THE_X_DATES').AsString:=
    GetDateUnitTableName(cdsEstQuantitiesTable.Params.ParamByName('DATE_UNIT_CODE').AsInteger);

  qryEstQuantitiesTable.Params.AssignValues(cdsEstQuantitiesTable.Params);
  qryEstQuantitiesTable.CustomParams.AssignValues(cdsEstQuantitiesTable.Params);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmParRelProducts.qryParRelProductAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmParRelProducts.qryParRelProductBeforeProviderEndTransaction(
  DataSet: TDataSet; Commit: Boolean);
begin
  inherited;

  if Commit then
    ApplyParRelProductStatus(FStatusDelta);
end;

procedure TdmParRelProducts.qryParRelProductsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [DataSet as TAbmesSQLQuery]);

  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);
end;

procedure TdmParRelProducts.qryParRelProductsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [DataSet as TAbmesSQLQuery]);;

  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [DataSet as TAbmesSQLQuery]);
end;

procedure TdmParRelProducts.qryParRelProductsCalcFields(DataSet: TDataSet);
begin
  inherited;

  qryParRelProductsJOINED_SPEC_STATE_1_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsJOINED_SPEC_STATE_1_COUNT,
      qryParRelProductsJOINED_PRODUCT_COUNT
    );

  qryParRelProductsJOINED_SPEC_STATE_2_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsJOINED_SPEC_STATE_2_COUNT,
      qryParRelProductsJOINED_PRODUCT_COUNT
    );

  qryParRelProductsJOINED_SPEC_STATE_3_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsJOINED_SPEC_STATE_3_COUNT,
      qryParRelProductsJOINED_PRODUCT_COUNT
    );

  qryParRelProductsJOINED_SPEC_STATE_4_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsJOINED_SPEC_STATE_4_COUNT,
      qryParRelProductsJOINED_PRODUCT_COUNT
    );

  qryParRelProductsJOINED_SPEC_STATE_5_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsJOINED_SPEC_STATE_5_COUNT,
      qryParRelProductsJOINED_PRODUCT_COUNT
    );

  qryParRelProductsJOINED_SPEC_STATE_6_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsJOINED_SPEC_STATE_6_COUNT,
      qryParRelProductsJOINED_PRODUCT_COUNT
    );

  qryParRelProductsIS_PRODUCT_SPEC_STATE_1.AsBoolean:=
    (qryParRelProductsPRODUCT_SPEC_STATE_CODE.AsInteger = 1);

  qryParRelProductsIS_PRODUCT_SPEC_STATE_2.AsBoolean:=
    (qryParRelProductsPRODUCT_SPEC_STATE_CODE.AsInteger = 2);

  qryParRelProductsIS_PRODUCT_SPEC_STATE_3.AsBoolean:=
    (qryParRelProductsPRODUCT_SPEC_STATE_CODE.AsInteger = 3);

  qryParRelProductsIS_PRODUCT_SPEC_STATE_4.AsBoolean:=
    (qryParRelProductsPRODUCT_SPEC_STATE_CODE.AsInteger = 4);

  qryParRelProductsIS_PRODUCT_SPEC_STATE_5.AsBoolean:=
    (qryParRelProductsPRODUCT_SPEC_STATE_CODE.AsInteger = 5);

  qryParRelProductsIS_PRODUCT_SPEC_STATE_6.AsBoolean:=
    (qryParRelProductsPRODUCT_SPEC_STATE_CODE.AsInteger = 6);

  qryParRelProductsEST_ACCOUNT_QUANTITY.AsVariant:=
    qryParRelProductsEST_QUANTITY.AsVariant *
    qryParRelProductsPRODUCT_ACCOUNT_MEASURE_COEF.AsVariant;

  qryParRelProductsEST_ACCOUNT_SINGLE_PRICE.AsVariant:=
    SafeDiv(
      qryParRelProductsEST_TOTAL_PRICE,
      qryParRelProductsEST_ACCOUNT_QUANTITY
    );

  qryParRelProductsEST_SINGLE_PRICE.AsVariant:=
    SafeDiv(
      qryParRelProductsEST_TOTAL_PRICE,
      qryParRelProductsEST_QUANTITY
    );

  qryParRelProductsEST_BUSINESS_RESULT_VALUE.AsVariant:=
    qryParRelProductsEST_TOTAL_PRICE.AsVariant -
    qryParRelProductsEST_TOTAL_INVESTMENT_VALUE.AsVariant;

  qryParRelProductsEST_BUSINESS_RESULT_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsEST_BUSINESS_RESULT_VALUE,
      qryParRelProductsEST_TOTAL_PRICE
    );

  qryParRelProductsEST_TOTAL_INVESTMENT_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsEST_TOTAL_INVESTMENT_VALUE,
      qryParRelProductsEST_TOTAL_PRICE
    );

  qryParRelProductsREAL_ACCOUNT_QUANTITY.AsVariant:=
    qryParRelProductsREAL_QUANTITY.AsVariant *
    qryParRelProductsPRODUCT_ACCOUNT_MEASURE_COEF.AsVariant;

  qryParRelProductsREAL_ACCOUNT_SINGLE_PRICE.AsVariant:=
    SafeDiv(
      qryParRelProductsREAL_TOTAL_PRICE,
      qryParRelProductsREAL_ACCOUNT_QUANTITY
    );

  qryParRelProductsREAL_SINGLE_PRICE.AsVariant:=
    SafeDiv(
      qryParRelProductsREAL_TOTAL_PRICE,
      qryParRelProductsREAL_QUANTITY
    );

  qryParRelProductsREAL_BUSINESS_RESULT_VALUE.AsVariant:=
    qryParRelProductsREAL_TOTAL_PRICE.AsVariant -
    qryParRelProductsREAL_TOTAL_INVESTMENT_VALUE.AsVariant;

  qryParRelProductsREAL_BUSINESS_RESULT_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsREAL_BUSINESS_RESULT_VALUE,
      qryParRelProductsREAL_TOTAL_PRICE
    );

  qryParRelProductsREAL_TOTAL_INVESTMENT_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsREAL_TOTAL_INVESTMENT_VALUE,
      qryParRelProductsREAL_TOTAL_PRICE
    );

  qryParRelProductsEO_ENGINEERING_WORKDAYS_DIFF.AsVariant:=
    qryParRelProductsEO_ENGINEERING_PLAN_WORKDAYS.AsVariant -
    qryParRelProductsEO_ENGINEERING_REAL_WORKDAYS.AsVariant;

  qryParRelProductsEO_ENGINEERING_WORKDAYS_DIFF_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsEO_ENGINEERING_WORKDAYS_DIFF,
      qryParRelProductsEO_ENGINEERING_PLAN_WORKDAYS
    );

  qryParRelProductsREAL_QUANTITY_DIFF.AsVariant:=
    FloatToVar(
      LargeZero(
        qryParRelProductsREAL_QUANTITY.AsFloat -
        qryParRelProductsEST_QUANTITY.AsFloat
      )
    );

  qryParRelProductsREAL_ACCOUNT_QUANTITY_DIFF.AsVariant:=
    FloatToVar(
      LargeZero(
        qryParRelProductsREAL_ACCOUNT_QUANTITY.AsFloat -
        qryParRelProductsEST_ACCOUNT_QUANTITY.AsFloat
      )
    );

  qryParRelProductsREAL_SINGLE_PRICE_DIFF.AsVariant:=
    FloatToVar(
      LargeZero(
        qryParRelProductsREAL_SINGLE_PRICE.AsFloat -
        qryParRelProductsEST_SINGLE_PRICE.AsFloat
      )
    );

  qryParRelProductsREAL_ACCOUNT_SINGLE_PRICE_DIFF.AsVariant:=
    FloatToVar(
      LargeZero(
        qryParRelProductsREAL_ACCOUNT_SINGLE_PRICE.AsFloat -
        qryParRelProductsEST_ACCOUNT_SINGLE_PRICE.AsFloat
      )
    );

  qryParRelProductsREAL_TOTAL_PRICE_DIFF.AsVariant:=
    FloatToVar(
      LargeZero(
        qryParRelProductsREAL_TOTAL_PRICE.AsFloat -
        qryParRelProductsEST_TOTAL_PRICE.AsFloat
      )
    );

  qryParRelProductsREAL_BUSINESS_RESULT_VALUE_DIFF.AsVariant:=
    FloatToVar(
      LargeZero(
        qryParRelProductsREAL_BUSINESS_RESULT_VALUE.AsFloat -
        qryParRelProductsEST_BUSINESS_RESULT_VALUE.AsFloat
      )
    );

  qryParRelProductsREAL_BUSINESS_RESULT_PERCENT_DIFF.AsVariant:=
    FloatToVar(
      LargeZero(
        qryParRelProductsREAL_BUSINESS_RESULT_PERCENT.AsFloat -
        qryParRelProductsEST_BUSINESS_RESULT_PERCENT.AsFloat
      )
    );

  qryParRelProductsREAL_TOTAL_INVESTMENT_VALUE_DIFF.AsVariant:=
    FloatToVar(
      LargeZero(
        qryParRelProductsREAL_TOTAL_INVESTMENT_VALUE.AsFloat -
        qryParRelProductsEST_TOTAL_INVESTMENT_VALUE.AsFloat
      )
    );

  qryParRelProductsREAL_TOTAL_INVESTMENT_PERCENT_DIFF.AsVariant:=
    FloatToVar(
      LargeZero(
        qryParRelProductsREAL_TOTAL_INVESTMENT_PERCENT.AsFloat -
        qryParRelProductsEST_TOTAL_INVESTMENT_PERCENT.AsFloat
      )
    );

  qryParRelProductsREAL_QUANTITY_DIFF_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsREAL_QUANTITY_DIFF,
      qryParRelProductsEST_QUANTITY
    );

  qryParRelProductsREAL_ACCOUNT_QUANTITY_DIFF_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsREAL_ACCOUNT_QUANTITY_DIFF,
      qryParRelProductsEST_ACCOUNT_QUANTITY
    );

  qryParRelProductsREAL_SINGLE_PRICE_DIFF_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsREAL_SINGLE_PRICE_DIFF,
      qryParRelProductsEST_SINGLE_PRICE
    );

  qryParRelProductsREAL_ACCOUNT_SINGLE_PRICE_DIFF_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsREAL_ACCOUNT_SINGLE_PRICE_DIFF,
      qryParRelProductsEST_ACCOUNT_SINGLE_PRICE
    );

  qryParRelProductsREAL_TOTAL_PRICE_DIFF_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsREAL_TOTAL_PRICE_DIFF,
      qryParRelProductsEST_TOTAL_PRICE
    );

  qryParRelProductsREAL_BUSINESS_RESULT_VALUE_DIFF_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsREAL_BUSINESS_RESULT_VALUE_DIFF,
      qryParRelProductsEST_BUSINESS_RESULT_VALUE
    );

  qryParRelProductsREAL_BUSINESS_RESULT_PERCENT_DIFF_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsREAL_BUSINESS_RESULT_PERCENT_DIFF,
      qryParRelProductsEST_BUSINESS_RESULT_PERCENT
    );

  qryParRelProductsREAL_TOTAL_INVESTMENT_VALUE_DIFF_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsREAL_TOTAL_INVESTMENT_VALUE_DIFF,
      qryParRelProductsEST_TOTAL_INVESTMENT_VALUE
    );

  qryParRelProductsREAL_TOTAL_INVESTMENT_PERCENT_DIFF_PERCENT.AsVariant:=
    SafeDiv(
      qryParRelProductsREAL_TOTAL_INVESTMENT_PERCENT_DIFF,
      qryParRelProductsEST_TOTAL_INVESTMENT_PERCENT
    );

  if (qryParRelProductsEST_LEASE_DATE_UNIT_NAME.AsString = qryParRelProductsREAL_LEASE_DATE_UNIT_NAME.AsString) then
    qryParRelProductsLEASE_DATE_UNIT_NAME.AsVariant:=
      qryParRelProductsEST_LEASE_DATE_UNIT_NAME.AsVariant
  else
    qryParRelProductsLEASE_DATE_UNIT_NAME.Clear;

  qryParRelProductsDETAIL_ACCOUNT_QUANTITY.AsVariant:=
    qryParRelProductsDETAIL_QUANTITY.AsVariant *
    qryParRelProductsDETAIL_ACCOUNT_MEASURE_COEF.AsVariant;

  qryParRelProductsMATERIAL_ACCOUNT_QUANTITY.AsVariant:=
    qryParRelProductsMATERIAL_QUANTITY.AsVariant *
    qryParRelProductsMATERIAL_ACCOUNT_MEASURE_COEF.AsVariant;
end;

procedure TdmParRelProducts.qryPriceListAfterClose(DataSet: TDataSet);
begin
  inherited;

  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmParRelProducts.qryPriceListBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  qryPriceList.MacroByName('THE_X_DATES').AsString:=
    GetDateUnitTableName(cdsPriceList.Params.ParamByName('DATE_UNIT_CODE').AsInteger);

  qryPriceList.Params.AssignValues(cdsPriceList.Params);
  qryPriceList.CustomParams.AssignValues(cdsPriceList.Params);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmParRelProducts.qryPriceListCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryPriceListHAS_PARTNER.AsBoolean:= not qryPriceListPARTNER_CODE.IsNull;
end;

procedure TdmParRelProducts.qrySaleQuantitiesProductGroupsAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmParRelProducts.qrySaleQuantitiesProductInstancesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrCompanyFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmParRelProducts.qrySaleQuantitiesProductInstancesAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_COMPANIES'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmParRelProducts.CreateEstQuantitiesTableDataSetStructure(DateUnitCount: Integer);

  function PeriodField(AFieldName: string; DataFieldsOnly: Boolean): Boolean;
  const
    PeriodFieldNameSuffixes: array[1..2] of string = ('DATE_UNIT_FIRST_DATE', 'DATE_UNIT_NO');
    PeriodDataFieldNameSuffixes: array[1..4] of string = ('_QUANTITY', '_PRICE', '_QTY', '_PRC');
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
  cdsEstQuantitiesTable.Fields.Clear;
  cdsEstQuantitiesTable.FieldDefs.Clear;

  // полетата в началото
  FEstQuantitiesTableNonPeriodFieldCount:= 0;
  for i:= 0 to qryEstQuantitiesTable.FieldCount - 1 do
    if (not PeriodField(qryEstQuantitiesTable.Fields[i].FieldName, False)) then
      begin
        CreateAndAddFieldToDataSet(
          cdsEstQuantitiesTable,
          TFieldClass(qryEstQuantitiesTable.Fields[i].ClassType),
          qryEstQuantitiesTable.Fields[i].FieldName
        );
        Inc(FEstQuantitiesTableNonPeriodFieldCount);
      end;

  // периоди
  for k:= 1 to DateUnitCount do
    for i:= 0 to qryEstQuantitiesTable.FieldCount - 1 do
      if PeriodField(qryEstQuantitiesTable.Fields[i].FieldName, True) then
        CreateAndAddFieldToDataSet(
          cdsEstQuantitiesTable,
          TFieldClass(qryEstQuantitiesTable.Fields[i].ClassType),
          Format('%s_%d', [StringReplace(qryEstQuantitiesTable.Fields[i].FieldName, 'QUANTITY', 'QTY', []), k])
        );

  // задаване на PrimaryKey
  cdsEstQuantitiesTable.FieldByName('PRODUCT_CODE').ProviderFlags:= [pfInKey];
end;

function TdmParRelProducts.GetRounder(Value: Real): Real;
begin
  qryGetRounder.Params.ParamByName('VALUE').AsFloat:= Value;
  qryGetRounder.Open;
  try
    Result:= qryGetRounderROUNDER.AsFloat;
  finally
    qryGetRounder.Close;
  end;
end;

function TdmParRelProducts.CalcEstPricesCompareGraphDensity: Boolean;
begin
  Result:=
    (qryEstPricesCompareGraph.ParamByName('BORDER_REL_TYPE_CODE').AsInteger = 1) and
    (qryEstPricesCompareGraph.ParamByName('VALUES_ORIGIN').AsInteger in [0, 2]);
end;

initialization
  TdmParRelProductsProxy.FSingleton:= TdmParRelProductsProxy.Create(TdmParRelProducts);

finalization
  FreeAndNil(TdmParRelProductsProxy.FSingleton);
end.
