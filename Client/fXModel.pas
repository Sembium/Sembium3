unit fXModel;
                                                            
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fSpecificationAndXModelAbstract, Db, AbmesFields, ImgList, 
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, ComCtrls, GridsEh,
  DBGridEh, AbmesDBGrid, DBCtrls, ColorNavigator, StdCtrls, Buttons,
  ExtCtrls, Menus, fBaseFrame, fDBFrame, fMLBoundProcessObject, Mask,
  fFieldEditFrame, JvToolEdit, uClientTypes, JvButtons, PrnDbgeh, 
  ToolWin, AbmesDBCheckBox, dDocClient, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fProductFieldEditFrame, fProductFieldEditFrameBald, JvEdit,
  fSpecAndXModelUnapproveAbstract, fDateIntervalFrame, fDateFieldEditFrame,
  JvExStdCtrls, JvExControls, JvComponent, JvDBLookup, JvCaptionButton,
  fDeptFieldEditFrameBald, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, JvComponentBase, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions,
  DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TLineData = record
    No: array[1..MaxNoPos] of Integer;
    ForkNo: Integer;
    ParentMLLObjectBranchCode: Integer;
    ParentMLLObjectCode: Integer;
    Fork0MLLObjectBranchCode: Integer;
    Fork0MLLObjectCode: Integer;
    ParentLineDetailTechQuantity: Real;
    Fork0DetailCode: Integer;
    Fork0DetailTechQuantity: Real;
  end;

  TMLLObjectKey = record
    MLLObjectBranchCode: Integer;
    MLLObjectCode: Integer;
  end;

type
  TfmXModel = class(TfmSpecificationAndXModelAbstract)
    cdsDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataML_OBJECT_CODE: TAbmesFloatField;
    cdsDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField;
    cdsDataMAIN_DEPT_CODE: TAbmesFloatField;
    cdsDataRESULT_PRODUCT_CODE: TAbmesFloatField;
    cdsDataTECH_QUANTITY: TAbmesFloatField;
    cdsDataSPEC_VERSION_NO: TAbmesFloatField;
    cdsDataSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsDataRESULT_STORE_CODE: TAbmesFloatField;
    cdsDataENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField;
    cdsDataIS_ARCHIVED: TAbmesFloatField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataLIMITING_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataLIMITING_DATE: TAbmesSQLTimeStampField;
    cdsDataLIMITING_TIME: TAbmesSQLTimeStampField;
    cdsDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCLOSE_DATE: TAbmesSQLTimeStampField;
    cdsDataCLOSE_TIME: TAbmesSQLTimeStampField;
    cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsDataNOTES: TAbmesWideStringField;
    pnlBoundObject: TPanel;
    cdsDataqryXModelLines: TDataSetField;
    cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataPARENT_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataPARENT_MLL_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataFORK_0_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataFORK_0_MLL_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataFORK_NO: TAbmesFloatField;
    cdsGridDataLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataPAR_LINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataSTORE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataPRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField;
    actChangeBoundObject: TAction;
    cdsDataMAIN_DEPT_NAME: TAbmesWideStringField;
    cdsDataMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsDataRESULT_PRODUCT_NAME: TAbmesWideStringField;
    cdsDataRESULT_PRODUCT_NO: TAbmesFloatField;
    cdsGridDataqryXModelLineStages: TDataSetField;
    cdsStages: TAbmesClientDataSet;
    dsStages: TDataSource;
    cdsStagesMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsStagesMLMS_OBJECT_CODE: TAbmesFloatField;
    cdsStagesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsStagesMLL_OBJECT_CODE: TAbmesFloatField;
    cdsStagesML_MODEL_STAGE_NO: TAbmesFloatField;
    cdsStagesDEPT_CODE: TAbmesFloatField;
    cdsStagesDEPT_NAME: TAbmesWideStringField;
    cdsStagesDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsStagesDEPT_IS_STORE: TAbmesFloatField;
    cdsStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    cdsStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    cdsGridDataIS_NOT_FORK: TAbmesFloatField;
    cdsGridDataIS_FORK: TAbmesFloatField;
    cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataML_OBJECT_CODE: TAbmesFloatField;
    cdsStages_MAX_MLMS_OBJECT_CODE: TAggregateField;
    cdsStages_MAX_ML_MODEL_STAGE_NO: TAggregateField;
    actAddFork: TAction;
    miLineBeforeAddFork: TMenuItem;
    miAddFork: TMenuItem;
    cdsGridDataMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField;
    cdsGridDataMLL_CHANGE_STATUS: TAbmesFloatField;
    cdsGridData_MLL_CHANGE_STATUS_ABBREV: TAbmesWideStringField;
    actLineChange: TAction;
    cdsInsertSpecLines: TAbmesClientDataSet;
    cdsInsertSpecStages: TAbmesClientDataSet;
    cdsInsertSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSpecLinesSPEC_LINE_CODE: TAbmesFloatField;
    cdsInsertSpecLinesNO_1: TAbmesFloatField;
    cdsInsertSpecLinesNO_2: TAbmesFloatField;
    cdsInsertSpecLinesNO_3: TAbmesFloatField;
    cdsInsertSpecLinesNO_4: TAbmesFloatField;
    cdsInsertSpecLinesNO_5: TAbmesFloatField;
    cdsInsertSpecLinesNO_6: TAbmesFloatField;
    cdsInsertSpecLinesNO_7: TAbmesFloatField;
    cdsInsertSpecLinesNO_8: TAbmesFloatField;
    cdsInsertSpecLinesDETAIL_CODE: TAbmesFloatField;
    cdsInsertSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_CODE: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsInsertSpecLinesNOTES: TAbmesWideStringField;
    cdsInsertSpecLinesPARENT_NO_1: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_2: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_3: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_4: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_5: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_6: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_7: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_8: TAbmesFloatField;
    cdsInsertSpecLinesqryInsertSpecStages: TDataSetField;
    cdsInsertSpecStagesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSpecStagesSPEC_LINE_CODE: TAbmesFloatField;
    cdsInsertSpecStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsInsertSpecStagesSPEC_LINE_STAGE_NO: TAbmesFloatField;
    cdsInsertSpecStagesDEPT_CODE: TAbmesFloatField;
    cdsInsertSpecStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsInsertSpecStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    cdsInsertSpecStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    cdsDataOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    cdsData_OWNER_EMPLOYEE_NAME: TAbmesWideStringField;
    pnlClosed: TPanel;
    chbClosed: TCheckBox;
    pnlAnnuled: TPanel;
    chbAnnuled: TCheckBox;
    cdsData_LIMITING_EMPLOYEE_NAME: TAbmesWideStringField;
    actMakeLimiting: TAction;
    btnMakeLimiting: TBitBtn;
    cdsDataBND_PROCESS_OBJECT_CLASS_CODE: TAbmesFloatField;
    cdsDataSALE_BRANCH_NO: TAbmesFloatField;
    cdsDataSALE_NO: TAbmesFloatField;
    cdsDataSALE_GROUP_BRANCH_NO: TAbmesFloatField;
    cdsDataSALE_GROUP_CODE: TAbmesFloatField;
    cdsInsertSpecLinesMAIN_DEPT_CODE: TAbmesFloatField;
    cdsInsertSpecLinesSPEC_VERSION_NO: TAbmesFloatField;
    pgdSaleModel: TPrintDBGridEh;
    pgdSaleGroupModel: TPrintDBGridEh;
    pgdProductionOrderModel: TPrintDBGridEh;
    cdsStages_MAX_TOTAL_TREATMENT_WORKDAYS: TAggregateField;
    cdsTasks: TAbmesClientDataSet;
    cdsDataqryXModelTasks: TDataSetField;
    dsTasks: TDataSource;
    cdsTasksML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsTasksML_OBJECT_CODE: TAbmesFloatField;
    cdsTasksMATERIAL_LIST_TASK_NO: TAbmesFloatField;
    cdsTasksMATERIAL_LIST_TASK_NAME: TAbmesWideStringField;
    cdsTasksqryXModelTaskDepts: TDataSetField;
    cdsTaskDepts: TAbmesClientDataSet;
    cdsTaskDeptsML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsTaskDeptsML_OBJECT_CODE: TAbmesFloatField;
    cdsTaskDeptsMATERIAL_LIST_TASK_NO: TAbmesFloatField;
    cdsTaskDeptsDEPT_CODE: TAbmesFloatField;
    cdsTaskDeptsDEPT_NAME: TAbmesWideStringField;
    cdsTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField;
    dsTaskDepts: TDataSource;
    cdsTasks_MAX_MATERIAL_LIST_TASK_NO: TAggregateField;
    cdsInsertSpecTasks: TAbmesClientDataSet;
    cdsInsertSpecTasksSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSpecTasksSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsInsertSpecTasksSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField;
    cdsInsertSpecTasksSPEC_MODEL_VARIANT_TASK_NAME: TAbmesWideStringField;
    cdsInsertSpecTasksqryInsertSpecTaskDepts: TDataSetField;
    cdsInsertSpecTaskDepts: TAbmesClientDataSet;
    cdsInsertSpecTaskDeptsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSpecTaskDeptsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsInsertSpecTaskDeptsSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField;
    cdsInsertSpecTaskDeptsDEPT_CODE: TAbmesFloatField;
    cdsInsertSpecTaskDeptsDEPT_NAME: TAbmesWideStringField;
    cdsInsertSpecTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsModelTasksDEPT_DATES: TAbmesWideStringField;
    cdsModelTasksTO_DEPT_DATES: TAbmesWideStringField;
    cdsModelTasksFORK_NO: TAbmesFloatField;
    cdsModelTasksHeaderLIMITING_STATUS: TAbmesWideStringField;
    cdsModelTasksHeaderBEGIN_DATE: TAbmesWideStringField;
    cdsModelTasksHeaderEND_DATE: TAbmesWideStringField;
    cdsModelTasksHeaderSALE_BRANCH_NO: TAbmesFloatField;
    cdsModelTasksHeaderSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsModelTasksHeaderSALE_NO: TAbmesFloatField;
    cdsModelTasksHeaderMAIN_DEPT_NAME: TAbmesWideStringField;
    cdsModelTasksHeaderOWNER_EMPLOYEE_CODE: TAbmesFloatField;
    cdsModelTasksHeader_OWNER_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsModelTasksHeaderRESULT_PRODUCT_NAME: TAbmesWideStringField;
    cdsModelTasksHeaderRESULT_PRODUCT_NO: TAbmesFloatField;
    cdsModelTasksHeaderTECH_QUANTITY: TAbmesFloatField;
    cdsModelTasksHeaderSALE_MANAGER_CODE: TAbmesFloatField;
    cdsModelTasksHeaderSALE_MANAGER_NAME: TAbmesWideStringField;
    cdsModelTasksHeaderSALE_CLIENT_COMPANY_SHORT_NAME: TAbmesWideStringField;
    cdsModelTasksHeaderSALE_CLIENT_COUNTRY_ABBREV: TAbmesWideStringField;
    cdsModelTasksHeaderSALE_CLIENT_PRODUCT_SIGNATURE: TAbmesWideStringField;
    cdsModelTasksHeaderSALE_CLIENT_REQUEST_NO: TAbmesWideStringField;
    cdsStagesNO_1: TAbmesFloatField;
    cdsStagesNO_2: TAbmesFloatField;
    cdsStagesNO_3: TAbmesFloatField;
    cdsStagesNO_4: TAbmesFloatField;
    cdsStagesNO_5: TAbmesFloatField;
    cdsStagesNO_6: TAbmesFloatField;
    cdsStagesNO_7: TAbmesFloatField;
    cdsStagesNO_8: TAbmesFloatField;
    cdsStagesFORK_NO: TAbmesFloatField;
    actShowProductVIM: TAction;
    pnlLineChangeButton: TPanel;
    btnLineChange: TBitBtn;
    pnlShowProductVIMButton: TPanel;
    cdsInsertSpecLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    pnlLineChangesButton: TPanel;
    btnLineChanges: TBitBtn;
    actLineChanges: TAction;
    actModelChanges: TAction;
    cdsStagesqryMLMSOperations: TDataSetField;
    cdsInsertSpecOperations: TAbmesClientDataSet;
    cdsInsertSpecStagesqryInsertSpecOperations: TDataSetField;
    cdsOperations_MAX_MLMSO_OBJECT_CODE: TAggregateField;
    cdsOperationsMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsOperationsMLMS_OBJECT_CODE: TAbmesFloatField;
    cdsOperationsMLMS_OPERATION_NO: TAbmesFloatField;
    cdsDataMAX_MLMS_OBJECT_CODE: TAbmesFloatField;
    cdsStagesTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsStagesTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataLAST_MM_MLMS_MODEL_STAGE_NO: TAbmesFloatField;
    cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataANNUL_DATE: TAbmesSQLTimeStampField;
    cdsGridDataANNUL_TIME: TAbmesSQLTimeStampField;
    cdsGridDataNOT_STORNO_STORE_DEAL_COUNT: TAbmesFloatField;
    cdsInsertSpecLinesNO_9: TAbmesFloatField;
    cdsInsertSpecLinesNO_10: TAbmesFloatField;
    cdsInsertSpecLinesNO_11: TAbmesFloatField;
    cdsInsertSpecLinesNO_12: TAbmesFloatField;
    cdsInsertSpecLinesNO_13: TAbmesFloatField;
    cdsInsertSpecLinesNO_14: TAbmesFloatField;
    cdsInsertSpecLinesNO_15: TAbmesFloatField;
    cdsInsertSpecLinesNO_16: TAbmesFloatField;
    cdsInsertSpecLinesNO_17: TAbmesFloatField;
    cdsInsertSpecLinesNO_18: TAbmesFloatField;
    cdsInsertSpecLinesNO_19: TAbmesFloatField;
    cdsInsertSpecLinesNO_20: TAbmesFloatField;
    cdsInsertSpecLinesNO_21: TAbmesFloatField;
    cdsInsertSpecLinesNO_22: TAbmesFloatField;
    cdsInsertSpecLinesNO_23: TAbmesFloatField;
    cdsInsertSpecLinesNO_24: TAbmesFloatField;
    cdsInsertSpecLinesNO_25: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_9: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_10: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_11: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_12: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_13: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_14: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_15: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_16: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_17: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_18: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_19: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_20: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_21: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_22: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_23: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_24: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_25: TAbmesFloatField;
    cdsStagesNO_9: TAbmesFloatField;
    cdsStagesNO_10: TAbmesFloatField;
    cdsStagesNO_11: TAbmesFloatField;
    cdsStagesNO_12: TAbmesFloatField;
    cdsStagesNO_13: TAbmesFloatField;
    cdsStagesNO_14: TAbmesFloatField;
    cdsStagesNO_15: TAbmesFloatField;
    cdsStagesNO_16: TAbmesFloatField;
    cdsStagesNO_17: TAbmesFloatField;
    cdsStagesNO_18: TAbmesFloatField;
    cdsStagesNO_19: TAbmesFloatField;
    cdsStagesNO_20: TAbmesFloatField;
    cdsStagesNO_21: TAbmesFloatField;
    cdsStagesNO_22: TAbmesFloatField;
    cdsStagesNO_23: TAbmesFloatField;
    cdsStagesNO_24: TAbmesFloatField;
    cdsStagesNO_25: TAbmesFloatField;
    cdsGridData_MAX_MLL_OBJECT_CODE: TAggregateField;
    cdsGridData_MAX_MLL_CHANGE_STATUS: TAggregateField;
    pnlLeftButtons: TPanel;
    pnlModelChangesButton: TPanel;
    btnModelChanges: TBitBtn;
    pnlCloseModelButton: TPanel;
    btnCloseModel: TBitBtn;
    actCloseModel: TAction;
    cdsDataRES_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsData_RESULT_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsDataQUANTITY_IN: TAbmesFloatField;
    cdsDataRES_PRODUCT_TECH_MEASURE_COEF: TAbmesFloatField;
    cdsInsertSpecStagesDEPT_NAME: TAbmesWideStringField;
    cdsInsertSpecStagesDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsInsertSpecStagesDEPT_IS_STORE: TAbmesFloatField;
    cdsInsertSpecLinesDETAIL_NAME: TAbmesWideStringField;
    cdsInsertSpecLinesDETAIL_NO: TAbmesFloatField;
    cdsInsertSpecLinesDETAIL_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsInsertSpecLinesDETAIL_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_NAME: TAbmesWideStringField;
    cdsInsertSpecLinesPRODUCT_NO: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField;
    cdsRecursivePrintFORK_NO: TAbmesFloatField;
    cdsStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsInsertSpecStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsStagesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsStagesDOC_CODE: TAbmesFloatField;
    cdsStagesHAS_DOCUMENTATION: TAbmesFloatField;
    cdsInsertSpecStagesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsInsertSpecStagesDOC_CODE: TAbmesFloatField;
    cdsInsertSpecStagesHAS_DOCUMENTATION: TAbmesFloatField;
    cdsOperationsIS_ACTIVE: TAbmesFloatField;
    cdsInsertSpecOperationsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsInsertSpecOperationsSPEC_LINE_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsSMVS_OPERATION_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsSMVS_OPERATION_NO: TAbmesFloatField;
    cdsInsertSpecOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsInsertSpecOperationsDEPT_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsDEPT_NAME: TAbmesWideStringField;
    cdsInsertSpecOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsInsertSpecOperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    cdsInsertSpecOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsInsertSpecOperationsPROFESSION_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsEFFORT_COEF: TAbmesFloatField;
    cdsInsertSpecOperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsInsertSpecOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsInsertSpecOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsInsertSpecOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsInsertSpecOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsInsertSpecOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsInsertSpecOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsInsertSpecOperationsNOTES: TAbmesWideStringField;
    cdsInsertSpecOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsDOC_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    cdsOperationsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsInsertSpecOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsInsertSpecLinesDETAIL_IS_PRODUCTION_PRODUCT: TAbmesFloatField;
    cdsInsertSpecStagesSMVS_TYPE_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    cdsStagesOPERATION_COUNT: TAbmesFloatField;
    cdsDataBND_SALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsInsertSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField;
    cdsDataTRANSIENT_STATUS_CODE: TAbmesFloatField;
    cdsDataWORKDAYS_TO_EXIST: TAbmesFloatField;
    cdsOperationsMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsOperationsMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsOperationsNO_1: TAbmesFloatField;
    cdsOperationsNO_2: TAbmesFloatField;
    cdsOperationsNO_3: TAbmesFloatField;
    cdsOperationsNO_4: TAbmesFloatField;
    cdsOperationsNO_5: TAbmesFloatField;
    cdsOperationsNO_6: TAbmesFloatField;
    cdsOperationsNO_7: TAbmesFloatField;
    cdsOperationsNO_8: TAbmesFloatField;
    cdsOperationsNO_9: TAbmesFloatField;
    cdsOperationsNO_10: TAbmesFloatField;
    cdsOperationsNO_11: TAbmesFloatField;
    cdsOperationsNO_12: TAbmesFloatField;
    cdsOperationsNO_13: TAbmesFloatField;
    cdsOperationsNO_14: TAbmesFloatField;
    cdsOperationsNO_15: TAbmesFloatField;
    cdsOperationsNO_16: TAbmesFloatField;
    cdsOperationsNO_17: TAbmesFloatField;
    cdsOperationsNO_18: TAbmesFloatField;
    cdsOperationsNO_19: TAbmesFloatField;
    cdsOperationsNO_20: TAbmesFloatField;
    cdsOperationsNO_21: TAbmesFloatField;
    cdsOperationsNO_22: TAbmesFloatField;
    cdsOperationsNO_23: TAbmesFloatField;
    cdsOperationsNO_24: TAbmesFloatField;
    cdsOperationsNO_25: TAbmesFloatField;
    cdsOperationsFORK_NO: TAbmesFloatField;
    cdsOperationsML_MODEL_STAGE_NO: TAbmesFloatField;
    cdsInsertSpecOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsInsertSpecOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsStagesLAST_OM_MLMS_OPERATION_NO: TAbmesFloatField;
    cdsDataIS_OPERATIONS_MODEL: TAbmesFloatField;
    cdsInsertSpecStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    cdsStages_MIN_ML_MODEL_STAGE_NO: TAggregateField;
    cdsInsertSpecStagesOPERATION_COUNT: TAbmesFloatField;
    cdsInsertSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField;
    cdsInsertSpecOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    cdsInsertSpecOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsOperationsTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsOperationsTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsGridDataNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    cdsModelTasksNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField;
    cdsGridDataLDTQ: TAbmesClientDataSet;
    cdsGridDataLDTQNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsGridDataLDTQFORK_NO: TAbmesFloatField;
    cdsGridDataLDTQIS_FORK: TAbmesFloatField;
    cdsGridDataLDTQLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataLDTQ_SUM_FORKS_QUANTITY: TAggregateField;
    cdsGridDataMAX_MOVED_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataLDTQMAX_MOVED_TECH_QUANTITY: TAbmesFloatField;
    cdsInsertSpecOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    cdsGridDataLDTQ_FORK_COUNT: TAggregateField;
    cdsInsertSpecLinesDETAIL_PARENT_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    cdsGridDataIS_WASTE_FORK: TAbmesFloatField;
    cdsGridDataLDTQIS_NOT_WASTE_FORK: TAbmesFloatField;
    cdsFork0Stages: TAbmesClientDataSet;
    cdsFork0Operations: TAbmesClientDataSet;
    cdsFork0StagesML_MODEL_STAGE_NO: TAbmesFloatField;
    cdsFork0StagesDEPT_CODE: TAbmesFloatField;
    cdsFork0StagesDEPT_NAME: TAbmesWideStringField;
    cdsFork0StagesDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsFork0StagesDEPT_IS_STORE: TAbmesFloatField;
    cdsFork0StagesTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsFork0StagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    cdsFork0StagesOUTGOING_WORKDAYS: TAbmesFloatField;
    cdsFork0StagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsFork0StagesTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsFork0StagesTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsFork0StagesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsFork0StagesDOC_CODE: TAbmesFloatField;
    cdsFork0StagesHAS_DOCUMENTATION: TAbmesFloatField;
    cdsFork0StagesOPERATION_COUNT: TAbmesFloatField;
    cdsFork0OperationsMLMS_OPERATION_NO: TAbmesFloatField;
    cdsFork0OperationsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsFork0OperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsFork0OperationsDEPT_CODE: TAbmesFloatField;
    cdsFork0OperationsDEPT_NAME: TAbmesWideStringField;
    cdsFork0OperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsFork0OperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    cdsFork0OperationsDEPT_PARENT_CODE: TAbmesFloatField;
    cdsFork0OperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    cdsFork0OperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    cdsFork0OperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsFork0OperationsPROFESSION_CODE: TAbmesFloatField;
    cdsFork0OperationsEFFORT_COEF: TAbmesFloatField;
    cdsFork0OperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsFork0OperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsFork0OperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsFork0OperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsFork0OperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsFork0OperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsFork0OperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsFork0OperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsFork0OperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsFork0OperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsFork0OperationsNOTES: TAbmesWideStringField;
    cdsFork0OperationsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsFork0OperationsDOC_CODE: TAbmesFloatField;
    cdsFork0OperationsHAS_DOCUMENTATION: TAbmesFloatField;
    cdsFork0OperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsFork0OperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsFork0OperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    cdsFork0OperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsFork0OperationsTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsFork0OperationsTREATMENT_END_DATE: TAbmesSQLTimeStampField;
    cdsFork0OperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    cdsFork0OperationsX_MLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsFork0OperationsX_MLMS_OBJECT_CODE: TAbmesFloatField;
    cdsFork0StagesX_MLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsFork0StagesX_MLMS_OBJECT_CODE: TAbmesFloatField;
    dsFork0Stages: TDataSource;
    cdsOperationsVARIANT_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_IS_INACTIVE: TAbmesFloatField;
    cdsInsertSpecLinesDETAIL_IS_INACTIVE: TAbmesFloatField;
    actModelStatus: TAction;
    cdsModelStatusParams: TAbmesClientDataSet;
    cdsModelStatusParamsML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsModelStatusParamsML_OBJECT_CODE: TAbmesFloatField;
    cdsModelStatusParamsMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsModelStatusParamsMLL_OBJECT_CODE: TAbmesFloatField;
    pnlModelStatus: TPanel;
    btnModelStatus: TBitBtn;
    cdsOperationsHAS_IN_MOVEMENTS: TAbmesFloatField;
    cdsOperationsHAS_OUT_MOVEMENTS: TAbmesFloatField;
    cdsDataMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField;
    actModelCapacityStatus: TAction;
    pnlModelCapacityStatus: TPanel;
    btnModelCapacityStatus: TBitBtn;
    frMLBoundProcessObject: TfrMLBoundProcessObject;
    gbProductionFinal: TGroupBox;
    lblResultProduct: TLabel;
    lblTechQuantity: TLabel;
    txtTechMeasure: TDBText;
    lblResultStore: TLabel;
    lblEnterResultStoreBeginDate: TLabel;
    edtTechQuantity: TDBEdit;
    frResultProduct: TfrProductFieldEditFrameBald;
    gbEngineering: TGroupBox;
    lblSpecVersionNo: TLabel;
    lblSpecVersionNo2: TLabel;
    lblSpecModelVariantNo: TLabel;
    lblSpecModelVariantNo2: TLabel;
    lblLimitingEmployee: TLabel;
    lblLimitingDate: TLabel;
    lblSaleType: TLabel;
    edtSpecVersionNo: TDBEdit;
    edtSpecModelVariantNo: TDBEdit;
    edtLimitingEmployeeName: TDBEdit;
    edtSaleType: TDBEdit;
    gbNotes: TGroupBox;
    moNotes: TDBMemo;
    cdsStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    cdsInsertSpecStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    cdsFork0StagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    cdsInsertSpecOperationsD_HOUR_PRICE: TAbmesFloatField;
    cdsFork0OperationsD_HOUR_PRICE: TAbmesFloatField;
    cdsStageInvestedValuesMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsStageInvestedValuesMLMS_OBJECT_CODE: TAbmesFloatField;
    cdsDataMAX_MLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_SINGLE_PRICE: TAbmesFloatField;
    gbPrices: TGroupBox;
    lblInvestedValueType: TLabel;
    lblTotalInvestedValue: TLabel;
    lblTotalInvestedValueCurrencyAbbrev: TLabel;
    lblInvestedValueResultProductTechQuantity: TLabel;
    txtSpecProductTechMeasureAbbrev: TDBText;
    edtInvestedValueType: TEdit;
    btnInvestedValueFilter: TBitBtn;
    edtTotalInvestedValue: TJvEdit;
    edtInvestedValueResultProductTechQuantity: TJvEdit;
    cdsMllInvestedValues: TAbmesClientDataSet;
    cdsMlmsInvestedValues: TAbmesClientDataSet;
    cdsOperations_SUM_VARIANT_DETAIL_TECH_QTY: TAggregateField;
    cdsOperations_OPERATION_ACTIVE_VARIANT_COUNT: TAggregateField;
    cdsDataMODEL_LEVEL_1_INVESTED_VALUE: TAbmesFloatField;
    cdsGridDataAPPROVE_CYCLE_NO: TAbmesFloatField;
    cdsInsertSpecLinesAPPROVE_CYCLE_NO: TAbmesFloatField;
    cdsInsertSpecLinesIS_COMPLETE: TAbmesFloatField;
    cdsInsertSpecLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField;
    lblStructureCoef: TLabel;
    edtStructureCoef: TJvEdit;
    cdsInsertSpecOperationsIS_NORMAL_OPERATION: TAbmesFloatField;
    cdsStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsInsertSpecStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsInsertSpecOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsStagesDOC_IS_COMPLETE: TAbmesFloatField;
    cdsInsertSpecStagesDOC_IS_COMPLETE: TAbmesFloatField;
    cdsInsertSpecOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    cdsFork0StagesDOC_IS_COMPLETE: TAbmesFloatField;
    cdsFork0OperationsDOC_IS_COMPLETE: TAbmesFloatField;
    cdsFork0StagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsFork0OperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsStages_SHOW_APPROVE_CYCLE_NO: TAbmesWideStringField;
    cdsStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsInsertSpecStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsFork0StagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsFork0OperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    frEnterResultStoreDateInterval: TfrDateIntervalFrame;
    frLimitingDate: TfrDateFieldEditFrame;
    cdsInsertSpecStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsInsertSpecStagesDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsInsertSpecOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsInsertSpecOperationsDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsFork0StagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsFork0StagesDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsFork0OperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsFork0OperationsDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsDataMAIN_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsDataMAIN_DEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsStagesDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsDataINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    gbProduction: TGroupBox;
    lblProductionDept: TLabel;
    lblModelLegth: TLabel;
    lblPlanModelLength: TLabel;
    lblRealModelLength: TLabel;
    edtProductionDateDiff: TLabel;
    lblProductionDateDiffMax: TLabel;
    lblProductionDateDiffMin: TLabel;
    frProductionDept: TfrDeptFieldEditFrameBald;
    edtPlanModelLength: TDBEdit;
    edtRealModelLength: TDBEdit;
    edtProductionDateDiffMax: TDBEdit;
    edtProductionDateDiffMin: TDBEdit;
    lblEnterShipmentStoreDateDiff: TLabel;
    edtEnterShipmentStoreDateDiff: TDBEdit;
    frResultStore: TfrDeptFieldEditFrameBald;
    lblOkidu: TLabel;
    edtModelDevelopmentTypeAbbrev: TDBEdit;
    lblModelDevelopmentType: TLabel;
    gbWastingSale: TGroupBox;
    gbWastingSaleDetails: TPanel;
    pnlWastingSale: TPanel;
    lblWastingSale: TLabel;
    edtWastingSaleNo: TDBEdit;
    btnWastingSaleModelStatus: TBitBtn;
    pnlWasteCompensatorProductionOrders: TPanel;
    btnWasteCompensatorProductionOrders: TBitBtn;
    edtWastingSaleBranchNo: TDBEdit;
    pnlIsArchived: TPanel;
    chbArchived: TAbmesDBCheckBox;
    edtIsWasteCompenstatingOrder: TDBEdit;
    actWastingSaleModelStatus: TAction;
    actWasteCompensatorProductionOrders: TAction;
    cdsML: TAbmesClientDataSet;
    cdsMLML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsMLML_OBJECT_CODE: TAbmesFloatField;
    lblQuantity: TLabel;
    edtQuantity: TDBEdit;
    txtMeasureAbbrev: TDBText;
    cdsWasteCompensatorsParams: TAbmesClientDataSet;
    cdsWasteCompensatorsParamsIS_WASTE_COMPENSATOR_STATUS: TAbmesFloatField;
    cdsWasteCompensatorsParamsWASTING_SALE_BRANCH_CODE: TAbmesFloatField;
    cdsWasteCompensatorsParamsWASTING_SALE_NO: TAbmesFloatField;
    cdsDataLAST_SHIPMENT_STORE_IN_DATE: TAbmesSQLTimeStampField;
    cdsData_ENTER_SH_STORE_DATE_DIFF: TAbmesFloatField;
    gbPriority: TGroupBox;
    edtPriority: TDBEdit;
    cdsDataSALE_REMAINING_QUANTITY: TAbmesFloatField;
    lblStartAfterLimitingDays: TLabel;
    edtStartAfterLimitingDays: TDBEdit;
    edtOwnerEmployee: TDBEdit;
    gbWorkPriority: TGroupBox;
    edtWorkPriority: TDBEdit;
    cdsWasteCompensatorsParamsMIN_ML_STATE_CODE: TAbmesFloatField;
    cdsWasteCompensatorsParamsMAX_ML_STATE_CODE: TAbmesFloatField;
    cdsData_OWNER_EMPLOYEE_NO: TAbmesFloatField;
    cdsModelTasksHeader_OWNER_EMPLOYEE_NO: TAbmesFloatField;
    cdsEmployees: TAbmesClientDataSet;
    cdsEmployeesEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeesEMPLOYEE_NAME: TAbmesWideStringField;
    cdsEmployeesEMPLOYEE_NO: TAbmesFloatField;
    cdsInsertSpecOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsInsertSpecOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsStructurePrintHeader: TAbmesClientDataSet;
    cdsStructurePrintHeaderSALE_IDENTIFIER: TAbmesWideStringField;
    cdsStructurePrintHeaderPRIORITY_NO: TAbmesFloatField;
    cdsStructurePrintHeaderWORK_PRIORITY_NO: TAbmesFloatField;
    cdsStructurePrintHeaderHAS_WASTE_COMPENSATORS: TAbmesFloatField;
    cdsStructurePrintHeaderRESULT_PRODUCT_NAME: TAbmesWideStringField;
    cdsStructurePrintHeaderRESULT_PRODUCT_NO: TAbmesFloatField;
    cdsStructurePrintHeaderSALE_MANUFACTURE_QUANTITY: TAbmesFloatField;
    cdsStructurePrintHeaderSALE_MEASURE_ABBREV: TAbmesWideStringField;
    cdsStructurePrintHeaderRESULT_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsStructurePrintHeaderSTORE_DATE_INTERVAL: TAbmesWideStringField;
    cdsStructurePrintHeaderCOMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    cdsStructurePrintHeaderMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsStructurePrintHeader_OWNER_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsStructurePrintHeaderINVESTED_VALUE_MEASURE_ABBREV: TAbmesWideStringField;
    cdsStructurePrintHeaderINVESTED_VALUE_TYPE: TAbmesWideStringField;
    cdsStructurePrintHeaderINVESTED_VALUE_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsStructurePrintHeaderTOTAL_INVESTED_VALUE: TAbmesWideStringField;
    cdsStructurePrintHeaderINVESTED_VALUE_QUANTITY: TAbmesWideStringField;
    cdsStructurePrintHeaderML_STATE: TAbmesWideStringField;
    cdsInsertSpecOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsInsertSpecOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsInsertSpecOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsOperationsDONE_SETUP_COUNT: TAbmesFloatField;
    cdsInsertSpecOperationsSETUP_COUNT: TAbmesFloatField;
    cdsFork0OperationsSETUP_COUNT: TAbmesFloatField;
    cdsFork0OperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsFork0OperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsFork0OperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsFork0OperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsFork0OperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsFork0OperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsModelTasksHeaderML_STATE: TAbmesWideStringField;
    cdsModelTasksHeaderSALE_IDENTIFIER: TAbmesWideStringField;
    cdsModelTasksHeaderHAS_WASTE_COMPENSATORS: TAbmesFloatField;
    cdsModelTasksHeaderRESULT_STORE_IDENTIFIER: TAbmesWideStringField;
    cdsModelTasksHeaderSTORE_DATE_INTERVAL: TAbmesWideStringField;
    cdsModelTasksHeaderMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsModelTasksHeaderPRIORITY_NO: TAbmesFloatField;
    cdsModelTasksHeaderWORK_PRIORITY_NO: TAbmesFloatField;
    cdsModelTasksHeaderIS_WASTE_COMPENSATING_ORDER: TAbmesFloatField;
    cdsModelTasksHeaderSALE_MANUFACTURE_QUANTITY: TAbmesFloatField;
    cdsModelTasksHeaderSALE_MEASURE_ABBREV: TAbmesWideStringField;
    cdsModelTasksHeaderCOMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    cdsModelTasksHeaderSTRUCTURE_COEF: TAbmesWideStringField;
    cdsInsertSpecOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    cdsFork0OperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    cdsInsertSpecOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    cdsInsertSpecOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    cdsFork0OperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    cdsFork0OperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    cdsMlmsInvestedValuesMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsMlmsInvestedValuesMLMS_OBJECT_CODE: TAbmesFloatField;
    cdsMlmsInvestedValuesPLAN_INVESTED_VALUE_2: TAbmesFloatField;
    cdsMlmsInvestedValuesPLAN_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsInvestedValuesREAL_INVESTED_VALUE_2: TAbmesFloatField;
    cdsMlmsInvestedValuesREAL_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsInvestedValuesWASTE_INVESTED_VALUE_2: TAbmesFloatField;
    cdsMlmsInvestedValuesWASTE_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsInvestedValuesPLAN_INVESTED_VALUE_3: TAbmesFloatField;
    cdsMlmsInvestedValuesPLAN_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsInvestedValuesREAL_INVESTED_VALUE_3: TAbmesFloatField;
    cdsMlmsInvestedValuesREAL_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsInvestedValuesWASTE_INVESTED_VALUE_3: TAbmesFloatField;
    cdsMlmsInvestedValuesWASTE_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsInvestedValuesPLAN_INVESTED_VALUE_4: TAbmesFloatField;
    cdsMlmsInvestedValuesPLAN_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsInvestedValuesREAL_INVESTED_VALUE_4: TAbmesFloatField;
    cdsMlmsInvestedValuesREAL_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsInvestedValuesWASTE_INVESTED_VALUE_4: TAbmesFloatField;
    cdsMlmsInvestedValuesWASTE_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsInvestedValuesPLAN_INVESTED_VALUE_5: TAbmesFloatField;
    cdsMlmsInvestedValuesPLAN_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsInvestedValuesREAL_INVESTED_VALUE_5: TAbmesFloatField;
    cdsMlmsInvestedValuesREAL_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsInvestedValuesWASTE_INVESTED_VALUE_5: TAbmesFloatField;
    cdsMlmsInvestedValuesWASTE_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    cdsMllInvestedValuesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsMllInvestedValuesMLL_OBJECT_CODE: TAbmesFloatField;
    cdsMllInvestedValuesPLAN_INVESTED_VALUE_1: TAbmesFloatField;
    cdsMllInvestedValuesPLAN_IV_1_IS_INCOMPLETE: TAbmesFloatField;
    cdsMllInvestedValuesPLAN_INVESTED_VALUE_2: TAbmesFloatField;
    cdsMllInvestedValuesPLAN_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    cdsMllInvestedValuesPLAN_INVESTED_VALUE_3: TAbmesFloatField;
    cdsMllInvestedValuesPLAN_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    cdsMllInvestedValuesPLAN_INVESTED_VALUE_4: TAbmesFloatField;
    cdsMllInvestedValuesPLAN_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    cdsMllInvestedValuesPLAN_INVESTED_VALUE_5: TAbmesFloatField;
    cdsMllInvestedValuesPLAN_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    cdsMllInvestedValuesREAL_INVESTED_VALUE_1: TAbmesFloatField;
    cdsMllInvestedValuesREAL_IV_1_IS_INCOMPLETE: TAbmesFloatField;
    cdsMllInvestedValuesREAL_INVESTED_VALUE_2: TAbmesFloatField;
    cdsMllInvestedValuesREAL_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    cdsMllInvestedValuesREAL_INVESTED_VALUE_3: TAbmesFloatField;
    cdsMllInvestedValuesREAL_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    cdsMllInvestedValuesREAL_INVESTED_VALUE_4: TAbmesFloatField;
    cdsMllInvestedValuesREAL_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    cdsMllInvestedValuesREAL_INVESTED_VALUE_5: TAbmesFloatField;
    cdsMllInvestedValuesREAL_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    cdsMllInvestedValuesWASTE_INVESTED_VALUE_1: TAbmesFloatField;
    cdsMllInvestedValuesWASTE_IV_1_IS_INCOMPLETE: TAbmesFloatField;
    cdsMllInvestedValuesWASTE_INVESTED_VALUE_2: TAbmesFloatField;
    cdsMllInvestedValuesWASTE_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    cdsMllInvestedValuesWASTE_INVESTED_VALUE_3: TAbmesFloatField;
    cdsMllInvestedValuesWASTE_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    cdsMllInvestedValuesWASTE_INVESTED_VALUE_4: TAbmesFloatField;
    cdsMllInvestedValuesWASTE_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    cdsMllInvestedValuesWASTE_INVESTED_VALUE_5: TAbmesFloatField;
    cdsMllInvestedValuesWASTE_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    cdsDataMODEL_LEVEL_1_IV_IS_INCOMPLETE: TAbmesFloatField;
    cdsOperationsREAL_SETUP_HOUR_PRICE: TAbmesFloatField;
    cdsOperationsREAL_HOUR_PRICE: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField;
    cdsMlmsoInvestedValues: TAbmesClientDataSet;
    cdsMlmsoInvestedValuesMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsMlmsoInvestedValuesMLMSO_OBJECT_CODE: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_2: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_SETUP_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_INVESTED_VALUE_2: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_2: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_SETUP_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_INVESTED_VALUE_2: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_2: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_SETUP_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_INVESTED_VALUE_2: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_IV_2_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_3: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_SETUP_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_INVESTED_VALUE_3: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_3: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_SETUP_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_INVESTED_VALUE_3: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_3: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_SETUP_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_INVESTED_VALUE_3: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_IV_3_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_4: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_SETUP_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_INVESTED_VALUE_4: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_4: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_SETUP_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_INVESTED_VALUE_4: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_4: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_SETUP_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_INVESTED_VALUE_4: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_IV_4_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_SETUP_INVESTED_VALUE_5: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_SETUP_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_INVESTED_VALUE_5: TAbmesFloatField;
    cdsMlmsoInvestedValuesPLAN_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_SETUP_INVESTED_VALUE_5: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_SETUP_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_INVESTED_VALUE_5: TAbmesFloatField;
    cdsMlmsoInvestedValuesREAL_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_SETUP_INVESTED_VALUE_5: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_SETUP_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_INVESTED_VALUE_5: TAbmesFloatField;
    cdsMlmsoInvestedValuesWASTE_IV_5_IS_INCOMPLETE: TAbmesFloatField;
    cdsStructurePrintHeader_IS_WASTE_COMPENSATING_ORDER: TAbmesWideStringField;
    cdsStructurePrintHeaderTECH_QUANTITY: TAbmesFloatField;
    cdsStructurePrintHeader_RESULT_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    actShowWastingSale: TAction;
    cdsWastingSaleParams: TAbmesClientDataSet;
    cdsWastingSaleParamsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsWastingSaleParamsSALE_OBJECT_CODE: TAbmesFloatField;
    tlbShowProductVIM: TToolBar;
    sepShowProductVIM: TToolButton;
    btnShowProductVIM: TSpeedButton;
    cdsInsertSpecOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsInsertSpecOperationsIS_AUTO_SETUP: TAbmesFloatField;
    actGenerateBaseModel: TAction;
    btnGenerateBaseModel: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure cdsDataRESULT_PRODUCT_CODEChange(Sender: TField);
    procedure cdsDataMAIN_DEPT_CODEChange(Sender: TField);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataTOTAL_DETAIL_TECH_QUANTITYChange(Sender: TField);
    procedure cdsStagesNewRecord(DataSet: TDataSet);
    procedure cdsStagesDEPT_CODEChange(Sender: TField);
    procedure actAddForkUpdate(Sender: TObject);
    procedure actAddForkExecute(Sender: TObject);
    procedure cdsGridDataLINE_DETAIL_TECH_QUANTITYChange(Sender: TField);
    procedure cdsStagesAfterPost(DataSet: TDataSet);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataBeforeEdit(DataSet: TDataSet);
    procedure cdsGridDataPAR_LINE_DETAIL_TECH_QUANTITYChange(
      Sender: TField);
    procedure cdsStagesAfterCancel(DataSet: TDataSet);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure grdModelDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actLineChangeUpdate(Sender: TObject);
    procedure actLineChangeExecute(Sender: TObject);
    procedure cdsStagesBeforeDelete(DataSet: TDataSet);
    procedure cdsStagesAfterDelete(DataSet: TDataSet);
    procedure cdsGridDataBeforeDelete(DataSet: TDataSet);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
    procedure actAddSpecificationExecute(Sender: TObject);
    procedure actInsertSpecificationExecute(Sender: TObject);
    procedure cdsDataOWNER_EMPLOYEE_CODEChange(Sender: TField);
    procedure cdsModelBeforePost(DataSet: TDataSet);
    procedure actMakeLimitingExecute(Sender: TObject);
    procedure actMakeLimitingUpdate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cdsDataBeforeOpen(DataSet: TDataSet);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure cdsDataENTER_RESULT_STORE_BEGIN_DATEChange(Sender: TField);
    procedure cdsDataENTER_RESULT_STORE_END_DATEChange(Sender: TField);
    procedure cdsTasksNewRecord(DataSet: TDataSet);
    procedure cdsTaskDeptsNewRecord(DataSet: TDataSet);
    procedure cdsTaskDeptsDEPT_CODEChange(Sender: TField);
    procedure cdsTasksBeforeDelete(DataSet: TDataSet);
    procedure cdsTaskDeptsAfterPost(DataSet: TDataSet);
    procedure cdsTaskDeptsAfterCancel(DataSet: TDataSet);
    procedure cdsModelTasksHeaderNewRecord(DataSet: TDataSet);
    procedure grdLinesDblClick(Sender: TObject);
    procedure actShowProductVIMUpdate(Sender: TObject);
    procedure actShowProductVIMExecute(Sender: TObject);
    procedure actLineChangesUpdate(Sender: TObject);
    procedure actLineChangesExecute(Sender: TObject);
    procedure actModelChangesUpdate(Sender: TObject);
    procedure actModelChangesExecute(Sender: TObject);
    procedure cdsOperationsNewRecord(DataSet: TDataSet);
    procedure grdLinesGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsGridDataANNUL_EMPLOYEE_CODEChange(Sender: TField);
    procedure cdsGridDataANNUL_EMPLOYEE_CODEValidate(Sender: TField);
    procedure actCloseModelExecute(Sender: TObject);
    procedure chbArchivedBeforeToggle(Sender: TObject);
    procedure cdsGridDataDETAIL_CODEChange(Sender: TField);
    procedure cdsGridDataPRODUCT_CODEChange(Sender: TField);
    procedure cdsStagesBeforePost(DataSet: TDataSet);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsOperationsCalcFields(DataSet: TDataSet);
    procedure cdsOperationsBeforePost(DataSet: TDataSet);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure actDelRecordExecute(Sender: TObject);
    procedure actCheckModelUpdate(Sender: TObject);
    procedure cdsStagesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actTaskModelCloseExecute(Sender: TObject);
    procedure actModelStatusExecute(Sender: TObject);
    procedure cdsDataMODEL_OPERATIONS_STATUS_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDataAfterEdit(DataSet: TDataSet);
    procedure actModelCapacityStatusExecute(Sender: TObject);
    procedure cdsDataENTER_RESULT_STORE_BEGIN_DATEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsOperationsDEPT_CODEChange(Sender: TField);
    procedure cdsInvestedValuesBeforeOpen(DataSet: TDataSet);
    procedure actToggleInvestedValueUpdate(Sender: TObject);
    procedure actModelStatusUpdate(Sender: TObject);
    procedure actModelCapacityStatusUpdate(Sender: TObject);
    procedure actDocStatusExecute(Sender: TObject);
    procedure cdsStagesCalcFields(DataSet: TDataSet);
    procedure actWastingSaleModelStatusUpdate(Sender: TObject);
    procedure actWastingSaleModelStatusExecute(Sender: TObject);
    procedure actWasteCompensatorProductionOrdersExecute(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure frMLBoundProcessObjectbtnDocsClick(Sender: TObject);
    procedure actWasteCompensatorProductionOrdersUpdate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsStagesEXTERNAL_WORK_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsOperationsPROFESSION_CODEChange(Sender: TField);
    procedure cdsOperationsSETUP_PROFESSION_CODEChange(Sender: TField);
    procedure cdsMlmsoInvestedValuesBeforeOpen(DataSet: TDataSet);
    procedure actShowWastingSaleUpdate(Sender: TObject);
    procedure actShowWastingSaleExecute(Sender: TObject);
    procedure actGenerateBaseModelUpdate(Sender: TObject);
    procedure actGenerateBaseModelExecute(Sender: TObject);
  private
    NewLineData: TLineData;
    BndProcessObjectBranchCode: Integer;
    BndProcessObjectCode: Integer;
    FProcessingAfterPost: Boolean;
    FSelectMovement: Boolean;
    FFromMlmsObjectBranchCodePtr: PInteger;
    FFromMlmsObjectCodePtr: PInteger;
    FBeforeEditProductCode: Integer;
    FBeforeEditDetailCode: Integer;
    FBeforeEditLineDetailQuantity: Real;
    FCalculatingTotalTreatmentWorkdays: Boolean;
    FBeforeDeleteFork0MllBranchCode: Integer;
    FBeforeDeleteFork0MllCode: Integer;
    FFirstOnActivateTriggered: Boolean;
    FSelectFromMLBranchCode: Integer;
    FSelectFromMLCode: Integer;
    FOuterDataSet: TDataSet;
    FMakeChanges: Boolean;
    FChangeMade: Boolean;
    FCorrectingDates: Boolean;
    FNewMlmsObjects: Integer;
    FNewMlmsoObjects: Integer;
    cdsFilteredGridDataANNUL_EMPLOYEE_CODE: TField;
    FModelDatesMonthDisplayFormat: string;
    FcdsStagesNoFields: array[1..MaxNoPos] of TField;
    FcdsOperationsNoFields: array[1..MaxNoPos] of TField;
    FcdsFilteredGridDataFORK_NO: TField;
    FFocusMllObjectBranchCode: Integer;
    FFocusMllObjectCode: Integer;
    FBeforeEditDetailQuantity: Real;
    FIsWasteFork: Boolean;
    FFork0ProductCode: Integer;
    FFork0ProductTechQuantity: Real;
    FCopiingFork0Operations: Boolean;
    FShowTaskModel: Boolean;
    FShowInvestedValues: Boolean;
    FInvestedValueParamsDataSet: TDataSet;
    FMakingLimiting: Boolean;
    FMaxTotalTreatmentWorkdays: Integer;
    FAddedSpecificationMLLObjectKeys: array of TMLLObjectKey;
    function BndProcessObjectClassCode: Integer;
    procedure SetLinesStoreAndDates;
    procedure SetForksDetailCodeAndTechQuantity(NewDetailCode: Integer; NewTechQuantity: Real);
    procedure UpdateFork0LineDetailQuantity;
    procedure CalcLineDetailQuanity;
    procedure CalcTotalTreatmentWorkdays(SetLineNo, SetOpVariantDetailTechQuantity: Boolean);
    procedure CalcModelShowDatesFields;
    function AddSpecification(ASpecProductCode: Integer; AddRoot: Boolean;
      SpecModelVariantNo: Integer = 0): Boolean;
    procedure ImportResultProductSpecification;
    function MovementSelected: Boolean;
    function GetProductionStartDate: TDateTime;
    procedure UpdateForksDetailTechQuantity;
    procedure CopyFork0StagesAndOperations;
    function GetStageFullNo: string;
    procedure FillStructurePrintHeader(ShowInvestedValues: Boolean);
    procedure GenerateBaseModel;
    procedure AddStage(const ADeptCode, ATreatmentWorkdays, AOutgoingWorkdays: Integer);
  protected
    function ForkCount: Integer; override;
    function CanModifyData: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    procedure DoBeforeShow; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure PrepareNewLineData(AddLineMode: TAddLineMode); override;
    function LineDetailTechQuantity: Real; override;
    function GetParentLineDetailTechQuantity: Variant; override;
    procedure SetParentLineDetailTechQuantity(const Value: Variant); override;
    procedure LocateParent; override;
    procedure DoApplyUpdates; override;
    function UpdateCurrentParentDetailQuantity: Boolean; override;
    function GetParent: Variant; override;
    function SameParent(AParent: Variant): Boolean; override;
    // MODEL stuff
    function GetStagesClientDataSet: TClientDataSet; override;
    function GetStageNoField: TField; override;
    function GetOperationNoField: TField; override;
    function FirstModelDeptColumnIndex: Integer; override;
    procedure AddModelFieldDefs; override;
    procedure SetModelFields; override;
    procedure UpdateLocateDataSetData(var FieldNames: string; var FieldValues: Variant; Source: TDataSet); override;
    function PrintStaticColumnsCount: Integer; override;
    function GetStageDeptColumnWidth: Integer; override;
    function GetPrintStageDeptColumnWidth: Integer; override;
    procedure SetPrintModelParams(RecursivePrint: Boolean = False; TaskModelPrint: Boolean = False;
      ARealNoAsText: string = ''; ADetailName: string = ''; ADetailNo: string = ''); override;
    function ModelColumnType(Index, FirstStageColumnIndex: Integer): TModelColumnType; override;
    function PrintModelColumnType(Index, FirstStageColumnIndex: Integer): TModelColumnType; override;
    function GetArrowDeptColumn(ACol: Integer): Integer; override;
    procedure AddBeforeDirFieldDefs(Index: Integer); override;
    procedure AddBeforeDirPrintColumns(Idx: Integer); override;
    procedure SetModelBeforeDirFields(Index: Integer); override;
    procedure FillModelBeforeDirFields(StageNo: Integer); override;
    procedure BeforeGenerateModel; override;
    procedure AfterGenerateModel; override;
    procedure SetModelGridColumns; override;
    // end MODEL stuff
    function ShowStageEditForm(AEditMode: TEditMode): Boolean; override;
    function LastNoPos(ADataSet: TDataSet = nil): Integer; override;
    function GetNoField(ANo: Integer; ADataSet: TDataSet = nil): TField; override;
    function NewLineDataNo(idx: Integer): Integer; override;
    function GetFormCaption: string; override;
    function HasForkField: Boolean; override;
    function ConfirmParentDeletionMsg: string; override;
    procedure SetStagesNumberingFrom(StartNo: Integer);
    procedure MoveStage(MoveUp: Boolean; UnapprovePrompt: Boolean = False); override;
    function GetAddChildEnabled: Boolean; override;
    function GetAddSpecificationEnabled: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    function ReadOnlyLine: Boolean; override;
    function GetAddStageEnabled: Boolean; override;
    function GetDelStageEnabled: Boolean; override;
    function GetMoveUpStageEnabled: Boolean; override;
    function GetMoveDownStageEnabled: Boolean; override;
    function GetResultStoreCode: Integer; override;
    procedure SetResultStoreCode(Value: Integer); override;
    function GetAddBrotherEnabled: Boolean; override;
    function GetInsertBeforeEnabled: Boolean; override;
    function GetInsertSpecificationEnabled: Boolean; override;
    procedure CheckCdsDataRequiredFields; override;
    function GetModelIsCorrectMsg: string; override;
    function GetStageDaysFormat: string; override;
    function GetTasksClientDataSet: TCustomClientDataSet; override;
    function GetTaskNoField: TField; override;
    function GetTaskDeptsClientDataSet: TCustomClientDataSet; override;
    function ShowTaskEditForm(AEditMode: TEditMode): Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure GenerateModelTasksAddFields(FromDeptOutgoingWorkdays,
      ToDeptTotalTreatmentWorkdays: Integer;
      DeptBeginDate, ProductionEndDate: TDateTime); override;
    function GetProductionEndDate: TDateTime; override;
    procedure CheckDataCheckLine(CheckDocs: Boolean); override;
    function CanModifyModel: Boolean; override;
    procedure AssignPersistentFilterGridDataFields; override;
    procedure NilPersistentFilterGridDataFields; override;
    procedure DeleteGridDataRecord; override;
    function ModelTaskDeptBeginDate(AProductionEndDate: TDateTime;
      ATotalTreatmentWorkdays: Integer): TDateTime; override;
    procedure AssignRecursivePrintFields; override;
    function GetModelColumnGroupWidth: Integer; override;
    procedure SetOperationCount; override;
    function OperationsModel: Boolean; override;
    procedure PrintOperations; override;
    function MaxStageNo: Integer; override;
    function GetMinStageNoField: TField; override;
    function GetMaxStageNoField: TField; override;
    procedure RebuildAdditionalDataSets; override;
    procedure RebuildGridDataLDTQ; override;
    function GetLineNo: string; override;
    function DeleteMoves(AEndPos: Integer): Integer; override;
    procedure AddFilteredStage; override;
    function OperationVariantNoField: TField; override;
    procedure AddStageInvestedValues(AInvestedValue, AAggregatedInvestedValue,
      AProductInvestedValue: TInvestedValue); override;
    procedure LocateStageInvestedValue; override;
    procedure ShowTotalInvestedValue(AInvestedValue: TInvestedValue; ACurrencyAbbrev: string); override;
    function ShowInvestedValueFilter: Boolean; override;
    function GetResultProductTechMeasureAbbrev: string; override;
    function GetProductInvestedValue(AInvestedValueFilter: TInvestedValueFilter): TInvestedValue; override;
    function GetOperationInvestedValue(AInvestedValueFilter: TInvestedValueFilter): TOperationInvestedValue; override;
    function GetStageInvestedValue(AInvestedValueFilter: TInvestedValueFilter): TInvestedValue; override;
    function InvestedValueFilterQuantityMultiplier(AInvestedValueFilter: TInvestedValueFilter): Real; override;
    function GetOperationDetailTechQuantity: Real; override;
    procedure SetChangeAfterModelGeneration(const Value: Boolean); override;
    procedure UnapproveSpecLineStagesAndOperationsDocs(AUnapproveMethod: TUnapproveMethod); override;
    function LineHasApprovedDocItem: Boolean; override;
    function CountApproveCycles: Boolean; override;
    procedure IncApproveCycleNo; override;
    procedure ShowStructureDataCoef; override;
    function ApproveCycleNoField: TField; override;
    function GetModelIdentifier: string; override;
    function CheckSpecOrModelDocs: Boolean; override;
    procedure SetEnterResultStoreWorkdays(AWorkdays: Integer); override;
    procedure CheckStageAdditional; override;
    procedure CheckOperationAdditional; override;
    procedure StructurePrint(PrintNotes: Boolean); override;
    procedure RecursivePrint(AMinLineLevel: Integer; AModelPrint, APrintOnA3, APrintProductNos, APrintNotes, APrintInvestedValues: Boolean); override;
    function GetEditStageReadOnly: Boolean; override;
    function OperationRealHourPriceField: TField; override;
    function OperationRealSetupHourPriceField: TField; override;
  public
    procedure Initialize; override;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AFilterFormEnabled: Boolean = True;
      AMakeChanges: Boolean = False;
      ASelectMovement: Boolean = False;
      ASelectFromMLBranchCode: Integer = 0;
      ASelectFromMLCode: Integer = 0;
      AFromMlmsObjectBranchCodePtr: PInteger = nil;
      AFromMlmsObjectCodePtr: PInteger = nil;
      AFocusMllObjectBranchCode: Integer = 0;
      AFocusMllObjectCode: Integer = 0;
      AShowTaskModel: Boolean = False;
      AShowInvestedValues: Boolean = False;
      AInvestedValueParamsDataSet: TDataSet = nil); reintroduce; virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AFilterFormEnabled: Boolean = True;
      AMakeChanges: Boolean = False;
      ASelectMovement: Boolean = False;
      ASelectFromMLBranchCode: Integer = 0;
      ASelectFromMLCode: Integer = 0;
      AFromMlmsObjectBranchCodePtr: PInteger = nil;
      AFromMlmsObjectCodePtr: PInteger = nil;
      AFocusMllObjectBranchCode: Integer = 0;
      AFocusMllObjectCode: Integer = 0;
      AShowTaskModel: Boolean = False;
      AShowInvestedValues: Boolean = False;
      AInvestedValueParamsDataSet: TDataSet = nil): Boolean;
    class function SelectMovement(AdmDocClient: TdmDocClient; MLBranchCode, MLCode: Integer;
      out FromMlmsObjectBranchCode, FromMlmsObjectCode: Integer): Boolean;
    class function MakeChanges(AdmDocClient: TdmDocClient; ADataSet: TDataSet): Boolean;
    class procedure ShowTaskModel(AdmDocClient: TdmDocClient; ADataSet: TDataSet);
    class procedure ShowInvestedValues(AdmDocClient: TdmDocClient; MLBranchCode, MLCode: Integer;
      InvestedValueParamsDataSet: TDataSet = nil);
  end;

