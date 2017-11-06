unit dBudget;

interface

uses
  Windows, Messages, SysUtils, Classes, dPooledDataModule,
  dDBPooledDataModule, Provider, DB, AbmesSQLQuery,
  AbmesFields, DBClient, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  JvStringHolder, DBXDevartOracle, uSmartLock;
type
  TdmBudget = class(TDBPooledDataModule)
    qryBudgetOrder: TAbmesSQLQuery;
    prvBudgetOrder: TDataSetProvider;
    qryBudgetOrderBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryBudgetOrderBUDGET_ORDER_CODE: TAbmesFloatField;
    qryBudgetOrderGENERATOR_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderBEGIN_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderEND_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderDESCRIPTION: TAbmesWideStringField;
    qryBudgetOrderBO_REGULARITY_TYPE_CODE: TAbmesFloatField;
    dsBudgetOrder: TDataSource;
    qryBudgetOrderItems: TAbmesSQLQuery;
    qryBudgetOrderCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderCREATE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderCREATE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrderCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderCHANGE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderCHANGE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrderCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderCLOSE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderCLOSE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrderANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderANNUL_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderANNUL_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrderItemsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryBudgetOrderItemsBUDGET_ORDER_CODE: TAbmesFloatField;
    qryBudgetOrderItemsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    qryBudgetOrderItemsBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    qryBudgetOrderItemsBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    qryBudgetOrderItemsDEPT_CODE: TAbmesFloatField;
    qryBudgetOrderItemsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryBudgetOrderItemsBEGIN_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderItemsEND_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderItemsDISTRIBUTION_DATE_UNIT_CODE: TAbmesFloatField;
    qryBudgetOrderItemsTOTAL_PRICE: TAbmesFloatField;
    qryBudgetOrderItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderItemsCREATE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderItemsCREATE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrderItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderItemsCHANGE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderItemsCHANGE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrderItemsCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderItemsCLOSE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderItemsCLOSE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrderItemsANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderItemsANNUL_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderItemsANNUL_TIME: TAbmesSQLTimeStampField;
    qryBORegularityTypes: TAbmesSQLQuery;
    prvBORegularityTypes: TDataSetProvider;
    qryBORegularityTypesBO_REGULARITY_TYPE_CODE: TAbmesFloatField;
    qryBORegularityTypesBO_REGULARITY_TYPE_NAME: TAbmesWideStringField;
    qryBOIDistributionTypes: TAbmesSQLQuery;
    prvBOIDistributionTypes: TDataSetProvider;
    qryBOIDistributionTypesBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    qryBOIDistributionTypesBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    qryBudgetOrders: TAbmesSQLQuery;
    prvBudgetOrders: TDataSetProvider;
    qryBudgetOrdersDetail: TAbmesSQLQuery;
    dsBudgetOrders: TDataSource;
    qryGetMaxBudgetOrderCode: TAbmesSQLQuery;
    qryGetMaxBudgetOrderCodeMAX_BUDGET_ORDER_CODE: TAbmesFloatField;
    qryGetMaxBudgetOrderItemCode: TAbmesSQLQuery;
    qryGetMaxBudgetOrderItemCodeMAX_BUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    qryBudgetOrderItemsDOC_BRANCH_CODE: TAbmesFloatField;
    qryBudgetOrderItemsDOC_CODE: TAbmesFloatField;
    qryBudgetOrderItemsHAS_DOCUMENTATION: TAbmesFloatField;
    qryBudgetOrderDOC_BRANCH_CODE: TAbmesFloatField;
    qryBudgetOrderDOC_CODE: TAbmesFloatField;
    qryBudgetOrderItemsDISTRIBUTED_SINGLE_PRICE: TAbmesFloatField;
    qryBudgetOrderItemsIS_CONFIRMED: TAbmesFloatField;
    qryBudgetOrderItemsNULL_WHEN_ANNULED: TAbmesFloatField;
    qryBudgetOrderItemsNULL_WHEN_CLOSED: TAbmesFloatField;
    qryInsertBOIProductOrderPSD: TAbmesSQLQuery;
    qryModifyBOIProductOrderPSD: TAbmesSQLQuery;
    qryCascadeProcessBOIOrders: TAbmesSQLQuery;
    qryCloseOrAnnulBudgetOrderItems: TAbmesSQLQuery;
    qryDeptBudget: TAbmesSQLQuery;
    prvDeptBudget: TDataSetProvider;
    qryGetPeriodFieldNames: TAbmesSQLQuery;
    qryGetPeriodFieldNamesTABLE_NAME: TAbmesWideStringField;
    qryGetPeriodFieldNamesKEY_FIELD_NAME: TAbmesWideStringField;
    prvBudgetMaster: TDataSetProvider;
    qryBudgetMaster: TAbmesSQLQuery;
    qryBudgetMasterNAME: TAbmesWideStringField;
    qryBudgetMasterIS_GROUP: TAbmesFloatField;
    qryBudgetMasterDOC_BRANCH_CODE: TAbmesFloatField;
    qryBudgetMasterDOC_CODE: TAbmesFloatField;
    qryBudgetMasterHAS_DOCUMENTATION: TAbmesFloatField;
    qryBudgetMasterIS_INACTIVE: TAbmesFloatField;
    qryBudgetMasterTOTAL_REAL_PRICE: TAbmesFloatField;
    qryBudgetMasterTOTAL_PLAN_PRICE: TAbmesFloatField;
    qryBudgetOrderItemsByTimeUnits: TAbmesSQLQuery;
    prvBudgetOrderItemsByTimeUnits: TDataSetProvider;
    qryBOIDistributionTypesBOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField;
    qryBudgetOrderTOTAL_PRICE: TAbmesFloatField;
    qryBudgetOrderREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    qryBudgetOrderItemsREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    qryBudgetOrderPLAN_TOTAL_PRICE: TAbmesFloatField;
    qryBudgetOrderDEVELOPER_DEPT_CODE: TAbmesFloatField;
    qryBudgetMasterBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    qryBOIOrderTypes: TAbmesSQLQuery;
    prvBOIOrderTypes: TDataSetProvider;
    qryBOIOrderTypesBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    qryBOIOrderTypesBOI_ORDER_TYPE_NAME: TAbmesWideStringField;
    qryBudgetOrdersBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryBudgetOrdersBUDGET_ORDER_CODE: TAbmesFloatField;
    qryBudgetOrdersBUDGET_ORDER_IDENTIFIER: TAbmesWideStringField;
    qryBudgetOrdersGENERATOR_DEPT_CODE: TAbmesFloatField;
    qryBudgetOrdersGENERATOR_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryBudgetOrdersDEVELOPER_DEPT_CODE: TAbmesFloatField;
    qryBudgetOrdersDEVELOPER_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryBudgetOrdersBUDGET_ORDER_STATUS_CODE: TAbmesFloatField;
    qryBudgetOrdersBEGIN_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrdersEND_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrdersDESCRIPTION: TAbmesWideStringField;
    qryBudgetOrdersPROJECT_TOTAL_PRICE: TAbmesFloatField;
    qryBudgetOrdersPLAN_TOTAL_PRICE: TAbmesFloatField;
    qryBudgetOrdersACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    qryBudgetOrdersREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    qryBudgetOrdersCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrdersCREATE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrdersCREATE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrdersCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrdersCHANGE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrdersCHANGE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrdersCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrdersCLOSE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrdersCLOSE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrdersANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrdersANNUL_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrdersANNUL_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrdersDetailBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailBUDGET_ORDER_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailBUDGET_ITEM_STATUS_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryBudgetOrdersDetailBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailBOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField;
    qryBudgetOrdersDetailDEPT_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailDEPT_IDENTIFIER: TAbmesWideStringField;
    qryBudgetOrdersDetailBEGIN_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrdersDetailEND_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrdersDetailDAYS_TO_START: TAbmesFloatField;
    qryBudgetOrdersDetailDAYS_LEFT_PERCENT: TAbmesFloatField;
    qryBudgetOrdersDetailTOTAL_PRICE: TAbmesFloatField;
    qryBudgetOrdersDetailIS_CONFIRMED: TAbmesFloatField;
    qryBudgetOrdersDetailBO_PRICE_PERCENT: TAbmesFloatField;
    qryBudgetOrdersDetailREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    qryBudgetOrdersDetailDOC_BRANCH_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailDOC_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailHAS_DOCUMENTATION: TAbmesFloatField;
    qryBudgetOrdersDetailBOI_ORDER_COUNT: TAbmesFloatField;
    qryBudgetOrdersDetailCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailCREATE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrdersDetailCREATE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrdersDetailCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailCHANGE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrdersDetailCHANGE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrdersDetailCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailCLOSE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrdersDetailCLOSE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrdersDetailANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailANNUL_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrdersDetailANNUL_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrderACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    qryBudgetOrderItemsBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    qryBudgetOrderItemsBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryBudgetOrderItemsBO_PRICE_PERCENT: TAbmesFloatField;
    qryBudgetOrderItemsBOI_ORDER_COUNT: TAbmesFloatField;
    qryBOIOrdersMaster: TAbmesSQLQuery;
    prvBOIOrdersMaster: TDataSetProvider;
    qryBOIOrdersMasterBUDGET_ORDER_STATUS_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBUDGET_ORDER_IDENTIFIER: TAbmesWideStringField;
    qryBOIOrdersMasterBEGIN_DATE: TAbmesSQLTimeStampField;
    qryBOIOrdersMasterEND_DATE: TAbmesSQLTimeStampField;
    qryBOIOrdersMasterDESCRIPTION: TAbmesWideStringField;
    qryBOIOrdersMasterBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBUDGET_ORDER_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBUDGET_ITEM_STATUS_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBOI_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryBOIOrdersMasterBOI_END_DATE: TAbmesSQLTimeStampField;
    qryBOIOrdersMasterDEPT_IDENTIFIER: TAbmesWideStringField;
    qryBOIOrdersMasterTOTAL_PRICE: TAbmesFloatField;
    qryBOIOrdersMasterBO_PRICE_PERCENT: TAbmesFloatField;
    qryBOIOrdersMasterREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    qryBOIOrdersMasterBO_DOC_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBO_DOC_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBO_HAS_DOC: TAbmesFloatField;
    qryBOIOrdersMasterBOI_DOC_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBOI_DOC_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBOI_HAS_DOC: TAbmesFloatField;
    qryBOIOrdersMasterBC_DOC_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBC_DOC_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBC_HAS_DOC: TAbmesFloatField;
    qryBOIOrdersDetail: TAbmesSQLQuery;
    qryBOIOrdersDetailBOI_ORDER_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrdersDetailBOI_ORDER_OBJECT_CODE: TAbmesFloatField;
    qryBOIOrdersDetailBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrdersDetailBUDGET_ORDER_CODE: TAbmesFloatField;
    qryBOIOrdersDetailBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    qryBOIOrdersDetailBOI_ORDER_STATUS_CODE: TAbmesFloatField;
    qryBOIOrdersDetailCONSUMER_DEPT_CODE: TAbmesFloatField;
    qryBOIOrdersDetailCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryBOIOrdersDetailCONSUMER_DEPT_HAS_DOC: TAbmesFloatField;
    qryBOIOrdersDetailCONSUMER_DEPT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrdersDetailCONSUMER_DEPT_DOC_CODE: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_CODE: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_NAME: TAbmesWideStringField;
    qryBOIOrdersDetailPRODUCT_HAS_DOC: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_DOC_CODE: TAbmesFloatField;
    qryBOIOrdersDetailMEASURE_CODE: TAbmesFloatField;
    qryBOIOrdersDetailACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryBOIOrdersDetailMEASURE_ABBREV: TAbmesWideStringField;
    qryBOIOrdersDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryBOIOrdersDetailQUANTITY: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_SINGLE_PRICE: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_TOTAL_PRICE: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_BOI_PRICE_PERCENT: TAbmesFloatField;
    qryBOIOrdersDetailSTORE_CODE: TAbmesFloatField;
    qryBOIOrdersDetailSTORE_IDENTIFIER: TAbmesWideStringField;
    qryBOIOrdersDetailPRODUCT_REAL_QUANTITY: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_REAL_TOTAL_PRICE: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_LAST_DEAL_DATE: TAbmesSQLTimeStampField;
    qryBOIOrdersDetailCOMPANY_CODE: TAbmesFloatField;
    qryBOIOrdersDetailDESCRIPTION: TAbmesWideStringField;
    qryBOIOrdersDetailCURRENCY_CODE: TAbmesFloatField;
    qryBOIOrdersDetailPLAN_TOTAL_PRICE: TAbmesFloatField;
    qryBOIOrdersDetailPLAN_DATE: TAbmesSQLTimeStampField;
    qryBOIOrdersDetailCOMPANY_BOI_PRICE_PERCENT: TAbmesFloatField;
    qryBOIOrdersDetailDOCUMENT_TYPE_TEXT: TAbmesWideStringField;
    qryBOIOrdersDetailDOCUMENT_ID_TEXT: TAbmesWideStringField;
    qryBOIOrdersDetailACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    qryBOIOrdersDetailACCOUNT_DATE: TAbmesSQLTimeStampField;
    qryBOIOrdersDetailPRICE_DEVIATION: TAbmesFloatField;
    qryBOIOrdersDetailDATES_DEVIATION: TAbmesFloatField;
    qryBudgetOrderBUDGET_ORDER_CLASS_CODE: TAbmesFloatField;
    qryBOIOrder: TAbmesSQLQuery;
    prvBOIOrder: TDataSetProvider;
    qryBOIOrderBOI_ORDER_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrderBOI_ORDER_OBJECT_CODE: TAbmesFloatField;
    qryBOIOrderBOI_ORDER_CODE: TAbmesFloatField;
    qryBOIOrderBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrderBUDGET_ORDER_CODE: TAbmesFloatField;
    qryBOIOrderBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    qryBOIOrderBUDGET_ORDER_STATUS_CODE: TAbmesFloatField;
    qryBOIOrderBUDGET_ORDER_BRANCH_IDENTIFIER: TAbmesWideStringField;
    qryBOIOrderBO_REGULARITY_TYPE_NAME: TAbmesWideStringField;
    qryBOIOrderGENERATOR_DEPT_CODE: TAbmesFloatField;
    qryBOIOrderDEVELOPER_DEPT_CODE: TAbmesFloatField;
    qryBOIOrderBUDGET_ORDER_ITEM_STATUS_CODE: TAbmesFloatField;
    qryBOIOrderBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    qryBOIOrderBOI_DEPT_CODE: TAbmesFloatField;
    qryBOIOrderBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    qryBOIOrderBOI_DAYS_TO_START: TAbmesFloatField;
    qryBOIOrderBOI_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderBOI_END_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderBOI_DAYS_LEFT_PERCENT: TAbmesFloatField;
    qryBOIOrderDISTRIBUTION_DATE_UNIT_NAME: TAbmesWideStringField;
    qryBOIOrderBOI_DISTRIBUTED_SINGLE_PRICE: TAbmesFloatField;
    qryBOIOrderBOI_TOTAL_PRICE: TAbmesFloatField;
    qryBOIOrderBO_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    qryBOIOrderBOI_REAL_PRICE: TAbmesFloatField;
    qryBOIOrderBOI_REMAINING_PRICE: TAbmesFloatField;
    qryBOIOrderBOI_REMAINING_PRICE_PERCENT: TAbmesFloatField;
    qryBOIOrderBOI_DEVIATION_PERCENT: TAbmesFloatField;
    qryBOIOrderACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryBOIOrderACCOUNT_QUANTITY: TAbmesFloatField;
    qryBOIOrderPRODUCT_REAL_QUANTITY: TAbmesFloatField;
    qryBOIOrderPRODUCT_REAL_TOTAL_PRICE: TAbmesFloatField;
    qryBOIOrderPRODUCT_LAST_DEAL_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderCONSUMER_DEPT_CODE: TAbmesFloatField;
    qryBOIOrderPRODUCT_CODE: TAbmesFloatField;
    qryBOIOrderSTORE_CODE: TAbmesFloatField;
    qryBOIOrderQUANTITY: TAbmesFloatField;
    qryBOIOrderCOMPANY_CODE: TAbmesFloatField;
    qryBOIOrderDESCRIPTION: TAbmesWideStringField;
    qryBOIOrderCURRENCY_CODE: TAbmesFloatField;
    qryBOIOrderDOCUMENT_TYPE_TEXT: TAbmesWideStringField;
    qryBOIOrderDOCUMENT_ID_TEXT: TAbmesWideStringField;
    qryBOIOrderPLAN_TOTAL_PRICE: TAbmesFloatField;
    qryBOIOrderPLAN_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    qryBOIOrderACCOUNT_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderIS_CONFIRMED: TAbmesFloatField;
    qryBOIOrderIS_CANCELED: TAbmesFloatField;
    qryBOIOrderDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    qryBOIOrderDECISION_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBOIOrderCREATE_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderCREATE_TIME: TAbmesSQLTimeStampField;
    qryBOIOrderCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBOIOrderCHANGE_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderCHANGE_TIME: TAbmesSQLTimeStampField;
    qryBOIOrderCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBOIOrderCLOSE_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderCLOSE_TIME: TAbmesSQLTimeStampField;
    qryBOIOrderANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryBOIOrderANNUL_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderANNUL_TIME: TAbmesSQLTimeStampField;
    qryBOIOrderMEASURE_CODE: TAbmesFloatField;
    qryBOIOrderACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryBOIOrderPRODUCT_REAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryBOIOrderPRODUCT_SINGLE_PRICE: TAbmesFloatField;
    qryBOIOrdersMasterDISTRIBUTION_DATE_UNIT_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    qryBOIOrdersDetailBOI_ORDER_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    qryBOIOrderInfo: TAbmesSQLQuery;
    prvBOIOrderInfo: TDataSetProvider;
    qryBOIOrderInfoBUDGET_ORDER_STATUS_CODE: TAbmesFloatField;
    qryBOIOrderInfoBUDGET_ORDER_BRANCH_IDENTIFIER: TAbmesWideStringField;
    qryBOIOrderInfoBO_REGULARITY_TYPE_NAME: TAbmesWideStringField;
    qryBOIOrderInfoGENERATOR_DEPT_CODE: TAbmesFloatField;
    qryBOIOrderInfoDEVELOPER_DEPT_CODE: TAbmesFloatField;
    qryBOIOrderInfoBUDGET_ORDER_ITEM_STATUS_CODE: TAbmesFloatField;
    qryBOIOrderInfoBOI_DEPT_CODE: TAbmesFloatField;
    qryBOIOrderInfoBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    qryBOIOrderInfoBOI_DAYS_TO_START: TAbmesFloatField;
    qryBOIOrderInfoBOI_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderInfoBOI_END_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderInfoBOI_DAYS_LEFT_PERCENT: TAbmesFloatField;
    qryBOIOrderInfoDISTRIBUTION_DATE_UNIT_NAME: TAbmesWideStringField;
    qryBOIOrderInfoBOI_DISTRIBUTED_SINGLE_PRICE: TAbmesFloatField;
    qryBOIOrderInfoBOI_TOTAL_PRICE: TAbmesFloatField;
    qryBOIOrderInfoBO_TOTAL_PRICE_PERCENT: TAbmesFloatField;
    qryBOIOrderInfoBOI_REAL_PRICE: TAbmesFloatField;
    qryBOIOrderInfoBOI_REMAINING_PRICE: TAbmesFloatField;
    qryBOIOrderInfoBOI_REMAINING_PRICE_PERCENT: TAbmesFloatField;
    qryBOIOrderInfoBOI_DEVIATION_PERCENT: TAbmesFloatField;
    qryBOIOrderInfoBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrderInfoBUDGET_ORDER_CODE: TAbmesFloatField;
    qryBOIOrderInfoBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    qryBOIOrdersDetailCURRENCY_NAME: TAbmesWideStringField;
    qryBOIOrdersMasterBOI_ORDER_COUNT: TAbmesFloatField;
    qryBOIOrdersMasterDEPT_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField;
    qryBOIOrdersMasterDISTRIBUTED_SINGLE_PRICE: TAbmesFloatField;
    qryBudgetOrderItemsIS_CANCELED: TAbmesFloatField;
    qryBudgetOrderItemsIS_FOR_RECONSIDERATION: TAbmesFloatField;
    qryBudgetOrderItemsDECISION_ENTER_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderItemsDECISION_ENTER_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderItemsDECISION_APPROVE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderItemsDECISION_APPROVE_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderBOI_IS_CONFIRMED: TAbmesFloatField;
    qryBudgetOrderCAN_ANNUL: TAbmesFloatField;
    qryBudgetOrderItemsCAN_ANNUL: TAbmesFloatField;
    qryBOIOrderInfoBC_PRODUCT_CODE: TAbmesFloatField;
    qryBOIOrdersDetailCOMPANY_NAME: TAbmesWideStringField;
    qryBudgetOrderItemsBOIO_TOTAL_PRICE: TAbmesFloatField;
    qryBOIOrdersDetailACCOUNT_QUANTITY: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_REAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_REAL_QUANTITY_DEV_P: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_REAL_ACC_QTY_DEV_P: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_AVG_S_PRICE_DEV_P: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_REAL_PRICE_DEV_P: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_LAST_SD_DAYS_DEV: TAbmesFloatField;
    qryBudgetOrderItemsBC_DOC_BRANCH_CODE: TAbmesFloatField;
    qryBudgetOrderItemsBC_DOC_CODE: TAbmesFloatField;
    qryBudgetOrderItemsBC_HAS_DOC: TAbmesFloatField;
    qryBudgetOrdersDetailBC_DOC_BRANCH_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailBC_DOC_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailBC_HAS_DOC: TAbmesFloatField;
    qryGetMaxBOIOrderCode: TAbmesSQLQuery;
    qryGetMaxBOIOrderCodeMAX_BOI_ORDER_CODE: TAbmesFloatField;
    qryBOIOrderPLAN_TOTAL_PRICE_BC: TAbmesFloatField;
    qryBOIOrderACCOUNT_TOTAL_PRICE_BC: TAbmesFloatField;
    qryBudgetOrderGENERATOR_DEPT_NAME: TAbmesWideStringField;
    qryBudgetOrderGENERATOR_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryBudgetOrderDEVELOPER_DEPT_NAME: TAbmesWideStringField;
    qryBudgetOrderDEVELOPER_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryBOIOrdersDetailWASTE_BOI_PRICE_PERCENT: TAbmesFloatField;
    qryBOIOrderTypesBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryBOIOrderInfoBOI_IS_CONFIRMED: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_ACC_SINGLE_PRICE: TAbmesFloatField;
    qryBOIOrdersDetailPRODUCT_AVG_ACC_S_PRICE_DEV_P: TAbmesFloatField;
    qryBOIOrdersDetailPRICE_DEVIATION_PERCENT: TAbmesFloatField;
    qryBudgetOrderPRODUCT_CODE: TAbmesFloatField;
    qryBOIOrderInfoBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailNULL_WHEN_ANNULED: TAbmesFloatField;
    qryBudgetOrdersDetailNULL_WHEN_CLOSED: TAbmesFloatField;
    qryBudgetOrderClasses: TAbmesSQLQuery;
    prvBudgetOrderClasses: TDataSetProvider;
    qryBudgetOrderClassesBUDGET_ORDER_CLASS_CODE: TAbmesFloatField;
    qryBudgetOrderClassesBUDGET_ORDER_CLASS_NAME: TAbmesWideStringField;
    qryBudgetOrderHAS_DOCUMENTATION: TAbmesFloatField;
    qryBudgetOrderPRODUCT_NAME: TAbmesWideStringField;
    qryBudgetOrderPRODUCT_NO: TAbmesFloatField;
    qryBudgetOrdersHAS_DOCUMENTATION: TAbmesFloatField;
    qryBudgetOrdersDOC_BRANCH_CODE: TAbmesFloatField;
    qryBudgetOrdersDOC_CODE: TAbmesFloatField;
    qryBOIOrderBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    qryBudgetOrderItemsBUDGET_PRODUCT_CODE: TAbmesFloatField;
    qryBudgetOrderGENERATOR_DEPT_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailBUDGET_PRODUCT_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBUDGET_PRODUCT_CODE: TAbmesFloatField;
    qryBOIOrderBUDGET_PRODUCT_CODE: TAbmesFloatField;
    qryBOIOrderInfoBUDGET_PRODUCT_CODE: TAbmesFloatField;
    qryBudgetMasterBUDGET_PRODUCT_CODE: TAbmesFloatField;
    qryBudgetMasterPARENT_CODE: TAbmesFloatField;
    qryBudgetMasterCUSTOM_CODE: TAbmesFloatField;
    qryBudgetOrdersDetailBUDGET_PRODUCT_NO: TAbmesFloatField;
    qryBudgetOrdersDetailBUDGET_PRODUCT_NAME: TAbmesWideStringField;
    qryBudgetOrderItemsBUDGET_PRODUCT_NO: TAbmesFloatField;
    qryBudgetOrderItemsBUDGET_PRODUCT_NAME: TAbmesWideStringField;
    qryBOIOrdersMasterBUDGET_PRODUCT_NO: TAbmesFloatField;
    qryBOIOrdersMasterBUDGET_PRODUCT_NAME: TAbmesWideStringField;
    qryBOIOrdersDetailANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryBOIOrdersDetailNULL_WHEN_ANNULED: TAbmesFloatField;
    qryBOIOrderInfoBO_DOC_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrderInfoBO_DOC_CODE: TAbmesFloatField;
    qryBOIOrderInfoBO_HAS_DOC: TAbmesFloatField;
    qryBOIOrderFIN_ORDER_CODE: TAbmesFloatField;
    qryBOIOrderFO_EXEC_DEPT_CODE: TAbmesFloatField;
    qryBOIOrderFO_PRIORITY_CODE: TAbmesFloatField;
    qryBOIOrderFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    qryBOIOrderSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    mshLocalMacroLibrary: TJvMultiStringHolder;
    qryBudgetMasterTOTAL_BOIO_PLAN_PRICE: TAbmesFloatField;
    qryBudgetOrdersDetailBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField;
    qryBudgetOrderItemsBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField;
    qryBudgetOrderItemTypes: TAbmesSQLQuery;
    qryBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField;
    qryBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_NO: TAbmesFloatField;
    qryBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_NAME: TAbmesWideStringField;
    qryBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField;
    prvBudgetOrderItemTypes: TDataSetProvider;
    qryBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField;
    qryBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField;
    qryBOIOrdersMasterBUDGET_ORDER_ITEM_TYPE: TAbmesWideStringField;
    qryNewBOIOrderNo: TAbmesSQLQuery;
    qryNewBOIOrderNoNEW_BOI_ORDER_CODE: TAbmesFloatField;
    prvBOIOrdersDetail: TDataSetProvider;
    qryBOIOrdersMasterANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField;
    qryBudgetOrderItemsREMAINING_WORKDAYS_PERCENT: TAbmesFloatField;
    qryBudgetOrdersDAYS_LEFT_PERCENT: TAbmesFloatField;
    qryBOIOrderInfoBO_PRODUCT_NO: TAbmesFloatField;
    qryBOIOrderInfoBO_PRODUCT_NAME: TAbmesWideStringField;
    qryBudgetMasterCUSTOM_CODE_AS_TEXT: TAbmesWideStringField;
    qryBudgetOrdersDetailACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    qryBudgetOrderORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField;
    qryOrgTaskProposalStates: TAbmesSQLQuery;
    prvOrgTaskProposalStates: TDataSetProvider;
    qryOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField;
    qryOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NO: TAbmesFloatField;
    qryOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField;
    qryOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField;
    qryBudgetOrdersPRODUCT_NAME: TAbmesWideStringField;
    qryBudgetOrdersORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField;
    qryBOIOrdersMasterBUDGET_ORDER_PRODUCT_NAME: TAbmesWideStringField;
    qryBOIOrdersMasterORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField;
    qryBOIOrderDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrderDELIVERY_OBJECT_CODE: TAbmesFloatField;
    qryBOIOrderDeliveryData: TAbmesSQLQuery;
    prvBOIOrderDeliveryData: TDataSetProvider;
    qryBOIOrderDeliveryDataPLAN_TOTAL_PRICE: TAbmesFloatField;
    qryBOIOrderDeliveryDataPLAN_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderDeliveryDataACCOUNT_TOTAL_PRICE: TAbmesFloatField;
    qryBOIOrderDeliveryDataACCOUNT_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrderBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryBOIOrderBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField;
    qryBOIOrdersMasterBOI_IS_CONFIRMED: TAbmesFloatField;
    qryBudgetOrdersDetailBUDGET_ORDER_ITEM_TYPE_DISPLAY: TAbmesWideStringField;
    qryBOIOrdersDetailDELIVERY_IDENTIFIER: TAbmesWideStringField;
    qryBudgetOrderBOIO_PLAN_TOTAL_PRICE: TAbmesFloatField;
    qryBudgetOrdersBOIO_PLAN_TOTAL_PRICE: TAbmesFloatField;
    qryBudgetMasterIS_LAST_CHILD: TAbmesFloatField;
    qryBudgetMasterHAS_CHILDREN: TAbmesFloatField;
    qryBudgetMasterBUDGET_PRODUCT_LEVEL: TAbmesFloatField;
    qryBOIOrderFO_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrderFO_IS_COMPLETED: TAbmesFloatField;
    qryBOIOrderFO_CLOSE_REQUESTED: TAbmesFloatField;
    qryBOIOrdersDetailHAS_FIN_ORDER: TAbmesFloatField;
    qryBOIOrderFO_STATUS_CODE: TAbmesFloatField;
    qryBOIOrderFO_PARTNER_CODE: TAbmesFloatField;
    qryBOIOrderStoreDealsMinMaxDates: TAbmesSQLQuery;
    prvBOIOrderStoredDealsMinMaxDates: TDataSetProvider;
    qryBOIOrderStoreDealsMinMaxDatesMIN_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderStoreDealsMinMaxDatesMAX_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qryBOIOrderDOC_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrderDOC_CODE: TAbmesFloatField;
    qryBOIOrderHAS_DOC_ITEMS: TAbmesFloatField;
    qryBOIOrdersDetailDOC_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrdersDetailDOC_CODE: TAbmesFloatField;
    qryBOIOrdersDetailHAS_DOC_ITEMS: TAbmesFloatField;
    qryBOIOrderDeliveryDataPRODUCT_CODE: TAbmesFloatField;
    qryBOIOrderDeliveryDataPLAN_QUANTITY: TAbmesFloatField;
    qryBOIOrderDeliveryDataMEASURE_ABBREV: TAbmesWideStringField;
    qryBOIOrderDeliveryDataREAL_QUANTITY: TAbmesFloatField;
    procedure prvBudgetOrderBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryBudgetOrdersBeforeOpen(DataSet: TDataSet);
    procedure prvBudgetOrderAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvBudgetOrderBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryBudgetOrderAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure prvBudgetOrderAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure qryDeptBudgetBeforeOpen(DataSet: TDataSet);
    procedure qryDeptBudgetAfterOpen(DataSet: TDataSet);
    procedure qryBudgetMasterBeforeOpen(DataSet: TDataSet);
    procedure qryBudgetOrderItemsByTimeUnitsBeforeOpen(DataSet: TDataSet);
    procedure qryBudgetOrderItemsByTimeUnitsAfterOpen(DataSet: TDataSet);
    procedure prvBOIOrderBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvBOIOrderAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure qryBOIOrdersMasterBeforeOpen(DataSet: TDataSet);
    procedure qryBOIOrdersMasterAfterClose(DataSet: TDataSet);
    procedure prvBudgetOrderUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure prvBOIOrderUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure qryBudgetOrdersAfterClose(DataSet: TDataSet);
    procedure qryDeptBudgetAfterClose(DataSet: TDataSet);
    procedure qryBudgetOrderItemsByTimeUnitsAfterClose(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryBOIOrdersDetailBeforeOpen(DataSet: TDataSet);
    procedure qryBOIOrdersDetailAfterClose(DataSet: TDataSet);
    procedure qryBOIOrderAfterProviderStartTransaction(DataSet: TDataSet);
    procedure prvBOIOrderBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure prvBOIOrderAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
  private
    FDocsDelta: Variant;
    FUpdateDS: TDataSet;
    procedure SetTimeUnitMacros(AQuery: TAbmesSQLQuery);
    function NewBOIOrderCode(ABudgetOrderBranchCode, ABudgetOrderCode, ABudgetOrderItemCode: Integer): Integer;
  protected
    function GetNewBudgetOrderCode(BranchCode: Integer): Integer;
    function GetNewBudgetOrderItemCode(BudgetOrderBranchCode, BudgetOrderCode: Integer): Integer;
  end;

type
  IdmBudgetProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmBudgetProxy = class(TDBPooledDataModuleProxy, IdmBudgetProxy)
  private
    class var FSingleton: TdmBudgetProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmBudget>;
  strict protected
    property LockedInstance: ISmartLock<TdmBudget> read GetLockedInstance;
  public
    class property Singleton: TdmBudgetProxy read FSingleton;

    function GetNewBudgetOrderCode(BranchCode: Integer): Integer;
    function GetNewBudgetOrderItemCode(BudgetOrderBranchCode, BudgetOrderCode: Integer): Integer;
  end;

implementation

uses
  uSvrUtils, Variants, uDBPooledDataModuleHelper,
  uProcessObjectIdentifierFormats, uProcesses, uUtils, uTreeNodes, uDealTypes,
  uBOIOrderTypes, uServerMessageIds, uBOIDistributionTypes;

{$R *.DFM}

{ TdmBudgetProxy }

function TdmBudgetProxy.GetLockedInstance: ISmartLock<TdmBudget>;
begin
  Result:= ISmartLock<TdmBudget>(inherited LockedInstance);
end;

function TdmBudgetProxy.GetNewBudgetOrderCode(
  BranchCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewBudgetOrderCode(BranchCode);
end;

function TdmBudgetProxy.GetNewBudgetOrderItemCode(BudgetOrderBranchCode,
  BudgetOrderCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewBudgetOrderItemCode(BudgetOrderBranchCode, BudgetOrderCode);
end;

{ TdmBudget }

procedure TdmBudget.DataModuleCreate(Sender: TObject);
begin
  RegisterMacroLibrary(mshLocalMacroLibrary);
  inherited;
end;

procedure TdmBudget.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  UnregisterMacroLibrary(mshLocalMacroLibrary);
end;

function TdmBudget.GetNewBudgetOrderCode(BranchCode: Integer): Integer;
begin
  qryGetMaxBudgetOrderCode.ParamByName('BUDGET_ORDER_BRANCH_CODE').AsInteger:= BranchCode;
  qryGetMaxBudgetOrderCode.Open;
  try
    Result:= qryGetMaxBudgetOrderCodeMAX_BUDGET_ORDER_CODE.AsInteger + 1;
  finally
    qryGetMaxBudgetOrderCode.Close;
  end;  { try }
end;

function TdmBudget.GetNewBudgetOrderItemCode(BudgetOrderBranchCode,
  BudgetOrderCode: Integer): Integer;
begin
  qryGetMaxBudgetOrderItemCode.ParamByName('BUDGET_ORDER_BRANCH_CODE').AsInteger:= BudgetOrderBranchCode;
  qryGetMaxBudgetOrderItemCode.ParamByName('BUDGET_ORDER_CODE').AsInteger:= BudgetOrderCode;
  qryGetMaxBudgetOrderItemCode.Open;
  try
    Result:= qryGetMaxBudgetOrderItemCodeMAX_BUDGET_ORDER_ITEM_CODE.AsInteger + 1;
  finally
    qryGetMaxBudgetOrderItemCode.Close;
  end;  { try }
end;

function TdmBudget.NewBOIOrderCode(ABudgetOrderBranchCode, ABudgetOrderCode,
  ABudgetOrderItemCode: Integer): Integer;
begin
  qryNewBOIOrderNo.ParamByName('BUDGET_ORDER_BRANCH_CODE').AsInteger:= ABudgetOrderBranchCode;
  qryNewBOIOrderNo.ParamByName('BUDGET_ORDER_CODE').AsInteger:= ABudgetOrderCode;
  qryNewBOIOrderNo.ParamByName('BUDGET_ORDER_ITEM_CODE').AsInteger:= ABudgetOrderItemCode;

  qryNewBOIOrderNo.Open;
  try
    Result:= qryNewBOIOrderNoNEW_BOI_ORDER_CODE.AsInteger;
  finally
    qryNewBOIOrderNo.Close;
  end;
end;

procedure TdmBudget.prvBudgetOrderBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  FUpdateDS:= SourceDS;

  SetCreateAndChangeFieldsOnUpdateRecord(DeltaDS, UpdateKind, LoginContext);
end;

procedure TdmBudget.qryBudgetOrdersAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [DataSet as TAbmesSQLQuery]);
end;

procedure TdmBudget.qryBudgetOrdersBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ProcessDeptParamBeforeQueryOpen(qryBudgetOrders.ParamByName('GENERATOR_DEPT_CODE'), LoginContext);
  ProcessDeptParamBeforeQueryOpen(qryBudgetOrders.ParamByName('DEVELOPER_DEPT_CODE'), LoginContext);
  ProcessDeptParamBeforeQueryOpen(qryBudgetOrders.ParamByName('DEPT_CODE'), LoginContext);
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [DataSet as TAbmesSQLQuery]);
end;

procedure TdmBudget.prvBudgetOrderAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmBudget.prvBudgetOrderBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmBudget.qryBudgetOrderAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmBudget.prvBudgetOrderAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
begin
  inherited;

  if (SourceDS = qryBudgetOrder) and
     ( not VarIsNullOrEmpty(DeltaDS.FieldByName('CLOSE_EMPLOYEE_CODE').NewValue) or
       not VarIsNullOrEmpty(DeltaDS.FieldByName('ANNUL_EMPLOYEE_CODE').NewValue) ) then
    begin
      SetParams(qryCloseOrAnnulBudgetOrderItems.Params, DeltaDS);
      qryCloseOrAnnulBudgetOrderItems.ExecSQL;
    end;

  if (SourceDS = qryBudgetOrderItems) and
     ( not VarIsNullOrEmpty(DeltaDS.FieldByName('CLOSE_EMPLOYEE_CODE').NewValue) or
       not VarIsNullOrEmpty(DeltaDS.FieldByName('ANNUL_EMPLOYEE_CODE').NewValue) or
       not VarIsNullOrEmpty(DeltaDS.FieldByName('IS_CANCELED').NewValue)) and
     ( VarIsNullOrEmpty(DeltaDS.DataSetField.DataSet.FieldByName('CLOSE_EMPLOYEE_CODE').NewValue) and
       VarIsNullOrEmpty(DeltaDS.DataSetField.DataSet.FieldByName('ANNUL_EMPLOYEE_CODE').NewValue) ) then
    begin
      SetParams(qryCascadeProcessBOIOrders.Params, DeltaDS);
      qryCascadeProcessBOIOrders.ExecSQL;
    end;
end;

procedure TdmBudget.qryDeptBudgetBeforeOpen(DataSet: TDataSet);

  function GetDateUnitsSQL: string;

    function GetDateUnitSQL(i: Integer): string;

      function GetPriceDeviationSQL(AFromField, AToField, AResultField: string): string;
      begin
        Result:=
          Format('Cast(Decode(Sum(Decode(bx.DATE_NO, ^d, bx.%s)), Sum(Decode(bx.DATE_NO, ^d, bx.%s)), null, Coalesce(Sum(Decode(bx.DATE_NO, ^d, bx.%s)), 0) - Sum(Decode(bx.DATE_NO, ^d, bx.%s))) as Number) as %s,',
            [ AFromField,
              AToField,
              AToField,
              AFromField,
              AResultField]);
      end;

      function GetPriceDeviationPercentSQL(AFromField, AToField, AResultField: string): string;
      begin
        Result:=
          Format('Cast(Decode(Sum(Decode(bx.DATE_NO, ^d, bx.%s)), Sum(Decode(bx.DATE_NO, ^d, bx.%s)), null, Decode(Sum(Decode(bx.DATE_NO, ^d, bx.%s)), 0, null,' + ' (Coalesce(Sum(Decode(bx.DATE_NO, ^d, bx.%s)), 0) - Sum(Decode(bx.DATE_NO, ^d, bx.%s))) / Sum(Decode(bx.DATE_NO, ^d, bx.%s)))) as Number) as %s,',
            [ AFromField,
              AToField,
              AFromField,
              AToField,
              AFromField,
              AFromField,
              AResultField]);
      end;

    begin
      Result:= StringReplace(
        'Min(Decode(bx.DATE_NO, ^d, bx.THE_DATE)) as THE_DATE_^d,' + SLineBreak +

        'Cast(Sum(Decode(bx.DATE_NO, ^d, bx.DEPT_PLAN_PRICE)) as Number) as DEPT_PLAN_PRICE_^d,' + SLineBreak +

        'Cast(Sum(Decode(bx.DATE_NO, ^d, bx.BOIO_PLAN_PRICE)) as Number) as BOIO_PLAN_PRICE_^d,' + SLineBreak +
        GetPriceDeviationSQL('DEPT_PLAN_PRICE', 'BOIO_PLAN_PRICE', 'BOIO_PLAN_TO_PLAN_DEV_^d') + SLineBreak +
        GetPriceDeviationPercentSQL('DEPT_PLAN_PRICE', 'BOIO_PLAN_PRICE', 'BOIO_PLAN_TO_PLAN_DEV_P_^d') + SLineBreak +

        'Cast(Sum(Decode(bx.DATE_NO, ^d, bx.DEPT_REAL_PRICE)) as Number) as DEPT_REAL_PRICE_^d,' + SLineBreak +
        GetPriceDeviationSQL('DEPT_PLAN_PRICE', 'DEPT_REAL_PRICE', 'REAL_TO_PLAN_DEV_^d') + SLineBreak +
        GetPriceDeviationPercentSQL('DEPT_PLAN_PRICE', 'DEPT_REAL_PRICE', 'REAL_TO_PLAN_DEV_P_^d') + SLineBreak +
        GetPriceDeviationSQL('BOIO_PLAN_PRICE', 'DEPT_REAL_PRICE', 'REAL_TO_BOIO_PLAN_DEV_^d') + SLineBreak +
        GetPriceDeviationPercentSQL('BOIO_PLAN_PRICE', 'DEPT_REAL_PRICE', 'REAL_TO_BOIO_PLAN_DEV_P_^d') + SLineBreak,

        '^d',
        IntToStr(i),
        [rfReplaceAll]
      );
    end;

  var
    i: Integer;
    DateUnitCount: Integer;

  begin
    DateUnitCount:= qryDeptBudget.ParamByName('TIME_UNIT_COUNT').AsInteger;
    Result:= '';

    for i:= 1 to DateUnitCount do
      Result:= Result + GetDateUnitSQL(i) + SLineBreak;
  end;

begin
  inherited;
  SetTimeUnitMacros(qryDeptBudget);
  qryDeptBudget.MacroByName('DATE_UNITS_SQL').AsString:= GetDateUnitsSQL;
  ProcessDeptParamBeforeQueryOpen(qryDeptBudget.ParamByName('DEPT_CODE'), LoginContext);
  ProcessBudgetClassParamBeforeQueryOpen(qryDeptBudget.ParamByName('BUDGET_PRODUCT_CODE'));
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [DataSet as TAbmesSQLQuery]);
end;

