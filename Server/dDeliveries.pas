unit dDeliveries;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, JvStringHolder, WideStrings, FMTBcd, SqlExpr,
  AbmesSQLConnection, DBXDevartOracle, uSmartLock, AbmesClientDataSet;

type
  TdmDeliveries = class(TDBPooledDataModule)
    qryDeliveries: TAbmesSQLQuery;
    qryDeficitCoverDecision: TAbmesSQLQuery;
    qryDeliveryTypes: TAbmesSQLQuery;
    qryDelivery: TAbmesSQLQuery;
    qryDeficitCoverDecisionsMaster: TAbmesSQLQuery;
    qryDeficitCoverDecisionsDetail: TAbmesSQLQuery;
    qryGetNewDeliveryProjectCode: TAbmesSQLQuery;
    qryInsertDeliveryContracts: TAbmesSQLQuery;
    qryModifyDeliveryContracts: TAbmesSQLQuery;
    prvDeliveryTypes: TDataSetProvider;
    prvDeficitCoverDecisionsDetail: TDataSetProvider;
    prvDeficitCoverDecisionsMaster: TDataSetProvider;
    prvDeliveries: TDataSetProvider;
    prvDeficitCoverDecision: TDataSetProvider;
    prvDelivery: TDataSetProvider;
    qryInsertPlannedStoreDeal: TAbmesSQLQuery;
    qryModifyPlannedStoreDeal: TAbmesSQLQuery;
    qryAnnulPlannedStoreDeal: TAbmesSQLQuery;
    qryCanAnnulRPD: TAbmesSQLQuery;
    qryCanCloseRPD: TAbmesSQLQuery;
    qryCanAnnulDelivery: TAbmesSQLQuery;
    qryClosePlannedStoreDeal: TAbmesSQLQuery;
    qryDeliveryTypesDELIVERY_TYPE_CODE: TAbmesFloatField;
    qryDeliveryTypesDELIVERY_TYPE_ABBREV: TAbmesWideStringField;
    qryDeficitCoverDecisionDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionDCD_OBJECT_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionIS_DONE: TAbmesFloatField;
    qryDeficitCoverDecisionIS_CANCELED: TAbmesFloatField;
    qryDeficitCoverDecisionVPD_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionCREATE_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionCREATE_TIME: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionCHANGE_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionCHANGE_TIME: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionDEPT_NO: TAbmesFloatField;
    qryDeficitCoverDecisionDEPT_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionPRODUCT_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryDeficitCoverDecisionWORK_MEASURE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionPRODUCT_CUSTOM_CODE: TAbmesFloatField;
    qryDCDPlannedRealQuantity: TAbmesSQLQuery;
    qryDCDPlannedRealQuantityTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryDCDPlannedRealQuantityDCD_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryUpdatePSDQuantity: TAbmesSQLQuery;
    qryGetNewDCDCode: TAbmesSQLQuery;
    qryDeficitCoverDecisionDCD_BRANCH_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionDCD_CODE: TAbmesFloatField;
    qryDeletePSD: TAbmesSQLQuery;
    qryExistsPSD: TAbmesSQLQuery;
    qryExistsPSDEXISTS_PSD: TAbmesFloatField;
    qryDeliveryStoreDeals: TAbmesSQLQuery;
    qryDeliveryStoreDealsSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qryDeliveryStoreDealsSTORE_DEAL_NO: TAbmesFloatField;
    qryDeliveryStoreDealsQUANTITY: TAbmesFloatField;
    qryDeliveryStoreDealsACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeliveryStoreDealsSTORE_CODE: TAbmesFloatField;
    qryDeliveryStoreDealsSTORE_NAME: TAbmesWideStringField;
    prvDeliveryStoreDeals: TDataSetProvider;
    qryDeliveryStoreDealsSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryStoreDealsSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    prvStoreDeal: TDataSetProvider;
    qryStoreDeal: TAbmesSQLQuery;
    qryStoreDealSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStoreDealSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    qryStoreDealINVOICE_NO: TAbmesFloatField;
    qryStoreDealINVOICE_ABBREV: TAbmesWideStringField;
    qryStoreDealINVOICE_DATE: TAbmesSQLTimeStampField;
    qryStoreDealIS_PROFORM_INVOICE: TAbmesFloatField;
    qryDCDPlannedRealQuantityTOTAL_QUANTITY: TAbmesFloatField;
    qryDCDPlannedRealQuantityDCD_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionDOC_BRANCH_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionDOC_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionASPECT_TYPE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionDELIVERY_COUNT: TAbmesFloatField;
    prvDeliveryDealTypes: TDataSetProvider;
    qryDeliveryDealTypes: TAbmesSQLQuery;
    qryDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    qryDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qryDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    qryDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    qryDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionHAS_DOC: TAbmesFloatField;
    qryDeliveryVENDOR_COMPANY_CODE: TAbmesFloatField;
    qryDeliveryMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    qryDeliverySTART_DATE: TAbmesSQLTimeStampField;
    qryDeliveryREGISTER_DATE: TAbmesSQLTimeStampField;
    qryDeliveryPLAN_POSITION_DATE: TAbmesSQLTimeStampField;
    qryDeliveryREAL_POSITION_DATE: TAbmesSQLTimeStampField;
    qryDeliveryPLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    qryDeliveryREAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    qryDeliveryREAL_DECISION_DATE: TAbmesSQLTimeStampField;
    qryDeliveryMAX_BASE_SINGLE_PRICE: TAbmesFloatField;
    qryDeliveryDELIVERY_DECISION_CODE: TAbmesFloatField;
    qryDeliveryDELIVERY_DATE: TAbmesSQLTimeStampField;
    qryDeliveryWORK_QUANTITY: TAbmesFloatField;
    qryDeliveryACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeliveryCURRENCY_CODE: TAbmesFloatField;
    qryDeliveryTOTAL_PRICE: TAbmesFloatField;
    qryDeliverySINGLE_PRICE: TAbmesFloatField;
    qryDeliveryDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeliveryDIALOG_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeliveryDELIVERY_VENDOR_COMPANY_CODE: TAbmesFloatField;
    qryDeliveryDELIVERY_VENDOR_OFFICE_CODE: TAbmesFloatField;
    qryDeliverySHIPMENT_DAYS: TAbmesFloatField;
    qryDeliveryCUSTOMHOUSE_CODE: TAbmesFloatField;
    qryDeliverySHIPMENT_TYPE_CODE: TAbmesFloatField;
    qryDeliveryPRIORITY_CODE: TAbmesFloatField;
    qryDeliveryIS_TRANSPORT_FROM_VENDOR: TAbmesFloatField;
    qryDeficitCoverDecisionDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qryDeficitCoverDecisionDCD_BRANCH_ID: TAbmesWideStringField;
    qryDeficitCoverDecisionASPECT_TYPE_ABBREV: TAbmesWideStringField;
    qryDeliveryDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryDCD_OBJECT_CODE: TAbmesFloatField;
    qryDeliveryDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qryDeliveryCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeliveryCREATE_DATE: TAbmesSQLTimeStampField;
    qryDeliveryCREATE_TIME: TAbmesSQLTimeStampField;
    qryDeliveryCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeliveryCHANGE_DATE: TAbmesSQLTimeStampField;
    qryDeliveryCHANGE_TIME: TAbmesSQLTimeStampField;
    qryDeliveryACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryDeliveryDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryDELIVERY_OBJECT_CODE: TAbmesFloatField;
    qryDeliveryDELIVERY_TYPE_CODE: TAbmesFloatField;
    qryDeliveryDOC_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryDOC_CODE: TAbmesFloatField;
    qryDeliveryHAS_DOC: TAbmesFloatField;
    qryDeliveryIS_ACTIVATED_BY_VENDOR: TAbmesFloatField;
    qryDeficitCoverDecisionTOTAL_WORK_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeliveryFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeliveryFINISH_DATE: TAbmesSQLTimeStampField;
    qryDeliveryFINISH_TIME: TAbmesSQLTimeStampField;
    qryDeliveryANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeliveryANNUL_DATE: TAbmesSQLTimeStampField;
    qryDeliveryANNUL_TIME: TAbmesSQLTimeStampField;
    qryDeliveryDecisions: TAbmesSQLQuery;
    prvDeliveryDecisions: TDataSetProvider;
    qryDeliveryDecisionsDELIVERY_DECISION_CODE: TAbmesFloatField;
    qryDeliveryDecisionsDELIVERY_DECISION_ABBREV: TAbmesWideStringField;
    qryDeliveryDecisionsDELIVERY_DECISION_NAME: TAbmesWideStringField;
    qryDeliveryDCD_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryDCD_CODE: TAbmesFloatField;
    qryDeliveryProductInfo: TAbmesSQLQuery;
    prvDeliveryProductInfo: TDataSetProvider;
    qryDeliveriyDialogs: TAbmesSQLQuery;
    prvDeliveriyDialogs: TDataSetProvider;
    qryDeliveriyDialogsSTATUS_CODE: TAbmesFloatField;
    qryDeliveriyDialogsASPECT_TYPE_ABBREV: TAbmesWideStringField;
    qryDeliveriyDialogsDELIVERY_ID: TAbmesWideStringField;
    qryDeliveriyDialogsIS_ACTIVATED_BY_VENDOR: TAbmesFloatField;
    qryDeliveriyDialogsDIALOG_EMPLOYEE_NAME: TAbmesWideStringField;
    qryDeliveriyDialogsCOMPANY_STATUS_CODE: TAbmesFloatField;
    qryDeliveriyDialogsCOMPANY_STATUS_NAME: TAbmesWideStringField;
    qryDeliveriyDialogsVENDOR_COMPANY_CODE: TAbmesFloatField;
    qryDeliveriyDialogsVENDOR_COMPANY_NAME: TAbmesWideStringField;
    qryDeliveriyDialogsPRIORITY_NO: TAbmesFloatField;
    qryDeliveriyDialogsPRIORITY_COLOR: TAbmesFloatField;
    qryDeliveriyDialogsPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryDeliveriyDialogsHAS_MEDIATOR: TAbmesFloatField;
    qryDeliveriyDialogsPRODUCT_CODE: TAbmesFloatField;
    qryDeliveriyDialogsPRODUCT_NAME: TAbmesWideStringField;
    qryDeliveriyDialogsPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField;
    qryDeliveriyDialogsMEASURE_CODE: TAbmesFloatField;
    qryDeliveriyDialogsMEASURE_ABBREV: TAbmesWideStringField;
    qryDeliveriyDialogsACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryDeliveriyDialogsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryDeliveriyDialogsREGISTER_DATE: TAbmesSQLTimeStampField;
    qryDeliveriyDialogsPLAN_PERIOD_DAYS: TAbmesFloatField;
    qryDeliveriyDialogsREAL_PERIOD_DAYS: TAbmesFloatField;
    qryDeliveriyDialogsREAL_PERIOD_DEVIATION_PERCENT: TAbmesFloatField;
    qryDeliveriyDialogsPOSITION_DAYS_RSV: TAbmesFloatField;
    qryDeliveriyDialogsVENDOR_POSITION_DAYS_RSV: TAbmesFloatField;
    qryDeliveriyDialogsDECISION_DAYS_RSV: TAbmesFloatField;
    qryDeliveriyDialogsDELIVERY_DECISION_CODE: TAbmesFloatField;
    qryDeliveriyDialogsDELIVERY_DECISION_ABBREV: TAbmesWideStringField;
    qryDeliveriyDialogsPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryDeliveriyDialogsPROGNOSIS_END_DATE: TAbmesSQLTimeStampField;
    qryDeliveriyDialogsPROGNOSIS_QUANTITY: TAbmesFloatField;
    qryDeliveriyDialogsPROGNOSIS_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeliveriyDialogsIS_QUANTITY_AGREED: TAbmesFloatField;
    qryDeliveriyDialogsPROGNOSIS_SINGLE_PRICE: TAbmesFloatField;
    qryDeliveriyDialogsPROGNOSIS_CURRENCY_CODE: TAbmesFloatField;
    qryDeliveriyDialogsPROGNOSIS_CURRENCY_ABBREV: TAbmesWideStringField;
    qryDeliveriyDialogsIS_PRICE_AGREED: TAbmesFloatField;
    qryDeliveriyDialogsDELIVERY_DATE: TAbmesSQLTimeStampField;
    qryDeliveriyDialogsWORK_QUANTITY: TAbmesFloatField;
    qryDeliveriyDialogsACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeliveriyDialogsSINGLE_PRICE: TAbmesFloatField;
    qryDeliveriyDialogsTOTAL_PRICE: TAbmesFloatField;
    qryDeliveriyDialogsCURRENCY_CODE: TAbmesFloatField;
    qryDeliveriyDialogsCURRENCY_ABBREV: TAbmesWideStringField;
    qryDeliveriyDialogsVENDOR_PRIORITY_NO: TAbmesFloatField;
    qryDeliveriyDialogsVENDOR_PRIORITY_COLOR: TAbmesFloatField;
    qryDeliveriyDialogsVENDOR_PRIORITY_BK_COLOR: TAbmesFloatField;
    qryDeliveriyDialogsDOC_BRANCH_CODE: TAbmesFloatField;
    qryDeliveriyDialogsDOC_CODE: TAbmesFloatField;
    qryDeliveriyDialogsHAS_DOCUMENTATION: TAbmesFloatField;
    qryDeliveriyDialogsVENDOR_DOC_BRANCH_CODE: TAbmesFloatField;
    qryDeliveriyDialogsVENDOR_DOC_CODE: TAbmesFloatField;
    qryDeliveriyDialogsVENDOR_HAS_DOCUMENTATION: TAbmesFloatField;
    qryDeliveriyDialogsVENDOR_PRODUCT_NAME: TAbmesWideStringField;
    qryDeliveriyDialogsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryDeliveriyDialogsPRODUCT_DOC_CODE: TAbmesFloatField;
    qryDeliveriyDialogsPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qryDeliveriyDialogsDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeliveriyDialogsDCD_OBJECT_CODE: TAbmesFloatField;
    qryDeliveriyDialogsDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailDCD_OBJECT_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailSTATUS_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailASPECT_TYPE_ABBREV: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailDELIVERY_ID: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailDOC_BRANCH_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailDOC_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailHAS_DOCUMENTATION: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailIS_ACTIVATED_BY_VENDOR: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailDIALOG_EMPLOYEE_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailCOMPANY_STATUS_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailCOMPANY_STATUS_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailVENDOR_COMPANY_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailVENDOR_COMPANY_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailVENDOR_PRIORITY_NO: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailVENDOR_PRIORITY_COLOR: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailVENDOR_PRIORITY_BK_COLOR: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailVENDOR_DOC_BRANCH_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailVENDOR_DOC_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailVENDOR_HAS_DOCUMENTATION: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPRIORITY_NO: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPRIORITY_COLOR: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailHAS_MEDIATOR: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPRODUCT_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailVENDOR_PRODUCT_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailMEASURE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailMEASURE_ABBREV: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPRODUCT_DOC_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailREGISTER_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsDetailPLAN_PERIOD_DAYS: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailREAL_PERIOD_DAYS: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailREAL_PERIOD_DEVIATION_PERCENT: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPOSITION_DAYS_RSV: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailVENDOR_POSITION_DAYS_RSV: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailDECISION_DAYS_RSV: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailDELIVERY_DECISION_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailDELIVERY_DECISION_ABBREV: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_END_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailIS_QUANTITY_AGREED: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_SINGLE_PRICE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_CURRENCY_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_CURRENCY_ABBREV: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailIS_PRICE_AGREED: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_TOTAL_PRICE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailDELIVERY_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsDetailWORK_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailSINGLE_PRICE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailTOTAL_PRICE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailCURRENCY_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailCURRENCY_ABBREV: TAbmesWideStringField;
    qryGroupDeliveriesMaster: TAbmesSQLQuery;
    prvGroupDeliveriesMaster: TDataSetProvider;
    qryGroupDeliveriesMasterSTATUS_CODE: TAbmesFloatField;
    qryGroupDeliveriesMasterDELIVERY_DATE: TAbmesSQLTimeStampField;
    qryGroupDeliveriesMasterVENDOR_COMPANY_CODE: TAbmesFloatField;
    qryGroupDeliveriesMasterVENDOR_STATUS_NAME: TAbmesWideStringField;
    qryGroupDeliveriesMasterVENDOR_COMPANY_NAME: TAbmesWideStringField;
    qryGroupDeliveriesMasterDELIVERY_VENDOR_OFFICE_CODE: TAbmesFloatField;
    qryGroupDeliveriesMasterVENDOR_OFFICE_NAME: TAbmesWideStringField;
    qryGroupDeliveriesMasterIS_TRANSPORT_FROM_VENDOR: TAbmesFloatField;
    qryGroupDeliveriesMasterCUSTOMHOUSE_CODE: TAbmesFloatField;
    qryGroupDeliveriesMasterSHIPMENT_TYPE_CODE: TAbmesFloatField;
    qryGroupDeliveriesMasterTOTAL_PRICE: TAbmesFloatField;
    qryGroupDeliveriesMasterSD_TOTAL_PRICE: TAbmesFloatField;
    qryGroupDeliveriesDetail: TAbmesSQLQuery;
    prvGroupDeliveriesDetail: TDataSetProvider;
    qryGroupDeliveriesDetailSTATUS_CODE: TAbmesFloatField;
    qryGroupDeliveriesDetailDELIVERY_ID: TAbmesWideStringField;
    qryGroupDeliveriesDetailPRIORITY_NO: TAbmesFloatField;
    qryGroupDeliveriesDetailDAYS_LEFT: TAbmesFloatField;
    qryGroupDeliveriesDetailDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    qryGroupDeliveriesDetailDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qryGroupDeliveriesDetailDOC_BRANCH_CODE: TAbmesFloatField;
    qryGroupDeliveriesDetailDOC_CODE: TAbmesFloatField;
    qryGroupDeliveriesDetailHAS_DOC: TAbmesFloatField;
    qryGroupDeliveriesDetailPRODUCT_NAME: TAbmesWideStringField;
    qryGroupDeliveriesDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryGroupDeliveriesDetailPRODUCT_DOC_CODE: TAbmesFloatField;
    qryGroupDeliveriesDetailPRODUCT_HAS_DOC: TAbmesFloatField;
    qryGroupDeliveriesDetailPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField;
    qryGroupDeliveriesDetailWORK_QUANTITY: TAbmesFloatField;
    qryGroupDeliveriesDetailMEASURE_CODE: TAbmesFloatField;
    qryGroupDeliveriesDetailMEASURE_ABBREV: TAbmesWideStringField;
    qryGroupDeliveriesDetailACCOUNT_QUANTITY: TAbmesFloatField;
    qryGroupDeliveriesDetailACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryGroupDeliveriesDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryGroupDeliveriesDetailTOTAL_PRICE: TAbmesFloatField;
    qryGroupDeliveriesDetailCURRENCY_ABBREV: TAbmesWideStringField;
    qryGroupDeliveriesDetailPRODUCT_CODE: TAbmesFloatField;
    qryGroupDeliveriesDetailDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryGroupDeliveriesDetailDCD_OBJECT_CODE: TAbmesFloatField;
    qryGroupDeliveriesDetailDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qryGroupDeliveriesDetailPRIORITY_COLOR: TAbmesFloatField;
    qryGroupDeliveriesDetailPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryDeliveriesDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeliveriesDCD_OBJECT_CODE: TAbmesFloatField;
    qryDeliveriesDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qryDeliveriesDELIVERY_IDENTIFICATION: TAbmesWideStringField;
    qryDeliveriesSTATUS_CODE: TAbmesFloatField;
    qryDeliveriesVENDOR_COMPANY_CODE: TAbmesFloatField;
    qryDeliveriesVENDOR_SHORT_NAME: TAbmesWideStringField;
    qryDeliveriesDELIVERY_DATE: TAbmesSQLTimeStampField;
    qryDeliveriesDAYS_LEFT: TAbmesFloatField;
    qryDeliveriesWORK_QUANTITY: TAbmesFloatField;
    qryDeliveriesACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeliveriesPRODUCT_CODE: TAbmesFloatField;
    qryDeliveriesPRIORITY_NO: TAbmesFloatField;
    qryDeliveriesPRIORITY_COLOR: TAbmesFloatField;
    qryDeliveriesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryDeliveriesPRODUCT_NAME: TAbmesWideStringField;
    qryDeliveriesPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryDeliveriesPRODUCT_DOC_CODE: TAbmesFloatField;
    qryDeliveriesPRODUCT_HAS_DOC: TAbmesFloatField;
    qryDeliveriesPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField;
    qryDeliveriesWORK_MEASURE_ABBREV: TAbmesWideStringField;
    qryDeliveriesACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryDeliveriesDCD_PSD_STORE_CODE: TAbmesFloatField;
    qryDeliveriesTOTAL_PRICE: TAbmesFloatField;
    qryDeliveriesSINGLE_PRICE: TAbmesFloatField;
    qryDeliveriesACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qryDeliveriesCURRENCY_CODE: TAbmesFloatField;
    qryDeliveriesCURRENCY_ABBREV: TAbmesWideStringField;
    qryDeliveriesMAX_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qryDeliveriesSD_QUANTITY: TAbmesFloatField;
    qryDeliveriesSD_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeliveriesDOC_BRANCH_CODE: TAbmesFloatField;
    qryDeliveriesDOC_CODE: TAbmesFloatField;
    qryDeliveriesHAS_DOC: TAbmesFloatField;
    qryDeliveriesSINGLE_PRICE_DEV_PERCENT: TAbmesFloatField;
    qryDeliveriesACC_SINGLE_PRICE_DEV_PERCENT: TAbmesFloatField;
    qryGroupDeliveriesDetailVENDOR_PRODUCT_NAME: TAbmesWideStringField;
    qryDeliveriesVENDOR_PRODUCT_NAME: TAbmesWideStringField;
    qryGroupDeliveriesMasterVENDOR_DOC_BRANCH_CODE: TAbmesFloatField;
    qryGroupDeliveriesMasterVENDOR_DOC_CODE: TAbmesFloatField;
    qryGroupDeliveriesMasterVENDOR_HAS_DOCUMENTATION: TAbmesFloatField;
    qryDeficitCoverDecisionDP_DECISION_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionDC_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionDELIVERY_SD_QUANTITY: TAbmesFloatField;
    qryDeliverySD_QUANTITY: TAbmesFloatField;
    qryUpdateDCPSDStore: TAbmesSQLQuery;
    qryDeliveryOUR_OFFER_QUANTITY: TAbmesFloatField;
    qryDeliveryOUR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeliveryOUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    qryDeliveryOUR_OFFER_CURRENCY_CODE: TAbmesFloatField;
    qryDeliveryVENDOR_OFFER_QUANTITY: TAbmesFloatField;
    qryDeliveryVENDOR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeliveryVENDOR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    qryDeliveryVENDOR_OFFER_CURRENCY_CODE: TAbmesFloatField;
    qryDeliveryPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryDeliveryPROGNOSIS_END_DATE: TAbmesSQLTimeStampField;
    qryDeliveryOUR_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qryDeliveryV_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qryDeliveryLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qryDeliveryOUR_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryDeliveryV_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryDeliveryLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryDeliveryRECEIVE_DATE: TAbmesSQLTimeStampField;
    qryDeliveryRETURN_DATE: TAbmesSQLTimeStampField;
    qryDeliverySALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeliverySALE_OBJECT_CODE: TAbmesFloatField;
    qryDeliverySALE_BRANCH_CODE: TAbmesFloatField;
    qryDeliverySALE_NO: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_MEASURE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_ACC_TOTAL_LEASE_QTY: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailIS_LEASE_QUANTITY_AGREED: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailRECEIVE_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsDetailRETURN_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailTOTAL_LEASE_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailTOTAL_ACCOUNT_LEASE_QUANTITY: TAbmesFloatField;
    qryDeliveriyDialogsPROGNOSIS_MEASURE_CODE: TAbmesFloatField;
    qryDeliveriyDialogsPROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField;
    qryDeliveriyDialogsPROGNOSIS_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qryDeliveriyDialogsPROGNOSIS_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryDeliveriyDialogsPROGNOSIS_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryDeliveriyDialogsPROGNOSIS_TOTAL_LEASE_QUANTITY: TAbmesFloatField;
    qryDeliveriyDialogsPROGNOSIS_ACC_TOTAL_LEASE_QTY: TAbmesFloatField;
    qryDeliveriyDialogsIS_LEASE_QUANTITY_AGREED: TAbmesFloatField;
    qryDeliveriyDialogsPROGNOSIS_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryDeliveriyDialogsPROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField;
    qryDeliveriyDialogsPROGNOSIS_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qryDeliveriyDialogsACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qryDeliveriyDialogsLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryDeliveriyDialogsLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryDeliveriyDialogsLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qryDeliveriyDialogsTOTAL_LEASE_QUANTITY: TAbmesFloatField;
    qryDeliveriyDialogsTOTAL_ACCOUNT_LEASE_QUANTITY: TAbmesFloatField;
    qryDeliveriyDialogsRECEIVE_DATE: TAbmesSQLTimeStampField;
    qryDeliveriyDialogsRETURN_DATE: TAbmesSQLTimeStampField;
    qryDeliveriyDialogsPROGNOSIS_TOTAL_PRICE: TAbmesFloatField;
    qryGroupDeliveriesDetailREAL_WORK_QUANTITY: TAbmesFloatField;
    qryGroupDeliveriesDetailREAL_TOTAL_PRICE: TAbmesFloatField;
    qryDeliveryDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    qryGroupDeliveriesDetailREAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryGroupDeliveriesDetailPLAN_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryGroupDeliveriesDetailREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryGroupDeliveriesMasterGROUP_BY_RECEIVE_DATE: TAbmesFloatField;
    qryDeliveriesREAL_WORK_QUANTITY: TAbmesFloatField;
    qryDeliveriesREAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeliveriesPLAN_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryDeliveriesREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    mshLocalMacroLibrary: TJvMultiStringHolder;
    qryDeliveryTypesDESCRIPTION: TAbmesWideStringField;
    qryDeficitCoverDecisionMEASURE_ABBREV: TAbmesWideStringField;
    qryDeficitCoverDecisionACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryDeliveryASPECT_TYPE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionSTREAM_TYPE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionSTREAM_TYPE_ABBREV: TAbmesWideStringField;
    qryDeliveriyDialogsPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailASPECT_TYPE_CODE: TAbmesFloatField;
    qryDeliveryACCOUNT_MAX_BASE_SINGLE_PRICE: TAbmesFloatField;
    qryDeliveryACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qryDeliveryACC_OUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    qryDeliveryACC_VENDOR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    qryDeficitCoverDecisionBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qryDeliveryDefaults: TAbmesSQLQuery;
    prvDeliveryDefaults: TDataSetProvider;
    qryDeliveryDefaultsPARTNER_CODE: TAbmesFloatField;
    qryDeliveryDefaultsPARTNER_OFFICE_CODE: TAbmesFloatField;
    qryDeliveryDefaultsTRANSPORT_DURATION_DAYS: TAbmesFloatField;
    qryDeliveryDefaultsSHIPMENT_TYPE_CODE: TAbmesFloatField;
    qryDeliveryDefaultsIS_PARTNER_TRANSPORT: TAbmesFloatField;
    qryDeliveryDefaultsCUSTOMHOUSE_CODE: TAbmesFloatField;
    qryDeliveryDefaultsSTORE_CODE: TAbmesFloatField;
    qryDeliveryDefaultsPRICE: TAbmesFloatField;
    qryDeliveryDefaultsCURRENCY_CODE: TAbmesFloatField;
    qryDeliveryDefaultsLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    qryDeliveryDefaultsMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    qryDeliveryDefaultsRESOLVE_DURATION_DAYS: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField;
    qryDeliveryINVOICE_NO: TAbmesFloatField;
    qryDeliveryINVOICE_ABBREV: TAbmesWideStringField;
    qryDeliveryIS_PROFORM_INVOICE: TAbmesFloatField;
    qryDeliveryINVOICE_DATE: TAbmesSQLTimeStampField;
    qryDeliveryDecisionsDELIVERY_DECISION_NO: TAbmesFloatField;
    qryDeliveryDecisionsIS_ESTIMATION_BOUND: TAbmesFloatField;
    qryDeliveryDecisionsIS_REALIZATION_BOUND: TAbmesFloatField;
    qryDeliveryDecisionsALLOWS_DELIVERY_CONTRACT: TAbmesFloatField;
    qryGroupDeliveriesDetailDAMAGES_STATE_CODE: TAbmesFloatField;
    qryGroupDeliveriesDetailDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryGroupDeliveriesDetailDELIVERY_OBJECT_CODE: TAbmesFloatField;
    qryDeliveriesDAMAGES_STATE_CODE: TAbmesFloatField;
    qryDeliveriesDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeliveriesDELIVERY_OBJECT_CODE: TAbmesFloatField;
    qryGroupDeliveriesMasterDAMAGES_STATE_CODE: TAbmesFloatField;
    qryGetNewDeliveryDecisionCode: TAbmesSQLQuery;
    qryGetNewDeliveryDecisionCodeNEW_DELIVERY_DECISION_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailBASE_ROLE_CODE: TAbmesFloatField;
    qryDeliveriyDialogsBASE_ROLE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField;
    qryDeliveryFIN_ORDER_CODE: TAbmesFloatField;
    qryDeliveryFO_EXEC_DEPT_CODE: TAbmesFloatField;
    qryDeliveryFO_PRIORITY_CODE: TAbmesFloatField;
    qryDeliveryFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    qryDeliverySPEC_FIN_MODEL_CODE: TAbmesFloatField;
    qryDeliveryPRODUCT_CLASS_CODE: TAbmesFloatField;
    qryGroupDeliveriesMasterPRODUCT_CLASS_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPROGNOSIS_CURRENCY_FIXING: TAbmesFloatField;
    qryDeliveriyDialogsPROGNOSIS_CURRENCY_FIXING: TAbmesFloatField;
    qryDeliveriyDialogsDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    qryDeliveryDecisionsREQUIRES_FINISHING: TAbmesFloatField;
    qryDeliveryUNFINISHED_DCD_DP_COUNT: TAbmesFloatField;
    qryDeficitCoverDecisionPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    qryDeliveryPARTNER_CODE: TAbmesFloatField;
    qryDeliveryBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qryDeliveryPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    qryDeliveryProductInfoMARKET_PRICE: TAbmesFloatField;
    qryDeliveryProductInfoACC_MARKET_PRICE: TAbmesFloatField;
    qryDeliveryProductInfoMARKET_PRICE_CURRENCY_CODE: TAbmesFloatField;
    qryDeliveryProductInfoDELIVERY_LEASE_PRICE: TAbmesFloatField;
    qryDeliveryProductInfoACC_DELIVERY_LEASE_PRICE: TAbmesFloatField;
    qryDeliveryProductInfoDELIVERY_LEASE_CURRENCY_CODE: TAbmesFloatField;
    qryDeliveryProductInfoDELIVERY_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryDeliveryProductInfoSPEC_STATE_CODE: TAbmesFloatField;
    qryDeliveryProductInfoPRODUCT_PRIORITY_NO: TAbmesFloatField;
    qryDeliveryProductInfoPRODUCT_PRIORITY_COLOR: TAbmesFloatField;
    qryDeliveryProductInfoPRODUCT_PRIORITY_BK_COLOR: TAbmesFloatField;
    qryDeliveryProductInfoPRP_DOC_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryProductInfoPRP_DOC_CODE: TAbmesFloatField;
    qryDeliveryProductInfoPRP_HAS_DOC: TAbmesFloatField;
    qryDeliveriesTOTAL_PRICE_BC: TAbmesFloatField;
    qryDeliveryRESOLVE_DURATION_DAYS: TAbmesFloatField;
    qryDeliveryFO_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryFO_CLOSE_REQUESTED: TAbmesFloatField;
    qryDeliveriesHAS_FIN_ORDER: TAbmesFloatField;
    qryDeliveryFO_STATUS_CODE: TAbmesFloatField;
    qryDeliverySALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySaleID: TAbmesSQLQuery;
    qrySaleIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    qrySaleIDSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    prvSaleID: TDataSetProvider;
    qrySaleIDREQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySaleIDREQUEST_NO: TAbmesFloatField;
    qryDeliveryREQUEST_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryREQUEST_NO: TAbmesFloatField;
    qryDeficitCoverDecisionP_PRODUCT_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionP_DEFICIT_COVER_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionP_WORK_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionP_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionP_PSD_STORE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionP_LEASE_DATE_UNIT_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionP_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionP_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionP_RETURN_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionV_VENDOR_COMPANY_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionV_START_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionV_REGISTER_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionV_PLAN_POSITION_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionV_REAL_POSITION_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionV_PLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionV_REAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    qryDCDModes: TAbmesSQLQuery;
    prvDCDModes: TDataSetProvider;
    qryDCDModesDCD_MODE_CODE: TAbmesFloatField;
    qryDCDModesDCD_MODE_NO: TAbmesFloatField;
    qryDCDModesDCD_MODE_NAME: TAbmesWideStringField;
    qryDCDModesDCD_MODE_ABBREV: TAbmesWideStringField;
    qryDeficitCoverDecisionDCD_MODE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionV_MEDIATOR_COMPANY_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionPRODUCT_CLASS_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionPLAN_DECISION_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsMasterDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterDCD_OBJECT_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterDCD_IDENTIFICATION: TAbmesWideStringField;
    qryDeficitCoverDecisionsMasterSTATUS_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterDCD_BRANCH_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterDCD_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterP_PRODUCT_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterPRODUCT_NO: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterPRODUCT_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionsMasterPRODUCT_COMPANY_NAMES: TAbmesWideStringField;
    qryDeficitCoverDecisionsMasterPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterPRODUCT_ORIGIN_ABBREV_AND_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionsMasterASPECT_TYPE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterASPECT_TYPE_ABBREV: TAbmesWideStringField;
    qryDeficitCoverDecisionsMasterPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterP_DEFICIT_COVER_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsMasterP_WORK_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterWORK_MEASURE_ABBREV: TAbmesWideStringField;
    qryDeficitCoverDecisionsMasterP_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryDeficitCoverDecisionsMasterPLAN_DECISION_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsMasterIS_DONE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterIS_CANCELED: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterVPD_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterVPD_EMPLOYEE_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionsMasterCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterCREATE_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsMasterCREATE_TIME: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsMasterCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterCHANGE_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsMasterCHANGE_TIME: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsMasterSTORE_IDENTIFIER: TAbmesWideStringField;
    qryDeficitCoverDecisionsMasterTOTAL_WORK_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterREMAINING_WORK_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterREMAINING_REQUESTED_WORK_QTY: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterREMAINING_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterREMAINING_REQUESTED_ACC_QTY: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterIS_DCD_OVERHEADED: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterP_PSD_STORE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterDOC_BRANCH_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterDOC_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterDCD_HAS_DOCUMENTATION: TAbmesFloatField;
    qryDeliveryPRODUCT_CODE: TAbmesFloatField;
    qryDeliveryPSD_STORE_CODE: TAbmesFloatField;
    qryDeliveryDEFICIT_COVER_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsMasterCOMPANY_STATUS_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionsMasterCOMPANY_NO: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterCOMPANY_SHORT_NAME: TAbmesWideStringField;
    qryDeficitCoverDecisionsMasterDELIVERY_PROJECTS_COUNT: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterV_START_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsMasterTOTAL_DELIVERY_PROJECTS_PRICE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterTOTAL_DELIVERY_CONTRACTS_PRICE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterCOMPANY_BASE_ROLE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterCOMPANY_STATUS_CODE: TAbmesFloatField;
    qryDeliveryFO_PARTNER_CODE: TAbmesFloatField;
    qryDeliveryMEASURE_CODE: TAbmesFloatField;
    qryDeliveryACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailPRODUCT_CODE: TAbmesFloatField;
    qryGetNewDCDCodeNEW_DCD_CODE: TAbmesFloatField;
    qryCanAnnulDeliveryCAN_ANNUL_DELIVERY: TAbmesFloatField;
    qryCanAnnulRPDCAN_ANNUL_RPD: TAbmesFloatField;
    qryCanCloseRPDCAN_CLOSE_RPD: TAbmesFloatField;
    qryGetNewDeliveryProjectCodeNEW_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterCOMPANY_DOC_BRANCH_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterCOMPANY_DOC_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterCOMPANY_HAS_DOC_ITEMS: TAbmesFloatField;
    qryDeficitCoverDecisionDCD_STATUS_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailFO_STATUS_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailFO_CLOSE_REQUESTED: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailFINISH_DATE: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsDetailFINISH_TIME: TAbmesSQLTimeStampField;
    qryDeficitCoverDecisionsDetailFIN_ORDER_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailINVOICE_NO: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailINVOICE_ABBREV: TAbmesWideStringField;
    qryDeficitCoverDecisionsDetailIS_PROFORM_INVOICE: TAbmesFloatField;
    qryDeficitCoverDecisionsDetailINVOICE_DATE: TAbmesSQLTimeStampField;
    qryUpdateDeliveryContractInvoiceData: TAbmesSQLQuery;
    qryMultiDecisionData: TAbmesSQLQuery;
    prvMultiDecisionData: TDataSetProvider;
    qryMultiDecisionDataREAL_DECISION_DATE: TAbmesSQLTimeStampField;
    qryMultiDecisionDataDELIVERY_DECISION_CODE: TAbmesFloatField;
    qryMultiDecisionDataDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecision: TAbmesClientDataSet;
    cdsDeliveryMultiDecisionVENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionSTART_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionREGISTER_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionPLAN_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionREAL_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionPLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionREAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionREAL_DECISION_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionMAX_BASE_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveryMultiDecisionDELIVERY_DECISION_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionDELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionWORK_QUANTITY: TAbmesFloatField;
    cdsDeliveryMultiDecisionACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDeliveryMultiDecisionCURRENCY_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionTOTAL_PRICE: TAbmesFloatField;
    cdsDeliveryMultiDecisionSINGLE_PRICE: TAbmesFloatField;
    cdsDeliveryMultiDecisionDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionDIALOG_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionDELIVERY_VENDOR_COMPANY_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionDELIVERY_VENDOR_OFFICE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionSHIPMENT_DAYS: TAbmesFloatField;
    cdsDeliveryMultiDecisionCUSTOMHOUSE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionSHIPMENT_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionPRIORITY_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionIS_TRANSPORT_FROM_VENDOR: TAbmesFloatField;
    cdsDeliveryMultiDecisionDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionDCD_OBJECT_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionDOC_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsDeliveryMultiDecisionDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionDELIVERY_OBJECT_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionDELIVERY_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionDELIVERY_PROJECT_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionDOC_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionHAS_DOC: TAbmesFloatField;
    cdsDeliveryMultiDecisionIS_ACTIVATED_BY_VENDOR: TAbmesFloatField;
    cdsDeliveryMultiDecisionFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionFINISH_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionFINISH_TIME: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionANNUL_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionANNUL_TIME: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionDCD_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionDCD_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionSD_QUANTITY: TAbmesFloatField;
    cdsDeliveryMultiDecisionOUR_OFFER_QUANTITY: TAbmesFloatField;
    cdsDeliveryMultiDecisionOUR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDeliveryMultiDecisionOUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveryMultiDecisionOUR_OFFER_CURRENCY_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionVENDOR_OFFER_QUANTITY: TAbmesFloatField;
    cdsDeliveryMultiDecisionVENDOR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsDeliveryMultiDecisionVENDOR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveryMultiDecisionVENDOR_OFFER_CURRENCY_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionPROGNOSIS_END_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionOUR_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDeliveryMultiDecisionV_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDeliveryMultiDecisionLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    cdsDeliveryMultiDecisionOUR_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionV_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionLEASE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionRECEIVE_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionRETURN_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionSALE_OBJECT_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionSALE_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionSALE_NO: TAbmesFloatField;
    cdsDeliveryMultiDecisionDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionASPECT_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionACCOUNT_MAX_BASE_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveryMultiDecisionACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveryMultiDecisionACC_OUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveryMultiDecisionACC_VENDOR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    cdsDeliveryMultiDecisionINVOICE_NO: TAbmesFloatField;
    cdsDeliveryMultiDecisionINVOICE_ABBREV: TAbmesWideStringField;
    cdsDeliveryMultiDecisionIS_PROFORM_INVOICE: TAbmesFloatField;
    cdsDeliveryMultiDecisionINVOICE_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionFIN_ORDER_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionFO_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionFO_EXEC_DEPT_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionFO_PRIORITY_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionFO_PARTNER_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionFO_STATUS_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionFO_CLOSE_REQUESTED: TAbmesFloatField;
    cdsDeliveryMultiDecisionPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionUNFINISHED_DCD_DP_COUNT: TAbmesFloatField;
    cdsDeliveryMultiDecisionPARTNER_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionBORDER_REL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionRESOLVE_DURATION_DAYS: TAbmesFloatField;
    cdsDeliveryMultiDecisionSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionREQUEST_NO: TAbmesFloatField;
    cdsDeliveryMultiDecisionPRODUCT_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionPSD_STORE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionDEFICIT_COVER_DATE: TAbmesSQLTimeStampField;
    cdsDeliveryMultiDecisionMEASURE_CODE: TAbmesFloatField;
    cdsDeliveryMultiDecisionACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryDCDActiveDeliveryProjects: TAbmesSQLQuery;
    qryDCDActiveDeliveryProjectsDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDCDActiveDeliveryProjectsDCD_OBJECT_CODE: TAbmesFloatField;
    qryDCDActiveDeliveryProjectsDELIVERY_PROJECT_CODE: TAbmesFloatField;
    prvDCDActiveDeliveryProjects: TDataSetProvider;
    qryMultiDecisionDataDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMultiDecisionDataDELIVERY_OBJECT_CODE: TAbmesFloatField;
    qryMultiDecisionDataDELIVERY_TYPE_CODE: TAbmesFloatField;
    qryMultiDecisionDataPRIORITY_CODE: TAbmesFloatField;
    qryMultiDecisionDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMultiDecisionDataDCD_OBJECT_CODE: TAbmesFloatField;
    qryMultiDecisionDataFO_BRANCH_CODE: TAbmesFloatField;
    qryMultiDecisionDataFO_EXEC_DEPT_CODE: TAbmesFloatField;
    qryMultiDecisionDataFO_PRIORITY_CODE: TAbmesFloatField;
    qryMultiDecisionDataFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    qryMultiDecisionDataFO_PARTNER_CODE: TAbmesFloatField;
    qryMultiDecisionDataSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionsMasterV_VENDOR_COMPANY_CODE: TAbmesFloatField;
    qryDCDActiveDeliveryProjectsDELIVERY_DATE: TAbmesSQLTimeStampField;
    qryDCDActiveDeliveryProjectsREAL_DECISION_DATE: TAbmesSQLTimeStampField;
    qryDCDActiveDeliveryProjectsDELIVERY_DECISION_CODE: TAbmesFloatField;
    qryDCDActiveDeliveryProjectsDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    qryDCDActiveDeliveryProjectsDELIVERY_ID: TAbmesWideStringField;
    qryDCDForMultiDeliveryProjects: TAbmesSQLQuery;
    qryDCDForMultiDeliveryProjectsDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDCDForMultiDeliveryProjectsDCD_OBJECT_CODE: TAbmesFloatField;
    qryDCDForMultiDeliveryProjectsDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qryDCDForMultiDeliveryProjectsV_VENDOR_COMPANY_CODE: TAbmesFloatField;
    qryDCDForMultiDeliveryProjectsVEDOR_COMPANY_COUNTRY: TAbmesWideStringField;
    prvDCDForMultiDeliveryProjects: TDataSetProvider;
    qryDCDForMultiDeliveryProjectsBORDER_REL_TYPE_CODE: TAbmesFloatField;
    qryDCDForMultiDeliveryProjectsOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    qryGroupDeliveriesMasterMIN_TRANSPORT_MEASURE_CODE: TAbmesFloatField;
    qryGroupDeliveriesMasterMAX_TRANSPORT_MEASURE_CODE: TAbmesFloatField;
    qryGroupDeliveriesMasterTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField;
    qryGroupDeliveriesMasterPLAN_TRANSPORT_QUANTITY: TAbmesFloatField;
    qryGroupDeliveriesMasterOTCH_TRANSPORT_QUANTITY: TAbmesFloatField;
    qryGroupDeliveriesMasterMIN_DAYS_LEFT: TAbmesFloatField;
    qryGroupDeliveriesDetailTRANSPORT_MEASURE_ABBREV: TAbmesWideStringField;
    qryGroupDeliveriesDetailTRANSPORT_MEASURE_COEF: TAbmesFloatField;
    qryGroupDeliveriesDetailRECEIVE_DATE: TAbmesSQLTimeStampField;
    qryGroupDeliveriesDetailRECEIVE_DATE_RSV: TAbmesFloatField;
    qryGroupDeliveriesDetailRETURN_DATE: TAbmesSQLTimeStampField;
    qryGroupDeliveriesDetailRETURN_DATE_RSV: TAbmesFloatField;
    qryGroupDeliveriesDetailIS_PROFORM_INVOICE: TAbmesFloatField;
    qryDeliveriesRECEIVE_DATE: TAbmesSQLTimeStampField;
    qryDeliveriesRETURN_DATE: TAbmesSQLTimeStampField;
    qryDeliveriesRECEIVE_DATE_RSV: TAbmesFloatField;
    qryDeliveriesRETURN_DATE_RSV: TAbmesFloatField;
    qryDeliveriesPLAN_LEASE_DATEY_UNIT_QTY: TAbmesFloatField;
    qryDeliveriesREAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qryGroupDeliveriesDetailPLAN_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qryGroupDeliveriesDetailREAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qryDeliveriesREAL_SINGLE_PRICE: TAbmesFloatField;
    qryDeliveriesREAL_ACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qryDeliveriesREAL_TOTAL_PRICE: TAbmesFloatField;
    qryDeliveriesINVOICE_NO: TAbmesFloatField;
    qryDeliveriesINVOICE_DATE: TAbmesSQLTimeStampField;
    qryDeliveriesREAL_TOTAL_PRICE_BC: TAbmesFloatField;
    qryMultiDecisionDataFO_DCD_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryBUDGET_ORDER_CODE: TAbmesFloatField;
    qryDeliveryBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    qryDeliveryBOI_ORDER_CODE: TAbmesFloatField;
    qryDeliveryBOI_ORDER_IDENTIFIER: TAbmesWideStringField;
    procedure prvDeficitCoverDecisionBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvDeliveryBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvDeliveryAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvDeficitCoverDecisionAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure qryDeliveriesBeforeOpen(DataSet: TDataSet);
    procedure qryDeficitCoverDecisionsMasterBeforeOpen(DataSet: TDataSet);
    procedure prvDeliveryBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvDeliveryAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryDeliveryAfterProviderStartTransaction(DataSet: TDataSet);
    procedure prvDeliveryGroupBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvDeliveryGroupAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryDeliveryGroupAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure prvDeficitCoverDecisionBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvDeficitCoverDecisionAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryDeficitCoverDecisionAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure qryDeficitCoverDecisionsMasterAfterClose(DataSet: TDataSet);
    procedure qryDeliveriyDialogsBeforeOpen(DataSet: TDataSet);
    procedure qryDeliveriyDialogsAfterClose(DataSet: TDataSet);
    procedure qryGroupDeliveriesMasterBeforeOpen(DataSet: TDataSet);
    procedure qryGroupDeliveriesMasterAfterClose(DataSet: TDataSet);
    procedure qryDeliveriesAfterClose(DataSet: TDataSet);
    procedure qryDeficitCoverDecisionsDetailCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryDeliveriyDialogsCalcFields(DataSet: TDataSet);
    procedure qryGroupDeliveriesDetailBeforeOpen(DataSet: TDataSet);
    procedure qryGroupDeliveriesDetailAfterClose(DataSet: TDataSet);
    procedure prvDeficitCoverDecisionsDetailAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure prvDeficitCoverDecisionsDetailBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvMultiDecisionDataBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsDeliveryMultiDecisionReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
  private
    FDocsDelta: Variant;
    FDeliveryMultiDecisionErrorMessage: string;
    procedure SetPlannedStoreDealParams(Query: TAbmesSQLQuery;
      ADataSet: TCustomClientDataSet);
    procedure CreateDeliveryPlannedStoreDeal(ADataSet: TCustomClientDataSet);
    procedure UpdateDeliveryPlannedStoreDeal(ADataSet: TCustomClientDataSet);

    procedure ClosePlannedStoreDeal(ADataSet: TCustomClientDataSet;
      ProcessObjectBranchCode, ProcessObjectCode: Integer);
    procedure AnnulPlannedStoreDeal(ADataSet: TCustomClientDataSet;
      ProcessObjectBranchCode, ProcessObjectCode: Integer);

    procedure SetDCDPlannedStoreDealParams(Query: TAbmesSQLQuery;
      ADataSet: TDataSet);
    procedure CreateDCDPlannedStoreDeal(ADataSet: TDataSet; AQuantity: Real = -1; AAccountQuantity: Real = -1);
    procedure UpdateDCDPlannedStoreDeal(ADataSet: TCustomClientDataSet);
    procedure UpdateDCDPlannedStoreDealQuantity(
      ADataSet: TCustomClientDataSet; AQuantity: Real);
    procedure SynchronizeDCDPlannedStoreDeal(ADataSet: TCustomClientDataSet);
    procedure DeleteDCDPSD(ADataSet: TCustomClientDataSet);
    function ExistsPSD(BndProcessObjectBranchCode, BndProcessObjectCode: Integer): Boolean;
  protected
    function RPDCanAnnul(DCDObjectBranchCode,
      DCDObjectCode: Integer): Boolean;
    function RPDCanClose(DCDObjectBranchCode,
      DCDObjectCode: Integer): Boolean;
    function DeliveryCanAnnul(DeliveryObjectBranchCode,
      DeliveryObjectCode: Integer): Boolean;
    function GetNewDeliveryProjectCode(DCDObjectBranchCode,
      DCDObjectCode: Integer): Integer;
    function GetNewDeficitCoverDecisionCode(BranchCode: Integer): Integer;
    function GetNewDeliveryDecisionCode: Integer;
  end;

