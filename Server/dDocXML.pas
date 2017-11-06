unit dDocXML;

interface

uses
  Windows, Messages, SysUtils, Classes, DB, DBClient, WideStrings, FMTBcd,
  SqlExpr, AbmesSQLQuery, AbmesFields, AbmesSQLConnection, XMLIntf, XMLDoc,
  dDBPooledDataModule, dPooledDataModule, xTDoc,
  xTDocItem, xTDept, xTMeasure, xTProduct, xTEducation, xTEmployee,
  xTProfession, xTTeam, xTCompanyType, xTCountry, xTLanguage, xTProcessObject,
  xTPartnerClass, xTPartner, xTShift, xTOccupationPhase, xTCraftType, xTCraft,
  xTOccupation, xTOperationType, xTModelLine, xTModelStage, xTModelOperation,
  xTBaseGroup, xTProductStore, xTEngineeringOrderType, xTPriority,
  xTProductionOrderBaseType, xTProductionOrderType, xTEngineeringOrder,
  xTCurrency, xTProcess, xTStoreDealType, xTStoreDeal, xTOperationMovementType,
  xTOperationMovement, xTProductOrigin, xTTransientStatus, xTSelfExistentStatus,
  xTDate, xTDateInterval, xTGlobals, xBaseObjectDocItem, xTEmpAvailModifierType,
  xTEmpDayAbsenceReason, xTEmpDayAbsenceDocType, xTEmpHourAvailModifierReason,
  xTEmpAvailModifier, xTTime, xTTimeInterval, xTDateTime, xTBOIOrderType,
  xTBudgetOrderClass, xTBudgetOrderRegularityType, xTBudgetOrder, xTDateUnit,
  xTBOIDistributionType, xTBudgetOrderItem, xTDisciplineEventType,
  xTEmployeeDisciplineEvent, xTTreeNode, xTProductEx,
  xTOccupationEmployeeAssignmentRegime, xTOccupationEmployeeAssignment,
  xTEmployeeDisciplineRating, xTFloatRange, xTSalary, DBXDevartOracle, uSmartLock,
  xTInvoice, xTVatReason, xTSaleShipment, xTSaleOrderType, xTBorderDealType,
  xTSaleType, xTShipmentType, xTDecisionType, xTAspectType, xTStreamType,
  xTSale, xTSaleRequestGroup, xTModel, xTExceptEventType, xTExceptEventGenType,
  xTExceptEventLevel, xTExceptEvent, xTDeliveryProject, JvStringHolder, xTDeliveryType;