procedure TdmBudget.qryDeptBudgetAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [DataSet as TAbmesSQLQuery]);
end;

procedure TdmBudget.qryDeptBudgetAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('BUDGET_PRODUCT_CODE').ProviderFlags:= [pfInUpdate, pfInWhere, pfInKey];
end;

procedure TdmBudget.qryBudgetMasterBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ProcessBudgetClassParamBeforeQueryOpen(qryBudgetMaster.ParamByName('BUDGET_PRODUCT_CODE'));
end;

procedure TdmBudget.qryBudgetOrderItemsByTimeUnitsBeforeOpen(DataSet: TDataSet);

  function GetDateUnitsSQL: string;

    function GetDateUnitSQL(i: Integer): string;
    begin
      Result:= StringReplace(
        'Min(Decode(bx.DATE_NO, %d, bx.THE_DATE)) as THE_DATE_%d,' + SLineBreak +
        'Cast(Min(Decode(bx.DATE_NO, %d, bx.PLAN_PRICE)) as Number) as PLAN_PRICE_%d,' + SLineBreak +

        'Cast(Min(Decode(bx.DATE_NO, %d, bx.BOIO_PLAN_PRICE)) as Number) as BOIO_PLAN_PRICE_%d,' + SLineBreak +
        'Cast(Min(Decode(bx.DATE_NO, %d, bx.BOIO_PLAN_TO_PLAN_DEV)) as Number) as BOIO_PLAN_TO_PLAN_DEV_%d,' + SLineBreak +
        'Cast(Min(Decode(bx.DATE_NO, %d, bx.BOIO_PLAN_TO_PLAN_DEV_P)) as Number) as BOIO_PLAN_TO_PLAN_DEV_P_%d,' + SLineBreak +

        'Cast(Min(Decode(bx.DATE_NO, %d, bx.REAL_PRICE)) as Number) as REAL_PRICE_%d,' + SLineBreak +
        'Cast(Min(Decode(bx.DATE_NO, %d, bx.REAL_TO_PLAN_DEV)) as Number) as REAL_TO_PLAN_DEV_%d,' + SLineBreak +
        'Cast(Min(Decode(bx.DATE_NO, %d, bx.REAL_TO_PLAN_DEV_P)) as Number) as REAL_TO_PLAN_DEV_P_%d,' + SLineBreak +
        'Cast(Min(Decode(bx.DATE_NO, %d, bx.REAL_TO_BOIO_PLAN_DEV)) as Number) as REAL_TO_BOIO_PLAN_DEV_%d,' + SLineBreak +
        'Cast(Min(Decode(bx.DATE_NO, %d, bx.REAL_TO_BOIO_PLAN_DEV_P)) as Number) as REAL_TO_BOIO_PLAN_DEV_P_%d,' + SLineBreak,

        '%d',
        IntToStr(i),
        [rfReplaceAll]
      );
    end;

    function GetTotalFieldsSQL: string;
    begin
      Result:=
        'Min(bx.IS_DISTRIBUTED) as IS_DISTRIBUTED' + SLineBreak;
    end;

  var
    i: Integer;
    DateUnitCount: Integer;

  begin
    DateUnitCount:= qryBudgetOrderItemsByTimeUnits.ParamByName('TIME_UNIT_COUNT').AsInteger;
    Result:= '';

    for i:= 1 to DateUnitCount do
      Result:= Result + GetDateUnitSQL(i) + SLineBreak;

    Result:= Result + GetTotalFieldsSQL + SLineBreak;
  end;