implementation

uses
  Variants, dMain, uClientUtils, fXModelDetail, fXModelMaterial, uUtils,
  uProcesses, fXModelStageEdit, fXModelFork, Printers,
  fMaterialListLineChange, fXModelInsertSpecModelVariantNo, fSpecifications,
  uMaterialListLineChanges, uUserActivityConsts, uSaleOrderTypes, JclDateTime,
  fXModelTaskEdit, rXModelTasks, fXModelDocStatus,
  uOpenVIMConsts, uTreeClientUtils, fVIMQuantity,
  fModelChanges, AbmesDialogs, fDataForm, rXModelRecursivePrint, uSpecTypes,
  uProducts, uProductionLevels, rXModelOperations, JclStrings, Math,
  fXModelAddFork, fSelectModelTask, fModelStatus, uDocUtils, fXModelUnapprove,
  uOperationTypes, uModelUtils, fModelCapacityStatus, uColorConsts,
  fXModelInvestedValueFilter, uRTFUtils, uClientMaterialListLineChanges,
  fProductionOrders, StrUtils, rStructureXModel, rXModel,
  fSpecificationPrintOptions, fGridForm, uClientDateTime, fProductionOrder,
  uToolbarUtils;

{$R *.DFM}

resourcestring
  SInactiveProducts = 'Не можете да зареждате Принципен МОДЕл с неактивни НСЧ:';
  SNoModelTasks = 'Този МОДЕл няма Нормативни задания!';
  SAutoMovementNotAllowed = 'Не можете да задавате автоматично движение по разклонение!';
  SCantDeleteWithMovements = 'Не можете да изтривате ред с движения по него или по детайлите му!';
  SHasMovements = 'Не можете да добавяте наследник, тъй като по реда има движения!';
  SConfirmOperationsModel = 'Какъв МОДЕл желаете да създадете?';
  SOperationsModel = 'Операционен';
  SStagesModel = 'Етапен';
  SCannotConcludeModelByProductionOrder = 'Не можете да приключите самостоятелно МОДЕл по ОПВ';
  SNoIsForSingleUse = 'НСЧ е различна от КСЧ и не е маркирана "Без връщане"!';
  SDetailNotComplete = 'КСЧ не е структурно съгласувана!';
  SForkNoCaption = 'Рк';
  SNoMovementSelected = 'Не сте избрали движение по МОДЕл-а';
  SSelectMovement = 'Избор на движение';

  SConfirmParentDeletion = 'Ще бъдат изтрити и всички части и разклонения на тази Крайна Структурна Част. Желаете ли да продължите?';
  SInvalidOwnerCode = 'Некоректен код на Пр&Пл Инженер';
  SModelIsCorrect = 'МОДЕл-ът е коректен.';
  DatesStageDisplayLabel = 'Прем.';
  SImportResultProductSpecification = 'Желаете ли да бъде употребен Принципния МОДЕл за този Управляем Обект?';
  SCantImportResultProductOfferSpecification = 'Не може да бъде употребен Принципния МОДЕл, тъй като е офертен!';

  SPlanning = 'Планиращ';
  SLimitting = 'Активиран';

  SLimittingNotAllowed = 'Можете да активирате МОДЕл %d работни дни' + SLineBreak +
                         'преди неговата дата на старт (%s).' + SLineBreak +
                         'Днес това е невъзможно!';
  SCantMakeLateLimiting = 'Не можете да активирате МОДЕл със задна дата на старт';
  SLateLimiting = 'МОДЕл-ът е със задна дата на старт!' + SLineBreak +
                  'Желаете ли да продължите?';
  SCantMakeLimitingWithChanges = 'Не можете да активирате МОДЕл с предложения за замени';
  SMakeChanges = 'Замени';
  SNoTotalPrice = 'Не можете да запишете МОДЕл-а, тъй като за тази НСЧ няма цена на придобиване';
  SCantAnuulBecauseOfStoreDeals = 'Не можете да анулирате този ред, защото има тегления по него';
  SNotEnoughStagesForSingleRowModel = 'Не сте въвели достатъчно етапи за тази Структурна Част!' + SLineBreak +
                                      'Трябва да са поне три.';
  SConfirmClose = 'Приключването е необратима операция и след него' + SLineBreak +
                  'няма да могат да се извършват Постъпления и Тегления и' + SLineBreak +
                  'движения по МОДЕл-а.' + SLineBreak +
                   SLineBreak +
                  'Моля, потвърдете приключването!';
  SCantArchiveNotClosedModel = 'Не можете да (раз)архивирате МОДЕл, който не е приключен!';
  SCantCloseBecauseOfLessInQuantity = 'Не може да приключите МОДЕл-а, тъй като' + SLineBreak +
                                      'постъпилото количество е по-малко от общото!';
  SNoDefaultStore = 'Не е въведено ТП Задържащо по подразбиране за Управляем Обект "%s" Nо: %g!';
  SInvestedValuesCaption = 'Реализационен МОДЕл - Инженерен Организационно-Стойностен Анализ';

  SStageInactiveDeptWhenLimiting = 'Не можете да активирате МОДЕл с некативно ТП на етап!';
  SOperationInactiveDeptWhenLimiting = 'Не можете да активирате МОДЕл с некативно ТП на операция!';

  SHas = 'Има';
  SHasNot = 'Няма';
  SInvestedValueModified = '< променен >';

  plblDetailStruct = 'Структура на детайл';
  plblNoAsText = 'Структурен номер';
  plblDetailName = 'Наименование';
  plblDetailNo = '№';
  plblTaskName = 'Нормативно задание';
  plblLimitting = 'LIMITTING';
  plblXModel = 'Р-МОДЕл по ОПП';
  plblSBNo = 'Клон';
  plblSTA = 'Вид';
  plblSaleNo = '№';
  plblMainDeptName = 'ТП Реализатор';
  plblFinal = 'Финал';
  plblBeginDate = 'От';
  plblEndDate = 'До';
  plblResultProductName = 'Управляем Обект';
  plblResultProductNo = '№';
  plblQuantity = 'Количество';
  plblClient = 'Клиент';
  plblCountry = 'Държава';
  plblClientRNo = 'Клиентски номер на поръчката';
  plblSaleClientProductSignature = 'Означение на продукта от клиента';
  plblXModelEdit = 'Реализационен МОДЕл - Редактиране';
  plblMLStateCode = 'Статус';
  plblID = 'ID ОПВ';
  plblPriority = 'Осн. Пр.';
  plblWorkPriority = 'Оп. Пр.';
  plblIsWasteCompensatingOrder = 'Поз. на ОПВ';
  plblHasWasteCompensators = 'Съпътстващи';
  plblResultProduct = 'Управляем Обект';
  plblStructCoef = 'КСЯ';
  plblWorkQuantity = 'Раб. к-во';
  plblResultStore = 'ТП Пр';
  plblStoreDateInterval = 'ВрмИнт на Пр';
  plblCompanyProductNames = 'Означения от Партньори';
  plblMainDept = 'ТП Реализатор';
  plblOwnerEmployeeName = 'МОДЕл-иер';
  plblXModelsInvestedValues = 'Реализационен МОДЕл - ИнжОрСАн';
  plblInvestedValue = 'Вложена Стойност';
  plblInvestedValueQty = 'Партида';
  plblInvestedValueType = 'Тип';
  plblTotalInvestedValue = 'Общо';
  SAutoMovementsNotAllowed = 'Автоматични движения не са допустими при наличието разклонение!';
  SConfirmFork0LastAutoMovementsClearance =
    'Крайните движения на нулевото разклонение ще бъдат променени на неавтоматични.' + SLineBreak +
    'Желаете ли да продължите?';


