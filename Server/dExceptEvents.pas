unit dExceptEvents;

interface

uses
  Windows, Messages, SysUtils, Classes,
  DBClient, dPooledDataModule, dDBPooledDataModule,
  DB, AbmesSQLQuery, Provider, AbmesFields, JvStringHolder,
  AbmesClientDataSet, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  DBXDevartOracle, uSmartLock;

type
  TdmExceptEvents = class(TDBPooledDataModule)
    qryExceptEventTypes: TAbmesSQLQuery;
    prvExceptEventTypes: TDataSetProvider;
    qryGetNewExceptEventTypeCode: TAbmesSQLQuery;
    qryGetNewExceptEventTypeCodeNEW_EXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    qryGetNextExceptEventTypeNo: TAbmesSQLQuery;
    qryExceptEvents: TAbmesSQLQuery;
    mshLocalMacroLibrary: TJvMultiStringHolder;
    qryExceptEventsEXCEPT_EVENT_CODE: TAbmesFloatField;
    qryExceptEventsEXCEPT_EVENT_NO: TAbmesFloatField;
    qryExceptEventsCREATE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventsEXCEPT_EVENT_TYPE_SHORT_NAME: TAbmesWideStringField;
    qryExceptEventsPRODUCT_NAME: TAbmesWideStringField;
    qryExceptEventsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventsPRODUCT_DOC_CODE: TAbmesFloatField;
    qryExceptEventsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryExceptEventsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryExceptEventsDESCRIPTION: TAbmesWideStringField;
    qryExceptEventsDOC_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventsDOC_CODE: TAbmesFloatField;
    qryExceptEventsHAS_DOC_ITEMS: TAbmesFloatField;
    qryExceptEventsDETECT_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryExceptEventsCTRL_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryExceptEventsCTRL_MAIN_EMPLOYEE: TAbmesWideStringField;
    qryExceptEventsDMG_RESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryExceptEventsDMG_RESOLVE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventsDMG_RESOLVE_REAL_WORKDAYS: TAbmesFloatField;
    qryExceptEventsDMG_RESOLVE_WORKDAYS_LEFT: TAbmesFloatField;
    qryExceptEventsEXCEPT_EVENT_TOTAL_PRICE: TAbmesFloatField;
    qryExceptEventsRESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryExceptEventsRESOLVE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventsRESOLVE_REAL_WORKDAYS: TAbmesFloatField;
    qryExceptEventsRESOLVE_WORKDAYS_LEFT: TAbmesFloatField;
    prvExceptEvents: TDataSetProvider;
    qryExceptEventTasks: TAbmesSQLQuery;
    qryExceptEventDamages: TAbmesSQLQuery;
    dsExceptEventDamage: TDataSource;
    qryExceptEventDamageAttacks: TAbmesSQLQuery;
    prvExceptEventTasks: TDataSetProvider;
    prvExceptEventDamages: TDataSetProvider;
    qryExceptEventDamage: TAbmesSQLQuery;
    qryExceptEventTask: TAbmesSQLQuery;
    prvExceptEventDamage: TDataSetProvider;
    prvExceptEventTask: TDataSetProvider;
    qryExceptEvent: TAbmesSQLQuery;
    prvExceptEvent: TDataSetProvider;
    qryExceptEventEXCEPT_EVENT_CODE: TAbmesFloatField;
    qryExceptEventEXCEPT_EVENT_NO: TAbmesFloatField;
    qryExceptEventEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    qryExceptEventEXCEPT_EVENT_GEN_TYPE_CODE: TAbmesFloatField;
    qryExceptEventPRODUCT_CODE: TAbmesFloatField;
    qryExceptEventDEPT_CODE: TAbmesFloatField;
    qryExceptEventDESCRIPTION: TAbmesWideStringField;
    qryExceptEventDOC_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventDOC_CODE: TAbmesFloatField;
    qryExceptEventDETECT_DEPT_CODE: TAbmesFloatField;
    qryExceptEventDETECT_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDETECT_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDETECT_TIME: TAbmesSQLTimeStampField;
    qryExceptEventCTRL_DEPT_CODE: TAbmesFloatField;
    qryExceptEventCTRL_ACCEPT_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventCTRL_ACCEPT_DATE: TAbmesSQLTimeStampField;
    qryExceptEventCTRL_ACCEPT_TIME: TAbmesSQLTimeStampField;
    qryExceptEventCTRL_MAIN_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventCTRL_ACTIVATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventCTRL_ACTIVATE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventCTRL_ACTIVATE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventDMG_RESOLVE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDMG_RESOLVE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDMG_RESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDMG_RESOLVE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDMG_RESOLVE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventRESOLVE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryExceptEventRESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField;
    qryExceptEventRESOLVE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventRESOLVE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventRESOLVE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventCREATE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventCREATE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventCHANGE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventCHANGE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventCLOSE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventCLOSE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventANNUL_DATE: TAbmesSQLTimeStampField;
    qryExceptEventANNUL_TIME: TAbmesSQLTimeStampField;
    qryExceptEventOM_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventOM_CODE: TAbmesFloatField;
    qryGetNewExceptEventTaskCode: TAbmesSQLQuery;
    qryGetNextExceptEventTaskNo: TAbmesSQLQuery;
    qryGetNewExceptEventTaskCodeNEW_EXCEPT_EVENT_TASK_CODE: TAbmesFloatField;
    qryGetNextExceptEventTaskNoNEXT_EXCEPT_EVENT_TASK_NO: TAbmesFloatField;
    qryExceptEventTaskEXCEPT_EVENT_TASK_CODE: TAbmesFloatField;
    qryExceptEventTaskSTATE_CODE: TAbmesFloatField;
    qryExceptEventTaskEXCEPT_EVENT_CODE: TAbmesFloatField;
    qryExceptEventTaskEXCEPT_EVENT_TASK_NO: TAbmesFloatField;
    qryExceptEventTaskTASK_REAL_WORKDAYS: TAbmesFloatField;
    qryExceptEventTaskDEPT_CODE: TAbmesFloatField;
    qryExceptEventTaskEMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventTaskDESCRIPTION: TAbmesWideStringField;
    qryExceptEventTaskDOC_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventTaskDOC_CODE: TAbmesFloatField;
    qryExceptEventTaskHAS_DOC_ITEMS: TAbmesFloatField;
    qryExceptEventTaskNOTES: TAbmesWideStringField;
    qryExceptEventTaskACTIVATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventTaskACTIVATE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventTaskACTIVATE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventTaskPLAN_DATE: TAbmesSQLTimeStampField;
    qryExceptEventTaskPROBLEM_ENCOUNTER_EMP_CODE: TAbmesFloatField;
    qryExceptEventTaskPROBLEM_ENCOUNTER_DATE: TAbmesSQLTimeStampField;
    qryExceptEventTaskPROBLEM_ENCOUNTER_TIME: TAbmesSQLTimeStampField;
    qryExceptEventTaskPROBLEM_RESOLVE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventTaskPROBLEM_RESOLVE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventTaskPROBLEM_RESOLVE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventTaskCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventTaskCREATE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventTaskCREATE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventTaskCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventTaskCHANGE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventTaskCHANGE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventTaskCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventTaskCLOSE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventTaskCLOSE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventTaskANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventTaskANNUL_DATE: TAbmesSQLTimeStampField;
    qryExceptEventTaskANNUL_TIME: TAbmesSQLTimeStampField;
    qryExceptEventTasksEXCEPT_EVENT_TASK_CODE: TAbmesFloatField;
    qryExceptEventTasksSTATE_CODE: TAbmesFloatField;
    qryExceptEventTasksEXCEPT_EVENT_TASK_NO: TAbmesFloatField;
    qryExceptEventTasksCREATE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventTasksTASK_REAL_WORKDAYS: TAbmesFloatField;
    qryExceptEventTasksDEPT_IDENTIFIER: TAbmesWideStringField;
    qryExceptEventTasksDEPT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventTasksDEPT_DOC_CODE: TAbmesFloatField;
    qryExceptEventTasksDEPT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryExceptEventTasksEMPLOYEE_NO: TAbmesFloatField;
    qryExceptEventTasksEMPLOYEE_NAME: TAbmesWideStringField;
    qryExceptEventTasksEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventTasksEMPLOYEE_DOC_CODE: TAbmesFloatField;
    qryExceptEventTasksEMPLOYEE_HAS_DOC_ITEMS: TAbmesFloatField;
    qryExceptEventTasksDESCRIPTION: TAbmesWideStringField;
    qryExceptEventTasksDOC_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventTasksDOC_CODE: TAbmesFloatField;
    qryExceptEventTasksHAS_DOC_ITEMS: TAbmesFloatField;
    qryExceptEventTasksPLAN_DATE: TAbmesSQLTimeStampField;
    qryExceptEventTasksHAS_PROBLEMS_ENCOUNTERED: TAbmesFloatField;
    qryExceptEventTasksCLOSE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventTasksIS_ANNULED: TAbmesFloatField;
    qryExceptEventTasksTASK_WORKDAYS_LEFT: TAbmesFloatField;
    qryExceptEventDamageAttacksEXCEPT_EVENT_DMG_ATTACK_CODE: TAbmesFloatField;
    qryExceptEventDamageAttacksEXCEPT_EVENT_DAMAGE_CODE: TAbmesFloatField;
    qryExceptEventDamageAttacksEXCEPT_EVENT_DAMAGE_ATTACK_NO: TAbmesFloatField;
    qryExceptEventDamageAttacksPRODUCT_QUANTITY: TAbmesFloatField;
    qryExceptEventDamageAttacksPROPOSED_PLAN_SHIFT_WORKDAYS: TAbmesFloatField;
    qryExceptEventDamageAttacksNOTES: TAbmesWideStringField;
    qryExceptEventDamageAttacksNORMALIZE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDamageAttacksNORMALIZE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDamageAttacksNORMALIZE_TIME: TAbmesSQLTimeStampField;
    qryGetNewExceptEventDamageAttackCode: TAbmesSQLQuery;
    qryGetNewExceptEventDamageAttackCodeNEW_EE_DMG_ATTACK_CODE: TAbmesFloatField;
    qryExceptEventDamageEXCEPT_EVENT_DAMAGE_CODE: TAbmesFloatField;
    qryExceptEventDamageEXCEPT_EVENT_CODE: TAbmesFloatField;
    qryExceptEventDamagePARENT_CODE: TAbmesFloatField;
    qryExceptEventDamageSTATE_CODE: TAbmesFloatField;
    qryExceptEventDamageDAMAGE_WORKDAYS: TAbmesFloatField;
    qryExceptEventDamagePARENT_FULL_NO: TAbmesWideStringField;
    qryExceptEventDamageLOCAL_NO: TAbmesFloatField;
    qryExceptEventDamageEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField;
    qryExceptEventDamagePRODUCT_QUANTITY: TAbmesFloatField;
    qryExceptEventDamageCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDamageCREATE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDamageCREATE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventDamageCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventDamageCHANGE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDamageCHANGE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventDamageMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventDamageMLL_OBJECT_CODE: TAbmesFloatField;
    qryExceptEventDamageDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventDamageDELIVERY_OBJECT_CODE: TAbmesFloatField;
    qryExcepteEventDamageProcessTypes: TAbmesSQLQuery;
    qryExcepteEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField;
    qryExcepteEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_NO: TAbmesFloatField;
    qryExcepteEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_NAME: TAbmesWideStringField;
    qryExcepteEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_ABBREV: TAbmesWideStringField;
    prvExceptEventDamgeProcessTypes: TDataSetProvider;
    qryExceptEventDamageBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventDamageBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    qryMaterialListLineData: TAbmesSQLQuery;
    prvMaterialListLineData: TDataSetProvider;
    prvDeliveryData: TDataSetProvider;
    qryDeliveryData: TAbmesSQLQuery;
    qrySaleShipmentData: TAbmesSQLQuery;
    prvSaleShipmentData: TDataSetProvider;
    qryMaterialListLineDataPRODUCT_CODE: TAbmesFloatField;
    qryMaterialListLineDataPRODUCT_QUANTITY: TAbmesFloatField;
    qryMaterialListLineDataMEASURE_ABBREV: TAbmesWideStringField;
    qryMaterialListLineDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryMaterialListLineDataPLAN_END_DATE: TAbmesSQLTimeStampField;
    qryDeliveryDataPRODUCT_CODE: TAbmesFloatField;
    qryDeliveryDataPRODUCT_QUANTITY: TAbmesFloatField;
    qryDeliveryDataMEASURE_ABBREV: TAbmesWideStringField;
    qryDeliveryDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryDeliveryDataPLAN_END_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentDataPRODUCT_CODE: TAbmesFloatField;
    qrySaleShipmentDataPRODUCT_QUANTITY: TAbmesFloatField;
    qrySaleShipmentDataMEASURE_ABBREV: TAbmesWideStringField;
    qrySaleShipmentDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qrySaleShipmentDataPLAN_END_DATE: TAbmesSQLTimeStampField;
    qryGetNewExceptEventDamageCode: TAbmesSQLQuery;
    qryGetNextExceptEventDamageLocalNo: TAbmesSQLQuery;
    qryGetNextExceptEventDamageLocalNoNEXT_EE_DAMAGE_LOCAL_NO: TAbmesFloatField;
    qryGetNewExceptEventDamageCodeNEW_EXCEPT_EVENT_DAMAGE_CODE: TAbmesFloatField;
    qryExceptEventDamagesEXCEPT_EVENT_DAMAGE_CODE: TAbmesFloatField;
    qryExceptEventDamagesFULL_NO: TAbmesWideStringField;
    qryExceptEventDamagesFORMATED_FULL_NO: TAbmesWideStringField;
    qryExceptEventDamagesEXCEPT_EVENT_CODE: TAbmesFloatField;
    qryExceptEventDamagesPARENT_CODE: TAbmesFloatField;
    qryExceptEventDamagesSTATE_CODE: TAbmesFloatField;
    qryExceptEventDamagesCREATE_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDamagesEE_DAMAGE_PROCESS_TYPE_NAME: TAbmesWideStringField;
    qryExceptEventDamagesPRODUCT_QUANTITY: TAbmesFloatField;
    qryExceptEventDamageSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventDamageSHIPMENT_OBJECT_CODE: TAbmesFloatField;
    qryExceptEventDamagesDAMAGE_WORKDAYS: TAbmesFloatField;
    qryExceptEventDamagesPROCESS_IDENTIFIER: TAbmesWideStringField;
    qryExceptEventDamagesPROCESS_PRODUCT_NO: TAbmesFloatField;
    qryExceptEventDamagesPROCESS_PRODUCT_NAME: TAbmesWideStringField;
    qryExceptEventDamagesPLAN_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDamagesPLAN_END_DATE: TAbmesSQLTimeStampField;
    qryExceptEventDamagesPROCESS_PRODUCT_QUANTITY: TAbmesFloatField;
    qryExceptEventDamagesPROCESS_PRODUCT_MEASURE: TAbmesWideStringField;
    qryExceptEventDamagesDAMAGED_PRICE: TAbmesFloatField;
    qryExceptEventSTATE_CODE: TAbmesFloatField;
    qryExceptEventHAS_DOC_ITEMS: TAbmesFloatField;
    qryGetNewExceptEventCode: TAbmesSQLQuery;
    qryGetNewExceptEventNo: TAbmesSQLQuery;
    qryGetNewExceptEventNoNEW_EXCEPT_EVENT_NO: TAbmesFloatField;
    qryGetNewExceptEventCodeNEW_EXCEPT_EVENT_CODE: TAbmesFloatField;
    qryGetOMGeneratorData: TAbmesSQLQuery;
    qryExceptEventDMG_RESOLVE_REAL_WORKDAYS: TAbmesFloatField;
    qryExceptEventRESOLVE_REAL_WORKDAYS: TAbmesFloatField;
    qryExceptEventDamagesPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventDamagesPRODUCT_DOC_CODE: TAbmesFloatField;
    qryExceptEventDamagesPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryExceptEventsSTATE_CODE: TAbmesFloatField;
    qryExceptEventsPRODUCT_NO: TAbmesFloatField;
    qryIsDamageDescendantOf: TAbmesSQLQuery;
    qryIsDamageDescendantOfIS_DESCENDANT: TAbmesFloatField;
    qryMoveDamage: TAbmesSQLQuery;
    qryExceptEventDamagesLOCAL_NO: TAbmesFloatField;
    qryExceptEventDamagesSATISFIES_FILTER: TAbmesFloatField;
    qryExceptEventTasksSATISFIES_FILTER: TAbmesFloatField;
    qrySaleShipmentDataSINGLE_PRICE: TAbmesFloatField;
    qrySaleShipmentDataCURRENCY_ABBREV: TAbmesWideStringField;
    qryGetExceptEventDamageFullNo: TAbmesSQLQuery;
    qryGetExceptEventDamageFullNoEXCEPT_EVENT_DAMAGE_FULL_NO: TAbmesWideStringField;
    qryMLLSale: TAbmesSQLQuery;
    qryMLLSaleSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMLLSaleSALE_OBJECT_CODE: TAbmesFloatField;
    qryMLLSaleSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    prvMllSale: TDataSetProvider;
    qryExceptEventsCREATE_TIME: TAbmesSQLTimeStampField;
    qryExceptEventIndicatorCounts: TAbmesSQLQuery;
    prvExceptEventIndicatorCounts: TDataSetProvider;
    qryExceptEventIndicatorCountsEE_NOT_ACCEPTED: TAbmesFloatField;
    qryExceptEventIndicatorCountsEE_NOT_ACTIVATED: TAbmesFloatField;
    qryExceptEventIndicatorCountsEE_ACTIVATED: TAbmesFloatField;
    qryExceptEventIndicatorCountsEE_CTRL_EMP_NOT_ACCEPTED: TAbmesFloatField;
    qryExceptEventIndicatorCountsEE_CTRL_EMP_NOT_ACTIVATED: TAbmesFloatField;
    qryExceptEventIndicatorCountsEE_CTRL_EMP_ACTIVATED: TAbmesFloatField;
    qryExceptEventIndicatorCountsEE_CTRL_DEPT_NOT_ACCEPTED: TAbmesFloatField;
    qryExceptEventIndicatorCountsEE_CTRL_DEPT_NOT_ACTIVATED: TAbmesFloatField;
    qryExceptEventIndicatorCountsEE_CTRL_DEPT_ACTIVATED: TAbmesFloatField;
    qryExceptEventTaskIndicatorCounts: TAbmesSQLQuery;
    prvExceptEventTaskIndicatorCounts: TDataSetProvider;
    qryExceptEventTaskIndicatorCountsEET_REAL_EMP_NOT_ACTIVATED: TAbmesFloatField;
    qryExceptEventTaskIndicatorCountsEET_REAL_EMP_ACTIVATED: TAbmesFloatField;
    qryExceptEventTaskIndicatorCountsEET_REAL_EMP_PROBLEMS: TAbmesFloatField;
    qryExceptEventTaskIndicatorCountsEET_REAL_DEPT_NOT_ACTIVATED: TAbmesFloatField;
    qryExceptEventTaskIndicatorCountsEET_REAL_DEPT_ACTIVATED: TAbmesFloatField;
    qryExceptEventTaskIndicatorCountsEET_REAL_DEPT_PROBLEMS: TAbmesFloatField;
    qryExceptEventTaskIndicatorCountsEET_CTRL_NOT_ACTIVATED: TAbmesFloatField;
    qryExceptEventTaskIndicatorCountsEET_CTRL_ACTIVATED: TAbmesFloatField;
    qryExceptEventTaskIndicatorCountsEET_CTRL_PROBLEMS: TAbmesFloatField;
    qryExceptEventTaskIndicatorCountsEET_CTRL_EMP_NOT_ACTIVATED: TAbmesFloatField;
    qryExceptEventTaskIndicatorCountsEET_CTRL_EMP_ACTIVATED: TAbmesFloatField;
    qryExceptEventTaskIndicatorCountsEET_CTRL_EMP_PROBLEMS: TAbmesFloatField;
    qryExceptEventTaskIndicatorCountsEET_CTRL_DEPT_NOT_ACTIVATED: TAbmesFloatField;
    qryExceptEventTaskIndicatorCountsEET_CTRL_DEPT_ACTIVATED: TAbmesFloatField;
    qryExceptEventTaskIndicatorCountsEET_CTRL_DEPT_PROBLEMS: TAbmesFloatField;
    qryGetSaleGeneratorData: TAbmesSQLQuery;
    qryGetDeliveryGeneratorData: TAbmesSQLQuery;
    qryGetDeliveryGeneratorDataPRODUCT_CODE: TAbmesFloatField;
    qryGetDeliveryGeneratorDataPRODUCT_QUANTITY: TAbmesFloatField;
    qryGetSaleGeneratorDataPRODUCT_CODE: TAbmesFloatField;
    qryGetSaleGeneratorDataPRODUCT_QUANTITY: TAbmesFloatField;
    qryGetOMGeneratorDataPRODUCT_CODE: TAbmesFloatField;
    qryGetOMGeneratorDataPRODUCT_QUANTITY: TAbmesFloatField;
    qryExceptEventSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventSALE_OBJECT_CODE: TAbmesFloatField;
    qryExceptEventDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventDCD_OBJECT_CODE: TAbmesFloatField;
    qryExceptEventDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qryExceptEventPRODUCT_QUANTITY: TAbmesFloatField;
    qryExceptEventEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField;
    qryExceptEventLevels: TAbmesSQLQuery;
    prvExceptEventLevels: TDataSetProvider;
    qryExceptEventLevelsEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField;
    qryExceptEventLevelsEXCEPT_EVENT_LEVEL_NO: TAbmesFloatField;
    qryExceptEventLevelsEXCEPT_EVENT_LEVEL_NAME: TAbmesWideStringField;
    qryExceptEventLevelsEXCEPT_EVENT_LEVEL_ABBREV: TAbmesWideStringField;
    qryExceptEventsEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField;
    qryExceptEventsEXCEPT_EVENT_LEVEL_ABBREV: TAbmesWideStringField;
    qryExceptEventHAS_CAUSES: TAbmesFloatField;
    qryExceptEventHAS_CONSEQUENCES: TAbmesFloatField;
    qryExceptEventGenTypes: TAbmesSQLQuery;
    qryExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_CODE: TAbmesFloatField;
    qryExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_NO: TAbmesFloatField;
    qryExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_NAME: TAbmesWideStringField;
    qryExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_ABBREV: TAbmesWideStringField;
    prvExceptEventGenTypes: TDataSetProvider;
    qryExceptEventPRODUCT_MEASURE_CODE: TAbmesFloatField;
    qryGeneratorData: TAbmesSQLQuery;
    prvGeneratorData: TDataSetProvider;
    qryGeneratorDataOM_BRANCH_CODE: TAbmesFloatField;
    qryGeneratorDataOM_CODE: TAbmesFloatField;
    qryGeneratorDataOM_SALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryGeneratorDataOM_SALE_OBJECT_CODE: TAbmesFloatField;
    qryGeneratorDataOM_SALE_ORDER_TYPE_CODE: TAbmesFloatField;
    qryGeneratorDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryGeneratorDataSALE_OBJECT_CODE: TAbmesFloatField;
    qryGeneratorDataDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryGeneratorDataDCD_OBJECT_CODE: TAbmesFloatField;
    qryGeneratorDataDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qryGeneratorDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryGeneratorDataOM_IDENTIFIER: TAbmesWideStringField;
    qryExceptEventORG_TASK_PROPOSAL_CODE: TAbmesFloatField;
    qryExceptEventOTP_BIND_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventOTP_BIND_DATE: TAbmesSQLTimeStampField;
    qryExceptEventOTP_BIND_TIME: TAbmesSQLTimeStampField;
    qryGeneratorDataREQUEST_BRANCH_CODE: TAbmesFloatField;
    qryGeneratorDataREQUEST_NO: TAbmesFloatField;
    qryExceptEventsHAS_CAUSES: TAbmesFloatField;
    qryExceptEventsHAS_CONSEQUENCES: TAbmesFloatField;
    qryExceptEventsEXCEPT_EVENT_GEN_TYPE_ABBREV: TAbmesWideStringField;
    qryExceptEventsORG_TASK_PROPOSAL_CODE: TAbmesFloatField;
    qryExceptEventsORG_TASK_PROPOSAL_NO: TAbmesFloatField;
    qryExceptEventsOTP_DOC_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventsOTP_DOC_CODE: TAbmesFloatField;
    qryExceptEventsOTP_HAS_DOC_ITEMS: TAbmesFloatField;
    qryExceptEventsOTP_BIND_EMPLOYEE_CODE: TAbmesFloatField;
    qryExceptEventsOTP_BIND_DATE: TAbmesSQLTimeStampField;
    qryExceptEventsOTP_BIND_TIME: TAbmesSQLTimeStampField;
    qryExceptEventsDEPT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventsDEPT_DOC_CODE: TAbmesFloatField;
    qryExceptEventsDEPT_HAS_DOC_ITEMS: TAbmesFloatField;
    qryExceptEventsDEPT_NAME: TAbmesWideStringField;
    qryExceptEventsDETECT_DEPT_NAME: TAbmesWideStringField;
    qryExceptEventsCTRL_DEPT_NAME: TAbmesWideStringField;
    qryGetOMGeneratorDataDEPT_CODE: TAbmesFloatField;
    qryExceptEventsPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryGetExceptEventCodeByNo: TAbmesSQLQuery;
    qryGetExceptEventCodeByNoEXCEPT_EVENT_CODE: TAbmesFloatField;
    qryInsExceptEventCauses: TAbmesSQLQuery;
    qryInsExceptEventConsequences: TAbmesSQLQuery;
    qryDelExceptEventCauses: TAbmesSQLQuery;
    qryDelExceptEventConsequences: TAbmesSQLQuery;
    qryGeneratorDataGENERATOR_PRODUCT_QUANTITY: TAbmesFloatField;
    qryExceptEventsPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField;
    qryExceptEventPRC_CONCRETE_OP_CODE: TAbmesFloatField;
    qryExceptEventsPRODUCT_QUANTITY: TAbmesFloatField;
    qryExceptEventsPRODUCT_MEASURE_ABBREV: TAbmesWideStringField;
    qryExceptEventTypesEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    qryExceptEventTypesPARENT_EXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    qryExceptEventTypesEXCEPT_EVENT_TYPE_LOCAL_NO: TAbmesFloatField;
    qryExceptEventTypesEXCEPT_EVENT_TYPE_NAME: TAbmesWideStringField;
    qryExceptEventTypesEXCEPT_EVENT_TYPE_SHORT_NAME: TAbmesWideStringField;
    qryExceptEventTypesIS_GROUP: TAbmesFloatField;
    qryExceptEventTypesEE_TYPE_FULL_NO: TAbmesWideStringField;
    qryExceptEventTypesEE_TYPE_FORMATTED_FULL_NO: TAbmesWideStringField;
    qryExceptEventTypesDOC_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventTypesDOC_CODE: TAbmesFloatField;
    qryExceptEventTypesHAS_DOC_ITEMS: TAbmesFloatField;
    qryExceptEventTypesPrintTree: TAbmesSQLQuery;
    qryExceptEventTypesPrintTreeNODE_ID: TAbmesFloatField;
    qryExceptEventTypesPrintTreePARENT_NODE_ID: TAbmesFloatField;
    qryExceptEventTypesPrintTreeNODE_NAME: TAbmesWideStringField;
    qryExceptEventTypesPrintTreeFORMATED_NODE_NO: TAbmesWideStringField;
    qryExceptEventTypesPrintTreeNODE_LEVEL: TAbmesFloatField;
    qryExceptEventTypesPrintTreeNODE_CHILD_COUNT: TAbmesFloatField;
    qryExceptEventTypesPrintTreeNODE_TYPE: TAbmesFloatField;
    qryExceptEventTypesPrintTreeIS_LAST_CHILD: TAbmesFloatField;
    qryExceptEventTypesPrintTreeHAS_CHILDREN: TAbmesFloatField;
    prvExceptEventTypesPrintTree: TDataSetProvider;
    qryExceptEventType: TAbmesSQLQuery;
    prvExceptEventType: TDataSetProvider;
    qryExceptEventTypeEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    qryExceptEventTypePARENT_EXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    qryExceptEventTypeEXCEPT_EVENT_TYPE_LOCAL_NO: TAbmesFloatField;
    qryExceptEventTypeEXCEPT_EVENT_TYPE_NAME: TAbmesWideStringField;
    qryExceptEventTypeEXCEPT_EVENT_TYPE_SHORT_NAME: TAbmesWideStringField;
    qryExceptEventTypeIS_GROUP: TAbmesFloatField;
    qryExceptEventTypePARENT_FULL_NO: TAbmesWideStringField;
    qryExceptEventTypeDOC_BRANCH_CODE: TAbmesFloatField;
    qryExceptEventTypeDOC_CODE: TAbmesFloatField;
    qryExceptEventTypeHAS_DOC_ITEMS: TAbmesFloatField;
    qryGetNextExceptEventTypeNoNEXT_EXCEPT_EVENT_TYPE_NO: TAbmesFloatField;
    qryGetExceptEventTypeIsInstance: TAbmesSQLQuery;
    qryGetExceptEventTypeIsInstanceIS_INSTANCE: TAbmesFloatField;
    qryGetExceptEventTypeCodeByFullNo: TAbmesSQLQuery;
    qryGetExceptEventTypeCodeByFullNoEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField;
    qryExceptEventsCREATE_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField;
    qryExceptEventsDETECT_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField;
    qryExceptEventsPRODUCT_PSD_SINGLE_PRICE_IN_BC: TAbmesFloatField;
    qryExceptEventsEE_TYPE_FULL_NO: TAbmesWideStringField;
    qryExceptEventsCREATE_EMPLOYEE_NO: TAbmesFloatField;
    qryExceptEventsDETECT_EMPLOYEE_NO: TAbmesFloatField;
    qryExceptEventsEXCEPT_EVENT_CAUSES: TAbmesWideStringField;
    qryExceptEventsEXCEPT_EVENT_CONSEQUENCES: TAbmesWideStringField;
    qryExceptEventsPRODUCT_PSD_TOTAL_PRICE_IN_BC: TAbmesFloatField;
    qryDeliveryById: TAbmesSQLQuery;
    prvDeliveryById: TDataSetProvider;
    qryDeliveryByIdDCD_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryDeliveryByIdDCD_OBJECT_CODE: TAbmesFloatField;
    qryDeliveryByIdDELIVERY_PROJECT_CODE: TAbmesFloatField;
    qryExceptEventsIS_SINGLE_RESOLVABLE: TAbmesFloatField;
    qryExceptEventIS_SINGLE_RESOLVABLE: TAbmesFloatField;
    qryExceptEventTaskEE_TASK_RESOLVE_TYPE_CODE: TAbmesFloatField;
    qryEETaskResolveTypes: TAbmesSQLQuery;
    qryEETaskResolveTypesEE_TASK_RESOLVE_TYPE_CODE: TAbmesFloatField;
    qryEETaskResolveTypesEE_TASK_RESOLVE_TYPE_NO: TAbmesFloatField;
    qryEETaskResolveTypesEE_TASK_RESOLVE_TYPE_NAME: TAbmesWideStringField;
    qryEETaskResolveTypesEE_TASK_RESOLVE_TYPE_ABBREV: TAbmesWideStringField;
    prvEETaskResolveTypes: TDataSetProvider;
    qryExceptEventTasksEE_TASK_RESOLVE_TYPE_SHOW_NAME: TAbmesWideStringField;
    qryExceptEventsIS_ACTIVATED: TAbmesFloatField;
    qryExceptEventsIS_CLOSED: TAbmesFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryExceptEventTaskAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure prvExceptEventTaskAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvExceptEventTaskBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvExceptEventTaskBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvExceptEventDamageBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryExceptEventAfterProviderStartTransaction(DataSet: TDataSet);
    procedure prvExceptEventBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvExceptEventAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvExceptEventBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryExceptEventsBeforeOpen(DataSet: TDataSet);
    procedure qryExceptEventsAfterClose(DataSet: TDataSet);
    procedure prvExceptEventIndicatorCountsBeforeGetRecords(
      Sender: TObject; var OwnerData: OleVariant);
    procedure prvExceptEventTaskIndicatorCountsBeforeGetRecords(
      Sender: TObject; var OwnerData: OleVariant);
    procedure qryExceptEventTypeAfterProviderStartTransaction(DataSet: TDataSet);
    procedure prvExceptEventTypeAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure prvExceptEventTypeBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
  private
    FDocsDelta: Variant;
    procedure AssignChangeFields(ADataSet: TCustomClientDataSet);
    function ExceptEventsArrayToString(AExceptEvents: OleVariant): string;
    procedure UpdateExceptEventsRelations(AExceptEventCode: Integer;
      AExceptEvents: OleVariant; AQuery: TAbmesSQLQuery);
  protected
    function GetNewExceptEventTypeCode: Integer;
    function GetNextExceptEventTypeNo(AParentExceptEventTypeCode: Integer): Integer;
    function GetExceptEventTypeCodeByFullNo(const AExceptEventTypeFullNo: string): Integer;
    function GetExceptEventTypeIsInstance(AExceptEventTypeCode: Integer): Boolean;
    function GetNewExceptEventTaskCode: Integer;
    function GetNextExceptEventTaskNo(AExceptEventCode: Integer): Integer;
    function GetNewExceptEventDamageAttackCode: Integer;
    function GetNewExceptEventDamageCode: Integer;
    function GetNextExceptEventDamageLocalNo(AExceptEventCode, AParentCode: Integer): Integer;
    function GetNewExceptEventCode: Integer;
    function GetNewExceptEventNo: Integer;
    procedure GetOMGeneratorData(AOMBranchCode, AOMCode: Integer;
      out ProductCode: Integer; out ProductQuantity: Double; out DeptCode: Integer);
    procedure GetSaleGeneratorData(ASaleObjectBranchCode, ASaleObjectCode: Integer;
      out ProductCode: Integer; out ProductQuantity: Double);
    procedure GetDeliveryGeneratorData(ADCDObjectBranchCode, ADCDObjectCode, ADeliveryProjectCode: Integer;
      out ProductCode: Integer; out ProductQuantity: Double);
    function IsDamageDescendantOf(AExceptEventDamageCode, AParentCode: Integer): Boolean;
    procedure MoveDamage(AExceptEventDamageCode, AParentDamageCode, AExceptEventCode, ALocalNo: Integer);
    function GetExceptEventDamageFullNo(AExceptEventDamageCode: Integer): string;
    function GetExceptEventCodeByNo(AExceptEventNo: Integer): Integer;
    procedure AttachExceptEventCauses(AExceptEventCode: Integer; ACauseExceptEvents: OleVariant);
    procedure AttachExceptEventConsequences(AExceptEventCode: Integer; AConsequenceExceptEvents: OleVariant);
    procedure DetachExceptEventCauses(AExceptEventCode: Integer; ACauseExceptEvents: OleVariant);
    procedure DetachExceptEventConsequences(AExceptEventCode: Integer; AConsequenceExceptEvents: OleVariant);
  end;