begin
  inherited;
  SetTimeUnitMacros(qryBudgetOrderItemsByTimeUnits);
  qryBudgetOrderItemsByTimeUnits.MacroByName('DATE_UNITS_SQL').AsString:= GetDateUnitsSQL;
  ProcessDeptParamBeforeQueryOpen(qryBudgetOrderItemsByTimeUnits.ParamByName('DEPT_CODE'), LoginContext);
  ProcessBudgetClassParamBeforeQueryOpen(qryBudgetOrderItemsByTimeUnits.ParamByName('BUDGET_PRODUCT_CODE'));
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [DataSet as TAbmesSQLQuery]);
end;

procedure TdmBudget.SetTimeUnitMacros(AQuery: TAbmesSQLQuery);
begin
  qryGetPeriodFieldNames.ParamByName('THE_DATE_UNIT_CODE').AsInteger:=
    AQuery.ParamByName('TIME_UNIT_CODE').AsInteger;
  qryGetPeriodFieldNames.Open;
  try
    AQuery.MacroByName('THE_X_DATES').AsString:= qryGetPeriodFieldNamesTABLE_NAME.AsString;
    AQuery.MacroByName('THE_X_DATE').AsString:= qryGetPeriodFieldNamesKEY_FIELD_NAME.AsString;
  finally
    qryGetPeriodFieldNames.Close;
  end;  { try }