const
  XModelFirstModelDeptColumnIndex = 6;
  XModelPrintStaticColumnsCount = 16;
  DatesStageNo = 'DATES_STAGE_NO_%d';
  OutgoingDateStageNo = 'OUTGOING_DATE_STAGE_NO_%d';
  OutgoingWorkdaysStageNo = 'OUTGOING_WORKDAYS_STAGE_NO_%d';
  SModelShowDatesFormat = '%s - %s';
  FormatForModelDatesMonthDisplayFormat = 'dd%smm';
  ModelDatesWeekDisplayFormat = 'w\e';
  StageDeptColumnWidth = 55;
  PrintStageDeptColumnWidth = 45;
  PrintDatesColumnWidth = 35;
  PrintMonthDatesColumnWidth = 50;
  StageMonthDatesColumnWidth = 50;

{ TfmXModel }

procedure TfmXModel.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;

  lblTotalInvestedValueCurrencyAbbrev.Caption:= '';

  ReportClass:= TrptXModel;
  TasksReportClass:= TrptXModelTasks;
  RecursiveReportClass:= TrptXModelRecursivePrint;
  UnapproveFormClass:= TfmXModelUnapprove;

  SetSecondaryCurrencyAbbrevColumnCaption(grdLines2.Columns[13]);
  SetSecondaryCurrencyAbbrevColumnCaption(grdLines2.Columns[14]);

  frResultProduct.FieldNames:= 'RESULT_PRODUCT_CODE';

  FModelDatesMonthDisplayFormat:=
    Format(FormatForModelDatesMonthDisplayFormat, [FormatSettings.DateSeparator]);

  if not LoginContext.WeekDateFormatting then
    FStageDatesColumnWidth:= StageMonthDatesColumnWidth;

  RegisterDateFields(cdsData);
  RegisterDateFields(frMLBoundProcessObject.cdsData);

  for i:= 1 to MaxNoPos do
    FcdsStagesNoFields[i]:= cdsStages.FieldByName(Format('NO_%d', [i]));

  for i:= 1 to MaxNoPos do
    FcdsOperationsNoFields[i]:= cdsOperations.FieldByName(Format('NO_%d', [i]));

  frEnterResultStoreDateInterval.FieldNames:= 'ENTER_RESULT_STORE_BEGIN_DATE;ENTER_RESULT_STORE_END_DATE';
  frLimitingDate.FieldNames:= 'LIMITING_DATE';
  frProductionDept.FieldNames:= 'MAIN_DEPT_CODE';
  frProductionDept.TreeNodeNameVisible:= False;
  frResultStore.FieldNames:= 'RESULT_STORE_CODE';
  frResultStore.TreeNodeNameVisible:= False;

  btnShowProductVIM.Left:= 0;
  sepShowProductVIM.Left:= 0;

  RegisterFieldsTextVisibility(
    IsHighLevelInvestedValueVisible,
    [ cdsStagesEXTERNAL_WORK_PRICE,
      cdsOperationsREAL_SETUP_HOUR_PRICE,
      cdsOperationsREAL_HOUR_PRICE]);
end;

procedure TfmXModel.cdsDataRESULT_PRODUCT_CODEChange(Sender: TField);
begin
  inherited;

  DoProductFieldChanged(
    cdsDataRESULT_PRODUCT_CODE,
    cdsDataRESULT_PRODUCT_NAME,
    cdsDataRESULT_PRODUCT_NO,
    nil, nil, nil,
    cdsDataRES_PRODUCT_TECH_MEASURE_CODE,
    cdsDataRES_PRODUCT_TECH_MEASURE_COEF);

  with cdsGridData do
    begin
      if IsEmpty then
        begin
          PrepareNewLineData(almAddRoot);
          Append;
        end
      else
        Edit;
      try
        cdsGridDataDETAIL_CODE.AsVariant:= cdsDataRESULT_PRODUCT_CODE.AsVariant;
      finally
        Post;
      end;   { try }
    end;   { with }

  ImportResultProductSpecification;
end;

procedure TfmXModel.cdsDataMAIN_DEPT_CODEChange(Sender: TField);
begin
  inherited;

  DoDeptFieldChanged(
    cdsDataMAIN_DEPT_CODE,
    cdsDataMAIN_DEPT_NAME,
    cdsDataMAIN_DEPT_IDENTIFIER,
    nil, nil, nil, nil,
    cdsDataMAIN_DEPT_BEGIN_DATE,
    cdsDataMAIN_DEPT_END_DATE);
end;

function TfmXModel.CanModifyData: Boolean;
begin
  Result:=
    inherited CanModifyData and
    cdsDataANNUL_EMPLOYEE_CODE.IsNull and
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
    LoginContext.HasUserActivity(uaXModelEdit) and
    (cdsDataLIMITING_EMPLOYEE_CODE.IsNull or
     LoginContext.HasUserActivity(uaEditLimitingXModel)) and
    ( (EditMode = emInsert) or
      (cdsDataOWNER_EMPLOYEE_CODE.AsInteger = LoginContext.UserCode) or
      LoginContext.HasUserActivity(uaEditForeignXModel) or
      FMakeChanges);
end;

function TfmXModel.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  if (cdsGridDataFORK_NO.AsInteger > 0) or
     ((AEditMode = emInsert) and (NewLineData.ForkNo > 0)) then
    begin
      Result:= TfmXModelFork.ShowForm(dmDocClient, cdsGridData, AEditMode);
    end
  else   { if }
    begin
      if (AEditMode <> emInsert) and
         (ChildCount > 0) then
        Result:= TfmXModelDetail.ShowForm(dmDocClient, cdsGridData, AEditMode)
      else
        Result:= TfmXModelMaterial.ShowForm(dmDocClient, cdsGridData, AEditMode);
    end;   { if }
end;

function TfmXModel.ForkCount: Integer;
var
  v: string;
begin
  if Assigned(FForkCount) then
    v:= FForkCount.Values[cdsGridDataNO_AS_TEXT.AsString]
  else
    v:= '';

  if (v = '') then
    Result:= 0
  else
    Result:= StrToInt(v);
end;

procedure TfmXModel.DoBeforeShow;
begin
  inherited;

  if (EditMode = emInsert) then
    begin
      Assert(Assigned(FOuterDataSet));

      BndProcessObjectBranchCode:=
        FOuterDataSet.FieldByName('PROCESS_OBJECT_BRANCH_CODE').AsInteger;
      BndProcessObjectCode:=
        FOuterDataSet.FieldByName('PROCESS_OBJECT_CODE').AsInteger;
    end;
end;

procedure TfmXModel.Initialize;
var
  OuterMllObjectBranchCodeField: TField;
  OuterMllObjectCodeField: TField;
  SaveCursor: TCursor;
  IV: TInvestedValue;
begin
  inherited;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsData.ReadOnly:= False;  // pri generirane na modela se smiatat datite

    if (EditMode = emInsert) then
      begin
        cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger:= BndProcessObjectBranchCode;
        cdsDataBND_PROCESS_OBJECT_CODE.AsInteger:= BndProcessObjectCode;
      end;   { if }

    frMLBoundProcessObject.SetProcessObject(
      cdsDataBND_PROCESS_OBJECT_BRANCH_CODE.AsInteger,
      cdsDataBND_PROCESS_OBJECT_CODE.AsInteger);

    if (EditMode = emInsert) then
      begin
        cdsDataBND_PROCESS_OBJECT_CLASS_CODE.AsVariant:=
          frMLBoundProcessObject.cdsDataPROCESS_OBJECT_CLASS_CODE.AsVariant;
        cdsDataBND_SALE_ORDER_TYPE_CODE.AsVariant:=
          frMLBoundProcessObject.cdsDataSALE_ORDER_TYPE_CODE.AsVariant;

        case BndProcessObjectClassCode of
          pocSale:
            begin
              cdsDataMAIN_DEPT_CODE.AsVariant:=
                frMLBoundProcessObject.cdsDataSALE_PRODUCTION_DEPT_CODE.AsVariant;

              cdsDataTECH_QUANTITY.AsVariant:=
                frMLBoundProcessObject.cdsDataSALE_MANUFACTURE_TECH_QUANTITY.AsVariant;

              cdsDataENTER_RESULT_STORE_BEGIN_DATE.AsVariant:=
                frMLBoundProcessObject.cdsDataS_ENTER_STORE_PLAN_BEGIN_DATE.AsVariant;
              cdsDataENTER_RESULT_STORE_END_DATE.AsVariant:=
                frMLBoundProcessObject.cdsDataS_ENTER_STORE_PLAN_END_DATE.AsVariant;

              cdsDataRESULT_PRODUCT_CODE.AsVariant:=
                frMLBoundProcessObject.cdsDataSALE_PRODUCT_CODE.AsVariant;

              cdsDataOWNER_EMPLOYEE_CODE.AsVariant:=
                frMLBoundProcessObject.cdsDataOKIDU_EMPLOYEE_CODE.AsVariant;

              cdsDataSALE_BRANCH_NO.AsVariant:=
                frMLBoundProcessObject.cdsDataSALE_BRANCH_NO.AsVariant;

              cdsDataSALE_NO.AsVariant:=
                frMLBoundProcessObject.cdsDataSALE_NO.AsVariant;

              cdsDataTRANSIENT_STATUS_CODE.AsVariant:=
                frMLBoundProcessObject.cdsDataSALE_TRANSIENT_STATUS_CODE.AsVariant;

              cdsDataWORKDAYS_TO_EXIST.AsVariant:=
                frMLBoundProcessObject.cdsDataSALE_WORKDAYS_TO_EXIST.AsVariant;

              cdsDataRESULT_STORE_CODE.AsVariant:=
                frMLBoundProcessObject.cdsDataSHIPMENT_STORE_CODE.AsVariant;
            end;
        end;   { case }
      end;   { if }

    InvestedValueFilter.ResultProductTechQuantity:= cdsDataTECH_QUANTITY.AsFloat;

    if Assigned(FOuterDataSet) then
      begin
        OuterMllObjectBranchCodeField:=
          FOuterDataSet.FindField('MLL_OBJECT_BRANCH_CODE');
        OuterMllObjectCodeField:=
          FOuterDataSet.FindField('MLL_OBJECT_CODE');

        if Assigned(OuterMllObjectBranchCodeField) and
           Assigned(OuterMllObjectCodeField) then
          cdsGridData.Locate('MLL_OBJECT_BRANCH_CODE; MLL_OBJECT_CODE',
            VarArrayOf([
              OuterMllObjectBranchCodeField.AsInteger,
              OuterMllObjectCodeField.AsInteger]),
          []);
      end;   { if }

    if FSelectMovement then
      begin
        actResizeWorkspace.Execute;
        pcMain.ActivePage:= tsModel;
        ActiveControl:= grdModel;
        GenerateModel;
      end;

    if FMakeChanges then
      begin
        pcMain.ActivePage:= tsLines2;
        ActiveControl:= grdLines2;
      end;   { if }

    if FShowInvestedValues then
      begin
        if Assigned(FInvestedValueParamsDataSet) then
          with InvestedValueFilter, FInvestedValueParamsDataSet do
            begin
              InvestedValueLevel:= FieldByName('INVESTED_VALUE_LEVEL').AsInteger;
              InvestedValueSum:= TInvestedValueSum(FieldByName('INVESTED_VALUE_SUM').AsInteger);
              InvestedValueType:= TInvestedValueType(FieldByName('INVESTED_VALUE_TYPE').AsInteger);
              CurrencyCode:= FieldByName('CURRENCY_CODE').AsInteger;
              CurrencyAbbrev:= FieldByName('_CURRENCY_ABBREV').AsString;
              InvestedValueAbbrev:= FieldByName('INVESTED_VALUE_ABBREV').AsString;
              InvestedValueSingle:= FieldByName('INVESTED_VALUE_SINGLE').AsBoolean;
            end;

        pcMain.ActivePage:= tsModel;
        ActiveControl:= grdModel;
        GenerateModel;
        InvestedValueVisible:= True;
      end;

    UpdateFilteredGridData(False);

    // stranen bugfix
    cdsTasks.First;

    // da pozicionira na izbrania otvun red
    if (FFocusMllObjectBranchCode <> 0) and (FFocusMllObjectCode <> 0) then
      begin
        cdsGridData.Locate('MLL_OBJECT_BRANCH_CODE; MLL_OBJECT_CODE',
          VarArrayOf([FFocusMllObjectBranchCode, FFocusMllObjectCode]), []);
        LocateDataSet(cdsGridData, cdsFilteredGridData);
      end;
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }

  if (EditMode <> emInsert) and
     (not FSelectMovement) and
     (not FShowInvestedValues) then
    begin
      IV.Value:= cdsDataMODEL_LEVEL_1_INVESTED_VALUE.AsFloat;
      IV.IsIncomplete:= cdsDataMODEL_LEVEL_1_IV_IS_INCOMPLETE.AsBoolean;

      ShowTotalInvestedValue(IV, LoginContext.BaseCurrencyAbbrev);
    end;
end;

function TfmXModel.BndProcessObjectClassCode: Integer;
begin
  Result:=
    frMLBoundProcessObject.cdsDataPROCESS_OBJECT_CLASS_CODE.AsInteger;
end;

procedure TfmXModel.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frResultProduct) then
    AFrame.ReadOnly:=
      (EditMode = emReadOnly) or
      (cdsGridData.Active and (cdsGridData.RecordCount > 1)) or
      (BndProcessObjectClassCode = pocSale) or
      (not CanModifyData)
  else   { if }
    begin
      if (AFrame = frProductionDept) then
        frProductionDept.ReadOnly:=
          (EditMode = emReadOnly) or
          (not CanModifyData) or
          (BndProcessObjectClassCode = pocSale)
      else
        begin
          if (AFrame = frLimitingDate) or (AFrame = frResultStore) then
            AFrame.ReadOnly:= True
          else
            begin
              if (AFrame = frEnterResultStoreDateInterval) then
                AFrame.ReadOnly:=
                  (EditMode = emReadOnly) or
                  (not CanModifyData) or
                  (VarToInt(cdsGridData_MAX_MLL_CHANGE_STATUS.Value) > 0) or
                  (BndProcessObjectClassCode = pocSale)
              else
                inherited;
            end;
        end;
    end;
end;

procedure TfmXModel.actFormUpdate(Sender: TObject);

  procedure SetDiffEditFontColor(edt: TDBEdit);
  begin
    if edt.Field.DataSet.Active and
       (edt.Field.AsFloat < 0) then
      edt.Font.Color:= clRed
    else
      edt.Font.Color:= clWindowText;
  end;

var
  ro: Boolean;
  v: Boolean;
begin
  inherited;

  with edtTechQuantity do
    begin
      ReadOnly:=
        (EditMode = emReadOnly) or
        (BndProcessObjectClassCode = pocSale) or
        (not CanModifyData);

      Color:= ReadOnlyColors[ReadOnly];
    end;   { with }

  ro:= (EditMode = emReadOnly) or (not CanModifyData);

  chbArchived.ReadOnly:=
    (EditMode = emReadOnly) or
    not ( (not FEdittingTaskInModel) and
          cdsDataANNUL_EMPLOYEE_CODE.IsNull and
          (cdsDataLIMITING_EMPLOYEE_CODE.IsNull or
           LoginContext.HasUserActivity(uaEditLimitingXModel)) and
          ( (EditMode = emInsert) or
            (cdsDataOWNER_EMPLOYEE_CODE.AsInteger = LoginContext.UserCode) or
            LoginContext.HasUserActivity(uaEditForeignXModel) or
            FMakeChanges) );

  moNotes.ReadOnly:= ro;
  moNotes.Color:= ReadOnlyColors[ro];

  v:= (not (FSelectMovement or FShowInvestedValues)) and (not FShowTaskModel);
  tsLines1.TabVisible:= v;
  tsLines2.TabVisible:= v;
  tsStages.TabVisible:= v;
  tsTasks.TabVisible:= v;
  pnlModelChangesButton.Visible:= v;

  pnlOKCancel.Visible:=
   (EditMode <> emReadOnly) or FSelectMovement;
  pnlClose.Visible:=
    not pnlOKCancel.Visible;

  pnlCloseModelButton.Visible:=
    (EditMode <> emReadOnly) and
    (not FMakeChanges) and
    cdsData.Active and
    cdsDataCLOSE_EMPLOYEE_CODE.IsNull;

  pnlClosed.Visible:=
    cdsData.Active and
    (not cdsDataCLOSE_EMPLOYEE_CODE.IsNull);

  pnlAnnuled.Visible:=
    cdsData.Active and
    (not cdsDataANNUL_EMPLOYEE_CODE.IsNull);

  pnlLineChangeButton.Visible:= FMakeChanges;

  pnlResizeWorkspaceButton.Visible:= not FShowTaskModel;
  pnlTaskModelCloseButton.Visible:= not FShowTaskModel;

  pnlModelStatus.Visible:= (EditMode <> emInsert);
  pnlModelCapacityStatus.Visible:= (EditMode <> emInsert);

  SetDiffEditFontColor(edtProductionDateDiffMax);
  SetDiffEditFontColor(edtProductionDateDiffMin);
  SetDiffEditFontColor(edtEnterShipmentStoreDateDiff);

  pnlWastingSale.Visible:=
    frMLBoundProcessObject.cdsData.Active and
    frMLBoundProcessObject.cdsDataIS_WASTE_COMPENSATING_ORDER.AsBoolean;
  pnlWasteCompensatorProductionOrders.Visible:=
    frMLBoundProcessObject.cdsData.Active and
    (not frMLBoundProcessObject.cdsDataIS_WASTE_COMPENSATING_ORDER.AsBoolean);

  if StructureCoef.IsComplete then
    edtStructureCoef.Color:= $00C5EFC2
  else
    edtStructureCoef.Color:= ccTotalLateNotSelected;

  if frMLBoundProcessObject.cdsData.Active then
    begin
      edtPriority.Font.Color:= frMLBoundProcessObject.cdsDataPRIORITY_COLOR.AsInteger;
      edtPriority.Color:= frMLBoundProcessObject.cdsDataPRIORITY_BACKGROUND_COLOR.AsInteger;
    end;

  if GetApplyUpdatesEnabled then
    edtTotalInvestedValue.Text:= SInvestedValueModified;
end;

procedure TfmXModel.actGenerateBaseModelExecute(Sender: TObject);
begin
  inherited;
  GenerateBaseModel;
  GenerateModel;
end;

procedure TfmXModel.actGenerateBaseModelUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:=
    frMLBoundProcessObject.cdsDataPROD_ORDER_BASE_ROLE_CODE.AsInteger = 4;  // razpredeliasht
end;

procedure TfmXModel.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsDataML_OBJECT_BRANCH_CODE.AsInteger:= -1;
  cdsDataML_OBJECT_CODE.AsInteger:= 1;
  cdsDataIS_ARCHIVED.AsBoolean:= False;
  cdsDataCREATE_DATE.AsDateTime:= ContextDate;

  cdsDataTRANSIENT_STATUS_CODE.AsInteger:= tsPermanent;
  cdsDataIS_OPERATIONS_MODEL.AsBoolean:=
    (LoginContext.ProductionLevelCode = plOperation);
end;

procedure TfmXModel.PrepareNewLineData(AddLineMode: TAddLineMode);
var
  i: Integer;
  NewNoIdx: Integer;
  NextNo: Integer;
  b: TBookmark;
begin
  with NewLineData do
    case AddLineMode of
      almAddRoot:
        begin
          for i:= 1 to MaxNoPos do
            No[i]:= 0;
          ForkNo:= 0;

          ParentMLLObjectBranchCode:= 0;
          ParentMLLObjectCode:= 0;
        end;

      almAddChild, almAddBrother:
        begin
          for i:= 1 to MaxNoPos do
            No[i]:= GetNoField(i).AsInteger;
          ForkNo:= 0;

          NewNoIdx:= LastNoPos;

          if (AddLineMode = almAddChild) then
            Inc(NewNoIdx);

          if (AddLineMode = almAddChild) then
            NextNo:= ChildCount + 1
          else
            NextNo:= ParentChildCount + 1;

          No[NewNoIdx]:= NextNo;

          if (AddLineMode = almAddBrother) then
            with cdsGridData do
              begin
                DisableControls;
                try
                  b:= Bookmark;
                  try
                    LocateParent;
                    ParentLineDetailTechQuantity:= cdsGridDataLINE_DETAIL_TECH_QUANTITY.AsFloat;

                    if not cdsGridDataMAX_MOVED_TECH_QUANTITY.IsNull then
                      begin
                        Bookmark:= b;
                        raise Exception.Create(SHasMovements);
                      end;
                  finally
                    Bookmark:= b;
                  end;   { try }
                finally
                  EnableControls;
                end;   { try }
              end   { with }
          else   { if }
            begin
              ParentLineDetailTechQuantity:= cdsGridDataLINE_DETAIL_TECH_QUANTITY.AsFloat;

              if not cdsGridDataMAX_MOVED_TECH_QUANTITY.IsNull then
                raise Exception.Create(SHasMovements);
            end;

          if (AddLineMode = almAddChild) then
            begin
              ParentMLLObjectBranchCode:= cdsGridDataMLL_OBJECT_BRANCH_CODE.AsInteger;
              ParentMLLObjectCode:= cdsGridDataMLL_OBJECT_CODE.AsInteger;
            end
          else   { if }
            begin
              ParentMLLObjectBranchCode:= cdsGridDataPARENT_MLL_OBJECT_BRANCH_CODE.AsInteger;
              ParentMLLObjectCode:= cdsGridDataPARENT_MLL_OBJECT_CODE.AsInteger;
            end;   { if }

          Fork0MLLObjectBranchCode:= 0;
          Fork0MLLObjectCode:= 0;
        end;

      almAddFork:
        begin
          for i:= 1 to MaxNoPos do
            No[i]:= GetNoField(i).AsInteger;

          ForkNo:= ForkCount + 1;

          ParentMLLObjectBranchCode:= cdsGridDataPARENT_MLL_OBJECT_BRANCH_CODE.AsInteger;
          ParentMLLObjectCode:= cdsGridDataPARENT_MLL_OBJECT_CODE.AsInteger;

          if (cdsGridDataFORK_NO.AsInteger = 0) then
            begin
              Fork0MLLObjectBranchCode:= cdsGridDataMLL_OBJECT_BRANCH_CODE.AsInteger;
              Fork0MLLObjectCode:= cdsGridDataMLL_OBJECT_CODE.AsInteger;
            end
          else   { if }
            begin
              Fork0MLLObjectBranchCode:= cdsGridDataFORK_0_MLL_OBJECT_BRANCH_CODE.AsInteger;
              Fork0MLLObjectCode:= cdsGridDataFORK_0_MLL_OBJECT_CODE.AsInteger;
            end;   { if }

          Fork0DetailCode:= cdsGridDataDETAIL_CODE.AsInteger;
          Fork0DetailTechQuantity:= cdsGridDataDETAIL_TECH_QUANTITY.AsFloat;
        end;
    else   { case }
      UnknownAddLineModeError;
    end;   { case }
end;

procedure TfmXModel.cdsGridDataNewRecord(DataSet: TDataSet);
var
  i: Integer;
begin
  cdsGridDataMLL_OBJECT_BRANCH_CODE.AsInteger:= -1;
  cdsGridDataMLL_OBJECT_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_MLL_OBJECT_CODE.AsVariant) + 1;

  cdsGridDataML_OBJECT_BRANCH_CODE.AsVariant:= cdsDataML_OBJECT_BRANCH_CODE.AsVariant;
  cdsGridDataML_OBJECT_CODE.AsVariant:= cdsDataML_OBJECT_CODE.AsVariant;

  with NewLineData do
    begin
      for i:= 1 to MaxNoPos do
        GetNoField(i).AsInteger:= No[i];

      cdsGridDataFORK_NO.AsInteger:= ForkNo;

      if (ParentMLLObjectCode = 0) and (ForkNo = 0) then     // the root
        begin
          cdsGridDataTOTAL_DETAIL_TECH_QUANTITY.AsVariant:= cdsDataTECH_QUANTITY.AsVariant;
          cdsGridDataLINE_DETAIL_TECH_QUANTITY.AsVariant:= cdsDataTECH_QUANTITY.AsVariant;
        end
      else
        begin
          if (ParentMLLObjectCode <> 0) then
            begin
              cdsGridDataPARENT_MLL_OBJECT_BRANCH_CODE.AsInteger:= ParentMLLObjectBranchCode;
              cdsGridDataPARENT_MLL_OBJECT_CODE.AsInteger:= ParentMLLObjectCode;
            end;   { if }

          if (Fork0MLLObjectCode <> 0) then
            begin
              cdsGridDataFORK_0_MLL_OBJECT_BRANCH_CODE.AsInteger:= Fork0MLLObjectBranchCode;
              cdsGridDataFORK_0_MLL_OBJECT_CODE.AsInteger:= Fork0MLLObjectCode;
            end;   { if }

          if (Fork0MLLObjectCode = 0) then
            cdsGridDataPAR_LINE_DETAIL_TECH_QUANTITY.AsFloat:= ParentLineDetailTechQuantity
          else
            begin
              cdsGridDataDETAIL_CODE.AsInteger:= Fork0DetailCode;

              if (Fork0DetailTechQuantity > 0) then
                cdsGridDataDETAIL_TECH_QUANTITY.AsFloat:= Fork0DetailTechQuantity;
            end;
        end;   { if }
    end;

  cdsGridDataIS_FORK.AsBoolean:=
    (cdsGridDataFORK_NO.AsInteger <> 0);
  cdsGridDataIS_NOT_FORK.AsBoolean:=
    not cdsGridDataIS_FORK.AsBoolean;

  cdsGridDataIS_WASTE_FORK.AsBoolean:=
    cdsGridDataIS_FORK.AsBoolean and FIsWasteFork;

  if cdsGridDataIS_FORK.AsBoolean and (FFork0ProductCode > 0) then
    begin
      cdsGridDataPRODUCT_CODE.AsInteger:= FFork0ProductCode;
      cdsGridDataPRODUCT_TECH_QUANTITY.AsFloat:= FFork0ProductTechQuantity;
    end;

  cdsGridDataLAST_MM_MLMS_MODEL_STAGE_NO.AsInteger:= -1;

  cdsGridDataAPPROVE_CYCLE_NO.AsInteger:= 1;

  inherited;
end;

function TfmXModel.LineDetailTechQuantity: Real;
begin
  Result:= cdsGridDataLINE_DETAIL_TECH_QUANTITY.AsFloat;
end;

function TfmXModel.GetParentLineDetailTechQuantity: Variant;
begin
  Result:= cdsGridDataPAR_LINE_DETAIL_TECH_QUANTITY.AsVariant;
end;

procedure TfmXModel.SetParentLineDetailTechQuantity(const Value: Variant);
begin
  cdsGridDataPAR_LINE_DETAIL_TECH_QUANTITY.AsVariant:= Value;
end;

procedure TfmXModel.cdsGridDataTOTAL_DETAIL_TECH_QUANTITYChange(
  Sender: TField);
begin
  if cdsGridDataIS_NOT_FORK.AsBoolean then
    CalcLineDetailQuanity;

  inherited;
end;

procedure TfmXModel.LocateParent;
begin
  if cdsGridDataIS_FORK.AsBoolean then
    cdsGridData.Locate(
      'MLL_OBJECT_BRANCH_CODE; MLL_OBJECT_CODE',
      VarArrayOf([cdsGridDataFORK_0_MLL_OBJECT_BRANCH_CODE.AsInteger,
                  cdsGridDataFORK_0_MLL_OBJECT_CODE.AsInteger]),
      [])
  else
    cdsGridData.Locate(
      'MLL_OBJECT_BRANCH_CODE; MLL_OBJECT_CODE',
      VarArrayOf([cdsGridDataPARENT_MLL_OBJECT_BRANCH_CODE.AsInteger,
                  cdsGridDataPARENT_MLL_OBJECT_CODE.AsInteger]),
      []);
end;

procedure TfmXModel.cdsStagesNewRecord(DataSet: TDataSet);
var
  NewStageNo: Integer;
begin
  inherited;

  cdsStagesMLMS_OBJECT_BRANCH_CODE.AsInteger:= -1;
  cdsStagesMLMS_OBJECT_CODE.AsInteger:=
    cdsDataMAX_MLMS_OBJECT_CODE.AsInteger + FNewMlmsObjects + 1;
  Inc(FNewMlmsObjects);

  cdsStagesMLL_OBJECT_BRANCH_CODE.AsVariant:= cdsGridDataMLL_OBJECT_BRANCH_CODE.AsVariant;
  cdsStagesMLL_OBJECT_CODE.AsVariant:= cdsGridDataMLL_OBJECT_CODE.AsVariant;

  if (cdsStages.RecordCount = 0) then
    begin
      if cdsGridDataPRODUCT_CODE.IsNull then
        NewStageNo:= 1
      else
        NewStageNo:= 0;
    end
  else   { if }
    NewStageNo:= VarToInt(cdsStages_MAX_ML_MODEL_STAGE_NO.Value) + 1;

  cdsStagesML_MODEL_STAGE_NO.AsInteger:= NewStageNo;

  cdsStagesOPERATION_COUNT.AsInteger:= 0;

  cdsStagesTREATMENT_WORKDAYS.AsInteger:= 0;
  cdsStagesOUTGOING_WORKDAYS.AsInteger:= 0;
  cdsStagesIS_AUTO_MOVEMENT.AsBoolean:= False;
  cdsStagesHAS_DOCUMENTATION.AsBoolean:= False;
  cdsStagesDOC_IS_COMPLETE.AsBoolean:= False;

  cdsStagesTREATMENT_BEGIN_DATE.AsDateTime:= ContextDate;        //   opraviat se sled kato
  cdsStagesTREATMENT_END_DATE.AsDateTime:= ContextDate;          //   se zapishe celia MODEl
end;

procedure TfmXModel.cdsStagesDEPT_CODEChange(Sender: TField);
begin
  inherited;

  if not FAddingSpecification then
    begin
      DoDeptFieldChanged(cdsStagesDEPT_CODE,
        cdsStagesDEPT_NAME,
        cdsStagesDEPT_IDENTIFIER,
        cdsStagesDEPT_IS_STORE,
        nil, nil, nil,
        cdsStagesDEPT_BEGIN_DATE,
        cdsStagesDEPT_END_DATE);
    end;
end;

procedure TfmXModel.cdsStagesEXTERNAL_WORK_PRICEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

function TfmXModel.GetStagesClientDataSet: TClientDataSet;
begin
  Result:= cdsStages;
end;

procedure TfmXModel.DoApplyUpdates;
begin
  FApplyingUpdates:= True;
  try
    CheckData(False, False);

    SetLinesStoreAndDates;

    CalcTotalTreatmentWorkdays(True, False);

    inherited;
  finally
    FApplyingUpdates:= False;
  end;   { try }
end;

procedure TfmXModel.SetLinesStoreAndDates;
var
  {LinesBookmark, }StagesBookmark: TBookmark;
  LinesRecNo: Integer;
  ProductNeedBeginDate: TDateTime;
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    with cdsGridData do
      begin
        DisableControls;
        try
          cdsStages.DisableControls;
          try
            StagesBookmark:= cdsStages.Bookmark;
            try
              {LinesBookmark:= Bookmark;}LinesRecNo:= RecNo;  // workaround
              try
                First;
                while not EOF do
                  begin
                    if not cdsGridDataPRODUCT_CODE.IsNull then
                      cdsStages.Locate('ML_MODEL_STAGE_NO', 0, []);

                    Edit;
                    try
                      if cdsGridDataPRODUCT_CODE.IsNull then
                        begin
                          cdsGridDataSTORE_CODE.Clear;
                          cdsGridDataPRODUCT_NEED_BEGIN_DATE.Clear;
                          cdsGridDataPRODUCT_NEED_END_DATE.Clear;
                        end
                      else   { if }
                        begin
                          cdsGridDataSTORE_CODE.AsVariant:= cdsStagesDEPT_CODE.AsVariant;

                          // These dates are fake.
                          // They will be updated on ML_MODEL_STAGES update
                          // or insert.

                          if cdsGridDataPRODUCT_NEED_BEGIN_DATE.IsNull or cdsGridDataPRODUCT_NEED_END_DATE.IsNull then
                            begin
                              ProductNeedBeginDate:=
                                dmMain.IncDateByWorkdays(
                                  cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime + 1,
                                  -VarToInt(cdsStages_MAX_TOTAL_TREATMENT_WORKDAYS.Value));

                              cdsGridDataPRODUCT_NEED_BEGIN_DATE.AsDateTime:= ProductNeedBeginDate;
                              cdsGridDataPRODUCT_NEED_END_DATE.AsDateTime:= ProductNeedBeginDate;
                            end;
                        end;   { if }

                      Post;
                    except
                      Cancel;
                      raise;
                    end;   { try }

                    Next;
                  end;   { while }
              finally
                {Bookmark:= LinesBookmark;}RecNo:= LinesRecNo;
              end;   { try }
            finally
              cdsStages.Bookmark:= StagesBookmark;
            end;   { try }
          finally
            cdsStages.EnableControls;
          end;   { try }
        finally
          EnableControls;
        end;   { try }
      end;   { with }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

procedure TfmXModel.actAddForkUpdate(Sender: TObject);
begin
  inherited;

  with cdsGridData do
    (Sender as TAction).Enabled:=
      Active and (RecNo > 1);
end;