type
  IdmExceptEventsProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmExceptEventsProxy = class(TDBPooledDataModuleProxy, IdmExceptEventsProxy)
  private
    class var FSingleton: TdmExceptEventsProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmExceptEvents>;
  strict protected
    property LockedInstance: ISmartLock<TdmExceptEvents> read GetLockedInstance;
  public
    class property Singleton: TdmExceptEventsProxy read FSingleton;

    function GetNewExceptEventTypeCode: Integer;
    function GetNextExceptEventTypeNo(AParentExceptEventTypeCode: Integer): Integer;
    function GetExceptEventTypeCodeByFullNo(const AExceptEventTypeFullNo: string): Integer;
    function GetExceptEventTypeIsInstance(AExceptEventTypeCode: Integer): Boolean;
    function GetNewExceptEventTaskCode: Integer;
    function GetNextExceptEventTaskNo(AExceptEventCode: Integer): Integer;
    function GetNewExceptEventDamageAttackCode: Integer;
    function GetNewExceptEventDamageCode: Integer;
    function GetNextExceptEventDamageLocalNo(AExceptEventCode, AParentCode: Integer): Integer;
    function GetNewExceptEventCode: Integer;
    function GetNewExceptEventNo: Integer;
    procedure GetOMGeneratorData(AOMBranchCode, AOMCode: Integer;
      out ProductCode: Integer; out ProductQuantity: Double; out DeptCode: Integer);
    procedure GetSaleGeneratorData(ASaleObjectBranchCode, ASaleObjectCode: Integer;
      out ProductCode: Integer; out ProductQuantity: Double);
    procedure GetDeliveryGeneratorData(ADCDObjectBranchCode, ADCDObjectCode, ADeliveryProjectCode: Integer;
      out ProductCode: Integer; out ProductQuantity: Double);
    function IsDamageDescendantOf(AExceptEventDamageCode, AParentCode: Integer): Boolean;
    procedure MoveDamage(AExceptEventDamageCode, AParentDamageCode, AExceptEventCode, ALocalNo: Integer);
    function GetExceptEventDamageFullNo(AExceptEventDamageCode: Integer): string;
    function GetExceptEventCodeByNo(AExceptEventNo: Integer): Integer;
    procedure AttachExceptEventCauses(AExceptEventCode: Integer; ACauseExceptEvents: OleVariant);
    procedure AttachExceptEventConsequences(AExceptEventCode: Integer; AConsequenceExceptEvent: OleVariant);
    procedure DetachExceptEventCauses(AExceptEventCode: Integer; ACauseExceptEvents: OleVariant);
    procedure DetachExceptEventConsequences(AExceptEventCode: Integer; AConsequenceExceptEvents: OleVariant);
  end;