end;

procedure TdmBudget.qryBudgetOrderItemsByTimeUnitsAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [DataSet as TAbmesSQLQuery]);
end;

procedure TdmBudget.qryBudgetOrderItemsByTimeUnitsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('BUDGET_PRODUCT_CODE').ProviderFlags:= [pfInUpdate, pfInWhere, pfInKey];
end;

procedure TdmBudget.prvBOIOrderBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmBudget.prvBOIOrderBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  SetCreateAndChangeFieldsOnUpdateRecord(DeltaDS, UpdateKind, LoginContext);

  if (UpdateKind = ukInsert) and (SourceDS = qryBOIOrder) then
    begin
      SvrCommon.SetProcessObjectKey(DeltaDS,
        'BOI_ORDER_OBJECT_BRANCH_CODE', 'BOI_ORDER_OBJECT_CODE', pocBOIOrder);

      DeltaDS.FieldByName('BOI_ORDER_CODE').NewValue:=
        NewBOIOrderCode(
          GetFieldValue(DeltaDS.FieldByName('BUDGET_ORDER_BRANCH_CODE')),
          GetFieldValue(DeltaDS.FieldByName('BUDGET_ORDER_CODE')),
          GetFieldValue(DeltaDS.FieldByName('BUDGET_ORDER_ITEM_CODE'))
        );
    end;  { if }

  Applied:= not RecordChanged(DeltaDS);