procedure TfmXModel.actAddForkExecute(Sender: TObject);

  function Fork0LastMovementIsAutoMovement: Boolean;
  var
    Res: Boolean;
  begin
    Res:= False;

    cdsStages.PreserveRecNo/
      cdsGridData.PreserveRecNo/
        cdsStages.TempDisableControls/
          cdsGridData.TempDisableControls/
            procedure begin
              Assert(cdsGridData.Locate('NO_AS_TEXT;FORK_NO', VarArrayOf([cdsGridDataNO_AS_TEXT.AsString, 0]), []));
              if (cdsGridDataNO_1.AsInteger > 0) and
                 (cdsStages.RecordCount >= 2) then
                begin
                  cdsStages.Last;

                  if (cdsStagesTREATMENT_WORKDAYS.AsInteger = 0) then
                    begin
                      cdsStages.Prior;
                      Res:= cdsStagesIS_AUTO_MOVEMENT.AsBoolean;
                    end;
                end;
            end;

    Result:= Res;
  end;

  procedure ClearFork0LastAutoMovements;
  var
    OperationNo: Integer;
  begin
    cdsOperations.PreserveBookmark/
      cdsStages.PreserveBookmark/
        cdsGridData.PreserveBookmark/
          cdsOperations.TempDisableControls/
            cdsStages.TempDisableControls/
              cdsGridData.TempDisableControls/
                procedure begin
                  Assert(cdsGridData.Locate('NO_AS_TEXT;FORK_NO', VarArrayOf([cdsGridDataNO_AS_TEXT.AsString, 0]), []));
                  if (cdsGridDataNO_1.AsInteger > 0) and
                     (cdsStages.RecordCount >= 2) then
                    begin
                      cdsStages.Last;

                      if (cdsStagesTREATMENT_WORKDAYS.AsInteger = 0) then
                        begin
                          cdsStages.Prior;
                          cdsOperations.Last;

                          OperationNo:= cdsOperationsMLMS_OPERATION_NO.AsInteger;

                          cdsOperations.ForEach/
                            procedure begin
                              if (cdsOperationsMLMS_OPERATION_NO.AsInteger = OperationNo) and
                                 cdsOperationsIS_AUTO_MOVEMENT.AsBoolean then
                                cdsOperations.SafeEdit/
                                  procedure begin
                                    cdsOperationsIS_AUTO_MOVEMENT.AsBoolean:= False;
                                  end;
                            end;

                          cdsStages.SafeEdit/
                            procedure begin
                              cdsStagesIS_AUTO_MOVEMENT.AsBoolean:= False;
                            end;
                        end;
                    end;
                end;
  end;  { ClearFork0LastAutoMovements }

var
  CreateLike: Boolean;
  b: TBookmark;
begin
  inherited;

  if Fork0LastMovementIsAutoMovement and
     (MessageDlgEx(SConfirmFork0LastAutoMovementsClearance, mtConfirmation, mbOKCancel, 0) <> mrOK) then
    Abort;

  if not TfmXModelAddFork.ShowForm(dmDocClient, @CreateLike, @FIsWasteFork) then
    Abort;

  if CreateLike then
    begin
      if cdsGridDataIS_NOT_FORK.AsBoolean then
        begin
          FFork0ProductCode:= cdsGridDataPRODUCT_CODE.AsInteger;
          FFork0ProductTechQuantity:= cdsGridDataPRODUCT_TECH_QUANTITY.AsFloat;
        end
      else
        begin
          with cdsGridData do
            begin
              DisableControls;
              try
                b:= Bookmark;
                try
                  LocateParent;
                  FFork0ProductCode:= cdsGridDataPRODUCT_CODE.AsInteger;
                  FFork0ProductTechQuantity:= cdsGridDataPRODUCT_TECH_QUANTITY.AsFloat;
                finally
                  Bookmark:= b;
                end;  { try }
              finally
                EnableControls;
              end;  { try }
            end;  { with }
        end;
    end
  else
    begin
      FFork0ProductCode:= 0;
      FFork0ProductTechQuantity:= 0;
    end;

  PrepareNewLineData(almAddFork);
  if ShowEditForm(emInsert) then
    begin
      ClearFork0LastAutoMovements;

      UpdateFilteredGridData;

      if CreateLike then
        CopyFork0StagesAndOperations;
    end;
end;

procedure TfmXModel.cdsGridDataLINE_DETAIL_TECH_QUANTITYChange(
  Sender: TField);
begin
  inherited;

  if not cdsGridDataPRODUCT_CODE.IsNull then
    CalcTotalProductQuantities;
end;

procedure TfmXModel.cdsStagesAfterPost(DataSet: TDataSet);
var
  b: TBookmark;
begin
  inherited;

  b:= DataSet.Bookmark;
  try
    PostDataSet(cdsGridData);
  finally
    DataSet.Bookmark:= b;
  end;  { try }

  ChangeAfterModelGeneration:= True;
end;

function TfmXModel.UpdateCurrentParentDetailQuantity: Boolean;
begin
  Result:= cdsGridDataIS_NOT_FORK.AsBoolean;
end;

procedure TfmXModel.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;

  if FProcessingAfterPost or FRelocatingSpecification then Exit;

  if FPostAfterEdit then
    begin
      FProcessingAfterPost:= True;
      try
        if cdsGridDataIS_NOT_FORK.AsBoolean and
           (FBeforeEditLineDetailQuantity <> cdsGridDataLINE_DETAIL_TECH_QUANTITY.AsFloat) then
          UpdateChildrenParentTotalQuantity;

        if not SameAsOldNo(MaxNoPos+1) then
          ChangeNo;

        if (FBeforeEditProductCode <> cdsGridDataPRODUCT_CODE.AsInteger) then
          SetStagesNumberingFrom(Ord(cdsGridDataPRODUCT_CODE.IsNull));

        if (FBeforeEditDetailCode <> cdsGridDataDETAIL_CODE.AsInteger) and
           cdsGridDataIS_NOT_FORK.AsBoolean then
          SetForksDetailCodeAndTechQuantity(cdsGridDataDETAIL_CODE.AsInteger,
            cdsGridDataDETAIL_TECH_QUANTITY.AsFloat);

      finally
        FProcessingAfterPost:= False;
      end;
    end;

  if cdsGridDataIS_FORK.AsBoolean and
     ( (not FPostAfterEdit) or
       (FBeforeEditLineDetailQuantity <> cdsGridDataLINE_DETAIL_TECH_QUANTITY.AsFloat) ) then
    UpdateFork0LineDetailQuantity;

  if FPostAfterEdit and
     cdsGridDataIS_NOT_FORK.AsBoolean and
     (FBeforeEditDetailQuantity <> cdsGridDataDETAIL_TECH_QUANTITY.AsFloat) then
    UpdateForksDetailTechQuantity;

  ChangeAfterModelGeneration:= True;
end;

procedure TfmXModel.cdsGridDataBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if FRelocatingSpecification then Exit;

  if not FProcessingAfterPost then
    begin
      FBeforeEditLineDetailQuantity:= cdsGridDataLINE_DETAIL_TECH_QUANTITY.AsFloat;
      FBeforeEditDetailQuantity:= cdsGridDataDETAIL_TECH_QUANTITY.AsFloat;

      FBeforeEditProductCode:= cdsGridDataPRODUCT_CODE.AsInteger;
      FBeforeEditDetailCode:= cdsGridDataDETAIL_CODE.AsInteger;

      SaveOldNo(MaxNoPos+1);
    end;   { if }
end;

function TfmXModel.GetParent: Variant;
begin
  Result:=
    VarArrayOf([
      cdsGridDataPARENT_MLL_OBJECT_BRANCH_CODE.AsVariant,
      cdsGridDataPARENT_MLL_OBJECT_CODE.AsVariant]);
end;

function TfmXModel.SameParent(AParent: Variant): Boolean;
begin
  Assert(VarIsArray(AParent));
  Assert(VarArrayLowBound(AParent, 1) = 0);
  Assert(VarArrayHighBound(AParent, 1) = 1);

  Result:=
    (AParent[0] = cdsGridDataPARENT_MLL_OBJECT_BRANCH_CODE.AsVariant) and
    (AParent[1] = cdsGridDataPARENT_MLL_OBJECT_CODE.AsVariant);
end;

procedure TfmXModel.cdsGridDataPAR_LINE_DETAIL_TECH_QUANTITYChange(
  Sender: TField);
begin
  inherited;
  CalcTotalDetailQuantity;
end;

function TfmXModel.GetStageNoField: TField;
begin
  Result:= cdsStagesML_MODEL_STAGE_NO;
end;

function TfmXModel.GetOperationNoField: TField;
begin
  Result:= cdsOperationsMLMS_OPERATION_NO;
end;

function TfmXModel.FirstModelDeptColumnIndex: Integer;
begin
  Result:= XModelFirstModelDeptColumnIndex;
end;

procedure TfmXModel.AddModelFieldDefs;
begin
  with cdsModel.FieldDefs.AddFieldDef do
    begin
      Name:= 'MLL_OBJECT_BRANCH_CODE';
      DataType:= ftInteger;
      Index:= 0;
    end;   { with }

  with cdsModel.FieldDefs.AddFieldDef do
    begin
      Name:= 'MLL_OBJECT_CODE';
      DataType:= ftInteger;
      Index:= 1;
    end;   { with }

  with cdsModel.FieldDefs.AddFieldDef do
    begin
      Name:= 'FORK_NO';
      DataType:= ftInteger;
      Index:= MaxNoPos + 5;
    end;   { with }

  with cdsModel.FieldDefs.AddFieldDef do
    begin
      Name:= 'NO_AS_FORMATED_TEXT_EX';
      DataType:= ftWideString;
      Size:= cdsGridDataNO_AS_FORMATED_TEXT.Size;
    end;   { with }
end;

procedure TfmXModel.SetModelFields;
begin
  cdsModel.FieldByName('MLL_OBJECT_BRANCH_CODE').Visible:= False;
  cdsModel.FieldByName('MLL_OBJECT_CODE').Visible:= False;

  with cdsModel.FieldByName('FORK_NO') do
    begin
      DisplayLabel:= SForkNoCaption;
      DisplayWidth:= 3;
    end;   { with }
end;

procedure TfmXModel.UpdateLocateDataSetData(var FieldNames: string;
  var FieldValues: Variant; Source: TDataSet);
begin
  inherited;

  FieldNames:= FieldNames + '; FORK_NO';

  VarArrayRedim(FieldValues, MaxNoPos);
  FieldValues[MaxNoPos]:= Source.FieldByName('FORK_NO').AsInteger;
end;

function TfmXModel.PrintStaticColumnsCount: Integer;
begin
  Result:= XModelPrintStaticColumnsCount;
end;

procedure TfmXModel.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode;
  AFilterFormEnabled, AMakeChanges, ASelectMovement: Boolean;
  ASelectFromMLBranchCode, ASelectFromMLCode: Integer;
  AFromMlmsObjectBranchCodePtr, AFromMlmsObjectCodePtr: PInteger;
  AFocusMllObjectBranchCode, AFocusMllObjectCode: Integer;
  AShowTaskModel, AShowInvestedValues: Boolean;
  AInvestedValueParamsDataSet: TDataSet);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, doNone, AFilterFormEnabled);

  FOuterDataSet:= ADataSet;
  FMakeChanges:= AMakeChanges;
  FSelectMovement:= ASelectMovement;
  FSelectFromMLBranchCode:= ASelectFromMLBranchCode;
  FSelectFromMLCode:= ASelectFromMLCode;
  FFromMlmsObjectBranchCodePtr:= AFromMlmsObjectBranchCodePtr;
  FFromMlmsObjectCodePtr:= AFromMlmsObjectCodePtr;
  FFocusMllObjectBranchCode:= AFocusMllObjectBranchCode;
  FFocusMllObjectCode:= AFocusMllObjectCode;
  FShowTaskModel:= AShowTaskModel;
  FShowInvestedValues:= AShowInvestedValues;
  FInvestedValueParamsDataSet:= AInvestedValueParamsDataSet;
end;

class function TfmXModel.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode;
  AFilterFormEnabled, AMakeChanges, ASelectMovement: Boolean;
  ASelectFromMLBranchCode, ASelectFromMLCode: Integer;
  AFromMlmsObjectBranchCodePtr, AFromMlmsObjectCodePtr: PInteger;
  AFocusMllObjectBranchCode, AFocusMllObjectCode: Integer;
  AShowTaskModel, AShowInvestedValues: Boolean;
  AInvestedValueParamsDataSet: TDataSet): Boolean;
var
  f: TfmXModel;
  mr: Integer;
  SavePage: TPrinterPage;
begin
  SavePage:= SetUpPrinter(DMPAPER_A3, poLandscape);
  try
    f:= CreateEx;
    try
      f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AFilterFormEnabled,
          AMakeChanges, ASelectMovement,
          ASelectFromMLBranchCode, ASelectFromMLCode,
          AFromMlmsObjectBranchCodePtr, AFromMlmsObjectCodePtr,
          AFocusMllObjectBranchCode, AFocusMllObjectCode, AShowTaskModel,
          AShowInvestedValues, AInvestedValueParamsDataSet);
      mr:= f.InternalShowForm;

      if ASelectMovement then
        Result:= (mr = mrOk)
      else
        Result:=
          (AMakeChanges and f.FChangeMade) or
          f.IsDataModified;
    finally
      f.ReleaseForm;
    end;
  finally
    SetUpPrinter(SavePage.PaperSize, SavePage.Orientation);
  end;   { try }
end;

class function TfmXModel.SelectMovement(AdmDocClient: TdmDocClient;
  MLBranchCode, MLCode: Integer;
  out FromMlmsObjectBranchCode, FromMlmsObjectCode: Integer): Boolean;
begin
  Result:= ShowForm(AdmDocClient, nil, emReadOnly, True,
             False, True, MLBranchCode, MLCode,
             @FromMlmsObjectBranchCode, @FromMlmsObjectCode);
end;

procedure TfmXModel.cdsStagesAfterCancel(DataSet: TDataSet);
begin
  inherited;
  CancelDataSet(cdsGridData);
end;

function TfmXModel.ShowStageEditForm(AEditMode: TEditMode): Boolean;
var
  UnapproveMethod: TUnapproveMethod;
  DeptCode: Integer;
  lhadi: Boolean;
  FinalizedDocs: Boolean;
begin
  DeptCode:= cdsStagesDEPT_CODE.AsInteger;

  lhadi:= LoginContext.DocItemsUnapprovePrompt and LineHasApprovedDocItem;
  FinalizedDocs:= CountApproveCycles and LineStageAndOperationDocsFinalized;

  Result:= TfmXModelStageEdit.ShowForm(dmDocClient, cdsStages, AEditMode,
    doNone, True, cdsOperations, cdsGridData, NewOperationData, nil,
    lhadi, GetModelIdentifier, UnapproveMethod, GetStageOperationInvestedValue, InvestedValueFilter);

  if lhadi and Result then
    begin
      UnapproveSpecLineStagesAndOperationsDocs(UnapproveMethod);

      if (EditMode = emInsert) or (DeptCode <> cdsStagesDEPT_CODE.AsInteger) then
        UnapproveStage(UnapproveMethod);
    end;

  if Result and FinalizedDocs and (not LineStageAndOperationDocsFinalized) then
    IncApproveCycleNo;
end;

procedure TfmXModel.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsGridDataIS_FORK.AsBoolean then
    begin
      cdsGridData_IS_FIRST_CHILD.AsBoolean:=
        (cdsGridDataFORK_NO.AsInteger = 1);
      cdsGridData_IS_LAST_CHILD.AsBoolean:=
        (cdsGridDataFORK_NO.AsInteger = ForkCount);
    end;   { if }

  cdsGridData_MLL_CHANGE_STATUS_ABBREV.AsString:=
    MllChangeStatusAbbrev(cdsGridDataMLL_CHANGE_STATUS.AsInteger);

  if (cdsGridDataFORK_NO.AsInteger > 0) then
    cdsGridData_DETAIL_TECH_QUANTITY_SHOW.Clear;

  cdsGridData_LINE_DETAIL_TECH_QUANTITY_SHOW.AsVariant:=
    cdsGridDataLINE_DETAIL_TECH_QUANTITY.AsVariant;
end;

function TfmXModel.GetNoField(ANo: Integer;
  ADataSet: TDataSet): TField;
begin
  if not Assigned(ADataSet) then
    ADataSet:= cdsGridData;

  if (ANo = MaxNoPos + 1) then
    begin
      if (ADataSet = cdsGridData) then
        Result:= cdsGridDataFORK_NO
      else
        begin
          if (ADataSet = cdsFilteredGridData) then
            Result:= FcdsFilteredGridDataFORK_NO
          else
            Result:= ADataSet.FieldByName('FORK_NO');
        end;
    end
  else
    Result:= inherited GetNoField(ANo, ADataSet);
end;

function TfmXModel.LastNoPos(ADataSet: TDataSet): Integer;
begin
  if not Assigned(ADataSet) then
    ADataSet:= cdsGridData;

  if ADataSet.FieldByName('IS_FORK').AsBoolean then
    Result:= MaxNoPos + 1
  else
    Result:= inherited LastNoPos(ADataSet);
end;

function TfmXModel.NewLineDataNo(idx: Integer): Integer;
begin
  if (idx = MaxNoPos + 1) then
    Result:= NewLineData.ForkNo
  else
    Result:= NewLineData.No[idx];
end;

procedure TfmXModel.grdModelDblClick(Sender: TObject);
begin
  if FSelectMovement then
    begin
      if MovementSelected then
        ModalResult:= mrOK;
    end
  else   { if }
    inherited;
end;

procedure TfmXModel.FormClose(Sender: TObject; var Action: TCloseAction);
var
  OriginalModalResult: Integer;
begin
  OriginalModalResult:= ModalResult;
  
  if (ModalResult = mrOK) and FSelectMovement then
    begin
      if MovementSelected then
        begin
          FFromMlmsObjectBranchCodePtr^:=
            cdsStagesMLMS_OBJECT_BRANCH_CODE.AsInteger;
          FFromMlmsObjectCodePtr^:=
            cdsStagesMLMS_OBJECT_CODE.AsInteger;

          ModalResult:= mrCancel;  // da ne apply-va
        end   { if }
      else
        raise Exception.Create(SNoMovementSelected);
    end;   { if }

  inherited;

  if FSelectMovement then
    ModalResult:= OriginalModalResult;
end;

procedure TfmXModel.FormShow(Sender: TObject);
begin
  inherited;

  if FSelectMovement or FShowInvestedValues then
    ActiveControl:= grdModel;

  if FShowTaskModel then
    begin

      if (cdsTasks.RecordCount > 0) and TfmSelectModelTask.ShowForm(cdsTasks) then
        begin
          pnlMainData.Visible:= False;

          actTaskModel.Execute;
        end
      else
        begin
          if (cdsTasks.RecordCount = 0) then
            MessageDlgEx(SNoModelTasks, mtError, [mbOK], 0);

          PostMessage(Handle, WM_CLOSE, 0, 0);
          Height:= 0;
          Width:= 0;
        end;
    end;

  actForm.Update;
end;

function TfmXModel.GetFormCaption: string;
begin
  if FShowInvestedValues then
    Result:= SInvestedValuesCaption
  else
    begin
      if FSelectMovement then
        Result:= Format(OriginalFormCaption, [SSelectMovement])
      else
        begin
          if FMakeChanges then
            Result:= Format(OriginalFormCaption, [SMakeChanges])
          else
            Result:= inherited GetFormCaption;
        end;
    end;
end;

