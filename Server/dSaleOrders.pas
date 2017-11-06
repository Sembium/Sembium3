unit dSaleOrders;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, uProducts, WideStrings, FMTBcd, SqlExpr,
  AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmSaleOrders = class(TDBPooledDataModule)
    prvSaleOrder: TDataSetProvider;
    qrySaleOrder: TAbmesSQLQuery;
    qryGetNewRequestNo: TAbmesSQLQuery;
    qryGetNewRequestNoNEW_REQUEST_NO: TAbmesFloatField;
    qryGetMaxSaleNo: TAbmesSQLQuery;
    qryGetMaxSaleNoMAX_SALE_NO: TAbmesFloatField;
    qrySaleOrderSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrderSALE_OBJECT_CODE: TAbmesFloatField;
    qrySaleOrderSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrderSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    qrySaleOrderSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySaleOrderREQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrderREQUEST_NO: TAbmesFloatField;
    qrySaleOrderREQUEST_LINE_NO: TAbmesFloatField;
    qrySaleOrderCLIENT_COMPANY_CODE: TAbmesFloatField;
    qrySaleOrderCLIENT_REQUEST_NO: TAbmesWideStringField;
    qrySaleOrderREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderOFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderOFFER_SEND_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderOFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderOFFER_ANSWER_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderDECISION_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderDECISION_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderDECISION_TYPE_CODE: TAbmesFloatField;
    qrySaleOrderPRODUCT_CODE: TAbmesFloatField;
    qrySaleOrderPRODUCT_NAME: TAbmesWideStringField;
    qrySaleOrderPRODUCT_MEASURE_CODE: TAbmesFloatField;
    qrySaleOrderQUANTITY: TAbmesFloatField;
    qrySaleOrderMANUFACTURE_QUANTITY: TAbmesFloatField;
    qrySaleOrderMANUFACTURE_DECISION_EXPECTED: TAbmesFloatField;
    qrySaleOrderSINGLE_WEIGHT: TAbmesFloatField;
    qrySaleOrderCURRENCY_CODE: TAbmesFloatField;
    qrySaleOrderSINGLE_PRICE: TAbmesFloatField;
    qrySaleOrderOUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    qrySaleOrderCL_OFFER_SINGLE_PRICE: TAbmesFloatField;
    qrySaleOrderRECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderOUR_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    qrySaleOrderIS_VENDOR_TRANSPORT: TAbmesFloatField;
    qrySaleOrderSHIPMENT_TYPE_CODE: TAbmesFloatField;
    qrySaleOrderCUSTOMHOUSE_CODE: TAbmesFloatField;
    qrySaleOrderNOTES: TAbmesWideStringField;
    qrySaleOrderSALE_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrderSALE_NO: TAbmesFloatField;
    qrySaleOrderSALE_TYPE_CODE: TAbmesFloatField;
    qrySaleOrderOKIDU_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleOrderSOS_OKIDU: TAbmesFloatField;
    qrySaleOrderSHIPMENT_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderSHIPMENT_STORE_CODE: TAbmesFloatField;
    qrySaleOrderIS_ML_ENTRUSTED: TAbmesFloatField;
    qrySaleOrderIS_ML_NOT_NEEDED: TAbmesFloatField;
    qrySaleOrderANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleOrderANNUL_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderANNUL_TIME: TAbmesSQLTimeStampField;
    qrySaleOrderFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleOrderFINISH_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderFINISH_TIME: TAbmesSQLTimeStampField;
    qrySaleOrderCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleOrderCREATE_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderCREATE_TIME: TAbmesSQLTimeStampField;
    qrySaleOrderCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleOrderCHANGE_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderCHANGE_TIME: TAbmesSQLTimeStampField;
    qrySaleOrderOUR_OFFER_QUANTITY: TAbmesFloatField;
    qrySaleOrderCL_OFFER_QUANTITY: TAbmesFloatField;
    qrySaleOrderENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryGroupSalesMaster: TAbmesSQLQuery;
    qryGroupSalesDetail: TAbmesSQLQuery;
    prvGroupSalesMaster: TDataSetProvider;
    prvGroupSalesDetail: TDataSetProvider;
    qryGroupSalesMasterSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qryGroupSalesMasterSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryGroupSalesMasterCLIENT_COMPANY_CODE: TAbmesFloatField;
    qryGroupSalesMasterCLIENT_COMPANY_NAME: TAbmesWideStringField;
    qryGroupSalesMasterREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    qryGroupSalesMasterREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    qryGroupSalesMasterCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qryGroupSalesMasterRECEIVE_DATE: TAbmesSQLTimeStampField;
    qryGroupSalesMasterIS_ANNULED: TAbmesFloatField;
    qryGroupSalesDetailREQUEST_LINE_NO: TAbmesFloatField;
    qryGroupSalesDetailPRODUCT_CODE: TAbmesFloatField;
    qryGroupSalesDetailPRODUCT_NO: TAbmesFloatField;
    qryGroupSalesDetailPRODUCT_MEASURE_ABBREV: TAbmesWideStringField;
    qryGroupSalesDetailCL_OFFER_QUANTITY: TAbmesFloatField;
    qryGroupSalesDetailQUANTITY: TAbmesFloatField;
    qryGroupSalesDetailIS_ANNULED: TAbmesFloatField;
    qryGroupSalesMasterREQUEST_BRANCH_CODE: TAbmesFloatField;
    qryGroupSalesMasterREQUEST_NO: TAbmesFloatField;
    qryGroupSalesDetailSALE_TYPE_ABBREV: TAbmesWideStringField;
    qryGroupSalesDetailREQUEST_BRANCH_CODE: TAbmesFloatField;
    qryGroupSalesDetailREQUEST_NO: TAbmesFloatField;
    qrySaleOrderPRODUCT_NO: TAbmesFloatField;
    qryGroupSalesMasterIS_DONE: TAbmesFloatField;
    qryGroupSalesMasterANNUL_COEF: TAbmesFloatField;
    qryGroupSalesMasterSALE_ORDER_IDENTIFICATION: TAbmesWideStringField;
    qryGroupSalesMasterSALE_TYPE_ABBREV: TAbmesWideStringField;
    qryGroupSalesMasterSALE_GROUP_IDENTIFICATION: TAbmesWideStringField;
    qryGroupSalesDetailSALE_IDENTIFICATION: TAbmesWideStringField;
    qrySaleOrderMANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    qryExistsModelForSale: TAbmesSQLQuery;
    qryExistsModelForSaleEXISTS_MATERIAL_LIST: TAbmesFloatField;
    qryUpdateProductInPlannedStoreDeals: TAbmesSQLQuery;
    qrySaleOrderCLIENT_PRODUCT_SIGNATURE: TAbmesWideStringField;
    qryGroupSalesDetailPRODUCT_NAME: TAbmesWideStringField;
    qryGroupSalesDetailCOMPANY_PRODUCT_NAME: TAbmesWideStringField;
    qryGroupSalesDetailCLIENT_REQUEST_NO: TAbmesWideStringField;
    qrySaleOrderDOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrderDOC_CODE: TAbmesFloatField;
    qryGroupSalesMasterDOC_BRANCH_CODE: TAbmesFloatField;
    qryGroupSalesMasterDOC_CODE: TAbmesFloatField;
    qrySaleOrderTRANSIENT_STATUS_CODE: TAbmesFloatField;
    qrySaleOrderCLIENT_COUNTRY_ABBREV: TAbmesWideStringField;
    qrySaleOrderCLIENT_COMPANY_NAME: TAbmesWideStringField;
    qrySaleOrderMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    qrySaleOrderSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroup: TAbmesSQLQuery;
    prvSaleRequestGroup: TDataSetProvider;
    qrySaleRequestGroupREQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupREQUEST_NO: TAbmesFloatField;
    qrySaleRequestGroupSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupCLIENT_COMPANY_CODE: TAbmesFloatField;
    qrySaleRequestGroupMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    qrySaleRequestGroupSRG_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupCREATE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupCREATE_TIME: TAbmesSQLTimeStampField;
    qrySaleRequestGroupFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupFINISH_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupFINISH_TIME: TAbmesSQLTimeStampField;
    qrySaleRequestGroupANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupANNUL_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupANNUL_TIME: TAbmesSQLTimeStampField;
    prvSaleRequestGroups: TDataSetProvider;
    qrySaleRequestGroups: TAbmesSQLQuery;
    qrySaleRequestGroupsDetail: TAbmesSQLQuery;
    prvSaleRequestGroupsDetail: TDataSetProvider;
    qrySaleRequestGroupsREQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupsREQUEST_NO: TAbmesFloatField;
    qrySaleRequestGroupsSRG_STATUS_CODE: TAbmesFloatField;
    qrySaleRequestGroupsSRG_ID: TAbmesWideStringField;
    qrySaleRequestGroupsSRG_EMPLOYEE_FULL_NAME: TAbmesWideStringField;
    qrySaleRequestGroupsCOMPANY_STATUS_CODE: TAbmesFloatField;
    qrySaleRequestGroupsCOMPANY_STATUS_NAME: TAbmesWideStringField;
    qrySaleRequestGroupsCLIENT_COMPANY_NAME: TAbmesWideStringField;
    qrySaleRequestGroupsHAS_MEDIATOR: TAbmesFloatField;
    qrySaleRequestGroupsPROGNOSIS_SALE_COUNT: TAbmesFloatField;
    qrySaleRequestGroupsREALIZATION_SALE_COUNT: TAbmesFloatField;
    qrySaleRequestGroupsREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupsREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupsDetailSTATUS_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailSALE_ORDER_ID: TAbmesWideStringField;
    qrySaleRequestGroupsDetailPRODUCT_NAME: TAbmesWideStringField;
    qrySaleRequestGroupPROGNOSIS_SALE_COUNT: TAbmesFloatField;
    qrySaleRequestGroupREALIZATION_SALE_COUNT: TAbmesFloatField;
    qrySaleRequestGroupsPRIORITY_NO: TAbmesFloatField;
    qrySaleOrderACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qrySaleOrderACCOUNT_QUANTITY: TAbmesFloatField;
    qrySaleOrderACCOUNT_OUR_OFFER_QUANTITY: TAbmesFloatField;
    qrySaleOrderACCOUNT_CL_OFFER_QUANTITY: TAbmesFloatField;
    qrySaleOrderPROGNOSIS_SALE_COUNT: TAbmesFloatField;
    qrySaleOrderREALIZATION_SALE_COUNT: TAbmesFloatField;
    qrySaleOrderACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qrySaleOrderPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderPROGNOSIS_END_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupCHANGE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupCHANGE_TIME: TAbmesSQLTimeStampField;
    qryGetNewRequestLineNo: TAbmesSQLQuery;
    qryGetNewRequestLineNoNEW_REQUEST_LINE_NO: TAbmesFloatField;
    qrySaleRequestGroupsCLIENT_COMPANY_CODE: TAbmesFloatField;
    qrySaleRequestGroupsSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailSALE_OBJECT_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailIS_ANNULED: TAbmesFloatField;
    qrySaleRequestGroupsDetailIS_FINISHED: TAbmesFloatField;
    qrySaleRequestGroupsDetailPLAN_PERIOD_DAYS: TAbmesFloatField;
    qrySaleRequestGroupsDetailREAL_PERIOD_DAYS: TAbmesFloatField;
    qrySaleRequestGroupsDetailOFFER_SEND_DAYS_RSV: TAbmesFloatField;
    qrySaleRequestGroupsDetailOFFER_ANSWER_DAYS_RSV: TAbmesFloatField;
    qrySaleRequestGroupsDetailDECISION_DAYS_RSV: TAbmesFloatField;
    qrySaleRequestGroupsDetailDECISION_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailDECISION_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleRequestGroupsDetailPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupsDetailPROGNOSIS_END_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupsDetailQUANTITY: TAbmesFloatField;
    qrySaleRequestGroupsDetailMEASURE_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailMEASURE_ABBREV: TAbmesWideStringField;
    qrySaleRequestGroupsDetailACCOUNT_QUANTITY: TAbmesFloatField;
    qrySaleRequestGroupsDetailACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qrySaleRequestGroupsDetailIS_QUANTITY_AGREED: TAbmesFloatField;
    qrySaleRequestGroupsDetailSINGLE_PRICE: TAbmesFloatField;
    qrySaleRequestGroupsDetailCURRENCY_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailCURRENCY_ABBREV: TAbmesWideStringField;
    qrySaleRequestGroupsDetailIS_SINGLE_PRICE_AGREED: TAbmesFloatField;
    qrySaleRequestGroupsDetailTOTAL_PRICE: TAbmesFloatField;
    qrySaleRequestGroupsDetailPROGNOSIS_QUANTITY: TAbmesFloatField;
    qrySaleRequestGroupsDetailPROGNOSIS_ACCOUNT_QUANTITY: TAbmesFloatField;
    qrySaleRequestGroupsDetailPROGNOSIS_SINGLE_PRICE: TAbmesFloatField;
    qrySaleRequestGroupsDetailPROGNOSIS_TOTAL_PRICE: TAbmesFloatField;
    qrySaleRequestGroupsDetailRECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupsDetailSALE_ID: TAbmesWideStringField;
    qrySaleRequestGroupsDetailCOMMON_STATUS_CODE: TAbmesFloatField;
    qrySaleOrderCOMMON_STATUS_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDOC_CODE: TAbmesFloatField;
    qrySaleRequestGroupsHAS_DOCUMENTATION: TAbmesFloatField;
    qrySaleRequestGroupsCLIENT_DOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupsCLIENT_DOC_CODE: TAbmesFloatField;
    qrySaleRequestGroupsCLIENT_HAS_DOCUMENTATION: TAbmesFloatField;
    qrySaleRequestGroupsDetailPROGNOSIS_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qrySaleRequestGroupsDetailPROGNOSIS_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailIS_LEASE_QUANTITY_AGREED: TAbmesFloatField;
    qrySaleRequestGroupsDetailDOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailDOC_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailHAS_DOCUMENTATION: TAbmesFloatField;
    qrySaleRequestGroupsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailPRODUCT_DOC_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qrySaleRequestGroupsSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleRequestGroupsDetailPROGNOSIS_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qrySaleRequestGroupsDetailLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qrySaleRequestGroupsDetailLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qrySaleRequestGroupsDetailPROGNOSIS_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    qrySaleRequestGroupsDetailTOTAL_LEASE_QUANTITY: TAbmesFloatField;
    qrySaleOrderCL_OFFER_CURRENCY_CODE: TAbmesFloatField;
    qrySaleOrderOUR_OFFER_CURRENCY_CODE: TAbmesFloatField;
    qrySaleOrderOUR_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qrySaleOrderOUR_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qrySaleOrderCL_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qrySaleOrderCL_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qrySaleOrderLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qrySaleOrderLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qrySaleOrderRETURN_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderCL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupsPRIORITY_COLOR: TAbmesFloatField;
    qrySaleRequestGroupsPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qrySaleRequestGroupsDetailREAL_PERIOD_DEVIATION_PERCENT: TAbmesFloatField;
    qrySaleRequestGroupsDetailPROGNOSIS_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qrySaleRequestGroupsDetailACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qrySaleRequestGroupsDetailPROGNOSIS_ACC_TOTAL_LEASE_QTY: TAbmesFloatField;
    qrySaleRequestGroupsDetailTOTAL_ACCOUNT_LEASE_QUANTITY: TAbmesFloatField;
    qrySaleOrderIMPORT_DATE: TAbmesSQLTimeStampField;
    qrySaleOrderSHIPMENT_DAYS: TAbmesFloatField;
    qryUpdateSaleOrderStuff: TAbmesSQLQuery;
    qryInsertSaleOrderSSandPSD: TAbmesSQLQuery;
    qrySaleRequestGroupsDetailPROGNOSIS_MEASURE_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailPROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField;
    qrySaleRequestGroupsDetailPROGNOSIS_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailPROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    qrySaleRequestGroupsDetailPROGNOSIS_CURRENCY_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailPROGNOSIS_CURRENCY_ABBREV: TAbmesWideStringField;
    qryGroupSalesMasterCL_OFFER_TOTAL_PRICE: TAbmesFloatField;
    qryGroupSalesMasterTOTAL_PRICE: TAbmesFloatField;
    qryGroupSalesMasterREAL_TOTAL_PRICE: TAbmesFloatField;
    qryGroupSalesMasterTOTAL_PRICE_DIFF: TAbmesFloatField;
    qryGroupSalesMasterSHIPMENT_DATE: TAbmesSQLTimeStampField;
    qryGroupSalesMasterCLIENT_PRIORITY_NO: TAbmesFloatField;
    qryGroupSalesMasterCLIENT_PRIORITY_COLOR: TAbmesFloatField;
    qryGroupSalesMasterCLIENT_PRIORITY_BCKG_COLOR: TAbmesFloatField;
    qryGroupSalesMasterRECEIVE_DATE_RESERVE_DAYS: TAbmesFloatField;
    qryGroupSalesDetailPRODUCT_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryGroupSalesDetailSHIPPED_QUANTITY: TAbmesFloatField;
    qryGroupSalesDetailQUANTITY_DIFF: TAbmesFloatField;
    qryGroupSalesDetailACC_CL_OFFER_QUANTITY: TAbmesFloatField;
    qryGroupSalesDetailACC_QUANTITY: TAbmesFloatField;
    qryGroupSalesDetailACC_SHIPPED_QUANTITY: TAbmesFloatField;
    qryGroupSalesDetailACC_QUANTITY_DIFF: TAbmesFloatField;
    qryGroupSalesDetailCL_OFFER_TOTAL_PRICE: TAbmesFloatField;
    qryGroupSalesDetailTOTAL_PRICE: TAbmesFloatField;
    qryGroupSalesDetailREAL_TOTAL_PRICE: TAbmesFloatField;
    qryGroupSalesDetailTOTAL_PRICE_DIFF: TAbmesFloatField;
    qryGroupSalesMasterHAS_DOC_ITEMS: TAbmesFloatField;
    qryGroupSalesMasterCLIENT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryGroupSalesMasterCLIENT_DOC_CODE: TAbmesFloatField;
    qryGroupSalesMasterCLIENT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryGroupSalesDetailDOC_BRANCH_CODE: TAbmesFloatField;
    qryGroupSalesDetailDOC_CODE: TAbmesFloatField;
    qryGroupSalesDetailHAS_DOC_ITEMS: TAbmesFloatField;
    qryGroupSalesDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryGroupSalesDetailPRODUCT_DOC_CODE: TAbmesFloatField;
    qryGroupSalesDetailPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryGroupSalesDetailCL_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qryGroupSalesDetailCL_OFFER_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryGroupSalesDetailCL_OFFER_LEASE_RESOURCE_QTY: TAbmesFloatField;
    qryGroupSalesDetailCL_OFFER_LEASE_RESOURCE_A_QTY: TAbmesFloatField;
    qryGroupSalesDetailLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qryGroupSalesDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryGroupSalesDetailLEASE_RESOURCE_QTY: TAbmesFloatField;
    qryGroupSalesDetailLEASE_RESOURCE_ACC_QTY: TAbmesFloatField;
    qryGroupSalesDetailREAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qryGroupSalesDetailREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryGroupSalesDetailREAL_LEASE_RESOURCE_QTY: TAbmesFloatField;
    qryGroupSalesDetailREAL_LEASE_RESOURCE_ACC_QTY: TAbmesFloatField;
    qryGroupSalesDetailLEASE_RESOURCE_QTY_DIFF: TAbmesFloatField;
    qryGroupSalesDetailLEASE_RESOURCE_ACC_QTY_DIFF: TAbmesFloatField;
    qryGroupSalesMasterCL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField;
    qryGroupSalesMasterRETURN_DATE: TAbmesSQLTimeStampField;
    qryGroupSalesMasterIMPORT_DATE: TAbmesSQLTimeStampField;
    qryCanAnnulSRG: TAbmesSQLQuery;
    qryCanCloseSRG: TAbmesSQLQuery;
    qryCanAnnulSRGNOT_ANNULED_COUNT: TAbmesFloatField;
    qryCanCloseSRGNOT_FINISHED_COUNT: TAbmesFloatField;
    qrySaleRequestGroupDOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupDOC_CODE: TAbmesFloatField;
    prvSaleOrders: TDataSetProvider;
    qrySaleOrders: TAbmesSQLQuery;
    qrySaleOrdersSTATUS_CODE: TAbmesFloatField;
    qrySaleOrdersSALE_ORDER_ID: TAbmesWideStringField;
    qrySaleOrdersPRODUCT_NAME: TAbmesWideStringField;
    qrySaleOrdersSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrdersSALE_OBJECT_CODE: TAbmesFloatField;
    qrySaleOrdersIS_ANNULED: TAbmesFloatField;
    qrySaleOrdersIS_FINISHED: TAbmesFloatField;
    qrySaleOrdersPLAN_PERIOD_DAYS: TAbmesFloatField;
    qrySaleOrdersREAL_PERIOD_DAYS: TAbmesFloatField;
    qrySaleOrdersREAL_PERIOD_DEVIATION_PERCENT: TAbmesFloatField;
    qrySaleOrdersOFFER_SEND_DAYS_RSV: TAbmesFloatField;
    qrySaleOrdersOFFER_ANSWER_DAYS_RSV: TAbmesFloatField;
    qrySaleOrdersDECISION_DAYS_RSV: TAbmesFloatField;
    qrySaleOrdersDECISION_TYPE_CODE: TAbmesFloatField;
    qrySaleOrdersDECISION_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleOrdersPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    qrySaleOrdersPROGNOSIS_END_DATE: TAbmesSQLTimeStampField;
    qrySaleOrdersQUANTITY: TAbmesFloatField;
    qrySaleOrdersMEASURE_CODE: TAbmesFloatField;
    qrySaleOrdersMEASURE_ABBREV: TAbmesWideStringField;
    qrySaleOrdersACCOUNT_QUANTITY: TAbmesFloatField;
    qrySaleOrdersACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qrySaleOrdersACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qrySaleOrdersIS_QUANTITY_AGREED: TAbmesFloatField;
    qrySaleOrdersSINGLE_PRICE: TAbmesFloatField;
    qrySaleOrdersCURRENCY_CODE: TAbmesFloatField;
    qrySaleOrdersCURRENCY_ABBREV: TAbmesWideStringField;
    qrySaleOrdersIS_SINGLE_PRICE_AGREED: TAbmesFloatField;
    qrySaleOrdersTOTAL_PRICE: TAbmesFloatField;
    qrySaleOrdersPROGNOSIS_QUANTITY: TAbmesFloatField;
    qrySaleOrdersPROGNOSIS_ACCOUNT_QUANTITY: TAbmesFloatField;
    qrySaleOrdersPROGNOSIS_SINGLE_PRICE: TAbmesFloatField;
    qrySaleOrdersPROGNOSIS_TOTAL_PRICE: TAbmesFloatField;
    qrySaleOrdersRECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleOrdersSALE_ID: TAbmesWideStringField;
    qrySaleOrdersCOMMON_STATUS_CODE: TAbmesFloatField;
    qrySaleOrdersPROGNOSIS_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qrySaleOrdersPROGNOSIS_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qrySaleOrdersIS_LEASE_QUANTITY_AGREED: TAbmesFloatField;
    qrySaleOrdersDOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrdersDOC_CODE: TAbmesFloatField;
    qrySaleOrdersHAS_DOCUMENTATION: TAbmesFloatField;
    qrySaleOrdersPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrdersPRODUCT_DOC_CODE: TAbmesFloatField;
    qrySaleOrdersPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qrySaleOrdersPROGNOSIS_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qrySaleOrdersLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qrySaleOrdersLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qrySaleOrdersLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qrySaleOrdersPROGNOSIS_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    qrySaleOrdersTOTAL_LEASE_QUANTITY: TAbmesFloatField;
    qrySaleOrdersPROGNOSIS_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qrySaleOrdersACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qrySaleOrdersPROGNOSIS_ACC_TOTAL_LEASE_QTY: TAbmesFloatField;
    qrySaleOrdersTOTAL_ACCOUNT_LEASE_QUANTITY: TAbmesFloatField;
    qrySaleOrdersPROGNOSIS_MEASURE_CODE: TAbmesFloatField;
    qrySaleOrdersPROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField;
    qrySaleOrdersPROGNOSIS_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qrySaleOrdersPROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    qrySaleOrdersPROGNOSIS_CURRENCY_CODE: TAbmesFloatField;
    qrySaleOrdersPROGNOSIS_CURRENCY_ABBREV: TAbmesWideStringField;
    qrySaleOrdersMANAGER_EMPLOYEE_FULL_NAME: TAbmesWideStringField;
    qrySaleOrdersCOMPANY_STATUS_CODE: TAbmesFloatField;
    qrySaleOrdersCOMPANY_STATUS_NAME: TAbmesWideStringField;
    qrySaleOrdersCLIENT_COMPANY_CODE: TAbmesFloatField;
    qrySaleOrdersCLIENT_COMPANY_NAME: TAbmesWideStringField;
    qrySaleOrdersPRIORITY_NO: TAbmesFloatField;
    qrySaleOrdersPRIORITY_COLOR: TAbmesFloatField;
    qrySaleOrdersPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qrySaleOrdersHAS_MEDIATOR: TAbmesFloatField;
    qrySaleOrdersCLIENT_DOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrdersCLIENT_DOC_CODE: TAbmesFloatField;
    qrySaleOrdersCLIENT_HAS_DOCUMENTATION: TAbmesFloatField;
    qrySaleOrdersSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    qrySaleOrdersSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleOrderSS_COUNT: TAbmesFloatField;
    qrySaleRequestGroupSTATUS_CODE: TAbmesFloatField;
    qrySaleOrderHAS_DOC_ITEMS: TAbmesFloatField;
    qrySaleRequestGroupHAS_DOC_ITEMS: TAbmesFloatField;
    qryGroupSalesMasterSTATUS_CODE: TAbmesFloatField;
    qrySaleRequestGroupCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField;
    qrySaleRequestGroupsCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField;
    qrySaleRequestGroupsDetailCLIENT_REQUEST_NO: TAbmesWideStringField;
    qrySaleRequestGroupsDetailCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    qrySaleOrdersCLIENT_REQUEST_NO: TAbmesWideStringField;
    qrySaleOrdersCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    qryGroupSalesMasterCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField;
    qrySaleOrderSRG_DOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrderSRG_DOC_CODE: TAbmesFloatField;
    qrySaleOrderSRG_HAS_DOC_ITEMS: TAbmesFloatField;
    qrySaleRequestGroupsDetailREQUEST_LINE_NO: TAbmesFloatField;
    qrySaleOrdersREQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrdersREQUEST_NO: TAbmesFloatField;
    qrySaleOrdersREQUEST_LINE_NO: TAbmesFloatField;
    qrySaleOrdersREQUEST_BRANCH_ID: TAbmesFloatField;
    qrySaleRequestGroupsREQUEST_BRANCH_ID: TAbmesFloatField;
    qrySaleOrderProductInfo: TAbmesSQLQuery;
    prvSaleOrderProductInfo: TDataSetProvider;
    qrySaleOrdersSALE_PRIORITY_NO: TAbmesFloatField;
    qrySaleOrdersSALE_PRIORITY_COLOR: TAbmesFloatField;
    qrySaleOrdersSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qrySaleRequestGroupsDetailSALE_PRIORITY_NO: TAbmesFloatField;
    qrySaleRequestGroupsDetailSALE_PRIORITY_COLOR: TAbmesFloatField;
    qrySaleRequestGroupsDetailSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qrySaleOrderSALE_PRIORITY_CODE: TAbmesFloatField;
    qryInsertSaleGroup: TAbmesSQLQuery;
    qryGetMaxSaleGroupCode: TAbmesSQLQuery;
    qryGetMaxSaleGroupCodeMAX_SALE_GROUP_CODE: TAbmesFloatField;
    qrySaleOrderCLIENT_PRIORITY_CODE: TAbmesFloatField;
    qrySaleRequestGroupsCLIENT_PRIORITY_CODE: TAbmesFloatField;
    qrySaleOrderASPECT_TYPE_CODE: TAbmesFloatField;
    qrySaleOrdersASPECT_TYPE_CODE: TAbmesFloatField;
    qrySaleOrdersASPECT_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleRequestGroupsDetailASPECT_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailASPECT_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleOrderDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleOrdersPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    qrySaleRequestGroupSTREAM_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupsSTREAM_TYPE_CODE: TAbmesFloatField;
    qrySaleOrderDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrderDELIVERY_OBJECT_CODE: TAbmesFloatField;
    qrySaleOrderDCD_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrderDCD_CODE: TAbmesFloatField;
    qrySaleOrderDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qrySaleOrderDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrderDCD_OBJECT_CODE: TAbmesFloatField;
    qryDeliveryID: TAbmesSQLQuery;
    prvDeliveryID: TDataSetProvider;
    qryDeliveryIDDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryIDDELIVERY_OBJECT_CODE: TAbmesFloatField;
    qryDeliveryIDDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryIDDCD_OBJECT_CODE: TAbmesFloatField;
    qryDeliveryIDDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailREQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupsDetailREQUEST_NO: TAbmesFloatField;
    qrySaleOrderACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qrySaleOrderACCOUNT_OUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    qrySaleOrderACCOUNT_CL_OFFER_SINGLE_PRICE: TAbmesFloatField;
    qrySaleOrderDefaults: TAbmesSQLQuery;
    prvSaleOrderDefaults: TDataSetProvider;
    qrySaleOrderBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupsBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupSTREAM_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleOrderDefaultsPARTNER_CODE: TAbmesFloatField;
    qrySaleOrderDefaultsPARTNER_OFFICE_CODE: TAbmesFloatField;
    qrySaleOrderDefaultsTRANSPORT_DURATION_DAYS: TAbmesFloatField;
    qrySaleOrderDefaultsSHIPMENT_TYPE_CODE: TAbmesFloatField;
    qrySaleOrderDefaultsIS_PARTNER_TRANSPORT: TAbmesFloatField;
    qrySaleOrderDefaultsCUSTOMHOUSE_CODE: TAbmesFloatField;
    qrySaleOrderDefaultsSTORE_CODE: TAbmesFloatField;
    qrySaleOrderDefaultsPRICE: TAbmesFloatField;
    qrySaleOrderDefaultsCURRENCY_CODE: TAbmesFloatField;
    qrySaleOrderDefaultsLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qrySaleRequestGroupIS_ACTIVATED_BY_CLIENT: TAbmesFloatField;
    qrySaleRequestGroupsIS_ACTIVATED_BY_CLIENT: TAbmesFloatField;
    qrySaleOrdersIS_ACTIVATED_BY_CLIENT: TAbmesFloatField;
    prvDecisionTypes: TDataSetProvider;
    qryDecisionTypes: TAbmesSQLQuery;
    qryDecisionTypesDECISION_TYPE_CODE: TAbmesFloatField;
    qryDecisionTypesDECISION_TYPE_ABBREV: TAbmesWideStringField;
    qryDecisionTypesDECISION_TYPE_NAME: TAbmesWideStringField;
    qryDecisionTypesDECISION_TYPE_NO: TAbmesFloatField;
    qryDecisionTypesALLOWS_SALE: TAbmesFloatField;
    qryDecisionTypesIS_ESTIMATION_BOUND: TAbmesFloatField;
    qryDecisionTypesIS_REALIZATION_BOUND: TAbmesFloatField;
    qryGetNewSaleDecisionTypeCode: TAbmesSQLQuery;
    qryGetNewSaleDecisionTypeCodeNEW_SALE_DECISION_TYPE_CODE: TAbmesFloatField;
    prvSaleRequestGroupDefaults: TDataSetProvider;
    qrySaleRequestGroupDefaults: TAbmesSQLQuery;
    qrySaleRequestGroupDefaultsMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    qrySaleOrdersBASE_ROLE_CODE: TAbmesFloatField;
    qrySaleRequestGroupsBASE_ROLE_CODE: TAbmesFloatField;
    qrySaleRequestGroupPRODUCT_CLASS_CODE: TAbmesFloatField;
    qrySaleOrderFO_EXEC_DEPT_CODE: TAbmesFloatField;
    qrySaleOrderFO_PRIORITY_CODE: TAbmesFloatField;
    qrySaleOrderFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    qrySaleOrderSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    qrySaleOrderWORK_PRIORITY_CODE: TAbmesFloatField;
    qryDecisionTypesREQUIRES_FINISHING: TAbmesFloatField;
    qrySaleOrderUNFINISHED_SRG_SALE_COUNT: TAbmesFloatField;
    qrySaleOrderMIN_BASE_PRICE: TAbmesFloatField;
    qrySaleOrderACCOUNT_MIN_BASE_PRICE: TAbmesFloatField;
    qrySaleOrderProductInfoMARKET_PRICE: TAbmesFloatField;
    qrySaleOrderProductInfoACC_MARKET_PRICE: TAbmesFloatField;
    qrySaleOrderProductInfoMARKET_PRICE_CURRENCY_CODE: TAbmesFloatField;
    qrySaleOrderProductInfoSALE_LEASE_PRICE: TAbmesFloatField;
    qrySaleOrderProductInfoACC_SALE_LEASE_PRICE: TAbmesFloatField;
    qrySaleOrderProductInfoSALE_LEASE_CURRENCY_CODE: TAbmesFloatField;
    qrySaleOrderProductInfoSALE_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qrySaleOrderProductInfoSPEC_STATE_CODE: TAbmesFloatField;
    qrySaleOrderProductInfoPRODUCT_PRIORITY_NO: TAbmesFloatField;
    qrySaleOrderProductInfoPRODUCT_PRIORITY_COLOR: TAbmesFloatField;
    qrySaleOrderProductInfoPRODUCT_PRIORITY_BK_COLOR: TAbmesFloatField;
    qrySaleOrderProductInfoPRP_DOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrderProductInfoPRP_DOC_CODE: TAbmesFloatField;
    qrySaleOrderProductInfoPRP_HAS_DOC: TAbmesFloatField;
    qrySaleRequestGroupsDetailPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    qryGroupSalesMasterSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    qryGroupSalesMasterSTORE_REQUEST_CODE: TAbmesFloatField;
    qrySaleOrderFO_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrderFO_IS_COMPLETED: TAbmesFloatField;
    qrySaleOrderFO_CLOSE_REQUESTED: TAbmesFloatField;
    qrySaleOrderFIN_ORDER_CODE: TAbmesFloatField;
    qrySaleOrderFO_STATUS_CODE: TAbmesFloatField;
    qrySaleOrderFO_PARTNER_CODE: TAbmesFloatField;
    qrySaleOrderSSH_DOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrderSSH_DOC_CODE: TAbmesFloatField;
    qryGroupSalesMasterIS_STORE_REQUEST_OTCH: TAbmesFloatField;
    qryGroupSalesMasterINVOICE_STATE_CODE: TAbmesFloatField;
    qryGroupSalesDetailQUANTITY_TAKEN_FROM_STORE: TAbmesFloatField;
    qryGroupSalesDetailACC_QUANTITY_TAKEN_FROM_STORE: TAbmesFloatField;
    qryGroupSalesDetailTAKEN_FROM_STORE_PRICE: TAbmesFloatField;
    qrySaleRequestGroupNOTES: TAbmesWideStringField;
    qrySaleOrdersRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField;
    qrySaleRequestGroupsDetailRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField;
    qryGroupSalesMasterRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField;
    qrySaleOrdersCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    procedure prvSaleOrderBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvSaleOrderAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure qryGroupSalesMasterBeforeOpen(DataSet: TDataSet);
    procedure prvSaleOrderBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvSaleOrderAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvSaleRequestGroupBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvSaleRequestGroupAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvSaleRequestGroupBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qrySaleRequestGroupAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure qrySaleOrdersBeforeOpen(DataSet: TDataSet);
    procedure qrySaleOrdersAfterClose(DataSet: TDataSet);
    procedure qrySaleOrderAfterProviderStartTransaction(DataSet: TDataSet);
    procedure qrySaleRequestGroupsBeforeOpen(DataSet: TDataSet);
  private
    FDocsDelta: Variant;
    FProductClass: TProductClass;
    function ExistsModelForSale(SaleObjectBranchCode, SaleObjectCode: Integer): Boolean;
  protected
    function GetNewRequestNo(RequestBranchCode: Integer): Integer;
    function GetNewRequestLineNo(RequestBranchCode: Integer; RequestNo: Integer): Integer;
    function GetNewSaleNo(SaleBranchCode: Integer): Integer;
    function CanAnnulSRG(RequestBranchCode: Integer; RequestNo: Integer): Boolean;
    function CanFinishSRG(RequestBranchCode: Integer; RequestNo: Integer): Boolean;
    function GetNewSaleDecisionTypeCode: Integer;
  end;