implementation

uses
  Variants, uDBPooledDataModuleHelper, DateUtils, uUtils, uSvrUtils,
  uSessionContext;

{$R *.dfm}

{ TdmExceptEventsProxy }

function TdmExceptEventsProxy.GetLockedInstance: ISmartLock<TdmExceptEvents>;
begin
  Result:= ISmartLock<TdmExceptEvents>(inherited LockedInstance);
end;

function TdmExceptEventsProxy.GetNewExceptEventTypeCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewExceptEventTypeCode;
end;

function TdmExceptEventsProxy.GetNextExceptEventTypeNo(AParentExceptEventTypeCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNextExceptEventTypeNo(AParentExceptEventTypeCode);
end;

function TdmExceptEventsProxy.GetExceptEventTypeCodeByFullNo(const AExceptEventTypeFullNo: string): Integer;
begin
  Result:= LockedInstance.Value.GetExceptEventTypeCodeByFullNo(AExceptEventTypeFullNo);
end;

function TdmExceptEventsProxy.GetExceptEventTypeIsInstance(AExceptEventTypeCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.GetExceptEventTypeIsInstance(AExceptEventTypeCode);
end;

function TdmExceptEventsProxy.GetNewExceptEventTaskCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewExceptEventTaskCode;
end;

function TdmExceptEventsProxy.GetNextExceptEventTaskNo(AExceptEventCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNextExceptEventTaskNo(AExceptEventCode);
end;

function TdmExceptEventsProxy.GetNewExceptEventDamageAttackCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewExceptEventDamageAttackCode;
end;

function TdmExceptEventsProxy.GetNewExceptEventDamageCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewExceptEventDamageCode;
end;

function TdmExceptEventsProxy.GetNextExceptEventDamageLocalNo(AExceptEventCode, AParentCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetNextExceptEventDamageLocalNo(AExceptEventCode, AParentCode);
end;

function TdmExceptEventsProxy.GetNewExceptEventCode: Integer;
begin
  Result:= LockedInstance.Value.GetNewExceptEventCode;
end;

function TdmExceptEventsProxy.GetNewExceptEventNo: Integer;
begin
  Result:= LockedInstance.Value.GetNewExceptEventNo;
end;

procedure TdmExceptEventsProxy.GetOMGeneratorData(AOMBranchCode, AOMCode: Integer;
  out ProductCode: Integer; out ProductQuantity: Double; out DeptCode: Integer);
begin
  LockedInstance.Value.GetOMGeneratorData(AOMBranchCode, AOMCode, ProductCode, ProductQuantity, DeptCode);
end;

procedure TdmExceptEventsProxy.GetSaleGeneratorData(ASaleObjectBranchCode, ASAleObjectCode: Integer;
  out ProductCode: Integer; out ProductQuantity: Double);
begin
  LockedInstance.Value.GetSaleGeneratorData(ASaleObjectBranchCode, ASAleObjectCode, ProductCode, ProductQuantity);
end;

procedure TdmExceptEventsProxy.GetDeliveryGeneratorData(ADCDObjectBranchCode, ADCDObjectCode, ADeliveryProjectCode: Integer;
  out ProductCode: Integer; out ProductQuantity: Double);
begin
  LockedInstance.Value.GetDeliveryGeneratorData(ADCDObjectBranchCode, ADCDObjectCode, ADeliveryProjectCode, ProductCode, ProductQuantity);
end;

function TdmExceptEventsProxy.IsDamageDescendantOf(AExceptEventDamageCode, AParentCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.IsDamageDescendantOf(AExceptEventDamageCode, AParentCode);
end;

procedure TdmExceptEventsProxy.MoveDamage(AExceptEventDamageCode, AParentDamageCode,
  AExceptEventCode, ALocalNo: Integer);
begin
  LockedInstance.Value.MoveDamage(AExceptEventDamageCode, AParentDamageCode, AExceptEventCode, ALocalNo);
end;

function TdmExceptEventsProxy.GetExceptEventDamageFullNo(AExceptEventDamageCode: Integer): string;
begin
  Result:= LockedInstance.Value.GetExceptEventDamageFullNo(AExceptEventDamageCode);
end;

function TdmExceptEventsProxy.GetExceptEventCodeByNo(AExceptEventNo: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetExceptEventCodeByNo(AExceptEventNo);
end;

procedure TdmExceptEventsProxy.AttachExceptEventCauses(AExceptEventCode: Integer; ACauseExceptEvents: OleVariant);
begin
  LockedInstance.Value.AttachExceptEventCauses(AExceptEventCode, ACauseExceptEvents);
end;

procedure TdmExceptEventsProxy.AttachExceptEventConsequences(AExceptEventCode: Integer; AConsequenceExceptEvent: OleVariant);
begin
  LockedInstance.Value.AttachExceptEventConsequences(AExceptEventCode, AConsequenceExceptEvent);
end;

procedure TdmExceptEventsProxy.DetachExceptEventCauses(AExceptEventCode: Integer; ACauseExceptEvents: OleVariant);
begin
  LockedInstance.Value.DetachExceptEventCauses(AExceptEventCode, ACauseExceptEvents);
end;

procedure TdmExceptEventsProxy.DetachExceptEventConsequences(AExceptEventCode: Integer; AConsequenceExceptEvents: OleVariant);
begin
  LockedInstance.Value.DetachExceptEventConsequences(AExceptEventCode, AConsequenceExceptEvents);
end;

{ TdmExceptEvents }

procedure TdmExceptEvents.DataModuleCreate(Sender: TObject);
begin
  RegisterMacroLibrary(mshLocalMacroLibrary);
  inherited;
end;

procedure TdmExceptEvents.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  UnregisterMacroLibrary(mshLocalMacroLibrary);
end;

function TdmExceptEvents.GetNewExceptEventTypeCode: Integer;
begin
  Result:=
    qryGetNewExceptEventTypeCode.TempOpen/
      qryGetNewExceptEventTypeCodeNEW_EXCEPT_EVENT_TYPE_CODE.AsIntegerFunc;
end;

function TdmExceptEvents.GetNextExceptEventTypeNo(AParentExceptEventTypeCode: Integer): Integer;
begin
  qryGetNextExceptEventTypeNo.ParamByName('PARENT_EXCEPT_EVENT_TYPE_CODE').AsInteger:= AParentExceptEventTypeCode;
  Result:=
    qryGetNextExceptEventTypeNo.TempOpen/
      qryGetNextExceptEventTypeNoNEXT_EXCEPT_EVENT_TYPE_NO.AsIntegerFunc;
end;

function TdmExceptEvents.GetExceptEventTypeCodeByFullNo(const AExceptEventTypeFullNo: string): Integer;
begin
  qryGetExceptEventTypeCodeByFullNo.ParamByName('EE_TYPE_FULL_NO').AsString:= AExceptEventTypeFullNo;
  Result:=
    qryGetExceptEventTypeCodeByFullNo.TempOpen/
      qryGetExceptEventTypeCodeByFullNoEXCEPT_EVENT_TYPE_CODE.AsIntegerFunc;
end;

function TdmExceptEvents.GetExceptEventTypeIsInstance(AExceptEventTypeCode: Integer): Boolean;
begin
  qryGetExceptEventTypeIsInstance.ParamByName('EXCEPT_EVENT_TYPE_CODE').AsInteger:= AExceptEventTypeCode;
  Result:=
    qryGetExceptEventTypeIsInstance.TempOpen/
      qryGetExceptEventTypeIsInstanceIS_INSTANCE.AsBooleanFunc;
end;

function TdmExceptEvents.GetNewExceptEventTaskCode: Integer;
begin
  Result:=
    qryGetNewExceptEventTaskCode.TempOpen/
      qryGetNewExceptEventTaskCodeNEW_EXCEPT_EVENT_TASK_CODE.AsIntegerFunc;
end;

function TdmExceptEvents.GetNextExceptEventTaskNo(AExceptEventCode: Integer): Integer;
begin
  qryGetNextExceptEventTaskNo.ParamByName('EXCEPT_EVENT_CODE').AsInteger:= AExceptEventCode;
  Result:=
    qryGetNextExceptEventTaskNo.TempOpen/
      qryGetNextExceptEventTaskNoNEXT_EXCEPT_EVENT_TASK_NO.AsIntegerFunc;
end;

function TdmExceptEvents.GetNewExceptEventDamageAttackCode: Integer;
begin
  Result:=
    qryGetNewExceptEventDamageAttackCode.TempOpen/
      qryGetNewExceptEventDamageAttackCodeNEW_EE_DMG_ATTACK_CODE.AsIntegerFunc;
end;

function TdmExceptEvents.GetNewExceptEventDamageCode: Integer;
begin
  Result:=
    qryGetNewExceptEventDamageCode.TempOpen/
      qryGetNewExceptEventDamageCodeNEW_EXCEPT_EVENT_DAMAGE_CODE.AsIntegerFunc;
end;

function TdmExceptEvents.GetNextExceptEventDamageLocalNo(AExceptEventCode, AParentCode: Integer): Integer;
begin
  qryGetNextExceptEventDamageLocalNo.ParamByName('EXCEPT_EVENT_CODE').AsInteger:= AExceptEventCode;
  qryGetNextExceptEventDamageLocalNo.ParamByName('PARENT_CODE').AsInteger:= AParentCode;
  Result:=
    qryGetNextExceptEventDamageLocalNo.TempOpen/
      qryGetNextExceptEventDamageLocalNoNEXT_EE_DAMAGE_LOCAL_NO.AsIntegerFunc;
end;

function TdmExceptEvents.GetNewExceptEventCode: Integer;
begin
  Result:=
    qryGetNewExceptEventCode.TempOpen/
      qryGetNewExceptEventCodeNEW_EXCEPT_EVENT_CODE.AsIntegerFunc;
end;

function TdmExceptEvents.GetNewExceptEventNo: Integer;
begin
  Result:=
    qryGetNewExceptEventNo.TempOpen/
      qryGetNewExceptEventNoNEW_EXCEPT_EVENT_NO.AsIntegerFunc;
end;

procedure TdmExceptEvents.GetOMGeneratorData(AOMBranchCode, AOMCode: Integer;
  out ProductCode: Integer; out ProductQuantity: Double; out DeptCode: Integer);
begin
  qryGetOMGeneratorData.ParamByName('OM_BRANCH_CODE').AsInteger:= AOMBranchCode;
  qryGetOMGeneratorData.ParamByName('OM_CODE').AsInteger:= AOMCode;
  qryGetOMGeneratorData.Open;
  try
    ProductCode:= qryGetOMGeneratorDataPRODUCT_CODE.AsInteger;
    ProductQuantity:= qryGetOMGeneratorDataPRODUCT_QUANTITY.AsFloat;
    DeptCode:= qryGetOMGeneratorDataDEPT_CODE.AsInteger;
  finally
    qryGetOMGeneratorData.Close;
  end;  { try }
end;

procedure TdmExceptEvents.GetSaleGeneratorData(ASaleObjectBranchCode, ASaleObjectCode: Integer;
  out ProductCode: Integer; out ProductQuantity: Double);
begin
  qryGetSaleGeneratorData.ParamByName('SALE_OBJECT_BRANCH_CODE').AsInteger:= ASaleObjectBranchCode;
  qryGetSaleGeneratorData.ParamByName('SALE_OBJECT_CODE').AsInteger:= ASaleObjectCode;
  qryGetSaleGeneratorData.Open;
  try
    ProductCode:= qryGetSaleGeneratorDataPRODUCT_CODE.AsInteger;
    ProductQuantity:= qryGetSaleGeneratorDataPRODUCT_QUANTITY.AsFloat;
  finally
    qryGetSaleGeneratorData.Close;
  end;  { try }
end;

procedure TdmExceptEvents.GetDeliveryGeneratorData(ADCDObjectBranchCode, ADCDObjectCode, ADeliveryProjectCode: Integer;
  out ProductCode: Integer; out ProductQuantity: Double);
begin
  qryGetDeliveryGeneratorData.ParamByName('DCD_OBJECT_BRANCH_CODE').AsInteger:= ADCDObjectBranchCode;
  qryGetDeliveryGeneratorData.ParamByName('DCD_OBJECT_CODE').AsInteger:= ADCDObjectCode;
  qryGetDeliveryGeneratorData.ParamByName('DELIVERY_PROJECT_CODE').AsInteger:= ADeliveryProjectCode;
  qryGetDeliveryGeneratorData.Open;
  try
    ProductCode:= qryGetDeliveryGeneratorDataPRODUCT_CODE.AsInteger;
    ProductQuantity:= qryGetDeliveryGeneratorDataPRODUCT_QUANTITY.AsFloat;
  finally
    qryGetDeliveryGeneratorData.Close;
  end;  { try }
end;

function TdmExceptEvents.IsDamageDescendantOf(AExceptEventDamageCode, AParentCode: Integer): Boolean;
begin
  qryIsDamageDescendantOf.ParamByName('DESCENDANT_EE_DAMAGE_CODE').AsInteger:= AExceptEventDamageCode;
  qryIsDamageDescendantOf.ParamByName('ANCESTOR_EE_DAMAGE_CODE').AsInteger:= AParentCode;
  Result:=
    qryIsDamageDescendantOf.TempOpen/
      qryIsDamageDescendantOfIS_DESCENDANT.AsBooleanFunc;
end;

procedure TdmExceptEvents.MoveDamage(AExceptEventDamageCode, AParentDamageCode, AExceptEventCode, ALocalNo: Integer);
begin
  qryMoveDamage.ParamByName('EXCEPT_EVENT_DAMAGE_CODE').AsInteger:= AExceptEventDamageCode;
  qryMoveDamage.ParamByName('PARENT_CODE').Value:= IntToVar(AParentDamageCode);
  qryMoveDamage.ParamByName('EXCEPT_EVENT_CODE').AsInteger:= AExceptEventCode;
  qryMoveDamage.ParamByName('LOCAL_NO').AsInteger:= ALocalNo;
  qryMoveDamage.ExecSQL;
  Assert(qryMoveDamage.RowsAffected = 1);
end;

function TdmExceptEvents.GetExceptEventDamageFullNo(AExceptEventDamageCode: Integer): string;
begin
  qryGetExceptEventDamageFullNo.ParamByName('EXCEPT_EVENT_DAMAGE_CODE').AsInteger:= AExceptEventDamageCode;
  Result:=
    qryGetExceptEventDamageFullNo.TempOpen/
      qryGetExceptEventDamageFullNoEXCEPT_EVENT_DAMAGE_FULL_NO.AsStringFunc;
end;

function TdmExceptEvents.GetExceptEventCodeByNo(AExceptEventNo: Integer): Integer;
begin
  qryGetExceptEventCodeByNo.ParamByName('EXCEPT_EVENT_NO').AsInteger:= AExceptEventNo;
  Result:=
    qryGetExceptEventCodeByNo.TempOpen/
      qryGetExceptEventCodeByNoEXCEPT_EVENT_CODE.AsIntegerFunc;
end;

function TdmExceptEvents.ExceptEventsArrayToString(AExceptEvents: OleVariant): string;
var
  i: Integer;
begin
  Assert(VarIsArray(AExceptEvents));

  for i:= VarArrayLowBound(AExceptEvents, 1) to VarArrayHighBound(AExceptEvents, 1) do
    Assert(VarIsType(AExceptEvents[i], varInteger));

  Result:= '';
  for i:= VarArrayLowBound(AExceptEvents, 1) to VarArrayHighBound(AExceptEvents, 1) do
    Result:= Result + VarToStr(AExceptEvents[i]) + ', ';

  if (Result <> '') then
    SetLength(Result, Length(Result) - 2);
end;

procedure TdmExceptEvents.UpdateExceptEventsRelations(AExceptEventCode: Integer; AExceptEvents: OleVariant; AQuery: TAbmesSQLQuery);
begin
  AQuery.ParamByName('EXCEPT_EVENT_CODE').AsInteger:= AExceptEventCode;
  AQuery.MacroByName('EXCEPT_EVENTS_SET').AsString:= ExceptEventsArrayToString(AExceptEvents);
  AQuery.ExecSQL;
end;

procedure TdmExceptEvents.AttachExceptEventCauses(AExceptEventCode: Integer; ACauseExceptEvents: OleVariant);
begin
  UpdateExceptEventsRelations(AExceptEventCode, ACauseExceptEvents, qryInsExceptEventCauses);
end;

procedure TdmExceptEvents.AttachExceptEventConsequences(AExceptEventCode: Integer; AConsequenceExceptEvents: OleVariant);
begin
  UpdateExceptEventsRelations(AExceptEventCode, AConsequenceExceptEvents, qryInsExceptEventConsequences);
end;

procedure TdmExceptEvents.DetachExceptEventCauses(AExceptEventCode: Integer; ACauseExceptEvents: OleVariant);
begin
  UpdateExceptEventsRelations(AExceptEventCode, ACauseExceptEvents, qryDelExceptEventCauses);
end;

procedure TdmExceptEvents.DetachExceptEventConsequences(AExceptEventCode: Integer; AConsequenceExceptEvents: OleVariant);
begin
  UpdateExceptEventsRelations(AExceptEventCode, AConsequenceExceptEvents, qryDelExceptEventConsequences);
end;

procedure TdmExceptEvents.prvExceptEventAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmExceptEvents.prvExceptEventTaskAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmExceptEvents.prvExceptEventBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmExceptEvents.prvExceptEventTaskBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmExceptEvents.qryExceptEventAfterProviderStartTransaction(DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmExceptEvents.qryExceptEventTaskAfterProviderStartTransaction(DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmExceptEvents.qryExceptEventTypeAfterProviderStartTransaction(DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmExceptEvents.AssignChangeFields(ADataSet: TCustomClientDataSet);
var
  CurrentDateTime: TDateTime;
begin
  CurrentDateTime:= ContextNow;
  ADataSet.FieldByName('CHANGE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
  ADataSet.FieldByName('CHANGE_DATE').NewValue:= DateOf(CurrentDateTime);
  ADataSet.FieldByName('CHANGE_TIME').NewValue:= TimeOf(CurrentDateTime);
end;

procedure TdmExceptEvents.prvExceptEventTaskBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  if (UpdateKind <> ukDelete) then
    AssignChangeFields(DeltaDS);
end;

procedure TdmExceptEvents.prvExceptEventTaskIndicatorCountsBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  SessionContext.PreserveLastActivityDateTime;
end;

procedure TdmExceptEvents.prvExceptEventTypeAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmExceptEvents.prvExceptEventTypeBeforeApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmExceptEvents.prvExceptEventDamageBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if (UpdateKind <> ukDelete) and Assigned(DeltaDS.FindField('CHANGE_EMPLOYEE_CODE')) then
    AssignChangeFields(DeltaDS);
end;

procedure TdmExceptEvents.prvExceptEventIndicatorCountsBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  SessionContext.PreserveLastActivityDateTime;
end;

procedure TdmExceptEvents.prvExceptEventBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  inherited;
  if (UpdateKind <> ukDelete) then
    AssignChangeFields(DeltaDS);
end;

procedure TdmExceptEvents.qryExceptEventsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetCurrentDeptIfNeeded((DataSet as TAbmesSQLQuery).Params.ParamByName('DEPT_CODE'), LoginContext);
  SetCurrentDeptIfNeeded((DataSet as TAbmesSQLQuery).Params.ParamByName('DETECT_DEPT_CODE'), LoginContext);
  SetCurrentDeptIfNeeded((DataSet as TAbmesSQLQuery).Params.ParamByName('CTRL_DEPT_CODE'), LoginContext);
  SetCurrentDeptIfNeeded((DataSet as TAbmesSQLQuery).Params.ParamByName('TASK_DEPT_CODE'), LoginContext);


  ProcessUserParamBeforeQueryOpen((DataSet as TAbmesSQLQuery).Params.ParamByName('CREATE_EMPLOYEE_CODE'), LoginContext);
  ProcessUserParamBeforeQueryOpen((DataSet as TAbmesSQLQuery).Params.ParamByName('DETECT_EMPLOYEE_CODE'), LoginContext);
  ProcessUserParamBeforeQueryOpen((DataSet as TAbmesSQLQuery).Params.ParamByName('CTRL_MAIN_EMPLOYEE_CODE'), LoginContext);
  ProcessUserParamBeforeQueryOpen((DataSet as TAbmesSQLQuery).Params.ParamByName('TASK_EMPLOYEE_CODE'), LoginContext);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmExceptEvents.qryExceptEventsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

initialization
  TdmExceptEventsProxy.FSingleton:= TdmExceptEventsProxy.Create(TdmExceptEvents);

finalization
  FreeAndNil(TdmExceptEventsProxy.FSingleton);
end.