procedure TfmXModel.actLineChangeUpdate(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    Enabled:=
      cdsGridData.Active and
      (not cdsGridDataPRODUCT_CODE.IsNull) and
      cdsDataANNUL_EMPLOYEE_CODE.IsNull and
      cdsDataCLOSE_EMPLOYEE_CODE.IsNull and
      (not cdsDataIS_ARCHIVED.AsBoolean);
end;

procedure TfmXModel.actLineChangeExecute(Sender: TObject);
var
  AEditMode: TEditMode;
begin
  inherited;

  if (cdsGridDataMLL_CHANGE_STATUS.AsInteger = lcsOK) then
    AEditMode:= emInsert
  else   { if }
    AEditMode:= emEdit;

  if TfmMaterialListLineChange.ShowForm(dmDocClient, cdsGridData, AEditMode, True) then
    begin
      FChangeMade:= True;
      UpdateFilteredGridData;
    end;
end;

procedure TfmXModel.cdsStagesBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  dmDocClient.DSDeleteDoc(DataSet);

  StagesBeforeDelete(DataSet);

  with cdsOperations do
    begin
      DisableControls;
      try
        Last;
        while not (BOF and EOF) do
          Delete;
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TfmXModel.cdsStagesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  StagesAfterDelete(DataSet);
end;

procedure TfmXModel.cdsGridDataBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  FBeforeDeleteFork0MllBranchCode:= cdsGridDataFORK_0_MLL_OBJECT_BRANCH_CODE.AsInteger;
  FBeforeDeleteFork0MllCode:= cdsGridDataFORK_0_MLL_OBJECT_CODE.AsInteger;
end;

function TfmXModel.HasForkField: Boolean;
begin
  Result:= True;
end;

function TfmXModel.ConfirmParentDeletionMsg: string;
begin
  Result:= SConfirmParentDeletion;
end;

procedure TfmXModel.SetStagesNumberingFrom(StartNo: Integer);
var
  StageNo: Integer;

  procedure GoToFirstStage;
  begin
    with cdsStages do
      if (StartNo = 0) then
        StageNo:= 1
      else   { if }
        StageNo:= RecordCount-1;
  end;   { GoToFirstStage }


  function LocateStage: Boolean;
  begin
    Result:= cdsStages.Locate('ML_MODEL_STAGE_NO', StageNo, []);
  end;   { EndOfStages }

  procedure NextStage;
  begin
    with cdsStages do
      if (StartNo = 0) then
        Inc(StageNo)
      else   { if }
        Dec(StageNo);
  end;   { NextStage }

  procedure RenumberStage;
  var
    d: Integer;
  begin
    with cdsStages do
      begin
        if (StartNo = 0) then
          d:= -1
        else
          d:= 1;

        Edit;
        try
          with cdsStagesML_MODEL_STAGE_NO do
            AsInteger:= AsInteger + d;

          Post;
        except
          Cancel;
          raise;
        end;   { try }
      end;   { with }
  end;   { RenumberStage }

var
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    with cdsStages do
      begin
        DisableControls;
        try
          First;

          if (cdsStages.RecordCount > 0) and
             (cdsStagesML_MODEL_STAGE_NO.AsInteger <> StartNo) then
            begin
              GoToFirstStage;
              while LocateStage do
                begin
                  RenumberStage;
                  NextStage;
                end;   { while }
            end;   { if }

          First;
        finally
          EnableControls;
        end;   { try }
      end;   { with }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

procedure TfmXModel.SetForksDetailCodeAndTechQuantity(NewDetailCode: Integer;
  NewTechQuantity: Real);
var
  b: TBookmark;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          if not EOF then
            begin
              Next;
              while cdsGridDataIS_FORK.AsBoolean and (not EOF) do
                begin
                  Edit;
                  try
                    cdsGridDataDETAIL_CODE.AsInteger:= NewDetailCode;
                    cdsGridDataDETAIL_TECH_QUANTITY.AsFloat:= NewTechQuantity;
                    Post;
                  except
                    Cancel;
                    raise;
                  end;   { try }

                  Next;
                end;   { while }
            end;   { if }
        finally
          Bookmark:= b;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TfmXModel.UpdateFork0LineDetailQuantity;
var
  b: TBookmark;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          RebuildGridDataLDTQ;
           
          LocateParent;
          Edit;
          try
            CalcLineDetailQuanity;
            Post;
          except
            Cancel;
            raise;
          end;   { try }
        finally
          Bookmark:= b;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TfmXModel.CalcLineDetailQuanity;
begin
  if cdsGridDataLDTQ.Locate('NO_AS_FORMATED_TEXT; FORK_NO',
       VarArrayOf([cdsGridDataNO_AS_FORMATED_TEXT.AsString, cdsGridDataFORK_NO.AsInteger]), []) then
    cdsGridDataLINE_DETAIL_TECH_QUANTITY.AsFloat:=
      cdsGridDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat -
      VarToFloat(cdsGridDataLDTQ_SUM_FORKS_QUANTITY.AsVariant)
  else
    cdsGridDataLINE_DETAIL_TECH_QUANTITY.AsFloat:=
      cdsGridDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat;
end;

procedure TfmXModel.MoveStage(MoveUp: Boolean; UnapprovePrompt: Boolean);
var
  OldStageNo, NewStageNo: Integer;
  um: TUnapproveMethod;
begin
  with cdsStages do
    begin
      DisableControls;
      try
        OldStageNo:= cdsStagesML_MODEL_STAGE_NO.AsInteger;

        if MoveUp then
          NewStageNo:= OldStageNo - 1
        else
          NewStageNo:= OldStageNo + 1;

        Edit;
        try
          cdsStagesML_MODEL_STAGE_NO.AsInteger:= -1;
          Post;
        except
          Cancel;
          raise;
        end;   { try }

        cdsStages.Locate('ML_MODEL_STAGE_NO', NewStageNo, []);

        Edit;
        try
          cdsStagesML_MODEL_STAGE_NO.AsInteger:= OldStageNo;
          Post;
        except
          Cancel;
          raise;
        end;   { try }

        cdsStages.Locate('ML_MODEL_STAGE_NO', -1, []);

        Edit;
        try
          cdsStagesML_MODEL_STAGE_NO.AsInteger:= NewStageNo;
          Post;
        except
          Cancel;
          raise;
        end;   { try }

        cdsStages.Locate('ML_MODEL_STAGE_NO', NewStageNo, []);
      finally
        EnableControls;
      end;   { try }

      if UnapprovePrompt and LoginContext.DocItemsUnapprovePrompt and LineHasApprovedDocItem then
        begin
          um:= UnapproveStage;

          cdsStages.Locate('ML_MODEL_STAGE_NO', OldStageNo, []);
          UnapproveStage(um);

          cdsStages.Locate('ML_MODEL_STAGE_NO', NewStageNo, []);
        end;
    end;   { with }
end;

function TfmXModel.GetAddChildEnabled: Boolean;
begin
  Result:=
    inherited GetAddChildEnabled and
    (cdsGridDataMLL_CHANGE_STATUS.AsInteger = lcsOK) and
    (cdsGridDataFORK_NO.AsInteger = 0);
end;

function TfmXModel.GetAddSpecificationEnabled: Boolean;
begin
  Result:=
    inherited GetAddSpecificationEnabled and
    (cdsGridDataMLL_CHANGE_STATUS.AsInteger = lcsOK) and
    (cdsGridDataFORK_NO.AsInteger = 0);
end;

function TfmXModel.GetDelRecordEnabled: Boolean;
begin
  Result:=
    inherited GetDelRecordEnabled and
    (cdsGridDataMLL_CHANGE_STATUS.AsInteger = lcsOK);
end;

function TfmXModel.ReadOnlyLine: Boolean;
begin
  Result:=
    inherited ReadOnlyLine or
    (cdsGridDataMLL_CHANGE_STATUS.AsInteger <> lcsOK) or
    FMakeChanges;
end;

procedure TfmXModel.CalcTotalTreatmentWorkdays(SetLineNo, SetOpVariantDetailTechQuantity: Boolean);
var
  LevelTotalTreatmentWorkdays: array[-1..MaxNoPos] of Integer;
  i: Integer;
  Level: Integer;
  CurrentLevelTotalTreatmentWorkdays: Integer;
  SaveCursor: TCursor;
  LinesBookmark: TBookmark;
  StagesBookmark: TBookmark;
  OperationsBookmark: TBookmark;
  PrevOperationNo: Integer;
  QuantitySet: Boolean;
  NewVariantDetailTechQuantity: Real;
  SaveOperationsAutoCalcFields: Boolean;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    FCalculatingTotalTreatmentWorkdays:= True;
    try
      cdsModel.DisableControls;
      try
        cdsGridData.DisableControls;
        try
          cdsStages.DisableControls;
          try
            SaveOperationsAutoCalcFields:= cdsOperations.AutoCalcFields;
            cdsOperations.AutoCalcFields:= False;
            try
              for i:= -1 to MaxNoPos do
                LevelTotalTreatmentWorkdays[i]:= 0;

              LinesBookmark:= cdsGridData.Bookmark;
              StagesBookmark:= cdsStages.Bookmark;
              OperationsBookmark:= cdsOperations.Bookmark;
              try
                FMaxTotalTreatmentWorkdays:= 0;
                cdsGridData.First;
                while not cdsGridData.EOF do
                  begin
                    Level:= SimpleLastNoPos;

                    CurrentLevelTotalTreatmentWorkdays:= LevelTotalTreatmentWorkdays[Level-1];

                    cdsStages.Last;
                    while not cdsStages.BOF do
                      begin
                        Inc(CurrentLevelTotalTreatmentWorkdays,
                          cdsStagesTREATMENT_WORKDAYS.AsInteger -
                          cdsStagesOUTGOING_WORKDAYS.AsInteger);

                        FMaxTotalTreatmentWorkdays:= Max(FMaxTotalTreatmentWorkdays, CurrentLevelTotalTreatmentWorkdays);

                        if (cdsGridDataMLL_CHANGE_STATUS.AsInteger = lcsOK) and
                           (cdsStagesTOTAL_TREATMENT_WORKDAYS.AsInteger <> CurrentLevelTotalTreatmentWorkdays) then
                          begin
                            cdsStages.Edit;
                            try
                              cdsStagesTOTAL_TREATMENT_WORKDAYS.AsInteger:=
                                CurrentLevelTotalTreatmentWorkdays;

                              cdsStages.Post;
                            except
                              cdsStages.Cancel;
                              raise;
                            end;   { try }
                          end;

                        if SetLineNo then
                          begin
                            cdsStages.Edit;
                            try
                              for i:= 1 to MaxNoPos do
                                GetNoField(i, cdsStages).AsInteger:= GetNoField(i, cdsGridData).AsInteger;
                              cdsStagesFORK_NO.AsInteger:= cdsGridDataFORK_NO.AsInteger;

                              cdsStages.Post;
                            except
                              cdsStages.Cancel;
                              raise;
                            end;   { try }

                            cdsOperations.First;
                            while not cdsOperations.Eof do
                              begin
                                cdsOperations.Edit;
                                try
                                  for i:= 1 to MaxNoPos do
                                    GetNoField(i, cdsOperations).AsInteger:= GetNoField(i, cdsGridData).AsInteger;
                                  cdsOperationsFORK_NO.AsInteger:= cdsGridDataFORK_NO.AsInteger;
                                  cdsOperationsML_MODEL_STAGE_NO.AsInteger:= cdsStagesML_MODEL_STAGE_NO.AsInteger;

                                  cdsOperations.Post;
                                except
                                  cdsOperations.Cancel;
                                  raise;
                                end;  { try }

                                cdsOperations.Next;
                              end;  { while }
                          end;   { if }

                        if SetOpVariantDetailTechQuantity then
                          with cdsOperations do
                            begin
                              PrevOperationNo:= -1;
                              QuantitySet:= False;
                              First;
                              while not Eof do
                                begin
                                  if (cdsOperationsMLMS_OPERATION_NO.AsInteger <> PrevOperationNo) then
                                    QuantitySet:= False;

                                  if (not QuantitySet) and
                                     (cdsOperationsIS_ACTIVE.AsBoolean or
                                      (VarToFloat(cdsOperations_OPERATION_ACTIVE_VARIANT_COUNT.AsVariant) = 0)) then
                                    begin
                                      NewVariantDetailTechQuantity:=
                                        LineDetailTechQuantity -
                                        VarToFloat(cdsOperations_SUM_VARIANT_DETAIL_TECH_QTY.AsVariant) +
                                        cdsOperationsVARIANT_DETAIL_TECH_QUANTITY.AsFloat;

                                      if (NewVariantDetailTechQuantity <> cdsOperationsVARIANT_DETAIL_TECH_QUANTITY.AsFloat) then
                                        begin
                                          Edit;
                                          try
                                            cdsOperationsVARIANT_DETAIL_TECH_QUANTITY.AsFloat:= NewVariantDetailTechQuantity;
                                            Post;
                                          except
                                            Cancel;
                                            raise;
                                          end;  { try }
                                        end;

                                      QuantitySet:= True;
                                    end;

                                  PrevOperationNo:= cdsOperationsMLMS_OPERATION_NO.AsInteger;
                                  Next;
                                end;  { while }
                            end;  { with }

                        cdsStages.Prior;
                      end;   { while }

                    if cdsGridDataIS_NOT_FORK.AsBoolean then
                      LevelTotalTreatmentWorkdays[Level]:=
                        CurrentLevelTotalTreatmentWorkdays;

                    cdsGridData.Next;
                  end;   { while }
              finally
                cdsGridData.Bookmark:= LinesBookmark;
                cdsStages.Bookmark:= StagesBookmark;
                cdsOperations.Bookmark:= OperationsBookmark;
              end;   { try }
            finally
              cdsOperations.AutoCalcFields:= SaveOperationsAutoCalcFields;
            end;  { try }
          finally
            cdsStages.EnableControls;
          end;   { try }
        finally
          cdsGridData.EnableControls;
        end;   { try }
      finally
        cdsModel.EnableControls;
      end;   { try }
    finally
      FCalculatingTotalTreatmentWorkdays:= False;
    end;   { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

function TfmXModel.GetAddStageEnabled: Boolean;
begin
  Result:=
    inherited GetAddStageEnabled and
    (cdsGridDataMLL_CHANGE_STATUS.AsInteger = lcsOK);
end;

function TfmXModel.GetDelStageEnabled: Boolean;
begin
  Result:=
    inherited GetDelStageEnabled and
    (cdsGridDataMLL_CHANGE_STATUS.AsInteger = lcsOK) and
    (cdsGridDataLAST_MM_MLMS_MODEL_STAGE_NO.IsNull or
     (cdsStagesML_MODEL_STAGE_NO.AsInteger > cdsGridDataLAST_MM_MLMS_MODEL_STAGE_NO.AsInteger));
end;

function TfmXModel.GetEditStageReadOnly: Boolean;
begin
  Result:=
    inherited GetEditStageReadOnly or
    FShowInvestedValues;
end;

function TfmXModel.GetMoveUpStageEnabled: Boolean;
begin
  Result:=
    inherited GetMoveUpStageEnabled and
    (cdsGridDataMLL_CHANGE_STATUS.AsInteger = lcsOK) and
    (cdsGridDataLAST_MM_MLMS_MODEL_STAGE_NO.IsNull or
     (cdsStagesML_MODEL_STAGE_NO.AsInteger > cdsGridDataLAST_MM_MLMS_MODEL_STAGE_NO.AsInteger + 1));
end;

function TfmXModel.GetMoveDownStageEnabled: Boolean;
begin
  Result:=
    inherited GetMoveDownStageEnabled and
    (cdsGridDataMLL_CHANGE_STATUS.AsInteger = lcsOK) and
    (cdsGridDataLAST_MM_MLMS_MODEL_STAGE_NO.IsNull or
     (cdsStagesML_MODEL_STAGE_NO.AsInteger > cdsGridDataLAST_MM_MLMS_MODEL_STAGE_NO.AsInteger));
end;

procedure TfmXModel.cdsGridDataAfterDelete(DataSet: TDataSet);
var
  b: TBookmark;
begin
  inherited;

  if (FBeforeDeleteFork0MllCode > 0) then
    with cdsGridData do
      begin
        DisableControls;
        try
          b:= Bookmark;
          try
            RebuildGridDataLDTQ;

            Locate('MLL_OBJECT_BRANCH_CODE; MLL_OBJECT_CODE',
              VarArrayOf([FBeforeDeleteFork0MllBranchCode, FBeforeDeleteFork0MllCode]), []);

            Edit;
            try
              CalcLineDetailQuanity;
              Post;
            except
              Cancel;
              raise;
            end;   { try }
          finally
            Bookmark:= b;
          end;   { try }
        finally
          EnableControls;
        end;   { try }
      end;   { with }

  ChangeAfterModelGeneration:= True;
end;

function TfmXModel.GetResultStoreCode: Integer;
begin
  Result:= cdsDataRESULT_STORE_CODE.AsInteger;
end;

procedure TfmXModel.SetResultStoreCode(Value: Integer);
begin
  CheckEditMode(cdsData);
  cdsDataRESULT_STORE_CODE.AsInteger:= Value;
end;

procedure TfmXModel.actAddSpecificationExecute(Sender: TObject);
var
  SpecProductCode: Variant;
  i: Integer;
begin
  inherited;

  SetLength(FAddedSpecificationMLLObjectKeys, 0);

  if (not FInsertingSpecification) and
     (not cdsGridDataPRODUCT_CODE.IsNull) and
     (MessageDlgEx(SConfirmMaterialDeletion, mtWarning, mbOkCancel, 0) <> mrOK) then
    Abort;

  if not TfmSpecifications.GetSpecification(nil, SpecProductCode, MaxNoPos - LastNoPos - 1) then
    SpecProductCode:= 0;

  if VarIsArray(SpecProductCode) or (SpecProductCode > 0) then
    begin
      if not VarIsArray(SpecProductCode) then
        SpecProductCode:= VarArrayOf([SpecProductCode]);

      for i:= VarArrayLowBound(SpecProductCode, 1) to VarArrayHighBound(SpecProductCode, 1) do
        if AddSpecification(SpecProductCode[i], True) then
          begin
            SetLength(FAddedSpecificationMLLObjectKeys, Length(FAddedSpecificationMLLObjectKeys)+1);
            FAddedSpecificationMLLObjectKeys[Length(FAddedSpecificationMLLObjectKeys)-1].MLLObjectBranchCode:= cdsGridDataMLL_OBJECT_BRANCH_CODE.AsInteger;
            FAddedSpecificationMLLObjectKeys[Length(FAddedSpecificationMLLObjectKeys)-1].MLLObjectCode:= cdsGridDataMLL_OBJECT_CODE.AsInteger;
          end;
    end
  else
    Abort;   // zaradi AddBrotherSpec
end;

function TfmXModel.GetAddBrotherEnabled: Boolean;
begin
  Result:=
    inherited GetAddBrotherEnabled and
    (cdsGridDataFORK_NO.AsInteger = 0);
end;

function TfmXModel.GetInsertBeforeEnabled: Boolean;
begin
  Result:=
    inherited GetInsertBeforeEnabled and
    (cdsGridDataFORK_NO.AsInteger = 0);
end;

function TfmXModel.GetInsertSpecificationEnabled: Boolean;
begin
  Result:=
    inherited GetInsertSpecificationEnabled and
    (cdsGridDataFORK_NO.AsInteger = 0);
end;

procedure TfmXModel.actInsertSpecificationExecute(Sender: TObject);

  procedure IncNo(ANoPos: Integer; AValue: Integer = 1);
  begin
    with cdsGridData do
      begin
        Edit;
        try
          with GetNoField(ANoPos) do
            AsInteger:= AsInteger + AValue;
          Post;
        except
          Cancel;
          raise;
        end;   { try }
      end;   { with }
  end;

var
  SaveCursor: TCursor;
  InsertBeforeNo: Integer;
  lnp: Integer;
  InsertBeforeMllObjectBranchCode: Integer;
  InsertBeforeMllObjectCode: Integer;
  AddedSpecificationCount: Integer;
  i: Integer;
begin
  inherited;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    with cdsGridData do
      begin
        DisableControls;
        try
          lnp:= LastNoPos;
          InsertBeforeNo:= GetNoField(lnp).AsInteger;

          InsertBeforeMllObjectBranchCode:= cdsGridDataMLL_OBJECT_BRANCH_CODE.AsInteger;
          InsertBeforeMllObjectCode:= cdsGridDataMLL_OBJECT_CODE.AsInteger;

          FInsertingSpecification:= True;
          try
            actAddSpecification.Execute;
          finally
            FInsertingSpecification:= False;
          end;   { try }

          AddedSpecificationCount:= Length(FAddedSpecificationMLLObjectKeys);
          if (AddedSpecificationCount > 0) then
            begin
              IncNo(lnp, AddedSpecificationCount);

              FRelocatingSpecification:= True;
              try
                repeat
                  Prior;
                  IncNo(lnp, AddedSpecificationCount);
                until (InsertBeforeMllObjectBranchCode = cdsGridDataMLL_OBJECT_BRANCH_CODE.AsInteger) and
                      (InsertBeforeMllObjectCode = cdsGridDataMLL_OBJECT_CODE.AsInteger);
              finally
                FRelocatingSpecification:= False;
              end;   { try }

              for i:= 0 to AddedSpecificationCount - 1 do
                begin
                  Locate('MLL_OBJECT_BRANCH_CODE; MLL_OBJECT_CODE',
                    VarArrayOf([FAddedSpecificationMLLObjectKeys[i].MLLObjectBranchCode, FAddedSpecificationMLLObjectKeys[i].MLLObjectCode]), []);

                  Edit;
                  try
                    GetNoField(lnp).AsInteger:= InsertBeforeNo + i;
                    Post;
                  except
                    Cancel;
                    raise;
                  end;   { try }
                end;  { for }
            end;   { if }
        finally
          EnableControls;
        end;   { try }
      end;   { with }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }

  UpdateFilteredGridData;
end;

procedure TfmXModel.CheckCdsDataRequiredFields;
begin
  inherited;

  CheckRequiredFields(cdsData,
    'MAIN_DEPT_NAME; RESULT_PRODUCT_NAME; TECH_QUANTITY; ' +
    'ENTER_RESULT_STORE_BEGIN_DATE; ENTER_RESULT_STORE_END_DATE; ' +
    '_OWNER_EMPLOYEE_NAME');
end;

procedure TfmXModel.cdsDataOWNER_EMPLOYEE_CODEChange(Sender: TField);
begin
  inherited;

  if not Sender.IsNull and cdsData_OWNER_EMPLOYEE_NAME.IsNull then
    raise Exception.Create(SInvalidOwnerCode);
end;

function TfmXModel.GetModelIsCorrectMsg: string;
begin
  Result:= SModelIsCorrect;
end;

function TfmXModel.ModelColumnType(Index,
  FirstStageColumnIndex: Integer): TModelColumnType;
begin
  Result:= TModelColumnType((Index - FirstStageColumnIndex) mod 6);
end;

function TfmXModel.PrintModelColumnType(Index,
  FirstStageColumnIndex: Integer): TModelColumnType;
begin
  case (Index - FirstStageColumnIndex) mod 3 of
    0: if actToggleInvestedValue.Checked then
         begin
          if actToggleInvestedValuePart.Checked then
            Result:= mctInvestedValuePart
          else
            Result:= mctInvestedValue;
         end
       else
        Result:= mctDept;
    1: Result:= mctDates;
    2: Result:= mctArrow;
  else
    raise Exception.Create('Invalid ModelColumnType!');
  end;
end;

function TfmXModel.GetArrowDeptColumn(ACol: Integer): Integer;
begin
  Result:= (ACol - 4);
end;

procedure TfmXModel.AddBeforeDirFieldDefs(Index: Integer);
begin
  inherited;

  cdsModel.FieldDefs.Add(Format(OutgoingDateStageNo, [Index]), ftTimeStamp);
  cdsModel.FieldDefs.Add(Format(OutgoingWorkdaysStageNo, [Index]), ftInteger);
  cdsModel.FieldDefs.Add(Format(DatesStageNo, [Index]), ftWideString, 20);
end;

procedure TfmXModel.SetModelBeforeDirFields(Index: Integer);
begin
  inherited;

  with cdsModel.FieldByName(Format(OutgoingDateStageNo, [Index])) as TAbmesSQLTimeStampField do
    begin
      Visible:= False;
      DisplayLabel:= DatesStageDisplayLabel;

      if LoginContext.WeekDateFormatting then
        DisplayFormat:= ModelDatesWeekDisplayFormat
      else
        DisplayFormat:= FModelDatesMonthDisplayFormat;
    end;   { with }

  cdsModel.FieldByName(Format(OutgoingWorkdaysStageNo, [Index])).Visible:= False;

  with cdsModel.FieldByName(Format(DatesStageNo, [Index])) do
    begin
      DisplayLabel:= Format(DatesStageDisplayLabel, [Index]);
      DisplayWidth:= 15;
    end;   { with }
end;

function TfmXModel.GetStageDaysFormat: string;
begin
  Result:= '';
end;

procedure TfmXModel.FillModelBeforeDirFields(StageNo: Integer);
begin
  inherited;

  cdsModel.FieldByName(Format(OutgoingDateStageNo, [StageNo])).AsDateTime:=
    dmMain.IncDateByWorkdays(cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime + 1,
      -(cdsStagesTOTAL_TREATMENT_WORKDAYS.AsInteger -
        (cdsStagesTREATMENT_WORKDAYS.AsInteger - cdsStagesOUTGOING_WORKDAYS.AsInteger)));

  cdsModel.FieldByName(Format(OutgoingWorkdaysStageNo, [StageNo])).AsVariant:=
    cdsStagesOUTGOING_WORKDAYS.AsVariant;
end;

procedure TfmXModel.CalcModelShowDatesFields;
var
  i: Integer;
  s: string;
begin
  with cdsModel do
    for i:= 1 to FModelWidth - 1 do
      begin
        if FieldByName(Format(OutgoingWorkdaysStageNo, [i])).IsNull then
          s:= ''
        else
            s:= Format(SModelShowDatesFormat, [
                FieldByName(Format(OutgoingDateStageNo, [i])).DisplayText,
                FieldByName(Format(OutgoingWorkdaysStageNo, [i])).DisplayText]);
        FieldByName(Format(DatesStageNo, [i])).AsString:= s;
      end;
end;

procedure TfmXModel.cdsMlmsoInvestedValuesBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  with (DataSet as TClientDataSet).Params do
    begin
      ParamByName('MLMS_OBJECT_BRANCH_CODE').AsInteger:= cdsStagesMLMS_OBJECT_BRANCH_CODE.AsInteger;
      ParamByName('MLMS_OBJECT_CODE').AsInteger:= cdsStagesMLMS_OBJECT_CODE.AsInteger;
      ParamByName('CURRENCY_CODE').AsInteger:= InvestedValueFilter.CurrencyCode;
    end;
end;

procedure TfmXModel.cdsModelBeforePost(DataSet: TDataSet);
begin
  inherited;
  CalcModelShowDatesFields;
end;

procedure TfmXModel.BeforeGenerateModel;
var
  SaveCursor: TCursor;
begin
  inherited;

  if not cdsStages.Filtered then
    CalcTotalTreatmentWorkdays(False, True);

  if (EditMode <> emInsert) then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crSQLWait;
      try
        cdsMllInvestedValues.Open;

        if (InvestedValueFilter.InvestedValueLevel > 1) then
          cdsMlmsInvestedValues.Open;
      finally
        Screen.Cursor:= SaveCursor;
      end;  { cursor try }
    end;

  actToggleInvestedValue.Update;
end;

procedure TfmXModel.AfterGenerateModel;
begin
  inherited;

  if (EditMode <> emInsert) then
    begin
      cdsMllInvestedValues.Close;
      cdsMlmsInvestedValues.Close;
    end;
end;

procedure TfmXModel.actMakeLimitingExecute(Sender: TObject);
var
  ProductionStartDate: TDateTime;
  AllowMakeLimitingDate: TDateTime;
begin
  inherited;

  LoginContext.CheckUserActivity(uaMakeXModelLimiting);

  FMakingLimiting:= True;
  try
    CheckCdsDataRequiredFields;

    ProductionStartDate:= GetProductionStartDate;

    AllowMakeLimitingDate:=
      dmMain.IncDateByWorkdays(ProductionStartDate, -LoginContext.MLLimitingWorkdays);

    if (ContextDate < AllowMakeLimitingDate) then
      raise Exception.CreateFmt(SLimittingNotAllowed,
              [LoginContext.MLLimitingWorkdays, LoginContext.DateToStr(AllowMakeLimitingDate)]);

    if (ContextDate > ProductionStartDate) then
      begin
        if not LoginContext.AllowLateMLLimiting then
          raise Exception.Create(SCantMakeLateLimiting);

        if (MessageDlgEx(SLateLimiting, mtWarning, mbOKCancel, 0) <> mrOk) then
          Abort;
      end;

    if (VarToInt(cdsGridData_MAX_MLL_CHANGE_STATUS.Value) > 0) then
      raise Exception.Create(SCantMakeLimitingWithChanges);

    CheckData(False, True);

    CheckEditMode(cdsData);

    cdsDataLIMITING_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
    cdsDataLIMITING_DATE.AsDateTime:= ContextDate;
    cdsDataLIMITING_TIME.AsDateTime:= ContextTime;
  finally
    FMakingLimiting:= False;
  end;  { try }
end;

procedure TfmXModel.actMakeLimitingUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    cdsData.Active and
    cdsDataLIMITING_EMPLOYEE_CODE.IsNull and
    (EditMode <> emReadOnly);
end;

function TfmXModel.AddSpecification(ASpecProductCode: Integer;
  AddRoot: Boolean; SpecModelVariantNo: Integer): Boolean;
var
  ParentNoStack: array[1..MaxNoPos+1, 1..MaxNoPos+1] of Integer;
  ParentNoStackCount: Integer;
  SaveCursor: TCursor;
  SaveCursor2: TCursor;
  i: Integer;
  ParentLastStage: Integer;
  StageNo: Integer;
  InactiveProducts: string;
  OperationVariant0DocBranchCode: Integer;
  OperationVariant0DocCode: Integer;

  procedure Push;
  var
    i: Integer;
  begin
    Inc(ParentNoStackCount);

    for i:= 1 to MaxNoPos do
      ParentNoStack[ParentNoStackCount, i]:=
        cdsInsertSpecLines.FieldByName(Format('NO_%d', [i])).AsInteger;
  end;

  procedure Pop;
  begin
    Dec(ParentNoStackCount);
  end;

  function ParentSameAsPeek: Boolean;
  var
    i: Integer;
  begin
    Result:= False;

    if (ParentNoStackCount > 0) then
      for i:= 1 to MaxNoPos do
        if (ParentNoStack[ParentNoStackCount, i] <>
            cdsInsertSpecLines.FieldByName(Format('PARENT_NO_%d', [i])).AsInteger) then
          Exit;

    Result:= True;
  end;

  procedure CheckInactiveProducts;
  begin
    with cdsInsertSpecLines do
      begin
        InactiveProducts:= '';
        while not Eof do
          begin
            if cdsInsertSpecLinesPRODUCT_IS_INACTIVE.AsBoolean then
              InactiveProducts:=
                InactiveProducts +
                Format('%-20s %s' + SLineBreak,
                  [cdsInsertSpecLinesPRODUCT_NO.AsString, cdsInsertSpecLinesPRODUCT_NAME.AsString]);

            Next;
          end;  { while }

        if (InactiveProducts <> '') then
          begin
            SetLength(InactiveProducts, Length(InactiveProducts) - 2);
            raise Exception.Create(SInactiveProducts +
                    SLineBreak + SLineBreak + InactiveProducts + SMonospaced);
          end;

        First;
      end;  { with }
  end;  { CheckInactiveProducts }

  procedure AddTasks;
  begin
    cdsInsertSpecTasks.Params.ParamByName('SPEC_PRODUCT_CODE').AsFloat:= ASpecProductCode;
    cdsInsertSpecTasks.Params.ParamByName('SPEC_MODEL_VARIANT_NO').AsFloat:= SpecModelVariantNo;

    cdsInsertSpecTasks.Open;
    cdsInsertSpecTaskDepts.Open;
    try
      cdsInsertSpecTasks.First;
      while not cdsInsertSpecTasks.EOF do
        begin
          cdsTasks.Append;
          try
            cdsTasksMATERIAL_LIST_TASK_NAME.AsVariant:= cdsInsertSpecTasksSPEC_MODEL_VARIANT_TASK_NAME.AsVariant;
            cdsTasks.Post;

            cdsInsertSpecTaskDepts.First;
            while not cdsInsertSpecTaskDepts.EOF do
              begin
                cdsTaskDepts.Append;
                try
                  cdsTaskDeptsDEPT_CODE.AsVariant:= cdsInsertSpecTaskDeptsDEPT_CODE.AsVariant;
                  cdsTaskDeptsDEPT_NAME.AsVariant:= cdsInsertSpecTaskDeptsDEPT_NAME.AsVariant;
                  cdsTaskDeptsDEPT_IDENTIFIER.AsVariant:= cdsInsertSpecTaskDeptsDEPT_IDENTIFIER.AsVariant;
                  cdsTaskDepts.Post;
                except
                  cdsTaskDepts.Cancel;
                  raise;
                end;   { try }

                cdsInsertSpecTaskDepts.Next;
              end;   { while }
          except
            cdsTasks.Cancel;
            raise;
          end;   { try }

          cdsInsertSpecTasks.Next;
        end;   { while }
    finally
      cdsInsertSpecTaskDepts.Close;
      cdsInsertSpecTasks.Close;
    end;   { try }
  end;  { AddTasks }

  procedure AssignSpecLineFields;
  begin
    if AddRoot or (cdsInsertSpecLinesNO_1.AsInteger > 0) then
      begin
        cdsGridDataDETAIL_CODE.AsVariant:= cdsInsertSpecLinesDETAIL_CODE.AsVariant;
        cdsGridDataDETAIL_NAME.AsVariant:= cdsInsertSpecLinesDETAIL_NAME.AsVariant;
        cdsGridDataDETAIL_NO.AsVariant:= cdsInsertSpecLinesDETAIL_NO.AsVariant;
        cdsGridDataDETAIL_TECH_MEASURE_CODE.AsVariant:= cdsInsertSpecLinesDETAIL_TECH_MEASURE_CODE.AsVariant;
        cdsGridDataDETAIL_HAS_DOCUMENTATION.AsVariant:= cdsInsertSpecLinesDETAIL_HAS_DOCUMENTATION.AsVariant;
        cdsGridDataDETAIL_IS_INACTIVE.AsVariant:= cdsInsertSpecLinesDETAIL_IS_INACTIVE.AsVariant;
        cdsGridDataDETAIL_PARENT_CODE.AsVariant:= cdsInsertSpecLinesDETAIL_PARENT_CODE.AsVariant;
        cdsGridDataDETAIL_IS_SELF_APPROVED.AsVariant:= cdsInsertSpecLinesDETAIL_IS_SELF_APPROVED.AsVariant;
        cdsGridDataDETAIL_TECH_QUANTITY.AsVariant:= cdsInsertSpecLinesDETAIL_TECH_QUANTITY.AsVariant;
      end;

    cdsGridDataPRODUCT_CODE.AsVariant:= cdsInsertSpecLinesPRODUCT_CODE.AsVariant;
    cdsGridDataPRODUCT_NAME.AsVariant:= cdsInsertSpecLinesPRODUCT_NAME.AsVariant;
    cdsGridDataPRODUCT_NO.AsVariant:= cdsInsertSpecLinesPRODUCT_NO.AsVariant;
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_CODE.AsVariant:= cdsInsertSpecLinesPRODUCT_ACCOUNT_MEASURE_CODE.AsVariant;
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF.AsVariant:= cdsInsertSpecLinesPRODUCT_ACCOUNT_MEASURE_COEF.AsVariant;
    cdsGridDataPRODUCT_TECH_MEASURE_CODE.AsVariant:= cdsInsertSpecLinesPRODUCT_TECH_MEASURE_CODE.AsVariant;
    cdsGridDataPRODUCT_TECH_MEASURE_COEF.AsVariant:= cdsInsertSpecLinesPRODUCT_TECH_MEASURE_COEF.AsVariant;
    cdsGridDataPRODUCT_SECONDARY_SINGLE_PRICE.AsVariant:= cdsInsertSpecLinesPRODUCT_SECONDARY_SINGLE_PRICE.AsVariant;
    cdsGridDataPRODUCT_SINGLE_PRICE.AsVariant:= cdsInsertSpecLinesPRODUCT_SINGLE_PRICE.AsVariant;
    cdsGridDataPRODUCT_INVESTMENT_VALUE_2.AsVariant:= cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_2.AsVariant;
    cdsGridDataPRODUCT_INVESTMENT_VALUE_3.AsVariant:= cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_3.AsVariant;
    cdsGridDataPRODUCT_INVESTMENT_VALUE_4.AsVariant:= cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_4.AsVariant;
    cdsGridDataPRODUCT_INVESTMENT_VALUE_5.AsVariant:= cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_5.AsVariant;
    cdsGridDataPRODUCT_PRECISION_LEVEL_CODE.AsVariant:= cdsInsertSpecLinesPRODUCT_PRECISION_LEVEL_CODE.AsVariant;
    cdsGridDataPRODUCT_HAS_DOCUMENTATION.AsVariant:= cdsInsertSpecLinesPRODUCT_HAS_DOCUMENTATION.AsVariant;
    cdsGridDataPRODUCT_IS_INACTIVE.AsVariant:= cdsInsertSpecLinesPRODUCT_IS_INACTIVE.AsVariant;
    cdsGridDataPRODUCT_TECH_QUANTITY.AsVariant:= cdsInsertSpecLinesPRODUCT_TECH_QUANTITY.AsVariant;
    cdsGridDataNOTES.AsVariant:= cdsInsertSpecLinesNOTES.AsVariant;
    cdsGridDataCONSTRUCTION_NOTES.AsVariant:= cdsInsertSpecLinesCONSTRUCTION_NOTES.AsVariant;
    cdsGridDataIS_FOR_SINGLE_USE.AsVariant:= cdsInsertSpecLinesIS_FOR_SINGLE_USE.AsVariant;
    cdsGridDataAPPROVE_CYCLE_NO.AsVariant:= cdsInsertSpecLinesAPPROVE_CYCLE_NO.AsVariant;
    cdsGridDataIS_COMPLETE.AsVariant:= cdsInsertSpecLinesIS_COMPLETE.AsVariant;
  end;  { AssignSpecLineFields }

  procedure AssignStageFields;
  begin
    cdsStagesDEPT_CODE.AsVariant:= cdsInsertSpecStagesDEPT_CODE.AsVariant;
    cdsStagesDEPT_NAME.AsVariant:= cdsInsertSpecStagesDEPT_NAME.AsVariant;
    cdsStagesDEPT_IDENTIFIER.AsVariant:= cdsInsertSpecStagesDEPT_IDENTIFIER.AsVariant;
    cdsStagesDEPT_IS_STORE.AsVariant:= cdsInsertSpecStagesDEPT_IS_STORE.AsVariant;
    cdsStagesDEPT_BEGIN_DATE.AsVariant:= cdsInsertSpecStagesDEPT_BEGIN_DATE.AsVariant;
    cdsStagesDEPT_END_DATE.AsVariant:= cdsInsertSpecStagesDEPT_END_DATE.AsVariant;
    cdsStagesTREATMENT_WORKDAYS.AsVariant:= cdsInsertSpecStagesTREATMENT_WORKDAYS.AsVariant;
    cdsStagesTOTAL_TREATMENT_WORKDAYS.AsVariant:= cdsInsertSpecStagesTOTAL_TREATMENT_WORKDAYS.AsVariant;
    cdsStagesOUTGOING_WORKDAYS.AsVariant:= cdsInsertSpecStagesOUTGOING_WORKDAYS.AsVariant;
    cdsStagesIS_AUTO_MOVEMENT.AsVariant:= cdsInsertSpecStagesIS_AUTO_MOVEMENT.AsVariant;
    cdsStagesEXTERNAL_WORK_PRICE.AsVariant:= cdsInsertSpecStagesEXTERNAL_WORK_PRICE.AsVariant;
    cdsStagesOPERATION_COUNT.AsVariant:= cdsInsertSpecStagesOPERATION_COUNT.AsVariant;
    cdsStagesML_MODEL_STAGE_NO.AsInteger:= StageNo;

    cdsStagesHAS_DOCUMENTATION.AsVariant:= cdsInsertSpecStagesHAS_DOCUMENTATION.AsVariant;
    cdsStagesDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant:= cdsInsertSpecStagesDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant;
    cdsStagesDOC_IS_COMPLETE.AsVariant:= cdsInsertSpecStagesDOC_IS_COMPLETE.AsVariant;
    cdsStagesUNAPPROVED_ACTIVE_DI_COUNT.AsVariant:= cdsInsertSpecStagesUNAPPROVED_ACTIVE_DI_COUNT.AsVariant;

    dmDocClient.CreateDocLike(
      cdsInsertSpecStagesDOC_BRANCH_CODE.AsInteger,
      cdsInsertSpecStagesDOC_CODE.AsInteger,
      True,
      cdsStagesDOC_BRANCH_CODE,
      cdsStagesDOC_CODE);

    if cdsStagesDOC_CODE.IsNull then
      begin
        cdsStagesHAS_DOCUMENTATION.AsBoolean:= False;
        cdsStagesDOC_EMPTINESS_REQUIREMENT_CODE.Clear;
        cdsStagesDOC_IS_COMPLETE.AsBoolean:= False;
        cdsStagesUNAPPROVED_ACTIVE_DI_COUNT.Clear;
      end;
  end;  { AssignStageFields }

  procedure AssignOperationFields;
  begin
    cdsOperationsMLMS_OPERATION_NO.AsVariant:= cdsInsertSpecOperationsSMVS_OPERATION_NO.AsVariant;
    cdsOperationsMLMS_OPERATION_VARIANT_NO.AsVariant:= cdsInsertSpecOperationsSMVS_OPERATION_VARIANT_NO.AsVariant;
    cdsOperationsOPERATION_TYPE_CODE.AsVariant:= cdsInsertSpecOperationsOPERATION_TYPE_CODE.AsVariant;
    cdsOperationsIS_NORMAL_OPERATION.AsVariant:= cdsInsertSpecOperationsIS_NORMAL_OPERATION.AsVariant;
    cdsOperationsDEPT_CODE.AsVariant:= cdsInsertSpecOperationsDEPT_CODE.AsVariant;
    cdsOperationsDEPT_NAME.AsVariant:= cdsInsertSpecOperationsDEPT_NAME.AsVariant;
    cdsOperationsDEPT_IDENTIFIER.AsVariant:= cdsInsertSpecOperationsDEPT_IDENTIFIER.AsVariant;
    cdsOperationsDEPT_PRODUCT_CODE.AsVariant:= cdsInsertSpecOperationsDEPT_PRODUCT_CODE.AsVariant;
    cdsOperationsDEPT_PARENT_CODE.AsVariant:= cdsInsertSpecOperationsDEPT_PARENT_CODE.AsVariant;
    cdsOperationsDEPT_BEGIN_DATE.AsVariant:= cdsInsertSpecOperationsDEPT_BEGIN_DATE.AsVariant;
    cdsOperationsDEPT_END_DATE.AsVariant:= cdsInsertSpecOperationsDEPT_END_DATE.AsVariant;
    cdsOperationsSETUP_PROFESSION_CODE.AsVariant:= cdsInsertSpecOperationsSETUP_PROFESSION_CODE.AsVariant;
    cdsOperationsSETUP_EFFORT_COEF.AsVariant:= cdsInsertSpecOperationsSETUP_EFFORT_COEF.AsVariant;
    cdsOperationsSETUP_HOUR_TECH_QUANTITY.AsVariant:= cdsInsertSpecOperationsSETUP_HOUR_TECH_QUANTITY.AsVariant;
    cdsOperationsSETUP_COUNT.AsVariant:= cdsInsertSpecOperationsSETUP_COUNT.AsVariant;
    cdsOperationsPROFESSION_CODE.AsVariant:= cdsInsertSpecOperationsPROFESSION_CODE.AsVariant;
    cdsOperationsEFFORT_COEF.AsVariant:= cdsInsertSpecOperationsEFFORT_COEF.AsVariant;
    cdsOperationsHOUR_TECH_QUANTITY.AsVariant:= cdsInsertSpecOperationsHOUR_TECH_QUANTITY.AsVariant;
    cdsOperationsPROGRAM_TOOL_PRODUCT_CODE.AsVariant:= cdsInsertSpecOperationsPROGRAM_TOOL_PRODUCT_CODE.AsVariant;
    cdsOperationsPROGRAM_TOOL_PRODUCT_NAME.AsVariant:= cdsInsertSpecOperationsPROGRAM_TOOL_PRODUCT_NAME.AsVariant;
    cdsOperationsPROGRAM_TOOL_PRODUCT_NO.AsVariant:= cdsInsertSpecOperationsPROGRAM_TOOL_PRODUCT_NO.AsVariant;
    cdsOperationsSPECIFIC_TOOL_PRODUCT_CODE.AsVariant:= cdsInsertSpecOperationsSPECIFIC_TOOL_PRODUCT_CODE.AsVariant;
    cdsOperationsSPECIFIC_TOOL_PRODUCT_NAME.AsVariant:= cdsInsertSpecOperationsSPECIFIC_TOOL_PRODUCT_NAME.AsVariant;
    cdsOperationsSPECIFIC_TOOL_PRODUCT_NO.AsVariant:= cdsInsertSpecOperationsSPECIFIC_TOOL_PRODUCT_NO.AsVariant;
    cdsOperationsTYPICAL_TOOL_PRODUCT_CODE.AsVariant:= cdsInsertSpecOperationsTYPICAL_TOOL_PRODUCT_CODE.AsVariant;
    cdsOperationsTYPICAL_TOOL_PRODUCT_NAME.AsVariant:= cdsInsertSpecOperationsTYPICAL_TOOL_PRODUCT_NAME.AsVariant;
    cdsOperationsTYPICAL_TOOL_PRODUCT_NO.AsVariant:= cdsInsertSpecOperationsTYPICAL_TOOL_PRODUCT_NO.AsVariant;
    cdsOperationsIS_ACTIVE.AsBoolean:= (cdsInsertSpecOperationsSMVS_OPERATION_VARIANT_NO.AsInteger = 0);
    cdsOperationsNOTES.AsVariant:= cdsInsertSpecOperationsNOTES.AsVariant;
    cdsOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY.AsVariant:= cdsInsertSpecOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY.AsVariant;
    cdsOperationsTYPICAL_TOOL_DETAIL_TECH_QTY.AsVariant:= cdsInsertSpecOperationsTYPICAL_TOOL_DETAIL_TECH_QTY.AsVariant;
    cdsOperationsPROGRAM_TOOL_REQUIREMENT_CODE.AsVariant:= cdsInsertSpecOperationsPROGRAM_TOOL_REQUIREMENT_CODE.AsVariant;
    cdsOperationsSPECIFIC_TOOL_REQUIREMENT_CODE.AsVariant:= cdsInsertSpecOperationsSPECIFIC_TOOL_REQUIREMENT_CODE.AsVariant;
    cdsOperationsTYPICAL_TOOL_REQUIREMENT_CODE.AsVariant:= cdsInsertSpecOperationsTYPICAL_TOOL_REQUIREMENT_CODE.AsVariant;
    cdsOperationsPROGRAM_TOOL_IS_COMPLETE.AsVariant:= cdsInsertSpecOperationsPROGRAM_TOOL_IS_COMPLETE.AsVariant;
    cdsOperationsSPECIFIC_TOOL_IS_COMPLETE.AsVariant:= cdsInsertSpecOperationsSPECIFIC_TOOL_IS_COMPLETE.AsVariant;
    cdsOperationsTYPICAL_TOOL_IS_COMPLETE.AsVariant:= cdsInsertSpecOperationsTYPICAL_TOOL_IS_COMPLETE.AsVariant;
    cdsOperationsTREATMENT_BEGIN_WORKDAY_NO.AsVariant:= cdsInsertSpecOperationsTREATMENT_BEGIN_WORKDAY_NO.AsVariant;
    cdsOperationsTREATMENT_WORKDAYS.AsVariant:= cdsInsertSpecOperationsTREATMENT_WORKDAYS.AsVariant;
    cdsOperationsHAS_SPECIAL_CONTROL.AsVariant:= cdsInsertSpecOperationsHAS_SPECIAL_CONTROL.AsVariant;
    cdsOperationsIS_AUTO_MOVEMENT.AsVariant:= cdsInsertSpecOperationsIS_AUTO_MOVEMENT.AsVariant;
    cdsOperationsIS_AUTO_SETUP.AsVariant:= cdsInsertSpecOperationsIS_AUTO_SETUP.AsVariant;
    cdsOperationsD_HOUR_PRICE.AsVariant:= cdsInsertSpecOperationsD_HOUR_PRICE.AsVariant;
    cdsOperationsD_MAINTAINANCE_HOUR_PRICE.AsVariant:= cdsInsertSpecOperationsD_MAINTAINANCE_HOUR_PRICE.AsVariant;
    cdsOperationsD_PARALLEL_OPERATOR_COUNT.AsVariant:= cdsInsertSpecOperationsD_PARALLEL_PROCESS_COUNT.AsVariant;
    cdsOperationsD_PARALLEL_PROCESS_COUNT.AsVariant:= cdsInsertSpecOperationsD_PARALLEL_PROCESS_COUNT.AsVariant;

    cdsOperationsHAS_DOCUMENTATION.AsVariant:= cdsInsertSpecOperationsHAS_DOCUMENTATION.AsVariant;
    cdsOperationsDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant:= cdsInsertSpecOperationsDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant;
    cdsOperationsDOC_IS_COMPLETE.AsVariant:= cdsInsertSpecOperationsDOC_IS_COMPLETE.AsVariant;
    cdsOperationsUNAPPROVED_ACTIVE_DI_COUNT.AsVariant:= cdsInsertSpecOperationsUNAPPROVED_ACTIVE_DI_COUNT.AsVariant;

    if (cdsOperationsMLMS_OPERATION_VARIANT_NO.AsInteger = 0) then
      begin
        dmDocClient.CreateDocLike(
          cdsInsertSpecOperationsDOC_BRANCH_CODE.AsInteger,
          cdsInsertSpecOperationsDOC_CODE.AsInteger,
          True,
          cdsOperationsDOC_BRANCH_CODE,
          cdsOperationsDOC_CODE);

        if cdsOperationsDOC_CODE.IsNull then
          begin
            cdsOperationsDOC_CODE.Clear;
            cdsOperationsHAS_DOCUMENTATION.AsBoolean:= False;
            cdsOperationsDOC_EMPTINESS_REQUIREMENT_CODE.Clear;
            cdsOperationsDOC_IS_COMPLETE.AsBoolean:= False;
            cdsOperationsUNAPPROVED_ACTIVE_DI_COUNT.Clear;
          end;

        OperationVariant0DocBranchCode:= cdsOperationsDOC_BRANCH_CODE.AsInteger;
        OperationVariant0DocCode:= cdsOperationsDOC_CODE.AsInteger;
      end
    else  { if }
      begin
        cdsOperationsDOC_BRANCH_CODE.AsInteger:= OperationVariant0DocBranchCode;
        cdsOperationsDOC_CODE.AsInteger:= OperationVariant0DocCode;
      end;  { if }
  end;  { AssignOperationFields }

  procedure AddLastStage;
  begin
    cdsStages.Append;
    try
      cdsStagesDEPT_CODE.AsVariant:=
        IntToVar(
          dmMain.SvrProductsTree.GetProductDefaultStore(
            cdsInsertSpecLinesDETAIL_CODE.AsInteger,
            cdsInsertSpecStagesDEPT_CODE.AsInteger
          )
        );

      if cdsStagesDEPT_CODE.IsNull then
        begin
          SaveCursor2:= Screen.Cursor;
          Screen.Cursor:= crDefault;
          try
            MessageDlgFmtEx(SNoDefaultStore,
              [cdsGridDataDETAIL_NAME.AsString, cdsGridDataDETAIL_NO.AsFloat],
              mtWarning, [mbOK], 0);
          finally
            Screen.Cursor:= SaveCursor2;
          end;  { cursor try }
        end;

      DoDeptFieldChanged(cdsStagesDEPT_CODE,
        cdsStagesDEPT_NAME,
        cdsStagesDEPT_IDENTIFIER,
        cdsStagesDEPT_IS_STORE,
        nil, nil, nil,
        cdsStagesDEPT_BEGIN_DATE, cdsStagesDEPT_END_DATE);

      cdsStagesTREATMENT_WORKDAYS.AsInteger:= 1;
      cdsStagesOUTGOING_WORKDAYS.AsInteger:= 1;
      cdsStagesIS_AUTO_MOVEMENT.AsBoolean:= False;
      cdsStagesML_MODEL_STAGE_NO.AsInteger:= StageNo;
      cdsStagesHAS_DOCUMENTATION.AsBoolean:= False;
      cdsStagesDOC_EMPTINESS_REQUIREMENT_CODE.Clear;
      cdsStagesDOC_IS_COMPLETE.AsBoolean:= False;
      cdsStagesUNAPPROVED_ACTIVE_DI_COUNT.Clear;

      cdsStages.Post;
    except
      cdsStages.Cancel;
      raise;
    end;   { try }
  end;  { AddLastStage }

  procedure UpdateLastAddedStage;
  var
    b: TBookmark;
  begin
    b:= cdsGridData.Bookmark;
    try
      LocateParent;
      cdsStages.First;
      ParentLastStage:= cdsStagesDEPT_CODE.AsInteger;
    finally
      cdsGridData.Bookmark:= b;
    end;   { try }

    if (ParentLastStage > 0) then
      begin
        cdsStages.Last;

        cdsStages.Edit;
        try
          cdsStagesDEPT_CODE.AsInteger:= ParentLastStage;

          cdsStagesOUTGOING_WORKDAYS.AsInteger:= 0;
          cdsStagesTREATMENT_WORKDAYS.AsInteger:= 0;
          cdsStagesIS_AUTO_MOVEMENT.AsBoolean:= False;

          cdsStages.Post;
        except
          cdsStages.Cancel;
          raise;
        end;   { try }

        cdsStages.First;
      end;   { if }
  end;  { UpdateLastAddedStage }

var
  SaveOperationsAutoCalcFields: Boolean;
begin
  Result:= False;

  if (SpecModelVariantNo = 0) then
    SpecModelVariantNo:= TfmXModelInsertSpecModelVariantNo.GetSpecModelVariantNo(dmDocClient, ASpecProductCode, cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime);

  if (SpecModelVariantNo > 0) then
    with cdsGridData do
      begin
        SaveCursor:= Screen.Cursor;
        Screen.Cursor:= crHourGlass;
        try
          FAddingSpecification:= True;
          try
            DisableControls;
            cdsStages.DisableControls;
            cdsOperations.DisableControls;
            cdsTasks.DisableControls;
            cdsTaskDepts.DisableControls;
            try
              SaveOperationsAutoCalcFields:= cdsOperations.AutoCalcFields;
              cdsOperations.AutoCalcFields:= False;
              try
                dmDocClient.ReserveDocCodes(
                  dmDocClient.LoadSpecDocs(ASpecProductCode, SpecModelVariantNo, True, cdsDataIS_OPERATIONS_MODEL.AsBoolean));

                if (not AddRoot) then
                  AddTasks;

                cdsInsertSpecLines.Params.ParamByName('SPEC_PRODUCT_CODE').AsFloat:= ASpecProductCode;
                cdsInsertSpecLines.Params.ParamByName('SPEC_MODEL_VARIANT_NO').AsFloat:= SpecModelVariantNo;

                cdsInsertSpecLines.Open;
                try
                  CheckInactiveProducts;

                  cdsInsertSpecStages.Open;
                  try
                    if not AddRoot then
                      begin
                        CheckEditMode(cdsData);

                        cdsDataMAIN_DEPT_CODE.AsVariant:= cdsInsertSpecLinesMAIN_DEPT_CODE.AsVariant;
                        cdsDataSPEC_VERSION_NO.AsVariant:= cdsInsertSpecLinesSPEC_VERSION_NO.AsVariant;
                        cdsDataSPEC_MODEL_VARIANT_NO.AsVariant:= cdsInsertSpecLinesSPEC_MODEL_VARIANT_NO.AsVariant;
                      end;

                    if FInsertingSpecification then
                      LocateParent;

                    ParentNoStackCount:= 0;

                    while not cdsInsertSpecLines.EOF do
                      begin
                        while not ParentSameAsPeek do
                          begin
                            Pop;
                            LocateParent;
                          end;   { while }

                        // add the child
                        if ((not AddRoot) and (cdsInsertSpecLinesNO_1.AsInteger = 0)) then
                          Edit
                        else
                          begin
                            PrepareNewLineData(almAddChild);
                            Append;
                          end;
                        try
                          AssignSpecLineFields;
                          Post;
                        except
                          Cancel;
                          raise;
                        end;   { try }

                        if AddRoot or (cdsInsertSpecLinesNO_1.AsInteger > 0) then
                          IncChildCount(LastNoPos-1);
                        // end of adding the child

                        // copy stages
                        if cdsInsertSpecLinesPRODUCT_CODE.IsNull then
                          StageNo:= 1
                        else
                          StageNo:= 0;

                        if (cdsGridDataNO_1.AsInteger > 0) and
                           cdsInsertSpecLinesDETAIL_IS_PRODUCTION_PRODUCT.AsBoolean then
                          begin
                            cdsInsertSpecStages.Last;
                            AddLastStage;

                            Inc(StageNo);
                          end;

                        cdsInsertSpecStages.First;
                        while not cdsInsertSpecStages.EOF do
                          begin
                            if ( (cdsGridDataNO_1.AsInteger = 0) and
                                 (cdsInsertSpecStagesSMVS_TYPE_CODE.AsInteger <> smvstTrunc) ) or
                               ( (cdsGridDataNO_1.AsInteger > 0) and
                                 ( ( (cdsInsertSpecLinesDETAIL_IS_PRODUCTION_PRODUCT.AsBoolean) and
                                     ( (cdsInsertSpecStagesSMVS_TYPE_CODE.AsInteger = smvstTrunc) or
                                       (cdsInsertSpecStages.RecNo = cdsInsertSpecStages.RecordCount) ) ) or
                                   ( (not cdsInsertSpecLinesDETAIL_IS_PRODUCTION_PRODUCT.AsBoolean) and
                                     (cdsInsertSpecStagesSMVS_TYPE_CODE.AsInteger = smvstNormal) ) ) ) then
                              begin
                                cdsStages.Append;
                                try
                                  AssignStageFields;
                                  cdsStages.Post;
                                except
                                  cdsStages.Cancel;
                                  raise;
                                end;   { try }

                                // copy operations
                                if cdsDataIS_OPERATIONS_MODEL.AsBoolean and
                                   ( (cdsGridDataNO_1.AsInteger = 0) or
                                     (cdsStagesOUTGOING_WORKDAYS.AsInteger > 0) ) then
                                  begin
                                    OperationVariant0DocBranchCode:= 0;
                                    OperationVariant0DocCode:= 0;

                                    cdsInsertSpecOperations.First;
                                    while not cdsInsertSpecOperations.EOF do
                                      begin
                                        cdsOperations.Append;
                                        try
                                          AssignOperationFields;
                                          cdsOperations.Post;
                                        except
                                          cdsOperations.Cancel;
                                          raise;
                                        end;   { try }

                                        cdsInsertSpecOperations.Next;
                                      end;   { while }
                                  end;

                                Inc(StageNo);
                              end;   { if }

                            cdsInsertSpecStages.Next;
                          end;   { while }

                        Push;

                        cdsInsertSpecLines.Next;
                      end;   { while }

                    for i:= 2 to ParentNoStackCount do
                      LocateParent;

                    if (cdsGridDataNO_1.AsInteger > 0) then
                      begin
                        UpdateParentAfterAdd;
                        UpdateLastAddedStage;
                      end;
                  finally
                    cdsInsertSpecStages.Close;
                  end;   { try }
                finally
                  cdsInsertSpecLines.Close;
                end;   { try }
              finally
                cdsOperations.AutoCalcFields:= SaveOperationsAutoCalcFields;
              end;  { try }
            finally
              EnableControls;
              cdsStages.EnableControls;
              cdsOperations.EnableControls;
              cdsTasks.EnableControls;
              cdsTaskDepts.EnableControls;
            end;   { try }
          finally
            FAddingSpecification:= False;
          end;   { try }

          if not AddRoot then
            begin
              CalcTotalTreatmentWorkdays(False, False);
              CheckEditMode(cdsData);
              cdsDataINITIAL_TREATMENT_WORKDAYS.AsInteger:= FMaxTotalTreatmentWorkdays;
            end;

          UpdateFilteredGridData;
        finally
          Screen.Cursor:= SaveCursor;
        end;   { try }

        Result:= True;
      end;   { with }
end;

procedure TfmXModel.ImportResultProductSpecification;

  function SpecUsePrompt: Boolean;
  begin
    Result:=
      (MessageDlgEx(SImportResultProductSpecification, mtConfirmation, [mbYes, mbNo], 0) = mrYes);
  end;

var
  Authorized: Boolean;
  AuthorEmployeeCode: Integer;
  SpecModelVariantNo: Integer;
  IV: TInvestedValue;
begin
  Assert(cdsData.RecordCount = 1);

  actForm.Update;   // ne se updateva vednaga sled kato se pokaje i se vijdat niakoi neshteca
  frMLBoundProcessObject.actFrame.Update;

  if FFirstOnActivateTriggered and
     (not cdsDataRESULT_PRODUCT_CODE.IsNull) then
    begin
      if (BndProcessObjectClassCode = pocSale) then
        begin
          SpecModelVariantNo:=
            dmMain.SvrXModels.GetNeededSpecModelVariantNo(
              cdsDataRESULT_PRODUCT_CODE.AsInteger,
              cdsDataMAIN_DEPT_CODE.AsInteger,
              cdsDataTECH_QUANTITY.AsFloat,
              cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime);

          if (SpecModelVariantNo <> 0) and
             SpecUsePrompt then
            begin
              Application.ProcessMessages;

              if (dmMain.SvrSpecifications.GetSpecType(cdsDataRESULT_PRODUCT_CODE.AsInteger) = stOffer) then
                MessageDlgEx(SCantImportResultProductOfferSpecification, mtWarning, [mbOK], 0)
              else
                begin
                  if (SpecModelVariantNo = -1) then
                    SpecModelVariantNo:=
                      TfmXModelInsertSpecModelVariantNo.GetSpecModelVariantNo(
                        dmDocClient,
                        cdsDataRESULT_PRODUCT_CODE.AsInteger,
                        cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime,
                        cdsDataMAIN_DEPT_CODE.AsInteger,
                        cdsDataTECH_QUANTITY.AsFloat);

                  if (SpecModelVariantNo > 0) then
                    begin
                      AddSpecification(cdsDataRESULT_PRODUCT_CODE.AsInteger, False, SpecModelVariantNo);

                      cdsGridData.First;
                      cdsStages.Last;
                      SetEnterResultStoreWorkdays(cdsStagesTREATMENT_WORKDAYS.AsInteger);
                      cdsStages.First;
                    end;
                end;
            end
        end
      else   { if }
        begin
          if dmMain.SvrSpecifications.SpecificationExists(cdsDataRESULT_PRODUCT_CODE.AsInteger, Authorized, AuthorEmployeeCode) and
             Authorized and SpecUsePrompt then
            AddSpecification(cdsDataRESULT_PRODUCT_CODE.AsInteger, False);
        end;   { if }

      IV.Value:= VarToFloat(cdsGridData_PRODUCTS_PRICE.AsVariant);
      IV.IsIncomplete:=
        ( VarToInt(cdsGridData_PRODUCT_SINGLE_PRICE_COUNT.AsVariant) <>
          VarToInt(cdsGridData_PRODUCT_COUNT.AsVariant) );

      ShowTotalInvestedValue(IV, LoginContext.BaseCurrencyAbbrev);
    end;
end;

procedure TfmXModel.FormActivate(Sender: TObject);
begin
  inherited;

  if FFirstOnActivateTriggered then Exit;

  FFirstOnActivateTriggered:= True;

  // workaround na otvariane na posochen red (ne se ustanoviava na negovite etapi)
  if (cdsFilteredGridData.RecNo > 1) then
    begin
      cdsFilteredGridData.Prior;
      cdsFilteredGridData.Next;
    end;

  if (EditMode = emInsert) then
    begin
      if (LoginContext.ProductionLevelCode = plStageToOperation) and
         (MessageDlgBtn(SConfirmOperationsModel, mtConfirmation, [SStagesModel, SOperationsModel], 0) = 1) then
        cdsDataIS_OPERATIONS_MODEL.AsBoolean:= True
      else
        cdsDataMODEL_OPERATIONS_STATUS_CODE.AsInteger:= mosStage;
    end;

  if (EditMode = emInsert) and (BndProcessObjectClassCode = pocSale) then
    ImportResultProductSpecification;
end;

function TfmXModel.MovementSelected: Boolean;
begin
  Result:=
    SelectModelCell(True) and
    (cdsStagesML_MODEL_STAGE_NO.AsInteger > 0) and
    (cdsStages.RecNo < cdsStages.RecordCount);
end;

procedure TfmXModel.cdsDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  if FSelectMovement or FShowInvestedValues then
    with cdsData.Params do
      begin
        ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= FSelectFromMLBranchCode;
        ParamByName('ML_OBJECT_CODE').AsInteger:= FSelectFromMLCode;
      end;   { with }

  if (EditMode = emInsert) then
    with cdsData.Params do
      begin
        ParamByName('ML_OBJECT_BRANCH_CODE').Clear;
        ParamByName('ML_OBJECT_CODE').Clear;
      end;   { with }
end;

function TfmXModel.GetStageDeptColumnWidth: Integer;
begin
  Result:= StageDeptColumnWidth;
end;

function TfmXModel.GetPrintStageDeptColumnWidth: Integer;
begin
  Result:= PrintStageDeptColumnWidth;
end;

class function TfmXModel.MakeChanges(AdmDocClient: TdmDocClient; ADataSet: TDataSet): Boolean;
begin
  Result:= ShowForm(AdmDocClient, ADataSet, emReadOnly, False, True);
end;

procedure TfmXModel.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsDataCHANGE_TIME.AsDateTime:= ContextNow;
end;

procedure TfmXModel.cdsDataENTER_RESULT_STORE_BEGIN_DATEChange(
  Sender: TField);
begin
  inherited;

  if (not FCorrectingDates) then
    begin
      FCorrectingDates:= True;
      try
        if cdsDataENTER_RESULT_STORE_END_DATE.IsNull or
           (cdsDataENTER_RESULT_STORE_BEGIN_DATE.AsDateTime >=
            cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime) then
          cdsDataENTER_RESULT_STORE_END_DATE.AsVariant:= cdsDataENTER_RESULT_STORE_BEGIN_DATE.AsVariant;
      finally
        FCorrectingDates:= False;
      end;   { try }
    end;   { if }

  ChangeAfterModelGeneration:= True;
end;

procedure TfmXModel.cdsDataENTER_RESULT_STORE_END_DATEChange(
  Sender: TField);
begin
  inherited;

  if (not FCorrectingDates) then
    begin
      FCorrectingDates:= True;
      try
        if cdsDataENTER_RESULT_STORE_BEGIN_DATE.IsNull or
           (cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime <=
            cdsDataENTER_RESULT_STORE_BEGIN_DATE.AsDateTime) then
          cdsDataENTER_RESULT_STORE_BEGIN_DATE.AsVariant:= cdsDataENTER_RESULT_STORE_END_DATE.AsVariant;
      finally
        FCorrectingDates:= False;
      end;   { try }
    end;   { if }

  ChangeAfterModelGeneration:= True;
end;

procedure TfmXModel.SetPrintModelParams(RecursivePrint, TaskModelPrint: Boolean;
  ARealNoAsText, ADetailName, ADetailNo: string);
var
  NewPGD: TPrintDBGridEh;
  CompanyProductNames: string;
begin
  inherited;

  if (BndProcessObjectClassCode = pocSale) then
    begin
      if (frMLBoundProcessObject.cdsDataSALE_ORDER_TYPE_CODE.AsInteger = sotProductionOrder) then
        NewPGD:= pgdProductionOrderModel
      else
        NewPGD:= pgdSaleModel
    end
  else   { if }
    NewPGD:= pgdSaleGroupModel;

  pgdModel.BeforeGridText:= NewPGD.BeforeGridText;

  if InvestedValueVisible then
    pgdModel.BeforeGridText:= pgdInvestedValues.BeforeGridText;

  if RecursivePrint then
    AppendRichEditStrings(pgdModel.BeforeGridText, pgdModelRecursive.BeforeGridText);

  if TaskModelPrint then
    AppendRichEditStrings(pgdModel.BeforeGridText, pgdModelTask.BeforeGridText);

  CompanyProductNames:= frMLBoundProcessObject.cdsDataCOMPANY_PRODUCT_NAMES.DisplayText;
  if (Length(CompanyProductNames) > 40) then
    CompanyProductNames:= LeftStr(CompanyProductNames, 40) + '...';

  pgdModel.SetSubstitutes([
    'S_B_NO', frMLBoundProcessObject.cdsDataSALE_BRANCH_NO.DisplayText,
    'S_T_A', frMLBoundProcessObject.cdsDataSALE_TYPE_ABBREV.DisplayText,
    'SALE_NO', frMLBoundProcessObject.cdsDataSALE_NO.DisplayText,
    'RESULT_PRODUCT_NAME', cdsDataRESULT_PRODUCT_NAME.DisplayText,
    'RESULT_PRODUCT_NO', cdsDataRESULT_PRODUCT_NO.DisplayText,
    'QUANTITY', frMLBoundProcessObject.cdsDataSALE_MANUFACTURE_QUANTITY.DisplayText,
    '_RESULT_PRODUCT_MEASURE_ABBREV', frMLBoundProcessObject.cdsDataSALE_MEASURE_ABBREV.DisplayText,
    'NO_AS_TEXT', ARealNoAsText,
    'DETAIL_NAME', ADetailName,
    'DETAIL_NO', ADetailNo,
    'TASK_NAME', cdsTasksMATERIAL_LIST_TASK_NAME.AsString,
    'INVESTED_VALUE_QTY', edtInvestedValueResultProductTechQuantity.Text,
    '_RESULT_PRODUCT_TECH_MEASURE_ABBREV', cdsData_RESULT_PRODUCT_TECH_MEASURE_ABBREV.DisplayText,
    'INVESTED_VALUE_TYPE', edtInvestedValueType.Text,
    'TOTAL_INVESTED_VALUE', edtTotalInvestedValue.Text,
    'INVESTED_VALUE_CURRENCY_ABBREV', lblTotalInvestedValueCurrencyAbbrev.Caption,
    'STRUCT_COEF', edtStructureCoef.Text,
    'ML_STATE_CODE', frMLBoundProcessObject.cdsDataML_STATE_CODE.DisplayText,
    'P_O_T_A', frMLBoundProcessObject.cdsDataPRODUCTION_ORDER_TYPE_ABBREV.DisplayText,
    'WORK_PRIORITY_NO', frMLBoundProcessObject.cdsDataWORK_PRIORITY_NO.DisplayText,
    'PRIORITY_NO', frMLBoundProcessObject.cdsDataPRIORITY_NO.DisplayText,
    'IS_WASTE_COMPENSATING_ORDER', frMLBoundProcessObject.cdsDataIS_WASTE_COMPENSATING_ORDER.DisplayText,
    'HAS_WASTE_COMPENSATORS', IfThen(frMLBoundProcessObject.cdsDataWASTE_COMPENSATOR_COUNT.AsInteger > 0, SHas, SHasNot),
    'RESULT_STORE_IDENTIFIER', frResultStore.edtTreeNodeNo.Text,
    'STORE_DATE_INTERVAL', frEnterResultStoreDateInterval.edtInterval.Text,
    'COMPANY_PRODUCT_NAMES', CompanyProductNames,
    'MAIN_DEPT_IDENTIFIER', frProductionDept.edtTreeNodeNo.Text,
    'INVESTED_VALUE_MEASURE_ABBREV', txtSpecProductTechMeasureAbbrev.Caption,
    '_OWNER_EMPLOYEE_NAME', cdsData_OWNER_EMPLOYEE_NAME.DisplayText,
    'plblDetailStruct', plblDetailStruct,
    'plblNoAsText', plblNoAsText,
    'plblDetailName', plblDetailName,
    'plblDetailNo', plblDetailNo,
    'plblTaskName', plblTaskName,
    'plblLimitting', plblLimitting,
    'plblXModel', plblXModel,
    'plblSBNo', plblSBNo,
    'plblSTA', plblSTA,
    'plblSaleNo', plblSaleNo,
    'plblMainDeptName', plblMainDeptName,
    'plblFinal', plblFinal,
    'plblBeginDate', plblBeginDate,
    'plblEndDate', plblEndDate,
    'plblResultProductName', plblResultProductName,
    'plblResultProductNo', plblResultProductNo,
    'plblQuantity', plblQuantity,
    'plblClient', plblClient,
    'plblCountry', plblCountry,
    'plblClientRNo', plblClientRNo,
    'plblSaleClientProductSignature', plblSaleClientProductSignature,
    'plblXModelEdit', plblXModelEdit,
    'plblMLStateCode', plblMLStateCode,
    'plblID', plblID,
    'plblPriority', plblPriority, 
    'plblWorkPriority', plblWorkPriority,
    'plblIsWasteCompensatingOrder', plblIsWasteCompensatingOrder,
    'plblHasWasteCompensators', plblHasWasteCompensators,
    'plblResultProduct', plblResultProduct,
    'plblStructCoef', plblStructCoef,
    'plblWorkQuantity', plblWorkQuantity, 
    'plblResultStore', plblResultStore,
    'plblStoreDateInterval', plblStoreDateInterval,
    'plblCompanyProductNames', plblCompanyProductNames,
    'plblMainDept', plblMainDept,
    'plblOwnerEmployeeName', plblOwnerEmployeeName,
    'plblXModelsInvestedValues', plblXModelsInvestedValues,
    'plblInvestedValueQty', plblInvestedValueQty,
    'plblInvestedValueType', plblInvestedValueType,
    'plblTotalInvestedValue', plblTotalInvestedValue,
    'plblInvestedValue', plblInvestedValue
  ]);
end;

procedure TfmXModel.AddBeforeDirPrintColumns(Idx: Integer);
begin
  inherited;

  with grdPrint.Columns.Add do
    begin
      FieldName:= Format(DatesStageNo, [Idx]);
      Font.Size:= 7;

      if LoginContext.WeekDateFormatting then
        Width:= PrintDatesColumnWidth
      else
        Width:= PrintMonthDatesColumnWidth;
    end;   { with }
end;

procedure TfmXModel.SetModelGridColumns;
begin
  inherited;
  grdModel.Columns[2].Width:= 20;
  grdModel.Columns[5].Visible:= False;
end;

function TfmXModel.GetProductionStartDate: TDateTime;
var
  LinesBookmark: TBookmark;
  StagesBookmark: TBookmark;
  TotalTreatmentWorkdays: Integer;
  MaxTotalTreatmentWorkdays: Integer;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        cdsStages.DisableControls;
        try
          StagesBookmark:= cdsStages.Bookmark;
          try
            LinesBookmark:= Bookmark;
            try
              MaxTotalTreatmentWorkdays:= 0;
              First;
              while not EOF do
                begin
                  TotalTreatmentWorkdays:=
                    VarToInt(cdsStages_MAX_TOTAL_TREATMENT_WORKDAYS.Value);

                  if (TotalTreatmentWorkdays > MaxTotalTreatmentWorkdays) then
                    MaxTotalTreatmentWorkdays:= TotalTreatmentWorkdays;

                  Next;
                end;   { while }

              Result:=
                dmMain.IncDateByWorkdays(
                  cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime + 1,
                  -MaxTotalTreatmentWorkdays);
            finally
              Bookmark:= LinesBookmark;
            end;   { try }
          finally
            cdsStages.Bookmark:= StagesBookmark;
          end;   { try }
        finally
          cdsStages.EnableControls;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

function TfmXModel.GetTaskDeptsClientDataSet: TCustomClientDataSet;
begin
  Result:= cdsTaskDepts;
end;

function TfmXModel.GetTasksClientDataSet: TCustomClientDataSet;
begin
  Result:= cdsTasks;
end;

function TfmXModel.ShowTaskEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmXModelTaskEdit.ShowForm(dmDocClient, cdsTasks, AEditMode);
end;

procedure TfmXModel.OpenDataSets;
begin
  cdsEmployees.Open;
  inherited;
  cdsTasks.Open;
  cdsTaskDepts.Open;
end;

procedure TfmXModel.CloseDataSets;
begin
  cdsGridDataLDTQ.Close;
  cdsTaskDepts.Close;
  cdsTasks.Close;
  inherited;
  cdsEmployees.Close;
end;

procedure TfmXModel.cdsTasksNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsTasksML_OBJECT_BRANCH_CODE.AsVariant:= cdsDataML_OBJECT_BRANCH_CODE.AsVariant;
  cdsTasksML_OBJECT_CODE.AsVariant:= cdsDataML_OBJECT_CODE.AsVariant;

  cdsTasksMATERIAL_LIST_TASK_NO.AsInteger:=
    VarToInt(cdsTasks_MAX_MATERIAL_LIST_TASK_NO.Value) + 1;
end;

procedure TfmXModel.cdsTaskDeptsNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsTaskDeptsML_OBJECT_BRANCH_CODE.AsVariant:= cdsTasksML_OBJECT_BRANCH_CODE.AsVariant;
  cdsTaskDeptsML_OBJECT_CODE.AsVariant:= cdsTasksML_OBJECT_CODE.AsVariant;
  cdsTaskDeptsMATERIAL_LIST_TASK_NO.AsVariant:= cdsTasksMATERIAL_LIST_TASK_NO.AsVariant
end;

procedure TfmXModel.cdsTaskDeptsDEPT_CODEChange(Sender: TField);
begin
  inherited;

  if not FAddingSpecification then
    DoDeptFieldChanged(cdsTaskDeptsDEPT_CODE,
      cdsTaskDeptsDEPT_NAME,
      cdsTaskDeptsDEPT_IDENTIFIER);
end;

procedure TfmXModel.cdsTasksBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  with cdsTaskDepts do
    begin
      DisableControls;
      try
        First;
        while not (BOF and EOF) do
          Delete;
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TfmXModel.cdsTaskDeptsAfterPost(DataSet: TDataSet);
var
  b: TBookmark;
begin
  inherited;

  b:= DataSet.Bookmark;
  try
    PostDataSet(cdsTasks);
  finally
    DataSet.Bookmark:= b;
  end;  { try }
end;

procedure TfmXModel.cdsTaskDeptsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  CancelDataSet(cdsTasks);
end;

procedure TfmXModel.GenerateBaseModel;
var
  DefaultStoreCode: Integer;
begin
  Screen.TempCursor(crHourGlass)/
    cdsGridData.TempDisableControls/
      cdsStages.TempDisableControls/
        cdsOperations.TempDisableControls/
          cdsGridData.PreserveRecNo/
            cdsGridData.ForEach/
              procedure begin
                if (cdsGridDataNO_1.AsInteger = 0) then
                  begin
                    if (cdsStages.RecordCount = 0) then
                      AddStage(
                        cdsDataMAIN_DEPT_CODE.AsInteger,
                        frMLBoundProcessObject.cdsDataSALE_WORKDAYS_TO_EXIST.AsInteger,
                        frMLBoundProcessObject.cdsDataSALE_WORKDAYS_TO_EXIST.AsInteger);

                    cdsStages.Last;
                    if (cdsStagesDEPT_CODE.AsInteger <> cdsDataRESULT_STORE_CODE.AsInteger) then
                      AddStage(cdsDataRESULT_STORE_CODE.AsInteger, frMLBoundProcessObject.cdsDataSALE_WORKDAYS_TO_EXIST.AsInteger, 0);
                  end
                else
                  begin
                    if cdsGridDataPRODUCT_CODE.IsNull then
                      begin
                        if (cdsStages.RecordCount = 0) then
                          begin
                            AddStage(cdsDataMAIN_DEPT_CODE.AsInteger, 1, 1);
                            AddStage(cdsDataMAIN_DEPT_CODE.AsInteger, 0, 0);
                          end;
                      end
                    else
                      begin
                        if (cdsStages.RecordCount = 0) then
                          begin
                            DefaultStoreCode:= dmMain.SvrProductsTree.GetProductDefaultStore(cdsGridDataPRODUCT_CODE.AsInteger, cdsDataMAIN_DEPT_CODE.AsInteger);
                            if (DefaultStoreCode <> 0) then
                              AddStage(DefaultStoreCode, 1, 1);
                          end;

                        cdsStages.Last;
                        if (cdsStagesTREATMENT_WORKDAYS.AsInteger <> 0) or
                           (cdsStagesOUTGOING_WORKDAYS.AsInteger <> 0) then
                          AddStage(cdsDataMAIN_DEPT_CODE.AsInteger, 0, 0);
                      end
                  end;
              end;
end;

procedure TfmXModel.AddStage(const ADeptCode, ATreatmentWorkdays,
  AOutgoingWorkdays: Integer);
begin
  cdsStages.SafeAppend/
    procedure begin
      cdsStagesDEPT_CODE.AsInteger:= ADeptCode;
      cdsStagesTREATMENT_WORKDAYS.AsInteger:= ATreatmentWorkdays;
      cdsStagesOUTGOING_WORKDAYS.AsInteger:= AOutgoingWorkdays;
    end;
end;

procedure TfmXModel.GenerateModelTasksAddFields(FromDeptOutgoingWorkdays,
  ToDeptTotalTreatmentWorkdays: Integer;
  DeptBeginDate, ProductionEndDate: TDateTime);
var
  ToDeptBeginDate: TDateTime;
  ModelDatesDisplayFormat: string;
begin
  inherited;

  cdsModelTasksTASK_NO.AsInteger:= cdsTasksMATERIAL_LIST_TASK_NO.AsInteger;
  cdsModelTasksTASK_NAME.AsString:= cdsTasksMATERIAL_LIST_TASK_NAME.AsString;

  if LoginContext.WeekDateFormatting then
    ModelDatesDisplayFormat:= ModelDatesWeekDisplayFormat
  else
    ModelDatesDisplayFormat:= FModelDatesMonthDisplayFormat;

  if (FromDeptOutgoingWorkdays > 0) then
    cdsModelTasksDEPT_DATES.AsString:=
       Format(SModelShowDatesFormat, [
         JclDateTime.FormatDateTime(ModelDatesDisplayFormat, DeptBeginDate),
         IntToStr(FromDeptOutgoingWorkdays)]);

  ToDeptBeginDate:=
    dmMain.IncDateByWorkdays(ProductionEndDate + 1, -ToDeptTotalTreatmentWorkdays);

  if (cdsStagesOUTGOING_WORKDAYS.AsInteger > 0) then
    cdsModelTasksTO_DEPT_DATES.AsString:=
       Format(SModelShowDatesFormat, [
         JclDateTime.FormatDateTime(ModelDatesDisplayFormat, ToDeptBeginDate),
         IntToStr(cdsStagesOUTGOING_WORKDAYS.AsInteger)]);
end;

function TfmXModel.GetProductionEndDate: TDateTime;
begin
  Result:= cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime;
end;

procedure TfmXModel.cdsModelTasksHeaderNewRecord(DataSet: TDataSet);
begin
  inherited;

  AssignFields(cdsData, DataSet);
  AssignFields(frMLBoundProcessObject.cdsData, DataSet);

  if cdsDataLIMITING_EMPLOYEE_CODE.IsNull then
    cdsModelTasksHeaderLIMITING_STATUS.AsString:= SPlanning
  else
    cdsModelTasksHeaderLIMITING_STATUS.AsString:= SLimitting;

  cdsModelTasksHeaderBEGIN_DATE.AsString:=
    LoginContext.DateToStr(cdsDataENTER_RESULT_STORE_BEGIN_DATE.AsDateTime);
  cdsModelTasksHeaderEND_DATE.AsString:=
    LoginContext.DateToStr(cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime);

  cdsModelTasksHeaderML_STATE.AsString:= frMLBoundProcessObject.cdsDataML_STATE_CODE.DisplayText;
  cdsModelTasksHeaderSALE_IDENTIFIER.AsString:= frMLBoundProcessObject.cdsDataSALE_BRANCH_NO.DisplayText + '/' + frMLBoundProcessObject.cdsDataSALE_TYPE_ABBREV.DisplayText + '/' + frMLBoundProcessObject.cdsDataSALE_NO.DisplayText;
  cdsModelTasksHeaderHAS_WASTE_COMPENSATORS.AsBoolean:= (frMLBoundProcessObject.cdsDataWASTE_COMPENSATOR_COUNT.AsInteger > 0);
  cdsModelTasksHeaderRESULT_STORE_IDENTIFIER.AsString:= frResultStore.edtTreeNodeNo.Text;
  cdsModelTasksHeaderSTORE_DATE_INTERVAL.AsString:= frEnterResultStoreDateInterval.edtInterval.Text;
  cdsModelTasksHeaderMAIN_DEPT_IDENTIFIER.AsString:= frProductionDept.edtTreeNodeNo.Text;
  cdsModelTasksHeaderSTRUCTURE_COEF.AsString:= edtStructureCoef.Text;
end;

procedure TfmXModel.actPrintExecute(Sender: TObject);
var
  PrintOnA3, PrintProductNos, PrintNotes, PrintInvestedValues: Boolean;
begin
//  inherited;           new behaviour

  if TfmSpecificationPrintOptions.ShowForm(HasShowInvestedValueActivity, PrintOnA3, PrintProductNos, PrintNotes, PrintInvestedValues) then
    begin
      cdsStructurePrintHeader.CreateDataSet;
      try
        FDontShowInvestedValues:= not PrintInvestedValues;
        try
          FillStructurePrintHeader(PrintInvestedValues);
          
          TrptXModel.PrintReport(cdsFilteredGridData, cdsStructurePrintHeader,
            PrintOnA3, PrintProductNos, PrintNotes, edtStructureCoef.Text);
        finally
          FDontShowInvestedValues:= False;
          dsGridData.DataSet:= nil;
          dsGridData.DataSet:= cdsGridData;
        end;  { try }
      finally
        cdsStructurePrintHeader.Close;
      end;
    end;
end;

procedure TfmXModel.grdLinesDblClick(Sender: TObject);
begin
  if FMakeChanges then
    actLineChange.Execute
  else
    inherited;
end;

procedure TfmXModel.CheckDataCheckLine(CheckDocs: Boolean);
begin
  inherited;

  if (cdsGridData.RecordCount = 1) and
     (cdsStages.RecordCount < 3) then
    begin
      ActivateStagesGrid;
      raise Exception.Create(SNotEnoughStagesForSingleRowModel);
    end;   { if }

  if FApplyingUpdates and
     (not cdsGridDataPRODUCT_CODE.IsNull) and
     cdsGridDataPRODUCT_SECONDARY_TOTAL_PRICE.IsNull then
    begin
      pcMain.ActivePage:= tsLines2;
      ActiveControl:= grdLines2;
      raise Exception.Create(SNoTotalPrice);
    end;

  try
    if (frMLBoundProcessObject.cdsDataSALE_TRANSIENT_STATUS_CODE.AsInteger = tsTransient) and
       (not cdsGridDataPRODUCT_CODE.IsNull) and
       (cdsGridDataDETAIL_CODE.AsInteger <> cdsGridDataPRODUCT_CODE.AsInteger) and
       (not cdsGridDataIS_FOR_SINGLE_USE.AsBoolean) then
      raise Exception.Create(SNoIsForSingleUse);

    if CheckSpecOrModelDocs and
       cdsGridDataPRODUCT_CODE.IsNull and not cdsGridDataIS_COMPLETE.AsBoolean then
      raise Exception.Create(SDetailNotComplete);
  except
    pcMain.ActivePage:= tsLines1;
    ActiveControl:= grdLines1;
    raise;
  end;  { try }
end;

procedure TfmXModel.actShowProductVIMUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    cdsStages.Active and              // osiguriava Active na cdsData i cdsGridData
    (not cdsGridDataPRODUCT_CODE.IsNull) and
    (not cdsDataENTER_RESULT_STORE_END_DATE.IsNull) and
    (cdsStages.RecordCount >= 2);       // da ima etapi vse pak
end;

procedure TfmXModel.actShowWastingSaleExecute(Sender: TObject);
begin
  inherited;
  cdsWastingSaleParams.CreateDataSet;
  try
    cdsWastingSaleParams.AppendRecord([
      frMLBoundProcessObject.cdsDataWASTING_SALE_OBJ_BRANCH_CODE.AsInteger,
      frMLBoundProcessObject.cdsDataWASTING_SALE_OBJ_CODE.AsInteger]);

    TfmProductionOrder.ShowForm(dmDocClient, cdsWastingSaleParams, emReadOnly);
  finally
    cdsWastingSaleParams.Close;
  end;  { try }
end;

procedure TfmXModel.actShowWastingSaleUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    frMLBoundProcessObject.cdsData.Active and
    not frMLBoundProcessObject.cdsDataWASTING_SALE_OBJ_BRANCH_CODE.IsNull;
end;

procedure TfmXModel.actShowProductVIMExecute(Sender: TObject);
var
  ProductNeedBeginDate: TDateTime;
begin
  inherited;

  CalcTotalTreatmentWorkdays(False, False);

  ProductNeedBeginDate:=
    dmMain.IncDateByWorkdays(
      cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime + 1,
      -VarToInt(cdsStages_MAX_TOTAL_TREATMENT_WORKDAYS.Value));

  ShowProductVIM(nil, cdsGridDataPRODUCT_CODE.AsInteger, ProductNeedBeginDate, False, vofVIMOpenedFromModel, pcNormal);
end;

function TfmXModel.CanModifyModel: Boolean;
begin
  Result:= CanModifyData;
end;

procedure TfmXModel.actLineChangesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (not cdsGridDataPRODUCT_CODE.IsNull) and
    (cdsGridData.UpdateStatus <> usInserted);
end;

procedure TfmXModel.actLineChangesExecute(Sender: TObject);
begin
  inherited;
  TfmModelChanges.ShowForm(dmDocClient, cdsGridData);
end;

procedure TfmXModel.actModelChangesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    (EditMode <> emInsert);
end;

procedure TfmXModel.actModelChangesExecute(Sender: TObject);
begin
  inherited;
  PostDataSet(cdsData);
  TfmModelChanges.ShowForm(dmDocClient, cdsData);
end;

procedure TfmXModel.cdsOperationsNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsOperationsMLMSO_OBJECT_BRANCH_CODE.AsInteger:=
    LoginContext.LocalBranchCode;
  cdsOperationsMLMSO_OBJECT_CODE.AsInteger:=
    cdsDataMAX_MLMSO_OBJECT_CODE.AsInteger + FNewMlmsoObjects + 1;
  Inc(FNewMlmsoObjects);

  cdsOperationsMLMS_OBJECT_BRANCH_CODE.AsVariant:= 
    cdsStagesMLMS_OBJECT_BRANCH_CODE.AsVariant;
  cdsOperationsMLMS_OBJECT_CODE.AsVariant:= 
    cdsStagesMLMS_OBJECT_CODE.AsVariant;

  cdsOperationsMLMS_OPERATION_NO.AsInteger:=
    NewOperationData.OperationShowNo;
  cdsOperationsMLMS_OPERATION_VARIANT_NO.AsInteger:=
    NewOperationData.OperationVariantShowNo;

  cdsOperationsIS_ACTIVE.AsBoolean:= False;
  cdsOperationsVARIANT_DETAIL_TECH_QUANTITY.AsFloat:= 0;

  cdsOperationsTREATMENT_BEGIN_DATE.AsDateTime:= ContextDate;
  cdsOperationsTREATMENT_END_DATE.AsDateTime:= ContextDate;

  cdsOperationsHAS_IN_MOVEMENTS.AsBoolean:= False;
  cdsOperationsHAS_OUT_MOVEMENTS.AsBoolean:= False;
end;

procedure TfmXModel.cdsOperationsPROFESSION_CODEChange(Sender: TField);
begin
  inherited;
  cdsOperationsREAL_HOUR_PRICE.Assign(cdsOperationsHOUR_PRICE);
end;

procedure TfmXModel.cdsOperationsSETUP_PROFESSION_CODEChange(
  Sender: TField);
begin
  inherited;
  cdsOperationsREAL_SETUP_HOUR_PRICE.Assign(cdsOperationsSETUP_HOUR_PRICE);
end;

procedure TfmXModel.grdLinesGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin 
  inherited;

  Assert(Assigned(cdsFilteredGridDataCHILD_COUNT));

  if not cdsFilteredGridDataANNUL_EMPLOYEE_CODE.IsNull then
    AFont.Color:= clRed;

  if Assigned(Column) and (Column.FieldName = '_MLL_CHANGE_STATUS_ABBREV') then
    begin
      AFont.Color:= MllChangeStatusColor(cdsFilteredGridData.FieldByName('MLL_CHANGE_STATUS').AsInteger);
      Background:= MllChangeStatusBackgroundColor(cdsFilteredGridData.FieldByName('MLL_CHANGE_STATUS').AsInteger);
    end;  { if }
end;

procedure TfmXModel.cdsGridDataANNUL_EMPLOYEE_CODEChange(Sender: TField);
begin
  inherited;

  if cdsGridDataANNUL_EMPLOYEE_CODE.IsNull then
    begin
      cdsGridDataANNUL_DATE.Clear;
      cdsGridDataANNUL_TIME.Clear;
    end
  else   { if }
    begin
      cdsGridDataANNUL_DATE.AsDateTime:= ContextDate;
      cdsGridDataANNUL_TIME.AsDateTime:= ContextTime;
    end;   { if }
end;

procedure TfmXModel.cdsGridDataANNUL_EMPLOYEE_CODEValidate(Sender: TField);
begin
  inherited;

  if (cdsGridDataNOT_STORNO_STORE_DEAL_COUNT.AsInteger > 0) then
    raise Exception.Create(SCantAnuulBecauseOfStoreDeals);
end;

procedure TfmXModel.AssignPersistentFilterGridDataFields;
begin
  inherited;

  FcdsFilteredGridDataFORK_NO:=
    cdsFilteredGridData.FieldByName('FORK_NO');
  cdsFilteredGridDataANNUL_EMPLOYEE_CODE:=
    cdsFilteredGridData.FieldByName('ANNUL_EMPLOYEE_CODE');
end;

procedure TfmXModel.NilPersistentFilterGridDataFields;
begin
  inherited;
  cdsFilteredGridDataANNUL_EMPLOYEE_CODE:= nil;
end;

procedure TfmXModel.DeleteGridDataRecord;
begin
(*
  with cdsStages do
    begin
      DisableControls;
      try
        First;
        while not EOF do
          begin
            dmDocClient.DSDeleteDoc(cdsStages);

            cdsOperations.DisableControls;
            try
              cdsOperations.First;
              while not cdsOperations.Eof do
                begin
                  dmDocClient.DSDeleteDoc(cdsOperations);

                  cdsOperations.Next;
                end;   { while }
            finally
              cdsOperations.EnableControls;
            end;   { try }

            Next;
          end;
      finally
        EnableControls;
      end;   { try }
    end;   { with }
*)
  with cdsStages do
    begin
      DisableControls;
      try
        First;
        while not (BOF and EOF) do
          Delete;
      finally
        EnableControls;
      end;   { try }
    end;   { with }

  inherited;
end;

procedure TfmXModel.actCloseModelExecute(Sender: TObject);
begin
  inherited;

  LoginContext.CheckUserActivity(uaCloseXModel);

  if (cdsDataBND_SALE_ORDER_TYPE_CODE.AsInteger = sotProductionOrder) then
    raise Exception.Create(SCannotConcludeModelByProductionOrder);

  if (cdsDataTECH_QUANTITY.AsFloat >
      cdsDataQUANTITY_IN.AsFloat * cdsDataRES_PRODUCT_TECH_MEASURE_COEF.AsFloat) then
    raise Exception.Create(SCantCloseBecauseOfLessInQuantity);

  if (MessageDlgEx(SConfirmClose, mtWarning, mbOKCancel, 0) <> mrOK) then
    Abort;

  CheckEditMode(cdsData);
  cdsDataCLOSE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataCLOSE_DATE.AsDateTime:= ContextDate;
  cdsDataCLOSE_TIME.AsDateTime:= ContextTime;
end;

procedure TfmXModel.chbArchivedBeforeToggle(Sender: TObject);
begin
  inherited;

  LoginContext.CheckUserActivity(uaArchiveXModel);

  if cdsDataCLOSE_EMPLOYEE_CODE.IsNull then
    raise Exception.Create(SCantArchiveNotClosedModel);
end;

procedure TfmXModel.cdsGridDataDETAIL_CODEChange(Sender: TField);
begin
  if not FAddingSpecification then
    inherited;
end;

procedure TfmXModel.cdsGridDataPRODUCT_CODEChange(Sender: TField);
begin
  if not FAddingSpecification then
    inherited;
end;

function TfmXModel.ModelTaskDeptBeginDate(AProductionEndDate: TDateTime;
  ATotalTreatmentWorkdays: Integer): TDateTime;
begin
  Result:=
    dmMain.IncDateByWorkdays(AProductionEndDate + 1, -ATotalTreatmentWorkdays);
end;

procedure TfmXModel.AssignRecursivePrintFields;
begin
  inherited;
  cdsRecursivePrintFORK_NO.AsVariant:= cdsGridDataFORK_NO.AsVariant;
end;

function TfmXModel.GetModelColumnGroupWidth: Integer;
begin
  Result:= 3;
end;

procedure TfmXModel.cdsStagesBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (cdsStagesOUTGOING_WORKDAYS.AsInteger = 0) or FCopiingFork0Operations then
    cdsStagesIS_AUTO_MOVEMENT.AsBoolean:= False;

  if cdsGridDataIS_FORK.AsBoolean and
     cdsStagesIS_AUTO_MOVEMENT.AsBoolean then
    raise Exception.Create(SAutoMovementNotAllowed);

  if cdsStagesDOC_CODE.IsNull then
    dmDocClient.DSNewDoc(cdsStages);
end;

procedure TfmXModel.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= DocsDelta;
end;

procedure TfmXModel.cdsOperationsCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsOperations_SHOW_NO.AsString:=
    cdsOperationsMLMS_OPERATION_NO.AsString + '.' +
    cdsOperationsMLMS_OPERATION_VARIANT_NO.AsString;
end;

procedure TfmXModel.cdsOperationsBeforePost(DataSet: TDataSet);
begin
  if (DataSet.State = dsInsert) and
     (not FInsertingSpecification) and
     (not FAddingSpecification) and
     (not FCopiingFork0Operations) then
    begin
      cdsOperationsMLMS_OPERATION_NO.AsInteger:=
        NewOperationData.OperationNo;
      cdsOperationsMLMS_OPERATION_VARIANT_NO.AsInteger:=
        NewOperationData.OperationVariantNo;
    end;   { if }

  if FCopiingFork0Operations then
    cdsOperationsIS_AUTO_MOVEMENT.AsBoolean:= False;

  if cdsOperationsIS_AUTO_MOVEMENT.AsBoolean and
     ( cdsGridDataIS_FORK.AsBoolean or
       ( (cdsGridDataFORK_NO.AsInteger = 0) and
         (ForkCount > 0) and
         (cdsStages.RecordCount >= 2) and
         (cdsStages.RecNo = cdsStages.RecordCount - 1) and
         (cdsOperationsMLMS_OPERATION_NO.AsInteger = cdsOperations_MAX_OPERATION_NO.AsVarInteger) ) ) then
    raise Exception.Create(SAutoMovementsNotAllowed);

  inherited;
end;

procedure TfmXModel.SetOperationCount;
begin
  with cdsStages do
    begin
      DisableControls;
      try
        if (State in dsEditModes) then
          begin
            cdsStagesOPERATION_COUNT.AsInteger:=
              VarToInt(cdsOperations_OPERATION_COUNT.AsVariant);
          end
        else  { if }
          begin
            Edit;
            try
              cdsStagesOPERATION_COUNT.AsInteger:=
                VarToInt(cdsOperations_OPERATION_COUNT.AsVariant);
              Post;
            except
              Cancel;
              raise;
            end;  { try }
          end;  { if }
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmXModel.cdsGridDataBeforePost(DataSet: TDataSet);
var
  c: Char;
  NoAsFormatedTextEx: string;
begin
  inherited;

  if cdsGridDataPRODUCT_CODE.IsNull then
    cdsGridDataIS_FOR_SINGLE_USE.AsBoolean:= False;


  if (cdsGridDataFORK_NO.AsInteger = 0) then
    c:= ' '
  else
    c:= 'x';

  NoAsFormatedTextEx:=
    StrPadRight(cdsGridDataNO_AS_FORMATED_TEXT.AsString, cdsGridDataNO_AS_FORMATED_TEXT.Size, c);

  if (TrimRight(cdsGridDataNO_AS_FORMATED_TEXT_EX.AsString) <> TrimRight(NoAsFormatedTextEx)) then
    cdsGridDataNO_AS_FORMATED_TEXT_EX.AsString:= NoAsFormatedTextEx;
end;

function TfmXModel.GetTaskNoField: TField;
begin
  Result:= cdsTasksMATERIAL_LIST_TASK_NO;
end;

function TfmXModel.OperationRealHourPriceField: TField;
begin
  Result:= cdsOperationsREAL_HOUR_PRICE;
end;

function TfmXModel.OperationRealSetupHourPriceField: TField;
begin
  Result:= cdsOperationsREAL_SETUP_HOUR_PRICE;
end;

function TfmXModel.OperationsModel: Boolean;
begin
  Result:= cdsDataIS_OPERATIONS_MODEL.AsBoolean;
end;

procedure TfmXModel.PrintOperations;
begin
  TrptXModelOperations.PrintReport(cdsStages, cdsGridData, cdsOperations, False, ExcludeStageNo);
end;

function TfmXModel.MaxStageNo: Integer;
begin
  Result:= VarToInt(cdsStages_MAX_ML_MODEL_STAGE_NO.AsVariant);
end;

function TfmXModel.GetMaxStageNoField: TField;
begin
  Result:= cdsStages_MAX_ML_MODEL_STAGE_NO;
end;

function TfmXModel.GetMinStageNoField: TField;
begin
  Result:= cdsStages_MIN_ML_MODEL_STAGE_NO;
end;

procedure TfmXModel.RebuildAdditionalDataSets;
begin
  RebuildGridDataLDTQ;
end;

procedure TfmXModel.RebuildGridDataLDTQ;
var
  b: TBookmark;
begin
  inherited;

  cdsGridDataLDTQ.Close;
  cdsGridDataLDTQ.CreateDataSet;

  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          First;

          while not Eof do
            begin
              cdsGridDataLDTQ.Append;
              try
                cdsGridDataLDTQNO_AS_FORMATED_TEXT.AsString:= cdsGridDataNO_AS_FORMATED_TEXT.AsString;
                cdsGridDataLDTQFORK_NO.AsFloat:= cdsGridDataFORK_NO.AsFloat;
                cdsGridDataLDTQIS_FORK.AsFloat:= cdsGridDataIS_FORK.AsFloat;
                cdsGridDataLDTQLINE_DETAIL_TECH_QUANTITY.AsFloat:= cdsGridDataLINE_DETAIL_TECH_QUANTITY.AsFloat;
                cdsGridDataLDTQMAX_MOVED_TECH_QUANTITY.AsFloat:= cdsGridDataMAX_MOVED_TECH_QUANTITY.AsFloat;
                cdsGridDataLDTQIS_NOT_WASTE_FORK.AsBoolean:= not cdsGridDataIS_WASTE_FORK.AsBoolean;

                cdsGridDataLDTQ.Post;
              except
                cdsGridDataLDTQ.Cancel;
                raise;
              end;  { try }

              Next;
            end;  { while }

        finally
          Bookmark:= b;
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmXModel.RecursivePrint(AMinLineLevel: Integer; AModelPrint,
  APrintOnA3, APrintProductNos, APrintNotes, APrintInvestedValues: Boolean);
var
  SavecdsData: TAbmesClientDataSet;
begin
  cdsStructurePrintHeader.CreateDataSet;
  try
    FillStructurePrintHeader(not FDontShowInvestedValues);

    SavecdsData:= cdsData;
    cdsData:= cdsStructurePrintHeader;
    try
      inherited;
    finally
      cdsData:= SavecdsData;
    end;
  finally
    cdsStructurePrintHeader.Close;
  end;
end;

procedure TfmXModel.actDelRecordExecute(Sender: TObject);
var
  HasMovements: Boolean;
  EndPos: Integer;
  b: TBookmark;
begin
  HasMovements:= False;

  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          EndPos:= LastNoPos;
          SaveOldNo(EndPos);
          while (not Eof) and SameAsOldNo(EndPos) do
            begin
              HasMovements:= HasMovements or (not cdsGridDataMAX_MOVED_TECH_QUANTITY.IsNull);
              Next;
            end;
        finally
          Bookmark:= b;
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }

  if HasMovements then
    raise Exception.Create(SCantDeleteWithMovements);

  inherited;
