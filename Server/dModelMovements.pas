unit dModelMovements;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, AbmesClientDataSet, WideStrings, FMTBcd, SqlExpr,
  AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmModelMovements = class(TDBPooledDataModule)
    qryGetSaleObject: TAbmesSQLQuery;
    qryGetSaleGroupObject: TAbmesSQLQuery;
    qryGetSaleObjectOBJECT_BRANCH_CODE: TAbmesFloatField;
    qryGetSaleObjectOBJECT_CODE: TAbmesFloatField;
    qryGetSaleGroupObjectOBJECT_BRANCH_CODE: TAbmesFloatField;
    qryGetSaleGroupObjectOBJECT_CODE: TAbmesFloatField;
    qryGetBndMLObject: TAbmesSQLQuery;
    qryGetBndMLObjectML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryGetBndMLObjectML_OBJECT_CODE: TAbmesFloatField;
    qryGetMMCode: TAbmesSQLQuery;
    qryGetBoundMLLObject: TAbmesSQLQuery;
    qryGetBoundMLLObjectMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryGetBoundMLLObjectMLL_OBJECT_CODE: TAbmesFloatField;
    qryModelMovementTypes: TAbmesSQLQuery;
    qryModelMovementTypesMODEL_MOVEMENT_TYPE_CODE: TAbmesFloatField;
    qryModelMovementTypesMODEL_MOVEMENT_TYPE_ABBREV: TAbmesWideStringField;
    qryModelMovementTypesMODEL_MOVEMENT_TYPE_NAME: TAbmesWideStringField;
    prvModelMovementTypes: TDataSetProvider;
    qryModelMovementTypesMODEL_MOVEMENT_TYPE_IDENTIFIER: TAbmesWideStringField;
    qryModelMovements: TAbmesSQLQuery;
    prvModelMovements: TDataSetProvider;
    qryGetMMData: TAbmesSQLQuery;
    qryGetMMDataBOUND_TYPE: TAbmesFloatField;
    qryGetMMDataBOUND_BRANCH_CODE: TAbmesFloatField;
    qryGetMMDataBOUND_NUMBER: TAbmesFloatField;
    qryGetMMDataFORK_NO: TAbmesFloatField;
    qryGetMMDataFROM_STAGE_NO: TAbmesFloatField;
    qryModelMovementsMM_BRANCH_CODE: TAbmesFloatField;
    qryModelMovementsMM_CODE: TAbmesFloatField;
    qryModelMovementsMM_IDENTIFIER: TAbmesWideStringField;
    qryModelMovementsMM_DATE: TAbmesSQLTimeStampField;
    qryModelMovementsDETAIL_NAME: TAbmesWideStringField;
    qryModelMovementsDETAIL_CUSTOM_CODE: TAbmesFloatField;
    qryModelMovementsDETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryModelMovementsMEASURE_ABBREV: TAbmesWideStringField;
    qryModelMovementsTOTAL_PRICE: TAbmesFloatField;
    qryModelMovementsIS_STORNO: TAbmesFloatField;
    qryGetStageNo: TAbmesSQLQuery;
    qryGetStageNoMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryGetStageNoMLL_OBJECT_CODE: TAbmesFloatField;
    qryGetStageNoML_MODEL_STAGE_NO: TAbmesFloatField;
    qryGetBndMLObjectIS_ARCHIVED: TAbmesFloatField;
    qryGetBndMLObjectIS_CLOSED: TAbmesFloatField;
    qryGetBndMLObjectIS_ANNULED: TAbmesFloatField;
    qryModelMovementsPRODUCT_NAME: TAbmesWideStringField;
    qryModelMovementsPRODUCT_CUSTOM_CODE: TAbmesFloatField;
    qryModelMovementsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    qryModelMovementsACCOUNT_PRODUCT_QUANTITY: TAbmesFloatField;
    qryModelMovementsCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    qryGetDataByMLMS: TAbmesSQLQuery;
    qryGetMMDataNO_AS_TEXT: TAbmesWideStringField;
    qryModelMovementsMEASURE_CODE: TAbmesFloatField;
    qryGetMlmsRealSinglePrice: TAbmesSQLQuery;
    qryGetMlmsRealSinglePriceSINGLE_PRICE: TAbmesFloatField;
    qryGetMMCodeNEW_MM_CODE: TAbmesFloatField;
    prvOperationMovement: TDataSetProvider;
    qryOperationMovement: TAbmesSQLQuery;
    prvOperationMovementHeader: TDataSetProvider;
    qryOperationMovementHeader: TAbmesSQLQuery;
    qryOperationMovementHeaderFROM_MLL_NO_AS_TEXT: TAbmesWideStringField;
    qryOperationMovementHeaderFROM_MLL_FORK_NO: TAbmesFloatField;
    qryOperationMovementHeaderFROM_STAGE_IDENTIFIER: TAbmesWideStringField;
    qryOperationMovementHeaderFROM_MLMS_REMAINING_WORKDAYS: TAbmesFloatField;
    qryOperationMovementHeaderFROM_DETAIL_CODE: TAbmesFloatField;
    qryOperationMovementHeaderFROM_DETAIL_NAME: TAbmesWideStringField;
    qryOperationMovementHeaderFROM_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementHeaderFROM_DETAIL_TECH_MEASURE_ABB: TAbmesWideStringField;
    qryOperationMovementHeaderFROM_PRODUCT_CODE: TAbmesFloatField;
    qryOperationMovementHeaderFROM_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementHeaderFROM_PRODUCT_NAME: TAbmesWideStringField;
    qryOperationMovementHeaderFROM_TOTAL_PRODUCT_TECH_QTY: TAbmesFloatField;
    qryOperationMovementHeaderFROM_PRODUCT_TECH_MEASURE_ABB: TAbmesWideStringField;
    qryOperationMovementHeaderTO_MLL_NO_AS_TEXT: TAbmesWideStringField;
    qryOperationMovementHeaderTO_MLL_FORK_NO: TAbmesFloatField;
    qryOperationMovementHeaderTO_STAGE_IDENTIFIER: TAbmesWideStringField;
    qryOperationMovementHeaderTO_MLMS_REMAINING_WORKDAYS: TAbmesFloatField;
    qryOperationMovementHeaderTO_DETAIL_CODE: TAbmesFloatField;
    qryOperationMovementHeaderTO_DETAIL_NAME: TAbmesWideStringField;
    qryOperationMovementHeaderTO_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementHeaderTO_DETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryOperationMovementHeaderTO_PRODUCT_CODE: TAbmesFloatField;
    qryOperationMovementHeaderTO_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementHeaderTO_PRODUCT_NAME: TAbmesWideStringField;
    qryOperationMovementHeaderTO_TOTAL_PRODUCT_TECH_QTY: TAbmesFloatField;
    qryOperationMovementHeaderTO_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryOperationMovementOM_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementOM_CODE: TAbmesFloatField;
    qryOperationMovementOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField;
    qryOperationMovementOM_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementOM_TIME: TAbmesSQLTimeStampField;
    qryOperationMovementFROM_EMPLOYEE_CODE: TAbmesFloatField;
    qryOperationMovementFROM_TEAM_CODE: TAbmesFloatField;
    qryOperationMovementTO_EMPLOYEE_CODE: TAbmesFloatField;
    qryOperationMovementTO_TEAM_CODE: TAbmesFloatField;
    qryOperationMovementTO_DEPT_CODE: TAbmesFloatField;
    qryOperationMovementTO_DEPT_NAME: TAbmesWideStringField;
    qryOperationMovementTO_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryOperationMovementWASTE_DOC_NO: TAbmesWideStringField;
    qryOperationMovementWASTE_DOC_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementWORK_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementQA_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementQA_EMPLOYEE_CODE: TAbmesFloatField;
    qryOperationMovementCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryOperationMovementCREATE_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementCREATE_TIME: TAbmesSQLTimeStampField;
    qryOperationMovementSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryOperationMovementSTORNO_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementSTORNO_TIME: TAbmesSQLTimeStampField;
    qryOperationMovementBND_OM_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementBND_OM_CODE: TAbmesFloatField;
    qryOperationMovementHeaderFROM_NOTES: TAbmesWideStringField;
    qryOperationMovementHeaderTO_NOTES: TAbmesWideStringField;
    qryOperationMovementHeaderFROM_PROFESSION_NAME: TAbmesWideStringField;
    qryOperationMovementHeaderTO_PROFESSION_NAME: TAbmesWideStringField;
    qryOperationMovementHeaderFROM_PROFESSION_CODE: TAbmesFloatField;
    qryOperationMovementHeaderTO_PROFESSION_CODE: TAbmesFloatField;
    qryOperationMovementWORK_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementQA_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    prvMLMSOperationVariantsHeader: TDataSetProvider;
    qryMLMSOperationVariants: TAbmesSQLQuery;
    qryMLMSOperationVariantsMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsMLMS_OBJECT_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsOPERATION_TYPE_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsIS_ACTIVE: TAbmesFloatField;
    qryMLMSOperationVariantsSHOW_NO: TAbmesWideStringField;
    qryMLMSOperationVariantsHAS_DOCUMENTATION: TAbmesFloatField;
    qryMLMSOperationVariantsDEPT_NAME: TAbmesWideStringField;
    qryMLMSOperationVariantsSETUP_PROFESSION_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsSETUP_PROFESSION_NAME: TAbmesWideStringField;
    qryMLMSOperationVariantsPROFESSION_NAME: TAbmesWideStringField;
    qryMLMSOperationVariantsSETUP_EFFORT_COEF: TAbmesFloatField;
    qryMLMSOperationVariantsSETUP_HOUR_PRICE: TAbmesFloatField;
    qryMLMSOperationVariantsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    qryMLMSOperationVariantsEFFORT_COEF: TAbmesFloatField;
    qryMLMSOperationVariantsHOUR_PRICE: TAbmesFloatField;
    qryMLMSOperationVariantsHOUR_TECH_QUANTITY: TAbmesFloatField;
    qryMLMSOperationVariantsNOTES: TAbmesWideStringField;
    qryMLMSOperationVariantsDOC_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsDOC_CODE: TAbmesFloatField;
    prvMLMSOperationSetup: TDataSetProvider;
    qryMLMSOperationSetup: TAbmesSQLQuery;
    qryMLMSOperationSetupMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationSetupMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryMLMSOperationSetupSETUP_EMPLOYEE_CODE: TAbmesFloatField;
    qryMLMSOperationSetupSETUP_TEAM_CODE: TAbmesFloatField;
    qryMLMSOperationSetupSETUP_PROFESSION_CODE: TAbmesFloatField;
    prvOperationMovementTypes: TDataSetProvider;
    qryOperationMovementTypes: TAbmesSQLQuery;
    qryOperationMovementTypesOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField;
    qryOperationMovementTypesOPERATION_MOVEMENT_TYPE_ABBREV: TAbmesWideStringField;
    qryOperationMovementTypesOPERATION_MOVEMENT_TYPE_NAME: TAbmesWideStringField;
    qryMLMSOperationVariantsMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryOperationMovementFROM_MLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementFROM_MLMSO_OBJECT_CODE: TAbmesFloatField;
    qryOperationMovementTO_MLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementTO_MLMSO_OBJECT_CODE: TAbmesFloatField;
    prvProfessionTeams: TDataSetProvider;
    qryProfessionTeams: TAbmesSQLQuery;
    qryProfessionTeamsTEAM_CODE: TAbmesFloatField;
    qryProfessionTeamsTEAM_NAME: TAbmesWideStringField;
    qryProfessionTeamsHAS_THE_PROFESSION: TAbmesFloatField;
    qryOperationMovementHeaderFROM_MLMS_OPERATION_IDENTIFIER: TAbmesWideStringField;
    prvToMLMSOperations: TDataSetProvider;
    qryToMLMSOperations: TAbmesSQLQuery;
    qryOperationMovementTO_MLMSO_BRANCH_AND_CODE: TAbmesWideStringField;
    qryGetOMCode: TAbmesSQLQuery;
    prvOperationMovementQuantities: TDataSetProvider;
    qryOperationMovementQuantities: TAbmesSQLQuery;
    qryOperationMovementQuantitiesMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementQuantitiesMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryOperationMovementQuantitiesPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementQuantitiesDETAIL_TOTAL_IN_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementQuantitiesDETAIL_TOTAL_OUT_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementQuantitiesDETAIL_TOTAL_WASTE_TECH_QTY: TAbmesFloatField;
    qryOperationMovementQuantitiesDETAIL_REMAINING_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementQuantitiesPRODUCT_TOTAL_IN_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementQuantitiesPRODUCT_TOTAL_OUT_TECH_QTY: TAbmesFloatField;
    qryOperationMovementQuantitiesPRODUCT_TOTAL_WASTE_TECH_QTY: TAbmesFloatField;
    qryOperationMovementQuantitiesPRODUCT_REMAINING_TECH_QTY: TAbmesFloatField;
    qryOperationMovementQuantitiesDETAIL_TOTAL_WORK_TECH_QTY: TAbmesFloatField;
    qryGetOMCodeNEW_OM_CODE: TAbmesFloatField;
    qryOperationMovementSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementSTORE_DEAL_OBJECT_CODE: TAbmesFloatField;
    qryOperationMovementREPLACED_OM_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementREPLACED_OM_CODE: TAbmesFloatField;
    prvOperationMovements: TDataSetProvider;
    qryOperationMovements: TAbmesSQLQuery;
    qryOperationMovementsOM_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementsOM_CODE: TAbmesFloatField;
    qryOperationMovementsOM_IDENTIFIER: TAbmesWideStringField;
    qryOperationMovementsOM_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementsDETAIL_NAME: TAbmesWideStringField;
    qryOperationMovementsDETAIL_NO: TAbmesFloatField;
    qryOperationMovementsPRODUCT_NAME: TAbmesWideStringField;
    qryOperationMovementsPRODUCT_NO: TAbmesFloatField;
    qryOperationMovementsTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementsWORK_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementsTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementsWORK_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementsDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryOperationMovementsPRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryOperationMovementsIS_STORNO: TAbmesFloatField;
    qryOperationMovementsFROM_ML_MODEL_STAGE_IDENTIFIER: TAbmesWideStringField;
    qryOperationMovementsFROM_MLMSO_IDENTIFIER: TAbmesWideStringField;
    qryOperationMovementsTO_ML_MODEL_STAGE_IDENTIFIER: TAbmesWideStringField;
    qryOperationMovementsTO_MLMSO_IDENTIFIER: TAbmesWideStringField;
    qryOperationMovementsMLL_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryOperationMovementsOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField;
    qryOperationMovementsOPERATION_MOVEMENT_TYPE_ABBREV: TAbmesWideStringField;
    qryOperationMovementsWASTE_INFO: TAbmesWideStringField;
    qryOperationMovementHeaderIS_OPERATIONS_MODEL: TAbmesFloatField;
    qryOperationMovementHeaderFROM_MLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementHeaderFROM_MLMS_OBJECT_CODE: TAbmesFloatField;
    qryOperationMovementHeaderTO_MLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementHeaderTO_MLMS_OBJECT_CODE: TAbmesFloatField;
    qryToMLMSOperationsMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryToMLMSOperationsMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryToMLMSOperationsMLMSO_BRANCH_AND_CODE: TAbmesWideStringField;
    qryToMLMSOperationsMLMSO_IDENTIFIER: TAbmesWideStringField;
    qryOmData: TAbmesSQLQuery;
    qryOmDataFROM_MLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOmDataFROM_MLMSO_OBJECT_CODE: TAbmesFloatField;
    qryOmDataOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsDEPT_CODE: TAbmesFloatField;
    qryOperationMovementFROM_TEAM_NAME: TAbmesWideStringField;
    qryOperationMovementTO_TEAM_NAME: TAbmesWideStringField;
    qryMLMSOperationVariantsHAS_OPERATION_MOVEMENTS: TAbmesFloatField;
    prvMlmsOperationInfo: TDataSetProvider;
    qryMlmsOperationInfo: TAbmesSQLQuery;
    qryMlmsOperationInfoMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMlmsOperationInfoMLMSO_OBJECT_CODE: TAbmesFloatField;
    qryMlmsOperationInfoSALE_BRANCH_CODE: TAbmesFloatField;
    qryMlmsOperationInfoSALE_NO: TAbmesFloatField;
    qryMlmsOperationInfoIS_MODEL_ARCHIVED: TAbmesFloatField;
    qryMlmsOperationInfoIS_MODEL_CLOSED: TAbmesFloatField;
    qryMlmsOperationInfoIS_MODEL_ANNULED: TAbmesFloatField;
    qryMlmsOperationInfoMLL_NO_AS_TEXT: TAbmesWideStringField;
    qryMlmsOperationInfoFORK_NO: TAbmesFloatField;
    qryMlmsOperationInfoML_MODEL_STAGE_NO: TAbmesFloatField;
    qryMlmsOperationInfoMLMS_OPERATION_NO: TAbmesFloatField;
    qryMlmsOperationInfoMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryMlmsOperationInfoMODEL_LIMITING_DATE: TAbmesSQLTimeStampField;
    qryGetBndMLObjectIS_OPERATIONS_MODEL: TAbmesFloatField;
    qryOperationMovementsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryOperationMovementsCREATE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryOperationMovementsCREATE_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementsCREATE_TIME: TAbmesSQLTimeStampField;
    qryOperationMovementsSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryOperationMovementsSTORNO_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryOperationMovementsSTORNO_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementsSTORNO_TIME: TAbmesSQLTimeStampField;
    qryModelMovementsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryModelMovementsCREATE_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryModelMovementsCREATE_DATE: TAbmesSQLTimeStampField;
    qryModelMovementsCREATE_TIME: TAbmesSQLTimeStampField;
    qryModelMovementsSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryModelMovementsSTORNO_EMPLOYEE_ABBREV: TAbmesWideStringField;
    qryModelMovementsSTORNO_DATE: TAbmesSQLTimeStampField;
    qryModelMovementsSTORNO_TIME: TAbmesSQLTimeStampField;
    qryMLMSOperationVariantsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    qryMLMSOperationVariantsTREATMENT_WORKDAYS: TAbmesFloatField;
    qryMLMSOperationVariantsTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryMLMSOperationVariantsTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementsDETAIL_TECH_MEASURE_CODE: TAbmesFloatField;
    qryOperationMovementsPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    qryToMLMSOperationsMLMS_OPERATION_NO: TAbmesFloatField;
    qryToMLMSOperationsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryOperationMovementHeaderIS_TO_LAST_STAGE: TAbmesFloatField;
    qryMLMSOperationVariantsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    qryMLMSOperationSetupSETUP_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementHeaderFROM_SETUP_IS_DONE: TAbmesFloatField;
    qryMLMSOperationVariantsVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryGetDataByMLMSSALE_BRANCH_CODE: TAbmesFloatField;
    qryGetDataByMLMSSALE_NO: TAbmesFloatField;
    qryGetDataByMLMSMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryGetDataByMLMSMLL_OBJECT_CODE: TAbmesFloatField;
    qryGetDataByMLMSML_MODEL_STAGE_NO: TAbmesFloatField;
    qryMLMSOperationVariantsMLMS_OPERATION_NO: TAbmesFloatField;
    qryMLMSOperationVariantsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryMaxOperationWorkdayNo: TAbmesSQLQuery;
    qryMaxOperationWorkdayNoMAX_OPERATION_WORKDAY_NO: TAbmesFloatField;
    qryMLMSOperationVariantsHeader: TAbmesSQLQuery;
    qryMLMSOperationVariantsHeaderMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsHeaderMLMS_OBJECT_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsHeaderSALE_IDENTIFIER: TAbmesWideStringField;
    qryMLMSOperationVariantsHeaderDETAIL_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsHeaderDETAIL_NAME: TAbmesWideStringField;
    qryMLMSOperationVariantsHeaderDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryMLMSOperationVariantsHeaderLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryMLMSOperationVariantsHeaderML_MODEL_STAGE_NO: TAbmesFloatField;
    qryMLMSOperationVariantsHeaderDEPT_IDENTIFIER: TAbmesWideStringField;
    qryMLMSOperationVariantsHeaderTREATMENT_WORKDAYS: TAbmesFloatField;
    qryMLMSOperationVariantsHeaderOUTGOING_WORKDAYS: TAbmesFloatField;
    qryMLMSOperationVariantsHeaderTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryMLMSOperationVariantsHeaderTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    qryMLMSOperationVariantsHeaderDOC_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsHeaderDOC_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsHeaderMLMS_OPERATION_NO: TAbmesFloatField;
    prvProfessionEmployeeMonthTeams: TDataSetProvider;
    qryProfessionEmployeeMonthTeams: TAbmesSQLQuery;
    qryProfessionEmployeeMonthTeamsTEAM_CODE: TAbmesFloatField;
    qryProfessionEmployeeMonthTeamsTEAM_NAME: TAbmesWideStringField;
    qryProfessionEmployeeMonthTeamsHAS_THE_PROFESSION: TAbmesFloatField;
    qryProfessionEmployeeMonthTeamsHAS_THE_EMPLOYEE: TAbmesFloatField;
    qryMLMSOperationSetupSETUP_TIME: TAbmesSQLTimeStampField;
    qryMLMSOperationSetupNO_AS_TEXT: TAbmesWideStringField;
    qryMLMSOperationSetupFORK_NO: TAbmesFloatField;
    qryMLMSOperationSetupMLMS_IDENTIFIER: TAbmesWideStringField;
    qryMLMSOperationSetupMLMS_REMAINING_WORKDAYS: TAbmesFloatField;
    qryMLMSOperationSetupDETAIL_CODE: TAbmesFloatField;
    qryMLMSOperationSetupDETAIL_NAME: TAbmesWideStringField;
    qryMLMSOperationSetupLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryMLMSOperationSetupDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryMLMSOperationSetupPRODUCT_CODE: TAbmesFloatField;
    qryMLMSOperationSetupPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryMLMSOperationSetupPRODUCT_NAME: TAbmesWideStringField;
    qryMLMSOperationSetupTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryMLMSOperationSetupPRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    qryMLMSOperationSetupMLMSO_IDENTIFIER: TAbmesWideStringField;
    qryMLMSOperationSetupSETUP_PROFESSION_NAME: TAbmesWideStringField;
    qryMLMSOperationSetupNOTES: TAbmesWideStringField;
    qryMLMSOperationSetupSETUP_EMPLOYEE_NAME: TAbmesWideStringField;
    qryMLMSOperationSetupSETUP_TEAM_NAME: TAbmesWideStringField;
    qryMLMSOperationVariantsHAS_CAPACITY_DEFICIT: TAbmesFloatField;
    qryMLMSOperationVariantsHeaderNO_AS_TEXT: TAbmesWideStringField;
    qryMLMSOperationVariantsHeaderFORK_NO: TAbmesFloatField;
    qryOperationMovementsML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementsML_OBJECT_CODE: TAbmesFloatField;
    qryOperationMovementsMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementsMLL_OBJECT_CODE: TAbmesFloatField;
    qryOperationMovementHeaderMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField;
    qryOperationMovementHeaderFROM_MLMS_IS_AUTO_MOVEMENT: TAbmesFloatField;
    qryOperationMovementsTOTAL_PRICE: TAbmesFloatField;
    qryModelMovementsOM_BRANCH_CODE: TAbmesFloatField;
    qryModelMovementsOM_CODE: TAbmesFloatField;
    qryModelMovementsPRIORITY_FULL_NAME: TAbmesWideStringField;
    qryOperationMovementsPRIORITY_FULL_NAME: TAbmesWideStringField;
    qryOperationMovementsPRIORITY_COLOR: TAbmesFloatField;
    qryOperationMovementsPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryModelMovementsPRIORITY_COLOR: TAbmesFloatField;
    qryModelMovementsPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    prvMLMSOperationVariants: TDataSetProvider;
    qryOperationMovementHeaderFROM_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementHeaderFROM_DEPT_END_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementHeaderTO_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementHeaderTO_DEPT_END_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementTO_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementTO_DEPT_END_DATE: TAbmesSQLTimeStampField;
    qryMLMSOperationSetupDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    qryMLMSOperationSetupDEPT_END_DATE: TAbmesSQLTimeStampField;
    qryOperationMovementHeaderFROM_OPERATION_TYPE_CODE: TAbmesFloatField;
    qryOperationMovementHeaderTO_OPERATION_TYPE_CODE: TAbmesFloatField;
    qryOperationMovementHeaderPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField;
    qryModelMovementsMLL_OBJECT_IDENTIFIER: TAbmesWideStringField;
    qryModelMovementsFROM_STAGE_IDENTIFIER: TAbmesWideStringField;
    qryModelMovementsTO_STAGE_IDENTIFIER: TAbmesWideStringField;
    qryModelMovementsWASTE_INFO: TAbmesWideStringField;
    qryMLMSOperationVariantsHeaderPRIORITY_COLOR: TAbmesFloatField;
    qryMLMSOperationVariantsHeaderPRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryOperationMovementDOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementDOC_CODE: TAbmesFloatField;
    qryStageInfo: TAbmesSQLQuery;
    prvStageInfo: TDataSetProvider;
    qryStageInfoMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryStageInfoMLMS_OBJECT_CODE: TAbmesFloatField;
    qryStageInfoSALE_BRANCH_CODE: TAbmesFloatField;
    qryStageInfoSALE_NO: TAbmesFloatField;
    qryStageInfoIS_MODEL_ARCHIVED: TAbmesFloatField;
    qryStageInfoIS_MODEL_CLOSED: TAbmesFloatField;
    qryStageInfoIS_MODEL_ANNULED: TAbmesFloatField;
    qryStageInfoMODEL_LIMITING_DATE: TAbmesSQLTimeStampField;
    qryStageInfoMLL_NO_AS_TEXT: TAbmesWideStringField;
    qryStageInfoFORK_NO: TAbmesFloatField;
    qryStageInfoML_MODEL_STAGE_NO: TAbmesFloatField;
    qryOperationMovementHeaderSALE_PRIORITY_COLOR: TAbmesFloatField;
    qryOperationMovementHeaderSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryMLMSOperationSetupSALE_PRIORITY_COLOR: TAbmesFloatField;
    qryMLMSOperationSetupSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField;
    qryMLMSOperationSetupPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField;
    qryOperationMovementHeaderFROM_MLMS_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementHeaderFROM_MLMS_DOC_CODE: TAbmesFloatField;
    qryOperationMovementHeaderFROM_MLMS_HAS_DOC_ITEMS: TAbmesFloatField;
    qryOperationMovementHeaderFROM_MLMSO_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementHeaderFROM_MLMSO_DOC_CODE: TAbmesFloatField;
    qryOperationMovementHeaderFROM_MLMSO_HAS_DOC_ITEMS: TAbmesFloatField;
    qryOperationMovementHeaderTO_MLMS_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementHeaderTO_MLMS_DOC_CODE: TAbmesFloatField;
    qryOperationMovementHeaderTO_MLMS_HAS_DOC_ITEMS: TAbmesFloatField;
    qryToMLMSOperationsMLMSO_DOC_BRANCH_CODE: TAbmesFloatField;
    qryToMLMSOperationsMLMSO_DOC_CODE: TAbmesFloatField;
    qryToMLMSOperationsMLMSO_HAS_DOC_ITEMS: TAbmesFloatField;
    qryOperationMovementHAS_DOC_ITEMS: TAbmesFloatField;
    qryMLMSOperationSetupMLMS_DOC_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationSetupMLMS_DOC_CODE: TAbmesFloatField;
    qryMLMSOperationSetupMLMS_HAS_DOC_ITEMS: TAbmesFloatField;
    qryMLMSOperationSetupMLMSO_DOC_BRANCH_CODE: TAbmesFloatField;
    qryMLMSOperationSetupMLMSO_DOC_CODE: TAbmesFloatField;
    qryMLMSOperationSetupMLMSO_HAS_DOC_ITEMS: TAbmesFloatField;
    qryOperationMovementsDOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementsDOC_CODE: TAbmesFloatField;
    qryOperationMovementsHAS_DOC: TAbmesFloatField;
    qryOperationMovementOM_NO: TAbmesFloatField;
    qryGetOMNo: TAbmesSQLQuery;
    qryGetOMNoNEW_OM_NO: TAbmesFloatField;
    qryOperationMovementHeaderSALE_WORK_PRIORITY_NO: TAbmesFloatField;
    qryMLMSOperationSetupSALE_WORK_PRIORITY_NO: TAbmesFloatField;
    qryOperationMovementHeaderSALE_PRIORITY_NO: TAbmesFloatField;
    qryMLMSOperationSetupSALE_PRIORITY_NO: TAbmesFloatField;
    qryMLMSOperationVariantsHeaderPRIORITY_NO: TAbmesFloatField;
    qryMLMSOperationVariantsHeaderWORK_PRIORITY_NO: TAbmesFloatField;
    qryModelMovementsWORK_PRIORITY_CODE: TAbmesFloatField;
    qryModelMovementsWORK_PRIORITY_NO: TAbmesFloatField;
    qryOperationMovementsWORK_PRIORITY_NO: TAbmesFloatField;
    qryMLMSOperationVariantsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryMLMSOperationVariantsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryMLMSOperationVariantsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    qryMLMSOperationSetupSETUP_COUNT: TAbmesFloatField;
    qryMLMSOperationSetupDONE_SETUP_COUNT: TAbmesFloatField;
    qryMLMSOperationSetupDEPT_CODE: TAbmesFloatField;
    qryModelMovementsDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    qryModelMovementsDETAIL_DOC_CODE: TAbmesFloatField;
    qryModelMovementsDETAIL_HAS_DOC: TAbmesFloatField;
    qryModelMovementsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryModelMovementsPRODUCT_DOC_CODE: TAbmesFloatField;
    qryModelMovementsPRODUCT_HAS_DOC: TAbmesFloatField;
    qryOperationMovementsDETAIL_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementsDETAIL_DOC_CODE: TAbmesFloatField;
    qryOperationMovementsDETAIL_HAS_DOC: TAbmesFloatField;
    qryOperationMovementsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementsPRODUCT_DOC_CODE: TAbmesFloatField;
    qryOperationMovementsPRODUCT_HAS_DOC: TAbmesFloatField;
    qryModelMovementsDOC_BRANCH_CODE: TAbmesFloatField;
    qryModelMovementsDOC_CODE: TAbmesFloatField;
    qryModelMovementsHAS_DOC: TAbmesFloatField;
    qryModelMovementsML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryModelMovementsML_OBJECT_CODE: TAbmesFloatField;
    qryModelMovementsMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    qryModelMovementsMLL_OBJECT_CODE: TAbmesFloatField;
    qryMLMSOperationSetupSETUP_PROF_USED_BY_EMPLOYEES: TAbmesFloatField;
    qryMLMSOperationSetupSETUP_PROF_USED_BY_TEAMS: TAbmesFloatField;
    qryOperationMovementHeaderFROM_PROF_USED_BY_EMPLOYEES: TAbmesFloatField;
    qryOperationMovementHeaderFROM_PROF_USED_BY_TEAMS: TAbmesFloatField;
    qryMLMSOperationSetupHAS_MOVEMENTS: TAbmesFloatField;
    qryOperationMovementPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    qryMLMSOperationVariantsIS_AUTO_SETUP: TAbmesFloatField;
    qryMLMSOperationVariantsIS_AUTO_MOVEMENT: TAbmesFloatField;
    qryMLMSOperationVariantsDEPT_IDENTIFIER: TAbmesWideStringField;
    qryOperationMovementsFROM_SETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementsFROM_HOUR_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementHeaderFROM_MLMSO_DEPT_CODE: TAbmesFloatField;
    qryProfessionEmployeeMonthTeamsHAS_THE_OCC_WORK_DEPT: TAbmesFloatField;
    qryOperationMovementsFROM_EMPLOYEE_NO: TAbmesFloatField;
    qryOperationMovementsFROM_TEAM_NO: TAbmesFloatField;
    qryOperationMovementsFROM_TEAM_NAME: TAbmesWideStringField;
    qryOperationMovementsQA_EMPLOYEE_NO: TAbmesFloatField;
    qryOperationMovementsTO_EMPLOYEE_NO: TAbmesFloatField;
    qryOperationMovementsTO_TEAM_NO: TAbmesFloatField;
    qryOperationMovementsTO_TEAM_NAME: TAbmesWideStringField;
    qryOperationMovementsFROM_EMPLOYEE_NAME: TAbmesWideStringField;
    qryOperationMovementsQA_EMPLOYEE_NAME: TAbmesWideStringField;
    qryOperationMovementsTO_EMPLOYEE_NAME: TAbmesWideStringField;
    qryOperationMovementsFROM_MLMSO_DOC_BRANCH_CODE: TAbmesFloatField;
    qryOperationMovementsFROM_MLMSO_DOC_CODE: TAbmesFloatField;
    qryOperationMovementsFROM_MLMSO_HAS_DOC: TAbmesFloatField;
    qryOperationMovementHeaderFROM_MLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryMLMSOperationSetupMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryOperationMovementsFROM_MLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    qryGetSpecialControlNeeded: TAbmesSQLQuery;
    qryGetSpecialControlNeededSPECIAL_CONTROL_NEEDED: TAbmesFloatField;
    qryOperationMovementsQA_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementsQA_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    qryOperationMovementHeaderPRINT_NOTES: TAbmesWideStringField;
    qryOperationMovementHeaderFROM_MLMSO_IS_LAST_IN_STAGE: TAbmesFloatField;
    procedure qryModelMovementsBeforeOpen(DataSet: TDataSet);
    procedure qryOperationMovementsBeforeOpen(DataSet: TDataSet);
    procedure prvOperationMovementQuantitiesGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure qryOperationMovementsAfterClose(DataSet: TDataSet);
    procedure qryModelMovementsAfterClose(DataSet: TDataSet);
    procedure prvOperationMovementBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvOperationMovementAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryOperationMovementAfterProviderStartTransaction(
      DataSet: TDataSet);
  private
    FDocsDelta: Variant;
  protected
    procedure GetBoundMLObject(BoundType: Integer; BndObjectBranchCode: Integer;
                               BndObjectNumber: Integer; out BndMLObjectBranchCode: Integer;
                               out BndMLObjectCode: Integer; out IsNonActive: Integer;
                               out IsOperationsModel: Boolean);
    function GetMMCode(MMBranchCode: Integer): Integer;
    procedure GetBoundMLLObject(BoundMLObjectBranchCode: Integer; BoundMLObjectCode: Integer;
                                const NoAsText: string; ForkNo: Integer;
                                out BoundMLLObjectBranchCode: Integer; out BoundMLLObjectCode: Integer);
    procedure GetMMDataByCode(MMBranchCode: Integer; MMCode: Integer; out BoundType,
                              BoundBranch, BoundNumber: Integer; out NoAsText: string;
                              out ForkNo: Integer; out FromStageNo: Integer);
    procedure GetStageNo(MLMSObjectBranchCode: Integer; MLMSObjectCode: Integer;
                         out MLLObjectBranchCode: Integer; out MLLObjectCode: Integer;
                         out StageNo: Integer);
    procedure GetDataByMLMSCode(MLMSObjectBranchCode: Integer; MLMSObjectCode: Integer;
                                out SaleBranchCode: Integer; out SaleNo: Integer;
                                out MLLObjectBranchCode: Integer; out MLLObjectCode: Integer;
                                out FromStageNo: Integer);
    function GetOMCode(OMBranchCode: Integer): Integer;
    procedure GetOmData(OmBranchCode: Integer; OmCode: Integer;
                        out FromMlmsoObjectBranchCode: Integer; out FromMlmsoObjectCode: Integer;
                        out OperationMovementTypeCode: Integer);
    function GetMaxOperationWorkdayNo(AMlmsObjectBranchCode: Integer; AMlmsObjectCode: Integer;
                                      AMlmsOperationNo: Integer): Integer;
    function GetOMNo: Integer;
    function GetSpecialControlNeeded(MlmsoObjectBranchCode: Integer; MlmsoObjectCode: Integer): Boolean;
  end;