type
  TdmDocXML = class(TDBPooledDataModule)
    qryDeptData: TAbmesSQLQuery;
    qryDeptCode: TAbmesSQLQuery;
    qryDeptCodeDEPT_CODE: TAbmesFloatField;
    qryMeasureData: TAbmesSQLQuery;
    qryProductData: TAbmesSQLQuery;
    qryProductCode: TAbmesSQLQuery;
    qryProductCodePRODUCT_CODE: TAbmesFloatField;
    qryProfessionCode: TAbmesSQLQuery;
    qryProfessionCodePROFESSION_CODE: TAbmesFloatField;
    qryProfessionData: TAbmesSQLQuery;
    qryEducationData: TAbmesSQLQuery;
    qryEmployeeCode: TAbmesSQLQuery;
    qryEmployeeData: TAbmesSQLQuery;
    qryEmployeeCodeEMPLOYEE_CODE: TAbmesFloatField;
    qrySpecOperationCode: TAbmesSQLQuery;
    qrySpecOperationCodeSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecOperationCodeSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySpecOperationCodeSPEC_LINE_CODE: TAbmesFloatField;
    qrySpecOperationCodeSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qrySpecOperationCodeSMVS_OPERATION_CODE: TAbmesFloatField;
    qrySpecOperationData: TAbmesSQLQuery;
    qryRealOperationCode: TAbmesSQLQuery;
    qryRealOperationCodeMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryRealOperationCodeMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryRealOperationData: TAbmesSQLQuery;
    qryTeamCode: TAbmesSQLQuery;
    qryTeamCodeTEAM_CODE: TAbmesFloatField;
    qryTeamData: TAbmesSQLQuery;
    qryCompanyTypeData: TAbmesSQLQuery;
    qryCountryData: TAbmesSQLQuery;
    qryLanguageData: TAbmesSQLQuery;
    qryPartnerClassData: TAbmesSQLQuery;
    qryPartnerData: TAbmesSQLQuery;
    qryPartnerCode: TAbmesSQLQuery;
    qryShiftData: TAbmesSQLQuery;
    qryOccupationPhaseData: TAbmesSQLQuery;
    qryCraftTypeData: TAbmesSQLQuery;
    qryCraftData: TAbmesSQLQuery;
    qryOccupationData: TAbmesSQLQuery;
    qryOccupationCode: TAbmesSQLQuery;
    qryOccupationCodeOCCUPATION_CODE: TAbmesFloatField;
    qrySpecLineData: TAbmesSQLQuery;
    qrySpecStageData: TAbmesSQLQuery;
    qrySpecStageCode: TAbmesSQLQuery;
    qrySpecStageCodeSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecStageCodeSPEC_LINE_CODE: TAbmesFloatField;
    qrySpecStageCodeSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySpecStageCodeSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qryOperationTypeData: TAbmesSQLQuery;
    qryMaterialListLineData: TAbmesSQLQuery;
    qryRealStageData: TAbmesSQLQuery;
    qryRealStageCode: TAbmesSQLQuery;
    qryRealStageCodeMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryRealStageCodeMLMS_OBJECT_CODE: TAbmesFloatField;
    qryDocItemData: TAbmesSQLQuery;
    qryDocItemDataDOC_ITEM_NO: TAbmesFloatField;
    qryDocItemDataDEVELOP_EMPLOYEE_CODE: TAbmesFloatField;
    qryDocItemDataDEVELOP_DATE: TAbmesSQLTimeStampField;
    qryDocItemDataDEVELOP_TIME: TAbmesSQLTimeStampField;
    qryDocItemDataAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDocItemDataAUTHORIZE_DATE: TAbmesSQLTimeStampField;
    qryDocItemDataAUTHORIZE_TIME: TAbmesSQLTimeStampField;
    qryDocItemDataAPPROVE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDocItemDataAPPROVE_DATE: TAbmesSQLTimeStampField;
    qryDocItemDataAPPROVE_TIME: TAbmesSQLTimeStampField;
    qryDocItemDataNOTES: TAbmesWideStringField;
    qryDocItemDataIS_INACTIVE: TAbmesFloatField;
    qrySpecStageDataSPEC_LINE_STAGE_NO: TAbmesFloatField;
    qrySpecStageDataDEPT_CODE: TAbmesFloatField;
    qrySpecStageDataTREATMENT_WORKDAYS: TAbmesFloatField;
    qrySpecStageDataOUTGOING_WORKDAYS: TAbmesFloatField;
    qrySpecStageDataIS_AUTO_MOVEMENT: TAbmesFloatField;
    qrySpecStageDataEXTERNAL_WORK_PRICE: TAbmesFloatField;
    qrySpecStageDataSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecStageDataSPEC_LINE_CODE: TAbmesFloatField;
    qryRealStageDataML_MODEL_STAGE_NO: TAbmesFloatField;
    qryRealStageDataDEPT_CODE: TAbmesFloatField;
    qryRealStageDataTREATMENT_WORKDAYS: TAbmesFloatField;
    qryRealStageDataOUTGOING_WORKDAYS: TAbmesFloatField;
    qryRealStageDataIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryRealStageDataEXTERNAL_WORK_PRICE: TAbmesFloatField;
    qryRealStageDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryRealStageDataMLL_OBJECT_CODE: TAbmesFloatField;
    qrySpecOperationDataSMVS_OPERATION_NO: TAbmesFloatField;
    qrySpecOperationDataOPERATION_TYPE_CODE: TAbmesFloatField;
    qrySpecOperationDataDEPT_CODE: TAbmesFloatField;
    qrySpecOperationDataPROFESSION_CODE: TAbmesFloatField;
    qrySpecOperationDataEFFORT_COEF: TAbmesFloatField;
    qrySpecOperationDataHOUR_TECH_QUANTITY: TAbmesFloatField;
    qrySpecOperationDataSETUP_PROFESSION_CODE: TAbmesFloatField;
    qrySpecOperationDataSETUP_EFFORT_COEF: TAbmesFloatField;
    qrySpecOperationDataSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    qrySpecOperationDataPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qrySpecOperationDataSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qrySpecOperationDataTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qrySpecOperationDataNOTES: TAbmesWideStringField;
    qrySpecOperationDataSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qrySpecOperationDataTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qrySpecOperationDataTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    qrySpecOperationDataTREATMENT_WORKDAYS: TAbmesFloatField;
    qrySpecOperationDataHAS_SPECIAL_CONTROL: TAbmesFloatField;
    qrySpecOperationDataSPEC_PRODUCT_CODE: TAbmesFloatField;
    qrySpecOperationDataSPEC_LINE_CODE: TAbmesFloatField;
    qrySpecOperationDataSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    qrySpecOperationDataSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    qryRealOperationDataMLMS_OPERATION_NO: TAbmesFloatField;
    qryRealOperationDataOPERATION_TYPE_CODE: TAbmesFloatField;
    qryRealOperationDataDEPT_CODE: TAbmesFloatField;
    qryRealOperationDataPROFESSION_CODE: TAbmesFloatField;
    qryRealOperationDataEFFORT_COEF: TAbmesFloatField;
    qryRealOperationDataHOUR_TECH_QUANTITY: TAbmesFloatField;
    qryRealOperationDataSETUP_PROFESSION_CODE: TAbmesFloatField;
    qryRealOperationDataSETUP_EFFORT_COEF: TAbmesFloatField;
    qryRealOperationDataSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    qryRealOperationDataPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryRealOperationDataSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryRealOperationDataTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryRealOperationDataNOTES: TAbmesWideStringField;
    qryRealOperationDataSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qryRealOperationDataTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    qryRealOperationDataTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    qryRealOperationDataTREATMENT_WORKDAYS: TAbmesFloatField;
    qryRealOperationDataHAS_SPECIAL_CONTROL: TAbmesFloatField;
    qryRealOperationDataMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryRealOperationDataMLMS_OBJECT_CODE: TAbmesFloatField;
    qryBaseGroupCode: TAbmesSQLQuery;
    qryBaseGroupCodeBASE_GROUP_CODE: TAbmesFloatField;
    qryBaseGroupData: TAbmesSQLQuery;
    qryBudgetOrderCode: TAbmesSQLQuery;
    qryBudgetOrderCodeBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryBudgetOrderCodeBUDGET_ORDER_CODE: TAbmesFloatField;
    qryBudgetOrderItemCode: TAbmesSQLQuery;
    qryBudgetOrderItemCodeBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryBudgetOrderItemCodeBUDGET_ORDER_CODE: TAbmesFloatField;
    qryBudgetOrderItemCodeBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    qryProductStoreCode: TAbmesSQLQuery;
    qryProductStoreCodePRODUCT_STORE_CODE: TAbmesFloatField;
    qryProductStoreData: TAbmesSQLQuery;
    qryDeficitCoverDecisionCode: TAbmesSQLQuery;
    qryDeficitCoverDecisionCodeDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeficitCoverDecisionCodeDCD_OBJECT_CODE: TAbmesFloatField;
    qryEngineeringOrderTypeData: TAbmesSQLQuery;
    qryPriorityData: TAbmesSQLQuery;
    qryProductionOrderBaseTypeData: TAbmesSQLQuery;
    qryProductionOrderTypeData: TAbmesSQLQuery;
    qryEngineeringOrderCode: TAbmesSQLQuery;
    qryEngineeringOrderCodeENGINEERING_ORDER_CODE: TAbmesFloatField;
    qryEngineeringOrderData: TAbmesSQLQuery;
    qryCurrencyData: TAbmesSQLQuery;
    qryProcessData: TAbmesSQLQuery;
    qryStoreDealTypeData: TAbmesSQLQuery;
    qryStoreDealCode: TAbmesSQLQuery;
    qryStoreDealCodeSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStoreDealCodeSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    qryStoreDealData: TAbmesSQLQuery;
    qryOperationMovementTypeData: TAbmesSQLQuery;
    qryOperationMovementCode: TAbmesSQLQuery;
    qryOperationMovementCodeOM_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementCodeOM_CODE: TAbmesFloatField;
    qryOperationMovementData: TAbmesSQLQuery;
    qryProductOriginData: TAbmesSQLQuery;
    qryTransientStatusData: TAbmesSQLQuery;
    qrySelfExistentStatusData: TAbmesSQLQuery;
    qryMeasureDataMEASURE_ABBREV: TAbmesWideStringField;
    qryMeasureDataMEASURE_NAME: TAbmesWideStringField;
    qrySelfExistentStatusDataSELF_EXISTENT_STATUS_NAME: TAbmesWideStringField;
    qryTransientStatusDataTRANSIENT_STATUS_NAME: TAbmesWideStringField;
    qryPriorityDataPRIORITY_NO: TAbmesFloatField;
    qryPriorityDataPRIORITY_NAME: TAbmesWideStringField;
    qryPriorityDataPRIORITY_COLOR: TAbmesFloatField;
    qryPriorityDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryProductOriginDataPRODUCT_ORIGIN_NAME: TAbmesWideStringField;
    qryProductOriginDataPRODUCT_ORIGIN_ABBREV: TAbmesWideStringField;
    qryPartnerClassDataPARTNER_CLASS_NAME: TAbmesWideStringField;
    qryPartnerClassDataPARTNER_CLASS_ABBREV: TAbmesWideStringField;
    qryProfessionDataPROFESSION_NAME: TAbmesWideStringField;
    qryProfessionDataHOUR_PRICE: TAbmesFloatField;
    qryTeamDataTEAM_NAME: TAbmesWideStringField;
    qryTeamDataTEAM_NO: TAbmesFloatField;
    qryTeamDataIS_ACTIVE: TAbmesFloatField;
    qryTeamDataDEPT_CODE: TAbmesFloatField;
    qrySpecLineDataDETAIL_CODE: TAbmesFloatField;
    qrySpecLineDataDETAIL_TECH_QUANTITY: TAbmesFloatField;
    qrySpecLineDataTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qrySpecLineDataNOTES: TAbmesWideStringField;
    qrySpecLineDataPRODUCT_CODE: TAbmesFloatField;
    qrySpecLineDataPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qrySpecLineDataIS_FOR_SINGLE_USE: TAbmesFloatField;
    qrySpecLineDataCONSTRUCTION_NOTES: TAbmesWideStringField;
    qrySpecLineDataIS_COMPLETE: TAbmesFloatField;
    qryOperationTypeDataOPERATION_TYPE_NAME: TAbmesWideStringField;
    qryOperationTypeDataOPERATION_TYPE_ABBREV: TAbmesWideStringField;
    qryBaseGroupDataBASE_GROUP_NO: TAbmesFloatField;
    qryBaseGroupDataBASE_GROUP_NAME: TAbmesWideStringField;
    qryBaseGroupDataGROUP_DEPT_CODE: TAbmesFloatField;
    qryOperationMovementTypeDataOPERATION_MOVEMENT_TYPE_ABBREV: TAbmesWideStringField;
    qryOperationMovementTypeDataOPERATION_MOVEMENT_TYPE_NAME: TAbmesWideStringField;
    qryOperationMovementDataOM_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementDataOM_NO: TAbmesFloatField;
    qryOperationMovementDataOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField;
    qryOperationMovementDataOM_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementDataOM_TIME: TAbmesSQLTimeStampField;
    qryOperationMovementDataFROM_EMPLOYEE_CODE: TAbmesFloatField;
    qryOperationMovementDataFROM_TEAM_CODE: TAbmesFloatField;
    qryOperationMovementDataTO_EMPLOYEE_CODE: TAbmesFloatField;
    qryOperationMovementDataTO_TEAM_CODE: TAbmesFloatField;
    qryOperationMovementDataTO_DEPT_CODE: TAbmesFloatField;
    qryOperationMovementDataWASTE_DOC_NO: TAbmesWideStringField;
    qryOperationMovementDataWASTE_DOC_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementDataWORK_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementDataTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementDataQA_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementDataQA_EMPLOYEE_CODE: TAbmesFloatField;
    qryOperationMovementDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryOperationMovementDataCREATE_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementDataCREATE_TIME: TAbmesSQLTimeStampField;
    qryOperationMovementDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryOperationMovementDataSTORNO_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementDataSTORNO_TIME: TAbmesSQLTimeStampField;
    qryOperationMovementDataBND_OM_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementDataBND_OM_CODE: TAbmesFloatField;
    qryOperationMovementDataFROM_MLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementDataFROM_MLMSO_OBJECT_CODE: TAbmesFloatField;
    qryOperationMovementDataTO_MLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementDataTO_MLMSO_OBJECT_CODE: TAbmesFloatField;
    qryOperationMovementDataREPLACED_OM_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementDataREPLACED_OM_CODE: TAbmesFloatField;
    qryOperationMovementDataTOTAL_PRICE: TAbmesFloatField;
    qryOperationMovementDataWORK_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementDataTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementDataQA_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryStoreDealTypeDataSTORE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qryStoreDealTypeDataIN_OUT: TAbmesFloatField;
    qryCurrencyDataCURRENCY_ABBREV: TAbmesWideStringField;
    qryCurrencyDataCURRENCY_NAME: TAbmesWideStringField;
    qryProcessDataPROCESS_ABBREV: TAbmesWideStringField;
    qryProcessDataPROCESS_NAME: TAbmesWideStringField;
    qryProductStoreDataPRODUCT_CODE: TAbmesFloatField;
    qryProductStoreDataSTORE_CODE: TAbmesFloatField;
    qryProductStoreDataMIN_QUANTITY: TAbmesFloatField;
    qryProductStoreDataBEGIN_DATE: TAbmesSQLTimeStampField;
    qryProductStoreDataEND_DATE: TAbmesSQLTimeStampField;
    qryProductionOrderBaseTypeDataPROD_ORDER_BASE_TYPE_NAME: TAbmesWideStringField;
    qryProductionOrderBaseTypeDataPROD_ORDER_BASE_TYPE_ABBREV: TAbmesWideStringField;
    qryProductionOrderTypeDataPRODUCTION_ORDER_TYPE_NAME: TAbmesWideStringField;
    qryProductionOrderTypeDataPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryProductionOrderTypeDataPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    qryEngineeringOrderTypeDataENGINEERING_ORDER_TYPE_NAME: TAbmesWideStringField;
    qryEngineeringOrderTypeDataENGINEERING_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryCraftTypeDataCRAFT_TYPE_NAME: TAbmesWideStringField;
    qryCraftDataCRAFT_NAME: TAbmesWideStringField;
    qryCraftDataCRAFT_TYPE_CODE: TAbmesFloatField;
    qryOccupationPhaseDataOCCUPATION_PHASE_NAME: TAbmesWideStringField;
    qryShiftDataSHIFT_NAME: TAbmesWideStringField;
    qryShiftDataSHIFT_ABBREV: TAbmesWideStringField;
    qryCountryDataCOUNTRY_NAME: TAbmesWideStringField;
    qryCountryDataCOUNTRY_ABBREV: TAbmesWideStringField;
    qryLanguageDataLANGUAGE_NAME: TAbmesWideStringField;
    qryEducationDataEDUCATION_NAME: TAbmesWideStringField;
    qryEducationDataEDUCATION_SHORT_NAME: TAbmesWideStringField;
    qryPartnerCodePARTNER_CODE: TAbmesFloatField;
    qryEmployeeDataPARTNER_CODE: TAbmesFloatField;
    qryCountWorkdays: TAbmesSQLQuery;
    qryCountWorkdaysWORKDAY_COUNT: TAbmesFloatField;
    qryEngineeringOrderDataENGINEERING_ORDER_NO: TAbmesFloatField;
    qryEngineeringOrderDataENGINEERING_ORDER_TYPE_CODE: TAbmesFloatField;
    qryEngineeringOrderDataENGINEERING_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryEngineeringOrderDataPRIORITY_CODE: TAbmesFloatField;
    qryEngineeringOrderDataORDER_DEPT_CODE: TAbmesFloatField;
    qryEngineeringOrderDataPRODUCT_CODE: TAbmesFloatField;
    qryEngineeringOrderDataTHOROUGHLY_ENG_PRODUCT_CODE: TAbmesFloatField;
    qryEngineeringOrderDataENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrderDataENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrderDataENGINEERING_DEPT_CODE: TAbmesFloatField;
    qryEngineeringOrderDataENGINEERING_EMPLOYEE_CODE: TAbmesFloatField;
    qryEngineeringOrderDataACTIVATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEngineeringOrderDataACTIVATE_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrderDataACTIVATE_TIME: TAbmesSQLTimeStampField;
    qryEngineeringOrderDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEngineeringOrderDataCLOSE_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrderDataCLOSE_TIME: TAbmesSQLTimeStampField;
    qryEngineeringOrderDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryEngineeringOrderDataANNUL_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrderDataANNUL_TIME: TAbmesSQLTimeStampField;
    qryEngineeringOrderDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEngineeringOrderDataCREATE_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrderDataCREATE_TIME: TAbmesSQLTimeStampField;
    qryEngineeringOrderDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEngineeringOrderDataCHANGE_DATE: TAbmesSQLTimeStampField;
    qryEngineeringOrderDataCHANGE_TIME: TAbmesSQLTimeStampField;
    qryEngineeringOrderDataCHANGE_COUNT: TAbmesFloatField;
    qryProcessObjectData: TAbmesSQLQuery;
    qryProcessObjectDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryStoreDealDataSTORE_CODE: TAbmesFloatField;
    qryStoreDealDataSTORE_DEAL_TYPE_CODE: TAbmesFloatField;
    qryStoreDealDataSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    qryStoreDealDataSTORE_DEAL_NO: TAbmesFloatField;
    qryStoreDealDataPRODUCT_CODE: TAbmesFloatField;
    qryStoreDealDataWANTED_QUANTITY: TAbmesFloatField;
    qryStoreDealDataQUANTITY: TAbmesFloatField;
    qryStoreDealDataACCOUNT_QUANTITY: TAbmesFloatField;
    qryStoreDealDataCURRENCY_CODE: TAbmesFloatField;
    qryStoreDealDataTOTAL_PRICE: TAbmesFloatField;
    qryStoreDealDataSTORE_EMPLOYEE_CODE: TAbmesFloatField;
    qryStoreDealDataOTHER_EMPLOYEE_CODE: TAbmesFloatField;
    qryStoreDealDataREQUEST_EMPLOYEE_CODE: TAbmesFloatField;
    qryStoreDealDataDEPT_CODE: TAbmesFloatField;
    qryStoreDealDataBND_PROCESS_CODE: TAbmesFloatField;
    qryStoreDealDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStoreDealDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryStoreDealDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryStoreDealDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryStoreDealDataCREATE_DATE: TAbmesSQLTimeStampField;
    qryStoreDealDataCREATE_TIME: TAbmesSQLTimeStampField;
    qryStoreDealDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryStoreDealDataSTORNO_DATE: TAbmesSQLTimeStampField;
    qryStoreDealDataSTORNO_TIME: TAbmesSQLTimeStampField;
    qryCompanyTypeDataCOMPANY_TYPE_NAME: TAbmesWideStringField;
    qryCompanyTypeDataCOMPANY_TYPE_ABBREV: TAbmesWideStringField;
    qryDocItemActiveFields: TAbmesSQLQuery;
    qryProductDataPRODUCT_NAME: TAbmesWideStringField;
    qryProductDataPRODUCT_IS_GROUP: TAbmesFloatField;
    qryProductDataPRODUCT_IDENTIFIER: TAbmesFloatField;
    qryProductDataPRODUCT_PARTNER_PRODUCT_NAMES: TAbmesWideStringField;
    qryProductDataWORK_MEASURE_CODE: TAbmesFloatField;
    qryProductDataACCOUNT_MEASURE_CODE: TAbmesFloatField;
    qryProductDataACCOUNT_MEASURE_COEF: TAbmesFloatField;
    qryProductDataTECH_MEASURE_CODE: TAbmesFloatField;
    qryProductDataTECH_MEASURE_COEF: TAbmesFloatField;
    qryProductDataTRANSPORT_MEASURE_CODE: TAbmesFloatField;
    qryProductDataTRANSPORT_MEASURE_COEF: TAbmesFloatField;
    qryProductDataIS_VAT_FREE: TAbmesFloatField;
    qryProductDataNOTES: TAbmesWideStringField;
    qryProductDataIS_INACTIVE: TAbmesFloatField;
    qryProductDataSELF_EXISTENT_STATUS_CODE: TAbmesFloatField;
    qryProductDataIS_PRODUCTION_PRODUCT: TAbmesFloatField;
    qryProductDataTRANSIENT_STATUS_CODE: TAbmesFloatField;
    qryProductDataWORKDAYS_TO_EXIST: TAbmesFloatField;
    qryProductDataIS_USED_BY_SALES: TAbmesFloatField;
    qryProductDataIS_USED_BY_SALE_PRODUCTION: TAbmesFloatField;
    qryProductDataIS_USED_BY_ENV_PRODUCTION: TAbmesFloatField;
    qryProductDataIS_PROVIDED_BY_DELIVERIES: TAbmesFloatField;
    qryProductDataIS_PROVIDED_BY_SALE_PRODUCTION: TAbmesFloatField;
    qryProductDataIS_PROVIDED_BY_ENV_PRODUCTION: TAbmesFloatField;
    qryProductDataUSED_BY_SALES_PR_CODE: TAbmesFloatField;
    qryProductDataUSED_BY_SALE_PROD_PR_CODE: TAbmesFloatField;
    qryProductDataUSED_BY_ENV_PROD_PR_CODE: TAbmesFloatField;
    qryProductDataPROV_BY_DELIVERIES_PR_CODE: TAbmesFloatField;
    qryProductDataPROV_BY_SALE_PROD_PR_CODE: TAbmesFloatField;
    qryProductDataPROV_BY_ENV_PROD_PR_CODE: TAbmesFloatField;
    qryProductDataPRODUCT_ORIGIN_CODE: TAbmesFloatField;
    qryDeptDataDEPT_NAME: TAbmesWideStringField;
    qryDeptDataDEPT_IS_GROUP: TAbmesFloatField;
    qryDeptDataDEPT_IDENTIFIER: TAbmesWideStringField;
    qryDeptDataDEPT_IS_STORE: TAbmesFloatField;
    qryPartnerDataPARTNER_NO: TAbmesFloatField;
    qryPartnerDataPARTNER_CLASS_CODE: TAbmesFloatField;
    qryPartnerDataPARTNER_FULL_NAME: TAbmesWideStringField;
    qryPartnerDataPARTNER_SHORT_NAME: TAbmesWideStringField;
    qryPartnerDataCOUNTRY_CODE: TAbmesFloatField;
    qryPartnerDataSTATE: TAbmesWideStringField;
    qryPartnerDataREGION: TAbmesWideStringField;
    qryPartnerDataCITY: TAbmesWideStringField;
    qryPartnerDataZIP: TAbmesWideStringField;
    qryPartnerDataADDRESS: TAbmesWideStringField;
    qryPartnerDataLANGUAGE_CODE: TAbmesFloatField;
    qryPartnerDataCOMPANY_NAME: TAbmesWideStringField;
    qryPartnerDataCOMPANY_TYPE_CODE: TAbmesFloatField;
    qryPartnerDataCOMPANY_TAX_NO: TAbmesFloatField;
    qryPartnerDataCOMPANY_IS_VAT_REGISTERED: TAbmesFloatField;
    qryPartnerDataPERSON_FIRST_NAME: TAbmesWideStringField;
    qryPartnerDataPERSON_MIDDLE_NAME: TAbmesWideStringField;
    qryPartnerDataPERSON_LAST_NAME: TAbmesWideStringField;
    qryPartnerDataPERSON_ABBREV: TAbmesWideStringField;
    qryPartnerDataPERSON_EGN: TAbmesWideStringField;
    qryPartnerDataPERSON_BIRTH_DATE: TAbmesSQLTimeStampField;
    qryPartnerDataPERSON_EDUCATION_CODE: TAbmesFloatField;
    qryOccupationDataOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationDataOCCUPATION_NAME: TAbmesWideStringField;
    qryOccupationDataDEPT_CODE: TAbmesFloatField;
    qryOccupationDataOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOccupationDataOCCUPATION_END_DATE: TAbmesSQLTimeStampField;
    qryOccupationDataOCCUPATION_LEVEL: TAbmesFloatField;
    qryOccupationDataSHIFT_CODE: TAbmesFloatField;
    qryOccupationDataNOTES: TAbmesWideStringField;
    qryOccupationDataIS_MAIN: TAbmesFloatField;
    qryOccupationDataOCCUPATION_PHASE_CODE: TAbmesFloatField;
    qryOccupationDataPRODUCT_CODE: TAbmesFloatField;
    qryOccupationDataCRAFT_CODE: TAbmesFloatField;
    qryDocItemActiveFieldsFIELD_IDENTIFIER_PATH: TAbmesWideStringField;
    qryDocItemActiveFieldsFIELD_IDENTIFIER: TAbmesWideStringField;
    qryDocItemActiveFieldsFIELD_NAME_PATH: TAbmesWideStringField;
    qryDocItemActiveFieldsFIELD_NAME: TAbmesWideStringField;
    qryDocItemActiveFieldsIS_VISIBLE: TAbmesFloatField;
    qryDocItemActiveFieldsFIELD_INTEGER_IDENTIFIER: TAbmesFloatField;
    qryDocItemActiveFieldsHAS_CHILD_FIELDS: TAbmesFloatField;
    qryDocItemActiveFieldsFIELD_LEVEL: TAbmesFloatField;
    qryMaterialListLineDataDETAIL_CODE: TAbmesFloatField;
    qryMaterialListLineDataDETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryMaterialListLineDataNOTES: TAbmesWideStringField;
    qryMaterialListLineDataLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryMaterialListLineDataPRODUCT_CODE: TAbmesFloatField;
    qryMaterialListLineDataPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryMaterialListLineDataIS_FOR_SINGLE_USE: TAbmesFloatField;
    qryMaterialListLineDataCONSTRUCTION_NOTES: TAbmesWideStringField;
    qryMaterialListLineDataIS_COMPLETE: TAbmesFloatField;
    qryEmpAvailModifierTypeData: TAbmesSQLQuery;
    qryEmpDayAbsenceReasonData: TAbmesSQLQuery;
    qryEmpDayAbsenceReasonDataEMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField;
    qryEmpDayAbsenceReasonDataEMP_DAY_ABSENCE_REASON_ABBREV: TAbmesWideStringField;
    qryEmpDayAbsenceDocTypeData: TAbmesSQLQuery;
    qryEmpDayAbsenceDocTypeDataEMP_DAY_ABSENCE_DOC_TYPE_NAME: TAbmesWideStringField;
    qryEmpHourAvailModifierReasonData: TAbmesSQLQuery;
    qryEmpHourAvailModifierReasonDataEMP_HOUR_AVAIL_MOD_REASON_NAME: TAbmesWideStringField;
    qryEmpAvailModifierData: TAbmesSQLQuery;
    qryEmpAvailModifierCode: TAbmesSQLQuery;
    qryEmpAvailModifierCodeEMP_AVAIL_MODIFIER_CODE: TAbmesFloatField;
    qryEmpAvailModifierTypeDataEMP_AVAIL_MODIFIER_TYPE_NAME: TAbmesWideStringField;
    qryEmpAvailModifierTypeDataEMP_AVAIL_MODIFIER_TYPE_ABBREV: TAbmesWideStringField;
    qryEmpAvailModifierDataEMPLOYEE_CODE: TAbmesFloatField;
    qryEmpAvailModifierDataAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmpAvailModifierDataEMP_AVAIL_MODIFIER_TYPE_CODE: TAbmesFloatField;
    qryEmpAvailModifierDataBEGIN_DATE: TAbmesSQLTimeStampField;
    qryEmpAvailModifierDataEND_DATE: TAbmesSQLTimeStampField;
    qryEmpAvailModifierDataEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    qryEmpAvailModifierDataEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField;
    qryEmpAvailModifierDataEMP_DAY_ABSENCE_DOC_NO: TAbmesWideStringField;
    qryEmpAvailModifierDataEMP_DAY_ABSENCE_DOC_DATE: TAbmesSQLTimeStampField;
    qryEmpAvailModifierDataEMP_DAY_ABSENCE_DOC_ISSUER: TAbmesWideStringField;
    qryEmpAvailModifierDataEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField;
    qryEmpAvailModifierDataBEGIN_TIME: TAbmesSQLTimeStampField;
    qryEmpAvailModifierDataEND_TIME: TAbmesSQLTimeStampField;
    qryEmpAvailModifierDataDURATION_HOURS: TAbmesFloatField;
    qryEmpAvailModifierDataIS_PERSONAL_WORKDAYS_ONLY: TAbmesFloatField;
    qryEmpAvailModifierDataNOTES: TAbmesWideStringField;
    qryEmpAvailModifierDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmpAvailModifierDataCREATE_DATE: TAbmesSQLTimeStampField;
    qryEmpAvailModifierDataCREATE_TIME: TAbmesSQLTimeStampField;
    qryEmpAvailModifierDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmpAvailModifierDataSTORNO_DATE: TAbmesSQLTimeStampField;
    qryEmpAvailModifierDataSTORNO_TIME: TAbmesSQLTimeStampField;
    qryBOIOrderTypeData: TAbmesSQLQuery;
    qryBOIOrderTypeDataBOI_ORDER_TYPE_NAME: TAbmesWideStringField;
    qryBOIOrderTypeDataBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qryBudgetOrderClassData: TAbmesSQLQuery;
    qryBudgetOrderClassDataBUDGET_ORDER_CLASS_NAME: TAbmesWideStringField;
    qryBudgetOrderRegularityTypeData: TAbmesSQLQuery;
    qryBudgetOrderRegularityTypeDataBO_REGULARITY_TYPE_NAME: TAbmesWideStringField;
    qryBudgetOrderRegularityTypeDataBO_REGULARITY_TYPE_ABBREV: TAbmesWideStringField;
    qryBudgetOrderData: TAbmesSQLQuery;
    qryDateUnitData: TAbmesSQLQuery;
    qryBOIDistributionTypeData: TAbmesSQLQuery;
    qryBOIDistributionTypeDataBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField;
    qryBOIDistributionTypeDataBOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField;
    qryBudgetOrderItemData: TAbmesSQLQuery;
    qryDateUnitDataTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    qryDateUnitDataTHE_DATE_UNIT_ABBREV: TAbmesWideStringField;
    qryBudgetOrderDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryBudgetOrderDataBUDGET_ORDER_CODE: TAbmesFloatField;
    qryBudgetOrderDataBO_REGULARITY_TYPE_CODE: TAbmesFloatField;
    qryBudgetOrderDataBUDGET_ORDER_CLASS_CODE: TAbmesFloatField;
    qryBudgetOrderDataGENERATOR_DEPT_CODE: TAbmesFloatField;
    qryBudgetOrderDataDEVELOPER_DEPT_CODE: TAbmesFloatField;
    qryBudgetOrderDataDESCRIPTION: TAbmesWideStringField;
    qryBudgetOrderDataBEGIN_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderDataEND_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderDataTOTAL_PRICE: TAbmesFloatField;
    qryBudgetOrderDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderDataCREATE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderDataCREATE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrderDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderDataCHANGE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderDataCHANGE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrderDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderDataANNUL_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderDataANNUL_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrderDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderDataCLOSE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderDataCLOSE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrderItemDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    qryBudgetOrderItemDataBUDGET_ORDER_CODE: TAbmesFloatField;
    qryBudgetOrderItemDataBUDGET_ORDER_ITEM_CODE: TAbmesFloatField;
    qryBudgetOrderItemDataDEPT_CODE: TAbmesFloatField;
    qryBudgetOrderItemDataBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    qryBudgetOrderItemDataBEGIN_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderItemDataEND_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderItemDataDISTRIBUTED_SINGLE_PRICE: TAbmesFloatField;
    qryBudgetOrderItemDataDISTRIBUTION_DATE_UNIT_CODE: TAbmesFloatField;
    qryBudgetOrderItemDataTOTAL_PRICE: TAbmesFloatField;
    qryBudgetOrderItemDataBO_PRICE_PERCENT: TAbmesFloatField;
    qryBudgetOrderItemDataIS_CONFIRMED: TAbmesFloatField;
    qryBudgetOrderItemDataIS_FOR_RECONSIDERATION: TAbmesFloatField;
    qryBudgetOrderItemDataIS_CANCELED: TAbmesFloatField;
    qryBudgetOrderItemDataDECISION_ENTER_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderItemDataDECISION_ENTER_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderItemDataDECISION_APPROVE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderItemDataDECISION_APPROVE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderItemDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderItemDataCREATE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderItemDataCREATE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrderItemDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderItemDataCHANGE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderItemDataCHANGE_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrderItemDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderItemDataANNUL_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderItemDataANNUL_TIME: TAbmesSQLTimeStampField;
    qryBudgetOrderItemDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryBudgetOrderItemDataCLOSE_DATE: TAbmesSQLTimeStampField;
    qryBudgetOrderItemDataCLOSE_TIME: TAbmesSQLTimeStampField;
    qryDisciplineEventTypeData: TAbmesSQLQuery;
    qryEmployeeDisciplineEventData: TAbmesSQLQuery;
    qryEmployeeDisciplineEventDataEMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventDataDISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField;
    qryEmployeeDisciplineEventDataAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventDataDISCIPLINE_EVENT_COMMENT: TAbmesWideStringField;
    qryEmployeeDisciplineEventDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventDataCREATE_DATE: TAbmesSQLTimeStampField;
    qryEmployeeDisciplineEventDataCREATE_TIME: TAbmesSQLTimeStampField;
    qryEmployeeDisciplineEventDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventDataSTORNO_DATE: TAbmesSQLTimeStampField;
    qryEmployeeDisciplineEventDataSTORNO_TIME: TAbmesSQLTimeStampField;
    qryEmployeeDisciplineEventCode: TAbmesSQLQuery;
    qryEmployeeDisciplineEventCodeEMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventCodeDISCIPLINE_EVENT_CODE: TAbmesFloatField;
    qryProductMaterial: TAbmesSQLQuery;
    qryProductMaterialMATERIAL_CODE: TAbmesFloatField;
    qryProductMaterialMATERIAL_TECH_QUANTITY: TAbmesFloatField;
    qryPartnerDataCOMPANY_BULSTAT: TAbmesWideStringField;
    qryOccupationEmployeeRegimeData: TAbmesSQLQuery;
    qryOccupationEmployeeRegimeDataOE_REGIME_NAME: TAbmesWideStringField;
    qryOccupationEmployeeData: TAbmesSQLQuery;
    qryOccupationEmployeeDataOCCUPATION_CODE: TAbmesFloatField;
    qryOccupationEmployeeDataEMPLOYEE_CODE: TAbmesFloatField;
    qryOccupationEmployeeDataASSIGNMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOccupationEmployeeDataASSIGNMENT_END_DATE: TAbmesSQLTimeStampField;
    qryOccupationEmployeeDataOE_REGIME_CODE: TAbmesFloatField;
    qryOccupationEmployeeDataSALARY: TAbmesFloatField;
    qryOccupationEmployeeDataSALARY_DATE_UNIT_CODE: TAbmesFloatField;
    qryOccupationEmployeeCode: TAbmesSQLQuery;
    qryOccupationEmployeeCodeOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    qryOccupationEmployeeDataOCCUPATION_EMP_PROFESSIONS: TAbmesWideStringField;
    qryEmployeeDataNEGATIVE_DISCIPLINE_RATING: TAbmesFloatField;
    qryEmployeeDataPOSITIVE_DISCIPLINE_RATING: TAbmesFloatField;
    qryEmployeeDataEMPLOYEE_PROFESSIONS: TAbmesWideStringField;
    qryOccupationDataBASE_SALARY: TAbmesFloatField;
    qryOccupationDataDATE_UNIT_CODE: TAbmesFloatField;
    qryOccupationDataMIN_SALARY_RATIO_COEF: TAbmesFloatField;
    qryOccupationDataMAX_SALARY_RATIO_COEF: TAbmesFloatField;
    qryOccupationDataOCCUPATION_PROFESSIONS: TAbmesWideStringField;
    qryOccupationDataOCCUPATION_WORK_DEPTS: TAbmesWideStringField;
    qryCraftTypeDataCRAFT_TYPE_CODE: TAbmesFloatField;
    qryCraftDataCRAFT_CODE: TAbmesFloatField;
    qryEmployeeDisciplineEventDataDISC_EVENT_TYPE_CODE: TAbmesFloatField;
    qryDisciplineEventTypeDataNAME: TAbmesWideStringField;
    qryDisciplineEventTypeDataRATING: TAbmesFloatField;
    qryRealOperationDataSETUP_COUNT: TAbmesFloatField;
    qrySpecOperationDataSETUP_COUNT: TAbmesFloatField;
    qryBudgetOrderItemDataBUDGET_PRODUCT_CODE: TAbmesFloatField;
    qryProductDataBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    qryInvoiceCode: TAbmesSQLQuery;
    qryInvoiceCodeINVOICE_BRANCH_CODE: TAbmesFloatField;
    qryInvoiceCodeINVOICE_CODE: TAbmesFloatField;
    qryInvoiceData: TAbmesSQLQuery;
    qryInvoiceDataINVOICE_BRANCH_CODE: TAbmesFloatField;
    qryInvoiceDataINVOICE_CODE: TAbmesFloatField;
    qryInvoiceDataIS_PROFORM_INVOICE: TAbmesFloatField;
    qryInvoiceDataINVOICE_NO: TAbmesFloatField;
    qryInvoiceDataINVOICE_TYPE_CODE: TAbmesFloatField;
    qryInvoiceDataINVOICE_TYPE_NAME: TAbmesWideStringField;
    qryInvoiceDataINVOICE_TYPE_I_NAME: TAbmesWideStringField;
    qryInvoiceDataINVOICE_DATE: TAbmesSQLTimeStampField;
    qryInvoiceDataEVENT_DATE: TAbmesSQLTimeStampField;
    qryInvoiceDataINVOICE_PLACE: TAbmesWideStringField;
    qryInvoiceDataINVOICE_I_PLACE: TAbmesWideStringField;
    qryInvoiceDataSELLER_COMPANY_CODE: TAbmesFloatField;
    qryInvoiceDataSELLER_NAME: TAbmesWideStringField;
    qryInvoiceDataSELLER_CITY: TAbmesWideStringField;
    qryInvoiceDataSELLER_ADDRESS: TAbmesWideStringField;
    qryInvoiceDataSELLER_BULSTAT: TAbmesWideStringField;
    qryInvoiceDataSELLER_VAT_NO: TAbmesWideStringField;
    qryInvoiceDataSELLER_IS_PERSON: TAbmesFloatField;
    qryInvoiceDataSELLER_EGN: TAbmesWideStringField;
    qryInvoiceDataSELLER_PERSON_NAME: TAbmesWideStringField;
    qryInvoiceDataSELLER_I_NAME: TAbmesWideStringField;
    qryInvoiceDataSELLER_I_CITY: TAbmesWideStringField;
    qryInvoiceDataSELLER_I_ADDRESS: TAbmesWideStringField;
    qryInvoiceDataSELLER_PERSON_I_NAME: TAbmesWideStringField;
    qryInvoiceDataSENDER_COMPANY_CODE: TAbmesFloatField;
    qryInvoiceDataSENDER_NAME: TAbmesWideStringField;
    qryInvoiceDataSENDER_ADDRESS: TAbmesWideStringField;
    qryInvoiceDataSENDER_I_NAME: TAbmesWideStringField;
    qryInvoiceDataSENDER_I_ADDRESS: TAbmesWideStringField;
    qryInvoiceDataBUYER_COMPANY_CODE: TAbmesFloatField;
    qryInvoiceDataBUYER_NAME: TAbmesWideStringField;
    qryInvoiceDataBUYER_CITY: TAbmesWideStringField;
    qryInvoiceDataBUYER_ADDRESS: TAbmesWideStringField;
    qryInvoiceDataBUYER_BULSTAT: TAbmesWideStringField;
    qryInvoiceDataBUYER_VAT_NO: TAbmesWideStringField;
    qryInvoiceDataBUYER_IS_PERSON: TAbmesFloatField;
    qryInvoiceDataBUYER_EGN: TAbmesWideStringField;
    qryInvoiceDataBUYER_PERSON_NAME: TAbmesWideStringField;
    qryInvoiceDataBUYER_I_NAME: TAbmesWideStringField;
    qryInvoiceDataBUYER_I_CITY: TAbmesWideStringField;
    qryInvoiceDataBUYER_I_ADDRESS: TAbmesWideStringField;
    qryInvoiceDataBUYER_PERSON_I_NAME: TAbmesWideStringField;
    qryInvoiceDataRECEIVER_COMPANY_CODE: TAbmesFloatField;
    qryInvoiceDataRECEIVER_NAME: TAbmesWideStringField;
    qryInvoiceDataRECEIVER_ADDRESS: TAbmesWideStringField;
    qryInvoiceDataRECEIVER_I_NAME: TAbmesWideStringField;
    qryInvoiceDataRECEIVER_I_ADDRESS: TAbmesWideStringField;
    qryInvoiceDataCURRENCY_CODE: TAbmesFloatField;
    qryInvoiceDataVAT_PERCENT: TAbmesFloatField;
    qryInvoiceDataTOTAL_PRICE: TAbmesFloatField;
    qryInvoiceDataCURRENCY_RATE: TAbmesFloatField;
    qryInvoiceDataIS_CASH_PAYMENT: TAbmesFloatField;
    qryInvoiceDataIBAN: TAbmesWideStringField;
    qryInvoiceDataVAT_REASON_CODE: TAbmesFloatField;
    qryInvoiceDataNOTES: TAbmesWideStringField;
    qryInvoiceDataAPPROVE_EMPLOYEE_CODE: TAbmesFloatField;
    qryInvoiceDataAPPROVE_DATE: TAbmesSQLTimeStampField;
    qryInvoiceDataAPPROVE_TIME: TAbmesSQLTimeStampField;
    qryInvoiceDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryInvoiceDataCREATE_DATE: TAbmesSQLTimeStampField;
    qryInvoiceDataCREATE_TIME: TAbmesSQLTimeStampField;
    qryInvoiceDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryInvoiceDataCHANGE_DATE: TAbmesSQLTimeStampField;
    qryInvoiceDataCHANGE_TIME: TAbmesSQLTimeStampField;
    qryInvoiceDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryInvoiceDataSTORNO_DATE: TAbmesSQLTimeStampField;
    qryInvoiceDataSTORNO_TIME: TAbmesSQLTimeStampField;
    qryInvoiceDataBC_TOTAL_PRICE: TAbmesFloatField;
    qryInvoiceDataTOTAL_PRICE_VAT: TAbmesFloatField;
    qryInvoiceDataBC_TOTAL_PRICE_VAT: TAbmesFloatField;
    qryInvoiceDataPAYMENT_PRICE: TAbmesFloatField;
    qryVatReasonData: TAbmesSQLQuery;
    qryVatReasonDataVAT_REASON_CODE: TAbmesFloatField;
    qryVatReasonDataVAT_REASON_NO: TAbmesFloatField;
    qryVatReasonDataVAT_REASON_NAME: TAbmesWideStringField;
    qryVatReasonDataVAT_REASON_ABBREV: TAbmesWideStringField;
    qryVatReasonDataVAT_REASON_I_NAME: TAbmesWideStringField;
    qryVatReasonDataVAT_REASON_I_ABBREV: TAbmesWideStringField;
    qryInvoiceItemsData: TAbmesSQLQuery;
    qryInvoiceItemsDataBRANCH_CODE: TAbmesFloatField;
    qryInvoiceItemsDataINVOICE_ITEM_CODE: TAbmesFloatField;
    qryInvoiceItemsDataPRODUCT_CODE: TAbmesFloatField;
    qryInvoiceItemsDataITEM_NAME: TAbmesWideStringField;
    qryInvoiceItemsDataITEM_I_NAME: TAbmesWideStringField;
    qryInvoiceItemsDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryInvoiceItemsDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryInvoiceItemsDataACCOUNT_QUANTITY: TAbmesFloatField;
    qryInvoiceItemsDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryInvoiceItemsDataACCOUNT_MEASURE_I_ABBREV: TAbmesWideStringField;
    qryInvoiceItemsDataMARKET_SINGLE_PRICE: TAbmesFloatField;
    qryInvoiceItemsDataDISCOUNT_PERCENT: TAbmesFloatField;
    qryInvoiceItemsDataSINGLE_PRICE: TAbmesFloatField;
    qryInvoiceItemsDataTOTAL_PRICE: TAbmesFloatField;
    qryDocData: TAbmesSQLQuery;
    qryDocDataDOC_EMPTINESS_REQUIREMENT_NAME: TAbmesWideStringField;
    qryDocDataIS_COMPLETE: TAbmesFloatField;
    qryDocItemsData: TAbmesSQLQuery;
    qryDocItemsDataDOC_BRANCH_CODE: TAbmesFloatField;
    qryDocItemsDataDOC_CODE: TAbmesFloatField;
    qryDocItemsDataDOC_ITEM_CODE: TAbmesFloatField;
    qryDocItemDataDOC_ITEM_TYPE_NAME: TAbmesWideStringField;
    qryDocItemDataDOC_ITEM_NAME: TAbmesWideStringField;
    qrySaleShipmentCode: TAbmesSQLQuery;
    qrySaleShipmentCodeSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleShipmentCodeSHIPMENT_OBJECT_CODE: TAbmesFloatField;
    qrySaleShipmentData: TAbmesSQLQuery;
    qrySaleShipmentDataSALE_SHIPMENT_NO: TAbmesFloatField;
    qrySaleShipmentDataSALE_SHIPMENT_IDENTIFIER: TAbmesWideStringField;
    qrySaleShipmentDataSHIPMENT_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentDataPLAN_QUANTITY: TAbmesFloatField;
    qrySaleShipmentDataPLAN_ACCOUNT_QUANTITY: TAbmesFloatField;
    qrySaleShipmentDataSHIPMENT_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentDataQUANTITY: TAbmesFloatField;
    qrySaleShipmentDataACCOUNT_QUANTITY: TAbmesFloatField;
    qrySaleShipmentDataRECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentDataINVOICE_NO: TAbmesFloatField;
    qrySaleShipmentDataIS_PROFORM_INVOICE: TAbmesFloatField;
    qrySaleShipmentDataINVOICE_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentDataINVOICE_CURRENCY_CODE: TAbmesFloatField;
    qrySaleShipmentDataINVOICE_SINGLE_PRICE: TAbmesFloatField;
    qrySaleShipmentDataINVOICE_TOTAL_PRICE: TAbmesFloatField;
    qrySaleCode: TAbmesSQLQuery;
    qrySaleData: TAbmesSQLQuery;
    qrySaleCodeSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleCodeSALE_OBJECT_CODE: TAbmesFloatField;
    qrySaleDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySaleDataREQUEST_LINE_NO: TAbmesFloatField;
    qrySaleDataASPECT_TYPE_CODE: TAbmesFloatField;
    qrySaleDataCLIENT_COMPANY_CODE: TAbmesFloatField;
    qrySaleDataCLIENT_REQUEST_NO: TAbmesWideStringField;
    qrySaleDataPRODUCT_CODE: TAbmesFloatField;
    qrySaleDataCOMPANY_PRODUCT_NAME: TAbmesWideStringField;
    qrySaleDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    qrySaleDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    qrySaleDataOFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleDataOFFER_SEND_DATE: TAbmesSQLTimeStampField;
    qrySaleDataOFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleDataOFFER_ANSWER_DATE: TAbmesSQLTimeStampField;
    qrySaleDataDECISION_PLAN_DATE: TAbmesSQLTimeStampField;
    qrySaleDataDECISION_DATE: TAbmesSQLTimeStampField;
    qrySaleDataQUANTITY: TAbmesFloatField;
    qrySaleDataACCOUNT_QUANTITY: TAbmesFloatField;
    qrySaleDataDISCOUNT_PERCENT: TAbmesFloatField;
    qrySaleDataMARKET_SINGLE_PRICE: TAbmesFloatField;
    qrySaleDataSINGLE_PRICE: TAbmesFloatField;
    qrySaleDataCURRENCY_CODE: TAbmesFloatField;
    qrySaleDataMANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleDataDECISION_TYPE_CODE: TAbmesFloatField;
    qrySaleDataDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleDataNOTES: TAbmesWideStringField;
    qrySaleDataPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField;
    qrySaleDataPROGNOSIS_END_DATE: TAbmesSQLTimeStampField;
    qrySaleDataOUR_OFFER_QUANTITY: TAbmesFloatField;
    qrySaleDataOUR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField;
    qrySaleDataOUR_OFFER_SINGLE_PRICE: TAbmesFloatField;
    qrySaleDataOUR_OFFER_CURRENCY_CODE: TAbmesFloatField;
    qrySaleDataCL_OFFER_QUANTITY: TAbmesFloatField;
    qrySaleDataCL_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField;
    qrySaleDataCL_OFFER_SINGLE_PRICE: TAbmesFloatField;
    qrySaleDataCL_OFFER_CURRENCY_CODE: TAbmesFloatField;
    qrySaleDataRECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleDataCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    qrySaleDataSHIPMENT_DATE: TAbmesSQLTimeStampField;
    qrySaleDataSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    qrySaleDataSALE_BRANCH_CODE: TAbmesFloatField;
    qrySaleDataSALE_NO: TAbmesFloatField;
    qrySaleDataSALE_TYPE_CODE: TAbmesFloatField;
    qrySaleDataSALE_PRIORITY_CODE: TAbmesFloatField;
    qrySaleDataSHIPMENT_STORE_CODE: TAbmesFloatField;
    qrySaleDataSHIPMENT_DAYS: TAbmesFloatField;
    qrySaleDataRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField;
    qrySaleDataRECEIVE_PLACE_COUNTRY_CODE: TAbmesFloatField;
    qrySaleDataCUSTOMHOUSE_CODE: TAbmesFloatField;
    qrySaleDataSHIPMENT_TYPE_CODE: TAbmesFloatField;
    qrySaleDataIS_VENDOR_TRANSPORT: TAbmesFloatField;
    qrySaleDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleDataANNUL_DATE: TAbmesSQLTimeStampField;
    qrySaleDataANNUL_TIME: TAbmesSQLTimeStampField;
    qrySaleDataFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleDataFINISH_DATE: TAbmesSQLTimeStampField;
    qrySaleDataFINISH_TIME: TAbmesSQLTimeStampField;
    qrySaleDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleDataCREATE_DATE: TAbmesSQLTimeStampField;
    qrySaleDataCREATE_TIME: TAbmesSQLTimeStampField;
    qrySaleDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleDataCHANGE_DATE: TAbmesSQLTimeStampField;
    qrySaleDataCHANGE_TIME: TAbmesSQLTimeStampField;
    qrySaleOrderTypeData: TAbmesSQLQuery;
    qrySaleOrderTypeDataSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleOrderTypeDataSALE_ORDER_TYPE_NAME: TAbmesWideStringField;
    qryBorderDealTypeData: TAbmesSQLQuery;
    qryBorderDealTypeDataBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    qryBorderDealTypeDataBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    qrySaleTypeData: TAbmesSQLQuery;
    qrySaleTypeDataSALE_TYPE_ABBREV: TAbmesWideStringField;
    qrySaleTypeDataSALE_TYPE_NAME: TAbmesWideStringField;
    qryShipmentTypeData: TAbmesSQLQuery;
    qryShipmentTypeDataSHIPMENT_TYPE_ABBREV: TAbmesWideStringField;
    qryShipmentTypeDataSHIPMENT_TYPE_NAME: TAbmesWideStringField;
    qryShipmentTypeDataNOTES: TAbmesWideStringField;
    qryDecisionTypeData: TAbmesSQLQuery;
    qryDecisionTypeDataDECISION_TYPE_ABBREV: TAbmesWideStringField;
    qryDecisionTypeDataDECISION_TYPE_NAME: TAbmesWideStringField;
    qryAspectTypeData: TAbmesSQLQuery;
    qryAspectTypeDataASPECT_TYPE_ABBREV: TAbmesWideStringField;
    qryAspectTypeDataASPECT_TYPE_NAME: TAbmesWideStringField;
    qrySaleDataSALE_IDENTIFIER: TAbmesWideStringField;
    qrySaleRequestGroupCode: TAbmesSQLQuery;
    qrySaleRequestGroupData: TAbmesSQLQuery;
    qrySaleRequestGroupCodeREQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupCodeREQUEST_NO: TAbmesFloatField;
    qrySaleRequestGroupDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupDataSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupDataREQUEST_BRANCH_CODE: TAbmesFloatField;
    qrySaleRequestGroupDataREQUEST_NO: TAbmesFloatField;
    qrySaleRequestGroupDataSTREAM_TYPE_CODE: TAbmesFloatField;
    qrySaleRequestGroupDataIS_ACTIVATED_BY_CLIENT: TAbmesFloatField;
    qrySaleRequestGroupDataCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField;
    qrySaleRequestGroupDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupDataCLIENT_COMPANY_CODE: TAbmesFloatField;
    qrySaleRequestGroupDataMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    qrySaleRequestGroupDataSRG_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupDataCREATE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupDataCREATE_TIME: TAbmesSQLTimeStampField;
    qrySaleRequestGroupDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupDataCHANGE_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupDataCHANGE_TIME: TAbmesSQLTimeStampField;
    qrySaleRequestGroupDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupDataANNUL_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupDataANNUL_TIME: TAbmesSQLTimeStampField;
    qrySaleRequestGroupDataFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    qrySaleRequestGroupDataFINISH_DATE: TAbmesSQLTimeStampField;
    qrySaleRequestGroupDataFINISH_TIME: TAbmesSQLTimeStampField;
    qryStreamTypeData: TAbmesSQLQuery;
    qryStreamTypeDataSTREAM_TYPE_ABBREV: TAbmesWideStringField;
    qryStreamTypeDataSTREAM_TYPE_NAME: TAbmesWideStringField;
    qrySaleShipmentsData: TAbmesSQLQuery;
    qrySaleShipmentsDataSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySaleShipmentsDataSHIPMENT_OBJECT_CODE: TAbmesFloatField;
    qrySRGSalesData: TAbmesSQLQuery;
    qrySRGSalesDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qrySRGSalesDataSALE_OBJECT_CODE: TAbmesFloatField;
    qryDeptDataBEGIN_DATE: TAbmesSQLTimeStampField;
    qryDeptDataEND_DATE: TAbmesSQLTimeStampField;
    qryDeptDataDEPT_IS_FIN_STORE: TAbmesFloatField;
    qryDeptDataIS_EXTERNAL: TAbmesFloatField;
    qryDeptDataIS_RECURRENT: TAbmesFloatField;
    qryDeptDataPRODUCT_CODE: TAbmesFloatField;
    qryDeptDataDEPT_IS_BRANCH: TAbmesFloatField;
    qrySpecOperationDataSMVS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryRealOperationDataMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryMaterialListLineDataNO_AS_TEXT: TAbmesWideStringField;
    qryMaterialListLineDataFORK_NO: TAbmesFloatField;
    qrySpecLineDataNO_AS_TEXT: TAbmesWideStringField;
    qryMaterialListLineDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMaterialListLineDataML_OBJECT_CODE: TAbmesFloatField;
    qryRealModelData: TAbmesSQLQuery;
    qryRealModelDataIDENTIFIER: TAbmesWideStringField;
    qrySpecModelData: TAbmesSQLQuery;
    qrySpecModelDataIDENTIFIER: TAbmesFloatField;
    qrySpecLineDataSPEC_PRODUCT_CODE: TAbmesFloatField;
    qryExceptEventTypeData: TAbmesSQLQuery;
    qryExceptEventTypeDataEE_TYPE_FULL_NO: TAbmesWideStringField;
    qryExceptEventTypeDataEXCEPT_EVENT_TYPE_NAME: TAbmesWideStringField;
    qryExceptEventTypeDataEXCEPT_EVENT_TYPE_SHORT_NAME: TAbmesWideStringField;
    qryExceptEventGenTypeData: TAbmesSQLQuery;
    qryExceptEventGenTypeDataEXCEPT_EVENT_GEN_TYPE_NO: TAbmesFloatField;
    qryExceptEventGenTypeDataEXCEPT_EVENT_GEN_TYPE_NAME: TAbmesWideStringField;
    qryExceptEventGenTypeDataEXCEPT_EVENT_GEN_TYPE_ABBREV: TAbmesWideStringField;
    qryExceptEventLevelData: TAbmesSQLQuery;
    qryExceptEventLevelDataEXCEPT_EVENT_LEVEL_NO: TAbmesFloatField;
    qryExceptEventLevelDataEXCEPT_EVENT_LEVEL_NAME: TAbmesWideStringField;
    qryExceptEventLevelDataEXCEPT_EVENT_LEVEL_ABBREV: TAbmesWideStringField;
    qryExceptEventData: TAbmesSQLQuery;
    qryExceptEventDataEXCEPT_EVENT_NO: TAbmesFloatField;
    qryExceptEventDataEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    qryExceptEventDataEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField;
    qryExceptEventDataEXCEPT_EVENT_GEN_TYPE_CODE: TAbmesFloatField;
    qryExceptEventDataPRODUCT_CODE: TAbmesFloatField;
    qryExceptEventDataDEPT_CODE: TAbmesFloatField;
    qryExceptEventDataDESCRIPTION: TAbmesWideStringField;
    qryExceptEventDataDETECT_DEPT_CODE: TAbmesFloatField;
    qryExceptEventDataDETECT_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDataDETECT_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDataDETECT_TIME: TAbmesSQLTimeStampField;
    qryExceptEventDataCTRL_DEPT_CODE: TAbmesFloatField;
    qryExceptEventDataCTRL_ACCEPT_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDataCTRL_ACCEPT_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDataCTRL_ACCEPT_TIME: TAbmesSQLTimeStampField;
    qryExceptEventDataCTRL_MAIN_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDataCTRL_ACTIVATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDataCTRL_ACTIVATE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDataCTRL_ACTIVATE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventDataDMG_RESOLVE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDataDMG_RESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDataDMG_RESOLVE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDataDMG_RESOLVE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDataDMG_RESOLVE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventDataRESOLVE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDataRESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDataRESOLVE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDataRESOLVE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDataRESOLVE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDataCREATE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDataCREATE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDataCHANGE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDataCHANGE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDataCLOSE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDataCLOSE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDataANNUL_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDataANNUL_TIME: TAbmesSQLTimeStampField;
    qryExceptEventDataOTP_BIND_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDataOTP_BIND_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDataOTP_BIND_TIME: TAbmesSQLTimeStampField;
    qryExceptEventDataPRODUCT_QUANTITY: TAbmesFloatField;
    qryExceptEventCode: TAbmesSQLQuery;
    qryExceptEventCodeEXCEPT_EVENT_CODE: TAbmesFloatField;
    qrySaleRequestGroupDataSRG_ID: TAbmesWideStringField;
    qryDeliveryProjectCode: TAbmesSQLQuery;
    qryDeliveryProjectCodeDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryProjectCodeDCD_OBJECT_CODE: TAbmesFloatField;
    qryDeliveryProjectCodeDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qryDeliveryProjectData: TAbmesSQLQuery;
    qryDeliveryProjectDataVENDOR_COMPANY_CODE: TAbmesFloatField;
    mshLocalMacroLibrary: TJvMultiStringHolder;
    qryDeliveryProjectDataDELIVERY_PROJECT_ID: TAbmesWideStringField;
    qryDeliveryProjectDataDELIVERY_ID: TAbmesWideStringField;
    qryDeliveryProjectDataDCD_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryProjectDataDCD_CODE: TAbmesFloatField;
    qryDeliveryProjectDataDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qryDeliveryProjectDataSTREAM_TYPE_CODE: TAbmesFloatField;
    qryDeliveryProjectDataDELIVERY_TYPE_CODE: TAbmesFloatField;
    qryDeliveryProjectDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeliveryProjectDataCREATE_DATE: TAbmesSQLTimeStampField;
    qryDeliveryProjectDataCREATE_TIME: TAbmesSQLTimeStampField;
    qryDeliveryProjectDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeliveryProjectDataCHANGE_DATE: TAbmesSQLTimeStampField;
    qryDeliveryProjectDataCHANGE_TIME: TAbmesSQLTimeStampField;
    qryDeliveryProjectDataWORK_QUANTITY: TAbmesFloatField;
    qryDeliveryProjectDataSINGLE_PRICE: TAbmesFloatField;
    qryDeliveryProjectDataACCOUNT_QUANTITY: TAbmesFloatField;
    qryDeliveryProjectDataACCOUNT_SINGLE_PRICE: TAbmesFloatField;
    qryDeliveryProjectDataTOTAL_PRICE: TAbmesFloatField;
    qryDeliveryProjectDataCURRENCY_CODE: TAbmesFloatField;
    qryDeliveryProjectDataDELIVERY_DATE: TAbmesSQLTimeStampField;
    qryDeliveryProjectDataMEDIATOR_COMPANY_CODE: TAbmesFloatField;
    qryDeliveryProjectDataSTART_DATE: TAbmesSQLTimeStampField;
    qryDeliveryProjectDataREGISTER_DATE: TAbmesSQLTimeStampField;
    qryDeliveryProjectDataPLAN_POSITION_DATE: TAbmesSQLTimeStampField;
    qryDeliveryProjectDataREAL_POSITION_DATE: TAbmesSQLTimeStampField;
    qryDeliveryProjectDataPLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    qryDeliveryProjectDataREAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField;
    qryDeliveryProjectDataDECISION_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeliveryProjectDataDIALOG_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeliveryProjectDataSHIPMENT_DAYS: TAbmesFloatField;
    qryDeliveryProjectDataPSD_STORE_CODE: TAbmesFloatField;
    qryDeliveryProjectDataPRODUCT_CODE: TAbmesFloatField;
    qryDeliveryProjectDataDEFICIT_COVER_DATE: TAbmesSQLTimeStampField;
    qryDeliveryProjectDataFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeliveryProjectDataFINISH_DATE: TAbmesSQLTimeStampField;
    qryDeliveryProjectDataFINISH_TIME: TAbmesSQLTimeStampField;
    qryDeliveryProjectDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryDeliveryProjectDataANNUL_DATE: TAbmesSQLTimeStampField;
    qryDeliveryProjectDataANNUL_TIME: TAbmesSQLTimeStampField;
    qryDeliveryTypeData: TAbmesSQLQuery;
    qryDeliveryTypeDataDELIVERY_TYPE_ABBREV: TAbmesWideStringField;
    qryDeliveryTypeDataDESCRIPTION: TAbmesWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    procedure AssignDeptDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignProductDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignEmployeeDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignProfessionDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignTeamDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignPartnerDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignOccupationDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);

    procedure AssignSpecStageDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignRealStageDocitemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);

    procedure AssignSpecOperationDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer;
      AAdditionalInfo: Integer);
    procedure AssignRealOperationDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer;
      AAdditionalInfo: Integer);

    procedure AssignBaseGroupDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignProductStoreDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignEngineeringOrderDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignStoreDealDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignOperationMovementDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignEmpAvailModifierDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignBudgetOrderDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignBudgetOrderItemDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignEmployeeDisciplineEventDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignOccupationEmployeeAssignmentDocItemXML(XMLDocument: IXMLDOcument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignInvoiceDocItemXML(XMLDocument: IXMLDOcument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignSaleShipmentDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignSaleDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignSaleRequestGroupDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignExceptEventDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignDeliveryProjectDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);


    procedure AssignBaseObjectDocItemData(XMLBaseObjectDocItem: IXMLTBaseObjectDocItem; ADocBranchCode, ADocCode, ADocItemCode: Integer);
    procedure AssignDocData(XMLDoc: IXMLTDoc; ADocBranchCode, ADocCode: Integer);
    procedure AssignDocItemData(XMLDocItem: IXMLTDocItem; ADocBranchCode, ADocCode, ADocItemCode: Integer);

    procedure AssignDeptData(XMLDept: IXMLTDept; const ADeptCode: Variant);
    procedure AssignMeasureData(XMLMeasure: IXMLTMeasure; const AMeasureCode: Variant);
    procedure AssignProductData(XMLProduct: IXMLTProduct; const AProductCode: Variant; APartnerCode: Integer = 0);
    procedure AssignProductExData(XMLProductEx: IXMLTProductEx; const AProductCode: Variant);
    procedure AssignEducationData(XMLEducation: IXMLTEducation; const AEducationCode: Variant);
    procedure AssignEmployeeData(XMLEmployee: IXMLTEmployee; const AEmployeeCode: Variant);
    procedure AssignProfessionData(XMLProfession: IXMLTProfession; const AProfessionCode: Variant);
    procedure AssignTeamData(XMLTeam: IXMLTTeam; const ATeamCode: Variant);
    procedure AssignCompanyTypeData(XMLCompanyType: IXMLTCompanyType; const ACompanyTypeCode: Variant);
    procedure AssignCountryData(XMLCountry: IXMLTCountry; const ACountryCode: Variant);
    procedure AssignLanguageData(XMLLanguage: IXMLTLanguage; const ALanguageCode: Variant);
    procedure AssignPartnerClassData(XMLPartnerClass: IXMLTPartnerClass; const APartnerClassCode: Variant);
    procedure AssignPartnerData(XMLPartner: IXMLTPartner; const APartnerCode: Variant);
    procedure AssignShiftData(XMLShift: IXMLTShift; const AShiftCode: Variant);
    procedure AssignOccupationPhaseData(XMLOccupationPhase: IXMLTOccupationPhase; const AOccupationPhaseCode: Variant);
    procedure AssignCraftTypeData(XMLCraftType: IXMLTCraftType; const ACraftTypeCode: Variant);
    procedure AssignCraftData(XMLCraft: IXMLTCraft; const ACraftCode: Variant);
    procedure AssignOccupationData(XMLOccupation: IXMLTOccupation; const AOccupationCode: Variant);
    procedure AssignOperationTypeData(XMLOperationType: IXMLTOperationType; const AOperationTypeCode: Variant);

    procedure AssignSpecModelData(XMLModel: IXMLTModel; const ASpecProductCode: Variant);
    procedure AssignRealModelData(XMLModel: IXMLTModel; const AMLObjectBranchCode, AMLObjectCode: Variant);

    procedure AssignSpecLineData(XMLModelLine: IXMLTModelLine; const ASpecProductCode, ASpecLineCode: Variant);
    procedure AssignMaterialListLineData(XMLModelLine: IXMLTModelLine; const AMLLObjectBranchCode, AMLLObjectCode: Variant);

    procedure AssignSpecStageData(XMLModelStage: IXMLTModelStage; const ASpecProductCode, ASpecLineCode, ASpecModelVariantNo, ASpecLineStageCode: Variant);
    procedure AssignRealStageData(XMLModelStage: IXMLTModelStage; const ARealStageBranchCode, ARealStageCode: Variant);

    procedure AssignSpecOperationData(XMLModelOperation: IXMLTModelOperation; const ASpecProductCode, ASpecLineCode, ASpecModelVariantNo, ASpecLineStageCode, AOperationCode: Variant);
    procedure AssignRealOperationData(XMLModelOperation: IXMLTModelOperation; const ARealOperationBranchCode, ARealOperationCode: Variant);

    procedure AssignBaseGroupData(XMLBaseGroup: IXMLTBaseGroup; const ABaseGroupCode: Variant);
    procedure AssignProductStoreData(XMLProductStore: IXMLTProductStore; const AProductStoreCode: Variant);
    procedure AssignEngineeringOrderTypeData(XMLEngineeringOrderType: IXMLTEngineeringOrderType; const AEngineeringOrderTypeCode: Variant);
    procedure AssignPriorityData(XMLPriority: IXMLTPriority; const APriorityCode: Variant);
//    procedure AssignProductionOrderBaseTypeData(XMLProductionOrderBaseType: IXMLTProductionOrderBaseType; const AProductionOrderBaseTypeCode: Variant);
//    procedure AssignProductionOrderTypeData(XMLProductionOrderType: IXMLTProductionOrderType; const AProductionOrderTypeCode: Variant);
    procedure AssignEngineeringOrderData(XMLEngineeringOrder: IXMLTEngineeringOrder; const AEngineeringOrderCode: Variant);
    procedure AssignCurrencyData(XMLCurrency: IXMLTCurrency; const ACurrencyCode: Variant);
    procedure AssignProcessData(XMLProcess: IXMLTProcess; const AProcessCode: Variant);
    procedure AssignStoreDealTypeData(XMLStoreDealType: IXMLTStoreDealType; const AStoreDealTypeCode: Variant);
    procedure AssignStoreDealData(XMLStoreDeal: IXMLTStoreDeal; const AStoreDealObjectBranchCode, AStoreDealObjectCode: Variant);
    procedure AssignOperationMovementTypeData(XMLOperationMovementType: IXMLTOperationMovementType; const AOperationMovementTypeCode: Variant);
    procedure AssignOperationMovementData(XMLOperationMovement: IXMLTOperationMovement; const AOperationMovementBranchCode, AOperationMovementCode: Variant);
    procedure AssignProductOriginData(XMLProductOrigin: IXMLTProductOrigin; const AProductOriginCode: Variant);
    procedure AssignTransientStatusData(XMLTransientStatus: IXMLTTransientStatus; const ATransientStatusCode: Variant);
    procedure AssignSelfExistentStatusData(XMLSelfExistentStatus: IXMLTSelfExistentStatus; const ASelfExistentStatusCode: Variant);
    procedure AssignDateData(XMLDate: IXMLTDate; const ADate: Variant);
    procedure AssignTimeData(XMLTime: IXMLTTime; const ATime: Variant);
    procedure AssignDateIntervalData(XMLDateInterval: IXMLTDateInterval; const ABeginDate, AEndDate: Variant);
    procedure AssignTimeIntervalData(XMLTimeInterval: IXMLTTimeInterval; const ABeginTime, AEndTime: Variant);
    procedure AssignDateTimeData(XMLDateTime: IXMLTDateTime; const ADate, ATime: Variant);
    procedure AssignGlobalsData(XMLGlobals: IXMLTGlobals);
    procedure AssignProcessObjectData(XMLProcessObject: IXMLTProcessObject; const AProcessObjectBranchCode, AProcessObjectCode: Variant);
    procedure AssignEmpAvailModifierTypeData(XMLEmpAvailModifierType: IXMLTEmpAvailModifierType; const AEmpAvailModifierTypeCode: Variant);
    procedure AssignEmpDayAbsenceReasonData(XMLEmpDayAbsenceReason: IXMLTEmpDayAbsenceReason; const AEmpDayAbsenceReasonCode: Variant);
    procedure AssignEmpDayAbsenceDocTypeData(XMLEmpDayAbsenceDocType: IXMLTEmpDayAbsenceDocType; const AEmpDayAbsenceReasonCode, AEmpDayAbsenceDocTypeCode: Variant);
    procedure AssignEmpHourAvailModifierReason(XMLEmpHourAvailModifierReason: IXMLTEmpHourAvailModifierReason; const AEmpHourAvailModifierReasonCode: Variant);
    procedure AssignEmpAvailModifierData(XMLEmpAvailModifier: IXMLTEmpAvailModifier; const AEmpAvailModifierCode: Variant);
    procedure AssignBOIOrderTypeData(XMLBOIOrderType: IXMLTBOIOrderType; const ABOIOrderTypeCode: Variant);
    procedure AssignBudgetOrderClassData(XMLBudgetOrderClass: IXMLTBudgetOrderClass; const ABudgetOrderClassCode: Variant);
    procedure AssignBudgetOrderRegularityTypeData(XMLBudgetOrderRegularityType: IXMLTBudgetOrderRegularityType; const ABudgetOrderRegularityTypeCode: Variant);
    procedure AssignBudgetOrderData(XMLBudgetOrder: IXMLTBudgetOrder; const ABudgetOrderBranchCode, ABudgetOrderCode: Variant);
    procedure AssignDateUnitData(XMLDateUnit: IXMLTDateUnit; const ADateUnitCode: Variant);
    procedure AssignBOIDistributionTypeData(XMLBOIDistributionType: IXMLTBOIDistributionType; const ABOIDistributionTypeCode: Variant);
    procedure AssignBudgetOrderItemData(XMLBudgetOrderItem: IXMLTBudgetOrderItem; const ABudgetOrderBranchCode, ABudgetOrderCode, ABudgetOrderItemCode: Variant);
    procedure AssignDisciplineEventTypeData(XMLDisciplineEvetType: IXMLTDisciplineEventType; const ADisciplineEventTypeCode, AToDate: Variant);
    procedure AssignEmployeeDisciplineEventData(XMLEmployeeDisciplineEvent: IXMLTEmployeeDisciplineEvent; const AEmployeeCode, ADisciplineEventCode: Variant);
    procedure AssignTreeNodeData(XMLTreeNode: IXMLTTreeNode; const AName, AIsGroup: Variant);
    procedure AssignOccupationEmployeeAssignmentRegimeData(XMLOccupationEmployeeAssignmentRegime: IXMLTOccupationEmployeeAssignmentRegime; const AOccupationEmployeeRegimeCode: Variant);
    procedure AssignOccupationEmployeeAssignmentData(XMLOccupationEmployeeAssignment: IXMLTOccupationEmployeeAssignment; const AOccupationEmployeeCode: Variant);
    procedure AssignEmployeeDisciplineRatingData(XMLEmployeeDisciplineRating: IXMLTEmployeeDisciplineRating; const ANegativeDisciplinePoints, APositiveDisciplinePoints: Variant);
    procedure AssignFloatRangeData(XMLFloatRange: IXMLTFloatRange; const AMinValue, AMaxValue: Variant);
    procedure AssignSalaryData(XMLSalary: IXMLTSalary; const ACurrencyCode, ASalary, ADateUnitCode: Variant);
    procedure AssignInvoiceData(XMLInvoice: IXMLTInvoice; const AInvoiceBranchCode, AInvoiceCode: Variant);
    procedure AssignVatReasonData(XMLVatReason: IXMLTVatReason; const AVatReasonCode: Variant);
    procedure AssignSaleShipmentData(XMLSaleShipment: IXMLTSaleShipment; const ASaleShipmentObjectBranchCode, ASaleShipmentObjectCode: Variant);
    procedure AssignSaleOrderTypeData(XMLSaleOrderType: IXMLTSaleOrderType; const ASaleOrderTypeCode: Variant);
    procedure AssignBorderDealTypeData(XMLBorderDealType: IXMLTBorderDealType; const ABorderDealTypeCode: Variant);
    procedure AssignSaleTypeData(XMLSaleType: IXMLTSaleType; const ASaleTypeCode: Variant);
    procedure AssignShipmentTypeData(XMLShipmentType: IXMLTShipmentType; const AShipmentTypeCode: Variant);
    procedure AssignDecisionTypeData(XMLDecisionType: IXMLTDecisionType; const ADecisionTypeCode: Variant);
    procedure AssignAspectTypeData(XMLAspectType: IXMLTAspectType; const AAspectTypeCode: Variant);
    procedure AssignStreamTypeData(XMLStreamType: IXMLTStreamType; const AStreamTypeCode: Variant);
    procedure AssignSaleData(XMLSale: IXMLTSale; const ASaleObjectBranchCode, ASaleObjectCode: Variant);
    procedure AssignSaleRequestGroupData(XMLSaleRequestGroup: IXMLTSaleRequestGroup; const ARequestBranchCode, ARequestNo: Variant);
    function SalePriceFieldValue(AField: TField): Variant;
    procedure AssignExceptEventTypeData(XMLExceptEventType: IXMLTExceptEventType; const AExceptEventTypeCode: Variant);
    procedure AssignExceptEventGenTypeData(XMLExceptEventGenType: IXMLTExceptEventGenType; const AExceptEventGenTypeCode: Variant);
    procedure AssignExceptEventLevelData(XMLExceptEventLevel: IXMLTExceptEventLevel; const AExceptEventLevelCode: Variant);
    procedure AssignExceptEventData(XMLExceptEvent: IXMLTExceptEvent; const AExceptEventCode: Variant);
    procedure AssignDeliveryTypeData(XMLDeliveryType: IXMLTDeliveryType; const ADeliveryTypeCode: Variant);
    procedure AssignDeliveryProjectData(XMLDeliveryProject: IXMLTDeliveryProject; const ADCDObjectBranchCode, ADCDObjectCode, ADeliveryProjectCode: Variant);
  protected
    function GetDocItemXML(ADocOwnerTypeCode: Integer;
      ADocBranchCode: Integer; ADocCode, ADocItemCode: Integer;
      AAdditionalInfo: Integer): string;
    function GetDocItemTemplateTypeXML(
      ADocItemTemplateTypeCode: Integer): string;
  end;

type
  IdmDocXMLProxy = interface(IDBPooledDataModuleProxy)
    function GetDocItemXML(ADocOwnerTypeCode: Integer;
      ADocBranchCode: Integer; ADocCode, ADocItemCode: Integer;
      AAdditionalInfo: Integer): string;
    function GetDocItemTemplateTypeXML(
      ADocItemTemplateTypeCode: Integer): string;
  end;

type
  TdmDocXMLProxy = class(TDBPooledDataModuleProxy, IdmDocXMLProxy)
  private
    class var FSingleton: TdmDocXMLProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmDocXML>;
  strict protected
    property LockedInstance: ISmartLock<TdmDocXML> read GetLockedInstance;
  public
    class property Singleton: TdmDocXMLProxy read FSingleton;

    function GetDocItemXML(ADocOwnerTypeCode: Integer;
      ADocBranchCode: Integer; ADocCode, ADocItemCode: Integer;
      AAdditionalInfo: Integer): string;
    function GetDocItemTemplateTypeXML(
      ADocItemTemplateTypeCode: Integer): string;
  end;

implementation

uses
  Variants, Math, DateUtils, JclDateTime, uUtils, uDocUtils,
  uSvrUtils, uXMLUtils, uDBPooledDataModuleHelper, uUserActivityConsts,
  xDeptDocItem, xProductDocItem, xEmployeeDocItem,
  xProfessionDocItem, xTeamDocItem, xOccupationDocItem, xDeliveryProjectDocItem,
  xModelStageDocItem, xModelOperationDocItem, xBaseGroupDocItem, xPartnerDocItem,
  xProductStoreDocItem, xEngineeringOrderDocItem, xStoreDealDocItem,
  xOperationMovementDocItem, xOccupationEmployeeAssignmentDocItem,
  xTDocItemActiveFieldsDefinition, xEmpAvailModifierDocItem, xBudgetOrderDocItem,
  xBudgetOrderItemDocItem, xEmployeeDisciplineEventDocItem, xInvoiceDocItem,
  xTInvoiceItem, xTInvoiceItems, uSystemLocaleUtils, xSaleShipmentDocItem,
  xSaleDocItem, xSaleRequestGroupDocItem, xExceptEventDocItem;

{$R *.DFM}

const
  SNotAvailable = '***';

{ TdmDocXMLProxy }

function TdmDocXMLProxy.GetLockedInstance: ISmartLock<TdmDocXML>;
begin
  Result:= ISmartLock<TdmDocXML>(inherited LockedInstance);
end;

function TdmDocXMLProxy.GetDocItemXML(ADocOwnerTypeCode, ADocBranchCode,
  ADocCode, ADocItemCode: Integer; AAdditionalInfo: Integer): string;
begin
  Result:=
    LockedInstance.Value.GetDocItemXML(ADocOwnerTypeCode, ADocBranchCode, ADocCode, ADocItemCode,
      AAdditionalInfo);
end;

function TdmDocXMLProxy.GetDocItemTemplateTypeXML(
  ADocItemTemplateTypeCode: Integer): string;
begin
  Result:= LockedInstance.Value.GetDocItemTemplateTypeXML(ADocItemTemplateTypeCode);
end;

{ TdmDocXML }

procedure TdmDocXML.DataModuleCreate(Sender: TObject);
begin
  RegisterMacroLibrary(mshLocalMacroLibrary);
  inherited;
end;

procedure TdmDocXML.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  UnregisterMacroLibrary(mshLocalMacroLibrary);
end;

function TdmDocXML.GetDocItemXML(ADocOwnerTypeCode, ADocBranchCode,
  ADocCode, ADocItemCode: Integer; AAdditionalInfo: Integer): string;
var
  DocOwnerType: TDocOwnerType;
  XMLDocument: IXMLDocument;
begin
  XMLDocument:= NewXMLDocument;
  XMLDocument.Options:= [doNodeAutoIndent, doNodeAutoCreate];

  DocOwnerType:= IntToDocOwnerType(ADocOwnerTypeCode);
  case DocOwnerType of
    dotDept:
      AssignDeptDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotProduct:
      AssignProductDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotEmployee:
      AssignEmployeeDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotProfession:
      AssignProfessionDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotTeam:
      AssignTeamDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotCompany:
      AssignPartnerDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotOccupation:
      AssignOccupationDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotSpecStage:
      AssignSpecStageDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotRealStage:
      AssignRealStageDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotSpecOperation:
      AssignSpecOperationDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode, AAdditionalInfo);

    dotRealOperation:
      AssignRealOperationDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode, AAdditionalInfo);

    dotBaseGroup:
      AssignBaseGroupDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotProductStore:
      AssignProductStoreDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotEngineeringOrder:
      AssignEngineeringOrderDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotStoreDeal:
      AssignStoreDealDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotOperationMovement:
      AssignOperationMovementDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotEmpAvailModifier:
      AssignEmpAvailModifierDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotBudgetOrder:
      AssignBudgetOrderDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotBudgetOrderItem:
      AssignBudgetOrderItemDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotEmployeeDisciplineEvent:
      AssignEmployeeDisciplineEventDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotOccupationEmployee:
      AssignOccupationEmployeeAssignmentDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotInvoice:
      AssignInvoiceDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotSaleShipment:
      AssignSaleShipmentDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotSale:
      AssignSaleDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotSaleRequestGroup:
      AssignSaleRequestGroupDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotExceptEvent:
      AssignExceptEventDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    dotDelivery:
      AssignDeliveryProjectDocItemXML(XMLDocument, ADocBranchCode, ADocCode, ADocItemCode);

    else
      begin
        // do nothing
      end;
  end;  { case }

  if Assigned(XMLDocument.DocumentElement) then
    begin
      SetDefaultAttributes(XMLDocument);
      Result:= EncodeXMLResult(XMLDocument.XML.Text);
    end
  else
    Result:= '';
