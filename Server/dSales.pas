unit dSales;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, AbmesClientDataSet, JvStringHolder, WideStrings, FMTBcd,
  SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmSales = class(TDBPooledDataModule)
    qryQuickSale: TAbmesSQLQuery;
    prvQuickSale: TDataSetProvider;
    qryGetMaxSaleNo: TAbmesSQLQuery;
    qryGetMaxSaleNoMAX_SALE_NO: TAbmesFloatField;
    qryInsertQuickSaleShipment: TAbmesSQLQuery;
    qryUpdateQuickSaleShipment: TAbmesSQLQuery;
    qryExistQuickSaleShipment: TAbmesSQLQuery;
    qryMaxSaleShipmentNo: TAbmesSQLQuery;
    qryMaxSaleShipmentNoMAX_SALE_SHIPMENT_NO: TAbmesFloatField;
    qryInsertQuickSalePSD: TAbmesSQLQuery;
    qryInsertQuickSaleGroup: TAbmesSQLQuery;
    qryExistQuickSaleGroup: TAbmesSQLQuery;
    qryExistQuickSaleGroupSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryExistQuickSaleGroupSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    qryCanAnnulQuickSale: TAbmesSQLQuery;
    prvSale: TDataSetProvider;
    qrySale: TAbmesSQLQuery;
    qrySaleSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleSALE_OBJECT_CODE: TAbmesFloatField;
    qrySaleSALE_BRANCH_CODE: TAbmesFloatField;
    qrySaleSALE_BRANCH_NO: TAbmesFloatField;
    qrySaleSALE_TYPE_CODE: TAbmesFloatField;
    qrySaleSALE_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleSALE_NO: TAbmesFloatField;
    qrySalePRODUCT_CODE: TAbmesFloatField;
    qrySalePRODUCT_NAME: TAbmesWideStringField;
    qrySaleACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qrySaleMEASURE_ABBREV: TAbmesWideStringField;
    qrySaleOKIDU_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleCLIENT_COMPANY_CODE: TAbmesFloatField;
    qrySaleCLIENT_SHORT_NAME: TAbmesWideStringField;
    qrySaleCLIENT_PRODUCT_SIGNATURE: TAbmesWideStringField;
    qrySaleCREATE_DATE: TAbmesSQLTimeStampField;
    qrySaleSALE_LAST_CHANGE_DATE: TAbmesSQLTimeStampField;
    qrySaleSHIPMENT_STORE_CODE: TAbmesFloatField;
    qrySaleENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qrySaleENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qrySaleMANUFACTURE_QUANTITY: TAbmesFloatField;
    qrySaleMANUFACTURE_DECISION_EXPECTED: TAbmesFloatField;
    qrySaleSHIPMENT_STORE_CURR_QUANTITY: TAbmesFloatField;
    qrySaleLAST_SHIPMENT_STORE_IN_DATE: TAbmesSQLTimeStampField;
    qrySalePRODUCTION_START_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleFIRST_OUT_DATE: TAbmesSQLTimeStampField;
    qrySalePLANNED_INVESTED_SEC_PRICE: TAbmesFloatField;
    qrySaleACCOUNT_INVESTED_SEC_PRICE: TAbmesFloatField;
    qrySaleCLIENT_REQUEST_NO: TAbmesWideStringField;
    qrySaleRECEIVE_PLACE_NAME: TAbmesWideStringField;
    qrySaleIS_VENDOR_TRANSPORT: TAbmesFloatField;
    qrySaleRECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleSHIPMENT_DATE: TAbmesSQLTimeStampField;
    qrySaleCURRENCY_CODE: TAbmesFloatField;
    qrySaleCURRENCY_ABBREV: TAbmesWideStringField;
    qrySaleSINGLE_PRICE: TAbmesFloatField;
    qrySaleTOTAL_PRICE: TAbmesFloatField;
    qrySaleTOTAL_PRICE_IN_SEC_CURRENCY: TAbmesFloatField;
    qrySalePAID_PART: TAbmesFloatField;
    qrySaleSOS_OKIDU: TAbmesFloatField;
    qrySaleFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleFINISH_DATE: TAbmesSQLTimeStampField;
    qrySaleFINISH_TIME: TAbmesSQLTimeStampField;
    qrySaleANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleANNUL_DATE: TAbmesSQLTimeStampField;
    qrySaleANNUL_TIME: TAbmesSQLTimeStampField;
    qrySaleCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleCHANGE_DATE: TAbmesSQLTimeStampField;
    qrySaleCHANGE_TIME: TAbmesSQLTimeStampField;
    qrySaleSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    qrySaleSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySaleREQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySaleREQUEST_NO: TAbmesFloatField;
    qrySaleREQUEST_LINE_NO: TAbmesFloatField;
    qrySaleREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    qrySaleREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    qrySaleOFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleOFFER_SEND_DATE: TAbmesSQLTimeStampField;
    qrySaleOFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleOFFER_ANSWER_DATE: TAbmesSQLTimeStampField;
    qrySaleDECISION_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleDECISION_DATE: TAbmesSQLTimeStampField;
    qrySaleDECISION_TYPE_CODE: TAbmesFloatField;
    qrySaleSINGLE_WEIGHT: TAbmesFloatField;
    qrySaleOUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    qrySaleCL_OFFER_SINGLE_PRICE: TAbmesFloatField;
    qrySaleCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleOUR_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    qrySaleSHIPMENT_TYPE_CODE: TAbmesFloatField;
    qrySaleCUSTOMHOUSE_CODE: TAbmesFloatField;
    qrySaleNOTES: TAbmesWideStringField;
    qrySaleIS_ML_ENTRUSTED: TAbmesFloatField;
    qrySaleIS_ML_NOT_NEEDED: TAbmesFloatField;
    qrySaleCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleCREATE_TIME: TAbmesSQLTimeStampField;
    qrySaleMANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleOUR_OFFER_QUANTITY: TAbmesFloatField;
    qrySaleCL_OFFER_QUANTITY: TAbmesFloatField;
    qrySalePLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    qrySalePLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    qrySalePSD_PRIORITY_CODE: TAbmesFloatField;
    qrySaleShipments: TAbmesSQLQuery;
    qrySaleShipmentsSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleShipmentsSHIPMENT_OBJECT_CODE: TAbmesFloatField;
    qrySaleShipmentsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleShipmentsSALE_OBJECT_CODE: TAbmesFloatField;
    qrySaleShipmentsSALE_SHIPMENT_NO: TAbmesFloatField;
    qrySaleShipmentsPLAN_QUANTITY: TAbmesFloatField;
    qrySaleShipmentsQUANTITY: TAbmesFloatField;
    qrySaleShipmentsSHIPMENT_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentsSHIPMENT_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentsIS_PROFORM_INVOICE: TAbmesFloatField;
    qrySaleShipmentsINVOICE_NO: TAbmesFloatField;
    qrySaleShipmentsINVOICE_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentsINVOICE_CURRENCY_CODE: TAbmesFloatField;
    qrySaleShipmentsINVOICE_SINGLE_PRICE: TAbmesFloatField;
    dsSale: TDataSource;
    qryShipmentPlannedStoreDeals: TAbmesSQLQuery;
    qryShipmentPlannedStoreDealsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    qryShipmentPlannedStoreDealsPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    prvProductionOrder: TDataSetProvider;
    qryProductionOrder: TAbmesSQLQuery;
    qryProductionOrderSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryProductionOrderSALE_OBJECT_CODE: TAbmesFloatField;
    qryProductionOrderSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    qryProductionOrderSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryProductionOrderSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qryProductionOrderREQUEST_BRANCH_CODE: TAbmesFloatField;
    qryProductionOrderREQUEST_NO: TAbmesFloatField;
    qryProductionOrderREQUEST_LINE_NO: TAbmesFloatField;
    qryProductionOrderCLIENT_COMPANY_CODE: TAbmesFloatField;
    qryProductionOrderMANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    qryProductionOrderCLIENT_REQUEST_NO: TAbmesWideStringField;
    qryProductionOrderREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderOFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderOFFER_SEND_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderOFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderOFFER_ANSWER_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderDECISION_PLAN_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderDECISION_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderDECISION_TYPE_CODE: TAbmesFloatField;
    qryProductionOrderPRODUCT_CODE: TAbmesFloatField;
    qryProductionOrderQUANTITY: TAbmesFloatField;
    qryProductionOrderOUR_OFFER_QUANTITY: TAbmesFloatField;
    qryProductionOrderCL_OFFER_QUANTITY: TAbmesFloatField;
    qryProductionOrderMANUFACTURE_QUANTITY: TAbmesFloatField;
    qryProductionOrderMANUFACTURE_DECISION_EXPECTED: TAbmesFloatField;
    qryProductionOrderSINGLE_WEIGHT: TAbmesFloatField;
    qryProductionOrderCURRENCY_CODE: TAbmesFloatField;
    qryProductionOrderSINGLE_PRICE: TAbmesFloatField;
    qryProductionOrderOUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    qryProductionOrderCL_OFFER_SINGLE_PRICE: TAbmesFloatField;
    qryProductionOrderRECEIVE_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderOUR_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    qryProductionOrderIS_VENDOR_TRANSPORT: TAbmesFloatField;
    qryProductionOrderSHIPMENT_TYPE_CODE: TAbmesFloatField;
    qryProductionOrderCUSTOMHOUSE_CODE: TAbmesFloatField;
    qryProductionOrderNOTES: TAbmesWideStringField;
    qryProductionOrderSALE_BRANCH_CODE: TAbmesFloatField;
    qryProductionOrderSALE_NO: TAbmesFloatField;
    qryProductionOrderSALE_TYPE_CODE: TAbmesFloatField;
    qryProductionOrderOKIDU_EMPLOYEE_CODE: TAbmesFloatField;
    qryProductionOrderSOS_OKIDU: TAbmesFloatField;
    qryProductionOrderSHIPMENT_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderSHIPMENT_STORE_CODE: TAbmesFloatField;
    qryProductionOrderENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderIS_ML_ENTRUSTED: TAbmesFloatField;
    qryProductionOrderIS_ML_NOT_NEEDED: TAbmesFloatField;
    qryProductionOrderANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryProductionOrderANNUL_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderANNUL_TIME: TAbmesSQLTimeStampField;
    qryProductionOrderFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    qryProductionOrderFINISH_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderFINISH_TIME: TAbmesSQLTimeStampField;
    qryProductionOrderCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryProductionOrderCREATE_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderCREATE_TIME: TAbmesSQLTimeStampField;
    qryProductionOrderCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryProductionOrderCHANGE_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderCHANGE_TIME: TAbmesSQLTimeStampField;
    qryProductionOrderPRODUCT_NAME: TAbmesWideStringField;
    qryProductionOrderMEASURE_CODE: TAbmesFloatField;
    qryProductionOrderACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryProductionOrderSALE_LAST_CHANGE_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderPLANNED_INVESTED_SEC_PRICE: TAbmesFloatField;
    qryProductionOrderACCOUNT_INVESTED_SEC_PRICE: TAbmesFloatField;
    qryProductionOrderFIRST_OUT_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderSHIPMENT_STORE_CURR_QUANTITY: TAbmesFloatField;
    qryProductionOrderLAST_SHIPMENT_STORE_IN_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderPRODUCTION_START_PLAN_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField;
    qryProductionOrderPLANNED_STORE_DEAL_CODE: TAbmesFloatField;
    qryProductionOrderPSD_PRIORITY_CODE: TAbmesFloatField;
    dsSaleShipments: TDataSource;
    qrySaleQUANTITY: TAbmesFloatField;
    qrySaleShipmentsUPDATE_STATUS: TAbmesFloatField;
    qryInsSaleML: TAbmesSQLQuery;
    qryInsSaleMLL: TAbmesSQLQuery;
    qrySaleSpecLines: TAbmesSQLQuery;
    qryProductionOrderPRODUCT_NO: TAbmesFloatField;
    qrySalePRODUCT_NO: TAbmesFloatField;
    qryCanAnnulQuickSaleCANNOT_ANNUL: TAbmesFloatField;
    qryQuickSaleSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryQuickSaleSALE_OBJECT_CODE: TAbmesFloatField;
    qryQuickSaleSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryQuickSaleSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    qryQuickSaleSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qryQuickSaleCLIENT_COMPANY_CODE: TAbmesFloatField;
    qryQuickSaleREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    qryQuickSalePRODUCT_CODE: TAbmesFloatField;
    qryQuickSaleQUANTITY: TAbmesFloatField;
    qryQuickSaleCURRENCY_CODE: TAbmesFloatField;
    qryQuickSaleSINGLE_PRICE: TAbmesFloatField;
    qryQuickSaleRECEIVE_DATE: TAbmesSQLTimeStampField;
    qryQuickSaleNOTES: TAbmesWideStringField;
    qryQuickSaleSALE_BRANCH_CODE: TAbmesFloatField;
    qryQuickSaleSALE_NO: TAbmesFloatField;
    qryQuickSaleSALE_TYPE_CODE: TAbmesFloatField;
    qryQuickSaleSHIPMENT_DATE: TAbmesSQLTimeStampField;
    qryQuickSaleSHIPMENT_STORE_CODE: TAbmesFloatField;
    qryQuickSaleANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryQuickSaleANNUL_DATE: TAbmesSQLTimeStampField;
    qryQuickSaleANNUL_TIME: TAbmesSQLTimeStampField;
    qryQuickSaleFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    qryQuickSaleFINISH_DATE: TAbmesSQLTimeStampField;
    qryQuickSaleFINISH_TIME: TAbmesSQLTimeStampField;
    qryQuickSaleCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryQuickSaleCREATE_DATE: TAbmesSQLTimeStampField;
    qryQuickSaleCREATE_TIME: TAbmesSQLTimeStampField;
    qryQuickSaleCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryQuickSaleCHANGE_DATE: TAbmesSQLTimeStampField;
    qryQuickSaleCHANGE_TIME: TAbmesSQLTimeStampField;
    qryQuickSaleTOTAL_PRICE: TAbmesFloatField;
    qryQuickSaleTOTAL_PRICE_DEM: TAbmesFloatField;
    qryQuickSalePRODUCT_NAME: TAbmesWideStringField;
    qryQuickSalePRODUCT_MEASURE_CODE: TAbmesFloatField;
    qryQuickSaleINVOICE_NO: TAbmesFloatField;
    qryQuickSaleINVOICE_DATE: TAbmesSQLTimeStampField;
    qryQuickSaleCURRENCY_ABBREV: TAbmesWideStringField;
    qryQuickSaleCORRECTION: TAbmesFloatField;
    qrySaleShipmentsINVOICE_TOTAL_PRICE: TAbmesFloatField;
    qryProductionOrderMODEL_SPEC_VERSION_NO: TAbmesFloatField;
    qryProductionOrderMODEL_SPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryProductionOrderMODEL_CREATE_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderMODEL_ACCOMPLISHMENT_COEF: TAbmesFloatField;
    prvSpecModelVariants: TDataSetProvider;
    qrySpecModelVariants: TAbmesSQLQuery;
    qrySpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    qrySpecModelVariantsSPEC_VERSION_NO: TAbmesFloatField;
    qrySaleMODEL_SPEC_VERSION_NO: TAbmesFloatField;
    qrySaleMODEL_SPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySaleMODEL_CREATE_DATE: TAbmesSQLTimeStampField;
    qrySaleMODEL_ACCOMPLISHMENT_COEF: TAbmesFloatField;
    qrySaleSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySaleSpecLinesSPEC_LINE_CODE: TAbmesFloatField;
    qrySaleSpecLinesNO_1: TAbmesFloatField;
    qrySaleSpecLinesNO_2: TAbmesFloatField;
    qrySaleSpecLinesNO_3: TAbmesFloatField;
    qrySaleSpecLinesNO_4: TAbmesFloatField;
    qrySaleSpecLinesNO_5: TAbmesFloatField;
    qryCheckValidModel: TAbmesSQLQuery;
    qryCheckValidModelSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySaleSpecLinesNO_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qrySaleSpecLinesNO_TECH_MEASURE_COEF: TAbmesFloatField;
    qrySaleSpecLinesPRODUCT_NAME: TAbmesWideStringField;
    qrySaleSpecLinesPRODUCT_NO: TAbmesFloatField;
    dsSaleSpecLines: TDataSource;
    qrySpecLineStages: TAbmesSQLQuery;
    qrySpecLineStagesSPEC_LINE_STAGE_NO: TAbmesFloatField;
    qrySpecLineStagesDEPT_CODE: TAbmesFloatField;
    qryInsMLModelStage: TAbmesSQLQuery;
    qryQuickSalePRODUCT_MARKET_SEC_PRICE: TAbmesFloatField;
    qryQuickSalePRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qrySpecLineStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    qrySpecLineStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    qrySpecLineStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    qrySpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField;
    qrySpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField;
    qrySpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    qrySaleShipmentsRECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentsPLAN_SECONDARY_VALUE_INVESTED: TAbmesFloatField;
    qrySaleShipmentsSECONDARY_VALUE_INVESTED: TAbmesFloatField;
    qrySpecModelVariantsPRODUCTION_WORKDAYS: TAbmesFloatField;
    qrySaleShipmentsPLAN_SECONDARY_CURRENCY_RATE: TAbmesFloatField;
    qrySaleShipmentsREAL_SECONDARY_CURRENCY_RATE: TAbmesFloatField;
    qrySpecModelVariantsENTER_RESULT_STORE_WORKDAYS: TAbmesFloatField;
    qrySpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField;
    qrySaleSpecLinesNO_6: TAbmesFloatField;
    qrySaleSpecLinesNO_7: TAbmesFloatField;
    qrySaleSpecLinesNO_8: TAbmesFloatField;
    qrySaleShipmentsCHECK_QUANTITY: TAbmesFloatField;
    qrySaleREQUEST_SHOW_NO: TAbmesWideStringField;
    qrySaleMANAGER_OKIDU_NAME: TAbmesWideStringField;
    qryProductionOrderMANAGER_OKIDU_RANK: TAbmesFloatField;
    qryProductionOrderSALE_GROUP_BRANCH_CODE: TAbmesFloatField;
    qryProductionOrderSALE_GROUP_CODE: TAbmesFloatField;
    qryQuickSalePRODUCT_NO: TAbmesFloatField;
    qryGetMaxSaleGroupCode: TAbmesSQLQuery;
    qryGetMaxSaleGroupCodeMAX_SALE_GROUP_CODE: TAbmesFloatField;
    qrySaleSINGLE_PRICE_IN_SEC_CURRENCY: TAbmesFloatField;
    qryInsModelStageLinks: TAbmesSQLQuery;
    qrySalePRODUCTION_DEPT_CODE: TAbmesFloatField;
    qrySalePRODUCTION_DEPT_NAME: TAbmesWideStringField;
    qryProductionOrderPRODUCTION_DEPT_CODE: TAbmesFloatField;
    qryProductionOrderPRODUCTION_DEPT_NAME: TAbmesWideStringField;
    qrySaleML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleML_OBJECT_CODE: TAbmesFloatField;
    qryProductionOrderML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryProductionOrderML_OBJECT_CODE: TAbmesFloatField;
    qryInsModelTasks: TAbmesSQLQuery;
    qryProductionOrderPRODUCTION_DEPT_IDENTIFIER: TAbmesWideStringField;
    qrySalePRODUCTION_DEPT_IDENTIFIER: TAbmesWideStringField;
    qrySalePRODUCTION_WORKDAYS: TAbmesFloatField;
    qrySaleENTER_RESULT_STORE_WORKDAYS: TAbmesFloatField;
    qryProductionOrderPRODUCTION_WORKDAYS: TAbmesFloatField;
    qryProductionOrderENTER_RESULT_STORE_WORKDAYS: TAbmesFloatField;
    qrySaleShipmentsSHIPMENT_OUT_QUANTITY: TAbmesFloatField;
    qryInsSimpleSaleGroup: TAbmesSQLQuery;
    qryUpdSimpleSaleGroup: TAbmesSQLQuery;
    qryInsSalePSD: TAbmesSQLQuery;
    qryUpdSalePSD: TAbmesSQLQuery;
    qryDelSalePSD: TAbmesSQLQuery;
    cdsSpecLineStages: TAbmesClientDataSet;
    prvSpecLineStages: TDataSetProvider;
    cdsSpecLineStagesSPEC_LINE_STAGE_NO: TAbmesFloatField;
    cdsSpecLineStagesDEPT_CODE: TAbmesFloatField;
    cdsSpecLineStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsSpecLineStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    cdsSpecLineStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    qrySaleCLIENT_COUNTRY_ABBREV: TAbmesWideStringField;
    qrySpecLineStagesSPEC_LINE_CODE: TAbmesFloatField;
    cdsSpecLineStagesSPEC_LINE_CODE: TAbmesFloatField;
    qrySpecLineStagesSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecLineStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsSpecLineStagesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecLineStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySaleSpecLinesNO_9: TAbmesFloatField;
    qrySaleSpecLinesNO_10: TAbmesFloatField;
    qrySaleSpecLinesNO_11: TAbmesFloatField;
    qrySaleSpecLinesNO_12: TAbmesFloatField;
    qrySaleSpecLinesNO_13: TAbmesFloatField;
    qrySaleSpecLinesNO_14: TAbmesFloatField;
    qrySaleSpecLinesNO_15: TAbmesFloatField;
    qrySaleSpecLinesNO_16: TAbmesFloatField;
    qrySaleSpecLinesNO_17: TAbmesFloatField;
    qrySaleSpecLinesNO_18: TAbmesFloatField;
    qrySaleSpecLinesNO_19: TAbmesFloatField;
    qrySaleSpecLinesNO_20: TAbmesFloatField;
    qrySaleSpecLinesNO_21: TAbmesFloatField;
    qrySaleSpecLinesNO_22: TAbmesFloatField;
    qrySaleSpecLinesNO_23: TAbmesFloatField;
    qrySaleSpecLinesNO_24: TAbmesFloatField;
    qrySaleSpecLinesNO_25: TAbmesFloatField;
    qrySaleSpecLinesNO_AS_TEXT: TAbmesWideStringField;
    qrySaleSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    qrySpecLineStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsSpecLineStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryQuickSaleACCOUNT_QUANTITY: TAbmesFloatField;
    qryQuickSaleACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qryQuickSalePRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qrySaleShipmentsDOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleShipmentsDOC_CODE: TAbmesFloatField;
    qrySaleDOC_BRANCH_CODE: TAbmesFloatField;
    qrySaleDOC_CODE: TAbmesFloatField;
    qrySpecLineStagesDOC_CODE: TAbmesFloatField;
    qrySpecLineStagesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsSpecLineStagesDOC_CODE: TAbmesFloatField;
    cdsSpecLineStagesDOC_BRANCH_CODE: TAbmesFloatField;
    qryDelModel: TAbmesSQLQuery;
    qryInsMLModelStageOperationsDocs: TAbmesSQLQuery;
    qrySpecLineStagesSMVS_TYPE_CODE: TAbmesFloatField;
    cdsSpecLineStagesSMVS_TYPE_CODE: TAbmesFloatField;
    qrySpecLineStagesTRUNC_SMVS_TYPE_COUNT: TAbmesFloatField;
    cdsSpecLineStagesTRUNC_SMVS_TYPE_COUNT: TAbmesFloatField;
    qrySpecLineStagesLAST_STAGE_NO: TAbmesFloatField;
    cdsSpecLineStagesLAST_STAGE_NO: TAbmesFloatField;
    qrySaleSpecLinesDETAIL_IS_PRODUCTION_PRODUCT: TAbmesFloatField;
    qryInsStoreMLModelStage: TAbmesSQLQuery;
    qrySaleSpecLinesDETAIL_CODE: TAbmesFloatField;
    qrySaleSpecLinesDETAIL_NAME: TAbmesWideStringField;
    qrySaleSpecLinesDETAIL_NO: TAbmesFloatField;
    qrySaleSpecLinesD_NO_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qrySaleSpecLinesD_NO_TECH_MEASURE_COEF: TAbmesFloatField;
    qryProductionOrderPRIORITY_CODE: TAbmesFloatField;
    qryProductionOrderTRANSIENT_STATUS_CODE: TAbmesFloatField;
    qryProductionOrderWORKDAYS_TO_EXIST: TAbmesFloatField;
    qryProductionOrderDISASSEMBLY_PSD_BRANCH_CODE: TAbmesFloatField;
    qryProductionOrderDISASSEMBLY_PSD_CODE: TAbmesFloatField;
    qryInsDisasmPSD: TAbmesSQLQuery;
    qryUpdDisasmPSD: TAbmesSQLQuery;
    qryDelDisasmPSD: TAbmesSQLQuery;
    qryProductionOrderMARKET_SINGLE_PRICE: TAbmesFloatField;
    qryProductionOrderDISCOUNT_PERCENT: TAbmesFloatField;
    qryProductionOrderCL_OFFER_QUANTITY_CHG: TAbmesSQLTimeStampField;
    qryProductionOrderQUANTITY_CHG: TAbmesSQLTimeStampField;
    qryProductionOrderCL_OFFER_RECEIVE_DATE_CH: TAbmesSQLTimeStampField;
    qryProductionOrderRECEIVE_DATE_CHG: TAbmesSQLTimeStampField;
    qryProductionOrderDOC_BRANCH_CODE: TAbmesFloatField;
    qryProductionOrderDOC_CODE: TAbmesFloatField;
    qryProductionOrderPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    qryQuickSaleMANUFACTURE_DECISION_EXPECTED: TAbmesFloatField;
    qryQuickSaleTRANSIENT_STATUS_CODE: TAbmesFloatField;
    qryQuickSaleIS_VENDOR_TRANSPORT: TAbmesFloatField;
    qryQuickSaleIS_ML_ENTRUSTED: TAbmesFloatField;
    qryQuickSaleIS_ML_NOT_NEEDED: TAbmesFloatField;
    qryQuickSaleSOS_OKIDU: TAbmesFloatField;
    qrySaleSpecLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qryProductionOrderML_STATE_CODE: TAbmesFloatField;
    qrySaleML_STATE_CODE: TAbmesFloatField;
    qrySpecLineStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    cdsSpecLineStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qrySaleIS_OPERATIONS_MODEL: TAbmesFloatField;
    qryProductionOrderIS_OPERATIONS_MODEL: TAbmesFloatField;
    qryFixPlannedStoreDeals: TAbmesSQLQuery;
    qryUpdateQuickSalePSD: TAbmesSQLQuery;
    qryProductionOrderIS_AUTO_COMPLETIVE: TAbmesFloatField;
    qryProductionOrderIS_FORWARD_AUTO_COMPLETED: TAbmesFloatField;
    qryProductionOrderIS_BACKWARD_AUTO_COMPLETED: TAbmesFloatField;
    qryACCheckStoreQuantities: TAbmesSQLQuery;
    qryACGetModel: TAbmesSQLQuery;
    qryACGetModelML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryACGetModelML_OBJECT_CODE: TAbmesFloatField;
    qryACCheckStoreQuantitiesPRODUCT_CODE: TAbmesFloatField;
    qryACCheckStoreQuantitiesPRODUCT_NAME: TAbmesWideStringField;
    qryACCheckStoreQuantitiesPRODUCT_NO: TAbmesFloatField;
    qryACCheckStoreQuantitiesSTORE_CODE: TAbmesFloatField;
    qryACCheckStoreQuantitiesSTORE_IDENTIFIER: TAbmesWideStringField;
    qryACCheckStoreQuantitiesNEEDED_QUANTITY: TAbmesFloatField;
    qryACCheckStoreQuantitiesSTORE_QUANTITY: TAbmesFloatField;
    qryACGetModelIS_LIMITING: TAbmesFloatField;
    qryACCreateStoreDeals: TAbmesSQLQuery;
    qryACCheckOperations: TAbmesSQLQuery;
    qryACCheckOperationsHAS_NORMAL_OPERATIONS: TAbmesFloatField;
    qryACCreateOperaionMovements: TAbmesSQLQuery;
    qryACCreateOPStoreDeal: TAbmesSQLQuery;
    qryCheckModelStages: TAbmesSQLQuery;
    qryCheckModelStagesHAS_MLL_WITHOUT_STAGES: TAbmesFloatField;
    qryShipmentPlannedStoreDealsPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField;
    qryShipmentPlannedStoreDealsSTORE_DEAL_TYPE_CODE: TAbmesFloatField;
    qryShipmentPlannedStoreDealsPRIORITY_CODE: TAbmesFloatField;
    qryShipmentPlannedStoreDealsIS_PLANNED_MANUALLY: TAbmesFloatField;
    qryShipmentPlannedStoreDealsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryShipmentPlannedStoreDealsBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryShipmentPlannedStoreDealsBND_PROCESS_CODE: TAbmesFloatField;
    qryShipmentPlannedStoreDealsSTORE_CODE: TAbmesFloatField;
    qryShipmentPlannedStoreDealsSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryShipmentPlannedStoreDealsSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField;
    qryShipmentPlannedStoreDealsPRODUCT_CODE: TAbmesFloatField;
    qryShipmentPlannedStoreDealsQUANTITY: TAbmesFloatField;
    qryShipmentPlannedStoreDealsACCOUNT_QUANTITY: TAbmesFloatField;
    qryShipmentPlannedStoreDealsDEPT_CODE: TAbmesFloatField;
    qryShipmentPlannedStoreDealsWORK_ORDER_NO: TAbmesWideStringField;
    qryShipmentPlannedStoreDealsANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryShipmentPlannedStoreDealsANNUL_DATE: TAbmesSQLTimeStampField;
    qryShipmentPlannedStoreDealsANNUL_TIME: TAbmesSQLTimeStampField;
    qryShipmentPlannedStoreDealsCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryShipmentPlannedStoreDealsCLOSE_DATE: TAbmesSQLTimeStampField;
    qryShipmentPlannedStoreDealsCLOSE_TIME: TAbmesSQLTimeStampField;
    qryShipmentPlannedStoreDealsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryShipmentPlannedStoreDealsCREATE_DATE: TAbmesSQLTimeStampField;
    qryShipmentPlannedStoreDealsCREATE_TIME: TAbmesSQLTimeStampField;
    qryShipmentPlannedStoreDealsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryShipmentPlannedStoreDealsCHANGE_DATE: TAbmesSQLTimeStampField;
    qryShipmentPlannedStoreDealsCHANGE_TIME: TAbmesSQLTimeStampField;
    qryShipmentPlannedStoreDealsIN_OUT: TAbmesFloatField;
    qryShipmentPlannedStoreDealsCOMPLETED_QUANTITY: TAbmesFloatField;
    qryShipmentPlannedStoreDealsCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryShipmentPlannedStoreDealsREMAINING_QUANTITY: TAbmesFloatField;
    qryShipmentPlannedStoreDealsREMAINING_ACCOUNT_QUANTITY: TAbmesFloatField;
    qryShipmentPlannedStoreDealsBRANCH_CODE_WHEN_CLOSED: TAbmesFloatField;
    qryShipmentPlannedStoreDealsCODE_WHEN_CLOSED: TAbmesFloatField;
    qryAddShipmentPSD: TAbmesSQLQuery;
    qryUpdShipmentPSD: TAbmesSQLQuery;
    qrySaleShipmentsSHIPMENT_STORE_CODE: TAbmesFloatField;
    qryInactiveProducts: TAbmesSQLQuery;
    qryInactiveProductsPRODUCT_NO: TAbmesFloatField;
    qryInactiveProductsPRODUCT_NAME: TAbmesWideStringField;
    qryProductionOrderOKIDU_RANK: TAbmesFloatField;
    qryProductionOrderSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField;
    qrySaleSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField;
    qrySpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField;
    qrySpecModelVariantsMIN_WORK_QUANTITY: TAbmesFloatField;
    qrySpecModelVariantsMAX_WORK_QUANTITY: TAbmesFloatField;
    qrySpecLineStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    cdsSpecLineStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    qryDeleteSaleShipment: TAbmesSQLQuery;
    qryUpdModelLinePSDs: TAbmesSQLQuery;
    qryQuickSaleCLIENT_COMPANY_NAME: TAbmesWideStringField;
    qryQuickSaleSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField;
    qryProductionOrderWASTING_SALE_OBJ_BRANCH_CODE: TAbmesFloatField;
    qryProductionOrderWASTING_SALE_OBJ_CODE: TAbmesFloatField;
    qryProductionOrderIS_WASTE_COMPENSATING_ORDER: TAbmesFloatField;
    qryProductionOrderMIN_MLL_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderSTART_STAGE_COEF: TAbmesFloatField;
    qryProductionOrderCONSUMER_DEPT_CODE: TAbmesFloatField;
    qryProductionOrderCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderCONSUME_END_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderWASTING_SALE_BRANCH_CODE: TAbmesFloatField;
    qryProductionOrderWASTING_SALE_NO: TAbmesFloatField;
    qryProductionOrderWASTING_ML_OJECT_BRANCH_CODE: TAbmesFloatField;
    qryProductionOrderWASTING_ML_OJECT_CODE: TAbmesFloatField;
    prvSaleAndML: TDataSetProvider;
    qrySaleAndML: TAbmesSQLQuery;
    qrySaleAndMLSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleAndMLSALE_OBJECT_CODE: TAbmesFloatField;
    qrySaleAndMLML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleAndMLML_OBJECT_CODE: TAbmesFloatField;
    qryProductionOrderMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    qryProductionOrderINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    updMLInitialTreatmentWorkdays: TAbmesSQLQuery;
    qryProductionOrderMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField;
    qryProductionOrderMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField;
    qryProductionOrderWASTE_COMPENSATOR_COUNT: TAbmesFloatField;
    qryProductionOrderHAS_WASTE: TAbmesFloatField;
    qryProductionOrderREAL_PRODUCTION_WORKDAYS: TAbmesFloatField;
    qryProductionOrderSTART_AFTER_LIMITING_DAYS: TAbmesFloatField;
    qryProductionOrderMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField;
    qryProductionOrderWORK_PRIORITY_CODE: TAbmesFloatField;
    qrySaleWORK_PRIORITY_CODE: TAbmesFloatField;
    qrySaleMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    qrySalePRIORITY_CODE: TAbmesFloatField;
    qrySalePRIORITY_NO: TAbmesFloatField;
    qrySalePRIORITY_COLOR: TAbmesFloatField;
    qrySalePRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qrySaleMIN_MLL_STORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qrySaleSTART_STAGE_COEF: TAbmesFloatField;
    qrySaleSTART_AFTER_LIMITING_DAYS: TAbmesFloatField;
    qrySaleINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    qrySaleREAL_PRODUCTION_WORKDAYS: TAbmesFloatField;
    qrySaleMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField;
    qrySaleMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField;
    qrySaleMEASURE_CODE: TAbmesFloatField;
    qrySaleMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField;
    qrySaleWASTING_SALE_OBJ_BRANCH_CODE: TAbmesFloatField;
    qrySaleWASTING_SALE_OBJ_CODE: TAbmesFloatField;
    qrySaleIS_WASTE_COMPENSATING_ORDER: TAbmesFloatField;
    qrySaleWASTING_SALE_BRANCH_CODE: TAbmesFloatField;
    qrySaleWASTING_SALE_NO: TAbmesFloatField;
    qrySaleWASTING_ML_OJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleWASTING_ML_OJECT_CODE: TAbmesFloatField;
    qrySaleWASTE_COMPENSATOR_COUNT: TAbmesFloatField;
    qrySaleHAS_WASTE: TAbmesFloatField;
    qrySaleSHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qrySaleShipmentsINVOICE_CURRENCY_FIXING: TAbmesFloatField;
    qrySaleSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleRETURN_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentsLEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField;
    qrySaleShipmentsLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qrySaleShipmentsIMPORT_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentsIMPORT_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentsSHIPMENT_IN_QUANTITY: TAbmesFloatField;
    qrySaleSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    qrySaleIMPORT_DATE: TAbmesSQLTimeStampField;
    qrySaleLEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qrySaleLEASE_DATE_UNIT_NAME: TAbmesWideStringField;
    qrySaleTOTAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField;
    qrySaleIMPORT_QUANTITY_DIFF: TAbmesFloatField;
    qrySaleACCOUNT_QUANTITY: TAbmesFloatField;
    qrySaleShipmentsSHIPMENT_OUT_LAST_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentsSHIPMENT_IN_LAST_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentsRECEIVE_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentsRETURN_PLAN_DATE: TAbmesSQLTimeStampField;
    qryDelSaleShipmentsInPSDs: TAbmesSQLQuery;
    qryFixLeasePSDs: TAbmesSQLQuery;
    qryQuickSaleSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    qrySaleShipmentsSALE_SHIPMENT_STATE_CODE: TAbmesFloatField;
    qryUpdateStageDates: TAbmesSQLQuery;
    qrySaleCLIENT_COMPANY_NO: TAbmesFloatField;
    qrySaleDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleDCD_OBJECT_CODE: TAbmesFloatField;
    qrySaleDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qrySaleBND_DELIVERY_COUNT: TAbmesFloatField;
    qrySalePRP_DOC_BRANCH_CODE: TAbmesFloatField;
    qrySalePRP_DOC_CODE: TAbmesFloatField;
    qrySalePRP_HAS_DOC_ITEMS: TAbmesFloatField;
    qrySaleHAS_PAR_REL_PRODUCT: TAbmesFloatField;
    qrySpecLineStagesROW_ZERO_SMVS_TYPE_COUNT: TAbmesFloatField;
    cdsSpecLineStagesROW_ZERO_SMVS_TYPE_COUNT: TAbmesFloatField;
    qrySaleMANAGER_OKIDU_NO: TAbmesFloatField;
    qrySaleOKIDU_EMPLOYEE_NO: TAbmesFloatField;
    qrySaleCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField;
    qrySaleOKIDU_EMPLOYEE_NAME: TAbmesWideStringField;
    qrySaleCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField;
    qrySaleCONSUME_END_DATE: TAbmesSQLTimeStampField;
    qrySaleTRANSIENT_STATUS_NAME: TAbmesWideStringField;
    qrySaleWORKDAYS_TO_EXIST: TAbmesFloatField;
    qrySaleShipmentsFIN_ORDER_CODE: TAbmesFloatField;
    qrySaleShipmentsFO_EXEC_DEPT_CODE: TAbmesFloatField;
    qrySaleShipmentsFO_PRIORITY_CODE: TAbmesFloatField;
    qrySaleShipmentsFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField;
    qrySaleShipmentsSPEC_FIN_MODEL_CODE: TAbmesFloatField;
    qrySalePRODUCT_CLASS_CODE: TAbmesFloatField;
    qryProductionOrderHAS_FORWARD_START_STORE_DEALS: TAbmesFloatField;
    qryProductionOrderHAS_BACKWARD_START_STORE_DEALS: TAbmesFloatField;
    prvModelDevelopmentTypes: TDataSetProvider;
    qryModelDevelopmentTypes: TAbmesSQLQuery;
    qryModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField;
    qryModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField;
    qryModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_NAME: TAbmesWideStringField;
    qryUpdateModelPsdDepts: TAbmesSQLQuery;
    qrySaleShipmentsFO_BRANCH_CODE: TAbmesFloatField;
    qrySaleShipmentsFO_IS_COMPLETED: TAbmesFloatField;
    qrySaleShipmentsFO_CLOSE_REQUESTED: TAbmesFloatField;
    qrySaleShipmentsINVOICE_BRANCH_CODE: TAbmesFloatField;
    qrySaleShipmentsINVOICE_CODE: TAbmesFloatField;
    qrySaleMARKET_SINGLE_PRICE: TAbmesFloatField;
    qrySaleDISCOUNT_PERCENT: TAbmesFloatField;
    qrySaleShipmentsSHIPMENT_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qrySaleINVOICES_MODIFIED: TAbmesFloatField;
    qrySaleShipmentsFO_STATUS_CODE: TAbmesFloatField;
    qrySaleShipmentsFO_PARTNER_CODE: TAbmesFloatField;
    qrySaleShipmentsCLIENT_REQUEST_NO: TAbmesWideStringField;
    qrySalePRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    qryProductionOrderWASTING_SALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySaleWASTING_SALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySaleAndMLSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySpecModelVariantsNOTES: TAbmesWideStringField;
    qrySpecModelVariantsIS_EST_VARIANT: TAbmesFloatField;
    procedure qrySaleBeforeProviderEndTransaction(DataSet: TDataSet;
      Commit: Boolean);
    procedure prvQuickSaleBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvQuickSaleAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvQuickSaleUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure prvSaleBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvSaleUpdateError(Sender: TObject; DataSet: TCustomClientDataSet;
      E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure prvSaleAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure prvFreeSaleQuantitiesGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvProductionOrderBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure prvProductionOrderAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure prvProductionOrderUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure prvSpecModelVariantsGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvSaleBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvSaleAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qrySaleAfterProviderStartTransaction(DataSet: TDataSet);
    procedure prvProductionOrderBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvProductionOrderAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryProductionOrderAfterProviderStartTransaction(
      DataSet: TDataSet);
  private
    FUpdateDS: TDataSet;
    FDocsDelta: Variant;
    FErrorMsg: string;
    FSaleObjectBranchCode: Integer;
    FSaleDealTypeCode: Integer;
    FSaleObjectCode: Integer;

    procedure AddQuickSaleShipment(SalesDS: TCustomClientDataSet);
    procedure UpdateQuickSaleShipment(SalesDS: TCustomClientDataSet);
    procedure SetQuickSaleShipmentParams(Query: TAbmesSQLQuery;
      SalesDS: TCustomClientDataSet);
    procedure AddQuickSalePlannedStoreDeal(DeltaDS: TCustomClientDataSet);
    procedure UpdateQuickSalePlannedStoreDeal(DeltaDS: TCustomClientDataSet);
    function ExistQuickSaleGroup(DeltaDS: TCustomClientDataSet;
      var SaleGroupObjectBranchCode, SaleGroupObjectCode: Integer): Boolean;
    procedure AddQuickSaleGroup(DeltaDS: TCustomClientDataSet;
      var SaleGroupObjectBranchCode, SaleGroupObjectCode: Integer);
    function QuickSaleGroupParamsHaveChanged(
      DeltaDS: TCustomClientDataSet): Boolean;

    procedure SetSaleShipmentKey(ADataSet: TCustomClientDataSet);
    procedure ClearQuantity(ADataSet: TCustomClientDataSet);
    procedure SaleBeforeUpdateRecord(DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure FixPlannedStoreDeals(DeltaDS: TCustomClientDataSet);
    procedure CreateModelFromSpecModelVariant(const ASaleObjBranchCode, ASaleObjCode, ASpecModelVariantNo: Integer;
      AOperationsModel: Boolean; DeltaDS: TCustomClientDataSet);
    function GetNewSaleGroupCode(BranchCode: Integer): Integer;
    procedure ForwardAutoCompleteModel(DeltaDS: TDataSet);
    procedure BackwardAutoCompleteModel(DeltaDS: TDataSet);
    function AnnulingSale(DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind): Boolean;
    function FinishingSale(DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind): Boolean;
    function IsSettingSaleField(DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; AFieldName: string): Boolean;
  protected
    function GetNewSaleNo(SaleBranchCode: Integer): Integer;
    function QuickSaleCanAnnul(SaleObjectBranchCode,
      SaleObjectCode: Integer): Boolean;
  end;

type
  IdmSalesProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmSalesProxy = class(TDBPooledDataModuleProxy, IdmSalesProxy)
  private
    class var FSingleton: TdmSalesProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmSales>;
  strict protected
    property LockedInstance: ISmartLock<TdmSales> read GetLockedInstance;
  public
    class property Singleton: TdmSalesProxy read FSingleton;

    function GetNewSaleNo(SaleBranchCode: Integer): Integer;
    function QuickSaleCanAnnul(SaleObjectBranchCode, SaleObjectCode: Integer): Boolean;
  end;

implementation

uses
  Variants, uUtils, uSvrUtils, uProcesses, uSaleOrderTypes, uMessageUtils,
  uSaleChangeTypes, uDealTypes, uProcessObjectIdentifierFormats,
  uSpecTypes, uTreeNodes, uProducts, uProductionLevels, uServerMessageIds,
  uDBPooledDataModuleHelper, uSaleDealTypes, Generics.Collections;

const
  MaxNoPos = 25;
  SNotEnoughStoreQuantityProduct = '%-35s %-12s %-8s %10s %10s';

{$R *.DFM}

type
  TMLLNode = class(TObject)
  private
    FMLLObjCode: Integer;
    FMLLObjBranchCode: Integer;
    FLevel: Integer;
  public
    property MLLObjBranchCode: Integer read FMLLObjBranchCode write FMLLObjBranchCode;
    property MLLObjCode: Integer read FMLLObjCode write FMLLObjCode;
    property Level: Integer read FLevel write FLevel;
  end;

{ TdmSalesProxy }

function TdmSalesProxy.GetLockedInstance: ISmartLock<TdmSales>;
begin
  Result:= ISmartLock<TdmSales>(inherited LockedInstance);
end;

function TdmSalesProxy.GetNewSaleNo(SaleBranchCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNewSaleNo(SaleBranchCode);
end;

function TdmSalesProxy.QuickSaleCanAnnul(SaleObjectBranchCode,
  SaleObjectCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.QuickSaleCanAnnul(SaleObjectBranchCode, SaleObjectCode);
end;

{ TdmSales }

procedure TdmSales.prvQuickSaleBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  SaleGroupObjectBranchCode, SaleGroupObjectCode: Integer;
  GroupExists: Boolean;
begin
  inherited;

  SaleBeforeUpdateRecord(DeltaDS, UpdateKind);

  if (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('SALE_DEAL_TYPE_CODE').NewValue:= sdtSale;

  // закачане на бързата продажба към група
  if (UpdateKind = ukInsert) or
     QuickSaleGroupParamsHaveChanged(DeltaDS) then
    begin
      GroupExists:=
        ExistQuickSaleGroup(
          DeltaDS,
          SaleGroupObjectBranchCode,
          SaleGroupObjectCode);

      // ако няма група ще създадем такава
      if not GroupExists then
        AddQuickSaleGroup(
          DeltaDS,
          SaleGroupObjectBranchCode,
          SaleGroupObjectCode);

      with DeltaDS do
        begin
          FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE').NewValue:=
            SaleGroupObjectBranchCode;
          FieldByName('SALE_GROUP_OBJECT_CODE').NewValue:=
            SaleGroupObjectCode;
        end;
    end;
end;

procedure TdmSales.AddQuickSaleShipment(SalesDS: TCustomClientDataSet);
var
  ShipmentObjectBranchCode: Integer;
  ShipmentObjectCode: Integer;
begin
  SetQuickSaleShipmentParams(qryInsertQuickSaleShipment, SalesDS);
  with qryInsertQuickSaleShipment do
    begin
      SvrCommon.GetProcessObjectKey(pocSaleShipment,
        ShipmentObjectBranchCode,ShipmentObjectCode);

      ParamByName('SHIPMENT_OBJECT_BRANCH_CODE').AsInteger:=
        ShipmentObjectBranchCode;
      ParamByName('SHIPMENT_OBJECT_CODE').AsInteger:=
        ShipmentObjectCode;

      ExecSQL;

      if (RowsAffected <> 1) then
        raise Exception.Create(SExpeditionNotInsertedId);
    end;

 SvrCommon.UpdateProcessObjectIdentifier(
    ShipmentObjectBranchCode,
    ShipmentObjectCode,
    Format(poifSaleShipment, [
      SvrDeptsTree.GetNodeNo(
        GetFieldValue(SalesDS.FieldByName('SALE_BRANCH_CODE'))),
      SalesDS.FieldByName('SALE_NO').AsInteger,
      1
    ])
  );
end;

procedure TdmSales.prvQuickSaleAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
var
  QuickSaleShipmentExists: Boolean;
  SaleBranchNo: Real;
  SaleNo: Integer;
begin
  inherited;

  case UpdateKind of
    ukModify:
      begin
        // хвърляне в историята на старата съкратена продажба
        // при редактиране
        if (GetFieldValue(DeltaDS.FieldByName('CORRECTION')) = sctCorrections) then
          begin
            // проверка дали има sale_shipment за тази съкратена продажба
            with qryExistQuickSaleShipment do
              begin
                 ParamByName('SALE_OBJECT_BRANCH_CODE').AsInteger:=
                   GetFieldValue(DeltaDS.FieldByName('SALE_OBJECT_BRANCH_CODE'));
                 ParamByName('SALE_OBJECT_CODE').AsInteger:=
                   GetFieldValue(DeltaDS.FieldByName('SALE_OBJECT_CODE'));
                 ParamByName('SALE_SHIPMENT_NO').AsInteger:= 1;

                 Open;
                 try
                   QuickSaleShipmentExists:= not (BOF and EOF);
                 finally
                   Close;
                 end;
              end;

            // записване на sale_shipment-а към съкратената продажба
            // и хвърляне в историята на стария shipment(ако има такъв)
            if (not QuickSaleShipmentExists) then
              AddQuickSaleShipment(DeltaDS)
            else
              UpdateQuickSaleShipment(DeltaDS);
          end;

        // създаване или update-ване на планираното теглене от СПГП
        // тук приемаме, че веднъж въведен складът не може да се
        // махне (да стане null), а само да се редактира
        if not VarIsEmpty(DeltaDS.FieldByName('SHIPMENT_STORE_CODE').NewValue) and
           not VarIsNull(DeltaDS.FieldByName('SHIPMENT_STORE_CODE').NewValue) and
           VarIsNull(DeltaDS.FieldByName('SHIPMENT_STORE_CODE').OldValue) then
          AddQuickSalePlannedStoreDeal(DeltaDS)
        else
          if not VarIsNull(DeltaDS.FieldByName('SHIPMENT_STORE_CODE').OldValue) then
            UpdateQuickSalePlannedStoreDeal(DeltaDS);
      end;

    ukInsert:
      begin
        // важен е редът на извикване
        AddQuickSaleShipment(DeltaDS);
        AddQuickSalePlannedStoreDeal(DeltaDS);

        SaleBranchNo:=
          SvrDeptsTree.GetNodeNo(
            GetFieldValue(DeltaDS.FieldByName('SALE_BRANCH_CODE'))
          );
        SaleNo:= DeltaDS.FieldByName('SALE_NO').NewValue;

        SvrCommon.UpdateProcessObjectIdentifier(
          GetFieldValue(DeltaDS.FieldByName('SALE_OBJECT_BRANCH_CODE')),
          GetFieldValue(DeltaDS.FieldByName('SALE_OBJECT_CODE')),
          Format(poifSale, [SaleBranchNo, SaleNo]));
      end;
  end;

  ResetApplyRetryCounter;
end;

procedure TdmSales.prvQuickSaleUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;
  ApplyRetry(E, Response);

  if (UpdateKind = ukInsert) then
    with DataSet do
      begin
        Assert(not FieldByName('SALE_BRANCH_CODE').IsNull);
        FieldByName('SALE_NO').NewValue:=
          GetNewSaleNo(FieldByName('SALE_BRANCH_CODE').Value);
      end;
end;

procedure TdmSales.UpdateQuickSaleShipment(SalesDS: TCustomClientDataSet);
begin
  // update-ване на shipment-а с новите данни
  SetQuickSaleShipmentParams(qryUpdateQuickSaleShipment, SalesDS);

  with qryUpdateQuickSaleShipment do
    begin
      ExecSQL;

      if (RowsAffected <> 1) then
        raise Exception.Create(SExpeditionNotUpdatedId);
    end;
end;

procedure TdmSales.SetQuickSaleShipmentParams(Query: TAbmesSQLQuery;
  SalesDS: TCustomClientDataSet);
begin
  with Query do
    begin
      ParamByName('SALE_OBJECT_BRANCH_CODE').Value:=
        GetFieldValue(SalesDS.FieldByName('SALE_OBJECT_BRANCH_CODE'));

      ParamByName('SALE_OBJECT_CODE').Value:=
        GetFieldValue(SalesDS.FieldByName('SALE_OBJECT_CODE'));

      ParamByName('SALE_SHIPMENT_NO').AsInteger:= 1;

      ParamByName('QUANTITY').Value:=
        GetFieldValue(SalesDS.FieldByName('QUANTITY'));

      ParamByName('SHIPMENT_DATE').Value:=
        GetFieldValue(SalesDS.FieldByName('SHIPMENT_DATE'));

      ParamByName('INVOICE_NO').Value:=
        GetFieldValue(SalesDS.FieldByName('INVOICE_NO'));

      ParamByName('INVOICE_DATE').Value:=
        GetFieldValue(SalesDS.FieldByName('INVOICE_DATE'));

      ParamByName('INVOICE_CURRENCY_CODE').Value:=
        GetFieldValue(SalesDS.FieldByName('CURRENCY_CODE'));

      ParamByName('INVOICE_SINGLE_PRICE').Value:=
        GetFieldValue(SalesDS.FieldByName('SINGLE_PRICE'));
    end;
end;

procedure TdmSales.prvSaleBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  NowDate: TDateTime;
  NowTime: TDateTime;
  ShipmentPlanDate: TDateTime;
begin
  inherited;

  FUpdateDS:= SourceDS;

  NowDate:= ContextDate;
  NowTime:= ContextTime;

  with DeltaDS do
    if (SourceDS = qrySale) then
      begin
        if FinishingSale(DeltaDS, UpdateKind) then
          begin
            FieldByName('FINISH_DATE').NewValue:= NowDate;
            FieldByName('FINISH_TIME').NewValue:= NowTime;
          end;   { with, if }

        if AnnulingSale(DeltaDS, UpdateKind) then
          begin
            FieldByName('ANNUL_DATE').NewValue:= NowDate;
            FieldByName('ANNUL_TIME').NewValue:= NowTime;
          end;   { with, if }

        if (UpdateKind <> ukDelete) then
          begin
            FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
            FieldByName('CHANGE_DATE').NewValue:= NowDate;
            FieldByName('CHANGE_TIME').NewValue:= NowTime;
          end;
      end   { if }
    else
      if (SourceDS = qrySaleShipments) then
        begin
          if (UpdateKind = ukInsert) then
            begin
              SvrCommon.SetProcessObjectKey(DeltaDS,
                'SHIPMENT_OBJECT_BRANCH_CODE', 'SHIPMENT_OBJECT_CODE', pocSaleShipment);
              SetSaleShipmentKey(DeltaDS);
            end
          else
            Applied:= (GetFieldValue(FieldByName('UPDATE_STATUS')) = Ord(usUnmodified)) or
                      not RecordChanged(DeltaDS);
        end
      else
        if (SourceDS = qryShipmentPlannedStoreDeals) then
          begin
            if (UpdateKind = ukInsert) then
              begin
                DeltaDS.FieldByName('PLANNED_STORE_DEAL_BRANCH_CODE').NewValue:=
                  DeltaDS.DataSetField.DataSet.DataSetField.DataSet.FieldByName('SALE_BRANCH_CODE').AsInteger;
                DeltaDS.FieldByName('PLANNED_STORE_DEAL_CODE').NewValue:=
                  SvrStore.GetNewPlannedStoreDealCode;

                FieldByName('BND_PROCESS_OBJECT_CODE').NewValue:=
                  DeltaDS.DataSetField.DataSet.FieldByName('SHIPMENT_OBJECT_CODE').AsInteger;
                FieldByName('BND_PROCESS_CODE').NewValue:= pEXP;
                FieldByName('STORE_DEAL_TYPE_CODE').NewValue:= sdtOut;

                ShipmentPlanDate:=
                  GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('SHIPMENT_PLAN_DATE'));
                FieldByName('STORE_DEAL_BEGIN_DATE').NewValue:= ShipmentPlanDate;
                FieldByName('STORE_DEAL_END_DATE').NewValue:= ShipmentPlanDate;

                FieldByName('CREATE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
                FieldByName('CREATE_DATE').NewValue:= NowDate;
                FieldByName('CREATE_TIME').NewValue:= NowTime;
              end;
            if (UpdateKind <> ukDelete) then
              begin
                FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
                FieldByName('CHANGE_DATE').NewValue:= NowDate;
                FieldByName('CHANGE_TIME').NewValue:= NowTime;
              end;
          end;
end;

procedure TdmSales.prvSaleAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);

  procedure UpdatePSD(UpdateKind: TUpdateKind);
  begin
    if (UpdateKind = ukInsert) then
      begin
        DeltaDS.FieldByName('PLANNED_STORE_DEAL_BRANCH_CODE').NewValue:=
          GetFieldValue(DeltaDS.FieldByName('SALE_BRANCH_CODE'));
        DeltaDS.FieldByName('PLANNED_STORE_DEAL_CODE').NewValue:=
          SvrStore.GetNewPlannedStoreDealCode;

        if (GetFieldValue(DeltaDS.FieldByName('MANUFACTURE_QUANTITY')) > 0) then
          ExecUpdateQuery(ukInsert, DeltaDS,
            qryInsSalePSD, qryUpdSalePSD, qryDelSalePSD, False);
      end
    else  { if }
      ExecUpdateQuery(UpdateKind, DeltaDS,
        qryInsSalePSD, qryUpdSalePSD, qryDelSalePSD, False);
  end;  { UpdatePSD }

var
  IsLease: Boolean;
  cdsSale: TDataSet;
  BaseDate: TDateTime;
  SinglePrice: Variant;
  BaseQuantity: Real;
  ProcessCode: Integer;
  DocumentIdentifier: Variant;
  DocumentDate: Variant;
  CurrencyCode: Variant;
begin
  inherited;

  if (UpdateKind = ukModify) and (SourceDS = qrySale) then
    begin
      FSaleObjectBranchCode:= GetFieldValue(DeltaDS.FieldByName('SALE_OBJECT_BRANCH_CODE'));
      FSaleObjectCode:= GetFieldValue(DeltaDS.FieldByName('SALE_OBJECT_CODE'));
      FSaleDealTypeCode:= GetFieldValue(DeltaDS.FieldByName('SALE_DEAL_TYPE_CODE'));

      with DeltaDS do
        if not VarIsNullOrEmpty(FieldByName('MODEL_SPEC_MODEL_VARIANT_NO').NewValue) then
          begin
            if not VarIsNull(GetFieldValue(FieldByName('ML_OBJECT_CODE'))) then
              begin
                SetParams(qryDelModel.Params, DeltaDS);
                qryDelModel.ExecSQL;
              end;

            CreateModelFromSpecModelVariant(
              GetFieldValue(FieldByName('SALE_OBJECT_BRANCH_CODE')),
              GetFieldValue(FieldByName('SALE_OBJECT_CODE')),
              FieldByName('MODEL_SPEC_MODEL_VARIANT_NO').NewValue,
              (GetFieldValue(FieldByName('IS_OPERATIONS_MODEL')) = 1),
              DeltaDS);
          end;

      FixPlannedStoreDeals(DeltaDS);

      DeltaDS.FieldByName('CURRENCY_CODE').NewValue:=
        LoginContext.SecondaryCurrencyCode;

      with DeltaDS.FieldByName('ENTER_SH_STORE_PLAN_BEGIN_DATE') do
        begin
          if VarIsNull(OldValue) then
            begin
              if not VarIsEmpty(NewValue) then
                UpdatePSD(ukInsert);
            end
          else   { if }
            begin
              if (GetFieldValue(DeltaDS.FieldByName('MANUFACTURE_QUANTITY')) = 0) then
                UpdatePSD(ukDelete)
              else
                begin
                  if VarIsNullOrEmpty(GetFieldValue(DeltaDS.FieldByName('PLANNED_STORE_DEAL_BRANCH_CODE'))) then
                    UpdatePSD(ukInsert)
                  else
                    UpdatePSD(ukModify);
                end;
            end;
        end;   { if }
    end;

  if (UpdateKind = ukDelete) and (SourceDS = qrySaleShipments) then
    with qryDeleteSaleShipment do
      begin
        SetParams(Params, DeltaDS);
        ExecSQL;
      end;   { with }

  if (SourceDS = qrySaleShipments) then
    begin
      cdsSale:= DeltaDS.DataSetField.DataSet;
      IsLease:= (cdsSale.FieldByName('SALE_DEAL_TYPE_CODE').AsInteger = sdtLease);

      case UpdateKind of
        ukInsert:
          begin
            SvrCommon.UpdateProcessObjectIdentifier(
              DeltaDS.FieldByName('SHIPMENT_OBJECT_BRANCH_CODE').AsInteger,
              DeltaDS.FieldByName('SHIPMENT_OBJECT_CODE').AsInteger,
              Format(poifSaleShipment, [
                SvrDeptsTree.GetNodeNo(
                  DeltaDS.DataSetField.DataSet.FieldByName('SALE_BRANCH_CODE').AsInteger),
                DeltaDS.DataSetField.DataSet.FieldByName('SALE_NO').AsInteger,
                DeltaDS.FieldByName('SALE_SHIPMENT_NO').AsInteger]));

            with qryAddShipmentPSD do
              begin
                SetParams(Params, DeltaDS);

                ParamByName('STORE_DEAL_TYPE_CODE').AsInteger:= dtStoreOut;
                ParamByName('BND_PROCESS_CODE').AsInteger:= pEXP;
                ParamByName('PLAN_DATE').AsDateTime:= DeltaDS.FieldByName('SHIPMENT_PLAN_DATE').NewValue;
                ParamByName('ADD_TO_FIRST_SHIPMENT_ONLY').AsInteger:= Ord(IsLease);

                ExecSQL;

                if IsLease then
                  begin
                    SetParams(qryDelSaleShipmentsInPSDs.Params, DeltaDS);
                    qryDelSaleShipmentsInPSDs.ExecSQL;

                    ParamByName('STORE_DEAL_TYPE_CODE').AsInteger:= dtStoreIn;
                    ParamByName('PLAN_DATE').AsDateTime:= DeltaDS.FieldByName('IMPORT_PLAN_DATE').NewValue;
                    ParamByName('ADD_TO_FIRST_SHIPMENT_ONLY').AsInteger:= Ord(False);

                    ExecSQL;
                  end;
              end;  { with }
          end;

        ukModify:
          with qryUpdShipmentPSD do
            begin
              SetParams(Params, DeltaDS);
              ExecSQL;
            end;  { with }
      end;

      if ( (UpdateKind = ukInsert) or
           ( (UpdateKind = ukModify) and
             VarIsNullOrEmpty(DeltaDS.FieldByName('FIN_ORDER_CODE').OldValue) ) ) and
         not VarIsNullOrEmpty(DeltaDS.FieldByName('FO_EXEC_DEPT_CODE').NewValue) then
        begin
          if VarIsNullOrEmpty(GetFieldValue(DeltaDS.FieldByName('SHIPMENT_DATE'))) then
            BaseDate:= GetFieldValue(DeltaDS.FieldByName('SHIPMENT_PLAN_DATE'))
          else
            BaseDate:= GetFieldValue(DeltaDS.FieldByName('SHIPMENT_DATE'));

          SinglePrice:= GetFieldValue(DeltaDS.FieldByName('INVOICE_SINGLE_PRICE'));
          CurrencyCode:= GetFieldValue(DeltaDS.FieldByName('INVOICE_CURRENCY_CODE'));

          if VarIsNullOrEmpty(SinglePrice) then
            begin
              SinglePrice:=
                GetFieldValue((DeltaDS as TCustomClientDataSet).DataSetField.DataSet.FieldByName('SINGLE_PRICE'));
              CurrencyCode:=
                GetFieldValue((DeltaDS as TCustomClientDataSet).DataSetField.DataSet.FieldByName('CURRENCY_CODE'));
            end;

          if VarIsNullOrEmpty(GetFieldValue(DeltaDS.FieldByName('QUANTITY'))) then
            BaseQuantity:= GetFieldValue(DeltaDS.FieldByName('PLAN_QUANTITY')) * SinglePrice
          else
            BaseQuantity:= GetFieldValue(DeltaDS.FieldByName('QUANTITY')) * SinglePrice;

          if (IntToProductClass(GetFieldValue((DeltaDS as TCustomClientDataSet).DataSetField.DataSet.FieldByName('PRODUCT_CLASS_CODE'))) = pcFinancial) then
            ProcessCode:= pFinPrdFOb
          else
            ProcessCode:= pFinPrdUobZd;

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

          SvrFinance.NewFinOrder(
            GetFieldValue(DeltaDS.FieldByName('FO_BRANCH_CODE')),
            GetFieldValue(DeltaDS.FieldByName('FO_EXEC_DEPT_CODE')),
            GetFieldValue(DeltaDS.FieldByName('FO_PRIORITY_CODE')),
            ProcessCode,
            GetFieldValue(DeltaDS.FieldByName('SHIPMENT_OBJECT_BRANCH_CODE')),
            GetFieldValue(DeltaDS.FieldByName('SHIPMENT_OBJECT_CODE')),
            GetFieldValue(DeltaDS.FieldByName('FO_PARTNER_CODE')),
            ioIn,
            BaseDate,
            0,
            CurrencyCode,
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

  ResetApplyRetryCounter;
end;

procedure TdmSales.prvSaleUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;

  ApplyRetry(E, Response);

  if (UpdateKind = ukInsert) then
    begin
      if (FUpdateDS = qrySaleShipments) then
        SetSaleShipmentKey(DataSet)
(*      else
        if (FUpdateDS = qryShipmentPlannedStoreDeals) then
          SvrStore.SetPlannedStoreDealKey(DataSet); *)
    end;
end;

procedure TdmSales.SetSaleShipmentKey(ADataSet: TCustomClientDataSet);
begin
  with qryMaxSaleShipmentNo do
    begin
      SetParams(Params, ADataSet);
      Open;
      try
        ADataSet.FieldByName('SALE_SHIPMENT_NO').NewValue:=
          qryMaxSaleShipmentNoMAX_SALE_SHIPMENT_NO.AsInteger + 1;
      finally
        Close;
      end;   { try }
    end;
end;

procedure TdmSales.prvFreeSaleQuantitiesGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  inherited;
  ClearQuantity(DataSet);
end;

procedure TdmSales.ClearQuantity(ADataSet: TCustomClientDataSet);
begin
  with ADataSet do
    begin
      First;
      while not EOF do
        begin
          Edit;
          try
            FieldByName('QUANTITY').Clear;
            Post;
          except
            Cancel;
            raise;
          end;   { try }
          Next;
        end;   { while }
    end;
end;

procedure TdmSales.SaleBeforeUpdateRecord(DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
var
  cDate,cTime: TDateTime;
begin
  with DeltaDS do
    begin
      cDate:= ContextDate;
      cTime:= ContextTime;

      FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
      FieldByName('CHANGE_DATE').NewValue:= cDate;
      FieldByName('CHANGE_TIME').NewValue:= cTime;

      if (UpdateKind = ukInsert) then
        begin
          FieldByName('MANUFACTURE_DECISION_EXPECTED').NewValue:= 0;
          FieldByName('IS_VENDOR_TRANSPORT').NewValue:= 1;
          FieldByName('IS_ML_ENTRUSTED').NewValue:= 0;
          FieldByName('IS_ML_NOT_NEEDED').NewValue:= 0;
          FieldByName('SOS_OKIDU').NewValue:= 0;

          SvrCommon.SetProcessObjectKey(DeltaDS,'SALE_OBJECT_BRANCH_CODE',
            'SALE_OBJECT_CODE', pocSale);

          Assert(not FieldByName('SALE_BRANCH_CODE').IsNull);
          FieldByName('SALE_NO').NewValue:=
            GetNewSaleNo(FieldByName('SALE_BRANCH_CODE').Value);

          FieldByName('CREATE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
          FieldByName('CREATE_DATE').NewValue:= cDate;
          FieldByName('CREATE_TIME').NewValue:= cTime;
        end;
    end;
end;

function TdmSales.IsSettingSaleField(DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  AFieldName: string): Boolean;
begin
  Result:=
    not VarIsNullOrEmpty(DeltaDS.FieldByName(AFieldName).NewValue) and
    ( (UpdateKind = ukInsert) or
       VarIsNull(DeltaDS.FieldByName(AFieldName).OldValue)
    );
end;

function TdmSales.AnnulingSale(DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind): Boolean;
begin
  Result:= IsSettingSaleField(DeltaDS, UpdateKind, 'ANNUL_EMPLOYEE_CODE');
end;

function TdmSales.FinishingSale(DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind): Boolean;
begin
  Result:= IsSettingSaleField(DeltaDS, UpdateKind, 'FINISH_EMPLOYEE_CODE');
end;

procedure TdmSales.prvProductionOrderBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
var
  NowDate: TDateTime;
  NowTime: TDateTime;
begin
  inherited;

  NowDate:= ContextDate;
  NowTime:= ContextTime;

  if FinishingSale(DeltaDS, UpdateKind) then
    with DeltaDS do
      begin
        FieldByName('FINISH_DATE').NewValue:= NowDate;
        FieldByName('FINISH_TIME').NewValue:= NowTime;
      end;   { with, if }

  if AnnulingSale(DeltaDS, UpdateKind) then
    with DeltaDS do
      begin
        FieldByName('ANNUL_DATE').NewValue:= NowDate;
        FieldByName('ANNUL_TIME').NewValue:= NowTime;
      end;   { with, if }

  SaleBeforeUpdateRecord(DeltaDS, UpdateKind);

  if (UpdateKind <> ukDelete) then
    with DeltaDS do
      if not VarIsNullOrEmpty(FieldByName('MODEL_SPEC_MODEL_VARIANT_NO').NewValue) then
        begin
          if not VarIsNull(GetFieldValue(FieldByName('ML_OBJECT_CODE'))) then
            begin
              SetParams(qryDelModel.Params, DeltaDS);
              qryDelModel.ExecSQL;
            end;
        end;

  DeltaDS.FieldByName('PSD_PRIORITY_CODE').NewValue:=
    GetFieldValue(DeltaDS.FieldByName('PRIORITY_CODE'));

  if (UpdateKind <> ukDelete) then
    with DeltaDS do
      begin
        if (UpdateKind = ukInsert) then
          begin
            FieldByName('SALE_GROUP_BRANCH_CODE').NewValue:= FieldByName('SALE_BRANCH_CODE').NewValue;
            FieldByName('SALE_GROUP_CODE').NewValue:=
              GetNewSaleGroupCode(FieldByName('SALE_GROUP_BRANCH_CODE').NewValue);

            SvrCommon.SetProcessObjectKey(DeltaDS,
              'SALE_GROUP_OBJECT_BRANCH_CODE', 'SALE_GROUP_OBJECT_CODE', pocSaleGroup);
          end;

        ExecUpdateQuery(UpdateKind, DeltaDS,
          qryInsSimpleSaleGroup, qryUpdSimpleSaleGroup);
      end;   { if }
end;

procedure TdmSales.prvProductionOrderAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
var
  SaleGroupBranchCode: Integer;
  SaleGroupCode: Integer;
  SaleBranchCode: Integer;
  SaleNo: Integer;
  DisasmUpdateKind: TUpdateKind;
  OldTransientStatusCode, NewTransientStatusCode: Integer;
begin
  inherited;

  if (UpdateKind = ukModify) and
     (DeltaDS.FieldByName('PRIORITY_CODE').OldValue <> DeltaDS.FieldByName('PRIORITY_CODE').NewValue) then
    with qryUpdModelLinePSDs do
      begin
        SetParams(Params, DeltaDS);
        ExecSQL;
      end;

  if (UpdateKind <> ukDelete) then
    with DeltaDS do
      if not VarIsNullOrEmpty(FieldByName('MODEL_SPEC_MODEL_VARIANT_NO').NewValue) then
        CreateModelFromSpecModelVariant(
          GetFieldValue(FieldByName('SALE_OBJECT_BRANCH_CODE')),
          GetFieldValue(FieldByName('SALE_OBJECT_CODE')),
          FieldByName('MODEL_SPEC_MODEL_VARIANT_NO').NewValue,
          (GetFieldValue(FieldByName('IS_OPERATIONS_MODEL')) = 1),
          DeltaDS);

  if (UpdateKind = ukInsert) then
    begin
      DeltaDS.FieldByName('PLANNED_STORE_DEAL_BRANCH_CODE').NewValue:=
        GetFieldValue(DeltaDS.FieldByName('SALE_BRANCH_CODE'));
      DeltaDS.FieldByName('PLANNED_STORE_DEAL_CODE').NewValue:=
        SvrStore.GetNewPlannedStoreDealCode;
    end;

  DeltaDS.FieldByName('CURRENCY_CODE').NewValue:=
    LoginContext.SecondaryCurrencyCode;

  // tuk MANUFACTURE_QUANTITY-to ne moje da e <=0, shtoto ima proverka v klienta
  ExecUpdateQuery(UpdateKind, DeltaDS,
    qryInsSalePSD, qryUpdSalePSD, qryDelSalePSD);

  FixPlannedStoreDeals(DeltaDS);

  if (UpdateKind = ukInsert) then
    with DeltaDS do
      begin
        SaleBranchCode:= FieldByName('SALE_BRANCH_CODE').NewValue;
        SaleNo:= FieldByName('SALE_NO').NewValue;

        SvrCommon.UpdateProcessObjectIdentifier(
          FieldByName('SALE_OBJECT_BRANCH_CODE').NewValue,
          FieldByName('SALE_OBJECT_CODE').NewValue,
          Format(poifSale, [
            SvrDeptsTree.GetNodeNo(SaleBranchCode),
            SaleNo
          ]));

        SaleGroupBranchCode:= FieldByName('SALE_GROUP_BRANCH_CODE').NewValue;
        SaleGroupCode:= FieldByName('SALE_GROUP_CODE').NewValue;

        SvrCommon.UpdateProcessObjectIdentifier(
          FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE').NewValue,
          FieldByName('SALE_GROUP_OBJECT_CODE').NewValue,
          Format(poifSaleGroup, [
            SvrDeptsTree.GetNodeNo(SaleGroupBranchCode),
            SaleGroupCode
          ]));
      end;

  NewTransientStatusCode:= VarToInt(GetFieldValue(DeltaDS.FieldByName('TRANSIENT_STATUS_CODE')));
  OldTransientStatusCode:= VarToInt(DeltaDS.FieldByName('TRANSIENT_STATUS_CODE').OldValue);

  if (NewTransientStatusCode = tsTransient) or (NewTransientStatusCode <> OldTransientStatusCode) then
    begin
      if (NewTransientStatusCode = tsPermanent) then
        DisasmUpdateKind:= ukDelete
      else
        begin
          if (UpdateKind = ukModify) and (NewTransientStatusCode <> OldTransientStatusCode) then
            DisasmUpdateKind:= ukInsert
          else
            DisasmUpdateKind:= UpdateKind;
        end;

      if (DisasmUpdateKind = ukInsert) then
        begin
          DeltaDS.FieldByName('DISASSEMBLY_PSD_BRANCH_CODE').NewValue:=
            GetFieldValue(DeltaDS.FieldByName('SALE_BRANCH_CODE'));
          DeltaDS.FieldByName('DISASSEMBLY_PSD_CODE').NewValue:=
            SvrStore.GetNewPlannedStoreDealCode;
        end;

      ExecUpdateQuery(DisasmUpdateKind, DeltaDS,
        qryInsDisasmPSD, qryUpdDisasmPSD, qryDelDisasmPSD);
    end;

  if (UpdateKind <> ukDelete) then
    with DeltaDS do
      begin
        if GetFieldValue(FieldByName('IS_AUTO_COMPLETIVE')) and
           (not VarIsEmpty(FieldByName('IS_FORWARD_AUTO_COMPLETED').NewValue)) and
           GetFieldValue(FieldByName('IS_FORWARD_AUTO_COMPLETED')) then
          ForwardAutoCompleteModel(DeltaDS);

        if GetFieldValue(FieldByName('IS_AUTO_COMPLETIVE')) and
           (not VarIsEmpty(FieldByName('IS_BACKWARD_AUTO_COMPLETED').NewValue)) and
           GetFieldValue(FieldByName('IS_BACKWARD_AUTO_COMPLETED')) then
          BackwardAutoCompleteModel(DeltaDS);
      end;

  ResetApplyRetryCounter;
end;

procedure TdmSales.prvProductionOrderUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;

  ApplyRetry(E, Response);

// pri ukInsert se nasira
end;

procedure TdmSales.FixPlannedStoreDeals(DeltaDS: TCustomClientDataSet);
begin
  SetParams(qryFixPlannedStoreDeals.Params, DeltaDS);
  qryFixPlannedStoreDeals.ExecSQL;
end;

function TdmSales.GetNewSaleNo(SaleBranchCode: Integer): Integer;
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

procedure TdmSales.AddQuickSalePlannedStoreDeal(DeltaDS: TCustomClientDataSet);
begin
  SetParams(qryInsertQuickSalePSD.Params, DeltaDS);
  with qryInsertQuickSalePSD do
    begin
      ParamByName('PLANNED_STORE_DEAL_BRANCH_CODE').AsInteger:=
        GetFieldValue(DeltaDS.FieldByName('SALE_BRANCH_CODE'));
      ParamByName('PLANNED_STORE_DEAL_CODE').AsInteger:=
        SvrStore.GetNewPlannedStoreDealCode;

      ParamByName('PLANNED_STORE_DEAL_TYPE_CODE').AsInteger:= psdtNormal;
      ParamByName('BND_PROCESS_CODE').AsInteger:= pEXP;
      ParamByName('STORE_DEAL_TYPE_CODE').AsInteger:= sdtOut;

      ExecSQL;

      if (RowsAffected <> 1) then
        raise Exception.Create(SQuickSalePSDNotInsertedId);
    end;
end;

procedure TdmSales.UpdateQuickSalePlannedStoreDeal(
  DeltaDS: TCustomClientDataSet);
begin
  SetParams(qryUpdateQuickSalePSD.Params, DeltaDS);
  qryUpdateQuickSalePSD.ExecSQL;
end;

function TdmSales.ExistQuickSaleGroup(DeltaDS: TCustomClientDataSet;
  var SaleGroupObjectBranchCode, SaleGroupObjectCode: Integer): Boolean;
begin
  SetParams(qryExistQuickSaleGroup.Params, DeltaDS);
  with qryExistQuickSaleGroup do
    begin
      Open;
      try
        Result:= not FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE').IsNull;
        if Result then
          begin
            SaleGroupObjectBranchCode:=
              FieldByName('SALE_GROUP_OBJECT_BRANCH_CODE').AsInteger;
            SaleGroupObjectCode:=
              FieldByName('SALE_GROUP_OBJECT_CODE').AsInteger;
          end;
      finally
        Close;
      end;
    end;
end;

procedure TdmSales.AddQuickSaleGroup(DeltaDS: TCustomClientDataSet;
  var SaleGroupObjectBranchCode, SaleGroupObjectCode: Integer);
begin
  SvrCommon.GetProcessObjectKey(
    pocSaleGroup,
    SaleGroupObjectBranchCode,
    SaleGroupObjectCode);

  SetParams(qryInsertQuickSaleGroup.Params, DeltaDS);
  with qryInsertQuickSaleGroup do
    begin
      ParamByName('SALE_GROUP_OBJECT_BRANCH_CODE').AsInteger:=
        SaleGroupObjectBranchCode;
      ParamByName('SALE_GROUP_OBJECT_CODE').AsInteger:=
        SaleGroupObjectCode;
      ParamByName('SALE_GROUP_NO').AsInteger:= 1;
      ParamByName('SALE_GROUP_CODE').AsInteger:=
        GetNewSaleGroupCode(GetFieldValue(DeltaDS.FieldByName('SALE_BRANCH_CODE')));

      ExecSQL;

      if (RowsAffected <> 1) then
        raise Exception.Create(SQuickSaleGroupNotInsertedId);

      SvrCommon.UpdateProcessObjectIdentifier(
        SaleGroupObjectBranchCode,
        SaleGroupObjectCode,
        Format(poifSaleGroup, [
          SvrDeptsTree.GetNodeNo(
           GetFieldValue(DeltaDS.FieldByName('SALE_BRANCH_CODE'))),
          ParamByName('SALE_GROUP_CODE').AsInteger
        ])
      );
    end;
end;

function TdmSales.QuickSaleGroupParamsHaveChanged(
  DeltaDS: TCustomClientDataSet): Boolean;
begin
  with DeltaDS do
    Result:=
      (not VarIsEmpty(FieldByName('RECEIVE_DATE').NewValue)) or
      (not VarIsEmpty(FieldByName('CLIENT_COMPANY_CODE').NewValue)) or
      (not VarIsEmpty(FieldByName('SALE_ORDER_TYPE_CODE').NewValue));
end;

function TdmSales.QuickSaleCanAnnul(SaleObjectBranchCode,
  SaleObjectCode: Integer): Boolean;
begin
  with qryCanAnnulQuickSale do
    begin
      ParamByName('SALE_OBJECT_BRANCH_CODE').AsInteger:=
        SaleObjectBranchCode;
      ParamByName('SALE_OBJECT_CODE').AsInteger:=
        SaleObjectCode;

      Open;
      try
        Result:= BOF and EOF;
      finally
        Close;
      end;
    end;
end;

procedure TdmSales.CreateModelFromSpecModelVariant(const ASaleObjBranchCode, ASaleObjCode, ASpecModelVariantNo: Integer;
  AOperationsModel: Boolean; DeltaDS: TCustomClientDataSet);
var
  TTWCorrect: array[0..MaxNoPos] of Integer;

  function GetRecLevel: Integer;
  var
    i: Integer;
    s: string;
  begin
    s:= qrySaleSpecLinesNO_AS_TEXT.AsString;

    if (s = '0') then
      Result:= 0
    else
      begin
        Result:= 1;
        for i:= 1 to Length(s) do
          if (s[i] = '.') then
            Inc(Result);
      end;
  end;

  procedure CheckProductData;
  var
    NoProductData: array[0..2] of string;
    NoProductDataCount: Integer;
    ErrorData: string;
    DetailIsProductionProduct: Boolean;
    Prefix: string;
    ProductName: string;
    ProductNo: Real;
    i: Integer;
  begin
    NoProductDataCount:= 0;

    DetailIsProductionProduct:=
      (qrySaleSpecLinesNO_1.AsInteger > 0) and
      qrySaleSpecLinesDETAIL_IS_PRODUCTION_PRODUCT.AsBoolean;

    if DetailIsProductionProduct then
      Prefix:= 'D_'
    else
      Prefix:= '';

    if qrySaleSpecLines.FieldByName(Prefix + 'NO_ACCOUNT_MEASURE_COEF').AsBoolean then
      begin
        NoProductData[NoProductDataCount]:= SAccountMeasureKeywordId;
        Inc(NoProductDataCount);
      end;   { if }
    if qrySaleSpecLines.FieldByName(Prefix + 'NO_TECH_MEASURE_COEF').AsBoolean then
      begin
        NoProductData[NoProductDataCount]:= STechMeasureKeywordId ;
        Inc(NoProductDataCount);
      end;   { if }

    if (NoProductDataCount > 0) then
      begin
        ErrorData:= NoProductData[0];

        for i:= 1 to NoProductDataCount - 1 do
          ErrorData:= ErrorData + ',, ' + NoProductData[i];

        if DetailIsProductionProduct then
          begin
            ProductName:= qrySaleSpecLinesDETAIL_NAME.AsString;
            ProductNo:= qrySaleSpecLinesDETAIL_NO.AsFloat;
          end
        else
          begin
            ProductName:= qrySaleSpecLinesPRODUCT_NAME.AsString;
            ProductNo:= qrySaleSpecLinesPRODUCT_NO.AsFloat;
          end;

        raise Exception.Create(SNoProductDataId + '(' +
          'ErrorData:s=' +  InternalEncodeString(ErrorData) + ',' +
          'ProductName:s=' + InternalEncodeString(ProductName) + ',' +
          'ProductNo:f=' + InternalFloatToStr(ProductNo) + ')');
      end;   { if }
  end;   { CheckProductData }

  function TotalTTWCorrct(ARecLevel: Integer): Integer;
  var
    i: Integer;
  begin
    Result:= 0;
    for i:= 0 to ARecLevel do
      Inc(Result, TTWCorrect[i]);
  end;

var
  MLObjBranchCode, MLObjCode: Integer;
  MLLObjBranchCode, MLLObjCode: Integer;
  MLLNode, BlankMLLNode: TMLLNode;
  Stack: TStack<TMLLNode>;
  RecLevel: Integer;
  MLMSObjBranchCode, MLMSObjCode: Integer;
  SaleBranchNo: Real;
  SaleNo: Integer;
  ProductCode: Integer;
  StageNo: Integer;
  LastStageDeptCode: Integer;
  StoreCode: Integer;
  s: string;
  InactiveProducts: string;
begin   { CreateModelFromSpecModelVariant }
  //proverka dali niakoi ne e napravil specifikaciata i modela nevalidni
  with qryCheckValidModel do
    begin
      SetParams(Params, DeltaDS);

      Open;
      try
        if (BOF and EOF) then
          raise Exception.Create(SInvalidModelId);
      finally
        Close;
      end;   { try }
    end;   { with }

  // proverka za neaktivni NSCh
  with qryInactiveProducts do
    begin
      SetParams(Params, DeltaDS);

      Open;
      try
        InactiveProducts:= '';
        while not Eof do
          begin
            InactiveProducts:=
              InactiveProducts +
              Format('%-20s %s' + SLineBreak,
                [qryInactiveProductsPRODUCT_NO.AsString, qryInactiveProductsPRODUCT_NAME.AsString]);

            Next;
          end;  { while }

        if (InactiveProducts <> '') then
          begin
            SetLength(InactiveProducts, Length(InactiveProducts) - 2);

            FErrorMsg:=
              SInactiveProductsId + '(' + 'InactiveProducts:s=' + InternalEncodeString(InactiveProducts) + ')';
              
            raise Exception.Create(FErrorMsg);
          end;
      finally
        Close;
      end;   { try }
    end;   { with }

  SaleBranchNo:=
    SvrDeptsTree.GetNodeNo(
      GetFieldValue(DeltaDS.FieldByName('SALE_BRANCH_CODE')));
  SaleNo:= GetFieldValue(DeltaDS.FieldByName('SALE_NO'));

  with SvrCommon do
    begin
      GetProcessObjectKey(
        pocMaterialList,
        MLObjBranchCode,
        MLObjCode);

      UpdateProcessObjectIdentifier(MLObjBranchCode, MLObjCode,
        Format(poifMaterialList, [
          SaleBranchNo,
          SaleNo]));
    end;   { with }

  with qryInsSaleML do
    begin
      SetParams(Params, DeltaDS);

      ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MLObjBranchCode;
      ParamByName('ML_OBJECT_CODE').AsInteger:= MLObjCode;
      ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').AsInteger:= ASaleObjBranchCode;
      ParamByName('BND_PROCESS_OBJECT_CODE').AsInteger:= ASaleObjCode;
      ParamByName('CREATE_EMPLOYEE_CODE').AsInteger:= LoginContext.UserCode;
      ParamByName('CREATE_DATE').AsDateTime:= ContextDate;
      ParamByName('CREATE_TIME').AsDateTime:= ContextTime;

      ParamByName('AUTO_LIMITED_DEFAULT_MODELS').AsFloat:=
        Ord(LoginContext.AutoLimitedDefaultModels);

      ParamByName('IS_OPERATIONS_MODEL').AsInteger:= Ord(AOperationsModel);

      ExecSQL;

      if (RowsAffected = 0) then
        begin
          s:= SModelNotCreatedId;

          if AOperationsModel then
            s:= SCheckOperationsSpecModelId;

          raise Exception.Create(s);
        end;
    end;

  qrySaleSpecLines.ParamByName('SALE_OBJECT_BRANCH_CODE').AsInteger:= ASaleObjBranchCode;
  qrySaleSpecLines.ParamByName('SALE_OBJECT_CODE').AsInteger:= ASaleObjCode;
  qrySaleSpecLines.ParamByName('SPEC_MODEL_VARIANT_NO').AsInteger:=
    DeltaDS.FieldByName('MODEL_SPEC_MODEL_VARIANT_NO').NewValue;

  ProductCode:= GetFieldValue(DeltaDS.FieldByName('PRODUCT_CODE'));

  qrySaleSpecLines.Open;
  try
    cdsSpecLineStages.Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= ProductCode;
    cdsSpecLineStages.Params.ParamByName('SPEC_MODEL_VARIANT_NO').AsInteger:=
      DeltaDS.FieldByName('MODEL_SPEC_MODEL_VARIANT_NO').NewValue;

    cdsSpecLineStages.Open;
    try
      Stack:= TStack<TMLLNode>.Create;
      try
        BlankMLLNode:= TMLLNode.Create;
        try
          BlankMLLNode.Level:= -1;
          // drugite poleta sa 0 po default

          Stack.Push(BlankMLLNode);
          BlankMLLNode:= nil;
        except
          FreeAndNil(BlankMLLNode);
          raise;
        end;  { try }

        while not qrySaleSpecLines.EOF do
          begin
            CheckProductData;

            SvrCommon.GetProcessObjectKey(
              pocMaterialListLine,
              MLLObjBranchCode,
              MLLObjCode);

            SvrCommon.UpdateProcessObjectIdentifier(
              MLLObjBranchCode, MLLObjCode,
              Format(poifMaterialListLine, [
                SaleBranchNo,
                SaleNo,
                qrySaleSpecLinesNO_AS_TEXT.AsString,
                0]));

            with qryInsSaleMLL do
              begin
                SetParams(Params, DeltaDS);

                ParamByName('MLL_OBJECT_BRANCH_CODE').AsInteger:= MLLObjBranchCode;
                ParamByName('MLL_OBJECT_CODE').AsInteger:= MLLObjCode;

                ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MLObjBranchCode;
                ParamByName('ML_OBJECT_CODE').AsInteger:= MLObjCode;

                ParamByName('SALE_OBJECT_BRANCH_CODE').AsInteger:= ASaleObjBranchCode;
                ParamByName('SALE_OBJECT_CODE').AsInteger:= ASaleObjCode;

                ParamByName('SPEC_PRODUCT_CODE').AsInteger:=
                  qrySaleSpecLinesSPEC_PRODUCT_CODE.AsInteger;
                ParamByName('SPEC_LINE_CODE').AsInteger:=
                  qrySaleSpecLinesSPEC_LINE_CODE.AsInteger;

                ParamByName('SPEC_MODEL_VARIANT_NO').AsInteger:= ASpecModelVariantNo;

                RecLevel:= GetRecLevel;

                // set parent fields

                while (Stack.Peek.Level >= RecLevel) do
                  Stack.Pop.Free;

                if (Stack.Peek.MLLObjBranchCode = 0) then
                  begin
                    ParamByName('PARENT_MLL_OBJECT_BRANCH_CODE').Clear;
                    ParamByName('PARENT_MLL_OBJECT_CODE').Clear;
                  end
                else
                  begin
                    ParamByName('PARENT_MLL_OBJECT_BRANCH_CODE').AsInteger:=
                      Stack.Peek.MLLObjBranchCode;
                    ParamByName('PARENT_MLL_OBJECT_CODE').AsInteger:=
                      Stack.Peek.MLLObjCode;
                  end;

                MLLNode:= TMLLNode.Create;
                try
                  MLLNode.MLLObjBranchCode:= MLLObjBranchCode;
                  MLLNode.MLLObjCode:= MLLObjCode;
                  MLLNode.Level:= RecLevel;

                  Stack.Push(MLLNode);
                  MLLNode:= nil;
                except
                  FreeAndNil(MLLNode);
                  raise;
                end;  { try }

                ExecSQL;

                if (RowsAffected <> 1) then
                  raise Exception.CreateFmt('Bad situation. RowsAffected = %d. Should be 1.', [RowsAffected]);
              end;

            // ML_MODEL_STAGES
            with cdsSpecLineStages do
              begin
                First;
                Locate('SPEC_LINE_CODE', qrySaleSpecLinesSPEC_LINE_CODE.AsInteger, []);

                if (qrySaleSpecLinesNO_1.AsInteger > 0) and
                   qrySaleSpecLinesDETAIL_IS_PRODUCTION_PRODUCT.AsBoolean then
                  StageNo:= cdsSpecLineStagesTRUNC_SMVS_TYPE_COUNT.AsInteger
                else
                  begin
                    StageNo:=
                      cdsSpecLineStagesLAST_STAGE_NO.AsInteger -
                      (cdsSpecLineStagesTRUNC_SMVS_TYPE_COUNT.AsInteger - 1);

                    if (qrySaleSpecLinesNO_1.AsInteger > 0) then
                      StageNo:= StageNo - cdsSpecLineStagesROW_ZERO_SMVS_TYPE_COUNT.AsInteger;
                  end;

                TTWCorrect[RecLevel]:= 0;
                LastStageDeptCode:= 0;

                while (not Eof) and
                      (cdsSpecLineStagesSPEC_LINE_CODE.AsInteger = qrySaleSpecLinesSPEC_LINE_CODE.AsInteger) do
                  begin
                    if (cdsSpecLineStagesSPEC_LINE_STAGE_NO.AsInteger = cdsSpecLineStagesLAST_STAGE_NO.AsInteger) then
                      LastStageDeptCode:= cdsSpecLineStagesDEPT_CODE.AsInteger;

                    if ( (qrySaleSpecLinesNO_1.AsInteger > 0) and
                         qrySaleSpecLinesDETAIL_IS_PRODUCTION_PRODUCT.AsBoolean and
                         ( (cdsSpecLineStagesSMVS_TYPE_CODE.AsInteger = smvstTrunc) or
                           (cdsSpecLineStagesSPEC_LINE_STAGE_NO.AsInteger = cdsSpecLineStagesLAST_STAGE_NO.AsInteger) ) ) or
                       ( (qrySaleSpecLinesNO_1.AsInteger = 0) and
                         (cdsSpecLineStagesSMVS_TYPE_CODE.AsInteger <> smvstTrunc) ) or
                       ( (qrySaleSpecLinesNO_1.AsInteger > 0) and
                         (not qrySaleSpecLinesDETAIL_IS_PRODUCTION_PRODUCT.AsBoolean) and
                         (cdsSpecLineStagesSMVS_TYPE_CODE.AsInteger = smvstNormal) ) then
                      begin
                        with SvrCommon do
                          begin
                            GetProcessObjectKey(
                              pocModelStage,
                              MLMSObjBranchCode,
                              MLMSObjCode);

                            UpdateProcessObjectIdentifier(MLMSObjBranchCode, MLMSObjCode,
                              Format(poifModelStage, [
                                SaleBranchNo,
                                SaleNo,
                                qrySaleSpecLinesNO_AS_TEXT.AsString,
                                0,
                                StageNo]));
                          end;   { with }

                        SetParams(qryInsMLModelStage.Params, cdsSpecLineStages);

                        qryInsMLModelStage.ParamByName('MLMS_OBJECT_BRANCH_CODE').AsInteger:=
                          MLMSObjBranchCode;
                        qryInsMLModelStage.ParamByName('MLMS_OBJECT_CODE').AsInteger:=
                          MLMSObjCode;
                        qryInsMLModelStage.ParamByName('MLL_OBJECT_BRANCH_CODE').AsInteger:=
                          MLLObjBranchCode;
                        qryInsMLModelStage.ParamByName('MLL_OBJECT_CODE').AsInteger:=
                          MLLObjCode;
                        qryInsMLModelStage.ParamByName('ML_MODEL_STAGE_NO').AsInteger:=
                          StageNo;

                        qryInsMLModelStage.ParamByName('ENTER_RESULT_STORE_END_DATE').AsDateTime:=
                          GetFieldValue(DeltaDS.FieldByName('ENTER_SH_STORE_PLAN_END_DATE'));

                        if cdsSpecLineStagesDOC_CODE.IsNull then
                          qryInsMLModelStage.ParamByName('NEW_DOC_CODE').Clear
                        else
                          qryInsMLModelStage.ParamByName('NEW_DOC_CODE').AsInteger:=
                            SvrDoc.GetNewDocCode;

                        with qryInsMLModelStage.ParamByName('TOTAL_TREATMENT_WORKDAYS') do
                          AsInteger:= AsInteger - TotalTTWCorrct(RecLevel);

                        qryInsMLModelStage.ParamByName('INSERT_OPERATIONS').AsInteger:=
                          Ord(AOperationsModel);

                        qryInsMLModelStage.ParamByName('ML_MODEL_STAGE_NOTE').Clear;

                        qryInsMLModelStage.ExecSQL;

                        if AOperationsModel then
                          with qryInsMLModelStageOperationsDocs do
                            begin
                              Params.AssignValues(qryInsMLModelStage.Params);
                              ExecSQL;
                            end;   { with }

                        Dec(StageNo);
                      end
                    else
                      Inc(TTWCorrect[RecLevel],
                          cdsSpecLineStagesTREATMENT_WORKDAYS.AsInteger - cdsSpecLineStagesOUTGOING_WORKDAYS.AsInteger);
                    Next;
                  end;   { while }

                if (qrySaleSpecLinesNO_1.AsInteger > 0) and
                   qrySaleSpecLinesDETAIL_IS_PRODUCTION_PRODUCT.AsBoolean then
                  with qryInsStoreMLModelStage do
                    begin
                      with SvrCommon do
                        begin
                          GetProcessObjectKey(
                            pocModelStage,
                            MLMSObjBranchCode,
                            MLMSObjCode);

                          UpdateProcessObjectIdentifier(MLMSObjBranchCode, MLMSObjCode,
                            Format(poifModelStage, [
                              SaleBranchNo,
                              SaleNo,
                              qrySaleSpecLinesNO_AS_TEXT.AsString,
                              0,
                              0]));
                        end;   { with }

                      ParamByName('MLMS_OBJECT_BRANCH_CODE').AsInteger:= MLMSObjBranchCode;
                      ParamByName('MLMS_OBJECT_CODE').AsInteger:= MLMSObjCode;
                      ParamByName('MLL_OBJECT_BRANCH_CODE').AsInteger:= MLLObjBranchCode;
                      ParamByName('MLL_OBJECT_CODE').AsInteger:= MLLObjCode;

                      StoreCode:=
                        SvrProductsTree.GetProductDefaultStore(
                          qrySaleSpecLinesDETAIL_CODE.AsInteger, LastStageDeptCode);

                      if (StoreCode = 0) then
                        raise Exception.Create(SNoDefaultStoreId + '(' +
                          'ProductName:s=' + InternalEncodeString(qrySaleSpecLinesDETAIL_NAME.AsString) + ',' +
                          'ProductNo:f=' + InternalFloatToStr(qrySaleSpecLinesDETAIL_NO.AsFloat) + ')');

                      ParamByName('DEPT_CODE').AsInteger:= StoreCode;
                      ParamByName('ENTER_RESULT_STORE_END_DATE').AsDateTime:=
                        GetFieldValue(DeltaDS.FieldByName('ENTER_SH_STORE_PLAN_END_DATE'));
                      ParamByName('TOTAL_TREATMENT_WORKDAYS').AsInteger:=
                        qryInsMLModelStage.ParamByName('TOTAL_TREATMENT_WORKDAYS').AsInteger;  // kato na poslednia insert-nat etap ot reda (v obraten red sa)

                      ExecSQL;
                    end;
              end;   { with }

            qrySaleSpecLines.Next;
          end;
      finally
        try
          while (Stack.Count > 0) do
            Stack.Pop.Free;
        finally
          FreeAndNil(Stack);
        end;
      end;
    finally
      cdsSpecLineStages.Close;
    end;   { try }
  finally
    qrySaleSpecLines.Close;
  end;

  with qryCheckModelStages do
    begin
      ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MLObjBranchCode;
      ParamByName('ML_OBJECT_CODE').AsInteger:= MLObjCode;

      Open;
      try
        if qryCheckModelStagesHAS_MLL_WITHOUT_STAGES.AsBoolean then
          raise Exception.Create(SLinesWithoutStagesId);
      finally
        Close;
      end;  { try }
    end;   { with }

  with updMLInitialTreatmentWorkdays do
    begin
      ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MLObjBranchCode;
      ParamByName('ML_OBJECT_CODE').AsInteger:= MLObjCode;

      ExecSQL;
    end;   { with }

  with qryUpdateStageDates do
    begin
      ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MLObjBranchCode;
      ParamByName('ML_OBJECT_CODE').AsInteger:= MLObjCode;

      ExecSQL;
    end;   { with }

  with qryInsModelStageLinks do
    begin
      ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MLObjBranchCode;
      ParamByName('ML_OBJECT_CODE').AsInteger:= MLObjCode;

      ExecSQL;
    end;   { with }

  with qryInsModelTasks do
    begin
      ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MLObjBranchCode;
      ParamByName('ML_OBJECT_CODE').AsInteger:= MLObjCode;
      ParamByName('SPEC_MODEL_VARIANT_NO').AsInteger:= ASpecModelVariantNo;

      ExecSQL;
    end;   { with }

  with qryUpdateModelPsdDepts do
    begin
      ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MLObjBranchCode;
      ParamByName('ML_OBJECT_CODE').AsInteger:= MLObjCode;

      ExecSQL;
    end;   { with }
end;   { CreateModelFromSpecModelVariant }

function TdmSales.GetNewSaleGroupCode(BranchCode: Integer): Integer;
begin
  with qryGetMaxSaleGroupCode do
    begin
      Params.ParamByName('SALE_GROUP_BRANCH_CODE').Value:= BranchCode;
      try
        Open;
        Result:= FieldByName('MAX_SALE_GROUP_CODE').AsInteger + 1;
      finally
        Close;
      end;   { try }
    end;
end;

procedure TdmSales.ForwardAutoCompleteModel(DeltaDS: TDataSet);
var
  MlObjectBranchCode: Integer;
  MlObjectCode: Integer;

  procedure SetMlObjectID;
  begin
    with qryACGetModel do
      begin
        SetParams(Params, DeltaDS);
        Open;
        try
          if not qryACGetModelIS_LIMITING.AsBoolean then
            raise Exception.Create(SNotLimitingModelId);

          MlObjectBranchCode:= qryACGetModelML_OBJECT_BRANCH_CODE.AsInteger;
          MlObjectCode:= qryACGetModelML_OBJECT_CODE.AsInteger;
        finally
          Close;
        end;  { try }
      end;  { with }
  end;  { SetMlObjectID }

  procedure CheckStoreQuantities;
  var
    s: string;
  begin
    with qryACCheckStoreQuantities do
      begin
        ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MlObjectBranchCode;
        ParamByName('ML_OBJECT_CODE').AsInteger:= MlObjectCode;
        ParamByName('BND_PROCESS_CODE').AsInteger:= pOPWithMLL;

        Open;
        try
          if not (Bof and Eof) then
            begin
             s:= '';
              while not Eof do
                begin
                  s:= s + SLineBreak +
                      Format(SNotEnoughStoreQuantityProduct, [
                        qryACCheckStoreQuantitiesPRODUCT_NAME.AsString,
                        qryACCheckStoreQuantitiesPRODUCT_NO.AsString,
                        qryACCheckStoreQuantitiesSTORE_IDENTIFIER.AsString,
                        qryACCheckStoreQuantitiesNEEDED_QUANTITY.DisplayText,
                        qryACCheckStoreQuantitiesSTORE_QUANTITY.DisplayText
                      ]);
                  Next;
                end;  { while }

              FErrorMsg:=
                SListNotEnoughStoreQuantityId + '(' +
                'NotEnoughStoreQuantityProducts:s=' + InternalEncodeString(s) + ')';
                
              raise Exception.Create(FErrorMsg);
            end;  { if }
        finally
          Close;
        end;  { try }
      end;  { with }
  end;  { CheckStoreQuantities }

  procedure CreateStoreDeals;
  begin
    with qryACCreateStoreDeals do
      begin
        ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MlObjectBranchCode;
        ParamByName('ML_OBJECT_CODE').AsInteger:= MlObjectCode;
        ParamByName('BND_PROCESS_CODE').AsInteger:= pOPWithMLL;
        ParamByName('IN_OUT').AsInteger:= ioOut;
        ParamByName('DEAL_TYPE_ABBREV').AsString:= SOutDealAbbrev;

        ExecSQL;
      end;  { with }
  end;  { CreateStoreDeals }

  procedure CheckOperations;
  begin
    with qryACCheckOperations do
      begin
        ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MlObjectBranchCode;
        ParamByName('ML_OBJECT_CODE').AsInteger:= MlObjectCode;

        Open;
        try
          if qryACCheckOperationsHAS_NORMAL_OPERATIONS.AsBoolean then
            raise Exception.Create(SNormalOperationsFoundId);
        finally
          Close;
        end;  { try }
      end;  { with }
  end;  { CheckOperations }

  procedure CreateOperationMovements;
  begin
    with qryACCreateOperaionMovements do
      begin
        ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MlObjectBranchCode;
        ParamByName('ML_OBJECT_CODE').AsInteger:= MlObjectCode;

        ExecSQL;
      end;  { with }
  end;  { CreateOperationsMovements }

  procedure CreateOPStoreDeal;
  var
    StoreDealObjectBranchCode, StoreDealObjectCode: Integer;
  begin
    SvrCommon.GetProcessObjectKey(pocStoreDeal,
      StoreDealObjectBranchCode, StoreDealObjectCode);

    with qryACCreateOPStoreDeal do
      begin
        ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MlObjectBranchCode;
        ParamByName('ML_OBJECT_CODE').AsInteger:= MlObjectCode;
        ParamByName('IN_OUT').AsInteger:= ioIn;
        ParamByName('DEAL_TYPE_ABBREV').AsString:= SInDealAbbrev;
        ParamByName('STORE_DEAL_OBJECT_BRANCH_CODE').AsInteger:= StoreDealObjectBranchCode;
        ParamByName('STORE_DEAL_OBJECT_CODE').AsInteger:= StoreDealObjectCode;

        ExecSQL;
      end;  { with }
  end;  { CreateOPStoreDeal }

begin
  SetMlObjectID;

  CheckStoreQuantities;
  CheckOperations;

  CreateStoreDeals;

  CreateOperationMovements;

  CreateOPStoreDeal;
end;

procedure TdmSales.BackwardAutoCompleteModel(DeltaDS: TDataSet);
var
  MlObjectBranchCode: Integer;
  MlObjectCode: Integer;

  procedure SetMlObjectID;
  begin
    with qryACGetModel do
      begin
        SetParams(Params, DeltaDS);
        Open;
        try
          if not qryACGetModelIS_LIMITING.AsBoolean then
            raise Exception.Create(SNotLimitingModelId);

          MlObjectBranchCode:= qryACGetModelML_OBJECT_BRANCH_CODE.AsInteger;
          MlObjectCode:= qryACGetModelML_OBJECT_CODE.AsInteger;
        finally
          Close;
        end;  { try }
      end;  { with }
  end;  { SetMlObjectID }

  procedure CreateStoreDeals;
  begin
    with qryACCreateStoreDeals do
      begin
        ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MlObjectBranchCode;
        ParamByName('ML_OBJECT_CODE').AsInteger:= MlObjectCode;
        ParamByName('BND_PROCESS_CODE').AsInteger:= pOPWithMLL;
        ParamByName('IN_OUT').AsInteger:= ioIn;
        ParamByName('DEAL_TYPE_ABBREV').AsString:= SInDealAbbrev;

        ExecSQL;
      end;  { with }
  end;  { CreateStoreDeals }

  procedure CreateOPStoreDeal;
  var
    StoreDealObjectBranchCode, StoreDealObjectCode: Integer;
  begin
    SvrCommon.GetProcessObjectKey(pocStoreDeal,
      StoreDealObjectBranchCode, StoreDealObjectCode);

    with qryACCreateOPStoreDeal do
      begin
        ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= MlObjectBranchCode;
        ParamByName('ML_OBJECT_CODE').AsInteger:= MlObjectCode;
        ParamByName('IN_OUT').AsInteger:= ioOut;
        ParamByName('DEAL_TYPE_ABBREV').AsString:= SOutDealAbbrev;
        ParamByName('STORE_DEAL_OBJECT_BRANCH_CODE').AsInteger:= StoreDealObjectBranchCode;
        ParamByName('STORE_DEAL_OBJECT_CODE').AsInteger:= StoreDealObjectCode;

        ExecSQL;
      end;  { with }
  end;  { CreateOPStoreDeal }

begin
  SetMlObjectID;
  CreateOPStoreDeal;
  CreateStoreDeals;
end;

procedure TdmSales.prvSpecModelVariantsGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  inherited;

  with DataSet do
    begin
      First;
      while not EOF do
        begin
          Edit;
          try
            FieldByName('MODEL_VARIANT_IDENTIFIER').AsString:=
              Format('%s (%s - %s]', [
                FieldByName('MAIN_DEPT_IDENTIFIER').AsString,
                FormatFloat(',0.###', FieldByName('MIN_TECH_QUANTITY').AsFloat),
                FormatFloat(',0.###', FieldByName('MAX_TECH_QUANTITY').AsFloat)]);
            Post;
          except
            Cancel;
            raise;
          end;   { try }

          Next;
        end;   { while }
    end;   { with }
end;

procedure TdmSales.prvSaleBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData[0];
  FSaleDealTypeCode:= -1;
end;

procedure TdmSales.prvSaleAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmSales.qrySaleAfterProviderStartTransaction(DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmSales.qrySaleBeforeProviderEndTransaction(DataSet: TDataSet;
  Commit: Boolean);
begin
  inherited;

  if Commit and (FSaleDealTypeCode = sdtLease) then
    begin
      qryFixLeasePSDs.ParamByName('SALE_OBJECT_BRANCH_CODE').AsInteger:= FSaleObjectBranchCode;
      qryFixLeasePSDs.ParamByName('SALE_OBJECT_CODE').AsInteger:= FSaleObjectCode;
      qryFixLeasePSDs.ExecSQL;
    end;
end;

procedure TdmSales.prvProductionOrderBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  FErrorMsg:= '';
  FDocsDelta:= OwnerData;
end;

procedure TdmSales.prvProductionOrderAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= FErrorMsg;
  FDocsDelta:= Unassigned;
end;

procedure TdmSales.qryProductionOrderAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

initialization
  TdmSalesProxy.FSingleton:= TdmSalesProxy.Create(TdmSales);

finalization
  FreeAndNil(TdmSalesProxy.FSingleton);
end.