type
  IdmModelMovementsProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmModelMovementsProxy = class(TDBPooledDataModuleProxy, IdmModelMovementsProxy)
  private
    class var FSingleton: TdmModelMovementsProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmModelMovements>;
  strict protected
    property LockedInstance: ISmartLock<TdmModelMovements> read GetLockedInstance;
  public
    class property Singleton: TdmModelMovementsProxy read FSingleton;

    procedure GetBoundMLObject(
      BoundType: Integer; BndObjectBranchCode: Integer;
      BndObjectNumber: Integer; out BndMLObjectBranchCode: Integer;
      out BndMLObjectCode: Integer; out IsNonActive: Integer;
      out IsOperationsModel: Boolean);
    function GetMMCode(MMBranchCode: Integer): Integer;
    procedure GetBoundMLLObject(
      BoundMLObjectBranchCode: Integer; BoundMLObjectCode: Integer;
      const NoAsText: string; ForkNo: Integer;
      out BoundMLLObjectBranchCode: Integer; out BoundMLLObjectCode: Integer);
    procedure GetMMDataByCode(
      MMBranchCode: Integer; MMCode: Integer; out BoundType,
      BoundBranch, BoundNumber: Integer; out NoAsText: string;
      out ForkNo: Integer; out FromStageNo: Integer);
    procedure GetStageNo(
      MLMSObjectBranchCode: Integer; MLMSObjectCode: Integer;
      out MLLObjectBranchCode: Integer; out MLLObjectCode: Integer;
      out StageNo: Integer);
    procedure GetDataByMLMSCode(
      MLMSObjectBranchCode: Integer; MLMSObjectCode: Integer;
      out SaleBranchCode: Integer; out SaleNo: Integer;
      out MLLObjectBranchCode: Integer; out MLLObjectCode: Integer;
      out FromStageNo: Integer);
    function GetOMCode(OMBranchCode: Integer): Integer;
    procedure GetOmData(
      OmBranchCode: Integer; OmCode: Integer;
      out FromMlmsoObjectBranchCode: Integer; out FromMlmsoObjectCode: Integer;
      out OperationMovementTypeCode: Integer);
    function GetMaxOperationWorkdayNo(
      AMlmsObjectBranchCode: Integer; AMlmsObjectCode: Integer;
      AMlmsOperationNo: Integer): Integer;
    function GetOMNo: Integer;
    function GetSpecialControlNeeded(MlmsoObjectBranchCode: Integer; MlmsoObjectCode: Integer): Boolean;
  end;