end;

function TdmDocXML.SalePriceFieldValue(AField: TField): Variant;
begin
  if LoginContext.HasUserActivity(uaShowSalePrices) then
    Result:= AField.AsVariant
  else
    Result:= SNotAvailable;
end;

procedure TdmDocXML.AssignDeptDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLDeptDocItem: IXMLTDeptDocItem;
begin
  XMLDeptDocItem:= xDeptDocItem.GetDeptDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLDeptDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryDeptCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryDeptCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryDeptCode.Open;
  try
    AssignDeptData(XMLDeptDocItem.Dept, qryDeptCodeDEPT_CODE.AsInteger);
  finally
    qryDeptCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignProductDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLProductDocItem: IXMLTProductDocItem;
begin
  XMLProductDocItem:= xProductDocItem.GetProductDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLProductDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryProductCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryProductCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryProductCode.Open;
  try
    AssignProductExData(XMLProductDocItem.Product, qryProductCodePRODUCT_CODE.AsInteger);
  finally
    qryProductCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignEmployeeDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLEmployeeDocItem: IXMLTEmployeeDocItem;
begin
  XMLEmployeeDocItem:= xEmployeeDocItem.GetEmployeeDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLEmployeeDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryEmployeeCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryEmployeeCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryEmployeeCode.Open;
  try
    AssignEmployeeData(XMLEmployeeDocItem.Employee, qryEmployeeCodeEMPLOYEE_CODE.AsInteger);
  finally
    qryEmployeeCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignProfessionDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLProfessionDocItem: IXMLTProfessionDocItem;
begin
  XMLProfessionDocItem:= xProfessionDocItem.GetProfessionDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLProfessionDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryProfessionCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryProfessionCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryProfessionCode.Open;
  try
    AssignProfessionData(XMLProfessionDocItem.Profession, qryProfessionCodePROFESSION_CODE.AsInteger);
  finally
    qryProfessionCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignSpecOperationDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer;
  AAdditionalInfo: Integer);
var
  XMLModelOperationDocItem: IXMLTModelOperationDocItem;
begin
  XMLModelOperationDocItem:= xModelOperationDocItem.GetModelOperationDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLModelOperationDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qrySpecOperationCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qrySpecOperationCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qrySpecOperationCode.ParamByName('SMVS_OPERATION_VARIANT_NO').AsInteger:= Max(AAdditionalInfo, 0);
  qrySpecOperationCode.Open;
  try
    AssignSpecOperationData(
      XMLModelOperationDocItem.ModelOperation,
      qrySpecOperationCodeSPEC_PRODUCT_CODE.AsInteger,
      qrySpecOperationCodeSPEC_LINE_CODE.AsInteger,
      qrySpecOperationCodeSPEC_MODEL_VARIANT_NO.AsInteger,
      qrySpecOperationCodeSPEC_LINE_STAGE_CODE.AsInteger,
      qrySpecOperationCodeSMVS_OPERATION_CODE.AsInteger);
  finally
    qrySpecOperationCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignRealOperationDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer;
  AAdditionalInfo: Integer);
var
  XMLModelOperationDocItem: IXMLTModelOperationDocItem;
begin
  XMLModelOperationDocItem:= xModelOperationDocItem.GetModelOperationDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLModelOperationDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryRealOperationCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryRealOperationCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryRealOperationCode.ParamByName('MLMS_OPERATION_VARIANT_NO').AsInteger:= Max(AAdditionalInfo, 0);
  qryRealOperationCode.Open;
  try
    AssignRealOperationData(
      XMLModelOperationDocItem.ModelOperation,
      qryRealOperationCodeMLMSO_OBJECT_BRANCH_CODE.AsInteger,
      qryRealOperationCodeMLMSO_OBJECT_CODE.AsInteger);
  finally
    qryRealOperationCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignTeamDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLTeamDocItem: IXMLTTeamDocItem;
begin
  XMLTeamDocItem:= xTeamDocItem.GetTeamDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLTeamDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryTeamCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryTeamCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryTeamCode.Open;
  try
    AssignTeamData(XMLTeamDocItem.Team, qryTeamCodeTEAM_CODE.AsInteger);
  finally
    qryTeamCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignPartnerDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLPartnerDocItem: IXMLTPartnerDocItem;
begin
  XMLPartnerDocItem:= xPartnerDocItem.GetPartnerDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLPartnerDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryPartnerCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryPartnerCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryPartnerCode.Open;
  try
    AssignPartnerData(
      XMLPartnerDocItem.Partner,
      qryPartnerCodePARTNER_CODE.AsInteger);
  finally
    qryPartnerCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignOccupationDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLOccupationDocItem: IXMLTOccupationDocItem;