end;

procedure TfmXModel.UpdateForksDetailTechQuantity;
var
  ForkCount: Integer;
  b: TBookmark;
  DetailTechQuantity: Real;
  NoAsFormatedText: string;
  ForkNo: Integer;
begin
  if cdsGridDataLDTQ.Locate('NO_AS_FORMATED_TEXT; FORK_NO',
       VarArrayOf([cdsGridDataNO_AS_FORMATED_TEXT.AsString, 0]), []) then
    begin
      ForkCount:= VarToInt(cdsGridDataLDTQ_FORK_COUNT.Value);

      if (ForkCount > 0) then
        with cdsGridData do
          begin
            DisableControls;
            try
              b:= Bookmark;
              try
                DetailTechQuantity:= cdsGridDataDETAIL_TECH_QUANTITY.AsFloat;
                NoAsFormatedText:= cdsGridDataNO_AS_FORMATED_TEXT.AsString;

                ForkNo:= ForkCount;
                while (ForkNo > 0) do
                  begin
                    Locate('NO_AS_FORMATED_TEXT; FORK_NO', VarArrayOf([NoAsFormatedText, ForkNo]), []);

                    Edit;
                    try
                      cdsGridDataDETAIL_TECH_QUANTITY.AsFloat:= DetailTechQuantity;
                      Post;
                    except
                      Cancel;
                      raise;
                    end;  { try }

                    Dec(ForkNo);
                  end;
              finally
                Bookmark:= b;
              end;  { try }
            finally
              EnableControls;
            end;  { try }
          end;  { with }
    end;