implementation

uses
  uUtils, Variants, uProductionLevels, uSvrUtils,
  uDBPooledDataModuleHelper;

{$R *.DFM}

{ TdmModelMovementsProxy }

function TdmModelMovementsProxy.GetLockedInstance: ISmartLock<TdmModelMovements>;
begin
  Result:= ISmartLock<TdmModelMovements>(inherited LockedInstance);
end;

procedure TdmModelMovementsProxy.GetBoundMLLObject(BoundMLObjectBranchCode,
  BoundMLObjectCode: Integer; const NoAsText: string; ForkNo: Integer;
  out BoundMLLObjectBranchCode, BoundMLLObjectCode: Integer);
begin
  LockedInstance.Value.GetBoundMLLObject(
    BoundMLObjectBranchCode, BoundMLObjectCode, NoAsText, ForkNo, BoundMLLObjectBranchCode, BoundMLLObjectCode);
end;

procedure TdmModelMovementsProxy.GetBoundMLObject(
  BoundType: Integer; BndObjectBranchCode: Integer;
  BndObjectNumber: Integer; out BndMLObjectBranchCode: Integer;
  out BndMLObjectCode: Integer; out IsNonActive: Integer;
  out IsOperationsModel: Boolean);
begin
  LockedInstance.Value.GetBoundMLObject(
    BoundType, BndObjectBranchCode, BndObjectNumber,
    BndMLObjectBranchCode, BndMLObjectCode, IsNonActive, IsOperationsModel);