end;

procedure TdmBudget.prvBOIOrderAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmBudget.prvBOIOrderAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
var
  BaseDate: TDateTime;
  BaseQuantity: Real;
  DocumentIdentifier: Variant;
  DocumentDate: Variant;
begin
  inherited;

  if (SourceDS = qryBOIOrder) then
    begin
      SvrCommon.UpdateProcessObjectIdentifier(
        GetFieldValue(DeltaDS.FieldByName('BOI_ORDER_OBJECT_BRANCH_CODE')),
        GetFieldValue(DeltaDS.FieldByName('BOI_ORDER_OBJECT_CODE')),
        Format(
          poifBOIOrder,
          [ SvrDeptsTree.GetNodeNo(
              GetFieldValue(DeltaDS.FieldByName('BUDGET_ORDER_BRANCH_CODE'))
            ),
            VarToInt(GetFieldValue(DeltaDS.FieldByName('BUDGET_ORDER_CODE'))),
            VarToInt(GetFieldValue(DeltaDS.FieldByName('BUDGET_ORDER_ITEM_CODE'))),
            VarToInt(GetFieldValue(DeltaDS.FieldByName('BOI_ORDER_CODE')))
          ]
        )
      );

      case GetFieldValue(DeltaDS.FieldByName('BOI_ORDER_TYPE_CODE')) of
        boiotProduct:
          begin
            if (UpdateKind = ukInsert) then
              begin
                SetParams(qryInsertBOIProductOrderPSD.Params, DeltaDS);

                qryInsertBOIProductOrderPSD.ParamByName('STORE_DEAL_TYPE_CODE').Value:= sdtOut;
                qryInsertBOIProductOrderPSD.ParamByName('PLANNED_STORE_DEAL_BRANCH_CODE').Value:=
                  GetFieldValue(DeltaDS.FieldByName('BOI_ORDER_OBJECT_BRANCH_CODE'));
                qryInsertBOIProductOrderPSD.ParamByName('PLANNED_STORE_DEAL_CODE').Value:=
                  SvrStore.GetNewPlannedStoreDealCode;

                qryInsertBOIProductOrderPSD.ExecSQL;
              end;

            if (UpdateKind <> ukInsert) then
              ExecUpdateQuery(
                UpdateKind,
                DeltaDS,
                nil,
                qryModifyBOIProductOrderPSD,
                nil,
                False);
          end;

        boiotCompany:
          begin
          end;

        boiotWaste:
          begin
          end;

        boiotMarking:
          begin
          end;
      else
        raise Exception.Create('Unknown BOIOrderType');
      end;

      if ( (UpdateKind = ukInsert) or
           ( (UpdateKind = ukModify) and
             VarIsNullOrEmpty(DeltaDS.FieldByName('FIN_ORDER_CODE').OldValue) ) ) and
         (not VarIsNullOrEmpty(DeltaDS.FieldByName('FO_EXEC_DEPT_CODE').NewValue)) and
         (GetFieldValue(DeltaDS.FieldByName('IS_CANCELED')) <> 1) then
        begin
          if VarIsNullOrEmpty(GetFieldValue(DeltaDS.FieldByName('ACCOUNT_DATE'))) then
            BaseDate:= GetFieldValue(DeltaDS.FieldByName('PLAN_DATE'))
          else
            BaseDate:= GetFieldValue(DeltaDS.FieldByName('ACCOUNT_DATE'));

          if VarIsNullOrEmpty(GetFieldValue(DeltaDS.FieldByName('ACCOUNT_TOTAL_PRICE'))) then
            BaseQuantity:= GetFieldValue(DeltaDS.FieldByName('PLAN_TOTAL_PRICE'))
          else
            BaseQuantity:= GetFieldValue(DeltaDS.FieldByName('ACCOUNT_TOTAL_PRICE'));

          DocumentIdentifier:= GetFieldValue(DeltaDS.FieldByName('DOCUMENT_ID_TEXT'));

          if VarIsNullOrEmpty(DocumentIdentifier) then
            DocumentDate:= Null
          else
            DocumentDate:= GetFieldValue(DeltaDS.FieldByName('ACCOUNT_DATE'));

          DeltaDS.FieldByName('FIN_ORDER_CODE').NewValue:=
            SvrFinance.NewFinOrder(
              GetFieldValue(DeltaDS.FieldByName('FO_BRANCH_CODE')),
              GetFieldValue(DeltaDS.FieldByName('FO_EXEC_DEPT_CODE')),
              GetFieldValue(DeltaDS.FieldByName('FO_PRIORITY_CODE')),
              pFinDstPrc,
              GetFieldValue(DeltaDS.FieldByName('BOI_ORDER_OBJECT_BRANCH_CODE')),
              GetFieldValue(DeltaDS.FieldByName('BOI_ORDER_OBJECT_CODE')),
              GetFieldValue(DeltaDS.FieldByName('FO_PARTNER_CODE')),
              ioOut,
              BaseDate,
              0,
              GetFieldValue(DeltaDS.FieldByName('CURRENCY_CODE')),
              BaseQuantity,
              GetFieldValue(DeltaDS.FieldByName('FO_WORK_FINANCIAL_PRODUCT_CODE')),
              DocumentIdentifier,
              DocumentDate,
              GetFieldValue(DeltaDS.FieldByName('SPEC_FIN_MODEL_CODE'))
            );
        end;

      if (UpdateKind = ukModify) and
         (DeltaDS.FieldByName('FO_CLOSE_REQUESTED').NewValue = 1) then
        SvrFinance.CloseFinOrder(DeltaDS.FieldByName('FIN_ORDER_CODE').OldValue);
    end;