begin
  XMLOccupationDocItem:= xOccupationDocItem.GetOccupationDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLOccupationDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryOccupationCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryOccupationCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryOccupationCode.Open;
  try
    AssignOccupationData(
      XMLOccupationDocItem.Occupation,
      qryOccupationCodeOCCUPATION_CODE.AsInteger);
  finally
    qryOccupationCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignSpecStageDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLModelStageDocItem: IXMLTModelStageDocItem;
begin
  XMLModelStageDocItem:= xModelStageDocItem.GetModelStageDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLModelStageDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qrySpecStageCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qrySpecStageCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qrySpecStageCode.Open;
  try
    AssignSpecStageData(
      XMLModelStageDocItem.ModelStage,
      qrySpecStageCodeSPEC_PRODUCT_CODE.AsInteger,
      qrySpecStageCodeSPEC_LINE_CODE.AsInteger,
      qrySpecStageCodeSPEC_MODEL_VARIANT_NO.AsInteger,
      qrySpecStageCodeSPEC_LINE_STAGE_CODE.AsInteger);
  finally
    qrySpecStageCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignRealStageDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLModelStageDocItem: IXMLTModelStageDocItem;
begin
  XMLModelStageDocItem:= xModelStageDocItem.GetModelStageDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLModelStageDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryRealStageCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryRealStageCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryRealStageCode.Open;
  try
    AssignRealStageData(
      XMLModelStageDocItem.ModelStage,
      qryRealStageCodeMLMS_OBJECT_BRANCH_CODE.AsInteger,
      qryRealStageCodeMLMS_OBJECT_CODE.AsInteger);
  finally
    qryRealStageCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignBaseGroupDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLBaseGroupDocItem: IXMLTBaseGroupDocItem;
begin
  XMLBaseGroupDocItem:= xBaseGroupDocItem.GetBaseGroupDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLBaseGroupDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryBaseGroupCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryBaseGroupCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryBaseGroupCode.Open;
  try
    AssignBaseGroupData(
      XMLBaseGroupDocItem.BaseGroup,
      qryBaseGroupCodeBASE_GROUP_CODE.AsInteger);
  finally
    qryBaseGroupCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignProductStoreDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLProductStoreDocItem: IXMLTProductStoreDocItem;
begin
  XMLProductStoreDocItem:= xProductStoreDocItem.GetProductStoreDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLProductStoreDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryProductStoreCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryProductStoreCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryProductStoreCode.Open;
  try
    AssignProductStoreData(
      XMLProductStoreDocItem.ProductStore,
      qryProductStoreCodePRODUCT_STORE_CODE.AsInteger);
  finally
    qryProductStoreCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignEngineeringOrderDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLEngineeringOrderDocItem: IXMLTEngineeringOrderDocItem;
begin
  XMLEngineeringOrderDocItem:= xEngineeringOrderDocItem.GetEngineeringOrderDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLEngineeringOrderDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryEngineeringOrderCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryEngineeringOrderCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryEngineeringOrderCode.Open;
  try
    AssignEngineeringOrderData(
      XMLEngineeringOrderDocItem.EngineeringOrder,
      qryEngineeringOrderCodeENGINEERING_ORDER_CODE.AsInteger);
  finally
    qryEngineeringOrderCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignStoreDealDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLStoreDealDocItem: IXMLTStoreDealDocItem;
begin
  XMLStoreDealDocItem:= xStoreDealDocItem.GetStoreDealDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLStoreDealDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryStoreDealCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryStoreDealCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryStoreDealCode.Open;
  try
    AssignStoreDealData(
      XMLStoreDealDocItem.StoreDeal,
      qryStoreDealCodeSTORE_DEAL_OBJECT_BRANCH_CODE.AsInteger,
      qryStoreDealCodeSTORE_DEAL_OBJECT_CODE.AsInteger);
  finally
    qryStoreDealCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignOperationMovementDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLOperationMovementDocItem: IXMLTOperationMovementDocItem;
begin
  XMLOperationMovementDocItem:= xOperationMovementDocItem.GetOperationMovementDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLOperationMovementDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryOperationMovementCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryOperationMovementCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryOperationMovementCode.Open;
  try
    AssignOperationMovementData(
      XMLOperationMovementDocItem.OperationMovement,
      qryOperationMovementCodeOM_BRANCH_CODE.AsInteger,
      qryOperationMovementCodeOM_CODE.AsInteger);
  finally
    qryOperationMovementCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignEmpAvailModifierDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLEmpAvailModifierDocItem: IXMLTEmpAvailModifierDocItem;
begin
  XMLEmpAvailModifierDocItem:= xEmpAvailModifierDocItem.GetEmpAvailModifierDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLEmpAvailModifierDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryEmpAvailModifierCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryEmpAvailModifierCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryEmpAvailModifierCode.Open;
  try
    AssignEmpAvailModifierData(
      XMLEmpAvailModifierDocItem.EmpAvailModifier,
      qryEmpAvailModifierCodeEMP_AVAIL_MODIFIER_CODE.AsInteger);
  finally
    qryEmpAvailModifierCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignBudgetOrderDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLBudgetOrderDocItem: IXMLTBudgetOrderDocItem;
begin
  XMLBudgetOrderDocItem:= xBudgetOrderDocItem.GetBudgetOrderDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLBudgetOrderDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryBudgetOrderCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryBudgetOrderCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryBudgetOrderCode.Open;
  try
    AssignBudgetOrderData(
      XMLBudgetOrderDocItem.BudgetOrder,
      qryBudgetOrderCodeBUDGET_ORDER_BRANCH_CODE.AsInteger,
      qryBudgetOrderCodeBUDGET_ORDER_CODE.AsInteger);
  finally
    qryBudgetOrderCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignBudgetOrderItemDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLBudgetOrderItemDocItem: IXMLTBudgetOrderItemDocItem;
begin
  XMLBudgetOrderItemDocItem:= xBudgetOrderItemDocItem.GetBudgetOrderItemDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLBudgetOrderItemDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryBudgetOrderItemCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryBudgetOrderItemCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryBudgetOrderItemCode.Open;
  try
    AssignBudgetOrderItemData(
      XMLBudgetOrderItemDocItem.BudgetOrderItem,
      qryBudgetOrderItemCodeBUDGET_ORDER_BRANCH_CODE.AsInteger,
      qryBudgetOrderItemCodeBUDGET_ORDER_CODE.AsInteger,
      qryBudgetOrderItemCodeBUDGET_ORDER_ITEM_CODE.AsInteger);
  finally
    qryBudgetOrderItemCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignEmployeeDisciplineEventDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLEmployeeDisciplineEventDocItem: IXMLTEmployeeDisciplineEventDocItem;