end;

function TfmXModel.GetLineNo: string;
begin
  Result:= (inherited GetLineNo) + '/' + cdsGridDataFORK_NO.AsString;
end;

procedure TfmXModel.actCheckModelUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not (FSelectMovement or FShowInvestedValues);
end;

procedure TfmXModel.CopyFork0StagesAndOperations;
var
  b: TBookmark;
  Fork0IsComposite: Boolean;
  OperationVariant0DocBranchCode: Integer;
  OperationVariant0DocCode: Integer;
begin
  Assert(cdsGridDataIS_FORK.AsBoolean);

  FCopiingFork0Operations:= True;
  try
    cdsFork0Operations.MasterSource:= nil;
    cdsFork0Operations.MasterFields:= '';
                                       
    cdsFork0Stages.CreateDataSet;
    try
      cdsFork0Operations.CreateDataSet;
      try
        cdsGridData.DisableControls;
        cdsStages.DisableControls;
        cdsOperations.DisableControls;
        try
          b:= cdsGridData.Bookmark;
          try
            LocateParent;
            Fork0IsComposite:= cdsGridDataPRODUCT_CODE.IsNull;

            cdsStages.First;
            while not cdsStages.Eof do
              begin
                cdsFork0Stages.Append;
                try
                  AssignFields(cdsStages, cdsFork0Stages);
                  cdsFork0StagesX_MLMS_OBJECT_BRANCH_CODE.AsVariant:= cdsStagesMLMS_OBJECT_BRANCH_CODE.AsVariant;
                  cdsFork0StagesX_MLMS_OBJECT_CODE.AsVariant:= cdsStagesMLMS_OBJECT_CODE.AsVariant;

                  cdsFork0Stages.Post;
                except
                  cdsFork0Stages.Cancel;
                  raise;
                end;  { try }

                cdsOperations.First;
                while not cdsOperations.Eof do
                  begin
                    cdsFork0Operations.Append;
                    try
                      AssignFields(cdsOperations, cdsFork0Operations);
                      cdsFork0OperationsX_MLMS_OBJECT_BRANCH_CODE.AsVariant:= cdsOperationsMLMS_OBJECT_BRANCH_CODE.AsVariant;
                      cdsFork0OperationsX_MLMS_OBJECT_CODE.AsVariant:= cdsOperationsMLMS_OBJECT_CODE.AsVariant;

                      cdsFork0Operations.Post;
                    except
                      cdsFork0Operations.Cancel;
                      raise;
                    end;  { try }
                    cdsOperations.Next;
                  end;  { while }

                cdsStages.Next;
              end;  { while }
          finally
            cdsGridData.Bookmark:= b;
          end;  { try }

          cdsFork0Operations.MasterSource:= dsFork0Stages;
          cdsFork0Operations.MasterFields:= 'X_MLMS_OBJECT_BRANCH_CODE; X_MLMS_OBJECT_CODE';

          cdsFork0Stages.First;
          while not cdsFork0Stages.Eof do
            begin
              cdsStages.Append;
              try
                AssignFields(cdsFork0Stages, cdsStages);

                if Fork0IsComposite then
                  with cdsStagesML_MODEL_STAGE_NO do
                    AsInteger:= AsInteger - 1;

                dmDocClient.CreateDocLike(
                  cdsFork0StagesDOC_BRANCH_CODE.AsInteger,
                  cdsFork0StagesDOC_CODE.AsInteger,
                  True,
                  cdsStagesDOC_BRANCH_CODE,
                  cdsStagesDOC_CODE);

                if cdsStagesDOC_CODE.IsNull then
                  begin
                    cdsStagesHAS_DOCUMENTATION.AsBoolean:= False;
                    cdsStagesDOC_EMPTINESS_REQUIREMENT_CODE.Clear;
                    cdsStagesDOC_IS_COMPLETE.AsBoolean:= False;
                    cdsStagesUNAPPROVED_ACTIVE_DI_COUNT.Clear;
                  end;

                cdsStages.Post;
              except
                cdsStages.Cancel;
                raise;
              end;  { try }

              OperationVariant0DocBranchCode:= -1;
              OperationVariant0DocCode:= -1;
              
              cdsFork0Operations.First;
              while not cdsFork0Operations.Eof do
                begin
                  cdsOperations.Append;
                  try
                    AssignFields(cdsFork0Operations, cdsOperations);

                    cdsOperationsIS_ACTIVE.AsBoolean:= (cdsOperationsMLMS_OPERATION_VARIANT_NO.AsInteger = 0);
                    if cdsOperationsIS_ACTIVE.AsBoolean then
                      cdsOperationsVARIANT_DETAIL_TECH_QUANTITY.AsFloat:= LineDetailTechQuantity
                    else
                      cdsOperationsVARIANT_DETAIL_TECH_QUANTITY.AsFloat:= 0;

                    if (cdsOperationsMLMS_OPERATION_VARIANT_NO.AsInteger = 0) then
                      begin
                        dmDocClient.CreateDocLike(
                          cdsFork0OperationsDOC_BRANCH_CODE.AsInteger,
                          cdsFork0OperationsDOC_CODE.AsInteger,
                          True,
                          cdsOperationsDOC_BRANCH_CODE,
                          cdsOperationsDOC_CODE);

                        if cdsOperationsDOC_CODE.IsNull then
                          begin
                            cdsOperationsHAS_DOCUMENTATION.AsBoolean:= False;
                            cdsOperationsDOC_EMPTINESS_REQUIREMENT_CODE.Clear;
                            cdsOperationsDOC_IS_COMPLETE.AsBoolean:= False;
                            cdsOperationsUNAPPROVED_ACTIVE_DI_COUNT.Clear;
                          end;

                        OperationVariant0DocBranchCode:= cdsOperationsDOC_BRANCH_CODE.AsInteger;
                        OperationVariant0DocCode:= cdsOperationsDOC_CODE.AsInteger;
                      end
                    else
                      begin
                        cdsOperationsDOC_BRANCH_CODE.AsInteger:= OperationVariant0DocBranchCode;
                        cdsOperationsDOC_CODE.AsInteger:= OperationVariant0DocCode;
                      end;

                    cdsOperations.Post;
                  except
                    cdsOperations.Cancel;
                    raise;
                  end;  { try }
                  cdsFork0Operations.Next;
                end;  { while }

              cdsFork0Stages.Next;
            end;  { while }

          cdsStages.First;
          cdsOperations.First;
        finally
          cdsGridData.EnableControls;
          cdsStages.EnableControls;
          cdsOperations.EnableControls;
        end;  { try }
      finally
        cdsFork0Operations.Close;
      end;  { try }
    finally
      cdsFork0Stages.Close;
    end;  { try }
  finally
    FCopiingFork0Operations:= False;
  end;  { try }
end;

function TfmXModel.DeleteMoves(AEndPos: Integer): Integer;
begin
  if cdsGridDataIS_FORK.AsBoolean then
    Result:= ForkCount - cdsGridDataFORK_NO.AsInteger
  else
    Result:= inherited DeleteMoves(AEndPos);
end;

procedure TfmXModel.AddFilteredStage;
begin
  FilteredStages.Add(GetStageFullNo);
end;

function TfmXModel.GetStageFullNo: string;
begin
  Result:=
    cdsGridData.Lookup('MLL_OBJECT_BRANCH_CODE; MLL_OBJECT_CODE',
      VarArrayOf([cdsStagesMLL_OBJECT_BRANCH_CODE.AsInteger, cdsStagesMLL_OBJECT_CODE.AsInteger]),
      'NO_AS_FORMATED_TEXT') + '/' +
    cdsStagesML_MODEL_STAGE_NO.AsString;
end;

procedure TfmXModel.cdsStagesFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    (not Assigned(FilteredStages)) or
    (FilteredStages.IndexOf(GetStageFullNo) >= 0);
end;

procedure TfmXModel.actTaskModelCloseExecute(Sender: TObject);
begin
  if FShowTaskModel then
    Close;

  inherited;
end;

class procedure TfmXModel.ShowTaskModel(AdmDocClient: TdmDocClient; ADataSet: TDataSet);
begin
  ShowForm(AdmDocClient, ADataSet, emReadOnly, False, False, False, 0, 0, nil, nil, 0, 0, True);
end;

procedure TfmXModel.actModelStatusExecute(Sender: TObject);
begin
  inherited;
  with cdsModelStatusParams do
    begin
      CreateDataSet;
      try
        Append;
        try
          cdsModelStatusParamsML_OBJECT_BRANCH_CODE.AsVariant:= cdsDataML_OBJECT_BRANCH_CODE.AsVariant;
          cdsModelStatusParamsML_OBJECT_CODE.AsVariant:= cdsDataML_OBJECT_CODE.AsVariant;
          cdsModelStatusParamsMLL_OBJECT_BRANCH_CODE.AsVariant:= cdsGridDataMLL_OBJECT_BRANCH_CODE.AsVariant;
          cdsModelStatusParamsMLL_OBJECT_CODE.AsVariant:= cdsGridDataMLL_OBJECT_CODE.AsVariant;

          Post;
        except
          Cancel;
          raise;
        end;  { try }

        TfmModelStatus.ShowForm(nil, cdsModelStatusParams, emReadOnly);
      finally
        Close;
      end;  { try }
    end;  { with }
end;

function TfmXModel.OperationVariantNoField: TField;
begin
  Result:= cdsOperationsMLMS_OPERATION_VARIANT_NO;
end;