end;

procedure TdmBudget.qryBOIOrdersMasterBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ProcessDeptParamBeforeQueryOpen(qryBOIOrdersMaster.ParamByName('GENERATOR_DEPT_CODE'), LoginContext);
  ProcessDeptParamBeforeQueryOpen(qryBOIOrdersMaster.ParamByName('DEVELOPER_DEPT_CODE'), LoginContext);
  ProcessDeptParamBeforeQueryOpen(qryBOIOrdersMaster.ParamByName('DEPT_CODE'), LoginContext);
  ProcessBudgetClassParamBeforeQueryOpen(qryBOIOrdersMaster.ParamByName('BUDGET_PRODUCT_CODE'));
  ProcessDeptParamBeforeQueryOpen(qryBOIOrdersMaster.ParamByName('CONSUMER_DEPT_CODE'), LoginContext);
  ProcessDeptParamBeforeQueryOpen(qryBOIOrdersMaster.ParamByName('STORE_CODE'), LoginContext);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS_2'), [DataSet as TAbmesSQLQuery], 2);
end;

procedure TdmBudget.qryBOIOrderAfterProviderStartTransaction(DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmBudget.qryBOIOrdersDetailAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmBudget.qryBOIOrdersDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ProcessDeptParamBeforeQueryOpen(qryBOIOrdersDetail.ParamByName('CONSUMER_DEPT_CODE'), LoginContext);
  ProcessDeptParamBeforeQueryOpen(qryBOIOrdersDetail.ParamByName('STORE_CODE'), LoginContext);
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmBudget.qryBOIOrdersMasterAfterClose(DataSet: TDataSet);
begin
  inherited;

  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS_2'), [DataSet as TAbmesSQLQuery], 2);
end;

procedure TdmBudget.prvBudgetOrderUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;
  ApplyRetry(E, Response);

  if (UpdateKind = ukInsert) then
    begin
      if (FUpdateDS = qryBudgetOrder) then
        DataSet.FieldByName('BUDGET_ORDER_CODE').NewValue:=
          GetNewBudgetOrderCode(GetFieldValue(DataSet.FieldByName('BUDGET_ORDER_BRANCH_CODE')))
      else
        begin
          if (FUpdateDS = qryBudgetOrderItems) then
            DataSet.FieldByName('BUDGET_ORDER_ITEM_CODE').NewValue:=
              GetNewBudgetOrderItemCode(GetFieldValue(DataSet.FieldByName('BUDGET_ORDER_BRANCH_CODE')), GetFieldValue(DataSet.FieldByName('BUDGET_ORDER_CODE')))
        end;
    end;
end;

procedure TdmBudget.prvBOIOrderUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;
  ApplyRetry(E, Response);

  if (UpdateKind = ukInsert) then
    begin
      SetParams(qryGetMaxBOIOrderCode.Params, DataSet);
      qryGetMaxBOIOrderCode.Open;
      try
        DataSet.FieldByName('BOI_ORDER_CODE').NewValue:=
          qryGetMaxBOIOrderCodeMAX_BOI_ORDER_CODE.AsInteger + 1;

      finally
        qryGetMaxBOIOrderCode.Close;
      end;
    end;
end;

initialization
  TdmBudgetProxy.FSingleton:= TdmBudgetProxy.Create(TdmBudget);

finalization
  FreeAndNil(TdmBudgetProxy.FSingleton);
end.