type
  IdmDeliveriesProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmDeliveriesProxy = class(TDBPooledDataModuleProxy, IdmDeliveriesProxy)
  private
    class var FSingleton: TdmDeliveriesProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmDeliveries>;
  strict protected
    property LockedInstance: ISmartLock<TdmDeliveries> read GetLockedInstance;
  public
    class property Singleton: TdmDeliveriesProxy read FSingleton;

    function RPDCanAnnul(DCDObjectBranchCode,
      DCDObjectCode: Integer): Boolean;
    function RPDCanClose(DCDObjectBranchCode,
      DCDObjectCode: Integer): Boolean;
    function DeliveryCanAnnul(DeliveryObjectBranchCode,
      DeliveryObjectCode: Integer): Boolean;
    function GetNewDeliveryProjectCode(DCDObjectBranchCode,
      DCDObjectCode: Integer): Integer;
    function GetNewDeficitCoverDecisionCode(BranchCode: Integer): Integer;
    function GetNewDeliveryDecisionCode: Integer;
  end;

implementation

uses
  Variants, uUtils, uProcesses, uDealTypes, uDeliveryDealTypes,
  uProcessObjectIdentifierFormats, uTreeNodes, uServerMessageIds, uSvrUtils,
  uAspectTypes, uProducts, uDBPooledDataModuleHelper, uDCDModes,
  uEnumeratorUtils;