procedure TfmXModel.cdsDataMODEL_OPERATIONS_STATUS_CODEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  ModelOperationsStatusFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmXModel.cdsDataAfterEdit(DataSet: TDataSet);
begin
  inherited;

  if (cdsDataMODEL_OPERATIONS_STATUS_CODE.AsInteger <> mosStage) then
    cdsDataMODEL_OPERATIONS_STATUS_CODE.Clear;

  with frMLBoundProcessObject.cdsData do
    begin
      Edit;
      try
        frMLBoundProcessObject.cdsDataML_STATE_CODE.Clear;
        Post;
      except
        Cancel;
        raise;
      end;  { try }
    end;  { with }
end;

procedure TfmXModel.actModelCapacityStatusExecute(Sender: TObject);
begin
  inherited;

  with cdsModelStatusParams do
    begin
      CreateDataSet;
      try
        Append;
        try
          cdsModelStatusParamsML_OBJECT_BRANCH_CODE.AsVariant:= cdsDataML_OBJECT_BRANCH_CODE.AsVariant;
          cdsModelStatusParamsML_OBJECT_CODE.AsVariant:= cdsDataML_OBJECT_CODE.AsVariant;
          cdsModelStatusParamsMLL_OBJECT_BRANCH_CODE.AsVariant:= cdsGridDataMLL_OBJECT_BRANCH_CODE.AsVariant;
          cdsModelStatusParamsMLL_OBJECT_CODE.AsVariant:= cdsGridDataMLL_OBJECT_CODE.AsVariant;

          Post;
        except
          Cancel;
          raise;
        end;  { try }

        TfmModelCapacityStatus.ShowForm(nil, cdsModelStatusParams, emReadOnly);
      finally
        Close;
      end;  { try }
    end;  { with }
end;

procedure TfmXModel.cdsDataENTER_RESULT_STORE_BEGIN_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if not (cdsData.Bof and cdsData.Eof) then
    Text:=
      JclDateTime.FormatDateTime((Sender as TAbmesSQLTimeStampField).DisplayFormat, Sender.AsDateTime) +
      '-' +
      IntToStr(RealRound(cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime - cdsDataENTER_RESULT_STORE_BEGIN_DATE.AsDateTime) + 1)
  else
    Text:= '';
end;

procedure TfmXModel.cdsOperationsDEPT_CODEChange(Sender: TField);
begin
  if FAddingSpecification then
    Exit;

  inherited;
end;

procedure TfmXModel.AddStageInvestedValues(AInvestedValue,
  AAggregatedInvestedValue, AProductInvestedValue: TInvestedValue);
begin
  with cdsStageInvestedValues do
    begin
      Append;
      try
        cdsStageInvestedValuesMLMS_OBJECT_BRANCH_CODE.AsInteger:= cdsStagesMLMS_OBJECT_BRANCH_CODE.AsInteger;
        cdsStageInvestedValuesMLMS_OBJECT_CODE.AsInteger:= cdsStagesMLMS_OBJECT_CODE.AsInteger;
        cdsStageInvestedValuesINVESTED_VALUE.AsFloat:= AInvestedValue.Value;
        cdsStageInvestedValuesINVESTED_VALUE_IS_INCOMPLETE.AsBoolean:= AInvestedValue.IsIncomplete;
        cdsStageInvestedValuesAGGREGATED_INVESTED_VALUE.AsFloat:= AAggregatedInvestedValue.Value;
        cdsStageInvestedValuesAGGREGATED_INVESTED_VALUE_IS_INCOMPLETE.AsBoolean:= AAggregatedInvestedValue.IsIncomplete;
        cdsStageInvestedValuesPRODUCT_INVESTED_VALUE.AsFloat:= AProductInvestedValue.Value;
        cdsStageInvestedValuesPRODUCT_INVESTED_VALUE_IS_INCOMPLETE.AsBoolean:= AProductInvestedValue.IsIncomplete;

        Post;
      except
        Cancel;
        raise;
      end;  { try }
    end;  { with }
end;

procedure TfmXModel.LocateStageInvestedValue;
begin
  cdsStageInvestedValues.Locate(
    'MLMS_OBJECT_BRANCH_CODE; MLMS_OBJECT_CODE',
    VarArrayOf([
      cdsStagesMLMS_OBJECT_BRANCH_CODE.AsInteger,
      cdsStagesMLMS_OBJECT_CODE.AsInteger
    ]),
    []
  );
end;

procedure TfmXModel.ShowTotalInvestedValue(AInvestedValue: TInvestedValue;
  ACurrencyAbbrev: string);
begin
  if HasShowInvestedValueActivity then
    edtTotalInvestedValue.Text:= FormatFloat(',0.00', AInvestedValue.Value)
  else
    edtTotalInvestedValue.Text:= SNotAvailable;

  if HasShowInvestedValueActivity and AInvestedValue.IsIncomplete then
    edtTotalInvestedValue.Font.Color:= clRed
  else
    edtTotalInvestedValue.Font.Color:= clWindowText;

  lblTotalInvestedValueCurrencyAbbrev.Caption:= ACurrencyAbbrev;

  edtInvestedValueType.Text:= Format('%s / %s%s / %s',
    [InvestedValueFilter.InvestedValueAbbrev,
     InvestedValueFilter.AggregatedAbbrev,
     InvestedValueFilter.InvestedValueTypeAbbrev,
     InvestedValueFilter.InvestedValueSingleAbbrev]);

  edtInvestedValueResultProductTechQuantity.Text:=
    FormatFloat(',0.###', InvestedValueFilter.ResultProductTechQuantity);
end;

procedure TfmXModel.StructurePrint(PrintNotes: Boolean);
begin
  inherited;

  cdsStructurePrintHeader.CreateDataSet;
  try
    FillStructurePrintHeader(IsLevelOneInvestedValueVisible);

    TrptStructureXModel.PrintReport(cdsFilteredGridData, cdsStructurePrintHeader, cdsGridData,
      PrintNotes, edtStructureCoef.Text);
  finally
    cdsStructurePrintHeader.Close;
  end;
end;

function TfmXModel.ShowInvestedValueFilter: Boolean;
begin
  Result:= TfmXModelInvestedValueFilter.ShowForm(nil, cdsInvestedValueFilter);
end;

function TfmXModel.GetResultProductTechMeasureAbbrev: string;
begin
  Result:= cdsData_RESULT_PRODUCT_TECH_MEASURE_ABBREV.AsString;
end;

function TfmXModel.GetProductInvestedValue(
  AInvestedValueFilter: TInvestedValueFilter): TInvestedValue;

  function LocateMllInvestedValue: Boolean;
  begin
    Result:=
      cdsMllInvestedValues.Active and
      cdsMllInvestedValues.Locate(
        'MLL_OBJECT_BRANCH_CODE; MLL_OBJECT_CODE',
        VarArrayOf([cdsGridDataMLL_OBJECT_BRANCH_CODE.AsInteger,
                    cdsGridDataMLL_OBJECT_CODE.AsInteger]),
        []
      );
  end;  { LocateMllInvestedValue }

var
  FromIVL: Integer;
  ToIVL: Integer;
  IVL: Integer;
begin
  if (InvestedValueFilter.InvestedValueType = ivtPlan) and
     not LocateMllInvestedValue then
    Result:= inherited GetProductInvestedValue(AInvestedValueFilter)
  else
    begin
      Result.Clear;
      if cdsGridDataANNUL_EMPLOYEE_CODE.IsNull and
         (cdsGridDataMLL_OBJECT_BRANCH_CODE.AsInteger > 0) and
         LocateMllInvestedValue then
        begin
          ToIVL:= AInvestedValueFilter.InvestedValueLevel;

          case AInvestedValueFilter.InvestedValueSum of
            ivsAggregated: FromIVL:= 2;
            ivsFull: FromIVL:= 1;
          else
            FromIVL:= ToIVL;
          end;

          for IVL:= FromIVL to ToIVL do
            case AInvestedValueFilter.InvestedValueType of
              ivtPlan:
                begin
                  Result.Value:= Result.Value +
                    cdsMllInvestedValues.FieldByName(Format('PLAN_INVESTED_VALUE_%d', [IVL])).AsFloat;

                  Result.IsIncomplete:= Result.IsIncomplete or
                    cdsMllInvestedValues.FieldByName(Format('PLAN_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                end;
              ivtReal:
                begin
                  Result.Value:= Result.Value +
                    cdsMllInvestedValues.FieldByName(Format('REAL_INVESTED_VALUE_%d', [IVL])).AsFloat;

                  Result.IsIncomplete:= Result.IsIncomplete or
                    cdsMllInvestedValues.FieldByName(Format('REAL_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                end;
              ivtDiversion:
                begin
                  Result.Value:= Result.Value +
                    cdsMllInvestedValues.FieldByName(Format('PLAN_INVESTED_VALUE_%d', [IVL])).AsFloat -
                    cdsMllInvestedValues.FieldByName(Format('REAL_INVESTED_VALUE_%d', [IVL])).AsFloat;

                  Result.IsIncomplete:= Result.IsIncomplete or
                    cdsMllInvestedValues.FieldByName(Format('PLAN_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean or
                    cdsMllInvestedValues.FieldByName(Format('REAL_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                end;
              ivtWaste:
                begin
                  Result.Value:= Result.Value +
                    -cdsMllInvestedValues.FieldByName(Format('WASTE_INVESTED_VALUE_%d', [IVL])).AsFloat;

                  Result.IsIncomplete:= Result.IsIncomplete or
                    cdsMllInvestedValues.FieldByName(Format('WASTE_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                end;
            end;
        end;
    end;
end;

function TfmXModel.GetStageInvestedValue(AInvestedValueFilter: TInvestedValueFilter): TInvestedValue;

  function LocateInvestedValue: Boolean;
  begin
    Result:=
      cdsMlmsInvestedValues.Active and
      cdsMlmsInvestedValues.Locate(
        'MLMS_OBJECT_BRANCH_CODE; MLMS_OBJECT_CODE',
        VarArrayOf([cdsStagesMLMS_OBJECT_BRANCH_CODE.AsInteger,
          cdsStagesMLMS_OBJECT_CODE.AsInteger]),
        []);
  end;

var
  FromIVL: Integer;
  ToIVL: Integer;
  IVL: Integer;
begin
  Result.Clear;
  if cdsGridDataANNUL_EMPLOYEE_CODE.IsNull then
    begin
      if (AInvestedValueFilter.InvestedValueType = ivtPlan) and
         not LocateInvestedValue then
        Result:= inherited GetStageInvestedValue(AInvestedValueFilter)
      else
        begin
          if (AInvestedValueFilter.InvestedValueLevel > 1) and
             (cdsStagesML_MODEL_STAGE_NO.AsInteger > 0) and
             (cdsStagesTREATMENT_WORKDAYS.AsInteger > 0) and
             (cdsStagesOUTGOING_WORKDAYS.AsInteger > 0) and
             (cdsStagesMLMS_OBJECT_CODE.AsInteger <= cdsDataMAX_MLMS_OBJECT_CODE.AsInteger) and
             LocateInvestedValue and
             (cdsOperations.RecordCount > 0) then
            begin
              ToIVL:= AInvestedValueFilter.InvestedValueLevel;

              if (AInvestedValueFilter.InvestedValueSum in [ivsAggregated, ivsFull])  then
                FromIVL:= 2
              else
                FromIVL:= ToIVL;

              for IVL:= FromIVL to ToIVL do
                case AInvestedValueFilter.InvestedValueType of
                  ivtPlan:
                    begin
                      Result.Value:= Result.Value +
                        cdsMlmsInvestedValues.FieldByName(Format('PLAN_INVESTED_VALUE_%d', [IVL])).AsFloat;

                      Result.IsIncomplete:= Result.IsIncomplete or
                        cdsMlmsInvestedValues.FieldByName(Format('PLAN_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                    end;
                  ivtReal:
                    begin
                      Result.Value:= Result.Value +
                        cdsMlmsInvestedValues.FieldByName(Format('REAL_INVESTED_VALUE_%d', [IVL])).AsFloat;

                      Result.IsIncomplete:= Result.IsIncomplete or
                        cdsMlmsInvestedValues.FieldByName(Format('REAL_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                    end;
                  ivtDiversion:
                    begin
                      Result.Value:= Result.Value +
                        cdsMlmsInvestedValues.FieldByName(Format('PLAN_INVESTED_VALUE_%d', [IVL])).AsFloat -
                        cdsMlmsInvestedValues.FieldByName(Format('REAL_INVESTED_VALUE_%d', [IVL])).AsFloat;

                      Result.IsIncomplete:= Result.IsIncomplete or
                        cdsMlmsInvestedValues.FieldByName(Format('PLAN_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean or
                        cdsMlmsInvestedValues.FieldByName(Format('REAL_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                    end;
                  ivtWaste:
                    begin
                      Result.Value:= Result.Value +
                        -cdsMlmsInvestedValues.FieldByName(Format('WASTE_INVESTED_VALUE_%d', [IVL])).AsFloat;

                      Result.IsIncomplete:= Result.IsIncomplete or
                        cdsMlmsInvestedValues.FieldByName(Format('WASTE_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                    end;
                end;
            end;
        end;
    end;
end;

procedure TfmXModel.cdsInvestedValuesBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  with (DataSet as TClientDataSet).Params do
    begin
      ParamByName('ML_OBJECT_BRANCH_CODE').AsInteger:= cdsDataML_OBJECT_BRANCH_CODE.AsInteger;
      ParamByName('ML_OBJECT_CODE').AsInteger:= cdsDataML_OBJECT_CODE.AsInteger;
      ParamByName('CURRENCY_CODE').AsInteger:= InvestedValueFilter.CurrencyCode;
    end;
end;

function TfmXModel.InvestedValueFilterQuantityMultiplier(
  AInvestedValueFilter: TInvestedValueFilter): Real;
begin
  Result:= 1;
end;

function TfmXModel.GetOperationDetailTechQuantity: Real;
begin
  Result:= cdsOperationsVARIANT_DETAIL_TECH_QUANTITY.AsFloat;
end;

function TfmXModel.GetOperationInvestedValue(
  AInvestedValueFilter: TInvestedValueFilter): TOperationInvestedValue;

  function LocateInvestedValue: Boolean;
  begin
    Result:=
      cdsMlmsoInvestedValues.Active and
      cdsMlmsoInvestedValues.Locate(
        'MLMSO_OBJECT_BRANCH_CODE; MLMSO_OBJECT_CODE',
        VarArrayOf([cdsOperationsMLMSO_OBJECT_BRANCH_CODE.AsInteger,
          cdsOperationsMLMSO_OBJECT_CODE.AsInteger]),
        []);
  end;
var
  FromIVL: Integer;
  ToIVL: Integer;
  IVL: Integer;
begin
  if (cdsMlmsoInvestedValues.Params.ParamByName('MLMS_OBJECT_BRANCH_CODE').AsInteger <> cdsStagesMLMS_OBJECT_BRANCH_CODE.AsInteger) or
     (cdsMlmsoInvestedValues.Params.ParamByName('MLMS_OBJECT_CODE').AsInteger <> cdsStagesMLMS_OBJECT_CODE.AsInteger) then
    begin
      cdsMlmsoInvestedValues.Close;
      cdsMlmsoInvestedValues.Open;
    end;

  if (AInvestedValueFilter.InvestedValueType = ivtPlan) and
     not LocateInvestedValue then
    Result:= inherited GetOperationInvestedValue(AInvestedValueFilter)
  else
    begin
      Result.Clear;
      if (AInvestedValueFilter.InvestedValueLevel > 1) and
         LocateInvestedValue then
        begin
          ToIVL:= AInvestedValueFilter.InvestedValueLevel;

          if (AInvestedValueFilter.InvestedValueSum in [ivsAggregated, ivsFull])  then
            FromIVL:= 2
          else
            FromIVL:= ToIVL;

          for IVL:= FromIVL to ToIVL do
            case AInvestedValueFilter.InvestedValueType of
              ivtPlan:
                begin
                  if not cdsOperationsSETUP_PROFESSION_CODE.IsNull then
                    begin
                      Result.HasSetup:= True;

                      Result.SetupInvestedValue.Value:= Result.SetupInvestedValue.Value +
                        cdsMlmsoInvestedValues.FieldByName(Format('PLAN_SETUP_INVESTED_VALUE_%d', [IVL])).AsFloat;

                      Result.SetupInvestedValue.IsIncomplete:= Result.SetupInvestedValue.IsIncomplete or
                        cdsMlmsoInvestedValues.FieldByName(Format('PLAN_SETUP_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                    end;

                  Result.DetailInvestedValue.Value:= Result.DetailInvestedValue.Value +
                    cdsMlmsoInvestedValues.FieldByName(Format('PLAN_INVESTED_VALUE_%d', [IVL])).AsFloat;

                  Result.DetailInvestedValue.IsIncomplete:= Result.DetailInvestedValue.IsIncomplete or
                    cdsMlmsoInvestedValues.FieldByName(Format('PLAN_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                end;
              ivtReal:
                begin
                  if not cdsOperationsSETUP_PROFESSION_CODE.IsNull then
                    begin
                      Result.HasSetup:= True;

                      Result.SetupInvestedValue.Value:= Result.SetupInvestedValue.Value +
                        cdsMlmsoInvestedValues.FieldByName(Format('REAL_SETUP_INVESTED_VALUE_%d', [IVL])).AsFloat;

                      Result.SetupInvestedValue.IsIncomplete:= Result.SetupInvestedValue.IsIncomplete or
                        cdsMlmsoInvestedValues.FieldByName(Format('REAL_SETUP_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                    end;

                  Result.DetailInvestedValue.Value:= Result.DetailInvestedValue.Value +
                    cdsMlmsoInvestedValues.FieldByName(Format('REAL_INVESTED_VALUE_%d', [IVL])).AsFloat;

                  Result.DetailInvestedValue.IsIncomplete:= Result.DetailInvestedValue.IsIncomplete or
                    cdsMlmsoInvestedValues.FieldByName(Format('REAL_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                end;
              ivtDiversion:
                begin
                  if not cdsOperationsSETUP_PROFESSION_CODE.IsNull then
                    begin
                      Result.HasSetup:= True;

                      Result.SetupInvestedValue.Value:= Result.SetupInvestedValue.Value +
                        cdsMlmsoInvestedValues.FieldByName(Format('PLAN_SETUP_INVESTED_VALUE_%d', [IVL])).AsFloat -
                        cdsMlmsoInvestedValues.FieldByName(Format('REAL_SETUP_INVESTED_VALUE_%d', [IVL])).AsFloat;

                      Result.SetupInvestedValue.IsIncomplete:= Result.SetupInvestedValue.IsIncomplete or
                        cdsMlmsoInvestedValues.FieldByName(Format('PLAN_SETUP_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean or
                        cdsMlmsoInvestedValues.FieldByName(Format('REAL_SETUP_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                    end;

                  Result.DetailInvestedValue.Value:= Result.DetailInvestedValue.Value +
                    cdsMlmsoInvestedValues.FieldByName(Format('PLAN_INVESTED_VALUE_%d', [IVL])).AsFloat -
                    cdsMlmsoInvestedValues.FieldByName(Format('REAL_INVESTED_VALUE_%d', [IVL])).AsFloat;

                  Result.DetailInvestedValue.IsIncomplete:= Result.DetailInvestedValue.IsIncomplete or
                    cdsMlmsoInvestedValues.FieldByName(Format('PLAN_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean or
                    cdsMlmsoInvestedValues.FieldByName(Format('REAL_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                end;
              ivtWaste:
                begin
                  if not cdsOperationsSETUP_PROFESSION_CODE.IsNull then
                    begin
                      Result.HasSetup:= True;

                      Result.SetupInvestedValue.Value:= Result.SetupInvestedValue.Value +
                        -cdsMlmsoInvestedValues.FieldByName(Format('WASTE_SETUP_INVESTED_VALUE_%d', [IVL])).AsFloat;

                      Result.SetupInvestedValue.IsIncomplete:= Result.SetupInvestedValue.IsIncomplete or
                        cdsMlmsoInvestedValues.FieldByName(Format('WASTE_SETUP_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                    end;

                  Result.DetailInvestedValue.Value:= Result.DetailInvestedValue.Value +
                    -cdsMlmsoInvestedValues.FieldByName(Format('WASTE_INVESTED_VALUE_%d', [IVL])).AsFloat;

                  Result.DetailInvestedValue.IsIncomplete:= Result.DetailInvestedValue.IsIncomplete or
                    cdsMlmsoInvestedValues.FieldByName(Format('WASTE_IV_%d_IS_INCOMPLETE', [IVL])).AsBoolean;
                end;
            end;
        end;
    end;
end;

procedure TfmXModel.SetChangeAfterModelGeneration(const Value: Boolean);
begin
  inherited;
  if Value then
    edtTotalInvestedValue.Text:= '';
end;

procedure TfmXModel.actToggleInvestedValueUpdate(Sender: TObject);
begin
  inherited;
    with Sender as TAction do
      begin
        Enabled:=
          HasShowInvestedValueActivity and
          not GetApplyUpdatesEnabled;

        Checked:= Checked and Enabled;
      end;  { with }
end;

class procedure TfmXModel.ShowInvestedValues(AdmDocClient: TdmDocClient;
  MLBranchCode, MLCode: Integer;
  InvestedValueParamsDataSet: TDataSet);
begin
  ShowForm(AdmDocClient, nil, emReadOnly, True,
    False, False, MLBranchCode, MLCode,
    nil, nil, 0, 0, False, True, InvestedValueParamsDataSet);
end;

procedure TfmXModel.FillStructurePrintHeader(ShowInvestedValues: Boolean);
begin
  cdsStructurePrintHeader.Append;
  try
    cdsStructurePrintHeader.AssignFields(frMLBoundProcessObject.cdsData);
    cdsStructurePrintHeader.AssignFields(cdsData);
    cdsStructurePrintHeaderML_STATE.AsString:= frMLBoundProcessObject.cdsDataML_STATE_CODE.DisplayText;
    cdsStructurePrintHeaderSALE_IDENTIFIER.AsString:=
      Format('%s/%s/%s/%s', [
        frMLBoundProcessObject.cdsDataPRODUCTION_ORDER_TYPE_ABBREV.DisplayText,
        frMLBoundProcessObject.cdsDataSALE_BRANCH_NO.DisplayText,
        frMLBoundProcessObject.cdsDataSALE_NO.DisplayText,
        frMLBoundProcessObject.cdsDataSALE_TYPE_ABBREV.DisplayText
      ]);
    cdsStructurePrintHeader_IS_WASTE_COMPENSATING_ORDER.AsString:= frMLBoundProcessObject.cdsDataIS_WASTE_COMPENSATING_ORDER.DisplayText;
    cdsStructurePrintHeaderHAS_WASTE_COMPENSATORS.AsBoolean:= (frMLBoundProcessObject.cdsDataWASTE_COMPENSATOR_COUNT.AsInteger > 0);
    cdsStructurePrintHeaderRESULT_STORE_IDENTIFIER.AsString:= frResultStore.edtTreeNodeNo.Text;
    cdsStructurePrintHeaderSTORE_DATE_INTERVAL.AsString:= frEnterResultStoreDateInterval.edtInterval.Text;
    cdsStructurePrintHeaderMAIN_DEPT_IDENTIFIER.AsString:= frProductionDept.edtTreeNodeNo.Text;
    cdsStructurePrintHeaderINVESTED_VALUE_QUANTITY.AsString:= edtInvestedValueResultProductTechQuantity.Text;
    cdsStructurePrintHeaderINVESTED_VALUE_MEASURE_ABBREV.AsString:= cdsData_RESULT_PRODUCT_TECH_MEASURE_ABBREV.DisplayText;
    cdsStructurePrintHeaderINVESTED_VALUE_TYPE.AsString:= edtInvestedValueType.Text;
    cdsStructurePrintHeaderTOTAL_INVESTED_VALUE.AsString:= IfThen(ShowInvestedValues, edtTotalInvestedValue.Text, SNotAvailable);
    cdsStructurePrintHeaderINVESTED_VALUE_CURRENCY_ABBREV.AsString:= lblTotalInvestedValueCurrencyAbbrev.Caption;
    cdsStructurePrintHeader.Post;
  except
    cdsStructurePrintHeader.Cancel;
    raise ;
  end;
end;

procedure TfmXModel.UnapproveSpecLineStagesAndOperationsDocs(
  AUnapproveMethod: TUnapproveMethod);
begin
  if (AUnapproveMethod = umLineStagesAndOperationsDocs) then
    UnapproveLineStagesAndOperationsDocs;
end;

function TfmXModel.LineHasApprovedDocItem: Boolean;
var
  StagesBookmark: TBookmark;
  OperationsBookmark:  TBookmark;
  SaveCursor: TCursor;
begin
  Result:= False;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsStages.DisableControls;
    try
      cdsOperations.DisableControls;
      try
        StagesBookmark:= cdsStages.Bookmark;
        OperationsBookmark:= cdsOperations.Bookmark;
        try
          cdsStages.First;
          while not cdsStages.Eof do
            begin
              Result:= (dmDocClient.DSApprovedDocItemCount(cdsStages) > 0);
              if Result then
                Break;

              cdsOperations.First;
              while not cdsOperations.Eof do
                begin
                  Result:= (dmDocClient.DSApprovedDocItemCount(cdsOperations) > 0);
                  if Result then
                    Break;

                  cdsOperations.Next;
                end;  { while }

              if Result then
                Break;

              cdsStages.Next;
            end;  { while }
        finally
          cdsStages.Bookmark:= StagesBookmark;
          cdsOperations.Bookmark:= OperationsBookmark;
        end;  { try }
      finally
        cdsOperations.EnableControls;
      end;  { try }
    finally
      cdsStages.EnableControls;
    end;  { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;  { cursor try }
end;

function TfmXModel.CountApproveCycles: Boolean;
begin
  Result:= False;
end;

procedure TfmXModel.IncApproveCycleNo;
begin
  with cdsGridData do
    begin
      Edit;
      try
        with cdsGridDataAPPROVE_CYCLE_NO do
          AsInteger:= AsInteger + 1;

        Post;
      except
        Cancel;
        raise;
      end;  { try }
    end;  { with }
end;

procedure TfmXModel.ShowStructureDataCoef;
begin
  edtStructureCoef.Text:= StructureCoef.DisplayText;
end;

procedure TfmXModel.actModelStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emInsert) and
    (not GetApplyUpdatesEnabled);
end;

procedure TfmXModel.actModelCapacityStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emInsert) and
    (not GetApplyUpdatesEnabled);
end;

procedure TfmXModel.actDocStatusExecute(Sender: TObject);
var
  em: TEditMode;
begin
  inherited;

  if (EditMode = emReadOnly) then
    em:= emReadOnly
  else
    em:= emEdit;

  if TfmXModelDocStatus.ShowForm(dmDocClient,
      cdsDataML_OBJECT_BRANCH_CODE.AsInteger, cdsDataML_OBJECT_CODE.AsInteger, em) then
    dmDocClient.ClearDocs;
end;

function TfmXModel.ApproveCycleNoField: TField;
begin
  Result:= cdsGridDataAPPROVE_CYCLE_NO;
end;

procedure TfmXModel.cdsStagesCalcFields(DataSet: TDataSet);
begin
  inherited;
          
  if (cdsStagesDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger = DocEmptinessRequirementToInt(derNotEmpty)) then
    begin
      if (cdsStagesUNAPPROVED_ACTIVE_DI_COUNT.AsInteger = 0) and
         cdsStagesDOC_IS_COMPLETE.AsBoolean then
        cdsStages_SHOW_APPROVE_CYCLE_NO.AsString:= ApproveCycleNoField.DisplayText
      else
        cdsStages_SHOW_APPROVE_CYCLE_NO.AsString:= Format('(%s)', [ApproveCycleNoField.DisplayText]);
    end;
end;

function TfmXModel.GetModelIdentifier: string;
begin
  Result:= '';
end;

function TfmXModel.CheckSpecOrModelDocs: Boolean;
begin
  Result:= LoginContext.CheckModelDocs;
end;

procedure TfmXModel.SetEnterResultStoreWorkdays(AWorkdays: Integer);
var
  EnterResultStoreBeginDate: TDateTime;
begin
  EnterResultStoreBeginDate:=
    dmMain.IncDateByWorkdays(
      cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime + 1, -AWorkdays);

  if (EnterResultStoreBeginDate <> cdsDataENTER_RESULT_STORE_BEGIN_DATE.AsDateTime) then
    begin
      CheckEditMode(cdsData);
      cdsDataENTER_RESULT_STORE_BEGIN_DATE.AsDateTime:= EnterResultStoreBeginDate;
    end;  { if }
end;

procedure TfmXModel.CheckStageAdditional;
begin
  inherited;

  if FMakingLimiting and
     ((ContextDate < cdsStagesDEPT_BEGIN_DATE.AsDateTime) or
      ((not cdsStagesDEPT_END_DATE.IsNull) and (ContextDate > cdsStagesDEPT_END_DATE.AsDateTime))) then
    raise Exception.Create(SStageInactiveDeptWhenLimiting);

  if cdsStagesIS_AUTO_MOVEMENT.AsBoolean and
     ( cdsGridDataIS_FORK.AsBoolean or
       ( (cdsGridDataFORK_NO.AsInteger = 0) and
         (ForkCount > 0) ) and
         (cdsStages.RecNo = cdsStages.RecordCount - 1) ) then
    raise Exception.Create(SAutoMovementsNotAllowed);
end;

procedure TfmXModel.CheckOperationAdditional;
begin
  inherited;

  if FMakingLimiting and
     ((ContextDate < cdsOperationsDEPT_BEGIN_DATE.AsDateTime) or
      ((not cdsOperationsDEPT_END_DATE.IsNull) and (ContextDate > cdsOperationsDEPT_END_DATE.AsDateTime))) then
    raise Exception.Create(SOperationInactiveDeptWhenLimiting);

  if cdsOperationsIS_AUTO_MOVEMENT.AsBoolean and
     ( cdsGridDataIS_FORK.AsBoolean or
       ( (cdsGridDataFORK_NO.AsInteger = 0) and
         (ForkCount > 0) and
         (cdsStages.RecordCount >= 2) and
         (cdsStages.RecNo = cdsStages.RecordCount - 1) and
         (cdsOperationsMLMS_OPERATION_NO.AsInteger = cdsOperations_MAX_OPERATION_NO.AsVarInteger) ) ) then
    raise Exception.Create(SAutoMovementsNotAllowed);
end;

procedure TfmXModel.actWastingSaleModelStatusUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    frMLBoundProcessObject.cdsData.Active and
    (not frMLBoundProcessObject.cdsDataWASTING_ML_OBJECT_BRANCH_CODE.IsNull) and
    (not frMLBoundProcessObject.cdsDataWASTING_ML_OBJECT_CODE.IsNull);
end;

procedure TfmXModel.actWastingSaleModelStatusExecute(Sender: TObject);
begin
  inherited;

  if frMLBoundProcessObject.cdsDataWASTING_ML_OBJECT_CODE.IsNull then
    actShowWastingSale.Execute
  else
    begin
      cdsML.CreateDataSet;
      try
        cdsML.AppendRecord([
          frMLBoundProcessObject.cdsDataWASTING_ML_OBJECT_BRANCH_CODE.AsInteger,
          frMLBoundProcessObject.cdsDataWASTING_ML_OBJECT_CODE.AsInteger
        ]);
        TfmModelStatus.ShowForm(nil, cdsML, emReadOnly);
      finally
        cdsML.Close;
      end;  { try }
    end;
end;

procedure TfmXModel.actWasteCompensatorProductionOrdersExecute(
  Sender: TObject);
begin
  inherited;

  cdsWasteCompensatorsParams.CreateDataSet;
  try
    cdsWasteCompensatorsParams.AppendRecord([
      3,
      frMLBoundProcessObject.cdsDataSALE_BRANCH_CODE.AsInteger,
      frMLBoundProcessObject.cdsDataSALE_NO.AsInteger,
      Low(TMLStateNames), High(TMLStateNames)-1
    ]);

    TfmProductionOrders.ShowForm(nil, cdsWasteCompensatorsParams, emReadOnly, False, 0);
  finally
    cdsWasteCompensatorsParams.Close;
  end;  { try }
end;

procedure TfmXModel.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsDataENTER_RESULT_STORE_END_DATE.IsNull then
    cdsData_ENTER_SH_STORE_DATE_DIFF.Clear
  else
    begin
      if cdsDataLAST_SHIPMENT_STORE_IN_DATE.IsNull or (cdsDataSALE_REMAINING_QUANTITY.AsFloat > 0) then
        begin
          if cdsDataCLOSE_DATE.IsNull then
            cdsData_ENTER_SH_STORE_DATE_DIFF.AsInteger:=
              Trunc(cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime - ContextDate)
          else
            cdsData_ENTER_SH_STORE_DATE_DIFF.AsInteger:=
              Trunc(cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime - cdsDataCLOSE_DATE.AsDateTime);
        end
      else
        cdsData_ENTER_SH_STORE_DATE_DIFF.AsInteger:=
          Trunc(cdsDataENTER_RESULT_STORE_END_DATE.AsDateTime - cdsDataLAST_SHIPMENT_STORE_IN_DATE.AsDateTime);
    end;
end;

procedure TfmXModel.frMLBoundProcessObjectbtnDocsClick(Sender: TObject);
begin
  inherited;
  dmDocClient.DSOpenDoc(emReadOnly, frMLBoundProcessObject.btnDocs, dotSale,
    frMLBoundProcessObject.cdsDataDOC_BRANCH_CODE, frMLBoundProcessObject.cdsDataDOC_CODE);
end;

procedure TfmXModel.actWasteCompensatorProductionOrdersUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    frMLBoundProcessObject.cdsData.Active and
    (frMLBoundProcessObject.cdsDataWASTE_COMPENSATOR_COUNT.AsInteger > 0);
end;

end.