type
  IdmSaleOrdersProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmSaleOrdersProxy = class(TDBPooledDataModuleProxy, IdmSaleOrdersProxy)
  private
    class var FSingleton: TdmSaleOrdersProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmSaleOrders>;
  strict protected
    property LockedInstance: ISmartLock<TdmSaleOrders> read GetLockedInstance;
  public
    class property Singleton: TdmSaleOrdersProxy read FSingleton;

    function GetNewRequestNo(RequestBranchCode: Integer): Integer;
    function GetNewRequestLineNo(RequestBranchCode: Integer; RequestNo: Integer): Integer;
    function GetNewSaleNo(SaleBranchCode: Integer): Integer;
    function CanAnnulSRG(RequestBranchCode: Integer; RequestNo: Integer): Boolean;
    function CanFinishSRG(RequestBranchCode: Integer; RequestNo: Integer): Boolean;
    function GetNewSaleDecisionTypeCode: Integer;
  end;

implementation

uses
  Variants, uSaleChangeTypes, uProcesses, uUtils, uServerMessageIds,
  uProcessObjectIdentifierFormats, uDBPooledDataModuleHelper, uTreeNodes,
  uSaleOrderTypes, uSvrUtils, uDealTypes;

{$R *.DFM}

{ TdmSaleOrdersProxy }