{$R *.DFM}

{ TdmDeliveriesProxy }

function TdmDeliveriesProxy.GetLockedInstance: ISmartLock<TdmDeliveries>;
begin
  Result:= ISmartLock<TdmDeliveries>(inherited LockedInstance);
end;

function TdmDeliveriesProxy.DeliveryCanAnnul(DeliveryObjectBranchCode,
  DeliveryObjectCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.DeliveryCanAnnul(DeliveryObjectBranchCode, DeliveryObjectCode);
end;

function TdmDeliveriesProxy.GetNewDeficitCoverDecisionCode(
  BranchCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewDeficitCoverDecisionCode(BranchCode);
end;

function TdmDeliveriesProxy.GetNewDeliveryProjectCode(DCDObjectBranchCode,
  DCDObjectCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewDeliveryProjectCode(DCDObjectBranchCode, DCDObjectCode);
end;

function TdmDeliveriesProxy.RPDCanAnnul(DCDObjectBranchCode,
  DCDObjectCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.RPDCanAnnul(DCDObjectBranchCode, DCDObjectCode);
end;

function TdmDeliveriesProxy.RPDCanClose(DCDObjectBranchCode,
  DCDObjectCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.RPDCanClose(DCDObjectBranchCode, DCDObjectCode);
end;

function TdmDeliveriesProxy.GetNewDeliveryDecisionCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewDeliveryDecisionCode;
end;

{ TdmDeliveries }

function TdmDeliveries.GetNewDeliveryProjectCode(DCDObjectBranchCode, DCDObjectCode: Integer): Integer;
begin
  qryGetNewDeliveryProjectCode.ParamByName('DCD_OBJECT_BRANCH_CODE').AsInteger:= DCDObjectBranchCode;
  qryGetNewDeliveryProjectCode.ParamByName('DCD_OBJECT_CODE').AsInteger:= DCDObjectCode;
  Result:=
    qryGetNewDeliveryProjectCode.TempOpen/
      qryGetNewDeliveryProjectCodeNEW_CODE.AsIntegerFunc;
end;

procedure TdmDeliveries.qryDeliveriyDialogsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnprepareFilteredProducts(DataSet);
end;

procedure TdmDeliveries.qryDeliveriyDialogsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredProducts(DataSet);
end;

procedure TdmDeliveries.qryDeliveriyDialogsCalcFields(DataSet: TDataSet);

  function LeaseDateUnitQuantity: Variant;
  begin
    if (qryDeliveriyDialogsDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease) then
      Result:= qryDeliveriyDialogsPROGNOSIS_LEASE_DATE_UNIT_QTY.AsVariant
    else
      Result:= 1;
  end;

begin
  inherited;
  qryDeliveriyDialogsPROGNOSIS_TOTAL_PRICE.AsVariant:=
    qryDeliveriyDialogsPROGNOSIS_SINGLE_PRICE.AsVariant *
    qryDeliveriyDialogsPROGNOSIS_CURRENCY_FIXING.AsVariant *
    qryDeliveriyDialogsPROGNOSIS_QUANTITY.AsVariant *
    LeaseDateUnitQuantity;
end;

procedure TdmDeliveries.prvDeficitCoverDecisionBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  SetCreateAndChangeFieldsOnUpdateRecord(DeltaDS, UpdateKind, LoginContext);

  if (UpdateKind = ukInsert) then
    begin
      DeltaDS.FieldByName('DCD_CODE').NewValue:= GetNewDeficitCoverDecisionCode(DeltaDS.FieldByName('DCD_BRANCH_CODE').AsInteger);
      SvrCommon.SetProcessObjectKey(DeltaDS, 'DCD_OBJECT_BRANCH_CODE','DCD_OBJECT_CODE', pocDeficitCoverDecision);
    end;
end;

procedure TdmDeliveries.prvDeficitCoverDecisionsDetailAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
  DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;
  Assert(UpdateKind = ukModify);
  if (VarToInt(GetFieldValue(DeltaDS.FieldByName('FO_CLOSE_REQUESTED'))) = 1) then
    SvrFinance.CloseFinOrder(DeltaDS.FieldByName('FIN_ORDER_CODE').OldValue);
end;

procedure TdmDeliveries.prvDeficitCoverDecisionsDetailBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
  DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  Assert(UpdateKind = ukModify);

  if not VarIsEmpty(DeltaDS.FieldByName('INVOICE_NO').NewValue) or
     not VarIsEmpty(DeltaDS.FieldByName('INVOICE_ABBREV').NewValue) or
     not VarIsEmpty(DeltaDS.FieldByName('IS_PROFORM_INVOICE').NewValue) or
     not VarIsEmpty(DeltaDS.FieldByName('INVOICE_DATE').NewValue) then
    begin
      SetParams(qryUpdateDeliveryContractInvoiceData.Params, DeltaDS);
      qryUpdateDeliveryContractInvoiceData.ExecSQL;
      Applied:= True;
    end;
end;

procedure TdmDeliveries.prvDeliveryBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;

  SetCreateAndChangeFieldsOnUpdateRecord(DeltaDS, UpdateKind, LoginContext);

  if (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('DELIVERY_PROJECT_CODE').NewValue:=
      GetNewDeliveryProjectCode(
        DeltaDS.FieldByName('DCD_OBJECT_BRANCH_CODE').AsInteger,
        DeltaDS.FieldByName('DCD_OBJECT_CODE').AsInteger);

  Applied:= not RecordChanged(DeltaDS);
end;

procedure TdmDeliveries.prvDeliveryAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
var
  IsConfirmed: Boolean;
  cDate, cTime: TDateTime;
  MyUpdateKind: TUpdateKind;
  ProcessCode: Integer;
  DocumentIdentifier: Variant;
  DocumentDate: Variant;
begin
  inherited;

  IsConfirmed:= not VarIsNullOrEmpty(GetFieldValue(DeltaDS.FieldByName('DELIVERY_OBJECT_BRANCH_CODE')));

  if IsConfirmed then
    begin
      cDate:= ContextDate;
      cTime:= ContextTime;

      MyUpdateKind:= UpdateKind;
      // ако досега сме имали само проект трябва да се insert-ne договор
      if (MyUpdateKind = ukModify) and
         (not VarIsNullOrEmpty(DeltaDS.FieldByName('DELIVERY_OBJECT_BRANCH_CODE').NewValue)) then
        MyUpdateKind:= ukInsert;

      case MyUpdateKind of
        ukModify:
          begin
            // update на DELIVERY_CONTRACTS
            with qryModifyDeliveryContracts do
              begin
                ClearParams(Params);

                ParamByName('CHANGE_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
                ParamByName('CHANGE_DATE').AsDateTime:= cDate;
                ParamByName('CHANGE_TIME').AsDateTime:= cTime;

                SetParams(Params, DeltaDS, True);

                ExecSQL;

                if (RowsAffected <> 1) then
                  raise Exception.Create(SExecSQLErrorId);
              end;

            // update на планирано постъпление от доставката
            if (GetFieldValue(DeltaDS.FieldByName('ASPECT_TYPE_CODE')) = AspectTypeToInt(atRealization)) then
              UpdateDeliveryPlannedStoreDeal(DeltaDS);
          end;

        ukInsert:
          begin
            with qryInsertDeliveryContracts do
              begin
                ClearParams(Params);

                ParamByName('CREATE_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
                ParamByName('CREATE_DATE').AsDateTime:= cDate;
                ParamByName('CREATE_TIME').AsDateTime:= cTime;
                ParamByName('CHANGE_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
                ParamByName('CHANGE_DATE').AsDateTime:= cDate;
                ParamByName('CHANGE_TIME').AsDateTime:= cTime;

                SvrCommon.SetProcessObjectKey(DeltaDS,
                  'DELIVERY_OBJECT_BRANCH_CODE', 'DELIVERY_OBJECT_CODE',
                   pocDeliveryContract);

                SetParams(Params, DeltaDS, True);

                ExecSQL;

                SvrCommon.UpdateProcessObjectIdentifier(
                  GetFieldValue(DeltaDS.FieldByName('DELIVERY_OBJECT_BRANCH_CODE')),
                  GetFieldValue(DeltaDS.FieldByName('DELIVERY_OBJECT_CODE')),
                  Format(poifDeliveryContract, [
                    SvrDeptsTree.GetNodeNo(VarToInt(GetFieldValue(DeltaDS.FieldByName('DCD_BRANCH_CODE')))),
                    VarToInt(GetFieldValue(DeltaDS.FieldByName('DCD_CODE'))),
                    VarToInt(GetFieldValue(DeltaDS.FieldByName('DELIVERY_PROJECT_CODE')))
                  ])
                );

                if (RowsAffected <> 1) then
                  raise Exception.Create(SExecSQLErrorId);
              end;

            // създаване на планирано постъпление в склад
            if (GetFieldValue(DeltaDS.FieldByName('ASPECT_TYPE_CODE')) = AspectTypeToInt(atRealization)) then
              CreateDeliveryPlannedStoreDeal(DeltaDS);
          end;
      end;

      // синхронизиране на количество от план. пост. от РПД
      if (GetFieldValue(DeltaDS.FieldByName('ASPECT_TYPE_CODE')) = AspectTypeToInt(atRealization)) then
        SynchronizeDCDPlannedStoreDeal(DeltaDS);

      if ( (UpdateKind = ukInsert) or
           ( (UpdateKind = ukModify) and
             VarIsNullOrEmpty(DeltaDS.FieldByName('FIN_ORDER_CODE').OldValue) ) ) and
         not VarIsNullOrEmpty(DeltaDS.FieldByName('FO_EXEC_DEPT_CODE').NewValue) then
        begin
          if (IntToProductClass(GetFieldValue(DeltaDS.FieldByName('PRODUCT_CLASS_CODE'))) = pcFinancial) then
            ProcessCode:= pFinDstFOb
          else
            ProcessCode:= pFinDstUOb;

          if (GetFieldValue(DeltaDS.FieldByName('IS_PROFORM_INVOICE')) = 0) then
            begin
              DocumentIdentifier:= GetFieldValue(DeltaDS.FieldByName('INVOICE_NO'));
              DocumentDate:= GetFieldValue(DeltaDS.FieldByName('INVOICE_DATE'));
            end
          else
            begin
              DocumentIdentifier:= Null;
              DocumentDate:= Null;
            end;

          DeltaDS.FieldByName('FIN_ORDER_CODE').NewValue:=
            SvrFinance.NewFinOrder(
              GetFieldValue(DeltaDS.FieldByName('FO_BRANCH_CODE')),
              GetFieldValue(DeltaDS.FieldByName('FO_EXEC_DEPT_CODE')),
              GetFieldValue(DeltaDS.FieldByName('FO_PRIORITY_CODE')),
              ProcessCode,
              GetFieldValue(DeltaDS.FieldByName('DELIVERY_OBJECT_BRANCH_CODE')),
              GetFieldValue(DeltaDS.FieldByName('DELIVERY_OBJECT_CODE')),
              GetFieldValue(DeltaDS.FieldByName('FO_PARTNER_CODE')),
              ioOut,
              IfThen(VarIsNullOrEmpty(GetFieldValue(DeltaDS.FieldByName('INVOICE_DATE'))),
                     GetFieldValue(DeltaDS.FieldByName('DELIVERY_DATE')),
                     GetFieldValue(DeltaDS.FieldByName('INVOICE_DATE'))
              ),
              0,
              GetFieldValue(DeltaDS.FieldByName('CURRENCY_CODE')),
              GetFieldValue(DeltaDS.FieldByName('TOTAL_PRICE')),
              GetFieldValue(DeltaDS.FieldByName('FO_WORK_FINANCIAL_PRODUCT_CODE')),
              DocumentIdentifier,
              DocumentDate,
              GetFieldValue(DeltaDS.FieldByName('SPEC_FIN_MODEL_CODE'))
            );
        end;

      if (UpdateKind = ukModify) and
         (DeltaDS.FieldByName('FO_CLOSE_REQUESTED').NewValue = 1) then
        SvrFinance.CloseFinOrder(DeltaDS.FieldByName('FIN_ORDER_CODE').OldValue);
    end;  { if IsConfirmed }
end;

procedure TdmDeliveries.SetPlannedStoreDealParams(Query: TAbmesSQLQuery; ADataSet: TCustomClientDataSet);
begin
  with Query do
    begin
      ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').Value:= GetFieldValue(ADataSet.FieldByName('DELIVERY_OBJECT_BRANCH_CODE'));
      ParamByName('BND_PROCESS_OBJECT_CODE').Value:= GetFieldValue(ADataSet.FieldByName('DELIVERY_OBJECT_CODE'));
      ParamByName('PRIORITY_CODE').Value:= GetFieldValue(ADataSet.FieldByName('PRIORITY_CODE'));
      ParamByName('STORE_CODE').Value:= GetFieldValue(ADataSet.FieldByName('PSD_STORE_CODE'));
      ParamByName('STORE_DEAL_BEGIN_DATE').Value:= GetFieldValue(ADataSet.FieldByName('DELIVERY_DATE'));
      ParamByName('STORE_DEAL_END_DATE').Value:= GetFieldValue(ADataSet.FieldByName('DELIVERY_DATE'));
      ParamByName('PRODUCT_CODE').Value:= GetFieldValue(ADataSet.FieldByName('PRODUCT_CODE'));
      ParamByName('WORK_QUANTITY').Value:= GetFieldValue(ADataSet.FieldByName('WORK_QUANTITY'));
      ParamByName('ACCOUNT_QUANTITY').Value:= GetFieldValue(ADataSet.FieldByName('ACCOUNT_QUANTITY'));
      ParamByName('CHANGE_EMPLOYEE_CODE').Value:= GetFieldValue(ADataSet.FieldByName('CHANGE_EMPLOYEE_CODE'));
      ParamByName('CHANGE_DATE').Value:= GetFieldValue(ADataSet.FieldByName('CHANGE_DATE'));
      ParamByName('CHANGE_TIME').Value:= GetFieldValue(ADataSet.FieldByName('CHANGE_TIME'));
      ParamByName('ANNUL_EMPLOYEE_CODE').Value:= GetFieldValue(ADataSet.FieldByName('ANNUL_EMPLOYEE_CODE'));
      ParamByName('ANNUL_DATE').Value:= GetFieldValue(ADataSet.FieldByName('ANNUL_DATE'));
      ParamByName('ANNUL_TIME').Value:= GetFieldValue(ADataSet.FieldByName('ANNUL_TIME'));
      ParamByName('FINISH_EMPLOYEE_CODE').Value:= GetFieldValue(ADataSet.FieldByName('FINISH_EMPLOYEE_CODE'));
      ParamByName('FINISH_DATE').Value:= GetFieldValue(ADataSet.FieldByName('FINISH_DATE'));
      ParamByName('FINISH_TIME').Value:= GetFieldValue(ADataSet.FieldByName('FINISH_TIME'));
    end;
end;

procedure TdmDeliveries.CreateDeliveryPlannedStoreDeal(ADataSet: TCustomClientDataSet);
begin
  SetPlannedStoreDealParams(qryInsertPlannedStoreDeal, ADataSet);
  with qryInsertPlannedStoreDeal do
    begin
      ParamByName('PLANNED_STORE_DEAL_BRANCH_CODE').Value:= GetFieldValue(ADataSet.FieldByName('DCD_BRANCH_CODE'));
      ParamByName('PLANNED_STORE_DEAL_CODE').Value:= SvrStore.GetNewPlannedStoreDealCode;

      if (VarToInt(GetFieldValue(ADataSet.FieldByName('DELIVERY_DEAL_TYPE_CODE'))) in ddtLease) then
        begin
          ParamByName('STORE_DEAL_BEGIN_DATE').Value:= GetFieldValue(ADataSet.FieldByName('RECEIVE_DATE'));
          ParamByName('STORE_DEAL_END_DATE').Value:= GetFieldValue(ADataSet.FieldByName('RECEIVE_DATE'));
        end;

      ParamByName('PLANNED_STORE_DEAL_TYPE_CODE').Value:= psdtNormal;
      ParamByName('IS_PLANNED_MANUALLY').Value:= 0;
      ParamByName('BND_PROCESS_CODE').Value:= pPD;
      ParamByName('STORE_DEAL_TYPE_CODE').Value:= dtStoreIn;

      // razchitame che CHANGE_* sa slojeni ot SetPlannedStoreDealParams
      ParamByName('CREATE_EMPLOYEE_CODE').Value:= ParamByName('CHANGE_EMPLOYEE_CODE').Value;
      ParamByName('CREATE_DATE').Value:= ParamByName('CHANGE_DATE').Value;
      ParamByName('CREATE_TIME').Value:= ParamByName('CHANGE_TIME').Value;

      ExecSQL;

      if (RowsAffected <> 1) then
        raise Exception.Create(SPlannedStoreDealNotCreatedId);

      if (VarToInt(GetFieldValue(ADataSet.FieldByName('DELIVERY_DEAL_TYPE_CODE'))) in ddtLease) then
        begin
          ParamByName('PLANNED_STORE_DEAL_CODE').Value:= SvrStore.GetNewPlannedStoreDealCode;
          ParamByName('STORE_DEAL_BEGIN_DATE').Value:= GetFieldValue(ADataSet.FieldByName('RETURN_DATE'));
          ParamByName('STORE_DEAL_END_DATE').Value:= GetFieldValue(ADataSet.FieldByName('RETURN_DATE'));
          ParamByName('STORE_DEAL_TYPE_CODE').Value:= dtStoreOut;

          ExecSQL;

          if (RowsAffected <> 1) then
            raise Exception.Create(SPlannedStoreDealNotCreatedId);
        end;
    end;
end;


procedure TdmDeliveries.UpdateDeliveryPlannedStoreDeal(ADataSet: TCustomClientDataSet);
begin
  SetPlannedStoreDealParams(qryModifyPlannedStoreDeal, ADataSet);
  qryModifyPlannedStoreDeal.ParamByName('RECEIVE_DATE').Value:= GetFieldValue(ADataSet.FieldByName('RECEIVE_DATE'));
  qryModifyPlannedStoreDeal.ParamByName('RETURN_DATE').Value:= GetFieldValue(ADataSet.FieldByName('RETURN_DATE'));
  qryModifyPlannedStoreDeal.ExecSQL;

  if not (qryModifyPlannedStoreDeal.RowsAffected in [1, 2]) then
    raise Exception.Create(SPlannedStoreDealNotUpdatedId);
end;

function TdmDeliveries.RPDCanAnnul(DCDObjectBranchCode, DCDObjectCode: Integer): Boolean;
begin
  qryCanAnnulRPD.ParamByName('DCD_OBJECT_BRANCH_CODE').AsInteger:= DCDObjectBranchCode;
  qryCanAnnulRPD.ParamByName('DCD_OBJECT_CODE').AsInteger:= DCDObjectCode;
  Result:=
    qryCanAnnulRPD.TempOpen/
      qryCanAnnulRPDCAN_ANNUL_RPD.AsBooleanFunc;
end;

function TdmDeliveries.RPDCanClose(DCDObjectBranchCode, DCDObjectCode: Integer): Boolean;
begin
  qryCanCloseRPD.ParamByName('DCD_OBJECT_BRANCH_CODE').AsInteger:= DCDObjectBranchCode;
  qryCanCloseRPD.ParamByName('DCD_OBJECT_CODE').AsInteger:= DCDObjectCode;
  Result:=
    qryCanCloseRPD.TempOpen/
      qryCanCloseRPDCAN_CLOSE_RPD.AsBooleanFunc;
end;

function TdmDeliveries.DeliveryCanAnnul(DeliveryObjectBranchCode, DeliveryObjectCode: Integer): Boolean;
begin
  qryCanAnnulDelivery.ParamByName('DELIVERY_OBJECT_BRANCH_CODE').AsInteger:= DeliveryObjectBranchCode;
  qryCanAnnulDelivery.ParamByName('DELIVERY_OBJECT_CODE').AsInteger:= DeliveryObjectCode;
  Result:=
    qryCanAnnulDelivery.TempOpen/
      qryCanAnnulDeliveryCAN_ANNUL_DELIVERY.AsBooleanFunc;
end;

procedure TdmDeliveries.prvDeficitCoverDecisionAfterUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);

  function AFieldHasChanged(AFields: array of TField): Boolean;
  var
    f: TField;
  begin
    Result:= False;
    for f in AFields do
      if not VarIsEmpty(f.NewValue) then
        Exit(True);
  end;

begin
  inherited;

  case UpdateKind of
    ukInsert:
      begin
        SvrCommon.UpdateProcessObjectIdentifier(
          DeltaDS.FieldByName('DCD_OBJECT_BRANCH_CODE').AsInteger,
          DeltaDS.FieldByName('DCD_OBJECT_CODE').AsInteger,
          Format(poifDeficitCoverDecision, [
            SvrDeptsTree.GetNodeNo(
               DeltaDS.FieldByName('DCD_BRANCH_CODE').AsInteger),
            DeltaDS.FieldByName('DCD_CODE').AsInteger
          ])
         );

        if (GetFieldValue(DeltaDS.FieldByName('ASPECT_TYPE_CODE')) = AspectTypeToInt(atRealization)) and
           (GetFieldValue(DeltaDS.FieldByName('DCD_MODE_CODE')) = DCDModeToInt(dcdmObjective)) then
          begin
            CreateDCDPlannedStoreDeal(DeltaDS);
          end;
      end;

    ukModify:
      with DeltaDS do
        begin
          if not VarIsNullOrEmpty(FieldByName('P_PSD_STORE_CODE').NewValue) then
            begin
              SetParams(qryUpdateDCPSDStore.Params, DeltaDS);
              qryUpdateDCPSDStore.ExecSQL;
            end;

          if AFieldHasChanged(
               [FieldByName('P_PSD_STORE_CODE'),
                FieldByName('P_DEFICIT_COVER_DATE'),
                FieldByName('P_PRODUCT_CODE'),
                FieldByName('P_ACCOUNT_QUANTITY'),
                FieldByName('P_WORK_QUANTITY')]) and
             (GetFieldValue(DeltaDS.FieldByName('ASPECT_TYPE_CODE')) = AspectTypeToInt(atRealization)) then
            UpdateDCDPlannedStoreDeal(DeltaDS);
        end;
  end;

  // каскади при приключване и анулиране
  with DeltaDS do
    begin
      // каскади при приключване
      if (not VarIsNullOrEmpty(FieldByName('IS_DONE').NewValue)) and
         (FieldByName('IS_DONE').NewValue <> 0) and
         (GetFieldValue(DeltaDS.FieldByName('ASPECT_TYPE_CODE')) = AspectTypeToInt(atRealization)) then
        ClosePlannedStoreDeal(
          DeltaDS,
          GetFieldValue(FieldByName('DCD_OBJECT_BRANCH_CODE')),
          GetFieldValue(FieldByName('DCD_OBJECT_CODE')));

      // каскади при анулиране
      if (not VarIsNullOrEmpty(FieldByName('IS_CANCELED').NewValue)) and
         (FieldByName('IS_CANCELED').NewValue <> 0) and
         (GetFieldValue(DeltaDS.FieldByName('ASPECT_TYPE_CODE')) = AspectTypeToInt(atRealization)) then
        AnnulPlannedStoreDeal(
          DeltaDS,
          GetFieldValue(FieldByName('DCD_OBJECT_BRANCH_CODE')),
          GetFieldValue(FieldByName('DCD_OBJECT_CODE')));
    end;
end;

procedure TdmDeliveries.CreateDCDPlannedStoreDeal(
  ADataSet: TDataSet; AQuantity: Real = -1; AAccountQuantity: Real = -1);
begin
  Assert( ( (AQuantity = -1) and (AAccountQuantity = -1) ) or
          ( (AQuantity <> -1) and (AAccountQuantity <> -1) ) );

  SetDCDPlannedStoreDealParams(qryInsertPlannedStoreDeal, ADataSet);
  with qryInsertPlannedStoreDeal do
    begin
      ParamByName('PLANNED_STORE_DEAL_BRANCH_CODE').Value:= GetFieldValue(ADataSet.FieldByName('DCD_BRANCH_CODE'));
      ParamByName('PLANNED_STORE_DEAL_CODE').Value:= SvrStore.GetNewPlannedStoreDealCode;

      if (AQuantity <> -1) then
        begin
          ParamByName('WORK_QUANTITY').Value:= AQuantity;
          ParamByName('ACCOUNT_QUANTITY').Value:= AAccountQuantity;
        end;

      if (VarToInt(GetFieldValue(ADataSet.FieldByName('DELIVERY_DEAL_TYPE_CODE'))) in ddtLease) then
        begin
          ParamByName('STORE_DEAL_BEGIN_DATE').Value:= GetFieldValue(ADataSet.FieldByName('P_RECEIVE_DATE'));
          ParamByName('STORE_DEAL_END_DATE').Value:= GetFieldValue(ADataSet.FieldByName('P_RECEIVE_DATE'));
        end;

      ParamByName('PLANNED_STORE_DEAL_TYPE_CODE').Value:= psdtFake;
      ParamByName('IS_PLANNED_MANUALLY').Value:= 0;
      ParamByName('BND_PROCESS_CODE').Value:= pDCD;
      ParamByName('STORE_DEAL_TYPE_CODE').Value:= dtStoreIn;

      // razchitame che CHANGE_* sa slojeni ot SetDCDPlannedStoreDealParams
      ParamByName('CREATE_EMPLOYEE_CODE').Value:= ParamByName('CHANGE_EMPLOYEE_CODE').Value;
      ParamByName('CREATE_DATE').Value:= ParamByName('CHANGE_DATE').Value;
      ParamByName('CREATE_TIME').Value:= ParamByName('CHANGE_TIME').Value;

      ExecSQL;

      if (RowsAffected <> 1) then
        raise Exception.Create(SPlannedStoreDealNotCreatedId);

      if (VarToInt(GetFieldValue(ADataSet.FieldByName('DELIVERY_DEAL_TYPE_CODE'))) in ddtLease) then
        begin
          ParamByName('PLANNED_STORE_DEAL_CODE').Value:= SvrStore.GetNewPlannedStoreDealCode;
          ParamByName('STORE_DEAL_BEGIN_DATE').Value:= GetFieldValue(ADataSet.FieldByName('P_RETURN_DATE'));
          ParamByName('STORE_DEAL_END_DATE').Value:= GetFieldValue(ADataSet.FieldByName('P_RETURN_DATE'));
          ParamByName('STORE_DEAL_TYPE_CODE').Value:= dtStoreOut;;

          ExecSQL;

          if (RowsAffected <> 1) then
            raise Exception.Create(SPlannedStoreDealNotCreatedId);
        end;
    end;
end;

procedure TdmDeliveries.SetDCDPlannedStoreDealParams(Query: TAbmesSQLQuery; ADataSet: TDataSet);
begin
  with Query do
    begin
      ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').Value:= GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_BRANCH_CODE'));
      ParamByName('BND_PROCESS_OBJECT_CODE').Value:= GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_CODE'));
      ParamByName('PRIORITY_CODE').Value:= LoginContext.DefaultPriorityCode;
      ParamByName('STORE_CODE').Value:= GetFieldValue(ADataSet.FieldByName('P_PSD_STORE_CODE'));
      ParamByName('STORE_DEAL_BEGIN_DATE').Value:= GetFieldValue(ADataSet.FieldByName('P_DEFICIT_COVER_DATE'));
      ParamByName('STORE_DEAL_END_DATE').Value:= GetFieldValue(ADataSet.FieldByName('P_DEFICIT_COVER_DATE'));
      ParamByName('PRODUCT_CODE').Value:= GetFieldValue(ADataSet.FieldByName('P_PRODUCT_CODE'));
      ParamByName('WORK_QUANTITY').Value:= GetFieldValue(ADataSet.FieldByName('P_WORK_QUANTITY'));
      ParamByName('ACCOUNT_QUANTITY').Value:= GetFieldValue(ADataSet.FieldByName('P_ACCOUNT_QUANTITY'));
      ParamByName('CHANGE_EMPLOYEE_CODE').Value:= GetFieldValue(ADataSet.FieldByName('CHANGE_EMPLOYEE_CODE'));
      ParamByName('CHANGE_DATE').Value:= GetFieldValue(ADataSet.FieldByName('CHANGE_DATE'));
      ParamByName('CHANGE_TIME').Value:= GetFieldValue(ADataSet.FieldByName('CHANGE_TIME'));
    end;
end;

procedure TdmDeliveries.UpdateDCDPlannedStoreDeal(ADataSet: TCustomClientDataSet);
begin
  if ExistsPSD(
      GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_BRANCH_CODE')),
      GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_CODE'))) then
    begin
      SetDCDPlannedStoreDealParams(qryModifyPlannedStoreDeal, ADataSet);

      qryModifyPlannedStoreDeal.ExecSQL;

      if (qryModifyPlannedStoreDeal.RowsAffected <> 1) then
        raise Exception.Create(SPlannedStoreDealNotUpdatedId);
    end
  else
    CreateDCDPlannedStoreDeal(ADataSet);
end;

procedure TdmDeliveries.AnnulPlannedStoreDeal(ADataSet: TCustomClientDataSet;
  ProcessObjectBranchCode, ProcessObjectCode: Integer);
begin
  if ExistsPSD(ProcessObjectBranchCode, ProcessObjectCode) then
    with qryAnnulPlannedStoreDeal do
      begin
        ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').Value:= ProcessObjectBranchCode;
        ParamByName('BND_PROCESS_OBJECT_CODE').Value:= ProcessObjectCode;

        ParamByName('ANNUL_EMPLOYEE_CODE').Value:= GetFieldValue(ADataSet.FieldByName('CHANGE_EMPLOYEE_CODE'));
        ParamByName('ANNUL_DATE').Value:= GetFieldValue(ADataSet.FieldByName('CHANGE_DATE'));
        ParamByName('ANNUL_TIME').Value:= GetFieldValue(ADataSet.FieldByName('CHANGE_TIME'));

        ExecSQL;

        if (RowsAffected <> 1) then
          raise Exception.Create(SPlannedStoreDealNotAnnuledId);
      end;
end;

procedure TdmDeliveries.cdsDeliveryMultiDecisionReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  FDeliveryMultiDecisionErrorMessage:= E.Message;
  Action:= raAbort;
end;

procedure TdmDeliveries.ClosePlannedStoreDeal(ADataSet: TCustomClientDataSet;
  ProcessObjectBranchCode, ProcessObjectCode: Integer);
begin
  if ExistsPSD(ProcessObjectBranchCode, ProcessObjectCode) then
    with qryClosePlannedStoreDeal do
      begin
        ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').Value:= ProcessObjectBranchCode;
        ParamByName('BND_PROCESS_OBJECT_CODE').Value:= ProcessObjectCode;

        ParamByName('CLOSE_EMPLOYEE_CODE').Value:= GetFieldValue(ADataSet.FieldByName('CHANGE_EMPLOYEE_CODE'));
        ParamByName('CLOSE_DATE').Value:= GetFieldValue(ADataSet.FieldByName('CHANGE_DATE'));
        ParamByName('CLOSE_TIME').Value:= GetFieldValue(ADataSet.FieldByName('CHANGE_TIME'));

        ExecSQL;

        if (RowsAffected <> 1) then
          raise Exception.Create(SPlannedStoreDealNotClosedId);
      end;
end;

procedure TdmDeliveries.SynchronizeDCDPlannedStoreDeal(ADataSet: TCustomClientDataSet);
var
  DCDQuantity: Real;
  TotalDCDPlanedRealQuantity: Real;
  DCDAccountQuantity: Real;
  TotalDCDPlanedRealAccountQuantity: Real;
  DeltaDCD: Real;
  DeltaAccountDCD: Real;
begin
  qryDCDPlannedRealQuantity.ParamByName('DCD_OBJECT_BRANCH_CODE').AsInteger:= GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_BRANCH_CODE'));
  qryDCDPlannedRealQuantity.ParamByName('DCD_OBJECT_CODE').AsInteger:= GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_CODE'));
  qryDCDPlannedRealQuantity.TempOpen/
    procedure begin
      DCDQuantity:= qryDCDPlannedRealQuantityDCD_QUANTITY.AsFloat;
      TotalDCDPlanedRealQuantity:= qryDCDPlannedRealQuantityTOTAL_QUANTITY.AsFloat;
      DCDAccountQuantity:= qryDCDPlannedRealQuantityDCD_ACCOUNT_QUANTITY.AsFloat;
      TotalDCDPlanedRealAccountQuantity:= qryDCDPlannedRealQuantityTOTAL_ACCOUNT_QUANTITY.AsFloat;
    end;

  DeltaDCD:= DCDQuantity - TotalDCDPlanedRealQuantity;
  DeltaAccountDCD:= DCDAccountQuantity - TotalDCDPlanedRealAccountQuantity;

  if (DeltaAccountDCD <= 0) then
    begin
      if ExistsPSD(
           GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_BRANCH_CODE')),
           GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_CODE'))) then
        DeleteDCDPSD(ADataSet);
    end
  else
    begin
      if ExistsPSD(
           GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_BRANCH_CODE')),
           GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_CODE'))) then
        UpdateDCDPlannedStoreDealQuantity(ADataSet, DeltaAccountDCD)
      else
        begin
          qryDeficitCoverDecision.Params.ParamByName('DCD_OBJECT_BRANCH_CODE').AsInteger:= GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_BRANCH_CODE'));
          qryDeficitCoverDecision.Params.ParamByName('DCD_OBJECT_CODE').AsInteger:= GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_CODE'));
          qryDeficitCoverDecision.TempOpen/
            procedure begin
              CreateDCDPlannedStoreDeal(qryDeficitCoverDecision, DeltaDCD, DeltaAccountDCD);
            end;
        end;
    end;
end;

procedure TdmDeliveries.UpdateDCDPlannedStoreDealQuantity(ADataSet: TCustomClientDataSet; AQuantity: Real);
begin
  with qryUpdatePSDQuantity do
    begin
      ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').Value:= GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_BRANCH_CODE'));
      ParamByName('BND_PROCESS_OBJECT_CODE').Value:= GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_CODE'));

      ParamByName('ACCOUNT_QUANTITY').Value:= AQuantity;
      ParamByName('ACCOUNT_MEASURE_COEF').Value:= GetFieldValue(ADataSet.FieldByName('ACCOUNT_MEASURE_COEF'));

      ParamByName('CHANGE_EMPLOYEE_CODE').Value:= GetFieldValue(ADataSet.FieldByName('CHANGE_EMPLOYEE_CODE'));
      ParamByName('CHANGE_DATE').Value:= GetFieldValue(ADataSet.FieldByName('CHANGE_DATE'));
      ParamByName('CHANGE_TIME').Value:= GetFieldValue(ADataSet.FieldByName('CHANGE_TIME'));

      ExecSQL;

      if (RowsAffected <> 1) then
        raise Exception.Create(SPlannedStoreDealNotUpdatedId);
    end;
end;

function TdmDeliveries.GetNewDeficitCoverDecisionCode(BranchCode: Integer): Integer;
begin
  qryGetNewDCDCode.Params.ParamByName('DCD_BRANCH_CODE').AsInteger:= BranchCode;
  Result:=
    qryGetNewDCDCode.TempOpen/
      qryGetNewDCDCodeNEW_DCD_CODE.AsIntegerFunc;
end;

procedure TdmDeliveries.DataModuleCreate(Sender: TObject);
begin
  RegisterMacroLibrary(mshLocalMacroLibrary);
  inherited;
end;

procedure TdmDeliveries.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  UnregisterMacroLibrary(mshLocalMacroLibrary);
end;

procedure TdmDeliveries.DeleteDCDPSD(ADataSet: TCustomClientDataSet);
begin
  qryDeletePSD.ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').Value:= GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_BRANCH_CODE'));
  qryDeletePSD.ParamByName('BND_PROCESS_OBJECT_CODE').Value:= GetFieldValue(ADataSet.FieldByName('DCD_OBJECT_CODE'));
  qryDeletePSD.ExecSQL;

  Assert(qryDeletePSD.RowsAffected in [1, 2], 'DeleteDCDPSD: Rows affected not in [1, 2]');
end;

function TdmDeliveries.ExistsPSD(BndProcessObjectBranchCode, BndProcessObjectCode: Integer): Boolean;
begin
  qryExistsPSD.ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').Value:= BndProcessObjectBranchCode;
  qryExistsPSD.ParamByName('BND_PROCESS_OBJECT_CODE').Value:= BndProcessObjectCode;
  Result:=
    qryExistsPSD.TempOpen/
      qryExistsPSDEXISTS_PSD.AsBooleanFunc;
end;

procedure TdmDeliveries.qryDeliveriesAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnprepareFilteredCompanies(DataSet);
  SvrParamProductTreeNodeFilter.UnprepareFilteredProducts(DataSet);
end;

procedure TdmDeliveries.qryDeliveriesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)],
    1,
    (DataSet as TAbmesSQLQuery).Params.ParamByName('PRODUCT_CLASS_CODE'));

  SvrCompanyFilter.PrepareFilteredCompanies(DataSet);
end;

procedure TdmDeliveries.qryGroupDeliveriesDetailAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnprepareFilteredCompanies(DataSet);
  SvrParamProductTreeNodeFilter.UnprepareFilteredProducts(DataSet);
end;

procedure TdmDeliveries.qryGroupDeliveriesDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredProducts(DataSet);
  SvrCompanyFilter.PrepareFilteredCompanies(DataSet);
end;

procedure TdmDeliveries.qryGroupDeliveriesMasterAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnprepareFilteredCompanies(DataSet);
  SvrParamProductTreeNodeFilter.UnprepareFilteredProducts(DataSet);
end;

procedure TdmDeliveries.qryGroupDeliveriesMasterBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredProducts(DataSet);
  SvrCompanyFilter.PrepareFilteredCompanies(DataSet);
end;

procedure TdmDeliveries.qryDeficitCoverDecisionsDetailCalcFields(DataSet: TDataSet);

  function LeaseDateUnitQuantity: Variant;
  begin
    if (qryDeficitCoverDecisionsDetailDELIVERY_DEAL_TYPE_CODE.AsInteger in ddtLease) then
      Result:= qryDeficitCoverDecisionsDetailPROGNOSIS_LEASE_DATE_UNIT_QTY.AsVariant
    else
      Result:= 1;
  end;

begin
  inherited;
  qryDeficitCoverDecisionsDetailPROGNOSIS_TOTAL_PRICE.AsVariant:=
    qryDeficitCoverDecisionsDetailPROGNOSIS_SINGLE_PRICE.AsVariant *
    qryDeficitCoverDecisionsDetailPROGNOSIS_CURRENCY_FIXING.AsVariant *
    qryDeficitCoverDecisionsDetailPROGNOSIS_QUANTITY.AsVariant *
    LeaseDateUnitQuantity;
end;

procedure TdmDeliveries.qryDeficitCoverDecisionsMasterBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.PrepareFilteredProducts(DataSet);
  SvrCompanyFilter.PrepareFilteredCompanies(DataSet);

  ProcessUserParamBeforeQueryOpen((DataSet as TAbmesSQLQuery).Params.ParamByName('VPD_EMPLOYEE_CODE'), LoginContext);
end;

procedure TdmDeliveries.qryDeficitCoverDecisionsMasterAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrCompanyFilter.UnprepareFilteredCompanies(DataSet);
  SvrParamProductTreeNodeFilter.UnprepareFilteredProducts(DataSet);
end;

procedure TdmDeliveries.prvDeliveryBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmDeliveries.prvDeliveryAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmDeliveries.qryDeliveryAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmDeliveries.prvDeliveryGroupBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmDeliveries.prvMultiDecisionDataBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
  DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  Assert(UpdateKind = ukModify);

  SetParams(qryDCDActiveDeliveryProjects.Params, DeltaDS);

  qryDCDActiveDeliveryProjects.TempOpen/
    qryDCDActiveDeliveryProjects.ForEach/
      procedure begin
        SetParams(cdsDeliveryMultiDecision.Params, qryDCDActiveDeliveryProjects);

        cdsDeliveryMultiDecision.TempOpen/
          procedure begin
            FDeliveryMultiDecisionErrorMessage:= '';
            try
              cdsDeliveryMultiDecision.SafeApplyUpdates/
                cdsDeliveryMultiDecision.SafeEdit/
                  procedure begin
                    cdsDeliveryMultiDecision.AssignFields(DeltaDS);
                    cdsDeliveryMultiDecisionDCD_OBJECT_BRANCH_CODE.AsVariant:= GetFieldValue(DeltaDS.FieldByName('DCD_OBJECT_BRANCH_CODE'));
                    cdsDeliveryMultiDecisionDCD_OBJECT_CODE.AsVariant:= GetFieldValue(DeltaDS.FieldByName('DCD_OBJECT_CODE'));
                  end;

              if (FDeliveryMultiDecisionErrorMessage <> '') then
                raise Exception.CreateFmt(
                  SErrorInMultiDecisionForDeliveryProjectId + '(DeliveryId:s=%s, ErrorMessage:s=%s)',
                  [ qryDCDActiveDeliveryProjectsDELIVERY_ID.AsString,
                    FDeliveryMultiDecisionErrorMessage]);
            finally
              FDeliveryMultiDecisionErrorMessage:= '';
            end;
          end;
      end;

  Applied:= True;
end;

procedure TdmDeliveries.prvDeliveryGroupAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmDeliveries.qryDeliveryGroupAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmDeliveries.prvDeficitCoverDecisionBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmDeliveries.prvDeficitCoverDecisionAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmDeliveries.qryDeficitCoverDecisionAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

function TdmDeliveries.GetNewDeliveryDecisionCode: Integer;
begin
  Result:=
    qryGetNewDeliveryDecisionCode.TempOpen/
      qryGetNewDeliveryDecisionCodeNEW_DELIVERY_DECISION_CODE.AsIntegerFunc;
end;

initialization
  TdmDeliveriesProxy.FSingleton:= TdmDeliveriesProxy.Create(TdmDeliveries);

finalization
  FreeAndNil(TdmDeliveriesProxy.FSingleton);
end.

