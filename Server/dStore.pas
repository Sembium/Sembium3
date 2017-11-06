unit dStore;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, JvStringHolder, WideStrings, FMTBcd, SqlExpr,
  AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmStore = class(TDBPooledDataModule)
    qryDeals: TAbmesSQLQuery;
    prvDeals: TDataSetProvider;
    qryMaxDealNo: TAbmesSQLQuery;
    qryMaxDealNoMAX_STORE_DEAL_NO: TAbmesFloatField;
    qryInsertStoreDeal: TAbmesSQLQuery;
    qryProductQuantityAndPrice: TAbmesSQLQuery;
    qryProductQuantityAndPriceQUANTITY: TAbmesFloatField;
    qryProductQuantityAndPriceACCOUNT_QUANTITY: TAbmesFloatField;
    qryProductQuantityAndPriceTOTAL_PRICE: TAbmesFloatField;
    qryNextDeals: TAbmesSQLQuery;
    qryDealsSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDealsSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    qryDealsSTORE_CODE: TAbmesFloatField;
    qryDealsSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qryDealsSTORE_DEAL_TYPE_CODE: TAbmesFloatField;
    qryDealsPRODUCT_CODE: TAbmesFloatField;
    qryDealsWANTED_QUANTITY: TAbmesFloatField;
    qryDealsQUANTITY: TAbmesFloatField;
    qryDealsACCOUNT_QUANTITY: TAbmesFloatField;
    qryDealsCURRENCY_CODE: TAbmesFloatField;
    qryDealsTOTAL_PRICE: TAbmesFloatField;
    qryDealsSTORE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDealsOTHER_EMPLOYEE_CODE: TAbmesFloatField;
    qryDealsREQUEST_EMPLOYEE_CODE: TAbmesFloatField;
    qryDealsIS_WASTE_BOUND: TAbmesFloatField;
    qryDealsDEPT_CODE: TAbmesFloatField;
    qryDealsWORK_ORDER_NO: TAbmesWideStringField;
    qryDealsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDealsBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryDealsBND_PROCESS_CODE: TAbmesFloatField;
    qryDealsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    qryDealsPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    qryDealsCREATE_DATE: TAbmesSQLTimeStampField;
    qryDealsCREATE_TIME: TAbmesSQLTimeStampField;
    qryDealsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDealsSTORNO_DATE: TAbmesSQLTimeStampField;
    qryDealsSTORNO_TIME: TAbmesSQLTimeStampField;
    qryDealsSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryDealsOLD_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDealsOLD_DEAL_OBJECT_CODE: TAbmesFloatField;
    qryDealsPRODUCT_MEASURE_CODE: TAbmesFloatField;
    qryDealsPRODUCT_ACC_MEASURE_CODE: TAbmesFloatField;
    qryPlannedStoreDeals: TAbmesSQLQuery;
    prvPlannedStoreDeals: TDataSetProvider;
    qryPlannedStoreDealsIN_OUT: TAbmesFloatField;
    qryPlannedStoreDealsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    qryPlannedStoreDealsPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    qryPlannedStoreDealsSTORE_NAME: TAbmesWideStringField;
    qryPlannedStoreDealsPRODUCT_NAME: TAbmesWideStringField;
    qryPlannedStoreDealsMEASURE_ABBREV: TAbmesWideStringField;
    qryMovements: TAbmesSQLQuery;
    prvMovements: TDataSetProvider;
    prvStoreDealTypes: TDataSetProvider;
    qryStoreDealTypes: TAbmesSQLQuery;
    qryStoreDealTypesSTORE_DEAL_TYPE_CODE: TAbmesFloatField;
    qryStoreDealTypesIN_OUT: TAbmesFloatField;
    qryNextDealsSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryNextDealsSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    qryNextDealsSTORE_CODE: TAbmesFloatField;
    qryNextDealsSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qryNextDealsSTORE_DEAL_TYPE_CODE: TAbmesFloatField;
    qryNextDealsSTORE_DEAL_NO: TAbmesFloatField;
    qryNextDealsPRODUCT_CODE: TAbmesFloatField;
    qryNextDealsWANTED_QUANTITY: TAbmesFloatField;
    qryNextDealsQUANTITY: TAbmesFloatField;
    qryNextDealsACCOUNT_QUANTITY: TAbmesFloatField;
    qryNextDealsCURRENCY_CODE: TAbmesFloatField;
    qryNextDealsTOTAL_PRICE: TAbmesFloatField;
    qryNextDealsSTORE_EMPLOYEE_CODE: TAbmesFloatField;
    qryNextDealsOTHER_EMPLOYEE_CODE: TAbmesFloatField;
    qryNextDealsREQUEST_EMPLOYEE_CODE: TAbmesFloatField;
    qryNextDealsIS_WASTE_BOUND: TAbmesFloatField;
    qryNextDealsDEPT_CODE: TAbmesFloatField;
    qryNextDealsWORK_ORDER_NO: TAbmesWideStringField;
    qryNextDealsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryNextDealsBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryNextDealsBND_PROCESS_CODE: TAbmesFloatField;
    qryNextDealsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    qryNextDealsPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    qryNextDealsCREATE_DATE: TAbmesSQLTimeStampField;
    qryNextDealsCREATE_TIME: TAbmesSQLTimeStampField;
    qryNextDealsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryNextDealsSTORNO_DATE: TAbmesSQLTimeStampField;
    qryNextDealsSTORNO_TIME: TAbmesSQLTimeStampField;
    qryNextDealsSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryNextDealsOLD_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryNextDealsOLD_DEAL_OBJECT_CODE: TAbmesFloatField;
    qryNextDealsIN_OUT: TAbmesFloatField;
    qryUpdateStoreDeal: TAbmesSQLQuery;
    qryDeleteStoreDeal: TAbmesSQLQuery;
    prvPlannedStoreDeal: TDataSetProvider;
    qryPlannedStoreDeal: TAbmesSQLQuery;
    qryDealsPRODUCT_NO: TAbmesFloatField;
    qryDealsPRODUCT_ACC_MEASURE_COEF: TAbmesFloatField;
    qryDealsPRODUCT_NAME: TAbmesWideStringField;
    qryMLLID: TAbmesSQLQuery;
    prvMLLID: TDataSetProvider;
    qrySaleID: TAbmesSQLQuery;
    prvSaleID: TDataSetProvider;
    qrySaleIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    qryStoreDealID: TAbmesSQLQuery;
    prvStoreDealID: TDataSetProvider;
    qryStoreDealIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStoreDealIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    qrySaleCustomID: TAbmesSQLQuery;
    qrySaleCustomIDSALE_BRANCH_CODE: TAbmesFloatField;
    qrySaleCustomIDSALE_NO: TAbmesFloatField;
    prvSaleCustomID: TDataSetProvider;
    qryMLLCustomID: TAbmesSQLQuery;
    prvMLLCustomID: TDataSetProvider;
    qryMLLCustomIDSALE_BRANCH_CODE: TAbmesFloatField;
    qryMLLCustomIDSALE_NO: TAbmesFloatField;
    qryStoreDealCustomID: TAbmesSQLQuery;
    prvStoreDealCustomID: TDataSetProvider;
    qryStoreDealCustomIDSTORE_CODE: TAbmesFloatField;
    qryStoreDealCustomIDSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qryStoreDealCustomIDSTORE_DEAL_TYPE_CODE: TAbmesFloatField;
    qryStoreDealCustomIDSTORE_DEAL_NO: TAbmesFloatField;
    qryStoreDealCustomIDSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeliveryID: TAbmesSQLQuery;
    prvDeliveryID: TDataSetProvider;
    qryDeliveryIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    qryDeliveryCustomID: TAbmesSQLQuery;
    prvDeliveryCustomID: TDataSetProvider;
    qryProcesses: TAbmesSQLQuery;
    prvProcesses: TDataSetProvider;
    qryMLLCustomIDFORK_NO: TAbmesFloatField;
    qryProcessesPROCESS_CODE: TAbmesFloatField;
    qryProcessesPROCESS_NAME: TAbmesWideStringField;
    qryMLLIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMLLIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    qryDeliveryCustomIDDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qryProcessesPROCESS_ABBREV: TAbmesWideStringField;
    qryBoundPlannedSD: TAbmesSQLQuery;
    prvBoundPlannedSD: TDataSetProvider;
    qryBoundPlannedSDBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryBoundPlannedSDBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryBoundPlannedSDBND_PROCESS_CODE: TAbmesFloatField;
    qryBoundPlannedSDPRODUCT_CODE: TAbmesFloatField;
    qryBoundPlannedSDSTORE_DEAL_TYPE_CODE: TAbmesFloatField;
    qryBoundPlannedSDDEPT_CODE: TAbmesFloatField;
    qryBoundPlannedSDWORK_ORDER_NO: TAbmesWideStringField;
    prvSDOutQuantities: TDataSetProvider;
    qrySDOutQuantities: TAbmesSQLQuery;
    qrySDOutQuantitiesQUANTITY: TAbmesFloatField;
    qrySDOutQuantitiesACCOUNT_QUANTITY: TAbmesFloatField;
    qryPlannedStoreDealID: TAbmesSQLQuery;
    qryPlannedStoreDealIDPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    qryPlannedStoreDealIDPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    qryCheckCurrencyFixing: TAbmesSQLQuery;
    qrySaleShipmentID: TAbmesSQLQuery;
    prvSaleShipmentID: TDataSetProvider;
    qrySaleShipmentCustomID: TAbmesSQLQuery;
    prvSaleShipmentCustomID: TDataSetProvider;
    qrySaleShipmentCustomIDSALE_BRANCH_CODE: TAbmesFloatField;
    qrySaleShipmentCustomIDSALE_NO: TAbmesFloatField;
    qrySaleShipmentCustomIDSALE_SHIPMENT_NO: TAbmesFloatField;
    qryPlannedStoreDealsSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryPlannedStoreDealsSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField;
    qryGetProductNodeProp: TAbmesSQLQuery;
    qryGetProductNodePropPRODUCT_CODE: TAbmesFloatField;
    qryGetProductNodePropACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryGetProductNodePropMEASURE_ABBREV: TAbmesWideStringField;
    qryGetProductNodePropACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryGetProductNodePropMEASURE_CODE: TAbmesFloatField;
    qryStoreIdentifier: TAbmesSQLQuery;
    qrySaleShipmentIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleShipmentIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    qryNextDealsTOTAL_PRICE_PRIMARY: TAbmesFloatField;
    qryMovementsSTORE_CODE: TAbmesFloatField;
    qryMovementsSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qryMovementsSTORE_DEAL_TYPE_CODE: TAbmesFloatField;
    qryMovementsIN_OUT: TAbmesFloatField;
    qryMovementsSTORE_DEAL_NO: TAbmesFloatField;
    qryMovementsPRODUCT_CODE: TAbmesFloatField;
    qryMovementsPRODUCT_NAME: TAbmesWideStringField;
    qryMovementsPRODUCT_NO: TAbmesFloatField;
    qryMovementsBND_PROCESS_CODE: TAbmesFloatField;
    qryMovementsBND_PO_CLASS_ABBREV: TAbmesWideStringField;
    qryMovementsBND_PO_IDENTIFIER: TAbmesWideStringField;
    qryMovementsDEPT_CODE: TAbmesFloatField;
    qryMovementsWORK_DEPT_NAME: TAbmesWideStringField;
    qryMovementsWORK_ORDER_NO: TAbmesWideStringField;
    qryMovementsQUANTITY: TAbmesFloatField;
    qryMovementsMEASURE_CODE: TAbmesFloatField;
    qryMovementsMEASURE_ABBREV: TAbmesWideStringField;
    qryMovementsACCOUNT_QUANTITY: TAbmesFloatField;
    qryMovementsACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryMovementsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryMovementsTOTAL_PRICE: TAbmesFloatField;
    qryMovementsSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryMovementsSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMovementsSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    qryPlannedStoreDealPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    qryPlannedStoreDealPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    qryPlannedStoreDealPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField;
    qryPlannedStoreDealSTORE_DEAL_TYPE_CODE: TAbmesFloatField;
    qryPlannedStoreDealPRIORITY_CODE: TAbmesFloatField;
    qryPlannedStoreDealIS_PLANNED_MANUALLY: TAbmesFloatField;
    qryPlannedStoreDealBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryPlannedStoreDealBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryPlannedStoreDealBND_PROCESS_CODE: TAbmesFloatField;
    qryPlannedStoreDealSTORE_CODE: TAbmesFloatField;
    qryPlannedStoreDealSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryPlannedStoreDealSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField;
    qryPlannedStoreDealPRODUCT_CODE: TAbmesFloatField;
    qryPlannedStoreDealQUANTITY: TAbmesFloatField;
    qryPlannedStoreDealACCOUNT_QUANTITY: TAbmesFloatField;
    qryPlannedStoreDealCURRENCY_CODE: TAbmesFloatField;
    qryPlannedStoreDealTOTAL_PRICE: TAbmesFloatField;
    qryPlannedStoreDealDEPT_CODE: TAbmesFloatField;
    qryPlannedStoreDealWORK_ORDER_NO: TAbmesWideStringField;
    qryPlannedStoreDealANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryPlannedStoreDealANNUL_DATE: TAbmesSQLTimeStampField;
    qryPlannedStoreDealANNUL_TIME: TAbmesSQLTimeStampField;
    qryPlannedStoreDealCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryPlannedStoreDealCLOSE_DATE: TAbmesSQLTimeStampField;
    qryPlannedStoreDealCLOSE_TIME: TAbmesSQLTimeStampField;
    qryPlannedStoreDealCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryPlannedStoreDealCREATE_DATE: TAbmesSQLTimeStampField;
    qryPlannedStoreDealCREATE_TIME: TAbmesSQLTimeStampField;
    qryPlannedStoreDealCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryPlannedStoreDealCHANGE_DATE: TAbmesSQLTimeStampField;
    qryPlannedStoreDealCHANGE_TIME: TAbmesSQLTimeStampField;
    qryPlannedStoreDealPRODUCT_NAME: TAbmesWideStringField;
    qryPlannedStoreDealPRODUCT_NO: TAbmesFloatField;
    qryPlannedStoreDealMEASURE_CODE: TAbmesFloatField;
    qryPlannedStoreDealACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryPlannedStoreDealTypes: TAbmesSQLQuery;
    prvPlannedStoreDealTypes: TDataSetProvider;
    qryPlannedStoreDealTypesPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField;
    qryPlannedStoreDealTypesPLANNED_STORE_DEAL_TYPE_NAME: TAbmesWideStringField;
    qryPlannedStoreDealDEPT_IDENTIFIER: TAbmesWideStringField;
    qryPlannedStoreDealSINGLE_PRICE: TAbmesFloatField;
    qryDealsSTORE_DEAL_NO: TAbmesFloatField;
    qryDealsSINGLE_PRICE: TAbmesFloatField;
    qryPlannedStoreDealsPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryPlannedStoreDealCREATE_EMPLOYEE_NAME: TAbmesWideStringField;
    qryCountNotAnnuledSDForPSD: TAbmesSQLQuery;
    qryCountNotAnnuledSDForPSDCOUNT_STORE_DEALS: TAbmesFloatField;
    qryNewPlannedStoreDealCode: TAbmesSQLQuery;
    qryNewPlannedStoreDealCodeNEW_PLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionCustomID: TAbmesSQLQuery;
    prvDeficitCoverDecisionCustomID: TDataSetProvider;
    prvDeficitCoverDecisionID: TDataSetProvider;
    qryDeficitCoverDecisionID: TAbmesSQLQuery;
    qryDeficitCoverDecisionIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    qryMovementsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryMovementsCREATE_DATE: TAbmesSQLTimeStampField;
    qryMovementsCREATE_TIME: TAbmesSQLTimeStampField;
    qryMovementsSTORNO_DATE: TAbmesSQLTimeStampField;
    qryMovementsSTORNO_TIME: TAbmesSQLTimeStampField;
    qryMovementsCREATE_EMPLOYEE_NAME: TAbmesWideStringField;
    qryMovementsSTORNO_EMPLOYEE_NAME: TAbmesWideStringField;
    qryPlannedStoreDealTypesPLANNED_STORE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qryPlannedStoreDealsPLANNED_STORE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qryPlannedStoreDealsPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField;
    qryPlannedStoreDealsMEASURE_CODE: TAbmesFloatField;
    qryPlannedStoreDealsCOMPLETED_QUANTITY: TAbmesFloatField;
    qryPlannedStoreDealsINCOMPLETED_QUANTITY: TAbmesFloatField;
    qryPlannedStoreDealsTOTAL_PRICE_SC: TAbmesFloatField;
    qryPlannedStoreDealsIS_DONE: TAbmesFloatField;
    qryPlannedStoreDealsIS_ANNULED: TAbmesFloatField;
    qryPlannedStoreDealsCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryPlannedStoreDealsINCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryPlannedStoreDealsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryPlannedStoreDealsACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryStoreIdentifierSTORE_IDENTIFIER: TAbmesWideStringField;
    qryDealsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    qryDealsSTORE_REQUEST_CODE: TAbmesFloatField;
    qryDealsSTORE_REQUEST_ITEM_CODE: TAbmesFloatField;
    qryDealsDEPT_NAME: TAbmesWideStringField;
    qryDealsDEPT_NO: TAbmesWideStringField;
    qryDealsVENDOR_COMPANY_CODE: TAbmesFloatField;
    qryDealsINVOICE_NO: TAbmesFloatField;
    qryDealsINVOICE_DATE: TAbmesSQLTimeStampField;
    qryUpdSDTempStorno: TAbmesSQLQuery;
    qryMovementsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    qryMovementsSTORE_REQUEST_CODE: TAbmesFloatField;
    qryGetBoundProcessIdentificationForStoreDeal: TAbmesSQLQuery;
    qryPlannedStoreDealsDETAIL_NAME: TAbmesWideStringField;
    qryPlannedStoreDealsENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryPlannedStoreDealsENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField;
    qryDealsPRODUCT_ESTIMATED_SEC_PRICE: TAbmesFloatField;
    qryPlannedStoreDealsMLL_CHANGE_STATUS: TAbmesFloatField;
    qryPlannedStoreDealsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryPlannedStoreDealsBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryPlannedStoreDealsSTORE_CODE: TAbmesFloatField;
    qryPlannedStoreDealsPRODUCT_CODE: TAbmesFloatField;
    qryPlannedStoreDealsMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryPlannedStoreDealsMLL_OBJECT_CODE: TAbmesFloatField;
    qryPlannedStoreDealsMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField;
    qryPlannedStoreDealsVENDOR_COMPANY_CODE: TAbmesFloatField;
    qryPlannedStoreDealsVENDOR_SHORT_NAME: TAbmesWideStringField;
    qryMLLCustomIDMAIN_DEPT_NAME: TAbmesWideStringField;
    qryMovementsDETAIL_NAME: TAbmesWideStringField;
    qryMovementsENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryMovementsENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField;
    qryMovementsMLL_CHANGE_STATUS: TAbmesFloatField;
    qryMovementsMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMovementsMLL_OBJECT_CODE: TAbmesFloatField;
    qryMovementsMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField;
    qryMovementsVENDOR_COMPANY_CODE: TAbmesFloatField;
    qryMovementsVENDOR_SHORT_NAME: TAbmesWideStringField;
    qryMovementsINVOICE_DATE: TAbmesSQLTimeStampField;
    qryMovementsINVOICE_NO: TAbmesFloatField;
    qryDeliveryCustomIDDCD_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryCustomIDDCD_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionCustomIDDCD_BRANCH_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionCustomIDDCD_CODE: TAbmesFloatField;
    qryDealsINVOICE_ABBREV: TAbmesWideStringField;
    qryDealsIS_PROFORM_INVOICE: TAbmesFloatField;
    qryMovementsSTORE_NAME: TAbmesWideStringField;
    qryMovementsSTORE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qryMovementsSINGLE_PRICE: TAbmesFloatField;
    qryMovementsIS_STORNO: TAbmesFloatField;
    qryMovementsBND_PROCESS_ABBREV: TAbmesWideStringField;
    qryPlannedStoreDealsDELIVERY_PLACE: TAbmesWideStringField;
    qryDealsPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryPlannedStoreDealsBND_PROCESS_CODE: TAbmesFloatField;
    qryPlannedStoreDealsPRODUCT_NO: TAbmesFloatField;
    qryPlannedStoreDealsCREATE_DATE: TAbmesSQLTimeStampField;
    qryPlannedStoreDealsCREATE_TIME: TAbmesSQLTimeStampField;
    qryPlannedStoreDealsCREATE_EMPLOYEE_NAME: TAbmesWideStringField;
    qryPlannedStoreDealsCHANGE_DATE: TAbmesSQLTimeStampField;
    qryPlannedStoreDealsCHANGE_TIME: TAbmesSQLTimeStampField;
    qryPlannedStoreDealsCHANGE_EMPLOYEE_NAME: TAbmesWideStringField;
    qryPlannedStoreDealsCLOSE_DATE: TAbmesSQLTimeStampField;
    qryPlannedStoreDealsCLOSE_TIME: TAbmesSQLTimeStampField;
    qryPlannedStoreDealsCLOSE_EMPLOYEE_NAME: TAbmesWideStringField;
    qryPlannedStoreDealsANNUL_DATE: TAbmesSQLTimeStampField;
    qryPlannedStoreDealsANNUL_TIME: TAbmesSQLTimeStampField;
    qryPlannedStoreDealsANNUL_EMPLOYEE_NAME: TAbmesWideStringField;
    qryPlannedStoreDealPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryPlannedStoreDealIDSTORE_CODE: TAbmesFloatField;
    qryMLLCustomIDANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryDealsIN_OUT: TAbmesFloatField;
    qryMLLCustomIDNO_AS_TEXT: TAbmesWideStringField;
    qryGetBoundProcessIdentificationForStoreDealBND_PROCESS_IDENTIFICATION: TAbmesWideStringField;
    qryGetStoreDealTypeAbbrev: TAbmesSQLQuery;
    qryGetStoreDealTypeAbbrevSTORE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qryQuantitiesByStore: TAbmesSQLQuery;
    prvQuantities: TDataSetProvider;
    qryQuantitiesByStorePRODUCT_CODE: TAbmesFloatField;
    qryQuantitiesByStorePRODUCT_NO: TAbmesFloatField;
    qryQuantitiesByStorePRODUCT_NAME: TAbmesWideStringField;
    qryQuantitiesByStoreMEASURE_CODE: TAbmesFloatField;
    qryQuantitiesByStoreMEASURE_ABBREV: TAbmesWideStringField;
    qryQuantitiesByStoreACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryQuantitiesByStoreACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryQuantitiesByStoreSTORE_CODE: TAbmesFloatField;
    qryQuantitiesByStoreSTORE_IDENTIFIER: TAbmesWideStringField;
    qryQuantitiesByStoreQUANTITY: TAbmesFloatField;
    qryQuantitiesByStoreACCOUNT_QUANTITY: TAbmesFloatField;
    qryQuantitiesByStoreTOTAL_PRICE: TAbmesFloatField;
    qryQuantitiesByStoreTOTAL_MARKET_PRICE: TAbmesFloatField;
    qryQuantitiesByStorePLAN_QUANTITY: TAbmesFloatField;
    qryQuantitiesByStorePLAN_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryQuantitiesByStorePLAN_TOTAL_PRICE: TAbmesFloatField;
    qryQuantitiesByStorePLAN_TOTAL_MARKET_PRICE: TAbmesFloatField;
    qryQuantities: TAbmesSQLQuery;
    qryMovementsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryQuantitiesByStorePRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryMLMSOperationID: TAbmesSQLQuery;
    prvMLMSOperationID: TDataSetProvider;
    qryMLMSOperationIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    qryMLMSOperationCustomID: TAbmesSQLQuery;
    prvMLMSOperationCustomID: TDataSetProvider;
    qryMLMSOperationCustomIDSALE_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationCustomIDSALE_NO: TAbmesFloatField;
    qryMLMSOperationCustomIDMAIN_DEPT_NAME: TAbmesWideStringField;
    qryMLMSOperationCustomIDNO_AS_TEXT: TAbmesWideStringField;
    qryMLMSOperationCustomIDFORK_NO: TAbmesFloatField;
    qryMLMSOperationCustomIDANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryMLMSOperationCustomIDML_MODEL_STAGE_NO: TAbmesFloatField;
    qryPlannedStoreDealsBND_PROCESS_ABBREV: TAbmesWideStringField;
    qryMLMSOperationCustomIDMLMS_OPERATION_NO: TAbmesFloatField;
    qryMLMSOperationCustomIDMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryCheckCurrencyFixingFIXING: TAbmesFloatField;
    qryGetStoreIdentifier: TAbmesSQLQuery;
    qryIsStoreComputerized: TAbmesSQLQuery;
    qryGetStoreIdentifierSTORE_IDENTIFIER: TAbmesWideStringField;
    qryIsStoreComputerizedIS_COMPUTERIZED: TAbmesFloatField;
    qryGetModelProductAndSinglePrice: TAbmesSQLQuery;
    qryGetModelProductAndSinglePricePRODUCT_CODE: TAbmesFloatField;
    qryGetModelProductAndSinglePriceACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qryPlannedStoreDealsIS_MODEL_LIMITING: TAbmesFloatField;
    qryGetStoreDealOutData: TAbmesSQLQuery;
    qryGetStoreDealOutDataPRODUCT_CODE: TAbmesFloatField;
    qryGetStoreDealOutDataCURRENCY_CODE: TAbmesFloatField;
    qryGetStoreDealOutDataSINGLE_PRICE: TAbmesFloatField;
    qryQuantitiesPRODUCT_CODE: TAbmesFloatField;
    qryQuantitiesPRODUCT_NO: TAbmesFloatField;
    qryQuantitiesPRODUCT_NAME: TAbmesWideStringField;
    qryQuantitiesPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryQuantitiesMEASURE_CODE: TAbmesFloatField;
    qryQuantitiesMEASURE_ABBREV: TAbmesWideStringField;
    qryQuantitiesACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryQuantitiesACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryQuantitiesSTORE_CODE: TAbmesFloatField;
    qryQuantitiesSTORE_IDENTIFIER: TAbmesWideStringField;
    qryQuantitiesQUANTITY: TAbmesFloatField;
    qryQuantitiesACCOUNT_QUANTITY: TAbmesFloatField;
    qryQuantitiesTOTAL_PRICE: TAbmesFloatField;
    qryQuantitiesTOTAL_MARKET_PRICE: TAbmesFloatField;
    qryQuantitiesPLAN_QUANTITY: TAbmesFloatField;
    qryQuantitiesPLAN_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryQuantitiesPLAN_TOTAL_PRICE: TAbmesFloatField;
    qryQuantitiesPLAN_TOTAL_MARKET_PRICE: TAbmesFloatField;
    qryGetModelLineProduct: TAbmesSQLQuery;
    qryGetModelLineProductPRODUCT_CODE: TAbmesFloatField;
    qryDealsSTORE_IDENTIFIER: TAbmesWideStringField;
    qryGetSaleShipmentProduct: TAbmesSQLQuery;
    qryGetSaleShipmentProductPRODUCT_CODE: TAbmesFloatField;
    qryGetSaleManufactureQuantity: TAbmesSQLQuery;
    qryGetSaleManufactureQuantityMANUFACTURE_QUANTITY: TAbmesFloatField;
    qryBOIOrderObjectID: TAbmesSQLQuery;
    prvBOIOrderObjectID: TDataSetProvider;
    qryBOIOrderObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrderObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    qryBOIOrderObjectCustomID: TAbmesSQLQuery;
    prvBOIOrderObjectCustomID: TDataSetProvider;
    qryBOIOrderObjectCustomIDBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryBOIOrderObjectCustomIDBUDGET_ORDER_CODE: TAbmesFloatField;
    qryBOIOrderObjectCustomIDBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    qryDealsSTORE_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryDealsSTORE_END_DATE: TAbmesSQLTimeStampField;
    qryDealsBEGIN_DATE: TAbmesSQLTimeStampField;
    qryDealsEND_DATE: TAbmesSQLTimeStampField;
    qryQuantitiesQUANTITY_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesACC_QUANTITY_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesTOTAL_PRICE_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesTOTAL_MARKET_PRICE_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesP_QUANTITY_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesP_ACCOUNT_QUANTITY_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesP_TOTAL_PRICE_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesP_TOTAL_M_PRICE_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesByStoreQUANTITY_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesByStoreACC_QUANTITY_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesByStoreTOTAL_PRICE_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesByStoreTOTAL_MARKET_PRICE_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesByStoreP_QUANTITY_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesByStoreP_ACCOUNT_QUANTITY_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesByStoreP_TOTAL_PRICE_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesByStoreP_TOTAL_M_PRICE_TOWARDS_RSV: TAbmesFloatField;
    qryProcessesPROCESS_NO: TAbmesFloatField;
    qryQuantitiesByStorePRODUCT_HAS_DOC: TAbmesFloatField;
    qryQuantitiesPRODUCT_HAS_DOC: TAbmesFloatField;
    qryMovementsSTORE_REQUEST_ID: TAbmesWideStringField;
    qryMovementsDETAIL_CODE: TAbmesFloatField;
    qryMovementsDETAIL_NO: TAbmesFloatField;
    qryMovementsDETAIL_HAS_DOCUMENTATION: TAbmesFloatField;
    qryMovementsDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    qryMovementsDETAIL_DOC_CODE: TAbmesFloatField;
    qryMovementsSALE_PRODUCT_CODE: TAbmesFloatField;
    qryMovementsSALE_PRODUCT_NAME: TAbmesWideStringField;
    qryMovementsSALE_PRODUCT_NO: TAbmesFloatField;
    qryMovementsSALE_PRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qryMovementsSALE_PRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryMovementsSALE_PRODUCT_DOC_CODE: TAbmesFloatField;
    qryMovementsHAS_DOCUMENTATION: TAbmesFloatField;
    qryMovementsDOC_BRANCH_CODE: TAbmesFloatField;
    qryMovementsDOC_CODE: TAbmesFloatField;
    qryPlannedStoreDealsPSD_ID: TAbmesWideStringField;
    qryPlannedStoreDealsHAS_DOCUMENTATION: TAbmesFloatField;
    qryPlannedStoreDealsDOC_BRANCH_CODE: TAbmesFloatField;
    qryPlannedStoreDealsDOC_CODE: TAbmesFloatField;
    qryPlannedStoreDealsDETAIL_CODE: TAbmesFloatField;
    qryPlannedStoreDealsDETAIL_NO: TAbmesFloatField;
    qryPlannedStoreDealsDETAIL_HAS_DOCUMENTATION: TAbmesFloatField;
    qryPlannedStoreDealsDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    qryPlannedStoreDealsDETAIL_DOC_CODE: TAbmesFloatField;
    qryPlannedStoreDealsSALE_PRODUCT_CODE: TAbmesFloatField;
    qryPlannedStoreDealsSALE_PRODUCT_NAME: TAbmesWideStringField;
    qryPlannedStoreDealsSALE_PRODUCT_NO: TAbmesFloatField;
    qryPlannedStoreDealsSALE_PRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    qryPlannedStoreDealsSALE_PRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryPlannedStoreDealsSALE_PRODUCT_DOC_CODE: TAbmesFloatField;
    qryPlannedStoreDealsBND_PROCESS_OBJECT_CLASS_CODE: TAbmesFloatField;
    qryPlannedStoreDealsPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    qryDealsDOC_BRANCH_CODE: TAbmesFloatField;
    qryDealsDOC_CODE: TAbmesFloatField;
    qryMovementsSD_HAS_DOCUMENTATION: TAbmesFloatField;
    qryMovementsSD_DOC_BRANCH_CODE: TAbmesFloatField;
    qryMovementsSD_DOC_CODE: TAbmesFloatField;
    qryDealsHAS_DOC_ITEMS: TAbmesFloatField;
    prvOutStoreDealsExport: TDataSetProvider;
    qryOutStoreDealsExport: TAbmesSQLQuery;
    qryOutStoreDealsExportSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOutStoreDealsExportSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    qryOutStoreDealsExportSTORE_NO: TAbmesFloatField;
    qryOutStoreDealsExportSTORE_DEAL_NO_IN_STORE: TAbmesFloatField;
    qryOutStoreDealsExportSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qryOutStoreDealsExportSALE_TYPE_EXPORT_NO: TAbmesFloatField;
    qryOutStoreDealsExportSALE_TYPE_EXPORT_NO_2: TAbmesFloatField;
    qryOutStoreDealsExportSALE_NO: TAbmesFloatField;
    qryOutStoreDealsExportPRODUCT_NO: TAbmesFloatField;
    qryOutStoreDealsExportACCOUNT_MEASURE_EXPORT_NO: TAbmesFloatField;
    qryOutStoreDealsExportACCOUNT_QUANTITY: TAbmesFloatField;
    prvExportStores: TDataSetProvider;
    qryExportStores: TAbmesSQLQuery;
    qryExportStoresSTORE_CODE: TAbmesFloatField;
    qryExportStoresSTORE_NAME: TAbmesWideStringField;
    qryExportStoresSTORE_IDENTIFIER: TAbmesWideStringField;
    qryBOIOrderObjectCustomIDBOI_ORDER_CODE: TAbmesFloatField;
    qryOutStoreDealsExportDOCUMENT_TYPE_NO: TAbmesFloatField;
    qrySaleOrderID: TAbmesSQLQuery;
    qrySaleOrderIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrderIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    prvSaleOrderID: TDataSetProvider;
    prvSaleOrderCustomID: TDataSetProvider;
    qrySaleOrderCustomID: TAbmesSQLQuery;
    qrySaleOrderCustomIDREQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySaleOrderCustomIDREQUEST_NO: TAbmesFloatField;
    qrySaleOrderCustomIDREQUEST_LINE_NO: TAbmesFloatField;
    shActivePSDCondition: TJvStrHolder;
    mshStoreDealsBndProcessCondition: TJvMultiStringHolder;
    qryFilteredProcesses: TAbmesSQLQuery;
    prvFilteredProcesses: TDataSetProvider;
    qryFilteredProcessesPROCESS_CODE: TAbmesFloatField;
    qryFilteredProcessesPROCESS_NO: TAbmesFloatField;
    qryFilteredProcessesPROCESS_ABBREV: TAbmesWideStringField;
    qryFilteredProcessesPROCESS_NAME: TAbmesWideStringField;
    qryFilteredProcessesIS_INBOUND_PROCESS: TAbmesFloatField;
    qryFilteredProcessesIS_OUTBOUND_PROCESS: TAbmesFloatField;
    qrySaleShipmentCustomIDSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleShipmentCustomIDSALE_OBJECT_CODE: TAbmesFloatField;
    qrySaleShipmentCustomIDSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleShipmentCustomIDSALE_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleCustomIDSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleCustomIDSALE_OBJECT_CODE: TAbmesFloatField;
    qrySaleCustomIDSALE_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleCustomIDPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleCustomIDIS_WASTE_COMPENSATOR: TAbmesFloatField;
    qryDeliveryCustomIDDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qryDeliveryCustomIDDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryCustomIDDCD_OBJECT_CODE: TAbmesFloatField;
    qryMLLCustomIDSALE_TYPE_ABBREV: TAbmesWideStringField;
    qryMLLCustomIDPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryMLLCustomIDIS_WASTE_COMPENSATOR: TAbmesFloatField;
    qryMLLCustomIDML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMLLCustomIDML_OBJECT_CODE: TAbmesFloatField;
    qryMLLCustomIDMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMLLCustomIDMLL_OBJECT_CODE: TAbmesFloatField;
    qryMLMSOperationCustomIDSALE_TYPE_ABBREV: TAbmesWideStringField;
    qryMLMSOperationCustomIDPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryMLMSOperationCustomIDIS_WASTE_COMPENSATOR: TAbmesFloatField;
    qryMLMSOperationCustomIDML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationCustomIDML_OBJECT_CODE: TAbmesFloatField;
    qryMLMSOperationCustomIDMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationCustomIDMLL_OBJECT_CODE: TAbmesFloatField;
    qryMLMSOperationCustomIDMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationCustomIDMLMS_OBJECT_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionCustomIDDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionCustomIDDCD_OBJECT_CODE: TAbmesFloatField;
    qryBOIOrderObjectCustomIDBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    qryBOIOrderObjectCustomIDBUDGET_ORDER_CLASS_ABBREV: TAbmesWideStringField;
    qryMLLCustomIDIS_WASTE_FORK: TAbmesFloatField;
    qryMLMSOperationCustomIDIS_WASTE_FORK: TAbmesFloatField;
    qryDeficitCoverDecisionCustomIDDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleCustomIDSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySaleShipmentCustomIDCLIENT_COMPANY_NAME: TAbmesWideStringField;
    qryDeliveryCustomIDVENDOR_COMPANY_NAME: TAbmesWideStringField;
    qryPlannedStoreDealsPSD_BRANCH_ID: TAbmesFloatField;
    qryPlannedStoreDealsMLL_NOTES: TAbmesWideStringField;
    qryPlannedStoreDealsDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryPlannedStoreDealsDETAIL_TECH_COMPLETED_QTY: TAbmesFloatField;
    qryPlannedStoreDealsDETAIL_TECH_INCOMPLETED_QTY: TAbmesFloatField;
    qryMovementsACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qryDeliveryCustomIDINVOICE_NO: TAbmesFloatField;
    qryDeliveryCustomIDINVOICE_ABBREV: TAbmesWideStringField;
    qryDeliveryCustomIDIS_PROFORM_INVOICE: TAbmesFloatField;
    qryDeliveryCustomIDINVOICE_DATE: TAbmesSQLTimeStampField;
    qryMovementsHAS_BND_SD: TAbmesFloatField;
    qryDeliveryCustomIDDELIVERY_TYPE_ABBREV: TAbmesWideStringField;
    qryFinOrderLineProcessObjectID: TAbmesSQLQuery;
    qryFinOrderLineProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryFinOrderLineProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    prvFinOrderLineProcessObjectID: TDataSetProvider;
    qryFinOrderLineProcessObjectCustomID: TAbmesSQLQuery;
    prvFinOrderLineProcessObjectCustomID: TDataSetProvider;
    qryFinOrderLineProcessObjectCustomIDFIN_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryFinOrderLineProcessObjectCustomIDFIN_ORDER_CODE: TAbmesFloatField;
    qryFinOrderLineProcessObjectCustomIDFIN_ORDER_NO: TAbmesFloatField;
    qryFinOrderLineProcessObjectCustomIDFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField;
    qryFinOrderLineProcessObjectCustomIDFIN_MODEL_LINE_NO: TAbmesFloatField;
    qryFinOrderLineProcessObjectCustomIDPARTNER_CODE: TAbmesFloatField;
    qryFinOrderLineProcessObjectCustomIDBASE_DATE: TAbmesSQLTimeStampField;
    qryFinOrderLineProcessObjectCustomIDHAS_DOCUMENT: TAbmesFloatField;
    qryFinOrderLineProcessObjectCustomIDDOCUMENT_IDENTIFIER: TAbmesWideStringField;
    qryFinOrderLineProcessObjectCustomIDSALE_ID: TAbmesWideStringField;
    qryFinOrderLineProcessObjectCustomIDDELIVERY_ID: TAbmesWideStringField;
    qryFinOrderLineProcessObjectCustomIDRFML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryFinOrderLineProcessObjectCustomIDRFML_OBJECT_CODE: TAbmesFloatField;
    qryMovementsRFML_BND_OBJECT_ID: TAbmesWideStringField;
    qryMovementsRFML_PARTNER_SHORT_NAME: TAbmesWideStringField;
    qryMovementsRFML_QUANTITY: TAbmesFloatField;
    qryPlannedStoreDealsRFML_BND_OBJECT_ID: TAbmesWideStringField;
    qryPlannedStoreDealsRFML_PARTNER_SHORT_NAME: TAbmesWideStringField;
    qryPlannedStoreDealsRFML_QUANTITY: TAbmesFloatField;
    qryBOIOrderObjectCustomIDBUDGET_ORDER_PRODUCT_CODE: TAbmesFloatField;
    qryBOIOrderObjectCustomIDBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField;
    qryBOIOrderObjectIDBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    qryMovementsSALE_TOTAL_PRICE: TAbmesFloatField;
    qryMLLCustomIDPROJECT_PRODUCT_CODE: TAbmesFloatField;
    qrySaleCustomIDPROJECT_PRODUCT_CODE: TAbmesFloatField;
    qryBOIOrderObjectCustomIDBUDGET_ORDER_CLASS_CODE: TAbmesFloatField;
    qryMLMSOperationCustomIDPROJECT_PRODUCT_CODE: TAbmesFloatField;
    qrySaleRequestLineID: TAbmesSQLQuery;
    prvSaleRequestLineID: TDataSetProvider;
    qrySaleRequestLineCustomID: TAbmesSQLQuery;
    prvSaleRequestLineCustomID: TDataSetProvider;
    qrySaleRequestLineIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestLineIDPROCESS_OBJECT_CODE: TAbmesFloatField;
    qrySaleRequestLineCustomIDREQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestLineCustomIDREQUEST_NO: TAbmesFloatField;
    qrySaleRequestLineCustomIDREQUEST_LINE_NO: TAbmesFloatField;
    qrySaleRequestLineCustomIDSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    qrySaleCustomIDHAS_MATERIAL_LIST: TAbmesFloatField;
    qrySaleShipmentCustomIDSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySaleShipmentCustomIDREQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySaleShipmentCustomIDREQUEST_NO: TAbmesFloatField;
    qrySaleShipmentCustomIDREQUEST_LINE_NO: TAbmesFloatField;
    qrySaleRequestLineCustomIDSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestLineCustomIDSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestLineCustomIDSALE_OBJECT_CODE: TAbmesFloatField;
    qryNewStoreDealDefaults: TAbmesSQLQuery;
    prvNewStoreDealDefaults: TDataSetProvider;
    qryNewStoreDealDefaultsBND_PROCESS_CODE: TAbmesFloatField;
    qryNewStoreDealDefaultsBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryNewStoreDealDefaultsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryNewStoreDealDefaultsQUANTITY: TAbmesFloatField;
    qryNewStoreDealDefaultsACCOUNT_QUANTITY: TAbmesFloatField;
    qryNewStoreDealDefaultsPRODUCT_CODE: TAbmesFloatField;
    qryNewStoreDealDefaultsWANTED_QUANTITY: TAbmesFloatField;
    qryNewStoreDealDefaultsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    qryNewStoreDealDefaultsPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    qryGetRFMLStoreDealData: TAbmesSQLQuery;
    qryGetRFMLStoreDealDataWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    qryNewStoreDealDefaultsSTORE_CODE: TAbmesFloatField;
    qryMovementsRFML_DOCUMENT_IDENTIFIER: TAbmesWideStringField;
    qryMovementsRFML_DOCUMENT_DATE: TAbmesSQLTimeStampField;
    qryPlannedStoreDealsRFML_DOCUMENT_IDENTIFIER: TAbmesWideStringField;
    qryPlannedStoreDealsRFML_DOCUMENT_DATE: TAbmesSQLTimeStampField;
    qryGetModelLinePSDDept: TAbmesSQLQuery;
    qryGetModelLinePSDDeptDEPT_CODE: TAbmesFloatField;
    qryMovementsPROJECT_PRODUCT_NAME: TAbmesWideStringField;
    qryMovementsPROJECT_PRODUCT_NO: TAbmesFloatField;
    qryMovementsORG_TASK_PROPOSAL_NO: TAbmesFloatField;
    mshLocalMacroLibrary: TJvMultiStringHolder;
    qryQuantitiesSTORE_HAS_DOC: TAbmesFloatField;
    qryQuantitiesByStoreSTORE_HAS_DOC: TAbmesFloatField;
    qryGetModelProductAndSinglePriceLAST_DEPT_CODE: TAbmesFloatField;
    qryGetBOIOrderStoreDealData: TAbmesSQLQuery;
    qryGetBOIOrderStoreDealDataPRODUCT_CODE: TAbmesFloatField;
    qryGetDeliveryData: TAbmesSQLQuery;
    qryGetDeliveryDataPRODUCT_CODE: TAbmesFloatField;
    qryGetDeliveryDataSINGLE_PRICE: TAbmesFloatField;
    qryGetDeliveryDataCURRENCY_CODE: TAbmesFloatField;
    qryMovementsREQUEST_EMPLOYEE_NO: TAbmesFloatField;
    qryMovementsREQUEST_EMPLOYEE_NAME: TAbmesWideStringField;
    qryMovementsSTORE_EMPLOYEE_NO: TAbmesFloatField;
    qryMovementsSTORE_EMPLOYEE_NAME: TAbmesWideStringField;
    qryMovementsOTHER_EMPLOYEE_NO: TAbmesFloatField;
    qryMovementsOTHER_EMPLOYEE_NAME: TAbmesWideStringField;
    qryPlannedStoreDealsDELIVERY_DOC_BRANCH_CODE: TAbmesFloatField;
    qryPlannedStoreDealsDELIVERY_DOC_CODE: TAbmesFloatField;
    qryPlannedStoreDealsDELIVERY_HAS_DOC_ITEMS: TAbmesFloatField;
    qryMovementsDELIVERY_DOC_BRANCH_CODE: TAbmesFloatField;
    qryMovementsDELIVERY_DOC_CODE: TAbmesFloatField;
    qryMovementsDELIVERY_HAS_DOC_ITEMS: TAbmesFloatField;
    qrySDOutQuantitiesTOTAL_PRICE: TAbmesFloatField;
    qryMovementsBOIO_BUDGET_PRODUCT_NO: TAbmesFloatField;
    qryMovementsBOIO_BUDGET_PRODUCT_NAME: TAbmesWideStringField;
    qryMovementsBND_PROCESS_OBJECT_TYPE_ABBREV: TAbmesWideStringField;
    qryQuantitiesTECH_MEASURE_CODE: TAbmesFloatField;
    qryQuantitiesTECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryQuantitiesTECH_QUANTITY: TAbmesFloatField;
    qryQuantitiesPLAN_TECH_QUANTITY: TAbmesFloatField;
    qryQuantitiesTECH_QUANTITY_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesP_TECH_QUANTITY_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesByStoreTECH_MEASURE_CODE: TAbmesFloatField;
    qryQuantitiesByStoreTECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryQuantitiesByStoreTECH_QUANTITY: TAbmesFloatField;
    qryQuantitiesByStorePLAN_TECH_QUANTITY: TAbmesFloatField;
    qryQuantitiesByStoreTECH_QUANTITY_TOWARDS_RSV: TAbmesFloatField;
    qryQuantitiesByStoreP_TECH_QUANTITY_TOWARDS_RSV: TAbmesFloatField;
    qryPlannedStoreDealsCOMPLETED_TECH_QUANTITY: TAbmesFloatField;
    qryPlannedStoreDealsINCOMPLETED_TECH_QUANTITY: TAbmesFloatField;
    qryPlannedStoreDealsTECH_MEASURE_CODE: TAbmesFloatField;
    qryPlannedStoreDealsTECH_MEASURE_ABBREV: TAbmesWideStringField;
    procedure prvDealsAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvDealsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvPlannedStoreDealBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure qryPlannedStoreDealsBeforeOpen(DataSet: TDataSet);
    procedure qryMovementsBeforeOpen(DataSet: TDataSet);
    procedure qryOldQuantitiesBeforeOpen(DataSet: TDataSet);
    procedure prvQuantitiesBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvDealsBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvDealsAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryDealsAfterProviderStartTransaction(DataSet: TDataSet);
    procedure qryOutStoreDealsExportBeforeOpen(DataSet: TDataSet);
    procedure qryMovementsAfterClose(DataSet: TDataSet);
    procedure qryPlannedStoreDealsAfterClose(DataSet: TDataSet);
    procedure qryQuantitiesBeforeOpen(DataSet: TDataSet);
    procedure qryQuantitiesAfterClose(DataSet: TDataSet);
    procedure qryQuantitiesByStoreBeforeOpen(DataSet: TDataSet);
    procedure qryQuantitiesByStoreAfterClose(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FDocsDelta: Variant;
    procedure InsertStoreDeal(ADataSet: TDataSet; HaveToClearStornoFields: Boolean;
      out StoreDealObjectProcessCode, StoreDealObjectCode: Integer);
    procedure DeleteStoreDeal(StoreDealObjectBranchCode, StoreDealObjectCode: Integer);
    procedure GetPlannedStoreDealID(ADataSet: TDataSet;
      out PlannedSDBranchCode, PlannedSDCode, StoreCode: Integer);
    procedure SetCreateStuffFields(ADataSet: TDataSet);
    procedure SetPlannedStoreDealFields(ADataSet: TDataSet);
    procedure SetParamsWithOldValues(Params: TParams; ADataSet: TDataSet);
    procedure InsertStornoStoreDeal(ADataSet: TDataSet;
      out StoreDealObjectProcessCode, StoreDealObjectCode: Integer);
    procedure CheckCurrencyFixing(ARateDate: TDateTime; ACurrencyCode: Integer);
    function CheckExistsSDWithSameCustomKey(AStoreCode, AStoreDealTypeCode: Integer;
      AStoreDealDate: TDateTime; AStoreDealNo: Integer): Boolean;

    function GetStoreIdentifier(StoreCode: Integer): string;
    function GetStoreDealTypeAbbrev(StoreDealTypeCode: Integer): string;
  protected
    function IsStoreComputerized(AStoreCode: Integer): Boolean;

    function GetNewPlannedStoreDealCode: Integer;
    function GetNewStoreDealNo(StoreCode: Integer; StoreDealDate: TDateTime;
      StoreDealTypeCode: Integer): Integer;
    function VIMProductNodeProp(ProductNodeCode: Integer;
      out AccountMeasureCoef: Double; out MeasureAbbrev,
      AccountMeasureAbbrev: string): Boolean;
    function CanAnnulPlannedStoreDeal(PlannedStoreDealBranchCode,
      PlannedStoreDealCode: Integer): Boolean;
    function GetBoundProcessIdentification(StoreDealObjectBranchCode,
      StoreDealObjectCode: Integer; const AProformAbbrev: string): string;
    procedure GetModelProductAndSinglePrice(SaleObjectBranchCode: Integer; SaleObjectCode: Integer;
      out ProductCode: Integer; out AccountSinglePrice: Double; out LastDeptCode: Integer);
    procedure GetStoreDealOutData(StoreDealObjectBranchCode, StoreDealObjectCode: Integer;
      out ProductCode: Integer; out SinglePrice: Double; out CurrencyCode: Integer);
    function GetModelLineProduct(MllObjectBranchCode: Integer; MllObjectCode: Integer): Integer;
    function GetModelLinePSDDept(AMllObjectBranchCode, AMllObjectCode: Integer): Integer;
    function GetSaleShipmentProduct(ShipmentObjectBranchCode: Integer; ShipmentObjectCode: Integer): Integer;
    function GetSaleManufactureQuantity(SaleObjectBranchCode: Integer; SaleObjectCode: Integer): Double;
    procedure GetRFMLStoreDealData(ABndProcessObjectBranchCode, ABndProcessObjectCode: Integer;
      out AProductCode: Integer);
    procedure GetBOIOrderData(BOIOrderObjectBranchCode: Integer; BOIOrderObjectCode: Integer;
      out ProductCode: Integer);

    procedure SetStoreDealsQueryBndProcessMacros(AQuery: TAbmesSQLQuery; AXMLData: string);

    procedure GetDeliveryData(DeliveryObjectBranchCode: Integer; DeliveryObjectCode: Integer;
                              out ProductCode: Integer; out SinglePrice: Double;
                              out CurrencyCode: Integer);
  end;

type
  IdmStoreProxy = interface(IDBPooledDataModuleProxy)
    function GetNewPlannedStoreDealCode: Integer;
    procedure SetStoreDealsQueryBndProcessMacros(AQuery: TAbmesSQLQuery; AXMLData: string);
  end;

type
  TdmStoreProxy = class(TDBPooledDataModuleProxy, IdmStoreProxy)
  private
    class var FSingleton: TdmStoreProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmStore>;
  strict protected
    property LockedInstance: ISmartLock<TdmStore> read GetLockedInstance;
  protected
    function GetNewPlannedStoreDealCode: Integer;
    procedure SetStoreDealsQueryBndProcessMacros(AQuery: TAbmesSQLQuery; AXMLData: string);
  public
    class property Singleton: TdmStoreProxy read FSingleton;

    function IsStoreComputerized(AStoreCode: Integer): Boolean;

    function GetNewStoreDealNo(
      StoreCode: Integer;
      StoreDealDate: TDateTime;
      StoreDealTypeCode: Integer): Integer;

    function VIMProductNodeProp(
      ProductNodeCode: Integer;
      out AccountMeasureCoef: Double;
      out MeasureAbbrev,
      AccountMeasureAbbrev: string): Boolean;

    function CanAnnulPlannedStoreDeal(
      PlannedStoreDealBranchCode,
      PlannedStoreDealCode: Integer): Boolean;

    function GetBoundProcessIdentification(StoreDealObjectBranchCode,
      StoreDealObjectCode: Integer; const AProformAbbrev: string): string;

    procedure GetModelProductAndSinglePrice(SaleObjectBranchCode: Integer; SaleObjectCode: Integer;
      out ProductCode: Integer; out AccountSinglePrice: Double; out LastDeptCode: Integer);

    procedure GetStoreDealOutData(StoreDealObjectBranchCode, StoreDealObjectCode: Integer;
      out ProductCode: Integer; out SinglePrice: Double; out CurrencyCode: Integer);

    function GetModelLineProduct(MllObjectBranchCode: Integer; MllObjectCode: Integer): Integer;
    function GetModelLinePSDDept(AMllObjectBranchCode, AMllObjectCode: Integer): Integer;

    function GetSaleShipmentProduct(ShipmentObjectBranchCode: Integer; ShipmentObjectCode: Integer): Integer;

    function GetSaleManufactureQuantity(SaleObjectBranchCode: Integer; SaleObjectCode: Integer): Double;

    procedure GetRFMLStoreDealData(ABndProcessObjectBranchCode, ABndProcessObjectCode: Integer;
      out AProductCode: Integer);

    procedure GetBOIOrderData(BOIOrderObjectBranchCode: Integer; BOIOrderObjectCode: Integer;
                              out ProductCode: Integer);

    procedure GetDeliveryData(DeliveryObjectBranchCode: Integer; DeliveryObjectCode: Integer;
                              out ProductCode: Integer; out SinglePrice: Double;
                              out CurrencyCode: Integer);
  end;

implementation

uses
  Variants, uUtils, uProcesses, uDealTypes, uDBPooledDataModuleHelper,
  uProcessObjectIdentifierFormats, uTreeNodes, uSvrUtils, uServerMessageIds,
  uMessageUtils, AbmesClientDataSet, uProducts;

{$R *.DFM}

const
  ioIn = 1;
  ioOut = -1;

{ TdmStoreProxy }

function TdmStoreProxy.GetLockedInstance: ISmartLock<TdmStore>;
begin
  Result:= ISmartLock<TdmStore>(inherited LockedInstance);
end;

function TdmStoreProxy.CanAnnulPlannedStoreDeal(PlannedStoreDealBranchCode,
  PlannedStoreDealCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.CanAnnulPlannedStoreDeal(PlannedStoreDealBranchCode, PlannedStoreDealCode);
end;

procedure TdmStoreProxy.GetBOIOrderData(BOIOrderObjectBranchCode,
  BOIOrderObjectCode: Integer; out ProductCode: Integer);
begin
  LockedInstance.Value.GetBOIOrderData(
    BOIOrderObjectBranchCode, BOIOrderObjectCode, ProductCode);
end;

function TdmStoreProxy.GetBoundProcessIdentification(
  StoreDealObjectBranchCode, StoreDealObjectCode: Integer; const AProformAbbrev: string): string;
begin
  Result:=
    LockedInstance.Value.GetBoundProcessIdentification(StoreDealObjectBranchCode, StoreDealObjectCode, AProformAbbrev);
end;

procedure TdmStoreProxy.GetDeliveryData(DeliveryObjectBranchCode,
  DeliveryObjectCode: Integer; out ProductCode: Integer;
  out SinglePrice: Double; out CurrencyCode: Integer);
begin
  LockedInstance.Value.GetDeliveryData(
    DeliveryObjectBranchCode, DeliveryObjectCode, ProductCode, SinglePrice, CurrencyCode);
end;

function TdmStoreProxy.GetModelLineProduct(MllObjectBranchCode,
  MllObjectCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetModelLineProduct(MllObjectBranchCode, MllObjectCode);
end;

function TdmStoreProxy.GetModelLinePSDDept(AMllObjectBranchCode, AMllObjectCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetModelLinePSDDept(AMllObjectBranchCode, AMllObjectCode);
end;

procedure TdmStoreProxy.GetModelProductAndSinglePrice(SaleObjectBranchCode: Integer; SaleObjectCode: Integer;
  out ProductCode: Integer; out AccountSinglePrice: Double; out LastDeptCode: Integer);
begin
  LockedInstance.Value.GetModelProductAndSinglePrice(SaleObjectBranchCode, SaleObjectCode, ProductCode, AccountSinglePrice, LastDeptCode);
end;

function TdmStoreProxy.GetNewPlannedStoreDealCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewPlannedStoreDealCode;
end;

function TdmStoreProxy.GetNewStoreDealNo(StoreCode: Integer;
  StoreDealDate: TDateTime; StoreDealTypeCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewStoreDealNo(StoreCode, StoreDealDate, StoreDealTypeCode);
end;

procedure TdmStoreProxy.GetRFMLStoreDealData(ABndProcessObjectBranchCode,
  ABndProcessObjectCode: Integer; out AProductCode: Integer);
begin
  LockedInstance.Value.GetRFMLStoreDealData(ABndProcessObjectBranchCode, ABndProcessObjectCode, AProductCode);
end;

function TdmStoreProxy.GetSaleManufactureQuantity(SaleObjectBranchCode,
  SaleObjectCode: Integer): Double;
begin
  Result:= LockedInstance.Value.GetSaleManufactureQuantity(SaleObjectBranchCode, SaleObjectCode);
end;

function TdmStoreProxy.GetSaleShipmentProduct(ShipmentObjectBranchCode,
  ShipmentObjectCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetSaleShipmentProduct(ShipmentObjectBranchCode, ShipmentObjectCode);
end;

procedure TdmStoreProxy.GetStoreDealOutData(StoreDealObjectBranchCode,
  StoreDealObjectCode: Integer; out ProductCode: Integer;
  out SinglePrice: Double; out CurrencyCode: Integer);
begin
  LockedInstance.Value.GetStoreDealOutData(
    StoreDealObjectBranchCode, StoreDealObjectCode, ProductCode, SinglePrice, CurrencyCode);
end;

function TdmStoreProxy.IsStoreComputerized(AStoreCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.IsStoreComputerized(AStoreCode);
end;

procedure TdmStoreProxy.SetStoreDealsQueryBndProcessMacros(AQuery: TAbmesSQLQuery;
  AXMLData: string);
begin
  LockedInstance.Value.SetStoreDealsQueryBndProcessMacros(AQuery, AXMLData);
end;

function TdmStoreProxy.VIMProductNodeProp(ProductNodeCode: Integer;
  out AccountMeasureCoef: Double; out MeasureAbbrev,
  AccountMeasureAbbrev: string): Boolean;
begin
  Result:=
    LockedInstance.Value.VIMProductNodeProp(ProductNodeCode, AccountMeasureCoef, MeasureAbbrev, AccountMeasureAbbrev);
end;

{ TdmStore }

procedure TdmStore.prvDealsBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);

var
  RateDate: TDateTime;
  CurrencyCode: Integer;
  InsertedSDObjectBranchCode: Integer;
  InsertedSDObjectCode: Integer;
begin
  inherited;

  case UpdateKind of
    ukInsert:
      begin
        with DeltaDS do
          begin
            if CheckExistsSDWithSameCustomKey(
               FieldByName('STORE_CODE').NewValue,
               FieldByName('STORE_DEAL_TYPE_CODE').NewValue,
               FieldByName('STORE_DEAL_DATE').NewValue,
               FieldByName('STORE_DEAL_NO').NewValue) then
              begin
                if (DeltaDS.GetOptionalParam('STORE_IS_COMPUTERIZED') = 1) then
                  FieldByName('STORE_DEAL_NO').NewValue:=
                    GetNewStoreDealNo(
                      FieldByName('STORE_CODE').NewValue,
                      FieldByName('STORE_DEAL_DATE').NewValue,
                      FieldByName('STORE_DEAL_TYPE_CODE').NewValue
                    )
                else
                  raise Exception.Create(SStoreDealCustomKeyViolationId);
              end;

            SetCreateStuffFields(DeltaDS);

            if (not VarIsNullOrEmpty(FieldByName('STORE_DEAL_TYPE_CODE').NewValue) and
                 (FieldByName('STORE_DEAL_TYPE_CODE').NewValue = sdtOUT) ) or
               (not VarIsNullOrEmpty(FieldByName('STORE_DEAL_TYPE_CODE').NewValue) and
                 (FieldByName('STORE_DEAL_TYPE_CODE').NewValue = sdtOUT) ) then
              begin
                // pylnene na IN_OUT
                FieldByName('IN_OUT').NewValue:= -1;

                // Davat se bezsmisleni stoinosti na poletata, koito na AfterUpdate shte
                //se preizchisliavat, za da mogat da se zapishat, shtoto sa Required
                FieldByName('CURRENCY_CODE').NewValue:= LoginContext.BaseCurrencyCode;
                FieldByName('TOTAL_PRICE').NewValue:= 0;

                // sledvashtia "if' go e slojil Lubo, shtoto pri pechat na novo teglene ne dava pravilno schet. kol-vo
                // inache si beshe samo FieldByName('ACCOUNT_QUANTITY').NewValue:= 1;
                if VarIsNullOrEmpty(FieldByName('ACCOUNT_QUANTITY').NewValue) then
                  FieldByName('ACCOUNT_QUANTITY').NewValue:= 1;
              end
            else
              FieldByName('IN_OUT').NewValue:= 1;

            CheckCurrencyFixing(FieldByName('STORE_DEAL_DATE').NewValue,
              FieldByName('CURRENCY_CODE').NewValue);
          end;

        InsertStoreDeal(DeltaDS, True,
          InsertedSDObjectBranchCode, InsertedSDObjectCode);
        Applied:= True;
      end;

    ukModify:
      begin
//        Assert(VarIsEmpty(DeltaDS.FieldByName('STORE_CODE').NewValue));

        if (DeltaDS.FieldByName('STORNO_DATE').IsNull) then
          begin
// stornirane S ostavane na ekran -
//1.insertva se nova kato starata sas StornoAlaBala
//2.Starata se update-va (ostava se da se update-ne normalno)
// Hacko> premestih insertvaneto na novata na AfterUpdate
// shtoto ne moje storniranata i tekushtata da sochat 1vremenno kym
// Lubo (19.02.2008)> vurnah go, zashtoto ne moje da stornira sd s MIIO,
// kato mine update-ta iztriva MIIO-to i insert-a na storniranata niama kum kakvo miio da sochi

            InsertStornoStoreDeal(DeltaDS,
              InsertedSDObjectBranchCode, InsertedSDObjectCode);

            DeltaDS.FieldByName('OLD_DEAL_OBJECT_BRANCH_CODE').NewValue:=
              InsertedSDObjectBranchCode;
            DeltaDS.FieldByName('OLD_DEAL_OBJECT_CODE').NewValue:=
              InsertedSDObjectCode;

            // storniranata prodyljava (eventualno) da sochi store_request_items
            // ama tekushtata ne triabva
            DeltaDS.FieldByName('STORE_REQUEST_BRANCH_CODE').NewValue:= Null;
            DeltaDS.FieldByName('STORE_REQUEST_CODE').NewValue:= Null;
            DeltaDS.FieldByName('STORE_REQUEST_ITEM_CODE').NewValue:= Null;

//ako e promenena datata ili valutata - proveriava dali ima curs za denia
            if (not VarIsEmpty(DeltaDS.FieldByName('STORE_DEAL_DATE').NewValue)) or
               (not VarIsEmpty(DeltaDS.FieldByName('CURRENCY_CODE').NewValue))
              then
                begin
                  if VarIsEmpty(DeltaDS.FieldByName('STORE_DEAL_DATE').NewValue) then
                    RateDate:= DeltaDS.FieldByName('STORE_DEAL_DATE').OldValue
                  else
                    RateDate:= DeltaDS.FieldByName('STORE_DEAL_DATE').NewValue;

                  if VarIsEmpty(DeltaDS.FieldByName('CURRENCY_CODE').NewValue) then
                    CurrencyCode:= DeltaDS.FieldByName('CURRENCY_CODE').OldValue
                  else
                    CurrencyCode:= DeltaDS.FieldByName('CURRENCY_CODE').NewValue;

                  CheckCurrencyFixing(RateDate, CurrencyCode);
                end;


            SetCreateStuffFields(DeltaDS);
            SetPlannedStoreDealFields(DeltaDS);
          end
        else
// stornirane BEZ ostavane na ekran -
//1. Insert-va se nova, k' e sashtata kato storniranata
//2. Iztriva se stornirania Deal (za da izpishti ako ima vrazki)
          begin
            InsertStornoStoreDeal(DeltaDS,
              InsertedSDObjectBranchCode, InsertedSDObjectCode);

            DeleteStoreDeal(DeltaDS.FieldByName('STORE_DEAL_OBJECT_BRANCH_CODE').OldValue,
              DeltaDS.FieldByName('STORE_DEAL_OBJECT_CODE').OldValue);

            Applied:= True;
          end;
      end;
  else
    raise Exception.Create('UpdateKind Delete not supported !');
  end;
end;

procedure TdmStore.prvDealsAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;

  with DeltaDS do
    case UpdateKind of
      ukInsert:
        begin
          // Do nothing
        end;

      ukModify:    { pri stornirane na Skladova Operaciia }
        begin
          if (FieldByName('STORNO_DATE').IsNull) then
            begin
              SvrCommon.UpdateProcessObjectIdentifier(
                 GetFieldValue(FieldByName('STORE_DEAL_OBJECT_BRANCH_CODE')),
                 GetFieldValue(FieldByName('STORE_DEAL_OBJECT_CODE')),
                 Format(poifStoreDeal, [
                   GetStoreIdentifier(GetFieldValue(FieldByName('STORE_CODE'))),
                   FormatDateTime('dd-mm-yyyy', GetFieldValue(FieldByName('STORE_DEAL_DATE'))),
                   GetStoreDealTypeAbbrev(GetFieldValue(FieldByName('STORE_DEAL_TYPE_CODE'))),
                   VarToInt(GetFieldValue(FieldByName('STORE_DEAL_NO')))
                 ])
              );
            end;
        end;

      else
        raise Exception.Create('Internal Error - UpdateKind ukDelete not supported!');
    end;
end;

// Sledvashtata procedura zapisva nova skladova operacia i zapisva v out parametrite
//neinia Primary Key

procedure TdmStore.InsertStoreDeal(ADataSet: TDataSet; HaveToClearStornoFields: Boolean;
  out StoreDealObjectProcessCode, StoreDealObjectCode: Integer);
var
  NewProcessObjectBranchCode: Integer;
  NewProcessObjectCode: Integer;
  PlannedSDBranchCode: Integer;
  PlannedSDCode: Integer;
  StoreCode: Integer;
begin
  Assert(Assigned(ADataSet));

  with qryInsertStoreDeal do
    begin
      SetParams(Params, ADataSet);

// Sledvashtite niakolko reda kod sa zaradi tva, che SetParams prenebregva parametri,
//koito zapochvat s OLD_, a nashia parametar si e normalno pole.
//IZVOD: ne krashtavai poleta s imena, koito pochvat s OLD_ !!!
      if (not VarIsNull(ADataSet.FieldByName('OLD_DEAL_OBJECT_CODE').OldValue)) then
        begin
          ParamByName('OLD_DEAL_OBJECT_BRANCH_CODE').AsInteger:=
            ADataSet.FieldByName('OLD_DEAL_OBJECT_BRANCH_CODE').OldValue;
          ParamByName('OLD_DEAL_OBJECT_CODE').AsInteger:=
            ADataSet.FieldByName('OLD_DEAL_OBJECT_CODE').OldValue;
        end;

      if Params.ParamByName('IS_WASTE_BOUND').IsNull then
        Params.ParamByName('IS_WASTE_BOUND').AsInteger:= 0;

      SvrCommon.GetProcessObjectKey(pocStoreDeal,
        NewProcessObjectBranchCode, NewProcessObjectCode);

      // taia funkcia se vika ot provider-a, koito e s poPropogateChanges i clienta ochakva
      // da mu se vyrnat tia poleta, tyi che gi zapomniame
      ADataSet.FieldByName('STORE_DEAL_OBJECT_BRANCH_CODE').NewValue:=
        NewProcessObjectBranchCode;
      ADataSet.FieldByName('STORE_DEAL_OBJECT_CODE').NewValue:=
        NewProcessObjectCode;

      ParamByName('STORE_DEAL_OBJECT_BRANCH_CODE').AsInteger:=
        NewProcessObjectBranchCode;
      ParamByName('STORE_DEAL_OBJECT_CODE').AsInteger:=
        NewProcessObjectCode;

      if HaveToClearStornoFields then
        begin
          ParamByName('STORNO_EMPLOYEE_CODE').Clear;
          ParamByName('STORNO_DATE').Clear;
          ParamByName('STORNO_TIME').Clear;
        end;

//ako se e promenil BND_PROCESS_OBJECT-a i ako ne e obvarzanostta s Planned SD, togava
//gleda ima li PLANNED_STORE_DEAL po tozi PROCESS_OBJECT
      if (not VarIsEmpty(ADataSet.FieldByName('BND_PROCESS_OBJECT_CODE').NewValue)) then
        if (not VarIsNull(ADataSet.FieldByName('BND_PROCESS_OBJECT_CODE').NewValue)) and
           ( (VarIsEmpty(ADataSet.FieldByName('PLANNED_STORE_DEAL_CODE').NewValue) or
            VarIsNull(ADataSet.FieldByName('PLANNED_STORE_DEAL_CODE').NewValue))) then
          begin
            GetPlannedStoreDealID(ADataSet,
              PlannedSDBranchCode, PlannedSDCode, StoreCode);

            if (PlannedSDBranchCode <> 0) then
              begin
                if (StoreCode <> GetFieldValue(ADataSet.FieldByName('STORE_CODE'))) then
                  raise Exception.Create(SPlannedStoreDoesnotMatchId);

                ParamByName('PLANNED_STORE_DEAL_BRANCH_CODE').AsInteger:=
                  PlannedSDBranchCode;
                ParamByName('PLANNED_STORE_DEAL_CODE').AsInteger:=
                  PlannedSDCode;
              end;
          end;

      ExecSQL;

      if not VarIsNullOrEmpty(GetFieldValue(ADataSet.FieldByName('STORNO_EMPLOYEE_CODE'))) then
        SvrCommon.UpdateProcessObjectIdentifier(
           NewProcessObjectBranchCode,
           NewProcessObjectCode,
           Format(poifStornoStoreDeal, [
             GetStoreIdentifier(GetFieldValue(ADataSet.FieldByName('STORE_CODE'))),
             FormatDateTime('dd-mm-yyyy', ADataSet.FieldByName('STORE_DEAL_DATE').OldValue),
             GetStoreDealTypeAbbrev(GetFieldValue(ADataSet.FieldByName('STORE_DEAL_TYPE_CODE'))),
             VarToInt(ADataSet.FieldByName('STORE_DEAL_NO').OldValue),
             FormatDateTime('dd-mm-yyyy', ContextDate),
             FormatDateTime('hh:mm:ss', ContextTime)
           ])
        )
      else
        SvrCommon.UpdateProcessObjectIdentifier(
           NewProcessObjectBranchCode,
           NewProcessObjectCode,
           Format(poifStoreDeal, [
             GetStoreIdentifier(GetFieldValue(ADataSet.FieldByName('STORE_CODE'))),
             FormatDateTime('dd-mm-yyyy', GetFieldValue(ADataSet.FieldByName('STORE_DEAL_DATE'))),
             GetStoreDealTypeAbbrev(GetFieldValue(ADataSet.FieldByName('STORE_DEAL_TYPE_CODE'))),
             VarToInt(GetFieldValue(ADataSet.FieldByName('STORE_DEAL_NO')))
           ])
        );

      StoreDealObjectProcessCode:= NewProcessObjectBranchCode;
      StoreDealObjectCode:= NewProcessObjectCode;
    end;
end;

procedure TdmStore.DataModuleCreate(Sender: TObject);
begin
  RegisterMacroLibrary(mshLocalMacroLibrary);
  inherited;
end;

procedure TdmStore.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  UnregisterMacroLibrary(mshLocalMacroLibrary);
end;

procedure TdmStore.DeleteStoreDeal(StoreDealObjectBranchCode,
  StoreDealObjectCode: Integer);
begin
  with qryUpdSDTempStorno do
    begin
      ParamByName('STORE_DEAL_OBJECT_BRANCH_CODE').AsInteger:=
        StoreDealObjectBranchCode;
      ParamByName('STORE_DEAL_OBJECT_CODE').AsInteger:=
        StoreDealObjectCode;

      ExecSQL;
    end;

  // qry-to pyrwo trie STORE_DEAL i posle PROCESS_OBJECT zashtoto e mahnat cascade-a
  with qryDeleteStoreDeal do
    begin
      ParamByName('STORE_DEAL_OBJECT_BRANCH_CODE').AsInteger:=
        StoreDealObjectBranchCode;
      ParamByName('STORE_DEAL_OBJECT_CODE').AsInteger:=
        StoreDealObjectCode;

      ExecSQL;
    end;
end;

function TdmStore.GetNewPlannedStoreDealCode: Integer;
begin
  with qryNewPlannedStoreDealCode do
    begin
      Open;
      try
        Result:= qryNewPlannedStoreDealCodeNEW_PLANNED_STORE_DEAL_CODE.AsInteger;
      finally
        Close;
      end;
    end;
end;

procedure TdmStore.prvPlannedStoreDealBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
  cDate, cTime: TDateTime;
begin
  inherited;
  Assert(Assigned(SourceDS));
  Assert(Assigned(DeltaDS));

  with DeltaDS do
    if (SourceDS = qryPlannedStoreDeal) then
      begin
        cDate:= ContextDate;
        cTime:= ContextTime;

        FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
        FieldByName('CHANGE_DATE').NewValue:= cDate;
        FieldByName('CHANGE_TIME').NewValue:= cTime;

        //ako e prukliuchena ili anulirana da i se turi timestamp
        if not FieldByName('ANNUL_EMPLOYEE_CODE').IsNull then
          begin
            FieldByName('ANNUL_DATE').NewValue:= cDate;
            FieldByName('ANNUL_TIME').NewValue:= cTime;
          end;

        if not FieldByName('CLOSE_EMPLOYEE_CODE').IsNull then
          begin
            FieldByName('CLOSE_DATE').NewValue:= cDate;
            FieldByName('CLOSE_TIME').NewValue:= cTime;
          end;

        if (UpdateKind = ukInsert) then
          begin
            FieldByName('PLANNED_STORE_DEAL_CODE').NewValue:= GetNewPlannedStoreDealCode;
            FieldByName('CREATE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
            FieldByName('CREATE_DATE').NewValue:= cDate;
            FieldByName('CREATE_TIME').NewValue:= cTime;
          end;
      end;
end;

function TdmStore.GetNewStoreDealNo(StoreCode: Integer;
  StoreDealDate: TDateTime; StoreDealTypeCode: Integer): Integer;
begin
  with qryMaxDealNo do
    begin
      ParamByName('STORE_CODE').AsInteger:= StoreCode;
      ParamByName('STORE_DEAL_TYPE_CODE').AsInteger:= StoreDealTypeCode;
      ParamByName('STORE_DEAL_DATE').AsDateTime:= StoreDealDate;
      Open;
      try
        if (BOF and EOF) then
          Result:= 1
        else
          Result:= qryMaxDealNoMAX_STORE_DEAL_NO.AsInteger + 1;
      finally
        Close;
      end;
    end;
end;

procedure TdmStore.GetPlannedStoreDealID(ADataSet: TDataSet;
  out PlannedSDBranchCode, PlannedSDCode, StoreCode: Integer);
begin
  Assert(Assigned(ADataSet));
  Assert(not (ADataSet.FieldByName('BND_PROCESS_OBJECT_BRANCH_CODE').IsNull and
              ADataSet.FieldByName('BND_PROCESS_OBJECT_CODE').IsNull));

  with qryPlannedStoreDealID do
    begin
      ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').Value:=
        GetFieldValue(ADataSet.FieldByName('BND_PROCESS_OBJECT_BRANCH_CODE'));

      ParamByName('BND_PROCESS_OBJECT_CODE').Value:=
        GetFieldValue(ADataSet.FieldByName('BND_PROCESS_OBJECT_CODE'));

      ParamByName('BND_PROCESS_CODE').Value:=
        GetFieldValue(ADataSet.FieldByName('BND_PROCESS_CODE'));

      ParamByName('IN_OUT').Value:=
        GetFieldValue(ADataSet.FieldByName('IN_OUT'));

      Open;
      try
        if (EOF and BOF) then
          PlannedSDBranchCode:= 0
        else
          begin
            PlannedSDBranchCode:=
              qryPlannedStoreDealIDPLANNED_STORE_DEAL_BRANCH_CODE.AsInteger;
            PlannedSDCode:=
              qryPlannedStoreDealIDPLANNED_STORE_DEAL_CODE.AsInteger;
            StoreCode:=
              qryPlannedStoreDealIDSTORE_CODE.AsInteger;

            Next;
            Assert(EOF, ' There must be only one planned store deal per process object!');
          end;
      finally
        Close;
      end;
    end;
end;

procedure TdmStore.GetRFMLStoreDealData(ABndProcessObjectBranchCode, ABndProcessObjectCode: Integer;
  out AProductCode: Integer);
begin
  qryGetRFMLStoreDealData.ParamByName('RFML_OBJECT_BRANCH_CODE').AsInteger:= ABndProcessObjectBranchCode;
  qryGetRFMLStoreDealData.ParamByName('RFML_OBJECT_CODE').AsInteger:= ABndProcessObjectCode;
  qryGetRFMLStoreDealData.Open;
  try
    AProductCode:= qryGetRFMLStoreDealDataWORK_FINANCIAL_PRODUCT_CODE.AsInteger;
  finally
    qryGetRFMLStoreDealData.Close;
  end;  { try }
end;

procedure TdmStore.SetCreateStuffFields(ADataSet: TDataSet);
begin
  Assert(Assigned(ADataSet));

  with ADataSet do
    begin
      FieldByName('CREATE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
      FieldByName('CREATE_DATE').NewValue:= ContextDate;
      FieldByName('CREATE_TIME').NewValue:= ContextTime;
    end;
end;

procedure TdmStore.SetParamsWithOldValues(Params: TParams;
  ADataSet: TDataSet);
var
  I: Integer;
  Param: TParam;
  PName: string;
  Field: TField;
begin
  Assert(Assigned(Params));
  Assert(Assigned(ADataSet));

  for I:= 0 to Params.Count - 1 do
    begin
      Param:= Params[I];

      PName:= Param.Name;

      Field:= ADataSet.FindField(PName);
      if not Assigned(Field) then
        Continue;

      Param.DataType:= Field.DataType;

      Param.Value:= Field.OldValue;
    end;
end;

procedure TdmStore.InsertStornoStoreDeal(ADataSet: TDataSet;
  out StoreDealObjectProcessCode, StoreDealObjectCode: Integer);
var
  NewProcessObjectBranchCode: Integer;
  NewProcessObjectCode: Integer;
begin
  Assert(Assigned(ADataSet));

  with qryInsertStoreDeal do
    begin
      SetParamsWithOldValues(Params, ADataSet);

      if Params.ParamByName('IS_WASTE_BOUND').IsNull then
        Params.ParamByName('IS_WASTE_BOUND').AsInteger:= 0;

      ParamByName('STORNO_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
      ParamByName('STORNO_DATE').AsDateTime:= ContextDate;
      ParamByName('STORNO_TIME').AsDateTime:= ContextTime;

      SvrCommon.GetProcessObjectKey(pocStoreDeal,
        NewProcessObjectBranchCode, NewProcessObjectCode);


      ParamByName('STORE_DEAL_OBJECT_BRANCH_CODE').Asinteger:=
        NewProcessObjectBranchCode;
      ParamByName('STORE_DEAL_OBJECT_CODE').Asinteger:=
        NewProcessObjectCode;

      ExecSQL;

      SvrCommon.UpdateProcessObjectIdentifier(
         NewProcessObjectBranchCode,
         NewProcessObjectCode,
         Format(poifStornoStoreDeal, [
           GetStoreIdentifier(GetFieldValue(ADataSet.FieldByName('STORE_CODE'))),
           FormatDateTime('dd-mm-yyyy', ADataSet.FieldByName('STORE_DEAL_DATE').OldValue),
           GetStoreDealTypeAbbrev(GetFieldValue(ADataSet.FieldByName('STORE_DEAL_TYPE_CODE'))),
           VarToInt(ADataSet.FieldByName('STORE_DEAL_NO').OldValue),
           FormatDateTime('dd-mm-yyyy', ContextDate),
           FormatDateTime('hh:mm:ss', ContextTime)
         ])
      );

      StoreDealObjectProcessCode:= NewProcessObjectBranchCode;
      StoreDealObjectCode:= NewProcessObjectCode;
    end;
end;

procedure TdmStore.SetPlannedStoreDealFields(ADataSet: TDataSet);
var
  PlannedSDBranchCode, PlannedSDCode, StoreCode: Integer;
begin
//ako se e promenil BND_PROCESS_OBJECT-a i ako ne e obvarzanostta s Planned SD, togava
//gleda ima li PLANNED_STORE_DEAL po tozi PROCESS_OBJECT

  with ADataSet do
    begin
      if ((not VarIsEmpty(ADataSet.FieldByName('BND_PROCESS_OBJECT_CODE').NewValue)) and
          VarIsEmpty(ADataSet.FieldByName('PLANNED_STORE_DEAL_BRANCH_CODE').NewValue)) then
        if (VarIsNull(ADataSet.FieldByName('BND_PROCESS_OBJECT_CODE').NewValue)) then
          begin
            FieldByName('PLANNED_STORE_DEAL_BRANCH_CODE').NewValue:= Null;
            FieldByName('PLANNED_STORE_DEAL_CODE').NewValue:= Null;
          end
        else
          begin
            GetPlannedStoreDealID(ADataSet,
              PlannedSDBranchCode, PlannedSDCode, StoreCode);

            if (PlannedSDBranchCode <> 0) then
              begin
                if (StoreCode <> GetFieldValue(ADataSet.FieldByName('STORE_CODE'))) then
                  raise Exception.Create(SPlannedStoreDoesnotMatchId);

                FieldByName('PLANNED_STORE_DEAL_BRANCH_CODE').NewValue:=
                  PlannedSDBranchCode;
                FieldByName('PLANNED_STORE_DEAL_CODE').NewValue:=
                  PlannedSDCode;
              end
            else
              begin
                FieldByName('PLANNED_STORE_DEAL_BRANCH_CODE').NewValue:= Null;
                FieldByName('PLANNED_STORE_DEAL_CODE').NewValue:= Null;
              end;
          end;
    end;
end;

procedure TdmStore.SetStoreDealsQueryBndProcessMacros(AQuery: TAbmesSQLQuery; AXMLData: string);

  procedure FakeApplyMacroLibrary(
    AMacroLibrary: TJvMultiStringHolder; AQuery: TAbmesSQLQuery);
  var
    i: Integer;
    LibraryMacroName: string;
  begin
    for i:= 0 to AMacroLibrary.MultipleStrings.Count - 1 do
      begin
        LibraryMacroName:= AMacroLibrary.MultipleStrings.Items[i].Name;
        ApplyMacro(LibraryMacroName, '(0=0)', AQuery);
      end;  { for }
  end;

const
  StoreDealsBndProcessParams: array[1..51] of TParamDataType = (
    (ParamName: 'BND_PROCESS_CODE'; DataType: ftFloat),
    (ParamName: 'SALE_DEAL_TYPE_CODE'; DataType: ftFloat),
    (ParamName: 'SALE_BRANCH_CODE'; DataType: ftFloat),
    (ParamName: 'SALE_NO'; DataType: ftFloat),
    (ParamName: 'SALE_TYPE_CODE'; DataType: ftFloat),
    (ParamName: 'SALE_SHIPMENT_NO'; DataType: ftFloat),
    (ParamName: 'CLIENT_COMPANY_CODE'; DataType: ftFloat),
    (ParamName: 'PRODUCTION_ORDER_TYPE_CODE'; DataType: ftFloat),
    (ParamName: 'IS_WASTE_COMPENSATOR_STATUS'; DataType: ftFloat),
    (ParamName: 'NO_AS_TEXT'; DataType: ftWideString),
    (ParamName: 'FORK_NO'; DataType: ftFloat),
    (ParamName: 'IS_WASTE_FORK_STATUS'; DataType: ftFloat),
    (ParamName: 'ML_MODEL_STAGE_NO'; DataType: ftFloat),
    (ParamName: 'MLMS_OPERATION_NO'; DataType: ftFloat),
    (ParamName: 'MLMS_OPERATION_VARIANT_NO'; DataType: ftFloat),
    (ParamName: 'DELIVERY_DEAL_TYPE_CODE'; DataType: ftFloat),
    (ParamName: 'DCD_BRANCH_CODE'; DataType: ftFloat),
    (ParamName: 'DCD_CODE'; DataType: ftFloat),
    (ParamName: 'DELIVERY_PROJECT_CODE'; DataType: ftFloat),
    (ParamName: 'DELIVERY_TYPE_CODE'; DataType: ftFloat),
    (ParamName: 'VENDOR_COMPANY_CODE'; DataType: ftFloat),
    (ParamName: 'INVOICE_NO'; DataType: ftFloat),
    (ParamName: 'INVOICE_ABBREV'; DataType: ftWideString),
    (ParamName: 'INVOICE_DATE'; DataType: ftDateTime),
    (ParamName: 'IS_PROFORM_INVOICE_STATUS'; DataType: ftFloat),
    (ParamName: 'OTHER_STORE_DEAL_STORE_CODE'; DataType: ftFloat),
    (ParamName: 'OTHER_STORE_DEAL_DATE'; DataType: ftDateTime),
    (ParamName: 'OTHER_STORE_DEAL_NO'; DataType: ftFloat),
    (ParamName: 'BUDGET_ORDER_CLASS_CODE'; DataType: ftFloat),
    (ParamName: 'BUDGET_ORDER_BRANCH_CODE'; DataType: ftFloat),
    (ParamName: 'BUDGET_ORDER_CODE'; DataType: ftFloat),
    (ParamName: 'BUDGET_ORDER_ITEM_CODE'; DataType: ftFloat),
    (ParamName: 'BOI_ORDER_CODE'; DataType: ftFloat),
    (ParamName: 'FIN_ORDER_BRANCH_CODE'; DataType: ftFloat),
    (ParamName: 'FIN_ORDER_NO'; DataType: ftFloat),
    (ParamName: 'FIN_MODEL_LINE_TYPE_CODE'; DataType: ftFloat),
    (ParamName: 'FIN_MODEL_LINE_NO'; DataType: ftFloat),
    (ParamName: 'PARTNER_CODE'; DataType: ftFloat),
    (ParamName: 'BASE_DATE'; DataType: ftDateTime),
    (ParamName: 'DOCUMENT_IDENTIFIER_STATUS'; DataType: ftFloat),
    (ParamName: 'DOCUMENT_IDENTIFIER'; DataType: ftWideString),
    (ParamName: 'SALE_GROUP_BRANCH_CODE'; DataType: ftFloat),
    (ParamName: 'SALE_GROUP_CODE'; DataType: ftFloat),
    (ParamName: 'BUDGET_ORDER_ITEM_TYPE_CODE'; DataType: ftFloat),
    (ParamName: 'BUDGET_ORDER_PRODUCT_CODE'; DataType: ftFloat),
    (ParamName: 'PROJECT_PRODUCT_CODE'; DataType: ftFloat),
    (ParamName: 'ORG_TASK_PROPOSAL_STATE_CODE'; DataType: ftFloat),
    (ParamName: 'REQUEST_BRANCH_CODE'; DataType: ftFloat),
    (ParamName: 'REQUEST_NO'; DataType: ftFloat),
    (ParamName: 'REQUEST_LINE_NO'; DataType: ftFloat),
    (ParamName: 'FIN_CLASS_CODE'; DataType: ftFloat)
  );

var
  cdsParams: TAbmesClientDataSet;
begin
  if (AXMLData <> '') then
    ApplyMacroLibrary(mshStoreDealsBndProcessCondition, AQuery)
  else
    FakeApplyMacroLibrary(mshStoreDealsBndProcessCondition, AQuery);

  AQuery.RescanParams;

  if (AXMLData <> '') then
    begin
      SetParamDataTypes(AQuery.Params, StoreDealsBndProcessParams);

      cdsParams:= TAbmesClientDataSet.Create(Self);
      try
        cdsParams.XMLData:= AXMLData;
        try
          SetParams(AQuery.Params, cdsParams);
        finally
          cdsParams.Close;
        end;  { try }
      finally
        FreeAndNil(cdsParams);
      end;  { try }

      ProcessNoParamBeforeQueryOpen(AQuery.ParamByName('NO_AS_TEXT'));
    end;  { if }
end;

// Sledvashtata procedura proveriava dali ima vaveden kurs na dadena valuta za dadena data
//i ako niama vdiga Exception.

procedure TdmStore.CheckCurrencyFixing(ARateDate: TDateTime;
  ACurrencyCode: Integer);
begin
  Assert(not VarIsEmpty(ARateDate));
  Assert(not VarIsEmpty(ACurrencyCode));

  with qryCheckCurrencyFixing do
    begin
      ParamByName('RATE_DATE').AsDateTime:= ARateDate;
      ParamByName('CURRENCY_CODE').AsInteger:= ACurrencyCode;
      Open;
      try
        if (BOF and EOF) then
          if (ACurrencyCode = LoginContext.BaseCurrencyCode) then
            raise Exception.Create(SNoBaseCurrencyRateId + '(' +
              'Currency:s=' + InternalEncodeString(LoginContext.BaseCurrencyAbbrev) + ')')
          else
            raise Exception.Create(SNoCurrencyRateId);
      finally
        Close;
      end;   { try }
    end;
end;

// Sledvashtata procedura proveriava dali ima vavedena skladova operacia s dadenia
//custom-ski kliuch i ako nemeri takava vdiga Exception.

function TdmStore.CheckExistsSDWithSameCustomKey(AStoreCode,
  AStoreDealTypeCode: Integer; AStoreDealDate: TDateTime;
  AStoreDealNo: Integer): Boolean;
begin
  with qryStoreDealID do
    begin
      ParamByName('STORE_CODE').AsInteger:= AStoreCode;
      ParamByName('STORE_DEAL_TYPE_CODE').AsInteger:= AStoreDealTypeCode;
      ParamByName('STORE_DEAL_DATE').AsDateTime:= AStoreDealDate;
      ParamByName('STORE_DEAL_NO').AsInteger:= AStoreDealNo;
      Open;
      try
        Result:= not (BOF and EOF);
      finally
        Close;
      end;   { try }
    end;
end;

function TdmStore.VIMProductNodeProp(ProductNodeCode: Integer;
  out AccountMeasureCoef: Double; out MeasureAbbrev,
  AccountMeasureAbbrev: string): Boolean;
begin
  with qryGetProductNodeProp do
    begin
      ParamByName('PRODUCT_CODE').AsInteger:= ProductNodeCode;

      Open;
      try
        Result:= not FieldByName('MEASURE_CODE').IsNull;
        AccountMeasureCoef:= FieldByName('ACCOUNT_MEASURE_COEF').AsFloat;
        MeasureAbbrev:= FieldByName('MEASURE_ABBREV').AsString;
        AccountMeasureAbbrev:= FieldByName('ACCOUNT_MEASURE_ABBREV').AsString;
      finally
        Close;
      end;
    end;
end;

function TdmStore.CanAnnulPlannedStoreDeal(PlannedStoreDealBranchCode,
  PlannedStoreDealCode: Integer): Boolean;
begin
  with qryCountNotAnnuledSDForPSD do
    begin
      ParamByName('PLANNED_STORE_DEAL_BRANCH_CODE').AsInteger:= PlannedStoreDealBranchCode;
      ParamByName('PLANNED_STORE_DEAL_CODE').AsInteger:= PlannedStoreDealCode;
      Open;
      try
        Result:= (qryCountNotAnnuledSDForPSDCOUNT_STORE_DEALS.AsInteger = 0);
      finally
        Close;
      end;  { try }
    end;
end;

function TdmStore.GetStoreIdentifier(StoreCode: Integer): string;
begin
  with qryGetStoreIdentifier do
    begin
      ParamByName('STORE_CODE').AsInteger:= StoreCode;
      Open;
      try
        Assert(not Eof, 'TdmStore.GetStoreIdentifier(): not a store');
        Result:= qryGetStoreIdentifierSTORE_IDENTIFIER.AsString;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmStore.IsStoreComputerized(AStoreCode: Integer): Boolean;
begin
  with qryIsStoreComputerized do
    begin
      ParamByName('STORE_CODE').AsInteger:= AStoreCode;
      Open;
      try
        Assert(not Eof, 'TdmStore.IsStoreComputerized(): not a store');
        Result:= qryIsStoreComputerizedIS_COMPUTERIZED.AsBoolean;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TdmStore.GetStoreDealTypeAbbrev(
  StoreDealTypeCode: Integer): string;
begin
  with qryGetStoreDealTypeAbbrev do
    begin
      ParamByName('STORE_DEAL_TYPE_CODE').Value:= StoreDealTypeCode;
      Open;
      try
        Result:= qryGetStoreDealTypeAbbrevSTORE_DEAL_TYPE_ABBREV.AsString;
      finally
        Close;
      end;   { try }
    end;
end;

procedure TdmStore.GetBOIOrderData(BOIOrderObjectBranchCode,
  BOIOrderObjectCode: Integer; out ProductCode: Integer);
begin
  qryGetBOIOrderStoreDealData.ParamByName('BOI_ORDER_OBJECT_BRANCH_CODE').AsInteger:= BOIOrderObjectBranchCode;
  qryGetBOIOrderStoreDealData.ParamByName('BOI_ORDER_OBJECT_CODE').AsInteger:= BOIOrderObjectCode;
  qryGetBOIOrderStoreDealData.Open;
  try
    ProductCode:= qryGetBOIOrderStoreDealDataPRODUCT_CODE.AsInteger;
  finally
    qryGetBOIOrderStoreDealData.Close;
  end;  { try }
end;

function TdmStore.GetBoundProcessIdentification(StoreDealObjectBranchCode,
  StoreDealObjectCode: Integer; const AProformAbbrev: string): string;
begin
  with qryGetBoundProcessIdentificationForStoreDeal do
    begin
      ParamByName('STORE_DEAL_OBJECT_BRANCH_CODE').Value:= StoreDealObjectBranchCode;
      ParamByName('STORE_DEAL_OBJECT_CODE').Value:= StoreDealObjectCode;
      ParamByName('PROFORM_ABBREV').Value:= AProformAbbrev;
      Open;
      try
        Result:=
          qryGetBoundProcessIdentificationForStoreDealBND_PROCESS_IDENTIFICATION.AsString;
      finally
        Close;
      end;   { try }
    end;
end;

procedure TdmStore.GetDeliveryData(DeliveryObjectBranchCode,
  DeliveryObjectCode: Integer; out ProductCode: Integer;
  out SinglePrice: Double; out CurrencyCode: Integer);
begin
  with qryGetDeliveryData do
    begin
      ParamByName('DELIVERY_OBJECT_BRANCH_CODE').AsInteger:= DeliveryObjectBranchCode;
      ParamByName('DELIVERY_OBJECT_CODE').AsInteger:= DeliveryObjectCode;

      Open;
      try
        ProductCode:= qryGetDeliveryDataPRODUCT_CODE.AsInteger;
        SinglePrice:= qryGetDeliveryDataSINGLE_PRICE.AsFloat;
        CurrencyCode:= qryGetDeliveryDataCURRENCY_CODE.AsInteger;
      finally
        Close;
      end;  { try }
    end;
end;

procedure TdmStore.qryPlannedStoreDealsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetStoreDealsQueryBndProcessMacros(
    (DataSet as TAbmesSQLQuery),
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('BND_PROCESS').AsString);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);

  with (DataSet as TAbmesSQLQuery) do
    begin
      ProcessUserParamBeforeQueryOpen(ParamByName('PLAN_EMPLOYEE_CODE'), LoginContext);

      if (ParamByName('IS_INACTIVE').AsInteger = 0) and
         (ParamByName('IS_CLOSED').AsInteger = 0) and
         (ParamByName('IS_ANNULED').AsInteger = 0) then
        MacroByName('IF_IS_ACTIVE').AsString:= shActivePSDCondition.Strings.Text
      else
        MacroByName('IF_IS_ACTIVE').AsString:= '(0=0)';
    end;  { with }
end;

procedure TdmStore.qryMovementsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetStoreDealsQueryBndProcessMacros(
    (DataSet as TAbmesSQLQuery),
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('BND_PROCESS').AsString);

  SetCurrentDeptIfNeeded((DataSet as TAbmesSQLQuery).ParamByName('STORE_REQUEST_BRANCH_CODE'), LoginContext);
  SetCurrentDeptIfNeeded((DataSet as TAbmesSQLQuery).ParamByName('OTHER_DEPT_CODE'), LoginContext);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmStore.qryOldQuantitiesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  with qryQuantities.Params.ParamByName('STORE_CODE') do
    if IsNull then
      AsInteger:= tnRootDeptCode;

  with qryQuantities.Params.ParamByName('PRODUCT_CODE') do
    if IsNull then
      AsInteger:= tnRootProductCode;
end;

procedure TdmStore.GetModelProductAndSinglePrice(SaleObjectBranchCode: Integer; SaleObjectCode: Integer;
  out ProductCode: Integer; out AccountSinglePrice: Double; out LastDeptCode: Integer);
begin
  with qryGetModelProductAndSinglePrice do
    begin
      ParamByName('SALE_OBJECT_BRANCH_CODE').AsInteger:= SaleObjectBranchCode;
      ParamByName('SALE_OBJECT_CODE').AsInteger:= SaleObjectCode;

      Open;
      try
        ProductCode:= qryGetModelProductAndSinglePricePRODUCT_CODE.AsInteger;
        AccountSinglePrice:= qryGetModelProductAndSinglePriceACCOUNT_SINGLE_PRICE.AsFloat;
        LastDeptCode:= qryGetModelProductAndSinglePriceLAST_DEPT_CODE.AsInteger;
      finally
        Close;
      end;  { try }
    end;
end;

procedure TdmStore.GetStoreDealOutData(StoreDealObjectBranchCode,
  StoreDealObjectCode: Integer; out ProductCode: Integer;
  out SinglePrice: Double; out CurrencyCode: Integer);
begin
  with qryGetStoreDealOutData do
    begin
      ParamByName('STORE_DEAL_OBJECT_BRANCH_CODE').AsInteger:= StoreDealObjectBranchCode;
      ParamByName('STORE_DEAL_OBJECT_CODE').AsInteger:= StoreDealObjectCode;

      Open;
      try
        ProductCode:= qryGetStoreDealOutDataPRODUCT_CODE.AsInteger;
        SinglePrice:= qryGetStoreDealOutDataSINGLE_PRICE.AsFloat;
        CurrencyCode:= qryGetStoreDealOutDataCURRENCY_CODE.AsInteger;
      finally
        Close;
      end;  { try }
    end;
end;

function TdmStore.GetModelLineProduct(MllObjectBranchCode, MllObjectCode: Integer): Integer;
begin
  qryGetModelLineProduct.ParamByName('MLL_OBJECT_BRANCH_CODE').AsInteger:= MllObjectBranchCode;
  qryGetModelLineProduct.ParamByName('MLL_OBJECT_CODE').AsInteger:= MllObjectCode;
  Result:= qryGetModelLineProduct.TempOpen/
    function: Integer begin
      Result:= qryGetModelLineProductPRODUCT_CODE.AsInteger;
    end;
end;

function TdmStore.GetModelLinePSDDept(AMllObjectBranchCode, AMllObjectCode: Integer): Integer;
begin
  qryGetModelLinePSDDept.ParamByName('MLL_OBJECT_BRANCH_CODE').AsInteger:= AMllObjectBranchCode;
  qryGetModelLinePSDDept.ParamByName('MLL_OBJECT_CODE').AsInteger:= AMllObjectCode;
  Result:= qryGetModelLinePSDDept.TempOpen/
    function: Integer begin
      Result:= qryGetModelLinePSDDeptDEPT_CODE.AsInteger;
    end;
end;

function TdmStore.GetSaleShipmentProduct(ShipmentObjectBranchCode, ShipmentObjectCode: Integer): Integer;
begin
  qryGetSaleShipmentProduct.ParamByName('SHIPMENT_OBJECT_BRANCH_CODE').AsInteger:= ShipmentObjectBranchCode;
  qryGetSaleShipmentProduct.ParamByName('SHIPMENT_OBJECT_CODE').AsInteger:= ShipmentObjectCode;
  Result:= qryGetSaleShipmentProduct.TempOpen/
    function: Integer begin
      Result:= qryGetSaleShipmentProductPRODUCT_CODE.AsInteger;
    end;
end;

function TdmStore.GetSaleManufactureQuantity(SaleObjectBranchCode,
  SaleObjectCode: Integer): Double;
begin
  with qryGetSaleManufactureQuantity do
    begin
      ParamByName('SALE_OBJECT_BRANCH_CODE').AsInteger:= SaleObjectBranchCode;
      ParamByName('SALE_OBJECT_CODE').AsInteger:= SaleObjectCode;
      Open;
      try
        Result:= qryGetSaleManufactureQuantityMANUFACTURE_QUANTITY.AsFloat;
      finally
        Close;
      end;
    end;
end;

procedure TdmStore.prvQuantitiesBeforeGetRecords(Sender: TObject;
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
    with Sender as TDataSetProvider do
      begin
        if (p.ParamByName('IS_GROUPED_BY_STORE').AsFloat = 1) then
          DataSet:= qryQuantitiesByStore
        else
          DataSet:= qryQuantities;

        IProviderSupportNG(DataSet).PSSetParams(p);
      end;
  finally
    FreeAndNil(p);
  end;  { try }
end;

procedure TdmStore.prvDealsBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmStore.prvDealsAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmStore.qryDealsAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmStore.qryOutStoreDealsExportBeforeOpen(
  DataSet: TDataSet);

  procedure CorrectMacro(AMacro: TParam);
  begin
    with AMacro do
      begin
        AsString:= StringReplace(AsString, '''', '', [rfReplaceAll]);

        if (AsString = '()') then
          AsString:= '(-1)';
      end;  { with }
  end;

begin
  inherited;
  CorrectMacro((DataSet as TAbmesSQLQuery).MacroByName('EXCLUDE_STORE_CODES'));
end;

procedure TdmStore.qryMovementsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SetStoreDealsQueryBndProcessMacros((DataSet as TAbmesSQLQuery), '');
end;

procedure TdmStore.qryPlannedStoreDealsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SetStoreDealsQueryBndProcessMacros((DataSet as TAbmesSQLQuery), '');
end;

procedure TdmStore.qryQuantitiesBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'),
    [(DataSet as TAbmesSQLQuery)],
    1,
    IntToProductClass((DataSet as TAbmesSQLQuery).Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger));

  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'),
    [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmStore.qryQuantitiesAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmStore.qryQuantitiesByStoreBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  
  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'),
    [(DataSet as TAbmesSQLQuery)],
    1,
    IntToProductClass((DataSet as TAbmesSQLQuery).Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger));

  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'),
    [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmStore.qryQuantitiesByStoreAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

initialization
  TdmStoreProxy.FSingleton:= TdmStoreProxy.Create(TdmStore);

finalization
  FreeAndNil(TdmStoreProxy.FSingleton);
end.