end;

procedure TdmModelMovementsProxy.GetDataByMLMSCode(MLMSObjectBranchCode,
  MLMSObjectCode: Integer; out SaleBranchCode, SaleNo, MLLObjectBranchCode,
  MLLObjectCode, FromStageNo: Integer);
begin
  LockedInstance.Value.GetDataByMLMSCode(
    MLMSObjectBranchCode, MLMSObjectCode, SaleBranchCode, SaleNo, MLLObjectBranchCode, MLLObjectCode, FromStageNo);
end;

procedure TdmModelMovementsProxy.GetOmData(OmBranchCode,
  OmCode: Integer; out FromMlmsoObjectBranchCode,
  FromMlmsoObjectCode, OperationMovementTypeCode: Integer);
begin
  LockedInstance.Value.GetOmData(
    OmBranchCode, OmCode, FromMlmsoObjectBranchCode, FromMlmsoObjectCode, OperationMovementTypeCode);
end;

function TdmModelMovementsProxy.GetMMCode(MMBranchCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetMMCode(MMBranchCode);
end;

procedure TdmModelMovementsProxy.GetMMDataByCode(MMBranchCode,
  MMCode: Integer; out BoundType, BoundBranch,
  BoundNumber: Integer;  out NoAsText: string; out ForkNo, FromStageNo: Integer);
begin
  LockedInstance.Value.GetMMDataByCode(
    MMBranchCode, MMCode, BoundType, BoundBranch, BoundNumber, NoAsText, ForkNo, FromStageNo);
end;

function TdmModelMovementsProxy.GetOMCode(OMBranchCode: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetOMCode(OMBranchCode);
end;

function TdmModelMovementsProxy.GetSpecialControlNeeded(MlmsoObjectBranchCode, MlmsoObjectCode: Integer): Boolean;
begin
  Result:= LockedInstance.Value.GetSpecialControlNeeded(MlmsoObjectBranchCode, MlmsoObjectCode);
end;

procedure TdmModelMovementsProxy.GetStageNo(MLMSObjectBranchCode,
  MLMSObjectCode: Integer; out MLLObjectBranchCode, MLLObjectCode,
  StageNo: Integer);
begin
  LockedInstance.Value.GetStageNo(
    MLMSObjectBranchCode, MLMSObjectCode, MLLObjectBranchCode, MLLObjectCode, StageNo);
end;

function TdmModelMovementsProxy.GetMaxOperationWorkdayNo(
  AMlmsObjectBranchCode, AMlmsObjectCode,
  AMlmsOperationNo: Integer): Integer;
begin
  Result:= LockedInstance.Value.GetMaxOperationWorkdayNo(AMlmsObjectBranchCode, AMlmsObjectCode, AMlmsOperationNo);
end;

function TdmModelMovementsProxy.GetOMNo: Integer;
begin
  Result:= LockedInstance.Value.GetOMNo;
end;

{ TdmModelMovements }

procedure TdmModelMovements.GetBoundMLLObject(BoundMLObjectBranchCode,
  BoundMLObjectCode: Integer; const NoAsText: string; ForkNo: Integer;
  out BoundMLLObjectBranchCode, BoundMLLObjectCode: Integer);
begin
  with qryGetBoundMLLObject do
    begin
      ParamByName('ML_OBJECT_BRANCH_CODE').AsFloat:= BoundMLObjectBranchCode;
      ParamByName('ML_OBJECT_CODE').AsFloat:= BoundMLObjectCode;
      ParamByName('NO_AS_TEXT').AsString:= NoAsText;
      ParamByName('FORK_NO').AsFloat:= ForkNo;
      Open;
      try
        if Eof then
          begin
            BoundMLLObjectBranchCode:= -1;
            BoundMLLObjectCode:= -1;
          end
        else
          begin
            BoundMLLObjectBranchCode:= FieldByName('MLL_OBJECT_BRANCH_CODE').AsInteger;
            BoundMLLObjectCode:= FieldByName('MLL_OBJECT_CODE').AsInteger;
          end;
      finally
        Close;
      end;
    end;
end;

procedure TdmModelMovements.GetBoundMLObject(BoundType,
  BndObjectBranchCode, BndObjectNumber: Integer;
  out BndMLObjectBranchCode: Integer; out BndMLObjectCode: Integer;
  out IsNonActive: Integer; out IsOperationsModel: Boolean);
var
  BndPObjectBranchCode, BndPObjectCode: Integer;
begin
  Assert(BoundType >= 0);
  Assert(BndObjectBranchCode <> 0);
  Assert(BndObjectNumber <> 0);
  case BoundType of
    0: with qryGetSaleObject do
         begin
           ParamByName('SALE_BRANCH_CODE').AsFloat:= BndObjectBranchCode;
           ParamByName('SALE_NO').AsFloat:= BndObjectNumber;
           Open;
           try
             if Eof then
               begin
                 BndPObjectBranchCode:= -1;
                 BndPObjectCode:= -1;
               end
             else
               begin
                 BndPObjectBranchCode:= FieldByname('OBJECT_BRANCH_CODE').AsInteger;
                 BndPObjectCode:= FieldByName('OBJECT_CODE').AsInteger;
               end;
           finally
             Close;
           end;
         end;
    1: with qryGetSaleGroupObject do
         begin
           ParamByName('SALE_GROUP_OBJECT_BRANCH_CODE').AsFloat:= BndObjectBranchCode;
           ParamByName('SALE_GROUP_OBJECT_CODE').AsFloat:= BndObjectNumber;
           Open;
           try
             if Eof then
               begin
                 BndPObjectBranchCode:= -1;
                 BndPObjectCode:= -1;
               end
             else
               begin
                 BndPObjectBranchCode:= FieldByname('OBJECT_BRANCH_CODE').AsInteger;
                 BndPObjectCode:= FieldByName('OBJECT_CODE').AsInteger;
               end;
           finally
             Close;
           end;
         end;
    else
      begin
        BndPObjectBranchCode:= -1;
        BndPObjectCode:= -1;
      end;
  end;

  if BndPObjectBranchCode = -1 then
    begin
      BndMLObjectBranchCode:= -1;
      BndMLObjectCode:= -1;
    end
  else
    with qryGetBndMLObject do
      begin
        ParamByName('BND_PROCESS_OBJECT_BRANCH_CODE').AsFloat:= BndPObjectBranchCode;
        ParamByName('BND_PROCESS_OBJECT_CODE').AsFloat:= BndPObjectCode;
        Open;
        try
          if Eof then
            begin
              BndMLObjectBranchCode:= -2;
              BndMLObjectCode:= -2;
            end
          else
            begin
              BndMLObjectBranchCode:= FieldByName('ML_OBJECT_BRANCH_CODE').AsInteger;
              BndMLObjectCode:= FieldByName('ML_OBJECT_CODE').AsInteger;
              if (FieldByName('IS_ARCHIVED').AsInteger = 1) or
                 (FieldByName('IS_CLOSED').AsInteger = 1) or
                 (FieldByName('IS_ANNULED').AsInteger = 1) then
                IsNonActive:= 1
              else
                IsNonActive:= 0;
              IsOperationsModel:= qryGetBndMLObjectIS_OPERATIONS_MODEL.AsBoolean;
            end;
        finally
          Close;
        end;
      end;
end;

procedure TdmModelMovements.GetDataByMLMSCode(MLMSObjectBranchCode,
  MLMSObjectCode: Integer; out SaleBranchCode, SaleNo, MLLObjectBranchCode,
  MLLObjectCode, FromStageNo: Integer);
begin
  with qryGetDataByMLMS do
    begin
      ParamByName('MLMS_OBJECT_BRANCH_CODE').AsFloat:= MLMSObjectBranchCode;
      ParamByName('MLMS_OBJECT_CODE').AsFloat:= MLMSObjectCode;
      Open;
      try
        if Eof then
          SaleBranchCode:= -1
        else
          begin
            SaleBranchCode:= FieldByName('SALE_BRANCH_CODE').AsInteger;
            SaleNo:= FieldBYName('SALE_NO').AsInteger;
            MLLObjectBranchCode:= FieldByName('MLL_OBJECT_BRANCH_CODE').AsInteger;
            MLLObjectCode:= FieldByName('MLL_OBJECT_CODE').AsInteger;
            FromStageNo:= FieldByName('ML_MODEL_STAGE_NO').AsInteger;
          end;
      finally
        Close;
      end;
    end;
end;

function TdmModelMovements.GetMMCode(MMBranchCode: Integer): Integer;
begin
  Assert(MMBranchCode <> 0, 'Invalid branch code');

  with qryGetMMCode do
    begin
      Open;
      try
        Result:= qryGetMMCodeNEW_MM_CODE.AsInteger;
      finally
        Close;
      end;
    end;
end;

procedure TdmModelMovements.GetMMDataByCode(MMBranchCode, MMCode: Integer;
  out BoundType, BoundBranch, BoundNumber: Integer; out NoAsText: string;
  out ForkNo, FromStageNo: Integer);
begin
  with qryGetMMData do
    begin
      ParamByName('MM_BRANCH_CODE').AsFloat:= MMBranchCode;
      ParamByName('MM_CODE').AsFloat:= MMCode;
      Open;
      try
        if Eof then
          BoundType:= -1
        else
          begin
            BoundType:= FieldByName('BOUND_TYPE').AsInteger;
            BoundBranch:= FieldByName('BOUND_BRANCH_CODE').AsInteger;
            BoundNumber:= FieldByName('BOUND_NUMBER').AsInteger;
            NoAsText:= FieldByName('NO_AS_TEXT').AsString;
            ForkNo:= FieldByName('FORK_NO').AsInteger;
            FromStageNo:= FieldByName('FROM_STAGE_NO').AsInteger;
          end;
      finally
        Close;
      end;
    end;
end;

function TdmModelMovements.GetSpecialControlNeeded(MlmsoObjectBranchCode, MlmsoObjectCode: Integer): Boolean;
begin
  qryGetSpecialControlNeeded.ParamByName('MLMSO_OBJECT_BRANCH_CODE').AsInteger:= MlmsoObjectBranchCode;
  qryGetSpecialControlNeeded.ParamByName('MLMSO_OBJECT_CODE').AsInteger:= MlmsoObjectCode;

  Result:= qryGetSpecialControlNeeded.TempOpen/
    function: Boolean begin
      Result:= qryGetSpecialControlNeededSPECIAL_CONTROL_NEEDED.AsBoolean;
    end;
end;

procedure TdmModelMovements.GetStageNo(MLMSObjectBranchCode,
  MLMSObjectCode: Integer; out MLLObjectBranchCode, MLLObjectCode,
  StageNo: Integer);
begin
  with qryGetStageNo do
    begin
      ParamByName('MLMS_OBJECT_BRANCH_CODE').AsFloat:= MLMSObjectBranchCode;
      ParamByName('MLMS_OBJECT_CODE').AsFloat:= MLMSObjectCode;
      Open;
      try
        if Eof then
          MLLObjectBranchCode:= -1
        else
          begin
            MLLObjectBranchCode:= FieldByName('MLL_OBJECT_BRANCH_CODE').AsInteger;
            MLLObjectCode:= FieldByName('MLL_OBJECT_CODE').AsInteger;
            StageNo:= FieldByName('ML_MODEL_STAGE_NO').AsInteger;
          end;
      finally
        Close;
      end;
    end;
end;

procedure TdmModelMovements.qryModelMovementsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ProcessNoParamBeforeQueryOpen((DataSet as TAbmesSQLQuery).ParamByName('MLL_NO_AS_TEXT'));

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('RESULT_PRODUCT_CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrParamProductTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('DETAIL_CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);

  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('FROM_STAGE_CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);

  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('TO_STAGE_CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 2);

  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('TO_WASTE_CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 3);
end;

procedure TdmModelMovements.qryModelMovementsAfterClose(DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('TO_WASTE_CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 3);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('TO_STAGE_CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 2);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('FROM_STAGE_CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('DETAIL_CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)], 2);
  SvrParamProductTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('RESULT_PRODUCT_CHOSEN_PRODUCTS'), [(DataSet as TAbmesSQLQuery)]);
end;

function TdmModelMovements.GetOMCode(OMBranchCode: Integer): Integer;
begin
  Assert(OMBranchCode <> 0, 'Invalid branch code');

  with qryGetOMCode do
    begin
      Open;
      try
        Result:= qryGetOMCodeNEW_OM_CODE.AsInteger;
      finally
        Close;
      end;
    end;
end;

procedure TdmModelMovements.qryOperationMovementsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  ProcessNoParamBeforeQueryOpen((DataSet as TAbmesSQLQuery).ParamByName('MLL_NO_AS_TEXT'));
  ProcessProductParamBeforeQueryOpen((DataSet as TAbmesSQLQuery).ParamByName('RESULT_PRODUCT_CODE'));
  ProcessProductParamBeforeQueryOpen((DataSet as TAbmesSQLQuery).ParamByName('DETAIL_CODE'));

  SvrDeptTreeNodeFilter.PrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('FROM_MLMSO_CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);

  case VarToInt((DataSet as TAbmesSQLQuery).ParamByName('TO_OPERATION_OR_WASTE').Value) of
    1:
      begin
        SvrDeptTreeNodeFilter.PrepareFilteredNodes(
          (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('TO_MLMSO_CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 2);
      end;
    2:
      begin
        SvrDeptTreeNodeFilter.PrepareFilteredNodes(
          (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('TO_WASTE_CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 3);
      end;
  end;  { case }
end;

procedure TdmModelMovements.qryOperationMovementsAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('TO_WASTE_CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 3);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('TO_MLMSO_CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)], 2);
  SvrDeptTreeNodeFilter.UnPrepareFilteredNodes(
    (DataSet as TAbmesSQLQuery).CustomParams.ParamByName('FROM_MLMSO_CHOSEN_DEPTS'), [(DataSet as TAbmesSQLQuery)]);
end;

procedure TdmModelMovements.GetOmData(OmBranchCode, OmCode: Integer;
  out FromMlmsoObjectBranchCode, FromMlmsoObjectCode, OperationMovementTypeCode: Integer);
begin
  with qryOmData do
    begin
      ParamByName('OM_BRANCH_CODE').AsInteger:= OmBranchCode;
      ParamByName('OM_CODE').AsInteger:= OmCode;

      Open;
      try
        FromMlmsoObjectBranchCode:= qryOmDataFROM_MLMSO_OBJECT_BRANCH_CODE.AsInteger;
        FromMlmsoObjectCode:= qryOmDataFROM_MLMSO_OBJECT_CODE.AsInteger;
        OperationMovementTypeCode:= qryOmDataOPERATION_MOVEMENT_TYPE_CODE.AsInteger;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

procedure TdmModelMovements.prvOperationMovementQuantitiesGetData(
  Sender: TObject; DataSet: TCustomClientDataSet);
begin
  inherited;

  Assert(DataSet.RecordCount = 1);

  with DataSet do
    begin
      Edit;
      try
        if (FieldByName('DETAIL_TOTAL_IN_TECH_QUANTITY').AsFloat = 0) then
          FieldByName('DETAIL_REMAINING_TECH_QUANTITY').AsFloat:= 0
        else
          FieldByName('DETAIL_REMAINING_TECH_QUANTITY').AsFloat:=
            FieldByName('DETAIL_TOTAL_IN_TECH_QUANTITY').AsFloat -
            FieldByName('DETAIL_TOTAL_OUT_TECH_QUANTITY').AsFloat -
            FieldByName('DETAIL_TOTAL_WASTE_TECH_QTY').AsFloat;

        if FieldByName('PRODUCT_TECH_QUANTITY').IsNull then
          begin
            FieldByName('PRODUCT_TOTAL_IN_TECH_QUANTITY').Clear;
            FieldByName('PRODUCT_TOTAL_OUT_TECH_QTY').Clear;
            FieldByName('PRODUCT_TOTAL_WASTE_TECH_QTY').Clear;
            FieldByName('PRODUCT_REMAINING_TECH_QTY').Clear;
          end
        else  { if }
          begin
            FieldByName('PRODUCT_TOTAL_IN_TECH_QUANTITY').AsFloat:=
              FieldByName('DETAIL_TOTAL_IN_TECH_QUANTITY').AsFloat *
              FieldByName('PRODUCT_TECH_QUANTITY').AsFloat;
            FieldByName('PRODUCT_TOTAL_OUT_TECH_QTY').AsFloat:=
              FieldByName('DETAIL_TOTAL_OUT_TECH_QUANTITY').AsFloat *
              FieldByName('PRODUCT_TECH_QUANTITY').AsFloat;
            FieldByName('PRODUCT_TOTAL_WASTE_TECH_QTY').AsFloat:=
              FieldByName('DETAIL_TOTAL_WASTE_TECH_QTY').AsFloat *
              FieldByName('PRODUCT_TECH_QUANTITY').AsFloat;
            FieldByName('PRODUCT_REMAINING_TECH_QTY').AsFloat:=
              FieldByName('DETAIL_REMAINING_TECH_QUANTITY').AsFloat *
              FieldByName('PRODUCT_TECH_QUANTITY').AsFloat;
          end;  { if }

        Post;
      except
        Cancel;
        raise;
      end;  { try }
    end;  { with }
end;

function TdmModelMovements.GetMaxOperationWorkdayNo(AMlmsObjectBranchCode,
  AMlmsObjectCode, AMlmsOperationNo: Integer): Integer;
begin
  with qryMaxOperationWorkdayNo do
    begin
      ParamByName('MLMS_OBJECT_BRANCH_CODE').AsInteger:= AMlmsObjectBranchCode;
      ParamByName('MLMS_OBJECT_CODE').AsInteger:= AMlmsObjectCode;
      ParamByName('MLMS_OPERATION_NO').AsInteger:= AMlmsOperationNo;

      Open;
      try
        Result:= qryMaxOperationWorkdayNoMAX_OPERATION_WORKDAY_NO.AsInteger;
      finally
        Close;
      end;  { try }
    end;  { with }
end;

procedure TdmModelMovements.prvOperationMovementBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmModelMovements.prvOperationMovementAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmModelMovements.qryOperationMovementAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

function TdmModelMovements.GetOMNo: Integer;
begin
  with qryGetOMNo do
    begin
      Open;
      try
        Result:= qryGetOMNoNEW_OM_NO.AsInteger;
      finally
        Close;
      end;
    end;
end;

initialization
  TdmModelMovementsProxy.FSingleton:= TdmModelMovementsProxy.Create(TdmModelMovements);

finalization
  FreeAndNil(TdmModelMovementsProxy.FSingleton);
end.