function TdmSaleOrdersProxy.GetLockedInstance: ISmartLock<TdmSaleOrders>;
begin
  Result:= ISmartLock<TdmSaleOrders>(inherited LockedInstance);
end;

function TdmSaleOrdersProxy.CanAnnulSRG(RequestBranchCode,
  RequestNo: Integer): Boolean;
begin
  Result:= LockedInstance.Value.CanAnnulSRG(RequestBranchCode, RequestNo);
end;

function TdmSaleOrdersProxy.CanFinishSRG(RequestBranchCode,
  RequestNo: Integer): Boolean;
begin
  Result:= LockedInstance.Value.CanFinishSRG(RequestBranchCode, RequestNo);
end;

function TdmSaleOrdersProxy.GetNewRequestLineNo(RequestBranchCode,
  RequestNo: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewRequestLineNo(RequestBranchCode, RequestNo);
end;

function TdmSaleOrdersProxy.GetNewRequestNo(RequestBranchCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewRequestNo(RequestBranchCode);
end;

function TdmSaleOrdersProxy.GetNewSaleNo(SaleBranchCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewSaleNo(SaleBranchCode);
end;

function TdmSaleOrdersProxy.GetNewSaleDecisionTypeCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewSaleDecisionTypeCode;
end;

{ TdmSaleOrders }

procedure TdmSaleOrders.prvSaleOrderBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  SaleGroupObjectBranchCode: Integer;
  SaleGroupObjectCode: Integer;
  SaleGroupCode: Integer;
begin
  inherited;
  Assert(Assigned(SourceDS));
  Assert(Assigned(DeltaDS));

  with DeltaDS do
    if (SourceDS = qrySaleOrder) then
      begin
        SetCreateAndChangeFieldsOnUpdateRecord(DeltaDS, UpdateKind, LoginContext);

        if not VarIsNullOrEmpty(FieldByName('ANNUL_EMPLOYEE_CODE').NewValue) then
          SetEmployeeDateAndTime(DeltaDS, 'ANNUL', LoginContext);

        if not VarIsNullOrEmpty(FieldByName('FINISH_EMPLOYEE_CODE').NewValue) then
          SetEmployeeDateAndTime(DeltaDS, 'FINISH', LoginContext);

        if (UpdateKind = ukInsert) then
          FieldByName('REQUEST_LINE_NO').NewValue:=
            GetNewRequestLineNo(
              GetFieldValue(FieldByName('REQUEST_BRANCH_CODE')),
              GetFieldValue(FieldByName('REQUEST_NO'))
            );

        // zapitvane -> prodajba ?
        if not VarIsNullOrEmpty(FieldByName('SALE_BRANCH_CODE').NewValue) then
          begin
            FieldByName('SALE_NO').NewValue:= GetNewSaleNo(FieldByName('SALE_BRANCH_CODE').Value);

            SvrCommon.GetProcessObjectKey(
              pocSaleGroup,
              SaleGroupObjectBranchCode,
              SaleGroupObjectCode);

            FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE').NewValue:= SaleGroupObjectBranchCode;
            FieldByName('SALE_GROUP_OBJECT_CODE').NewValue:= SaleGroupObjectCode;

            qryGetMaxSaleGroupCode.ParamByName('SALE_GROUP_BRANCH_CODE').Value:=
              GetFieldValue(FieldByName('SALE_BRANCH_CODE'));
            qryGetMaxSaleGroupCode.Open;
            try
              SaleGroupCode:= qryGetMaxSaleGroupCodeMAX_SALE_GROUP_CODE.AsInteger + 1;
            finally
              qryGetMaxSaleGroupCode.Close;
            end;

            SetParams(qryInsertSaleGroup.Params, DeltaDS);
            qryInsertSaleGroup.ParamByName('SALE_GROUP_CODE').AsInteger:= SaleGroupCode;
            qryInsertSaleGroup.ExecSQL;
            if (qryInsertSaleGroup.RowsAffected <> 1) then
              raise Exception.Create('Internal error: sale group not inserted');

            SvrCommon.UpdateProcessObjectIdentifier(
              SaleGroupObjectBranchCode,
              SaleGroupObjectCode,
              Format(poifSaleGroup, [
                SvrDeptsTree.GetNodeNo(
                 GetFieldValue(DeltaDS.FieldByName('SALE_BRANCH_CODE'))),
                SaleGroupCode
              ])
            );
          end;

        // manufacture_quantity
        if VarIsNullOrEmpty(GetFieldValue(FieldByName('MANUFACTURE_QUANTITY'))) or
           (not VarIsNullOrEmpty(FieldByName('SALE_BRANCH_CODE').NewValue)) then
          begin
            FieldByName('MODEL_DEVELOPMENT_TYPE_CODE').NewValue:= 1;

            if LoginContext.IsSaleManufactureQuantityAutoLoaded then
              begin
                FieldByName('MANUFACTURE_QUANTITY').NewValue:=
                  FieldByName('QUANTITY').NewValue;
                FieldByName('WORK_PRIORITY_CODE').NewValue:= LoginContext.DefaultWorkPriorityCode;
              end
            else
              begin
                FieldByName('MANUFACTURE_QUANTITY').NewValue:= 0;
              end;
          end;

        if not VarIsEmpty(FieldByName('QUANTITY').NewValue) and
           (FieldByName('MANUFACTURE_QUANTITY').OldValue = FieldByName('QUANTITY').OldValue) then
          begin
            FieldByName('MANUFACTURE_QUANTITY').NewValue:= FieldByName('QUANTITY').NewValue;
          end;

        // update product in psd
        if not VarIsEmpty(FieldByName('PRODUCT_CODE').NewValue) and
           (UpdateKind <> ukInsert) then
          begin
            if ExistsModelForSale(
                 VarAsType(GetFieldValue(FieldByName('SALE_OBJECT_BRANCH_CODE')), varInteger),
                 VarAsType(GetFieldValue(FieldByName('SALE_OBJECT_CODE')), varInteger)
               ) then
              raise Exception.Create(SModelExistsForSaleId)
            else
              begin
                SetParams(qryUpdateProductInPlannedStoreDeals.Params, DeltaDS);
                qryUpdateProductInPlannedStoreDeals.ExecSQL;
              end;
          end;

        if (UpdateKind = ukInsert) then
          begin
            FieldByName('MANUFACTURE_DECISION_EXPECTED').NewValue:= False;
            FieldByName('TRANSIENT_STATUS_CODE').NewValue:= tsPermanent;

            SvrCommon.SetProcessObjectKey(DeltaDS, 'SALE_OBJECT_BRANCH_CODE',
              'SALE_OBJECT_CODE', pocSale);
          end;
      end;
end;


function TdmSaleOrders.GetNewRequestLineNo(RequestBranchCode,
  RequestNo: Integer): Integer;
begin
  qryGetNewRequestLineNo.ParamByName('REQUEST_BRANCH_CODE').AsInteger:= RequestBranchCode;
  qryGetNewRequestLineNo.ParamByName('REQUEST_NO').AsInteger:= RequestNo;
  qryGetNewRequestLineNo.Open;
  try
    Result:= qryGetNewRequestLineNoNEW_REQUEST_LINE_NO.AsInteger;
  finally
    qryGetNewRequestLineNo.Close;
  end;
end;

function TdmSaleOrders.GetNewRequestNo(RequestBranchCode: Integer): Integer;
begin
  qryGetNewRequestNo.ParamByName('REQUEST_BRANCH_CODE').AsInteger:= RequestBranchCode;
  qryGetNewRequestNo.Open;
  try
    Result:= qryGetNewRequestNoNEW_REQUEST_NO.AsInteger;
  finally
    qryGetNewRequestNo.Close;
  end;
end;

function TdmSaleOrders.GetNewSaleNo(SaleBranchCode: Integer): Integer;
begin
  with qryGetMaxSaleNo do
    begin
      ParamByName('SALE_BRANCH_CODE').AsInteger:= SaleBranchCode;
      Open;
      try
        Result:= FieldByName('MAX_SALE_NO').AsInteger + 1;
      finally
        Close;
      end;
    end;
end;

procedure TdmSaleOrders.prvSaleRequestGroupAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmSaleOrders.prvSaleRequestGroupBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmSaleOrders.prvSaleRequestGroupBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  SetCreateAndChangeFieldsOnUpdateRecord(DeltaDS, UpdateKind, LoginContext);

  if not VarIsNullOrEmpty(DeltaDS.FieldByName('ANNUL_EMPLOYEE_CODE').NewValue) then
    SetEmployeeDateAndTime(DeltaDS, 'ANNUL', LoginContext);
  
  if not VarIsNullOrEmpty(DeltaDS.FieldByName('FINISH_EMPLOYEE_CODE').NewValue) then
    SetEmployeeDateAndTime(DeltaDS, 'FINISH', LoginContext);

  if (UpdateKind = ukInsert) then
    begin
      DeltaDS.FieldByName('REQUEST_NO').NewValue:=
        GetNewRequestNo(GetFieldValue(DeltaDS.FieldByName('REQUEST_BRANCH_CODE')));
      DeltaDS.FieldByName('SALE_ORDER_TYPE_CODE').NewValue:= sotNormalSaleOrder;
    end;
end;

procedure TdmSaleOrders.prvSaleOrderAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
var
  SaleBranchNo: Real;
  SaleNo: Integer;
  RequestBranchNo: Real;
  RequestNo: Integer;
  RequestLineNo: Integer;
  ShipmentObjectBranchCode: Integer;
  ShipmentObjectCode: Integer;
  s: string;
  ProcessCode: Integer;
begin
  inherited;

  if (SourceDS = qrySaleOrder) then
    begin
      with DeltaDS do
        begin
          // prevryshtane na zapitvaneto v prodajba
          if not VarIsNullOrEmpty(FieldByName('SALE_BRANCH_CODE').NewValue) then
            begin
              SetParams(qryInsertSaleOrderSSandPSD.Params, DeltaDS);

              SvrCommon.GetProcessObjectKey(pocSaleShipment,
                ShipmentObjectBranchCode,ShipmentObjectCode);

              qryInsertSaleOrderSSandPSD.ParamByName('SHIPMENT_OBJECT_BRANCH_CODE').AsInteger:=
                ShipmentObjectBranchCode;
              qryInsertSaleOrderSSandPSD.ParamByName('SHIPMENT_OBJECT_CODE').AsInteger:=
                ShipmentObjectCode;

              qryInsertSaleOrderSSandPSD.ExecSQL;

              s:=
                 Format(poifSaleShipment, [
                   SvrDeptsTree.GetNodeNo(
                     GetFieldValue(DeltaDS.FieldByName('SALE_BRANCH_CODE'))),
                   DeltaDS.FieldByName('SALE_NO').AsInteger,
                   1
                 ]);

              SvrCommon.UpdateProcessObjectIdentifier(
                 ShipmentObjectBranchCode,
                 ShipmentObjectCode,
                 s
               );

              // OPF
              if not VarIsEmpty(DeltaDS.FieldByName('FO_EXEC_DEPT_CODE').NewValue) then
                begin
                  if (FProductClass = pcFinancial) then
                    ProcessCode:= pFinPrdFOb
                  else
                    ProcessCode:= pFinPrdUobZd;

                  DeltaDS.FieldByName('FIN_ORDER_CODE').NewValue:=
                    SvrFinance.NewFinOrder(
                      GetFieldValue(DeltaDS.FieldByName('FO_BRANCH_CODE')),
                      GetFieldValue(DeltaDS.FieldByName('FO_EXEC_DEPT_CODE')),
                      GetFieldValue(DeltaDS.FieldByName('FO_PRIORITY_CODE')),
                      ProcessCode,
                      ShipmentObjectBranchCode,
                      ShipmentObjectCode,
                      GetFieldValue(DeltaDS.FieldByName('FO_PARTNER_CODE')),
                      ioIn,
                      GetFieldValue(DeltaDS.FieldByName('SHIPMENT_DATE')),
                      0,
                      GetFieldValue(DeltaDS.FieldByName('CURRENCY_CODE')),
                      GetFieldValue(DeltaDS.FieldByName('QUANTITY')) * GetFieldValue(DeltaDS.FieldByName('SINGLE_PRICE')),
                      GetFieldValue(DeltaDS.FieldByName('FO_WORK_FINANCIAL_PRODUCT_CODE')),
                      Null,
                      Null,
                      GetFieldValue(DeltaDS.FieldByName('SPEC_FIN_MODEL_CODE'))
                    );
                end;
            end;

          if (UpdateKind = ukModify) and
             (DeltaDS.FieldByName('FO_CLOSE_REQUESTED').NewValue = 1) then
            SvrFinance.CloseFinOrder(DeltaDS.FieldByName('FIN_ORDER_CODE').OldValue);

          // update na ss i psd
          if (UpdateKind = ukModify) and
             not VarIsNullOrEmpty(FieldByName('SALE_BRANCH_CODE').OldValue) and
             VarIsNullOrEmpty(FieldByName('SALE_BRANCH_CODE').NewValue) then
            begin
              SetParams(qryUpdateSaleOrderStuff.Params, DeltaDS);

              if (GetFieldValue(FieldByName('SALE_DEAL_TYPE_CODE')) = 1) and
                 not VarIsNullOrEmpty(FieldByName('SHIPMENT_DATE').NewValue) then
                qryUpdateSaleOrderStuff.ParamByName('UPDATE_SALE_DATES').AsInteger:= 1
              else
                qryUpdateSaleOrderStuff.ParamByName('UPDATE_SALE_DATES').AsInteger:= 0;

              if (GetFieldValue(FieldByName('SALE_DEAL_TYPE_CODE')) = 1) and
                 not VarIsNullOrEmpty(FieldByName('QUANTITY').NewValue) then
                qryUpdateSaleOrderStuff.ParamByName('UPDATE_SALE_QUANTITIES').AsInteger:= 1
              else
                qryUpdateSaleOrderStuff.ParamByName('UPDATE_SALE_QUANTITIES').AsInteger:= 0;

              if (GetFieldValue(FieldByName('SALE_DEAL_TYPE_CODE')) = 2) and
                 ( not VarIsNullOrEmpty(FieldByName('SHIPMENT_DATE').NewValue) or
                   not VarIsNullOrEmpty(FieldByName('IMPORT_DATE').NewValue) or
                   not VarIsNullOrEmpty(FieldByName('RECEIVE_DATE').NewValue) or
                   not VarIsNullOrEmpty(FieldByName('RETURN_DATE').NewValue)) then
                qryUpdateSaleOrderStuff.ParamByName('UPDATE_LEASE_DATES').AsInteger:= 1
              else
                qryUpdateSaleOrderStuff.ParamByName('UPDATE_LEASE_DATES').AsInteger:= 0;

              if (GetFieldValue(FieldByName('SALE_DEAL_TYPE_CODE')) = 2) and
                 ( not VarIsNullOrEmpty(FieldByName('QUANTITY').NewValue) or
                   not VarIsNullOrEmpty(FieldByName('LEASE_DATE_UNIT_QTY').NewValue) ) then
                qryUpdateSaleOrderStuff.ParamByName('UPDATE_LEASE_QUANTITIES').AsInteger:= 1
              else
                qryUpdateSaleOrderStuff.ParamByName('UPDATE_LEASE_QUANTITIES').AsInteger:= 0;

              if not VarIsNullOrEmpty(FieldByName('SALE_PRIORITY_CODE').NewValue) or
                 not VarIsNullOrEmpty(FieldByName('SHIPMENT_STORE_CODE').NewValue) or
                 not VarIsNullOrEmpty(FieldByName('PRODUCT_CODE').NewValue) or
                 not VarIsNullOrEmpty(FieldByName('ANNUL_EMPLOYEE_CODE').NewValue) or
                 not VarIsNullOrEmpty(FieldByName('FINISH_EMPLOYEE_CODE').NewValue) then
                qryUpdateSaleOrderStuff.ParamByName('UPDATE_GENERAL_PSD').AsInteger:= 1
              else
                qryUpdateSaleOrderStuff.ParamByName('UPDATE_GENERAL_PSD').AsInteger:= 0;
                

              qryUpdateSaleOrderStuff.ExecSQL;
            end;
        end;

      // process object identifier
      if not VarIsNullOrEmpty(GetFieldValue(DeltaDS.FieldByName('SALE_BRANCH_CODE'))) or
         not VarIsNullOrEmpty(GetFieldValue(DeltaDS.FieldByName('SALE_NO'))) then
        begin
          SaleBranchNo:=
            SvrDeptsTree.GetNodeNo(
              GetFieldValue(DeltaDS.FieldByName('SALE_BRANCH_CODE'))
            );
          SaleNo:= GetFieldValue(DeltaDS.FieldByName('SALE_NO'));
          SvrCommon.UpdateProcessObjectIdentifier(
            GetFieldValue(DeltaDS.FieldByName('SALE_OBJECT_BRANCH_CODE')),
            GetFieldValue(DeltaDS.FieldByName('SALE_OBJECT_CODE')),
            Format(poifSale, [SaleBranchNo, SaleNo]));
        end
      else
        begin
          RequestBranchNo:=
            SvrDeptsTree.GetNodeNo(
              GetFieldValue(DeltaDS.FieldByName('REQUEST_BRANCH_CODE'))
            );
          RequestNo:= GetFieldValue(DeltaDS.FieldByName('REQUEST_NO'));
          RequestLineNo:= GetFieldValue(DeltaDS.FieldByName('REQUEST_LINE_NO'));
          SvrCommon.UpdateProcessObjectIdentifier(
            GetFieldValue(DeltaDS.FieldByName('SALE_OBJECT_BRANCH_CODE')),
            GetFieldValue(DeltaDS.FieldByName('SALE_OBJECT_CODE')),
            Format(poifSaleOrder, [RequestBranchNo, RequestNo, RequestLineNo]));
        end;
    end;
end;

function TdmSaleOrders.CanAnnulSRG(RequestBranchCode,
  RequestNo: Integer): Boolean;
begin
  qryCanAnnulSRG.ParamByName('REQUEST_BRANCH_CODE').AsInteger:= RequestBranchCode;
  qryCanAnnulSRG.ParamByName('REQUEST_NO').AsInteger:= RequestNo;
  qryCanAnnulSRG.Open;
  try
    Result:= (qryCanAnnulSRGNOT_ANNULED_COUNT.AsInteger = 0);

  finally
    qryCanAnnulSRG.Close;
  end;
end;

function TdmSaleOrders.CanFinishSRG(RequestBranchCode,
  RequestNo: Integer): Boolean;
begin
  qryCanCloseSRG.ParamByName('REQUEST_BRANCH_CODE').AsInteger:= RequestBranchCode;
  qryCanCloseSRG.ParamByName('REQUEST_NO').AsInteger:= RequestNo;
  qryCanCloseSRG.Open;
  try
    Result:= (qryCanCloseSRGNOT_FINISHED_COUNT.AsInteger = 0);

  finally
    qryCanCloseSRG.Close;
  end;
end;

function TdmSaleOrders.ExistsModelForSale(SaleObjectBranchCode,
  SaleObjectCode: Integer): Boolean;
begin
  with qryExistsModelForSale do
    begin
      ParamByName('SALE_OBJECT_BRANCH_CODE').Value:= SaleObjectBranchCode;
      ParamByName('SALE_OBJECT_CODE').Value:= SaleObjectCode;

      Open;
      try
        Result:= FieldByName('EXISTS_MATERIAL_LIST').AsBoolean;
      finally
        Close;
      end;   { try }
    end;   { with }
end;

procedure TdmSaleOrders.qryGroupSalesMasterBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'));
  ProcessUserParamBeforeQueryOpen((DataSet as TAbmesSQLQuery).ParamByName('SRG_EMPLOYEE_CODE'), LoginContext);
end;

procedure TdmSaleOrders.qrySaleOrderAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmSaleOrders.qrySaleOrdersAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmSaleOrders.qrySaleOrdersBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'),
    [(DataSet as TAbmesSQLQuery)],
    1,
    IntToProductClass((DataSet as TAbmesSQLQuery).Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger));
end;

procedure TdmSaleOrders.qrySaleRequestGroupAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmSaleOrders.qrySaleRequestGroupsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ProcessUserParamBeforeQueryOpen(qrySaleRequestGroups.ParamByName('SRG_EMPLOYEE_CODE'), LoginContext);
end;

procedure TdmSaleOrders.prvSaleOrderBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData[0];
  FProductClass:= IntToProductClass(OwnerData[1]);
end;

procedure TdmSaleOrders.prvSaleOrderAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

function TdmSaleOrders.GetNewSaleDecisionTypeCode: Integer;
begin
  qryGetNewSaleDecisionTypeCode.Open;
  try
    Result:= qryGetNewSaleDecisionTypeCodeNEW_SALE_DECISION_TYPE_CODE.AsInteger;
  finally
    qryGetNewSaleDecisionTypeCode.Close;
  end;  { try }
end;

initialization
  TdmSaleOrdersProxy.FSingleton:= TdmSaleOrdersProxy.Create(TdmSaleOrders);

finalization
  FreeAndNil(TdmSaleOrdersProxy.FSingleton);
end.