begin
  XMLEmployeeDisciplineEventDocItem:= xEmployeeDisciplineEventDocItem.GetEmployeeDisciplineEventDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLEmployeeDisciplineEventDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryEmployeeDisciplineEventCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryEmployeeDisciplineEventCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryEmployeeDisciplineEventCode.Open;
  try
    AssignEmployeeDisciplineEventData(
      XMLEmployeeDisciplineEventDocItem.EmployeeDisciplineEvent,
      qryEmployeeDisciplineEventCodeEMPLOYEE_CODE.AsInteger,
      qryEmployeeDisciplineEventCodeDISCIPLINE_EVENT_CODE.AsInteger);
  finally
    qryEmployeeDisciplineEventCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignOccupationEmployeeAssignmentDocItemXML(XMLDocument: IXMLDOcument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLOccupationEmployeeAssignmentDocItem: IXMLTOccupationEmployeeAssignmentDocItem;
begin
  XMLOccupationEmployeeAssignmentDocItem:= xOccupationEmployeeAssignmentDocItem.GetOccupationEmployeeAssignmentDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLOccupationEmployeeAssignmentDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryOccupationEmployeeCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryOccupationEmployeeCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryOccupationEmployeeCode.Open;
  try
    AssignOccupationEmployeeAssignmentData(
      XMLOccupationEmployeeAssignmentDocItem.OccupationEmployeeAssignment,
      qryOccupationEmployeeCodeOCCUPATION_EMPLOYEE_CODE.AsInteger);
  finally
    qryOccupationEmployeeCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignExceptEventDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLExceptEventDocItem: IXMLTExceptEventDocItem;
begin
  XMLExceptEventDocItem:= xExceptEventDocItem.GetExceptEventDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLExceptEventDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryExceptEventCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryExceptEventCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryExceptEventCode.TempOpen/
    procedure begin
      AssignExceptEventData(XMLExceptEventDocItem.ExceptEvent, qryExceptEventCodeEXCEPT_EVENT_CODE.AsInteger);
    end;
end;

procedure TdmDocXML.AssignDeliveryProjectDocItemXML(XMLDocument: IXMLDocument; ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLDeliveryProjectDocItem: IXMLTDeliveryProjectDocItem;
begin
  XMLDeliveryProjectDocItem:= xDeliveryProjectDocItem.GetDeliveryProjectDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLDeliveryProjectDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryDeliveryProjectCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryDeliveryProjectCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryDeliveryProjectCode.TempOpen/
    procedure begin
      AssignDeliveryProjectData(
        XMLDeliveryProjectDocItem.DeliveryProject,
        qryDeliveryProjectCodeDCD_OBJECT_BRANCH_CODE.AsInteger,
        qryDeliveryProjectCodeDCD_OBJECT_CODE.AsInteger,
        qryDeliveryProjectCodeDELIVERY_PROJECT_CODE.AsInteger);
    end;
end;

procedure TdmDocXML.AssignBaseObjectDocItemData(XMLBaseObjectDocItem: IXMLTBaseObjectDocItem;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
begin
  with XMLBaseObjectDocItem do
    begin
      AssignDocData(Doc, ADocBranchCode, ADocCode);
      AssignDocItemData(DocItem, ADocBranchCode, ADocCode, ADocItemCode);
      AssignGlobalsData(Globals);
    end;  { with }
end;

procedure TdmDocXML.AssignDocData(XMLDoc: IXMLTDoc; ADocBranchCode, ADocCode: Integer);
begin
  qryDocData.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryDocData.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryDocData.TempOpen/
    procedure begin
      if not qryDocData.Eof then
        with XMLDoc do
          begin
            DocEmptinessRequirementName:= qryDocDataDOC_EMPTINESS_REQUIREMENT_NAME.AsVariant;
            IsComplete:= qryDocDataIS_COMPLETE.AsBoolean;

            // doc items
            qryDocItemsData.Params.AssignValues(qryDocData.Params);
            qryDocItemsData.TempOpen/
              qryDocItemsData.ForEach/
                procedure begin
                  AssignDocItemData(DocItems.Add,
                    qryDocItemsDataDOC_BRANCH_CODE.AsInteger,
                    qryDocItemsDataDOC_CODE.AsInteger,
                    qryDocItemsDataDOC_ITEM_CODE.AsInteger
                  );
                end;
          end;  { with }
    end;
end;

procedure TdmDocXML.AssignDocItemData(XMLDocItem: IXMLTDocItem; ADocBranchCode,
  ADocCode, ADocItemCode: Integer);
begin
  qryDocItemData.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryDocItemData.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryDocItemData.ParamByName('DOC_ITEM_CODE').AsInteger:= ADocItemCode;
  qryDocItemData.Open;
  try
    if not qryDocItemData.Eof then
      with XMLDocItem do
        begin
          DocItemNo:= qryDocItemDataDOC_ITEM_NO.AsVariant;
          DocItemTypeName:= qryDocItemDataDOC_ITEM_TYPE_NAME.AsVariant;
          DocItemName:= qryDocItemDataDOC_ITEM_NAME.AsVariant;
          AssignEmployeeData(DevelopEmployee, qryDocItemDataDEVELOP_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(DevelopDateTime, qryDocItemDataDEVELOP_DATE.AsVariant, qryDocItemDataDEVELOP_TIME.AsVariant);
          AssignEmployeeData(AuthorizeEmployee, qryDocItemDataAUTHORIZE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(AuthorizeDateTime, qryDocItemDataAUTHORIZE_DATE.AsVariant, qryDocItemDataAUTHORIZE_TIME.AsVariant);
          AssignEmployeeData(ApproveEmployee, qryDocItemDataAPPROVE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(ApproveDateTime, qryDocItemDataAPPROVE_DATE.AsVariant, qryDocItemDataAPPROVE_TIME.AsVariant);
          Notes:= qryDocItemDataNOTES.AsVariant;
          IsInactive:= qryDocItemDataIS_INACTIVE.AsVariant;
        end;  { with }
  finally
    qryDocItemData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignDecisionTypeData(XMLDecisionType: IXMLTDecisionType;
  const ADecisionTypeCode: Variant);
begin
  if VarIsNull(ADecisionTypeCode) then
    Exit;

  qryDecisionTypeData.ParamByName('DECISION_TYPE_CODE').Value:= ADecisionTypeCode;
  qryDecisionTypeData.Open;
  try
    if not qryDecisionTypeData.Eof then
      with XMLDecisionType do
        begin
          DecisionTypeAbbrev:= qryDecisionTypeDataDECISION_TYPE_ABBREV.AsVariant;
          DecisionTypeName:= qryDecisionTypeDataDECISION_TYPE_NAME.AsVariant;
        end;  { with }
  finally
    qryDecisionTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignDeptData(XMLDept: IXMLTDept; const ADeptCode: Variant);
begin
  if VarIsNull(ADeptCode) then
    Exit;

  qryDeptData.ParamByName('DEPT_CODE').Value:= ADeptCode;
  qryDeptData.Open;
  try
    if not qryDeptData.Eof then
      with XMLDept do
        begin
          AssignTreeNodeData(XMLDept, qryDeptDataDEPT_NAME.AsVariant, qryDeptDataDEPT_IS_GROUP.AsVariant);
          DeptIdentifier:= qryDeptDataDEPT_IDENTIFIER.AsVariant;
          AssignDateData(BeginDate, qryDeptDataBEGIN_DATE.AsVariant);
          AssignDateData(EndDate, qryDeptDataEND_DATE.AsVariant);
          IsBranch:= qryDeptDataDEPT_IS_BRANCH.AsBoolean;
          IsStore:= qryDeptDataDEPT_IS_STORE.AsBoolean;
          IsFinancialStore:= qryDeptDataDEPT_IS_STORE.AsBoolean;
          IsExternal:= qryDeptDataIS_EXTERNAL.AsBoolean;
          IsRecurrent:= qryDeptDataIS_RECURRENT.AsBoolean;
          AssignProductData(Product, qryDeptDataPRODUCT_CODE.AsVariant);
        end;  { with }
  finally
    qryDeptData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignMeasureData(XMLMeasure: IXMLTMeasure; const AMeasureCode: Variant);
begin
  if VarIsNull(AMeasureCode) then
    Exit;

  qryMeasureData.ParamByName('MEASURE_CODE').Value:= AMeasureCode;
  qryMeasureData.Open;
  try
    if not qryMeasureData.Eof then
      with XMLMeasure do
        begin
          MeasureAbbrev:= qryMeasureDataMEASURE_ABBREV.AsVariant;
          MeasureName:= qryMeasureDataMEASURE_NAME.AsVariant;
        end;  { with }
  finally
    qryMeasureData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignProductData(XMLProduct: IXMLTProduct; const AProductCode: Variant; APartnerCode: Integer);
begin
  if VarIsNull(AProductCode) then
    Exit;

  qryProductData.ParamByName('PRODUCT_CODE').Value:= AProductCode;
  qryProductData.ParamByName('PARTNER_CODE').AsVarInteger:= APartnerCode;
  qryProductData.Open;
  try
    if not qryProductData.Eof then
      with XMLProduct do
        begin
          AssignTreeNodeData(XMLProduct, qryProductDataPRODUCT_NAME.AsVariant, qryProductDataPRODUCT_IS_GROUP.AsVariant);
          ProductNo:= qryProductDataPRODUCT_IDENTIFIER.AsVariant;
          AssignMeasureData(WorkMeasure, qryProductDataWORK_MEASURE_CODE.AsVariant);
          AssignMeasureData(AccountMeasure, qryProductDataACCOUNT_MEASURE_CODE.AsVariant);
          AccountMeasureCoef:= qryProductDataACCOUNT_MEASURE_COEF.AsVariant;
          AssignMeasureData(TechMeasure, qryProductDataTECH_MEASURE_CODE.AsVariant);
          TechMeasureCoef:= qryProductDataTECH_MEASURE_COEF.AsVariant;
          PartnerProductNames:= qryProductDataPRODUCT_PARTNER_PRODUCT_NAMES.AsVariant;
          AssignMeasureData(TransportMeasure, qryProductDataTRANSPORT_MEASURE_CODE.AsVariant);
          TransportMeasureCoef:= qryProductDataTRANSPORT_MEASURE_COEF.AsVariant;
          IsVatFree:= qryProductDataIS_VAT_FREE.AsVariant;
          Notes:= qryProductDataNOTES.AsVariant;
          IsInactive:= qryProductDataIS_INACTIVE.AsVariant;
          AssignSelfExistentStatusData(SelfExistentStatus, qryProductDataSELF_EXISTENT_STATUS_CODE.AsVariant);
          AssignTransientStatusData(TransientStatus, qryProductDataTRANSIENT_STATUS_CODE.AsVariant);
          IsProductionProduct:= qryProductDataIS_PRODUCTION_PRODUCT.AsVariant;
          WorkdaysToExist:= qryProductDataWORKDAYS_TO_EXIST.AsVariant;
          IsUsedBySales:= qryProductDataIS_USED_BY_SALES.AsVariant;
          IsUsedBySaleProduction:= qryProductDataIS_USED_BY_SALE_PRODUCTION.AsVariant;
          IsUsedByEnvironmentProduction:= qryProductDataIS_USED_BY_ENV_PRODUCTION.AsVariant;
          IsProvidedByDeliveries:= qryProductDataIS_PROVIDED_BY_DELIVERIES.AsVariant;
          IsProvidedBySaleProduction:= qryProductDataIS_PROVIDED_BY_SALE_PRODUCTION.AsVariant;
          IsProvidedByEnvironmentProduction:= qryProductDataIS_PROVIDED_BY_ENV_PRODUCTION.AsVariant;
          AssignPriorityData(UsedBySalesPriority, qryProductDataUSED_BY_SALES_PR_CODE.AsVariant);
          AssignPriorityData(UsedBySaleProductionPriority, qryProductDataUSED_BY_SALE_PROD_PR_CODE.AsVariant);
          AssignPriorityData(UsedByEnvironmentProductionPriority, qryProductDataUSED_BY_ENV_PROD_PR_CODE.AsVariant);
          AssignPriorityData(ProvidedByDeliveriesPriority, qryProductDataPROV_BY_DELIVERIES_PR_CODE.AsVariant);
          AssignPriorityData(ProvidedBySaleProductionPriority, qryProductDataPROV_BY_SALE_PROD_PR_CODE.AsVariant);
          AssignPriorityData(ProvidedByEnvironmentProductionPriority, qryProductDataPROV_BY_ENV_PROD_PR_CODE.AsVariant);
          AssignProductOriginData(ProductOrigin, qryProductDataPRODUCT_ORIGIN_CODE.AsVariant);
          AssignBOIOrderTypeData(BOIOrderType, qryProductDataBOI_ORDER_TYPE_CODE.AsVariant);
        end;  { with }
  finally
    qryProductData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignProductExData(XMLProductEx: IXMLTProductEx; const AProductCode: Variant);
begin
  if VarIsNull(AProductCode) then
    Exit;

  AssignProductData(XMLProductEx, AProductCode);

  qryProductMaterial.ParamByName('PRODUCT_CODE').Value:= AProductCode;
  qryProductMaterial.Open;
  try
    // nqma if not qryProductMaterial.Eof then, ako nqma material da gi napishe null ( <alabala/> )
    with XMLProductEx do
      begin
        AssignProductData(Material, qryProductMaterialMATERIAL_CODE.AsVariant);
        MaterialTechQuantity:= qryProductMaterialMATERIAL_TECH_QUANTITY.AsVariant;
      end;  { with }
  finally
    qryProductMaterial.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignEducationData(XMLEducation: IXMLTEducation;
  const AEducationCode: Variant);
begin
  if VarIsNull(AEducationCode) then
    Exit;

  qryEducationData.ParamByName('EDUCATION_CODE').Value:= AEducationCode;
  qryEducationData.Open;
  try
    if not qryEducationData.Eof then
      with XMLEducation do
        begin
          EducationName:= qryEducationDataEDUCATION_NAME.AsVariant;
          EducationShortName:= qryEducationDataEDUCATION_SHORT_NAME.AsVariant;
        end;  { with }
  finally
    qryEducationData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignEmployeeData(XMLEmployee: IXMLTEmployee;
  const AEmployeeCode: Variant);
begin
  if VarIsNull(AEmployeeCode) then
    Exit;

  qryEmployeeData.ParamByName('EMPLOYEE_CODE').Value:= AEmployeeCode;
  qryEmployeeData.Open;
  try
    if not qryEmployeeData.Eof then
      with XMLEmployee do
        begin
          AssignPartnerData(XMLEmployee, qryEmployeeDataPARTNER_CODE.AsInteger);
          EmployeeProfessions:= qryEmployeeDataEMPLOYEE_PROFESSIONS.AsVariant;
          AssignEmployeeDisciplineRatingData(
            CurrentDisciplineRating,
            qryEmployeeDataNEGATIVE_DISCIPLINE_RATING.AsVariant,
            qryEmployeeDataPOSITIVE_DISCIPLINE_RATING.AsVariant);
        end;  { with }
  finally
    qryEmployeeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignProfessionData(XMLProfession: IXMLTProfession;
  const AProfessionCode: Variant);
begin
  if VarIsNull(AProfessionCode) then
    Exit;

  qryProfessionData.ParamByName('PROFESSION_CODE').Value:= AProfessionCode;
  qryProfessionData.Open;
  try
    if not qryProfessionData.Eof then
      with XMLProfession do
        begin
          ProfessionName:= qryProfessionDataPROFESSION_NAME.AsVariant;
          HourPrice:= qryProfessionDataHOUR_PRICE.AsVariant;
        end;  { with }
  finally
    qryProfessionData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignTeamData(XMLTeam: IXMLTTeam; const ATeamCode: Variant);
begin
  if VarIsNull(ATeamCode) then
    Exit;

  qryTeamData.ParamByName('TEAM_CODE').Value:=  ATeamCode;
  qryTeamData.Open;
  try
    if not qryTeamData.Eof then
      with XMLTeam do
        begin
          TeamName:= qryTeamDataTEAM_NAME.AsVariant;
          TeamNo:= qryTeamDataTEAM_NO.AsVariant;
          IsActive:= qryTeamDataIS_ACTIVE.AsVariant;
          AssignDeptData(Dept, qryTeamDataDEPT_CODE.AsInteger);
        end;  { with }
  finally
    qryTeamData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignCompanyTypeData(XMLCompanyType: IXMLTCompanyType;
  const ACompanyTypeCode: Variant);
begin
  if VarIsNull(ACompanyTypeCode) then
    Exit;

  qryCompanyTypeData.ParamByName('COMPANY_TYPE_CODE').Value:= ACompanyTypeCode;
  qryCompanyTypeData.Open;
  try
    if not qryCompanyTypeData.Eof then
      with XMLCompanyType do
        begin
          CompanyTypeName:= qryCompanyTypeDataCOMPANY_TYPE_NAME.AsVariant;
          CompanyTypeAbbrev:= qryCompanyTypeDataCOMPANY_TYPE_ABBREV.AsVariant;
        end;  { with }
  finally
    qryCompanyTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignCountryData(XMLCountry: IXMLTCountry; const ACountryCode: Variant);
begin
  if VarIsNull(ACountryCode) then
    Exit;

  qryCountryData.ParamByName('COUNTRY_CODE').Value:= ACountryCode;
  qryCountryData.Open;
  try
    if not qryCountryData.Eof then
      with XMLCountry do
        begin
          CountryAbbrev:= qryCountryDataCOUNTRY_ABBREV.AsVariant;
          CountryName:= qryCountryDataCOUNTRY_NAME.AsVariant;
        end;  { with }
  finally
    qryCountryData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignLanguageData(XMLLanguage: IXMLTLanguage; const ALanguageCode: Variant);
begin
  if VarIsNull(ALanguageCode) then
    Exit;

  qryLanguageData.ParamByName('LANGUAGE_CODE').Value:= ALanguageCode;
  qryLanguageData.Open;
  try
    if not qryLanguageData.Eof then
      with XMLLanguage do
        begin
          LanguageName:= qryLanguageDataLANGUAGE_NAME.AsVariant;
        end;  { with }
  finally
    qryLanguageData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignPartnerClassData(XMLPartnerClass: IXMLTPartnerClass;
  const APartnerClassCode: Variant);
begin
  if VarIsNull(APartnerClassCode) then
    Exit;

  qryPartnerClassData.ParamByName('PARTNER_CLASS_CODE').Value:= APartnerClassCode;
  qryPartnerClassData.Open;
  try
    if not qryPartnerClassData.Eof then
      with XMLPartnerClass do
        begin
          PartnerClassName:= qryPartnerClassDataPARTNER_CLASS_NAME.AsVariant;
          PartnerClassAbbrev:= qryPartnerClassDataPARTNER_CLASS_ABBREV.AsVariant;
        end;  { with }
  finally
    qryPartnerClassData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignPartnerData(XMLPartner: IXMLTPartner; const APartnerCode: Variant);
begin
  if VarIsNull(APartnerCode) then
    Exit;

  qryPartnerData.ParamByName('PARTNER_CODE').Value:= APartnerCode;
  qryPartnerData.Open;
  try
    if not qryPartnerData.Eof then
      with XMLPartner do
        begin
          // Partner data
          PartnerNo:= qryPartnerDataPARTNER_NO.AsVariant;
          AssignPartnerClassData(PartnerClass, qryPartnerDataPARTNER_CLASS_CODE.AsVariant);
          PartnerShortName:= qryPartnerDataPARTNER_SHORT_NAME.AsVariant;
          PartnerFullName:= qryPartnerDataPARTNER_FULL_NAME.AsVariant;
          AssignCountryData(Country, qryPartnerDataCOUNTRY_CODE.AsVariant);
          State:= qryPartnerDataSTATE.AsVariant;
          Region:= qryPartnerDataREGION.AsVariant;
          City:= qryPartnerDataCITY.AsVariant;
          Zip:= qryPartnerDataZIP.AsVariant;

          if (qryPartnerDataPARTNER_CLASS_CODE.AsInteger <> 2) or
             LoginContext.HasUserActivity(uaPerson) then
            Address:= qryPartnerDataADDRESS.AsVariant
          else
            Address:= SNotAvailable;

          AssignLanguageData(Language, qryPartnerDataLANGUAGE_CODE.AsVariant);

          // Company data
          CompanyName:= qryPartnerDataCOMPANY_NAME.AsVariant;
          AssignCompanyTypeData(CompanyType, qryPartnerDataCOMPANY_TYPE_CODE.AsVariant);
          CompanyTaxNo:= qryPartnerDataCOMPANY_TAX_NO.AsVariant;
          CompanyBulstat:= qryPartnerDataCOMPANY_BULSTAT.AsVariant;
          CompanyIsVatRegistered:= qryPartnerDataCOMPANY_IS_VAT_REGISTERED.AsVariant;

          // Person data
          PersonFirstName:= qryPartnerDataPERSON_FIRST_NAME.AsVariant;
          PersonMiddleName:= qryPartnerDataPERSON_MIDDLE_NAME.AsVariant;
          PersonLastName:= qryPartnerDataPERSON_LAST_NAME.AsVariant;
          PersonAbbrev:= qryPartnerDataPERSON_ABBREV.AsVariant;

          if LoginContext.HasUserActivity(uaShowEGN) or
             LoginContext.HasUserActivity(uaPerson) then
            PersonEGN:= qryPartnerDataPERSON_EGN.AsVariant
          else
            PersonEGN:= SNotAvailable;

          if LoginContext.HasUserActivity(uaPerson) then
            AssignDateData(PersonBirthDate, qryPartnerDataPERSON_BIRTH_DATE.AsVariant)
          else
            AssignDateData(PersonBirthDate, Null);

          AssignEducationData(PersonEducation, qryPartnerDataPERSON_EDUCATION_CODE.AsVariant);
        end;  { with }
  finally
    qryPartnerData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignShiftData(XMLShift: IXMLTShift; const AShiftCode: Variant);
begin
  if VarIsNull(AShiftCode) then
    Exit;

  qryShiftData.ParamByName('SHIFT_CODE').Value:= AShiftCode;
  qryShiftData.Open;
  try
    if not qryShiftData.Eof then
      with XMLShift do
        begin
          ShiftName:= qryShiftDataSHIFT_NAME.AsVariant;
          ShiftAbbrev:= qryShiftDataSHIFT_ABBREV.AsVariant;
        end;  { with }
  finally
    qryShiftData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignShipmentTypeData(XMLShipmentType: IXMLTShipmentType;
  const AShipmentTypeCode: Variant);
begin
  if VarIsNull(AShipmentTypeCode) then
    Exit;

  qryShipmentTypeData.ParamByName('SHIPMENT_TYPE_CODE').Value:= AShipmentTypeCode;
  qryShipmentTypeData.Open;
  try
    if not qryShipmentTypeData.Eof then
      with XMLShipmentType do
        begin
          ShipmentTypeAbbrev:= qryShipmentTypeDataSHIPMENT_TYPE_ABBREV.AsVariant;
          ShipmentTypeName:= qryShipmentTypeDataSHIPMENT_TYPE_NAME.AsVariant;
        end;  { with }
  finally
    qryShipmentTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignOccupationPhaseData(XMLOccupationPhase: IXMLTOccupationPhase;
  const AOccupationPhaseCode: Variant);
begin
  if VarIsNull(AOccupationPhaseCode) then
    Exit;

  qryOccupationPhaseData.ParamByName('OCCUPATION_PHASE_CODE').Value:= AOccupationPhaseCode;
  qryOccupationPhaseData.Open;
  try
    if not qryOccupationPhaseData.Eof then
      with XMLOccupationPhase do
        begin
          OccupationPhaseName:= qryOccupationPhaseDataOCCUPATION_PHASE_NAME.AsVariant;
        end;  { with }
  finally
    qryOccupationPhaseData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignCraftTypeData(XMLCraftType: IXMLTCraftType;
  const ACraftTypeCode: Variant);
begin
  if VarIsNull(ACraftTypeCode) then
    Exit;

  qryCraftTypeData.ParamByName('CRAFT_TYPE_CODE').Value:= ACraftTypeCode;
  qryCraftTypeData.Open;
  try
    if not qryCraftTypeData.Eof then
      with XMLCraftType do
        begin
          CraftTypeNo:= qryCraftTypeDataCRAFT_TYPE_CODE.AsVariant;
          CraftTypeName:= qryCraftTypeDataCRAFT_TYPE_NAME.AsVariant;
        end;  { with }
  finally
    qryCraftTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignCraftData(XMLCraft: IXMLTCraft; const ACraftCode: Variant);
begin
  if VarIsNull(ACraftCode) then
    Exit;

  qryCraftData.ParamByName('CRAFT_CODE').Value:= ACraftCode;
  qryCraftData.Open;
  try
    if not qryCraftData.Eof then
      with XMLCraft do
        begin
          CraftNo:= qryCraftDataCRAFT_CODE.AsVariant;
          CraftName:= qryCraftDataCRAFT_NAME.AsVariant;
          AssignCraftTypeData(CraftType, qryCraftDataCRAFT_TYPE_CODE.AsVariant);
        end;  { with }
  finally
    qryCraftData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignOccupationData(XMLOccupation: IXMLTOccupation;
  const AOccupationCode: Variant);
begin
  if VarIsNull(AOccupationCode) then
    Exit;

  qryOccupationData.ParamByName('OCCUPATION_CODE').Value:= AOccupationCode;
  qryOccupationData.Open;
  try
    if not qryOccupationData.Eof then
      with XMLOccupation do
        begin
          OccupationName:= qryOccupationDataOCCUPATION_NAME.AsVariant;
          AssignDeptData(OccupationDept, qryOccupationDataDEPT_CODE.AsVariant);
          AssignDateIntervalData(
            OccupationDateInterval,
            qryOccupationDataOCCUPATION_BEGIN_DATE.AsVariant,
            qryOccupationDataOCCUPATION_END_DATE.AsVariant);
          AssignShiftData(Shift, qryOccupationDataSHIFT_CODE.AsVariant);
          OccupationLevel:= qryOccupationDataOCCUPATION_LEVEL.AsVariant;
          Notes:= qryOccupationDataNOTES.AsVariant;
          IsMain:= qryOccupationDataIS_MAIN.AsVariant;
          AssignOccupationPhaseData(OccupationPhase, qryOccupationDataOCCUPATION_PHASE_CODE.AsVariant);
          AssignProductData(Product, qryOccupationDataPRODUCT_CODE.AsVariant);
          AssignCraftData(Craft, qryOccupationDataCRAFT_CODE.AsVariant);
          AssignSalaryData(
            CurrentBaseSalary,
            LoginContext.BaseCurrencyCode,
            qryOccupationDataBASE_SALARY.AsVariant,
            qryOccupationDataDATE_UNIT_CODE.AsVariant);
          AssignFloatRangeData(
            CurrentSalaryRatioCoefRange,
            qryOccupationDataMIN_SALARY_RATIO_COEF.AsVariant,
            qryOccupationDataMAX_SALARY_RATIO_COEF.AsVariant);
          OccupationProfessions:= qryOccupationDataOCCUPATION_PROFESSIONS.AsVariant;
          OccupationWorkDepts:= qryOccupationDataOCCUPATION_WORK_DEPTS.AsVariant;
        end;  { with }
  finally
    qryOccupationData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignSpecLineData(XMLModelLine: IXMLTModelLine;
  const ASpecProductCode, ASpecLineCode: Variant);
begin
  if VarIsNull(ASpecProductCode) or VarIsNull(ASpecLineCode) then
    Exit;

  qrySpecLineData.ParamByName('SPEC_PRODUCT_CODE').Value:= ASpecProductCode;
  qrySpecLineData.ParamByName('SPEC_LINE_CODE').Value:= ASpecLineCode;
  qrySpecLineData.Open;
  try
    if not qrySpecLineData.Eof then
      with XMLModelLine do
        begin
          NoAsText:= qrySpecLineDataNO_AS_TEXT.AsVariant;
          AssignProductData(Detail, qrySpecLineDataDETAIL_CODE.AsVariant);
          DetailTechQuantity:= qrySpecLineDataDETAIL_TECH_QUANTITY.AsVariant;
          LineDetailTechQuantity:= qrySpecLineDataTOTAL_DETAIL_TECH_QUANTITY.AsVariant;
          Notes:= qrySpecLineDataNOTES.AsVariant;
          AssignProductData(Material, qrySpecLineDataPRODUCT_CODE.AsVariant);
          MaterialTechQuantity:= qrySpecLineDataPRODUCT_TECH_QUANTITY.AsVariant;
          IsForSingleUse:= qrySpecLineDataIS_FOR_SINGLE_USE.AsVariant;
          ConstructionNotes:= qrySpecLineDataCONSTRUCTION_NOTES.AsVariant;
          IsComplete:= qrySpecLineDataIS_COMPLETE.AsVariant;
          AssignSpecModelData(
            Model,
            qrySpecLineDataSPEC_PRODUCT_CODE.AsVariant);
        end;  { with }
  finally
    qrySpecLineData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignSpecModelData(XMLModel: IXMLTModel; const ASpecProductCode: Variant);
begin
  if VarIsNull(ASpecProductCode) then
    begin
      Exit;
    end;  { if }

  qrySpecModelData.ParamByName('SPEC_PRODUCT_CODE').Value:= ASpecProductCode;
  qrySpecModelData.Open;
  try
    if not qrySpecModelData.Eof then
      with XMLModel do
        begin
          Identifier:= qrySpecModelDataIDENTIFIER.AsVariant;
        end;  { with }
  finally
    qrySpecStageData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignMaterialListLineData(XMLModelLine: IXMLTModelLine;
  const AMLLObjectBranchCode, AMLLObjectCode: Variant);
begin
  if VarIsNull(AMLLObjectBranchCode) or VarIsNull(AMLLObjectCode) then
    Exit;

  qryMaterialListLineData.ParamByName('MLL_OBJECT_BRANCH_CODE').Value:= AMLLObjectBranchCode;
  qryMaterialListLineData.ParamByName('MLL_OBJECT_CODE').Value:= AMLLObjectCode;
  qryMaterialListLineData.Open;
  try
    if not qryMaterialListLineData.Eof then
      with XMLModelLine do
        begin
          NoAsText:= qryMaterialListLineDataNO_AS_TEXT.AsVariant;
          ForkNo:= qryMaterialListLineDataFORK_NO.AsVariant;
          AssignProductData(Detail, qryMaterialListLineDataDETAIL_CODE.AsVariant);
          DetailTechQuantity:= qryMaterialListLineDataDETAIL_TECH_QUANTITY.AsVariant;
          Notes:= qryMaterialListLineDataNOTES.AsVariant;
          LineDetailTechQuantity:= qryMaterialListLineDataLINE_DETAIL_TECH_QUANTITY.AsVariant;
          AssignProductData(Material, qryMaterialListLineDataPRODUCT_CODE.AsVariant);
          MaterialTechQuantity:= qryMaterialListLineDataPRODUCT_TECH_QUANTITY.AsVariant;
          IsForSingleUse:= qryMaterialListLineDataIS_FOR_SINGLE_USE.AsVariant;
          ConstructionNotes:= qryMaterialListLineDataCONSTRUCTION_NOTES.AsVariant;
          IsComplete:= qryMaterialListLineDataIS_COMPLETE.AsVariant;
          AssignRealModelData(
            Model,
            qryMaterialListLineDataML_OBJECT_BRANCH_CODE.AsVariant,
            qryMaterialListLineDataML_OBJECT_CODE.AsVariant);
        end;  { with }
  finally
    qryMaterialListLineData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignSpecStageData(XMLModelStage: IXMLTModelStage;
  const ASpecProductCode, ASpecLineCode, ASpecModelVariantNo, ASpecLineStageCode: Variant);
begin
  if VarIsNull(ASpecProductCode) or
     VarIsNull(ASpecLineCode) or
     VarIsNull(ASpecModelVariantNo) or
     VarIsNull(ASpecLineStageCode) then
    begin
      Exit;
    end;  { if }

  qrySpecStageData.ParamByName('SPEC_PRODUCT_CODE').Value:= ASpecProductCode;
  qrySpecStageData.ParamByName('SPEC_LINE_CODE').Value:= ASpecLineCode;
  qrySpecStageData.ParamByName('SPEC_MODEL_VARIANT_NO').Value:= ASpecModelVariantNo;
  qrySpecStageData.ParamByName('SPEC_LINE_STAGE_CODE').Value:= ASpecLineStageCode;
  qrySpecStageData.Open;
  try
    if not qrySpecStageData.Eof then
      with XMLModelStage do
        begin
          StageNo:= qrySpecStageDataSPEC_LINE_STAGE_NO.AsVariant;
          AssignDeptData(StageDept, qrySpecStageDataDEPT_CODE.AsVariant);
          TreatmentWorkdays:= qrySpecStageDataTREATMENT_WORKDAYS.AsVariant;
          OutgoingWorkdays:= qrySpecStageDataOUTGOING_WORKDAYS.AsVariant;
          IsAutoMovement:= qrySpecStageDataIS_AUTO_MOVEMENT.AsVariant;
          ExternalWorkPrice:= qrySpecStageDataEXTERNAL_WORK_PRICE.AsVariant;
          AssignSpecLineData(
            ModelLine,
            qrySpecStageDataSPEC_PRODUCT_CODE.AsVariant,
            qrySpecStageDataSPEC_LINE_CODE.AsVariant);
        end;  { with }
  finally
    qrySpecStageData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignRealStageData(XMLModelStage: IXMLTModelStage;
  const ARealStageBranchCode, ARealStageCode: Variant);
begin
  if VarIsNull(ARealStageBranchCode) or VarIsNull(ARealStageCode) then
    Exit;

  qryRealStageData.ParamByName('MLMS_OBJECT_BRANCH_CODE').Value:= ARealStageBranchCode;
  qryRealStageData.ParamByName('MLMS_OBJECT_CODE').Value:= ARealStageCode;
  qryRealStageData.Open;
  try
    if not qryRealStageData.Eof then
      with XMLModelStage do
        begin
          StageNo:= qryRealStageDataML_MODEL_STAGE_NO.AsVariant;
          AssignDeptData(StageDept, qryRealStageDataDEPT_CODE.AsVariant);
          TreatmentWorkdays:= qryRealStageDataTREATMENT_WORKDAYS.AsVariant;
          OutgoingWorkdays:= qryRealStageDataOUTGOING_WORKDAYS.AsVariant;
          IsAutoMovement:= qryRealStageDataIS_AUTO_MOVEMENT.AsVariant;
          ExternalWorkPrice:= qryRealStageDataEXTERNAL_WORK_PRICE.AsVariant;
          AssignMaterialListLineData(
            ModelLine,
            qryRealStageDataMLL_OBJECT_BRANCH_CODE.AsVariant,
            qryRealStageDataMLL_OBJECT_CODE.AsVariant);
        end;  { with }
  finally
    qryRealStageData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignOperationTypeData(XMLOperationType: IXMLTOperationType;
  const AOperationTypeCode: Variant);
begin
  if VarIsNull(AOperationTypeCode) then
    Exit;

  qryOperationTypeData.ParamByName('OPERATION_TYPE_CODE').Value:= AOperationTypeCode;
  qryOperationTypeData.Open;
  try
    if not qryOperationTypeData.Eof then
      with XMLOperationType do
        begin
          OperationTypeName:= qryOperationTypeDataOPERATION_TYPE_NAME.AsVariant;
          OperationTypeAbbrev:= qryOperationTypeDataOPERATION_TYPE_ABBREV.AsVariant;
        end;  { with }
  finally
    qryOperationTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignSpecOperationData(XMLModelOperation: IXMLTModelOperation;
  const ASpecProductCode, ASpecLineCode, ASpecModelVariantNo, ASpecLineStageCode, AOperationCode: Variant);
begin
  if VarIsNull(ASpecProductCode) or
     VarIsNull(ASpecLineCode) or
     VarIsNull(ASpecModelVariantNo) or
     VarIsNull(ASpecLineStageCode) or
     VarIsNull(AOperationCode) then
    begin
      Exit
    end;  { if }

  qrySpecOperationData.ParamByName('SPEC_PRODUCT_CODE').Value:= ASpecProductCode;
  qrySpecOperationData.ParamByName('SPEC_LINE_CODE').Value:= ASpecLineCode;
  qrySpecOperationData.ParamByName('SPEC_MODEL_VARIANT_NO').Value:= ASpecModelVariantNo;
  qrySpecOperationData.ParamByName('SPEC_LINE_STAGE_CODE').Value:= ASpecLineStageCode;
  qrySpecOperationData.ParamByName('SMVS_OPERATION_CODE').Value:= AOperationCode;
  qrySpecOperationData.Open;
  try
    if not qrySpecOperationData.Eof then
      with XMLModelOperation do
        begin
          OperationNo:= qrySpecOperationDataSMVS_OPERATION_NO.AsVariant;
          OperationVariantNo:= qrySpecOperationDataSMVS_OPERATION_VARIANT_NO.AsVariant;
          AssignOperationTypeData(OperationType, qrySpecOperationDataOPERATION_TYPE_CODE.AsVariant);
          AssignProfessionData(Profession, qrySpecOperationDataPROFESSION_CODE.AsVariant);
          EffortCoef:= qrySpecOperationDataEFFORT_COEF.AsVariant;
          AssignDeptData(OperationDept, qrySpecOperationDataDEPT_CODE.AsVariant);
          HourTechQuantity:= qrySpecOperationDataHOUR_TECH_QUANTITY.AsVariant;
          AssignProfessionData(SetupProfession, qrySpecOperationDataSETUP_PROFESSION_CODE.AsVariant);
          SetupEffortCoef:= qrySpecOperationDataSETUP_EFFORT_COEF.AsVariant;
          SetupHourTechQuantity:= qrySpecOperationDataSETUP_HOUR_TECH_QUANTITY.AsVariant;
          AssignProductData(ProgramToolProduct, qrySpecOperationDataPROGRAM_TOOL_PRODUCT_CODE.AsVariant);
          AssignProductData(SpecificToolProduct, qrySpecOperationDataSPECIFIC_TOOL_PRODUCT_CODE.AsVariant);
          AssignProductData(TypicalToolProduct, qrySpecOperationDataTYPICAL_TOOL_PRODUCT_CODE.AsVariant);
          Notes:= qrySpecOperationDataNOTES.AsVariant;
          SpecificToolDetailTechQuantity:= qrySpecOperationDataSPECIFIC_TOOL_DETAIL_TECH_QTY.AsVariant;
          TypicalToolDetailTechQuantity:= qrySpecOperationDataTYPICAL_TOOL_DETAIL_TECH_QTY.AsVariant;
          TreatmentBeginWorkdayNo:= qrySpecOperationDataTREATMENT_BEGIN_WORKDAY_NO.AsVariant;
          TreatmentWorkdays:= qrySpecOperationDataTREATMENT_WORKDAYS.AsVariant;
          HasSpecialControl:= qrySpecOperationDataHAS_SPECIAL_CONTROL.AsVariant;
          SetupCount:= qrySpecOperationDataSETUP_COUNT.AsVariant;
          AssignSpecStageData(
            ModelStage,
            qrySpecOperationDataSPEC_PRODUCT_CODE.AsVariant,
            qrySpecOperationDataSPEC_LINE_CODE.AsVariant,
            qrySpecOperationDataSPEC_MODEL_VARIANT_NO.AsVariant,
            qrySpecOperationDataSPEC_LINE_STAGE_CODE.AsVariant);
        end;  { with }
  finally
    qrySpecOperationData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignRealModelData(XMLModel: IXMLTModel; const AMLObjectBranchCode, AMLObjectCode: Variant);
begin
  if VarIsNull(AMLObjectBranchCode) or VarIsNull(AMLObjectCode) then
    Exit;

  qryRealModelData.ParamByName('ML_OBJECT_BRANCH_CODE').Value:= AMLObjectBranchCode;
  qryRealModelData.ParamByName('ML_OBJECT_CODE').Value:= AMLObjectCode;
  qryRealModelData.Open;
  try
    if not qryRealModelData.Eof then
      with XMLModel do
        begin
          Identifier:= qryRealModelDataIDENTIFIER.AsVariant;
        end;  { with }
  finally
    qryRealModelData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignRealOperationData(XMLModelOperation: IXMLTModelOperation;
  const ARealOperationBranchCode, ARealOperationCode: Variant);
begin
  if VarIsNull(ARealOperationBranchCode) or VarIsNull(ARealOperationCode) then
    Exit;

  qryRealOperationData.ParamByName('MLMSO_OBJECT_BRANCH_CODE').Value:= ARealOperationBranchCode;
  qryRealOperationData.ParamByName('MLMSO_OBJECT_CODE').Value:= ARealOperationCode;
  qryRealOperationData.Open;
  try
    if not qryRealOperationData.Eof then
      with XMLModelOperation do
        begin
          OperationNo:= qryRealOperationDataMLMS_OPERATION_NO.AsVariant;
          OperationVariantNo:= qryRealOperationDataMLMS_OPERATION_VARIANT_NO.AsVariant;
          AssignOperationTypeData(OperationType, qryRealOperationDataOPERATION_TYPE_CODE.AsVariant);
          AssignProfessionData(Profession, qryRealOperationDataPROFESSION_CODE.AsVariant);
          EffortCoef:= qryRealOperationDataEFFORT_COEF.AsVariant;
          AssignDeptData(OperationDept, qryRealOperationDataDEPT_CODE.AsVariant);
          HourTechQuantity:= qryRealOperationDataHOUR_TECH_QUANTITY.AsVariant;
          AssignProfessionData(SetupProfession, qryRealOperationDataSETUP_PROFESSION_CODE.AsVariant);
          SetupEffortCoef:= qryRealOperationDataSETUP_EFFORT_COEF.AsVariant;
          SetupHourTechQuantity:= qryRealOperationDataSETUP_HOUR_TECH_QUANTITY.AsVariant;
          AssignProductData(ProgramToolProduct, qryRealOperationDataPROGRAM_TOOL_PRODUCT_CODE.AsVariant);
          AssignProductData(SpecificToolProduct, qryRealOperationDataSPECIFIC_TOOL_PRODUCT_CODE.AsVariant);
          AssignProductData(TypicalToolProduct, qryRealOperationDataTYPICAL_TOOL_PRODUCT_CODE.AsVariant);
          Notes:= qryRealOperationDataNOTES.AsVariant;
          SpecificToolDetailTechQuantity:= qryRealOperationDataSPECIFIC_TOOL_DETAIL_TECH_QTY.AsVariant;
          TypicalToolDetailTechQuantity:= qryRealOperationDataTYPICAL_TOOL_DETAIL_TECH_QTY.AsVariant;
          TreatmentBeginWorkdayNo:= qryRealOperationDataTREATMENT_BEGIN_WORKDAY_NO.AsVariant;
          TreatmentWorkdays:= qryRealOperationDataTREATMENT_WORKDAYS.AsVariant;
          HasSpecialControl:= qryRealOperationDataHAS_SPECIAL_CONTROL.AsVariant;
          SetupCount:= qryRealOperationDataSETUP_COUNT.AsVariant;
          AssignRealStageData(
            ModelStage,
            qryRealOperationDataMLMS_OBJECT_BRANCH_CODE.AsVariant,
            qryRealOperationDataMLMS_OBJECT_CODE.AsVariant);
        end;  { with }
  finally
    qryRealOperationData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignAspectTypeData(XMLAspectType: IXMLTAspectType;
  const AAspectTypeCode: Variant);
begin
  if VarIsNull(AAspectTypeCode) then
    Exit;

  qryAspectTypeData.ParamByName('ASPECT_TYPE_CODE').Value:= AAspectTypeCode;
  qryAspectTypeData.Open;
  try
    if not qryAspectTypeData.Eof then
      with XMLAspectType do
        begin
          AspectTypeAbbrev:= qryAspectTypeDataASPECT_TYPE_ABBREV.AsVariant;
          AspectTypeName:= qryAspectTypeDataASPECT_TYPE_NAME.AsVariant;
        end;  { with }
  finally
    qryAspectTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignStreamTypeData(XMLStreamType: IXMLTStreamType;
  const AStreamTypeCode: Variant);
begin
  if VarIsNull(AStreamTypeCode) then
    Exit;

  qryStreamTypeData.ParamByName('STREAM_TYPE_CODE').Value:= AStreamTypeCode;
  qryStreamTypeData.Open;
  try
    if not qryStreamTypeData.Eof then
      with XMLStreamType do
        begin
          StreamTypeAbbrev:= qryStreamTypeDataSTREAM_TYPE_ABBREV.AsVariant;
          StreamTypeName:= qryStreamTypeDataSTREAM_TYPE_NAME.AsVariant;
        end;  { with }
  finally
    qryStreamTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignBaseGroupData(XMLBaseGroup: IXMLTBaseGroup;
  const ABaseGroupCode: Variant);
begin
  if VarIsNull(ABaseGroupCode) then
    Exit;

  qryBaseGroupData.ParamByName('BASE_GROUP_CODE').Value:= ABaseGroupCode;
  qryBaseGroupData.Open;
  try
    if not qryBaseGroupData.Eof then
      with XMLBaseGroup do
        begin
          BaseGroupNo:= qryBaseGroupDataBASE_GROUP_NO.AsVariant;
          BaseGroupName:= qryBaseGroupDataBASE_GROUP_NAME.AsVariant;
          AssignDeptData(GroupDept, qryBaseGroupDataGROUP_DEPT_CODE.AsVariant);
        end;  { with }
  finally
    qryBaseGroupData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignProductStoreData(XMLProductStore: IXMLTProductStore;
  const AProductStoreCode: Variant);
begin
  if VarIsNull(AProductStoreCode) then
    Exit;

  qryProductStoreData.ParamByName('PRODUCT_STORE_CODE').Value:= AProductStoreCode;
  qryProductStoreData.Open;
  try
    if not qryProductStoreData.Eof then
      with XMLProductStore do
        begin
          AssignProductData(Product, qryProductStoreDataPRODUCT_CODE.AsVariant);
          AssignDeptData(Store, qryProductStoreDataSTORE_CODE.AsVariant);
          MinQuantity:= qryProductStoreDataMIN_QUANTITY.AsVariant;
          AssignDateIntervalData(
            DateInterval,
            qryProductStoreDataBEGIN_DATE.AsVariant,
            qryProductStoreDataEND_DATE.AsVariant);
        end;  { with }
  finally
    qryProductStoreData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignEngineeringOrderTypeData(XMLEngineeringOrderType: IXMLTEngineeringOrderType;
  const AEngineeringOrderTypeCode: Variant);
begin
  if VarIsNull(AEngineeringOrderTypeCode) then
    Exit;

  qryEngineeringOrderTypeData.ParamByName('ENGINEERING_ORDER_TYPE_CODE').Value:=
    AEngineeringOrderTypeCode;
  qryEngineeringOrderTypeData.Open;
  try
    if not qryEngineeringOrderTypeData.Eof then
      with XMLEngineeringOrderType do
        begin
          EngineeringOrderTypeName:= qryEngineeringOrderTypeDataENGINEERING_ORDER_TYPE_NAME.AsVariant;
          EngineeringOrderTypeAbbrev:= qryEngineeringOrderTypeDataENGINEERING_ORDER_TYPE_ABBREV.AsVariant;
        end;  { with }
  finally
    qryEngineeringOrderTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignPriorityData(XMLPriority: IXMLTPriority;
  const APriorityCode: Variant);
begin
  if VarIsNull(APriorityCode) then
    Exit;

  qryPriorityData.ParamByName('PRIORITY_CODE').Value:= APriorityCode;
  qryPriorityData.Open;
  try
    if not qryPriorityData.Eof then
      with XMLPriority do
        begin
          PriorityNo:= qryPriorityDataPRIORITY_NO.AsVariant;
          PriorityName:= qryPriorityDataPRIORITY_NAME.AsVariant;
          PriorityColor:= qryPriorityDataPRIORITY_COLOR.AsVariant;
          PriorityBackgroundColor:= qryPriorityDataPRIORITY_BACKGROUND_COLOR.AsVariant;
        end;  { with }
  finally
    qryPriorityData.Close;
  end;  { try }
end;

//procedure TdmDocXML.AssignProductionOrderBaseTypeData(
//  XMLProductionOrderBaseType: IXMLTProductionOrderBaseType;
//  AProductionOrderBaseTypeCode: Variant);
//begin
//  if VarIsNull(AProductionOrderBaseTypeCode) then
//    Exit;
//
//  qryProductionOrderBaseTypeData.ParamByName('PROD_ORDER_BASE_TYPE_CODE').Value:=
//    AProductionOrderBaseTypeCode;
//  qryProductionOrderBaseTypeData.Open;
//  try
//    if not qryProductionOrderBaseTypeData.Eof then
//      with XMLProductionOrderBaseType do
//        begin
//          ProductionOrderBaseTypeName:= qryProductionOrderBaseTypeDataPROD_ORDER_BASE_TYPE_NAME.AsVariant;
//          ProductionOrderBaseTypeAbbrev:= qryProductionOrderBaseTypeDataPROD_ORDER_BASE_TYPE_ABBREV.AsVariant;
//        end;  { with }
//  finally
//    qryProductionOrderBaseTypeData.Close;
//  end;  { try }
//end;

//procedure TdmDocXML.AssignProductionOrderTypeData(
//  XMLProductionOrderType: IXMLTProductionOrderType;
//  AProductionOrderTypeCode: Variant);
//begin
//  if VarIsNull(AProductionOrderTypeCode) then
//    Exit;
//
//  qryProductionOrderTypeData.ParamByName('PRODUCTION_ORDER_TYPE_CODE').Value:=
//    AProductionOrderTypeCode;
//  qryProductionOrderTypeData.Open;
//  try
//    if not qryProductionOrderTypeData.Eof then
//      with XMLProductionOrderType do
//        begin
//          ProductionOrderTypeName:= qryProductionOrderTypeDataPRODUCTION_ORDER_TYPE_NAME.AsVariant;
//          ProductionOrderTypeAbbrev:= qryProductionOrderTypeDataPRODUCTION_ORDER_TYPE_ABBREV.AsVariant;
//          AssignProductionOrderBaseTypeData(ProductionOrderBaseType, qryProductionOrderTypeDataPROD_ORDER_BASE_TYPE_CODE.AsVariant);
//        end;  { with }
//  finally
//    qryProductionOrderTypeData.Close;
//  end;  { try }
//end;

procedure TdmDocXML.AssignEngineeringOrderData(
  XMLEngineeringOrder: IXMLTEngineeringOrder;
  const AEngineeringOrderCode: Variant);
begin
  if VarIsNull(AEngineeringOrderCode) then
    Exit;

  qryEngineeringOrderData.ParamByName('ENGINEERING_ORDER_CODE').Value:=
    AEngineeringOrderCode;
  qryEngineeringOrderData.Open;
  try
    if not qryEngineeringOrderData.Eof then
      with XMLEngineeringOrder do
        begin
          EngineeringOrderNo:= qryEngineeringOrderDataENGINEERING_ORDER_NO.AsVariant;
          AssignEngineeringOrderTypeData(EngineeringOrderType, qryEngineeringOrderDataENGINEERING_ORDER_TYPE_CODE.AsVariant);
//          AssignProductionOrderTypeData(ProductionOrderType, qryEngineeringOrderDataPRODUCTION_ORDER_TYPE_CODE.AsVariant);
          AssignDeptData(EngineeringOrderBranch, qryEngineeringOrderDataENGINEERING_ORDER_BRANCH_CODE.AsVariant);
          AssignPriorityData(Priority, qryEngineeringOrderDataPRIORITY_CODE.AsVariant);
          AssignDeptData(OrderDept, qryEngineeringOrderDataORDER_DEPT_CODE.AsVariant);
          AssignProductData(Product, qryEngineeringOrderDataPRODUCT_CODE.AsVariant);
          AssignProductData(ThoroughlyEngineeredProduct, qryEngineeringOrderDataTHOROUGHLY_ENG_PRODUCT_CODE.AsVariant);
          AssignDateIntervalData(
            EngineeringPlanDateInterval,
            qryEngineeringOrderDataENGINEERING_PLAN_BEGIN_DATE.AsVariant,
            qryEngineeringOrderDataENGINEERING_PLAN_END_DATE.AsVariant);
          AssignDeptData(EngineeringDept, qryEngineeringOrderDataENGINEERING_DEPT_CODE.AsVariant);
          AssignEmployeeData(EngineeringEmployee, qryEngineeringOrderDataENGINEERING_EMPLOYEE_CODE.AsVariant);
          AssignEmployeeData(ActivateEmployee, qryEngineeringOrderDataACTIVATE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(ActivateDateTime, qryEngineeringOrderDataACTIVATE_DATE.AsVariant, qryEngineeringOrderDataACTIVATE_TIME.AsVariant);
          AssignEmployeeData(CloseEmployee, qryEngineeringOrderDataCLOSE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(CloseDateTime, qryEngineeringOrderDataCLOSE_DATE.AsVariant, qryEngineeringOrderDataCLOSE_TIME.AsVariant);
          AssignEmployeeData(AnnulEmployee, qryEngineeringOrderDataANNUL_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(AnnulDateTime, qryEngineeringOrderDataANNUL_DATE.AsVariant, qryEngineeringOrderDataANNUL_TIME.AsVariant);
          AssignEmployeeData(CreateEmployee, qryEngineeringOrderDataCREATE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(CreateDateTime, qryEngineeringOrderDataCREATE_DATE.AsVariant, qryEngineeringOrderDataCREATE_TIME.AsVariant);
          AssignEmployeeData(ChangeEmployee, qryEngineeringOrderDataCHANGE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(ChangeDateTime, qryEngineeringOrderDataCHANGE_DATE.AsVariant, qryEngineeringOrderDataCHANGE_TIME.AsVariant);
          ChangeCount:= qryEngineeringOrderDataCHANGE_COUNT.AsVariant;
        end;  { with }
  finally
    qryEngineeringOrderData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignCurrencyData(XMLCurrency: IXMLTCurrency;
  const ACurrencyCode: Variant);
begin
  if VarIsNull(ACurrencyCode) then
    Exit;

  qryCurrencyData.ParamByName('CURRENCY_CODE').Value:= ACurrencyCode;
  qryCurrencyData.Open;
  try
    if not qryCurrencyData.Eof then
      with XMLCurrency do
        begin
          CurrencyName:= qryCurrencyDataCURRENCY_NAME.AsVariant;
          CurrencyAbbrev:= qryCurrencyDataCURRENCY_ABBREV.AsVariant;
        end;  { with }
  finally
    qryCurrencyData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignProcessData(XMLProcess: IXMLTProcess; const AProcessCode: Variant);
begin
  if VarIsNull(AProcessCode) then
    Exit;

  qryProcessData.ParamByName('PROCESS_CODE').Value:= AProcessCode;
  qryProcessData.Open;
  try
    if not qryProcessData.Eof then
      with XMLProcess do
        begin
          ProcessName:= qryProcessDataPROCESS_NAME.AsVariant;
          ProcessAbbrev:= qryProcessDataPROCESS_ABBREV.AsVariant;
        end;  { with }
  finally
    qryProcessData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignStoreDealTypeData(XMLStoreDealType: IXMLTStoreDealType;
  const AStoreDealTypeCode: Variant);
begin
  if VarIsNull(AStoreDealTypeCode) then
    Exit;

  qryStoreDealTypeData.ParamByName('STORE_DEAL_TYPE_CODE').Value:=
    AStoreDealTypeCode;
  qryStoreDealTypeData.Open;
  try
    if not qryStoreDealTypeData.Eof then
      with XMLStoreDealType do
        begin
          StoreDealTypeAbbrev:= qryStoreDealTypeDataSTORE_DEAL_TYPE_ABBREV.AsVariant;
          InOut:= qryStoreDealTypeDataIN_OUT.AsVariant;
        end;  { with }
  finally
    qryStoreDealTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignStoreDealData(XMLStoreDeal: IXMLTStoreDeal;
  const AStoreDealObjectBranchCode, AStoreDealObjectCode: Variant);
begin
  if VarIsNull(AStoreDealObjectBranchCode) or VarIsNull(AStoreDealObjectCode) then
    Exit;

  qryStoreDealData.ParamByName('STORE_DEAL_OBJECT_BRANCH_CODE').Value:=
    AStoreDealObjectBranchCode;
  qryStoreDealData.ParamByName('STORE_DEAL_OBJECT_CODE').Value:=
    AStoreDealObjectCode;
  qryStoreDealData.Open;
  try
    if not qryStoreDealData.Eof then
      with XMLStoreDeal do
        begin
          AssignDeptData(Store, qryStoreDealDataSTORE_CODE.AsVariant);
          AssignStoreDealTypeData(StoreDealType, qryStoreDealDataSTORE_DEAL_TYPE_CODE.AsVariant);
          AssignDateData(StoreDealDate, qryStoreDealDataSTORE_DEAL_DATE.AsVariant);
          StoreDealNo:= qryStoreDealDataSTORE_DEAL_NO.AsVariant;
          StoreDealIdentifier:= qryStoreDealDataPROCESS_OBJECT_IDENTIFIER.AsVariant;
          AssignProductData(Product, qryStoreDealDataPRODUCT_CODE.AsVariant);
          WantedQuantity:= qryStoreDealDataWANTED_QUANTITY.AsVariant;
          Quantity:= qryStoreDealDataQUANTITY.AsVariant;
          AccountQuantity:= qryStoreDealDataACCOUNT_QUANTITY.AsVariant;
          AssignCurrencyData(Currency, qryStoreDealDataCURRENCY_CODE.AsVariant);
          TotalPrice:= qryStoreDealDataTOTAL_PRICE.AsVariant;
          AssignEmployeeData(StoreEmployee, qryStoreDealDataSTORE_EMPLOYEE_CODE.AsVariant);
          AssignEmployeeData(OtherEmployee, qryStoreDealDataOTHER_EMPLOYEE_CODE.AsVariant);
          AssignEmployeeData(RequestEmployee, qryStoreDealDataREQUEST_EMPLOYEE_CODE.AsVariant);
          AssignDeptData(Dept, qryStoreDealDataDEPT_CODE.AsVariant);
          AssignProcessData(BoundProcess, qryStoreDealDataBND_PROCESS_CODE.AsVariant);
          AssignProcessObjectData(
            BoundProcessObject,
            qryStoreDealDataBND_PROCESS_OBJECT_BRANCH_CODE.AsVariant,
            qryStoreDealDataBND_PROCESS_OBJECT_CODE.AsVariant);
          AssignEmployeeData(CreateEmployee, qryStoreDealDataCREATE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(CreateDateTime, qryStoreDealDataCREATE_DATE.AsVariant, qryStoreDealDataCREATE_TIME.AsVariant);
          AssignEmployeeData(StoreEmployee, qryStoreDealDataSTORNO_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(StornoDateTime, qryStoreDealDataSTORNO_DATE.AsVariant, qryStoreDealDataSTORNO_TIME.AsVariant);
        end;  { with }
  finally
    qryStoreDealData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignOperationMovementTypeData(
  XMLOperationMovementType: IXMLTOperationMovementType;
  const AOperationMovementTypeCode: Variant);
begin
  if VarIsNull(AOperationMovementTypeCode) then
    Exit;

  qryOperationMovementTypeData.ParamByName('OPERATION_MOVEMENT_TYPE_CODE').Value:=
    AOperationMovementTypeCode;
  qryOperationMovementTypeData.Open;
  try
    if not qryOperationMovementTypeData.Eof then
      with XMLOperationMovementType do
        begin
          OperationMovementTypeAbbrev:= qryOperationMovementTypeDataOPERATION_MOVEMENT_TYPE_ABBREV.AsVariant;
          OperationMovementTypeName:= qryOperationMovementTypeDataOPERATION_MOVEMENT_TYPE_NAME.AsVariant;
        end;  { with }
  finally
    qryOperationMovementTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignOperationMovementData(
  XMLOperationMovement: IXMLTOperationMovement;
  const AOperationMovementBranchCode, AOperationMovementCode: Variant);
begin
  if VarIsNull(AOperationMovementBranchCode) or VarIsNull(AOperationMovementCode) then
    Exit;

  qryOperationMovementData.ParamByName('OM_BRANCH_CODE').Value:=
    AOperationMovementBranchCode;
  qryOperationMovementData.ParamByName('OM_CODE').Value:=
    AOperationMovementCode;
  qryOperationMovementData.Open;
  try
    if not qryOperationMovementData.Eof then
      with XMLOperationMovement do
        begin
          AssignDeptData(OperationMovementBranch, qryOperationMovementDataOM_BRANCH_CODE.AsVariant);
          OperationMovementNo:= qryOperationMovementDataOM_NO.AsVariant;
          AssignOperationMovementTypeData(OperationMovementType, qryOperationMovementDataOPERATION_MOVEMENT_TYPE_CODE.AsVariant);
          AssignDateTimeData(OperationMovementDateTime, qryOperationMovementDataOM_DATE.AsVariant, qryOperationMovementDataOM_TIME.AsVariant);
          AssignEmployeeData(FromEmployee, qryOperationMovementDataFROM_EMPLOYEE_CODE.AsVariant);
          AssignTeamData(FromTeam, qryOperationMovementDataFROM_TEAM_CODE.AsVariant);
          AssignEmployeeData(ToEmployee, qryOperationMovementDataTO_EMPLOYEE_CODE.AsVariant);
          AssignTeamData(ToTeam, qryOperationMovementDataTO_TEAM_CODE.AsVariant);
          AssignDeptData(ToDept, qryOperationMovementDataTO_DEPT_CODE.AsVariant);
          WasteDocNo:= qryOperationMovementDataWASTE_DOC_NO.AsVariant;
          AssignDateData(WasteDocDate, qryOperationMovementDataWASTE_DOC_DATE.AsVariant);
          WorkDetailTechQuantity:= qryOperationMovementDataWORK_DETAIL_TECH_QUANTITY.AsVariant;
          TotalDetailTechQuantity:= qryOperationMovementDataTOTAL_DETAIL_TECH_QUANTITY.AsVariant;
          QADetailTechQuantity:= qryOperationMovementDataQA_DETAIL_TECH_QUANTITY.AsVariant;
          WorkProductTechQuantity:= qryOperationMovementDataWORK_PRODUCT_TECH_QUANTITY.AsVariant;
          TotalProductTechQuantity:= qryOperationMovementDataTOTAL_PRODUCT_TECH_QUANTITY.AsVariant;
          QAProductTechQuantity:= qryOperationMovementDataQA_PRODUCT_TECH_QUANTITY.AsVariant;
          AssignEmployeeData(QAEmployee, qryOperationMovementDataQA_EMPLOYEE_CODE.AsVariant);
          AssignEmployeeData(CreateEmployee, qryOperationMovementDataCREATE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(CreateDateTime, qryOperationMovementDataCREATE_DATE.AsVariant, qryOperationMovementDataCREATE_TIME.AsVariant);
          AssignEmployeeData(StornoEmployee, qryOperationMovementDataSTORNO_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(StornoDateTime, qryOperationMovementDataSTORNO_DATE.AsVariant, qryOperationMovementDataSTORNO_TIME.AsVariant);
          AssignRealOperationData(
            FromOperation,
            qryOperationMovementDataFROM_MLMSO_OBJECT_BRANCH_CODE.AsVariant,
            qryOperationMovementDataFROM_MLMSO_OBJECT_CODE.AsVariant);
          AssignRealOperationData(
            ToOperation,
            qryOperationMovementDataTO_MLMSO_OBJECT_BRANCH_CODE.AsVariant,
            qryOperationMovementDataTO_MLMSO_OBJECT_CODE.AsVariant);
          TotalPrice:= qryOperationMovementDataTOTAL_PRICE.AsVariant;
        end;  { with }
  finally
    qryOperationMovementData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignProductOriginData(XMLProductOrigin: IXMLTProductOrigin;
  const AProductOriginCode: Variant);
begin
  if VarIsNull(AProductOriginCode) then
    Exit;

  qryProductOriginData.ParamByName('PRODUCT_ORIGIN_CODE').Value:= AProductOriginCode;
  qryProductOriginData.Open;
  try
    if not qryProductOriginData.Eof then
      with XMLProductOrigin do
        begin
          ProductOriginName:= qryProductOriginDataPRODUCT_ORIGIN_NAME.AsVariant;
          ProductOriginAbbrev:= qryProductOriginDataPRODUCT_ORIGIN_ABBREV.AsVariant;
        end;  { with }
  finally
    qryProductOriginData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignTransientStatusData(
  XMLTransientStatus: IXMLTTransientStatus; const ATransientStatusCode: Variant);
begin
  if VarIsNull(ATransientStatusCode) then
    Exit;

  qryTransientStatusData.ParamByName('TRANSIENT_STATUS_CODE').Value:= ATransientStatusCode;
  qryTransientStatusData.Open;
  try
    if not qryTransientStatusData.Eof then
      with XMLTransientStatus do
        begin
          TransientStatusName:= qryTransientStatusDataTRANSIENT_STATUS_NAME.AsVariant;
        end;  { with }
  finally
    qryTransientStatusData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignSelfExistentStatusData(
  XMLSelfExistentStatus: IXMLTSelfExistentStatus;
  const ASelfExistentStatusCode: Variant);
begin
  if VarIsNull(ASelfExistentStatusCode) then
    Exit;

  qrySelfExistentStatusData.ParamByName('SELF_EXISTENT_STATUS_CODE').Value:=
    ASelfExistentStatusCode;
  qrySelfExistentStatusData.Open;
  try
    if not qrySelfExistentStatusData.Eof then
      with XMLSelfExistentStatus do
        begin
          SelfExistentStatusName:= qrySelfExistentStatusDataSELF_EXISTENT_STATUS_NAME.AsVariant;
        end;  { with }
  finally
    qrySelfExistentStatusData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignDateData(XMLDate: IXMLTDate; const ADate: Variant);
begin
  if VarIsNull(ADate) then
    Exit;

  with XMLDate do
    begin
      InDefaultFormat:= LoginContext.DateToStr(VarToDateTime(ADate));
      InMonthFormat:= DateToStr(VarToDateTime(ADate));
      InWeekFormat:= JclDateTime.FormatDateTime(WeekFormat, VarToDateTime(ADate));
    end;  { with }
end;

procedure TdmDocXML.AssignTimeData(XMLTime: IXMLTTime; const ATime: Variant);
begin
  if VarIsNull(ATime) then
    Exit;

  with XMLTime do
    begin
      InDefaultFormat:= TimeToStr(VarToDateTime(ATime));
    end;  { with }
end;

procedure TdmDocXML.AssignDateIntervalData(XMLDateInterval: IXMLTDateInterval;
  const ABeginDate, AEndDate: Variant);
begin
  if VarIsNull(ABeginDate) or VarIsNull(AEndDate) then
    Exit;

  qryCountWorkdays.ParamByName('BEGIN_DATE').Value:= ABeginDate;
  qryCountWorkdays.ParamByName('END_DATE').Value:= AEndDate;
  qryCountWorkdays.Open;
  try
    with XMLDateInterval do
      begin
        AssignDateData(BeginDate, ABeginDate);
        AssignDateData(EndDate, AEndDate);
        Workdays:= qryCountWorkdaysWORKDAY_COUNT.AsVariant;
        Days:= VarToDateTime(AEndDate) - VarToDateTime(ABeginDate) + 1;
      end;  { with }
  finally
    qryCountWorkdays.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignTimeIntervalData(XMLTimeInterval: IXMLTTimeInterval; const ABeginTime, AEndTime: Variant);
begin
  if VarIsNull(ABeginTime) or VarIsNull(AEndTime) then
    Exit;

  with XMLTimeInterval do
    begin
      AssignTimeData(BeginTime, ABeginTime);
      AssignTimeData(EndTime, AEndTime);
    end;  { with }
end;

procedure TdmDocXML.AssignDateTimeData(XMLDateTime: IXMLTDateTime; const ADate, ATime: Variant);
begin
  if VarIsNull(ADate) or VarIsNull(ATime) then
    Exit;

  with XMLDateTime do
    begin
      AssignDateData(Date, ADate);
      AssignTimeData(Time, ATime);
    end;  { with }
end;

procedure TdmDocXML.AssignEmployeeDisciplineRatingData(XMLEmployeeDisciplineRating: IXMLTEmployeeDisciplineRating;
  const ANegativeDisciplinePoints, APositiveDisciplinePoints: Variant);
begin
  if VarIsNull(ANegativeDisciplinePoints) or VarIsNull(APositiveDisciplinePoints) then
    Exit;

  with XMLEmployeeDisciplineRating do
    begin
      NegativeDisciplinePoints:= ANegativeDisciplinePoints;
      PositiveDisciplinePoints:= APositiveDisciplinePoints;
    end;  { with }
end;

procedure TdmDocXML.AssignFloatRangeData(XMLFloatRange: IXMLTFloatRange; const AMinValue, AMaxValue: Variant);
begin
  if VarIsNull(AMinValue) or VarIsNull(AMaxValue) then
    Exit;

  with XMLFloatRange do
    begin
      MinValue:= AMinValue;
      MaxValue:= AMaxValue;
    end;  { with }
end;

procedure TdmDocXML.AssignSalaryData(XMLSalary: IXMLTSalary; const ACurrencyCode, ASalary, ADateUnitCode: Variant);
begin
  if VarIsNull(ACurrencyCode) or VarIsNull(ASalary) or VarIsNull(ADateUnitCode) then
    Exit;

  with XMLSalary do
    begin
      AssignCurrencyData(Currency, ACurrencyCode);

      if LoginContext.HasUserActivity(uaShowSalary) then
        begin
          Salary:= ASalary;
          AsText:= SvrCommon.MoneyToLocalText(ASalary, ACurrencyCode);
        end
      else
        begin
          Salary:= SNotAvailable;
          AsText:= SNotAvailable;
        end;

      AssignDateUnitData(DateUnit, ADateUnitCode);
    end;  { with }
end;

procedure TdmDocXML.AssignSaleData(XMLSale: IXMLTSale; const ASaleObjectBranchCode,
  ASaleObjectCode: Variant);
begin
  if VarIsNull(ASaleObjectBranchCode) or VarIsNull(ASaleObjectCode) then
    Exit;

  qrySaleData.ParamByName('SALE_OBJECT_BRANCH_CODE').Value:= ASaleObjectBranchCode;
  qrySaleData.ParamByName('SALE_OBJECT_CODE').Value:= ASaleObjectCode;
  qrySaleData.TempOpen/
    procedure begin
      if not qrySaleData.Eof then
        with XMLSale do
          begin
            SaleIdentifier:= qrySaleDataSALE_IDENTIFIER.AsVariant;
            AssignSaleOrderTypeData(SaleOrderType, qrySaleDataSALE_ORDER_TYPE_CODE.AsVariant);
            RequestLineNo:= qrySaleDataREQUEST_LINE_NO.AsVariant;
            AssignAspectTypeData(AspectType, qrySaleDataASPECT_TYPE_CODE.AsVariant);
            AssignPartnerData(ClientCompany, qrySaleDataCLIENT_COMPANY_CODE.AsVariant);
            ClientRequestNo:= qrySaleDataCLIENT_REQUEST_NO.AsVariant;
            AssignProductData(Product, qrySaleDataPRODUCT_CODE.AsVariant);
            CompanyProductName:= qrySaleDataCOMPANY_PRODUCT_NAME.AsVariant;
            AssignDateData(RequestSendDate, qrySaleDataREQUEST_SEND_DATE.AsVariant);
            AssignDateData(RequestRegisterDate, qrySaleDataREQUEST_REGISTER_DATE.AsVariant);
            AssignDateData(OfferSendPlanDate, qrySaleDataOFFER_SEND_PLAN_DATE.AsVariant);
            AssignDateData(OfferSendDate, qrySaleDataOFFER_SEND_DATE.AsVariant);
            AssignDateData(OfferAnswerPlanDate, qrySaleDataOFFER_ANSWER_PLAN_DATE.AsVariant);
            AssignDateData(OfferAnswerDate, qrySaleDataOFFER_ANSWER_DATE.AsVariant);
            AssignDateData(DecisionPlanDate, qrySaleDataDECISION_PLAN_DATE.AsVariant);
            AssignDateData(DecisionDate, qrySaleDataDECISION_DATE.AsVariant);
            Quantity:= qrySaleDataQUANTITY.AsVariant;
            AccountQuantity:= qrySaleDataACCOUNT_QUANTITY.AsVariant;
            DiscountPercent:= qrySaleDataDISCOUNT_PERCENT.AsVariant;
            MarketSinglePrice:= SalePriceFieldValue(qrySaleDataMARKET_SINGLE_PRICE);
            SinglePrice:= SalePriceFieldValue(qrySaleDataSINGLE_PRICE);
            AssignCurrencyData(Currency, qrySaleDataCURRENCY_CODE.AsVariant);
            AssignEmployeeData(ManagerEmployee, qrySaleDataMANAGER_EMPLOYEE_CODE.AsVariant);
            AssignDecisionTypeData(DecisionType, qrySaleDataDECISION_TYPE_CODE.AsVariant);
            AssignEmployeeData(DecisionEmployee, qrySaleDataDECISION_EMPLOYEE_CODE.AsVariant);
            Notes:= qrySaleDataNOTES.AsVariant;
            AssignDateData(PrognosisBeginDate, qrySaleDataPROGNOSIS_BEGIN_DATE.AsVariant);
            AssignDateData(PrognosisEndDate, qrySaleDataPROGNOSIS_END_DATE.AsVariant);
            OurOfferQuantity:= qrySaleDataOUR_OFFER_QUANTITY.AsVariant;
            OurOfferAccountQuantity:= qrySaleDataOUR_OFFER_ACCOUNT_QUANTITY.AsVariant;
            OurOfferSinglePrice:= SalePriceFieldValue(qrySaleDataOUR_OFFER_SINGLE_PRICE);
            AssignCurrencyData(OurOfferCurrency, qrySaleDataOUR_OFFER_CURRENCY_CODE.AsVariant);
            ClientOfferQuantity:= qrySaleDataCL_OFFER_QUANTITY.AsVariant;
            ClientOfferAccountQuantity:= qrySaleDataCL_OFFER_QUANTITY.AsVariant;
            ClientOfferSinglePrice:= SalePriceFieldValue(qrySaleDataCL_OFFER_SINGLE_PRICE);
            AssignCurrencyData(ClientOfferCurrency, qrySaleDataCL_OFFER_CURRENCY_CODE.AsVariant);
            AssignDateData(ReceiveDate, qrySaleDataRECEIVE_DATE.AsVariant);
            AssignDateData(ClientOfferReceiveDate, qrySaleDataCL_OFFER_RECEIVE_DATE.AsVariant);
            AssignDateData(ShipmentDate, qrySaleDataSHIPMENT_DATE.AsVariant);
            AssignBorderDealTypeData(SaleDealType, qrySaleDataSALE_DEAL_TYPE_CODE.AsVariant);
            AssignDeptData(SaleBranch, qrySaleDataSALE_BRANCH_CODE.AsVariant);
            SaleNo:= qrySaleDataSALE_NO.AsVariant;
            AssignSaleTypeData(SaleType, qrySaleDataSALE_TYPE_CODE.AsVariant);
            AssignPriorityData(SalePriority, qrySaleDataSALE_PRIORITY_CODE.AsVariant);
            AssignDeptData(ShipmentStore, qrySaleDataSHIPMENT_STORE_CODE.AsVariant);
            ShipmentDays:= qrySaleDataSHIPMENT_DAYS.AsVariant;
            ReceivePlaceOfficeName:= qrySaleDataRECEIVE_PLACE_OFFICE_NAME.AsVariant;
            AssignCountryData(ReceivePlaceCountry, qrySaleDataRECEIVE_PLACE_COUNTRY_CODE.AsVariant);
            AssignPartnerData(CustomhouseCompany, qrySaleDataCUSTOMHOUSE_CODE.AsVariant);
            AssignShipmentTypeData(ShipmentType, qrySaleDataSHIPMENT_TYPE_CODE.AsVariant);
            IsVendorTransport:= qrySaleDataIS_VENDOR_TRANSPORT.AsBoolean;
            AssignEmployeeData(CreateEmployee, qrySaleDataCREATE_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(CreateDateTime, qrySaleDataCREATE_DATE.AsVariant, qrySaleDataCREATE_TIME.AsVariant);
            AssignEmployeeData(ChangeEmployee, qrySaleDataCHANGE_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(ChangeDateTime, qrySaleDataCHANGE_DATE.AsVariant, qrySaleDataCHANGE_TIME.AsVariant);
            AssignEmployeeData(FinishEmployee, qrySaleDataFINISH_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(FinishDateTime, qrySaleDataFINISH_DATE.AsVariant, qrySaleDataFINISH_TIME.AsVariant);
            AssignEmployeeData(AnnulEmployee, qrySaleDataANNUL_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(AnnulDateTime, qrySaleDataANNUL_DATE.AsVariant, qrySaleDataANNUL_TIME.AsVariant);

            // Sale shipments
            qrySaleShipmentsData.Params.AssignValues(qrySaleData.Params);
            qrySaleShipmentsData.TempOpen/
              qrySaleShipmentsData.ForEach/
                procedure begin
                  AssignSaleShipmentData(
                    SaleShipments.Add,
                    qrySaleShipmentsDataSHIPMENT_OBJECT_BRANCH_CODE.AsVariant,
                    qrySaleShipmentsDataSHIPMENT_OBJECT_CODE.AsVariant);
                end;
          end;  { with }
    end;  { try }
end;

procedure TdmDocXML.AssignSaleDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLSaleDocItem: IXMLTSaleDocItem;
begin
  XMLSaleDocItem:= xSaleDocItem.GetSaleDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLSaleDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qrySaleCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qrySaleCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qrySaleCode.Open;
  try
    AssignSaleData(
      XMLSaleDocItem.Sale,
      qrySaleCodeSALE_OBJECT_BRANCH_CODE.AsInteger,
      qrySaleCodeSALE_OBJECT_CODE.AsInteger);
  finally
    qrySaleCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignSaleRequestGroupData(XMLSaleRequestGroup: IXMLTSaleRequestGroup; const ARequestBranchCode, ARequestNo: Variant);
const
  SSRGActivatedByUsMessage = '~msg_SRGActivatedByUs~';
  SSRGActivatedByClientMessage = '~msg_SRGActivatedByClient~';

  SRGActivatedByMessages: array[Boolean] of string =
    (SSRGActivatedByUsMessage, SSRGActivatedByClientMessage);
begin
  if VarIsNull(ARequestBranchCode) or VarIsNull(ARequestNo) then
    Exit;

  qrySaleRequestGroupData.ParamByName('REQUEST_BRANCH_CODE').Value:= ARequestBranchCode;
  qrySaleRequestGroupData.ParamByName('REQUEST_NO').Value:= ARequestNo;
  qrySaleRequestGroupData.TempOpen/
    procedure begin
      if not qrySaleRequestGroupData.Eof then
        with XMLSaleRequestGroup do
          begin
            SaleRequestGroupID:= qrySaleRequestGroupDataSRG_ID.AsVariant;
            AssignSaleOrderTypeData(SaleOrderType, qrySaleRequestGroupDataSALE_ORDER_TYPE_CODE.AsVariant);
            AssignBorderDealTypeData(SaleDealType, qrySaleRequestGroupDataSALE_DEAL_TYPE_CODE.AsVariant);
            AssignDeptData(RequestBranch, qrySaleRequestGroupDataREQUEST_BRANCH_CODE.AsVariant);
            RequestNo:= qrySaleRequestGroupDataREQUEST_NO.AsVariant;
            AssignStreamTypeData(StreamType, qrySaleRequestGroupDataSTREAM_TYPE_CODE.AsVariant);
            IsActivatedByClient:= qrySaleRequestGroupDataIS_ACTIVATED_BY_CLIENT.AsBoolean;
            ActivatedBy:= SRGActivatedByMessages[qrySaleRequestGroupDataIS_ACTIVATED_BY_CLIENT.AsBoolean];
            ClientRequestGroupNo:= qrySaleRequestGroupDataCLIENT_REQUEST_GROUP_NO.AsVariant;
            AssignDateData(RequestSendDate, qrySaleRequestGroupDataREQUEST_SEND_DATE.AsVariant);
            AssignDateData(RequestRegisterDate, qrySaleRequestGroupDataREQUEST_REGISTER_DATE.AsVariant);
            AssignPartnerData(ClientCompany, qrySaleRequestGroupDataCLIENT_COMPANY_CODE.AsVariant);
            AssignPartnerData(MediatorCompany, qrySaleRequestGroupDataMEDIATOR_COMPANY_CODE.AsVariant);
            AssignEmployeeData(SaleRequestGroupEmployee, qrySaleRequestGroupDataSRG_EMPLOYEE_CODE.AsVariant);

            AssignEmployeeData(CreateEmployee, qrySaleRequestGroupDataCREATE_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(CreateDateTime, qrySaleRequestGroupDataCREATE_DATE.AsVariant, qrySaleRequestGroupDataCREATE_TIME.AsVariant);
            AssignEmployeeData(ChangeEmployee, qrySaleRequestGroupDataCHANGE_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(ChangeDateTime, qrySaleRequestGroupDataCHANGE_DATE.AsVariant, qrySaleRequestGroupDataCHANGE_TIME.AsVariant);
            AssignEmployeeData(FinishEmployee, qrySaleRequestGroupDataFINISH_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(FinishDateTime, qrySaleRequestGroupDataFINISH_DATE.AsVariant, qrySaleRequestGroupDataFINISH_TIME.AsVariant);
            AssignEmployeeData(AnnulEmployee, qrySaleRequestGroupDataANNUL_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(AnnulDateTime, qrySaleRequestGroupDataANNUL_DATE.AsVariant, qrySaleRequestGroupDataANNUL_TIME.AsVariant);

            // Sales
            qrySRGSalesData.Params.AssignValues(qrySaleRequestGroupData.Params);
            qrySRGSalesData.TempOpen/
              qrySRGSalesData.ForEach/
                procedure begin
                  AssignSaleData(
                    Sales.Add,
                    qrySRGSalesDataSALE_OBJECT_BRANCH_CODE.AsVariant,
                    qrySRGSalesDataSALE_OBJECT_CODE.AsVariant);
                end;
          end;  { with }
    end;  { try }
end;

procedure TdmDocXML.AssignSaleRequestGroupDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLSaleRequestGroupDocItem: IXMLTSaleRequestGroupDocItem;
begin
  XMLSaleRequestGroupDocItem:= xSaleRequestGroupDocItem.GetSaleRequestGroupDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLSaleRequestGroupDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qrySaleRequestGroupCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qrySaleRequestGroupCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qrySaleRequestGroupCode.Open;
  try
    AssignSaleRequestGroupData(
      XMLSaleRequestGroupDocItem.SaleRequestGroup,
      qrySaleRequestGroupCodeREQUEST_BRANCH_CODE.AsInteger,
      qrySaleRequestGroupCodeREQUEST_NO.AsInteger);
  finally
    qrySaleRequestGroupCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignSaleOrderTypeData(
  XMLSaleOrderType: IXMLTSaleOrderType; const ASaleOrderTypeCode: Variant);
begin
  if VarIsNull(ASaleOrderTypeCode) then
    Exit;

  qrySaleOrderTypeData.ParamByName('SALE_ORDER_TYPE_CODE').Value:= ASaleOrderTypeCode;
  qrySaleOrderTypeData.Open;
  try
    if not qrySaleOrderTypeData.Eof then
      with XMLSaleOrderType do
        begin
          SaleOrderTypeAbbrev:= qrySaleOrderTypeDataSALE_ORDER_TYPE_ABBREV.AsVariant;
          SaleOrderTypeName:= qrySaleOrderTypeDataSALE_ORDER_TYPE_NAME.AsVariant;
        end;  { with }
  finally
    qrySaleOrderTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignSaleShipmentData(XMLSaleShipment: IXMLTSaleShipment;
  const ASaleShipmentObjectBranchCode, ASaleShipmentObjectCode: Variant);
begin
  if VarIsNull(ASaleShipmentObjectBranchCode) or VarIsNull(ASaleShipmentObjectCode) then
    Exit;

  qrySaleShipmentData.ParamByName('SHIPMENT_OBJECT_BRANCH_CODE').Value:=
    ASaleShipmentObjectBranchCode;
  qrySaleShipmentData.ParamByName('SHIPMENT_OBJECT_CODE').Value:=
    ASaleShipmentObjectCode;
  qrySaleShipmentData.Open;
  try
    if not qrySaleShipmentData.Eof then
      with XMLSaleShipment do
        begin
          SaleShipmentNo:= qrySaleShipmentDataSALE_SHIPMENT_NO.AsVariant;
          SaleShipmentIdentifier:= qrySaleShipmentDataSALE_SHIPMENT_IDENTIFIER.AsVariant;
          AssignDateData(ShipmentPlanDate, qrySaleShipmentDataSHIPMENT_PLAN_DATE.AsVariant);
          PlanQuantity:= qrySaleShipmentDataPLAN_QUANTITY.AsVariant;
          PlanAccountQuantity:= qrySaleShipmentDataPLAN_ACCOUNT_QUANTITY.AsVariant;
          AssignDateData(ShipmentDate, qrySaleShipmentDataSHIPMENT_DATE.AsVariant);
          Quantity:= qrySaleShipmentDataQUANTITY.AsVariant;
          AccountQuantity:= qrySaleShipmentDataACCOUNT_QUANTITY.AsVariant;
          AssignDateData(ReceiveDate, qrySaleShipmentDataRECEIVE_DATE.AsVariant);
          InvoiceNo:= qrySaleShipmentDataINVOICE_NO.AsVariant;
          IsProformInvoice:= qrySaleShipmentDataIS_PROFORM_INVOICE.AsVariant;
          AssignDateData(InvoiceDate, qrySaleShipmentDataINVOICE_DATE.AsVariant);
          AssignCurrencyData(InvoiceCurrency, qrySaleShipmentDataINVOICE_CURRENCY_CODE.AsVariant);
          InvoiceSinglePrice:= SalePriceFieldValue(qrySaleShipmentDataINVOICE_SINGLE_PRICE);
          InvoiceTotalPrice:= SalePriceFieldValue(qrySaleShipmentDataINVOICE_TOTAL_PRICE);
        end;  { with }
  finally
    qrySaleShipmentData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignSaleShipmentDocItemXML(XMLDocument: IXMLDocument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLSaleShipmentDocItem: IXMLTSaleShipmentDocItem;
begin
  XMLSaleShipmentDocItem:= xSaleShipmentDocItem.GetSaleShipmentDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLSaleShipmentDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qrySaleShipmentCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qrySaleShipmentCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qrySaleShipmentCode.Open;
  try
    AssignSaleShipmentData(
      XMLSaleShipmentDocItem.SaleShipment,
      qrySaleShipmentCodeSHIPMENT_OBJECT_BRANCH_CODE.AsInteger,
      qrySaleShipmentCodeSHIPMENT_OBJECT_CODE.AsInteger);
  finally
    qrySaleShipmentCode.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignSaleTypeData(XMLSaleType: IXMLTSaleType;
  const ASaleTypeCode: Variant);
begin
  if VarIsNull(ASaleTypeCode) then
    Exit;

  qrySaleTypeData.ParamByName('SALE_TYPE_CODE').Value:= ASaleTypeCode;
  qrySaleTypeData.Open;
  try
    if not qrySaleTypeData.Eof then
      with XMLSaleType do
        begin
          SaleTypeAbbrev:= qrySaleTypeDataSALE_TYPE_ABBREV.AsVariant;
          SaleTypeName:= qrySaleTypeDataSALE_TYPE_NAME.AsVariant;
        end;  { with }
  finally
    qrySaleTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignGlobalsData(XMLGlobals: IXMLTGlobals);
begin
  with XMLGlobals do
    begin
      AssignCurrencyData(BaseCurrency, LoginContext.BaseCurrencyCode);
      AssignCurrencyData(SecondaryCurrency, LoginContext.SecondaryCurrencyCode);
    end;  { with }
end;

procedure TdmDocXML.AssignInvoiceData(XMLInvoice: IXMLTInvoice;
  const AInvoiceBranchCode, AInvoiceCode: Variant);
begin
  if VarIsNull(AInvoiceBranchCode) or VarIsNull(AInvoiceCode) then
    Exit;

  qryInvoiceData.ParamByName('INVOICE_BRANCH_CODE').Value:= AInvoiceBranchCode;
  qryInvoiceData.ParamByName('INVOICE_CODE').Value:= AInvoiceCode;
  qryInvoiceData.TempOpen/
    procedure begin
      if not qryInvoiceData.Eof then
        with XMLInvoice do
          begin
            IsProformInvoice:= qryInvoiceDataIS_PROFORM_INVOICE.AsBoolean;
            InvoiceNo:= qryInvoiceDataINVOICE_NO.AsVariant;
            InvoiceTypeName:= qryInvoiceDataINVOICE_TYPE_NAME.AsVariant;
            InvoiceTypeIntlName:= qryInvoiceDataINVOICE_TYPE_I_NAME.AsVariant;
            AssignDateData(InvoiceDate, qryInvoiceDataINVOICE_DATE.AsVariant);
            AssignDateData(EventDate, qryInvoiceDataEVENT_DATE.AsVariant);
            InvoicePlace:= qryInvoiceDataINVOICE_PLACE.AsVariant;
            InvoiceIntlPlace:= qryInvoiceDataINVOICE_I_PLACE.AsVariant;
            AssignPartnerData(SellerPartner, qryInvoiceDataSELLER_COMPANY_CODE.AsVariant);
            SellerName:= qryInvoiceDataSELLER_NAME.AsVariant;
            SellerCity:= qryInvoiceDataSELLER_CITY.AsVariant;
            SellerAddress:= qryInvoiceDataSELLER_ADDRESS.AsVariant;
            SellerBulstat:= qryInvoiceDataSELLER_BULSTAT.AsVariant;
            SellerVatNo:= qryInvoiceDataSELLER_VAT_NO.AsVariant;
            SellerIsPerson:= qryInvoiceDataSELLER_IS_PERSON.AsBoolean;
            SellerEGN:= qryInvoiceDataSELLER_EGN.AsVariant;
            SellerPersonName:= qryInvoiceDataSELLER_PERSON_NAME.AsVariant;
            SellerIntlName:= qryInvoiceDataSELLER_I_NAME.AsVariant;
            SellerIntlCity:= qryInvoiceDataSELLER_I_CITY.AsVariant;
            SellerIntlAddress:= qryInvoiceDataSELLER_I_ADDRESS.AsVariant;
            SellerPersonIntlName:= qryInvoiceDataSELLER_PERSON_I_NAME.AsVariant;

            AssignPartnerData(SenderPartner, qryInvoiceDataSENDER_COMPANY_CODE.AsVariant);
            SenderName:= qryInvoiceDataSENDER_NAME.AsVariant;
            SenderAddress:= qryInvoiceDataSENDER_ADDRESS.AsVariant;
            SenderIntlName:= qryInvoiceDataSENDER_I_NAME.AsVariant;
            SenderIntlAddress:= qryInvoiceDataSENDER_I_ADDRESS.AsVariant;

            AssignPartnerData(BuyerPartner, qryInvoiceDataBuyer_COMPANY_CODE.AsVariant);
            BuyerName:= qryInvoiceDataBUYER_NAME.AsVariant;
            BuyerCity:= qryInvoiceDataBUYER_CITY.AsVariant;
            BuyerAddress:= qryInvoiceDataBUYER_ADDRESS.AsVariant;
            BuyerBulstat:= qryInvoiceDataBUYER_BULSTAT.AsVariant;
            BuyerVatNo:= qryInvoiceDataBUYER_VAT_NO.AsVariant;
            BuyerIsPerson:= qryInvoiceDataBUYER_IS_PERSON.AsBoolean;
            BuyerEGN:= qryInvoiceDataBUYER_EGN.AsVariant;
            BuyerPersonName:= qryInvoiceDataBUYER_PERSON_NAME.AsVariant;
            BuyerIntlName:= qryInvoiceDataBUYER_I_NAME.AsVariant;
            BuyerIntlCity:= qryInvoiceDataBUYER_I_CITY.AsVariant;
            BuyerIntlAddress:= qryInvoiceDataBUYER_I_ADDRESS.AsVariant;
            BuyerPersonIntlName:= qryInvoiceDataBUYER_PERSON_I_NAME.AsVariant;

            AssignPartnerData(ReceiverPartner, qryInvoiceDataRECEIVER_COMPANY_CODE.AsVariant);
            ReceiverName:= qryInvoiceDataRECEIVER_NAME.AsVariant;
            ReceiverAddress:= qryInvoiceDataRECEIVER_ADDRESS.AsVariant;
            ReceiverIntlName:= qryInvoiceDataRECEIVER_I_NAME.AsVariant;
            ReceiverIntlAddress:= qryInvoiceDataRECEIVER_I_ADDRESS.AsVariant;

            AssignCurrencyData(Currency, qryInvoiceDataCURRENCY_CODE.AsVariant);
            VatPercent:= qryInvoiceDataVAT_PERCENT.AsVariant;
            TotalPrice:= qryInvoiceDataTOTAL_PRICE.AsVariant;
            BaseCurrencyTotalPrice:= qryInvoiceDataBC_TOTAL_PRICE.AsVariant;
            TotalPriceVat:= qryInvoiceDataTOTAL_PRICE_VAT.AsVariant;
            BaseCurrencyTotalPriceVat:= qryInvoiceDataBC_TOTAL_PRICE_VAT.AsVariant;
            PaymentPrice:= qryInvoiceDataPAYMENT_PRICE.AsVariant;

            PaymentPriceAsLocalText:=
              SvrCommon.MoneyToLocalText(qryInvoiceDataPAYMENT_PRICE.AsFloat, qryInvoiceDataCURRENCY_CODE.AsInteger);
            PaymentPriceAsIntlText:=
              SvrCommon.MoneyToText(qryInvoiceDataPAYMENT_PRICE.AsFloat, qryInvoiceDataCURRENCY_CODE.AsInteger, SystemLocaleToInt(slUSEnglish));

            IsCashPayment:= qryInvoiceDataIS_CASH_PAYMENT.AsVariant;
            IBAN:= qryInvoiceDataIBAN.AsVariant;
            AssignVatReasonData(VatReason, qryInvoiceDataVAT_REASON_CODE.AsVariant);
            Notes:= qryInvoiceDataNOTES.AsVariant;

            AssignEmployeeData(ApproveEmployee, qryInvoiceDataAPPROVE_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(ApproveDateTime, qryInvoiceDataAPPROVE_DATE.AsVariant, qryInvoiceDataAPPROVE_TIME.AsVariant);
            AssignEmployeeData(CreateEmployee, qryInvoiceDataCREATE_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(CreateDateTime, qryInvoiceDataCREATE_DATE.AsVariant, qryInvoiceDataCREATE_TIME.AsVariant);
            AssignEmployeeData(ChangeEmployee, qryInvoiceDataCHANGE_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(ChangeDateTime, qryInvoiceDataCHANGE_DATE.AsVariant, qryInvoiceDataCHANGE_TIME.AsVariant);
            AssignEmployeeData(StornoEmployee, qryInvoiceDataSTORNO_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(StornoDateTime, qryInvoiceDataSTORNO_DATE.AsVariant, qryInvoiceDataSTORNO_TIME.AsVariant);

            // invoice items
            qryInvoiceItemsData.Params.AssignValues(qryInvoiceData.Params);
            qryInvoiceItemsData.TempOpen/
              qryInvoiceItemsData.ForEach/
                procedure begin
                  with InvoiceItems.Add do
                    begin
                      ItemName:= qryInvoiceItemsDataITEM_NAME.AsVariant;
                      ItemIntlName:= qryInvoiceItemsDataITEM_I_NAME.AsVariant;
                      AccountQuantity:= qryInvoiceItemsDataACCOUNT_QUANTITY.AsVariant;
                      AccountMeasureAbbrev:= qryInvoiceItemsDataACCOUNT_MEASURE_ABBREV.AsVariant;
                      AccountMeasureIntlAbbrev:= qryInvoiceItemsDataACCOUNT_MEASURE_I_ABBREV.AsVariant;
                      MarketSinglePrice:= qryInvoiceItemsDataMARKET_SINGLE_PRICE.AsVariant;
                      DiscountPercent:= qryInvoiceItemsDataDISCOUNT_PERCENT.AsVariant;
                      SinglePrice:= qryInvoiceItemsDataSINGLE_PRICE.AsVariant;
                      TotalPrice:= qryInvoiceItemsDataTOTAL_PRICE.AsVariant;

                      AssignProcessObjectData(
                        BoundProcessObject,
                        qryInvoiceItemsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsVariant,
                        qryInvoiceItemsDataBND_PROCESS_OBJECT_CODE.AsVariant);
                    end;
                end;
          end;  { with }
    end;  { try }
end;

procedure TdmDocXML.AssignInvoiceDocItemXML(XMLDocument: IXMLDOcument;
  ADocBranchCode, ADocCode, ADocItemCode: Integer);
var
  XMLInvoiceDocItem: IXMLTInvoiceDocItem;
begin
  XMLInvoiceDocItem:= xInvoiceDocItem.GetInvoiceDocItem(XMLDocument);

  AssignBaseObjectDocItemData(XMLInvoiceDocItem, ADocBranchCode, ADocCode, ADocItemCode);

  qryInvoiceCode.ParamByName('DOC_BRANCH_CODE').AsInteger:= ADocBranchCode;
  qryInvoiceCode.ParamByName('DOC_CODE').AsInteger:= ADocCode;
  qryInvoiceCode.TempOpen/
    procedure begin
      AssignInvoiceData(
        XMLInvoiceDocItem.Invoice,
        qryInvoiceCodeINVOICE_BRANCH_CODE.AsInteger,
        qryInvoiceCodeINVOICE_CODE.AsInteger);
    end;  { try }
end;

procedure TdmDocXML.AssignProcessObjectData(XMLProcessObject: IXMLTProcessObject;
  const AProcessObjectBranchCode, AProcessObjectCode: Variant);
begin
  if VarIsNull(AProcessObjectBranchCode) or VarIsNull(AProcessObjectCode) then
    Exit;

  qryProcessObjectData.ParamByName('PROCESS_OBJECT_BRANCH_CODE').Value:=
    AProcessObjectBranchCode;
  qryProcessObjectData.ParamByName('PROCESS_OBJECT_CODE').Value:=
    AProcessObjectCode;
  qryProcessObjectData.Open;
  try
    if not qryProcessObjectData.Eof then
      with XMLProcessObject do
        begin
          ProcessObjectIdentifier:= qryProcessObjectDataPROCESS_OBJECT_IDENTIFIER.AsVariant;
        end;  { with }
  finally
    qryProcessObjectData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignEmpAvailModifierTypeData(XMLEmpAvailModifierType: IXMLTEmpAvailModifierType;
  const AEmpAvailModifierTypeCode: Variant);
begin
  if VarIsNull(AEmpAvailModifierTypeCode) then
    Exit;

  qryEmpAvailModifierTypeData.ParamByName('EMP_AVAIL_MODIFIER_TYPE_CODE').Value:= AEmpAvailModifierTypeCode;
  qryEmpAvailModifierTypeData.Open;
  try
    if not qryEmpAvailModifierTypeData.Eof then
      with XMLEmpAvailModifierType do
        begin
          EmpAvailModifierTypeName:= qryEmpAvailModifierTypeDataEMP_AVAIL_MODIFIER_TYPE_NAME.AsVariant;
          EmpAvailModifierTypeAbbrev:= qryEmpAvailModifierTypeDataEMP_AVAIL_MODIFIER_TYPE_ABBREV.AsVariant;
        end;  { with }
  finally
    qryEmpAvailModifierTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignEmpDayAbsenceReasonData(XMLEmpDayAbsenceReason: IXMLTEmpDayAbsenceReason;
  const AEmpDayAbsenceReasonCode: Variant);
begin
  if VarIsNull(AEmpDayAbsenceReasonCode) then
    Exit;

  qryEmpDayAbsenceReasonData.ParamByName('EMP_DAY_ABSENCE_REASON_CODE').Value:= AEmpDayAbsenceReasonCode;
  qryEmpDayAbsenceReasonData.Open;
  try
    if not qryEmpDayAbsenceReasonData.Eof then
      with XMLEmpDayAbsenceReason do
        begin
          EmpDayAbsenceReasonName:= qryEmpDayAbsenceReasonDataEMP_DAY_ABSENCE_REASON_NAME.AsVariant;
          EmpDayAbsenceReasonAbbrev:= qryEmpDayAbsenceReasonDataEMP_DAY_ABSENCE_REASON_ABBREV.AsVariant;
        end;  { with }
  finally
    qryEmpDayAbsenceReasonData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignEmpDayAbsenceDocTypeData(XMLEmpDayAbsenceDocType: IXMLTEmpDayAbsenceDocType;
  const AEmpDayAbsenceReasonCode, AEmpDayAbsenceDocTypeCode: Variant);
begin
  if VarIsNull(AEmpDayAbsenceReasonCode) or VarIsNull(AEmpDayAbsenceDocTypeCode) then
    Exit;

  qryEmpDayAbsenceDocTypeData.ParamByName('EMP_DAY_ABSENCE_REASON_CODE').Value:= AEmpDayAbsenceReasonCode;
  qryEmpDayAbsenceDocTypeData.ParamByName('EMP_DAY_ABSENCE_DOC_TYPE_CODE').Value:= AEmpDayAbsenceDocTypeCode;
  qryEmpDayAbsenceDocTypeData.Open;
  try
    if not qryEmpDayAbsenceDocTypeData.Eof then
      with XMLEmpDayAbsenceDocType do
        begin
          EmpDayAbsenceDocName:= qryEmpDayAbsenceDocTypeDataEMP_DAY_ABSENCE_DOC_TYPE_NAME.AsVariant;
        end;  { with }
  finally
    qryEmpDayAbsenceDocTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignEmpHourAvailModifierReason(XMLEmpHourAvailModifierReason: IXMLTEmpHourAvailModifierReason;
  const AEmpHourAvailModifierReasonCode: Variant);
begin
  if VarIsNull(AEmpHourAvailModifierReasonCode) then
    Exit;

  qryEmpHourAvailModifierReasonData.ParamByName('EMP_HOUR_AVAIL_MOD_REASON_CODE').Value:= AEmpHourAvailModifierReasonCode;
  qryEmpHourAvailModifierReasonData.Open;
  try
    if not qryEmpHourAvailModifierReasonData.Eof then
      with XMLEmpHourAvailModifierReason do
        begin
          EmpHourAvailModifierReasonName:= qryEmpHourAvailModifierReasonDataEMP_HOUR_AVAIL_MOD_REASON_NAME.AsVariant;
        end;  { with }
  finally
    qryEmpHourAvailModifierReasonData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignEmpAvailModifierData(XMLEmpAvailModifier: IXMLTEmpAvailModifier;
  const AEmpAvailModifierCode: Variant);
begin
  if VarIsNull(AEmpAvailModifierCode) then
    Exit;

  qryEmpAvailModifierData.ParamByName('EMP_AVAIL_MODIFIER_CODE').Value:= AEmpAvailModifierCode;
  qryEmpAvailModifierData.Open;
  try
    if not qryEmpAvailModifierData.Eof then
      with XMLEmpAvailModifier do
        begin
          AssignEmployeeData(Employee, qryEmpAvailModifierDataEMPLOYEE_CODE.AsVariant);
          AssignEmployeeData(AuthorizeEmployee, qryEmpAvailModifierDataAUTHORIZE_EMPLOYEE_CODE.AsVariant);
          AssignEmpAvailModifierTypeData(EmpAvailModifierType, qryEmpAvailModifierDataEMP_AVAIL_MODIFIER_TYPE_CODE.AsVariant);
          AssignDateIntervalData(DateInterval, qryEmpAvailModifierDataBEGIN_DATE.AsVariant, qryEmpAvailModifierDataEND_DATE.AsVariant);
          AssignEmpDayAbsenceReasonData(EmpDayAbsenceReason, qryEmpAvailModifierDataEMP_DAY_ABSENCE_REASON_CODE.AsVariant);
          AssignEmpDayAbsenceDocTypeData(
            EmpDayAbsenceDocType,
            qryEmpAvailModifierDataEMP_DAY_ABSENCE_REASON_CODE.AsVariant,
            qryEmpAvailModifierDataEMP_DAY_ABSENCE_DOC_TYPE_CODE.AsVariant);
          EmpDayAbsenceDocNo:= qryEmpAvailModifierDataEMP_DAY_ABSENCE_DOC_NO.AsVariant;
          AssignDateData(EmpDayAbsenceDocDate, qryEmpAvailModifierDataEMP_DAY_ABSENCE_DOC_DATE.AsVariant);
          EmpDayAbsenceDocIssuer:= qryEmpAvailModifierDataEMP_DAY_ABSENCE_DOC_ISSUER.AsVariant;
          AssignEmpHourAvailModifierReason(EmpHourAvailModifierReason, qryEmpAvailModifierDataEMP_HOUR_AVAIL_MOD_REASON_CODE.AsVariant);
          AssignTimeIntervalData(TimeInterval, qryEmpAvailModifierDataBEGIN_TIME.AsVariant, qryEmpAvailModifierDataEND_TIME.AsVariant);
          DurationHours:= qryEmpAvailModifierDataDURATION_HOURS.AsVariant;
          IsPersonalWorkdaysOnly:= qryEmpAvailModifierDataIS_PERSONAL_WORKDAYS_ONLY.AsVariant;
          Notes:= qryEmpAvailModifierDataNOTES.AsVariant;
          AssignEmployeeData(CreateEmployee, qryEmpAvailModifierDataCREATE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(CreateDateTime, qryEmpAvailModifierDataCREATE_DATE.AsVariant, qryEmpAvailModifierDataCREATE_TIME.AsVariant);
          AssignEmployeeData(StornoEmployee, qryEmpAvailModifierDataSTORNO_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(StornoDateTime, qryEmpAvailModifierDataSTORNO_DATE.AsVariant, qryEmpAvailModifierDataSTORNO_TIME.AsVariant);
        end;  { with }
  finally
    qryEmpAvailModifierData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignBOIOrderTypeData(XMLBOIOrderType: IXMLTBOIOrderType; const ABOIOrderTypeCode: Variant);
begin
  if VarIsNull(ABOIOrderTypeCode) then
    Exit;

  qryBOIOrderTypeData.ParamByName('BOI_ORDER_TYPE_CODE').Value:= ABOIOrderTypeCode;
  qryBOIOrderTypeData.Open;
  try
    if not qryBOIOrderTypeData.Eof then
      with XMLBOIOrderType do
        begin
          BOIOrderTypeName:= qryBOIOrderTypeDataBOI_ORDER_TYPE_NAME.AsVariant;
          BOIOrderTypeAbbrev:= qryBOIOrderTypeDataBOI_ORDER_TYPE_ABBREV.AsVariant;
        end;  { with }
  finally
    qryBOIOrderTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignBorderDealTypeData(
  XMLBorderDealType: IXMLTBorderDealType; const ABorderDealTypeCode: Variant);
begin
  if VarIsNull(ABorderDealTypeCode) then
    Exit;

  qryBorderDealTypeData.ParamByName('BORDER_DEAL_TYPE_CODE').Value:= ABorderDealTypeCode;
  qryBorderDealTypeData.Open;
  try
    if not qryBorderDealTypeData.Eof then
      with XMLBorderDealType do
        begin
          BorderDealTypeAbbrev:= qryBorderDealTypeDataBORDER_DEAL_TYPE_ABBREV.AsVariant;
          BorderDealTypeName:= qryBorderDealTypeDataBORDER_DEAL_TYPE_NAME.AsVariant;
        end;  { with }
  finally
    qryBorderDealTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignBudgetOrderClassData(XMLBudgetOrderClass: IXMLTBudgetOrderClass; const ABudgetOrderClassCode: Variant);
begin
  if VarIsNull(ABudgetOrderClassCode) then
    Exit;

  qryBudgetOrderClassData.ParamByName('BUDGET_ORDER_CLASS_CODE').Value:= ABudgetOrderClassCode;
  qryBudgetOrderClassData.Open;
  try
    if not qryBudgetOrderClassData.Eof then
      with XMLBudgetOrderClass do
        begin
          BudgetOrderClassName:= qryBudgetOrderClassDataBUDGET_ORDER_CLASS_NAME.AsVariant;
        end;  { with }
  finally
    qryBudgetOrderClassData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignBudgetOrderRegularityTypeData(XMLBudgetOrderRegularityType: IXMLTBudgetOrderRegularityType;
  const ABudgetOrderRegularityTypeCode: Variant);
begin
  if VarIsNull(ABudgetOrderRegularityTypeCode) then
    Exit;

  qryBudgetOrderRegularityTypeData.ParamByName('BO_REGULARITY_TYPE_CODE').Value:= ABudgetOrderRegularityTypeCode;
  qryBudgetOrderRegularityTypeData.Open;
  try
    if not qryBudgetOrderRegularityTypeData.Eof then
      with XMLBudgetOrderRegularityType do
        begin
          BudgetOrderRegularityTypeName:= qryBudgetOrderRegularityTypeDataBO_REGULARITY_TYPE_NAME.AsVariant;
          BudgetOrderRegularityTypeAbbrev:= qryBudgetOrderRegularityTypeDataBO_REGULARITY_TYPE_ABBREV.AsVariant;
        end;  { with }
  finally
    qryBudgetOrderRegularityTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignBudgetOrderData(XMLBudgetOrder: IXMLTBudgetOrder;
  const ABudgetOrderBranchCode, ABudgetOrderCode: Variant);
begin
  if VarIsNull(ABudgetOrderBranchCode) or VarIsNull(ABudgetOrderCode) then
    Exit;

  qryBudgetOrderData.ParamByName('BUDGET_ORDER_BRANCH_CODE').Value:= ABudgetOrderBranchCode;
  qryBudgetOrderData.ParamByName('BUDGET_ORDER_CODE').Value:= ABudgetOrderCode;
  qryBudgetOrderData.Open;
  try
    if not qryBudgetOrderData.Eof then
      with XMLBudgetOrder do
        begin
          AssignDeptData(BudgetOrderBranch, qryBudgetOrderDataBUDGET_ORDER_BRANCH_CODE.AsVariant);
          BudgetOrderNo:= qryBudgetOrderDataBUDGET_ORDER_CODE.AsVariant;
          AssignBudgetOrderRegularityTypeData(BudgetOrderRegularityType, qryBudgetOrderDataBO_REGULARITY_TYPE_CODE.AsVariant);
          AssignBudgetOrderClassData(BudgetOrderClass, qryBudgetOrderDataBUDGET_ORDER_CLASS_CODE.AsVariant);
          AssignDeptData(GeneratorDept, qryBudgetOrderDataGENERATOR_DEPT_CODE.AsVariant);
          AssignDeptData(DeveloperDept, qryBudgetOrderDataDEVELOPER_DEPT_CODE.AsVariant);
          Description:= qryBudgetOrderDataDESCRIPTION.AsVariant;
          AssignDateIntervalData(DateInterval, qryBudgetOrderDataBEGIN_DATE.AsVariant, qryBudgetOrderDataEND_DATE.AsVariant);
          TotalPrice:= qryBudgetOrderDataTOTAL_PRICE.AsVariant;
          AssignEmployeeData(CreateEmployee, qryBudgetOrderDataCREATE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(CreateDateTime, qryBudgetOrderDataCREATE_DATE.AsVariant, qryBudgetOrderDataCREATE_TIME.AsVariant);
          AssignEmployeeData(ChangeEmployee, qryBudgetOrderDataCHANGE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(ChangeDateTime, qryBudgetOrderDataCHANGE_DATE.AsVariant, qryBudgetOrderDataCHANGE_TIME.AsVariant);
          AssignEmployeeData(AnnulEmployee, qryBudgetOrderDataANNUL_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(AnnulDateTime, qryBudgetOrderDataANNUL_DATE.AsVariant, qryBudgetOrderDataANNUL_TIME.AsVariant);
          AssignEmployeeData(CloseEmployee, qryBudgetOrderDataCLOSE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(CloseDateTime, qryBudgetOrderDataCLOSE_DATE.AsVariant, qryBudgetOrderDataCLOSE_TIME.AsVariant);
        end;  { with }
  finally
    qryBudgetOrderData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignDateUnitData(XMLDateUnit: IXMLTDateUnit; const ADateUnitCode: Variant);
begin
  if VarIsNull(ADateUnitCode) then
    Exit;

  qryDateUnitData.ParamByName('THE_DATE_UNIT_CODE').Value:= ADateUnitCode;
  qryDateUnitData.Open;
  try
    if not qryDateUnitData.Eof then
      with XMLDateUnit do
        begin
          DateUnitName:= qryDateUnitDataTHE_DATE_UNIT_NAME.AsVariant;
          DateUnitAbbrev:= qryDateUnitDataTHE_DATE_UNIT_ABBREV.AsVariant;
        end;  { with }
  finally
    qryDateUnitData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignBOIDistributionTypeData(XMLBOIDistributionType: IXMLTBOIDistributionType;
  const ABOIDistributionTypeCode: Variant);
begin
  if VarIsNull(ABOIDistributionTypeCode) then
    Exit;

  qryBOIDistributionTypeData.ParamByName('BOI_DISTRIBUTION_TYPE_CODE').Value:= ABOIDistributionTypeCode;
  qryBOIDistributionTypeData.Open;
  try
    if not qryBOIDistributionTypeData.Eof then
      with XMLBOIDistributionType do
        begin
          BOIDistributionTypeName:= qryBOIDistributionTypeDataBOI_DISTRIBUTION_TYPE_NAME.AsVariant;
          BOIDistributionTypeAbbrev:= qryBOIDistributionTypeDataBOI_DISTRIBUTION_TYPE_ABBREV.AsVariant;
        end;  { with }
  finally
    qryBOIDistributionTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignBudgetOrderItemData(XMLBudgetOrderItem: IXMLTBudgetOrderItem;
  const ABudgetOrderBranchCode, ABudgetOrderCode, ABudgetOrderItemCode: Variant);
begin
  if VarIsNull(ABudgetOrderBranchCode) or VarIsNull(ABudgetOrderCode) or VarIsNull(ABudgetOrderItemCode) then
    Exit;

  qryBudgetOrderItemData.ParamByName('BUDGET_ORDER_BRANCH_CODE').Value:= ABudgetOrderBranchCode;
  qryBudgetOrderItemData.ParamByName('BUDGET_ORDER_CODE').Value:= ABudgetOrderCode;
  qryBudgetOrderItemData.ParamByName('BUDGET_ORDER_ITEM_CODE').Value:= ABudgetOrderItemCode;
  qryBudgetOrderItemData.Open;
  try
    if not qryBudgetOrderItemData.Eof then
      with XMLBudgetOrderItem do
        begin
          AssignBudgetOrderData(BudgetOrder, qryBudgetOrderItemDataBUDGET_ORDER_BRANCH_CODE.AsVariant, qryBudgetOrderItemDataBUDGET_ORDER_CODE.AsVariant);
          BudgetOrderItemNo:= qryBudgetOrderItemDataBUDGET_ORDER_ITEM_CODE.AsVariant;
          AssignProductData(BudgetProduct, qryBudgetOrderItemDataBUDGET_PRODUCT_CODE.AsVariant);
          AssignDeptData(Dept, qryBudgetOrderItemDataDEPT_CODE.AsVariant);
          AssignBOIDistributionTypeData(DistributionType, qryBudgetOrderItemDataBOI_DISTRIBUTION_TYPE_CODE.AsVariant);
          AssignDateIntervalData(DateInterval, qryBudgetOrderItemDataBEGIN_DATE.AsVariant, qryBudgetOrderItemDataEND_DATE.AsVariant);
          DistributedSinglePrice:= qryBudgetOrderItemDataDISTRIBUTED_SINGLE_PRICE.AsVariant;
          AssignDateUnitData(DistributionDateUnit, qryBudgetOrderItemDataDISTRIBUTION_DATE_UNIT_CODE.AsVariant);
          TotalPrice:= qryBudgetOrderItemDataTOTAL_PRICE.AsVariant;
          BudgetOrderPricePercent:= RoundTo(qryBudgetOrderItemDataBO_PRICE_PERCENT.AsFloat * 100, 0);
          IsConfirmed:= qryBudgetOrderItemDataIS_CONFIRMED.AsVariant;
          IsForReconsideration:= qryBudgetOrderItemDataIS_FOR_RECONSIDERATION.AsVariant;
          IsCanceled:= qryBudgetOrderItemDataIS_CANCELED.AsVariant;
          AssignEmployeeData(DecisionEnterEmployee, qryBudgetOrderItemDataDECISION_ENTER_EMPLOYEE_CODE.AsVariant);
          AssignDateData(DecisionEnterDate, qryBudgetOrderItemDataDECISION_ENTER_DATE.AsVariant);
          AssignEmployeeData(DecisionApproveEmployee, qryBudgetOrderItemDataDECISION_APPROVE_EMPLOYEE_CODE.AsVariant);
          AssignDateData(DecisionApproveDate, qryBudgetOrderItemDataDECISION_APPROVE_DATE.AsVariant);
          AssignEmployeeData(CreateEmployee, qryBudgetOrderItemDataCREATE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(CreateDateTime, qryBudgetOrderItemDataCREATE_DATE.AsVariant, qryBudgetOrderItemDataCREATE_TIME.AsVariant);
          AssignEmployeeData(ChangeEmployee, qryBudgetOrderItemDataCHANGE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(ChangeDateTime, qryBudgetOrderItemDataCHANGE_DATE.AsVariant, qryBudgetOrderItemDataCHANGE_TIME.AsVariant);
          AssignEmployeeData(AnnulEmployee, qryBudgetOrderItemDataANNUL_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(AnnulDateTime, qryBudgetOrderItemDataANNUL_DATE.AsVariant, qryBudgetOrderItemDataANNUL_TIME.AsVariant);
          AssignEmployeeData(CloseEmployee, qryBudgetOrderItemDataCLOSE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(CloseDateTime, qryBudgetOrderItemDataCLOSE_DATE.AsVariant, qryBudgetOrderItemDataCLOSE_TIME.AsVariant);
        end;  { with }
  finally
    qryBudgetOrderItemData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignDisciplineEventTypeData(XMLDisciplineEvetType: IXMLTDisciplineEventType;
  const ADisciplineEventTypeCode, AToDate: Variant);
begin
  if VarIsNull(ADisciplineEventTypeCode) then
    Exit;

  qryDisciplineEventTypeData.ParamByName('DISC_EVENT_TYPE_CODE').Value:= ADisciplineEventTypeCode;
  qryDisciplineEventTypeData.ParamByName('TO_DATE').Value:= AToDate;
  qryDisciplineEventTypeData.Open;
  try
    if not qryDisciplineEventTypeData.Eof then
      with XMLDisciplineEvetType do
        begin
          DisciplineEventTypeName:= qryDisciplineEventTypeDataNAME.AsVariant;
          DisciplinePoints:= qryDisciplineEventTypeDataRATING.AsVariant;
        end;  { with }
  finally
    qryDisciplineEventTypeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignEmployeeDisciplineEventData(XMLEmployeeDisciplineEvent: IXMLTEmployeeDisciplineEvent;
  const AEmployeeCode, ADisciplineEventCode: Variant);
begin
  if VarIsNull(AEmployeeCode) or VarIsNull(ADisciplineEventCode) then
    Exit;

  qryEmployeeDisciplineEventData.ParamByName('EMPLOYEE_CODE').Value:= AEmployeeCode;
  qryEmployeeDisciplineEventData.ParamByName('DISCIPLINE_EVENT_CODE').Value:= ADisciplineEventCode;
  qryEmployeeDisciplineEventData.Open;
  try
    if not qryEmployeeDisciplineEventData.Eof then
      with XMLEmployeeDisciplineEvent do
        begin
          AssignEmployeeData(Employee, qryEmployeeDisciplineEventDataEMPLOYEE_CODE.AsVariant);
          AssignDateData(DisciplineEventDate, qryEmployeeDisciplineEventDataDISCIPLINE_EVENT_DATE.AsVariant);
          AssignDisciplineEventTypeData(DisciplineEventType, qryEmployeeDisciplineEventDataDISC_EVENT_TYPE_CODE.AsVariant, qryEmployeeDisciplineEventDataDISCIPLINE_EVENT_DATE.AsVariant);
          AssignEmployeeData(AuthorizeEmployee, qryEmployeeDisciplineEventDataAUTHORIZE_EMPLOYEE_CODE.AsVariant);
          DisciplineEventComment:= qryEmployeeDisciplineEventDataDISCIPLINE_EVENT_COMMENT.AsVariant;
          AssignEmployeeData(CreateEmployee, qryEmployeeDisciplineEventDataCREATE_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(CreateDateTime, qryEmployeeDisciplineEventDataCREATE_DATE.AsVariant, qryEmployeeDisciplineEventDataCREATE_TIME.AsVariant);
          AssignEmployeeData(StornoEmployee, qryEmployeeDisciplineEventDataSTORNO_EMPLOYEE_CODE.AsVariant);
          AssignDateTimeData(StornoDateTime, qryEmployeeDisciplineEventDataSTORNO_DATE.AsVariant, qryEmployeeDisciplineEventDataSTORNO_TIME.AsVariant);
        end;  { with }
  finally
    qryEmployeeDisciplineEventData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignOccupationEmployeeAssignmentRegimeData(XMLOccupationEmployeeAssignmentRegime: IXMLTOccupationEmployeeAssignmentRegime;
  const AOccupationEmployeeRegimeCode: Variant);
begin
  if VarIsNull(AOccupationEmployeeRegimeCode) then
    Exit;

  qryOccupationEmployeeRegimeData.ParamByName('OE_REGIME_CODE').Value:= AOccupationEmployeeRegimeCode;
  qryOccupationEmployeeRegimeData.Open;
  try
    if not qryOccupationEmployeeRegimeData.Eof then
      with XMLOccupationEmployeeAssignmentRegime do
        begin
          OccupationEmployeeAssignmentRegimeName:= qryOccupationEmployeeRegimeDataOE_REGIME_NAME.AsVariant;
        end;  { with }
  finally
    qryOccupationEmployeeRegimeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignOccupationEmployeeAssignmentData(XMLOccupationEmployeeAssignment: IXMLTOccupationEmployeeAssignment; const AOccupationEmployeeCode: Variant);
begin
  if VarIsNull(AOccupationEmployeeCode) then
    Exit;

  qryOccupationEmployeeData.ParamByName('OCCUPATION_EMPLOYEE_CODE').Value:= AOccupationEmployeeCode;
  qryOccupationEmployeeData.Open;
  try
    if not qryOccupationEmployeeData.Eof then
      with XMLOccupationEmployeeAssignment do
        begin
          AssignOccupationData(Occupation, qryOccupationEmployeeDataOCCUPATION_CODE.AsVariant);
          AssignEmployeeData(Employee, qryOccupationEmployeeDataEMPLOYEE_CODE.AsVariant);
          AssignDateIntervalData(AssignmentDateInterval, qryOccupationEmployeeDataASSIGNMENT_BEGIN_DATE.AsVariant, qryOccupationEmployeeDataASSIGNMENT_END_DATE.AsVariant);
          AssignOccupationEmployeeAssignmentRegimeData(OccupationEmployeeAssignmentRegime, qryOccupationEmployeeDataOE_REGIME_CODE.AsVariant);
          AssignSalaryData(Salary, LoginContext.BaseCurrencyCode, qryOccupationEmployeeDataSALARY.AsVariant, qryOccupationEmployeeDataSALARY_DATE_UNIT_CODE.AsVariant);
          AssignedProfessions:= qryOccupationEmployeeDataOCCUPATION_EMP_PROFESSIONS.AsVariant;
        end;  { with }
  finally
    qryOccupationEmployeeData.Close;
  end;  { try }
end;

procedure TdmDocXML.AssignTreeNodeData(XMLTreeNode: IXMLTTreeNode; const AName, AIsGroup: Variant);
begin
  with XMLTreeNode do
    begin
      Name:= AName;
      IsGroup:= AIsGroup;
    end;  { with }
end;

procedure TdmDocXML.AssignVatReasonData(XMLVatReason: IXMLTVatReason;
  const AVatReasonCode: Variant);
begin
  if VarIsNull(AVatReasonCode) then
    Exit;

  qryVatReasonData.ParamByName('VAT_REASON_CODE').Value:= AVatReasonCode;
  qryVatReasonData.TempOpen/
    procedure begin
      if not qryVatReasonData.Eof then
        with XMLVatReason do
          begin
            No:= qryVatReasonDataVAT_REASON_NO.AsVariant;
            Name:= qryVatReasonDataVAT_REASON_NAME.AsVariant;
            Abbrev:= qryVatReasonDataVAT_REASON_ABBREV.AsVariant;
            IntlName:= qryVatReasonDataVAT_REASON_I_NAME.AsVariant;
            IntlAbbrev:= qryVatReasonDataVAT_REASON_I_ABBREV.AsVariant;
          end;  { with }
    end;  { try }
end;

procedure TdmDocXML.AssignExceptEventTypeData(XMLExceptEventType: IXMLTExceptEventType; const AExceptEventTypeCode: Variant);
begin
  if VarIsNull(AExceptEventTypeCode) then
    Exit;

  qryExceptEventTypeData.ParamByName('EXCEPT_EVENT_TYPE_CODE').Value:= AExceptEventTypeCode;
  qryExceptEventTypeData.TempOpen/
    procedure begin
      if not qryExceptEventTypeData.Eof then
        with XMLExceptEventType do
          begin
            ExceptEventTypeFullNo:= qryExceptEventTypeDataEE_TYPE_FULL_NO.AsVariant;
            ExceptEventTypeName:= qryExceptEventTypeDataEXCEPT_EVENT_TYPE_NAME.AsVariant;
            ExceptEventTypeShortName:= qryExceptEventTypeDataEXCEPT_EVENT_TYPE_SHORT_NAME.AsVariant;
          end;
    end;
end;

procedure TdmDocXML.AssignExceptEventGenTypeData(XMLExceptEventGenType: IXMLTExceptEventGenType; const AExceptEventGenTypeCode: Variant);
begin
  if VarIsNull(AExceptEventGenTypeCode) then
    Exit;

  qryExceptEventGenTypeData.ParamByName('EXCEPT_EVENT_GEN_TYPE_CODE').Value:= AExceptEventGenTypeCode;
  qryExceptEventGenTypeData.TempOpen/
    procedure begin
      if not qryExceptEventGenTypeData.Eof then
        with XMLExceptEventGenType do
          begin
            ExceptEventGenTypeNo:= qryExceptEventGenTypeDataEXCEPT_EVENT_GEN_TYPE_NO.AsVariant;
            ExceptEventGenTypeName:= qryExceptEventGenTypeDataEXCEPT_EVENT_GEN_TYPE_NAME.AsVariant;
            ExceptEventGenTypeAbbrev:= qryExceptEventGenTypeDataEXCEPT_EVENT_GEN_TYPE_ABBREV.AsVariant;
          end;
    end;
end;

procedure TdmDocXML.AssignExceptEventLevelData(XMLExceptEventLevel: IXMLTExceptEventLevel; const AExceptEventLevelCode: Variant);
begin
  if VarIsNull(AExceptEventLevelCode) then
    Exit;

  qryExceptEventLevelData.ParamByName('EXCEPT_EVENT_LEVEL_CODE').Value:= AExceptEventLevelCode;
  qryExceptEventLevelData.TempOpen/
    procedure begin
      if not qryExceptEventLevelData.Eof then
        with XMLExceptEventLevel do
          begin
            ExceptEventLevelNo:= qryExceptEventLevelDataEXCEPT_EVENT_LEVEL_NO.AsVariant;
            ExceptEventLevelName:= qryExceptEventLevelDataEXCEPT_EVENT_LEVEL_NAME.AsVariant;
            ExceptEventLevelAbbrev:= qryExceptEventLevelDataEXCEPT_EVENT_LEVEL_ABBREV.AsVariant;
          end;
    end;
end;

procedure TdmDocXML.AssignExceptEventData(XMLExceptEvent: IXMLTExceptEvent; const AExceptEventCode: Variant);
begin
  if VarIsNull(AExceptEventCode) then
    Exit;

  qryExceptEventData.ParamByName('EXCEPT_EVENT_CODE').Value:= AExceptEventCode;
  qryExceptEventData.TempOpen/
    procedure begin
      if not qryExceptEventData.Eof then
        with XMLExceptEvent do
          begin
            ExceptEventNo:= qryExceptEventDataEXCEPT_EVENT_NO.AsVariant;
            AssignExceptEventTypeData(ExceptEventType, qryExceptEventDataEXCEPT_EVENT_TYPE_CODE.AsVariant);
            AssignExceptEventGenTypeData(ExceptEventGenType, qryExceptEventDataEXCEPT_EVENT_GEN_TYPE_CODE.AsVariant);
            AssignExceptEventLevelData(ExceptEventLevel, qryExceptEventDataEXCEPT_EVENT_LEVEL_CODE.AsVariant);
            AssignProductData(Product, qryExceptEventDataPRODUCT_CODE.AsVariant);
            ProductQuantity:= qryExceptEventDataPRODUCT_QUANTITY.AsVariant;
            AssignDeptData(Dept, qryExceptEventDataDEPT_CODE.AsVariant);
            Description:= qryExceptEventDataDESCRIPTION.AsVariant;
            AssignDeptData(DetectDept, qryExceptEventDataDETECT_DEPT_CODE.AsVariant);
            AssignEmployeeData(DetectEmployee, qryExceptEventDataDETECT_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(DetectDateTime, qryExceptEventDataDETECT_DATE.AsVariant, qryExceptEventDataDETECT_TIME.AsVariant);
            AssignDeptData(ControlDeptCode, qryExceptEventDataCTRL_DEPT_CODE.AsVariant);
            AssignEmployeeData(ControlAcceptEmployee, qryExceptEventDataCTRL_ACCEPT_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(ControlAcceptDateTime, qryExceptEventDataCTRL_ACCEPT_DATE.AsVariant, qryExceptEventDataCTRL_ACCEPT_TIME.AsVariant);
            AssignEmployeeData(ControlMainEmployee, qryExceptEventDataCTRL_MAIN_EMPLOYEE_CODE.AsVariant);
            AssignEmployeeData(ControlActivateEmployee, qryExceptEventDataCTRL_ACTIVATE_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(ControlActivateDateTime, qryExceptEventDataCTRL_ACTIVATE_DATE.AsVariant, qryExceptEventDataCTRL_ACTIVATE_TIME.AsVariant);
            AssignDateIntervalData(DamageResolvePlanDateInterval, qryExceptEventDataDMG_RESOLVE_PLAN_BEGIN_DATE.AsVariant, qryExceptEventDataDMG_RESOLVE_PLAN_END_DATE.AsVariant);
            AssignEmployeeData(DamageResolveEmployee, qryExceptEventDataDMG_RESOLVE_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(DamageResolveDateTime, qryExceptEventDataDMG_RESOLVE_DATE.AsVariant, qryExceptEventDataDMG_RESOLVE_TIME.AsVariant);
            AssignDateIntervalData(ResolvePlanDateInterval, qryExceptEventDataRESOLVE_PLAN_BEGIN_DATE.AsVariant, qryExceptEventDataRESOLVE_PLAN_END_DATE.AsVariant);
            AssignEmployeeData(ResolveEmployee, qryExceptEventDataRESOLVE_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(ResolveDateTime, qryExceptEventDataRESOLVE_DATE.AsVariant, qryExceptEventDataRESOLVE_TIME.AsVariant);
            AssignEmployeeData(CreateEmployee, qryExceptEventDataCREATE_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(CreateDateTime, qryExceptEventDataCREATE_DATE.AsVariant, qryExceptEventDataCREATE_TIME.AsVariant);
            AssignEmployeeData(ChangeEmployee, qryExceptEventDataCHANGE_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(ChangeDateTime, qryExceptEventDataCHANGE_DATE.AsVariant, qryExceptEventDataCHANGE_TIME.AsVariant);
            AssignEmployeeData(CloseEmployee, qryExceptEventDataCLOSE_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(CloseDateTime, qryExceptEventDataCLOSE_DATE.AsVariant, qryExceptEventDataCLOSE_TIME.AsVariant);
            AssignEmployeeData(AnnulEmployee, qryExceptEventDataANNUL_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(AnnulDateTime, qryExceptEventDataANNUL_DATE.AsVariant, qryExceptEventDataANNUL_TIME.AsVariant);
            AssignEmployeeData(OrgTaskProposalBindEmployee, qryExceptEventDataOTP_BIND_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(OrgTaskProposalBindDateTime, qryExceptEventDataOTP_BIND_DATE.AsVariant, qryExceptEventDataOTP_BIND_TIME.AsVariant);
          end;
    end;
end;

procedure TdmDocXML.AssignDeliveryTypeData(XMLDeliveryType: IXMLTDeliveryType; const ADeliveryTypeCode: Variant);
begin
  if VarIsNull(ADeliveryTypeCode) then
    Exit;

  qryDeliveryTypeData.ParamByName('DELIVERY_TYPE_CODE').Value:= ADeliveryTypeCode;
  qryDeliveryTypeData.TempOpen/
    procedure begin
      if not qryDeliveryTypeData.Eof then
        with XMLDeliveryType do
          begin
            DeliveryTypeAbbrev:= qryDeliveryTypeDataDELIVERY_TYPE_ABBREV.AsVariant;
            Description:= qryDeliveryTypeDataDESCRIPTION.AsVariant;
          end;
    end;
end;

procedure TdmDocXML.AssignDeliveryProjectData(XMLDeliveryProject: IXMLTDeliveryProject; const ADCDObjectBranchCode, ADCDObjectCode, ADeliveryProjectCode: Variant);
begin
  if VarIsNull(ADCDObjectBranchCode) or VarIsNull(ADCDObjectCode) or VarIsNull(ADeliveryProjectCode) then
    Exit;

  qryDeliveryProjectData.ParamByName('DCD_OBJECT_BRANCH_CODE').Value:= ADCDObjectBranchCode;
  qryDeliveryProjectData.ParamByName('DCD_OBJECT_CODE').Value:= ADCDObjectCode;
  qryDeliveryProjectData.ParamByName('DELIVERY_PROJECT_CODE').Value:= ADeliveryProjectCode;
  qryDeliveryProjectData.TempOpen/
    procedure begin
      if not qryDeliveryProjectData.Eof then
        with XMLDeliveryProject do
          begin
            DeliveryProjectIdentifier:= qryDeliveryProjectDataDELIVERY_PROJECT_ID.AsVariant;
            DeliveryIdentifier:= qryDeliveryProjectDataDELIVERY_ID.AsVariant;
            AssignDeptData(DCDBranch, qryDeliveryProjectDataDCD_BRANCH_CODE.AsVariant);
            DCDCode:= qryDeliveryProjectDataDCD_CODE.AsVariant;
            DeliveryProjectCode:= qryDeliveryProjectDataDELIVERY_PROJECT_CODE.AsVariant;
            AssignStreamTypeData(StreamType, qryDeliveryProjectDataSTREAM_TYPE_CODE.AsVariant);
            AssignDeliveryTypeData(DeliveryType, qryDeliveryProjectDataDELIVERY_TYPE_CODE.AsVariant);
            AssignPartnerData(Vendor, qryDeliveryProjectDataVENDOR_COMPANY_CODE.AsVariant);
            AssignProductData(Product, qryDeliveryProjectDataPRODUCT_CODE.AsVariant, qryDeliveryProjectDataVENDOR_COMPANY_CODE.AsInteger);
            AssignDateData(DeficitCoverDate, qryDeliveryProjectDataDEFICIT_COVER_DATE.AsVariant);
            WorkQuantity:= qryDeliveryProjectDataWORK_QUANTITY.AsVariant;
            SinglePrice:= qryDeliveryProjectDataSINGLE_PRICE.AsVariant;
            AccountQuantity:= qryDeliveryProjectDataACCOUNT_QUANTITY.AsVariant;
            AccountSinglePrice:= qryDeliveryProjectDataACCOUNT_SINGLE_PRICE.AsVariant;
            TotalPrice:= qryDeliveryProjectDataTOTAL_PRICE.AsVariant;
            AssignCurrencyData(Currency, qryDeliveryProjectDataCURRENCY_CODE.AsVariant);
            AssignDateData(DeliveryDate, qryDeliveryProjectDataDELIVERY_DATE.AsVariant);
            AssignPartnerData(MediatorCompany, qryDeliveryProjectDataMEDIATOR_COMPANY_CODE.AsVariant);
            AssignDateData(StartDate, qryDeliveryProjectDataSTART_DATE.AsVariant);
            AssignDateData(RegisterDate, qryDeliveryProjectDataREGISTER_DATE.AsVariant);
            AssignDateData(PlanPositionDate, qryDeliveryProjectDataPLAN_POSITION_DATE.AsVariant);
            AssignDateData(RealPositionDate, qryDeliveryProjectDataREAL_POSITION_DATE.AsVariant);
            AssignDateData(PlanVendorPositionDate, qryDeliveryProjectDataPLAN_VENDOR_POSITION_DATE.AsVariant);
            AssignDateData(RealVendorPositionDate, qryDeliveryProjectDataREAL_VENDOR_POSITION_DATE.AsVariant);
            AssignEmployeeData(DecisionEmployee, qryDeliveryProjectDataDECISION_EMPLOYEE_CODE.AsVariant);
            AssignEmployeeData(DialogEmployee, qryDeliveryProjectDataDIALOG_EMPLOYEE_CODE.AsVariant);
            ShipmentDays:= qryDeliveryProjectDataSHIPMENT_DAYS.AsVariant;
            AssignDeptData(PSDStore, qryDeliveryProjectDataPSD_STORE_CODE.AsVariant);
            AssignEmployeeData(CreateEmployee, qryDeliveryProjectDataCREATE_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(CreateDateTime, qryDeliveryProjectDataCREATE_DATE.AsVariant, qryDeliveryProjectDataCREATE_TIME.AsVariant);
            AssignEmployeeData(ChangeEmployee, qryDeliveryProjectDataCHANGE_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(ChangeDateTime, qryDeliveryProjectDataCHANGE_DATE.AsVariant, qryDeliveryProjectDataCHANGE_TIME.AsVariant);
            AssignEmployeeData(FinishEmployee, qryDeliveryProjectDataFINISH_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(FinishDateTime, qryDeliveryProjectDataFINISH_DATE.AsVariant, qryDeliveryProjectDataFINISH_TIME.AsVariant);
            AssignEmployeeData(AnnulEmployee, qryDeliveryProjectDataANNUL_EMPLOYEE_CODE.AsVariant);
            AssignDateTimeData(AnnulDateTime, qryDeliveryProjectDataANNUL_DATE.AsVariant, qryDeliveryProjectDataANNUL_TIME.AsVariant);
          end;
    end;
end;

function TdmDocXML.GetDocItemTemplateTypeXML(ADocItemTemplateTypeCode: Integer): string;

  procedure AssignDocItemActiveField(
    ADocItemActiveField: IXMLTDocItemActiveField;
    AFieldIdentifier,
    AFieldIntegerIdentifier,
    AFieldName,
    AIsVisible: Variant);
  begin
    with ADocItemActiveField do
      begin
        DocItemActiveFieldIdentifier:= AFieldIdentifier;
        DocItemActiveFieldIntegerIdentifier:= AFieldIntegerIdentifier;
        DocItemActiveFieldName:= AFieldName;
        IsVisible:= AIsVisible;
      end;  { with }
  end;

const
  DocItemTypeIdentifiers: array [TDocItemTemplateType] of string = (
    '', // dittNone
    'ProductDocItem', // dittProduct
    'DeptDocItem', // dittDept
    'EmployeeDocItem', // dittEmployee
    'ProfessionDocItem', // dittProfession
    'OccupationDocItem', // dittOccupation
    'TeamDocItem', // dittTeam
    'PartnerDocItem', // dittCompany
    'ModelStageDocItem', // dittStage
    'ModelOperationDocItem', // dittOperation
    'BaseGroupDocItem', // dittBaseGroup
    'DeliveryProjectDocItem', // dittDelivery
    'SaleRequestGroupDocItem', // dittSaleRequestGroup
    'SaleDocItem', // dittSale
    'SaleShipmentDocItem', // dittSaleShipment
    'BudgetOrderDocItem', // dittBudgetOrder
    'BudgetOrderItemDocItem', // dittBudgetOrderItem
    '', // dittDeficitCoverDecision
    'OperationMovementDocItem', // dittOperationMovement
    'StoreDealDocItem', // dittStoreDeal
    'ProductStoreDocItem', // dittProductStore
    'EngineeringOrderDocItem', // dittEngineeringOrder
    'EmpAvailModifierDocItem', // dittEmpAvailModifier
    'EmployeeDisciplineEventDocItem', // dittEmployeeDisciplineEvent
    '', // dittParRelPeriod
    'OccupationEmployeeAssignmentDocItem', // dittOccupationEmployee
    '', // dittProductPeriod
    '', // dittParRelProduct
    '', // dittParRelProductPeriod
    '', // dittOrgTaskProposal
    '', // dittDiscEventType
    '', // dittExceptEventTask
    'ExceptEventDocItem', // dittExceptEvent
    '', // dittDeptPeriod
    '', // dittFinanceClass
    '', // dittFinOrder
    '', // dittMenuDocItem
    '', // dittProcessFunction
    '', // dittProcessKnowl
    '', // dittProcessBaseOperation
    '', // dittProcessConcreteOperation
    '', // dittProcessActions
    '', // dittOccWorkDeptPriority
    '', // dittNom
    '', // dittNomItem
    '', // ditProductParam
    'InvoiceDocItem',  // dittInvoice
    '', // dittDocProfile
    '', // dittExceptEventType
    ''  // dittBOIOrder
  );
var
  DocItemTemplateType: TDocItemTemplateType;
  DocItemTypeIdentifier: string;
  XMLDocument: IXMLDocument;
  XMLDocItemActiveFieldsDefinition: IXMLTDocItemActiveFieldsDefinition;
  CurrentNode: IXMLTDocItemActiveFieldNode;
  CurrentNodeLevel: Integer;
begin
  DocItemTemplateType:= IntToDocItemTemplateType(ADocItemTemplateTypeCode);
  DocItemTypeIdentifier:= DocItemTypeIdentifiers[DocItemTemplateType];

  if (DocItemTypeIdentifier = '') then
    Result:= ''
  else
    begin
      XMLDocument:= NewXMLDocument;
      XMLDocument.Options:= [doNodeAutoIndent, doNodeAutoCreate];

      XMLDocItemActiveFieldsDefinition:=
        xTDocItemActiveFieldsDefinition.GetDocItemActiveFieldsDefinition(XMLDocument);

      XMLDocItemActiveFieldsDefinition.DocItemActiveFieldsList.Clear;  // za da go dostypim pyrwo i da e pyrwo wyw file-a

      CurrentNodeLevel:= 0;
      CurrentNode:= XMLDocItemActiveFieldsDefinition.DocItemActiveFieldsTree;
      AssignDocItemActiveField(CurrentNode, DocItemTypeIdentifier, Null, '', 1);  // IsVisible = 1 

      qryDocItemActiveFields.ParamByName('DOC_ITEM_TYPE_IDENTIFIER').AsString:= DocItemTypeIdentifier;
      qryDocItemActiveFields.Open;
      try
        Assert(qryDocItemActiveFields.Eof or (qryDocItemActiveFieldsFIELD_LEVEL.AsInteger = CurrentNodeLevel + 1));
        while not qryDocItemActiveFields.Eof do
          begin
            // Add field to DocItemActiveFieldsList
            if not qryDocItemActiveFieldsHAS_CHILD_FIELDS.AsBoolean then
              AssignDocItemActiveField(
                XMLDocItemActiveFieldsDefinition.DocItemActiveFieldsList.Add,
                qryDocItemActiveFieldsFIELD_IDENTIFIER_PATH.AsVariant,
                qryDocItemActiveFieldsFIELD_INTEGER_IDENTIFIER.AsVariant,
                qryDocItemActiveFieldsFIELD_NAME_PATH.AsVariant,
                qryDocItemActiveFieldsIS_VISIBLE.AsVariant);

            // Add field to DocItemActiveFieldsTree
            while (CurrentNodeLevel >= qryDocItemActiveFieldsFIELD_LEVEL.AsInteger) do
              begin
                CurrentNode:= (CurrentNode.ParentNode.ParentNode as IXMLTDocItemActiveFieldNode);  // parent.parent zashtoto ChildNode.ChildNodes.ChildNode
                Dec(CurrentNodeLevel);
              end;  { while }

            Inc(CurrentNodeLevel);
            CurrentNode:= CurrentNode.ChildDocItemActiveFieldNodes.Add;
            AssignDocItemActiveField(
              CurrentNode,
              qryDocItemActiveFieldsFIELD_IDENTIFIER.AsVariant,
              qryDocItemActiveFieldsFIELD_INTEGER_IDENTIFIER.AsVariant,
              qryDocItemActiveFieldsFIELD_NAME.AsVariant,
              qryDocItemActiveFieldsIS_VISIBLE.AsVariant);

            qryDocItemActiveFields.Next;
          end;  { while }
      finally
        qryDocItemActiveFields.Close;
      end;  { try }

      SetDefaultAttributes(XMLDocument);
      Result:= EncodeXMLResult(XMLDocument.XML.Text);
    end;
end;

initialization
  TdmDocXMLProxy.FSingleton:= TdmDocXMLProxy.Create(TdmDocXML);

finalization
  FreeAndNil(TdmDocXMLProxy.FSingleton);
end.
