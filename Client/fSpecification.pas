unit fSpecification;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fSpecificationAndXModelAbstract, ImgList, ParamDataSet,
  ActnList, Db, DBClient, AbmesClientDataSet, ComCtrls, GridsEh, DBGridEh,
  AbmesDBGrid, DBCtrls, ColorNavigator, StdCtrls, Buttons, ExtCtrls,
  AbmesFields, AbmesDBCheckBox, Mask, fBaseFrame, fDBFrame,
  fFieldEditFrame, Menus, uClientTypes,
  PrnDbgeh, JvButtons, ToolWin, dDocClient,
  fTreeNodeFieldEditFrame, fProductFieldEditFrame, JvEdit,
  fSpecAndXModelUnapproveAbstract, fDateFieldEditFrame,
  fPartnerFieldEditFrame, JvExStdCtrls, JvExControls, JvComponent,
  JvDBLookup, JvCaptionButton, JvMemoryDataset, fProductFieldEditFrameBald,
  fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald, JvComponentBase,
  uSection, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TLineData = record
    No: array[1..MaxNoPos] of Integer;
    ParentTotalDetailTechQuantity: Real;
    ParentSpecLineCode: Integer;
    ParentIsImported: Boolean;
  end;

type
  TSpecModelVariantData = record
    MainDeptCode: Integer;
    MinQuantity: Real;
    MaxQuantity: Real;
    Notes: string;
    procedure Assign(ADataSet: TDataSet);
    function Compare(ADataSet: TDataSet): Boolean;
  end;

type
  TfmSpecification = class(TfmSpecificationAndXModelAbstract)
    pnlSpecData: TPanel;
    gbVersion: TGroupBox;
    lblVersionNo: TLabel;
    edtVersionNo: TDBEdit;
    cdsSpecificationTypes: TAbmesClientDataSet;
    cdsSpecificationTypesSPEC_TYPE_CODE: TAbmesFloatField;
    cdsSpecificationTypesSPEC_TYPE_NAME: TAbmesWideStringField;
    cdsGridData_MAX_SPEC_LINE_CODE: TAggregateField;
    cdsDataSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsDataSPEC_PRODUCT_NAME: TAbmesWideStringField;
    cdsDataSPEC_PRODUCT_NO: TAbmesFloatField;
    cdsDataSPEC_TYPE_CODE: TAbmesFloatField;
    cdsDataSPEC_VERSION_NO: TAbmesFloatField;
    cdsDataWORK_BRANCH_CODE: TAbmesFloatField;
    cdsDataMANUFACTURER_COMPANY_CODE: TAbmesFloatField;
    cdsDataAUTHOR_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataAUTHORIZATION_DATE: TAbmesSQLTimeStampField;
    cdsDataAUTHORIZATION_TIME: TAbmesSQLTimeStampField;
    cdsDataVERSION_CREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataVERSION_CREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataVERSION_CREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCREATE_DATE: TAbmesSQLTimeStampField;
    cdsDataCREATE_TIME: TAbmesSQLTimeStampField;
    cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsDataCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsDataCHANGE_TIME: TAbmesSQLTimeStampField;
    cdsDataNOTES: TAbmesWideStringField;
    cdsDataqrySpecModelVariants: TDataSetField;
    cdsDataqrySpecLines: TDataSetField;
    cdsGridDataSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataSPEC_LINE_CODE: TAbmesFloatField;
    cdsGridDataPARENT_SPEC_LINE_CODE: TAbmesFloatField;
    cdsGridDataPAR_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsSpecModelVariantStages: TAbmesClientDataSet;
    cdsSpecModelVariantStagesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecModelVariantStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsSpecModelVariantStagesSPEC_LINE_CODE: TAbmesFloatField;
    cdsSpecModelVariantStagesSPEC_LINE_STAGE_NO: TAbmesFloatField;
    cdsSpecModelVariantStagesDEPT_CODE: TAbmesFloatField;
    cdsSpecModelVariantStagesDEPT_IDENTIFIER: TAbmesWideStringField;
    dsSpecModelVariantStages: TDataSource;
    cdsSpecModelVariants: TAbmesClientDataSet;
    cdsSpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField;
    cdsSpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsSpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField;
    cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField;
    cdsSpecModelVariantsAUTHORIZATION_DATE: TAbmesSQLTimeStampField;
    cdsSpecModelVariantsAUTHORIZATION_TIME: TAbmesSQLTimeStampField;
    cdsSpecModelVariantsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsSpecModelVariantsCREATE_DATE: TAbmesSQLTimeStampField;
    cdsSpecModelVariantsCREATE_TIME: TAbmesSQLTimeStampField;
    cdsSpecModelVariantsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsSpecModelVariantsCHANGE_DATE: TAbmesSQLTimeStampField;
    cdsSpecModelVariantsCHANGE_TIME: TAbmesSQLTimeStampField;
    dsSpecModelVariants: TDataSource;
    lblSpecType: TLabel;
    cbSpecType: TJvDBLookupCombo;
    lblIsValid: TLabel;
    edtIsValid: TDBEdit;
    cdsData_SPEC_TYPE_NAME: TAbmesWideStringField;
    cdsData_IS_VALID: TBooleanField;
    cdsInsertSpecLines: TAbmesClientDataSet;
    cdsData_AUTHOR_NAME: TAbmesWideStringField;
    cdsData_AUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField;
    tsModelVariants: TTabSheet;
    grdModelVariants: TAbmesDBGrid;
    cdsSpecModelVariants_AUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsSpecModelVariants_MAX_SPEC_MODEL_VARIANT_NO: TAggregateField;
    actAddModelVariant: TAction;
    actDelModelVariant: TAction;
    actEditModelVariant: TAction;
    actAuthorizeModelVariant: TAction;
    cdsSpecModelVariantsMAIN_DEPT_NAME: TAbmesWideStringField;
    cdsSpecModelVariantStagesDEPT_IS_STORE: TAbmesFloatField;
    cdsSpecModelVariantStagesDEPT_NAME: TAbmesWideStringField;
    cdsDataCHANGE_BRANCH_CODE: TAbmesFloatField;
    actAuthorize: TAction;
    actNewVersion: TAction;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    TabSheet1: TTabSheet;
    pnlBottom: TPanel;
    btnMoveUp: TSpeedButton;
    btnMoveDown: TSpeedButton;
    btnInsertRecord: TBitBtn;
    btnDelRecord: TBitBtn;
    btnEditRecord: TBitBtn;
    cdsInsertSpecLineModelStages: TAbmesClientDataSet;
    cdsInsertSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSpecLinesSPEC_LINE_CODE: TAbmesFloatField;
    cdsInsertSpecLinesNO_1: TAbmesFloatField;
    cdsInsertSpecLinesNO_2: TAbmesFloatField;
    cdsInsertSpecLinesNO_3: TAbmesFloatField;
    cdsInsertSpecLinesNO_4: TAbmesFloatField;
    cdsInsertSpecLinesNO_5: TAbmesFloatField;
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
    cdsInsertSpecLineModelStagesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSpecLineModelStagesSPEC_LINE_CODE: TAbmesFloatField;
    cdsInsertSpecLineModelStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsInsertSpecLineModelStagesSPEC_LINE_STAGE_NO: TAbmesFloatField;
    cdsInsertSpecLineModelStagesDEPT_CODE: TAbmesFloatField;
    cdsAuthorizedModelVariants: TAbmesClientDataSet;
    cdsSpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    cdsData_VERSION_CREATE_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsData_CHANGE_EMPLOYEE_NAME: TAbmesWideStringField;
    pnlStagesModelVariant: TPanel;
    lblStagesModelVariant: TLabel;
    cbStagesModelVariant: TJvDBLookupCombo;
    lblModelModelVariant: TLabel;
    cbModelModelVariant: TJvDBLookupCombo;
    btnAuthorizeModelVariant: TBitBtn;
    cdsCLSpec: TAbmesClientDataSet;
    cdsCLSpecLines: TAbmesClientDataSet;
    cdsCLSpecModelVariantStages: TAbmesClientDataSet;
    cdsCLSpecModelVariants: TAbmesClientDataSet;
    cdsCLSpecORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSpecSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSpecSPEC_PRODUCT_NAME: TAbmesWideStringField;
    cdsCLSpecSPEC_PRODUCT_NO: TAbmesFloatField;
    cdsCLSpecSPEC_TYPE_CODE: TAbmesFloatField;
    cdsCLSpecWORK_BRANCH_CODE: TAbmesFloatField;
    cdsCLSpecMANUFACTURER_COMPANY_CODE: TAbmesFloatField;
    cdsCLSpecNOTES: TAbmesWideStringField;
    cdsCLSpecqryCLSpecModelVariants: TDataSetField;
    cdsCLSpecqryCLSpecLines: TDataSetField;
    cdsCLSpecLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSpecLinesSPEC_LINE_CODE: TAbmesFloatField;
    cdsCLSpecLinesPARENT_SPEC_LINE_CODE: TAbmesFloatField;
    cdsCLSpecLinesNO_1: TAbmesFloatField;
    cdsCLSpecLinesNO_2: TAbmesFloatField;
    cdsCLSpecLinesNO_3: TAbmesFloatField;
    cdsCLSpecLinesNO_4: TAbmesFloatField;
    cdsCLSpecLinesNO_5: TAbmesFloatField;
    cdsCLSpecLinesDETAIL_CODE: TAbmesFloatField;
    cdsCLSpecLinesDETAIL_NAME: TAbmesWideStringField;
    cdsCLSpecLinesDETAIL_NO: TAbmesFloatField;
    cdsCLSpecLinesDETAIL_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsCLSpecLinesDETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsCLSpecLinesTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsCLSpecLinesPAR_TOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsCLSpecLinesDETAIL_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_CODE: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_NAME: TAbmesWideStringField;
    cdsCLSpecLinesPRODUCT_NO: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsCLSpecLinesTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField;
    cdsCLSpecLinesTOTAL_PRODUCT_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_SECONDARY_TOTAL_PRICE: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_IS_FOR_TREATMENT_USE: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_IS_FOR_DIRECT_USE: TAbmesFloatField;
    cdsCLSpecLinesNOTES: TAbmesWideStringField;
    cdsCLSpecModelVariantStagesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsCLSpecModelVariantStagesSPEC_LINE_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantStagesSPEC_LINE_STAGE_NO: TAbmesFloatField;
    cdsCLSpecModelVariantStagesDEPT_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantStagesDEPT_NAME: TAbmesWideStringField;
    cdsCLSpecModelVariantStagesDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsCLSpecModelVariantStagesDEPT_IS_STORE: TAbmesFloatField;
    cdsCLSpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsCLSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantsMAIN_DEPT_NAME: TAbmesWideStringField;
    cdsCLSpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsCLSpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParamsNEW_SPEC_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParams_NEW_SPEC_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParams_NEW_SPEC_PRODUCT_NO: TAbmesFloatField;
    pdsGridDataParams_ORIGINAL_SPEC_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParams_ORIGINAL_SPEC_PRODUCT_NO: TAbmesFloatField;
    cdsSpecModelVariantStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsSpecModelVariantStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    cdsSpecModelVariantStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    cdsCLSpecModelVariantStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsCLSpecModelVariantStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    cdsCLSpecModelVariantStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    cdsSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField;
    cdsSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField;
    cdsCLSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField;
    cdsCLSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField;
    actAddBasedOn: TAction;
    cdsCopyModelVariant: TAbmesClientDataSet;
    cdsCopyModelVariantSPEC_LINE_CODE: TAbmesFloatField;
    cdsCopyModelVariantSPEC_LINE_STAGE_NO: TAbmesFloatField;
    cdsCopyModelVariantDEPT_CODE: TAbmesFloatField;
    cdsCopyModelVariantOUTGOING_WORKDAYS: TAbmesFloatField;
    cdsCopyModelVariantTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsInsertSpecLineModelStagesTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsInsertSpecLineModelStagesTOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    cdsInsertSpecLineModelStagesOUTGOING_WORKDAYS: TAbmesFloatField;
    dsBranches: TDataSource;
    cdsCLSpecLinesNO_6: TAbmesFloatField;
    cdsCLSpecLinesNO_7: TAbmesFloatField;
    cdsCLSpecLinesNO_8: TAbmesFloatField;
    cdsInsertSpecLinesNO_6: TAbmesFloatField;
    cdsInsertSpecLinesNO_7: TAbmesFloatField;
    cdsInsertSpecLinesNO_8: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_6: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_7: TAbmesFloatField;
    cdsInsertSpecLinesPARENT_NO_8: TAbmesFloatField;
    pdsGridDataParamsORIGINAL_SPEC_VERSION_NO: TAbmesFloatField;
    cdsSpecModelVariantLines: TAbmesClientDataSet;
    dsSpecModelVariantLines: TDataSource;
    cdsGridDataqrySpecModelVariantLines: TDataSetField;
    cdsSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField;
    cdsSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsSpecModelVariantLinesqrySpecModelVariantStages: TDataSetField;
    cdsCLSpecModelVariantLines: TAbmesClientDataSet;
    cdsCLSpecLinesqryCLSpecModelVariantLines: TDataSetField;
    cdsCLSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsCLSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantLinesqryCLSpecModelVariantStages: TDataSetField;
    cdsGridDataIS_IMPORTED: TAbmesFloatField;
    cdsCLSpecLinesIS_IMPORTED: TAbmesFloatField;
    cdsCLSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsInsertSpecModelVariantLines: TAbmesClientDataSet;
    cdsInsertSpecLinesqryInsertSpecModelVariantLines: TDataSetField;
    cdsInsertSpecModelVariantLinesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSpecModelVariantLinesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsInsertSpecModelVariantLinesSPEC_LINE_CODE: TAbmesFloatField;
    cdsInsertSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsInsertSpecModelVariantLinesqryInsertSpecLineModelStages: TDataSetField;
    cdsInsertSpecLinesIS_IMPORTED: TAbmesFloatField;
    cdsGridDataIS_IMPORTED_SUBDETAIL: TAbmesFloatField;
    cdsCLSpecLinesIS_IMPORTED_SUBDETAIL: TAbmesFloatField;
    cdsSpecLineLastModelStages: TAbmesClientDataSet;
    cdsSpecLineLastModelStagesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_CODE: TAbmesFloatField;
    actRefreshSpecification: TAction;
    btnRefreshSpecification1: TBitBtn;
    cdsSpecModelVariantStages_MAX_SPEC_LINE_STAGE_NO: TAggregateField;
    btnAddModelVariant: TBitBtn;
    btnDelModelVariant: TBitBtn;
    btnEditModelVariant: TBitBtn;
    pnlModelVariantDataButtons: TPanel;
    actAddModelVariantLike: TAction;
    btnAddModelVariantLike: TBitBtn;
    cdsAuthorizedModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsAuthorizedModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsAuthorizedModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    cdsCopyInSpecModelVariants: TAbmesClientDataSet;
    cdsCopyInSpecModelVariantsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsCopyInSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsCopyInSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField;
    cdsCopyInSpecModelVariantsMAIN_DEPT_NAME: TAbmesWideStringField;
    cdsCopyInSpecModelVariantsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsCopyInSpecModelVariantsRESULT_STORE_CODE: TAbmesFloatField;
    cdsCopyInSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField;
    cdsCopyInSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField;
    cdsCopyInSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField;
    cdsCopyInSpecModelVariantsAUTHORIZATION_DATE: TAbmesSQLTimeStampField;
    cdsCopyInSpecModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    cdsCopyInSpecModelVariantsINSERT_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsCopyInSpecModelVariants_INSERT_MODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    cdsCopyInSpecModelVariants_AUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField;
    cdsSpecModelVariantTasks: TAbmesClientDataSet;
    cdsSpecModelVariantsqrySpecModelVariantTasks: TDataSetField;
    cdsSpecModelVariantTasksSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField;
    cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NAME: TAbmesWideStringField;
    cdsSpecModelVariantTasksqrySpecModelVariantTaskDepts: TDataSetField;
    dsSpecModelVariantTasks: TDataSource;
    cdsSpecModelVariantTaskDepts: TAbmesClientDataSet;
    dsSpecModelVariantTaskDepts: TDataSource;
    cdsSpecModelVariantTaskDeptsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField;
    cdsSpecModelVariantTaskDeptsDEPT_CODE: TAbmesFloatField;
    cdsSpecModelVariantTasks_MAX_SPEC_MODEL_VARIANT_TASK_NO: TAggregateField;
    cdsSpecModelVariantTaskDeptsDEPT_NAME: TAbmesWideStringField;
    cdsSpecModelVariantTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField;
    lblTasksModelVariant: TLabel;
    cbTasksModelVariant: TJvDBLookupCombo;
    cdsCLSpecModelVariantTasks: TAbmesClientDataSet;
    cdsCLSpecModelVariantTaskDepts: TAbmesClientDataSet;
    cdsCLSpecModelVariantsqryCLSpecModelVariantTasks: TDataSetField;
    cdsCLSpecModelVariantTasksSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantTasksSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsCLSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField;
    cdsCLSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NAME: TAbmesWideStringField;
    cdsCLSpecModelVariantTasksqryCLSpecModelVariantTaskDepts: TDataSetField;
    cdsCLSpecModelVariantTaskDeptsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsCLSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField;
    cdsCLSpecModelVariantTaskDeptsDEPT_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantTaskDeptsDEPT_NAME: TAbmesWideStringField;
    cdsCLSpecModelVariantTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsModelTasksHeaderSPEC_PRODUCT_NAME: TAbmesWideStringField;
    cdsModelTasksHeaderSPEC_PRODUCT_NO: TAbmesFloatField;
    cdsModelTasksHeaderMANUFACTURER_NAME: TAbmesWideStringField;
    cdsModelTasksHeaderMIN_TECH_QUANTITY: TAbmesFloatField;
    cdsModelTasksHeaderMAX_TECH_QUANTITY: TAbmesFloatField;
    cdsCopyModelVariantTasks: TAbmesClientDataSet;
    cdsCopyModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField;
    cdsCopyModelVariantTasksSPEC_MODEL_VARIANT_TASK_NAME: TAbmesWideStringField;
    cdsCopyModelVariantTaskDepts: TAbmesClientDataSet;
    cdsCopyModelVariantTaskDeptsDEPT_CODE: TAbmesFloatField;
    cdsCopyModelVariantTaskDeptsSPEC_MODEL_VARIANT_TASK_NO: TAbmesFloatField;
    cdsCopyModelVariantTaskDeptsDEPT_NAME: TAbmesWideStringField;
    cdsCopyModelVariantTaskDeptsDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsCLSpecLinesORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantLinesORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantsORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantTasksORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsDataSTRUCT_CHANGE_CLEAR_EMPL_CODE: TAbmesFloatField;
    cdsDataSTRUCT_CHANGE_CLEAR_DATE: TAbmesSQLTimeStampField;
    cdsDataSTRUCT_CHANGE_CLEAR_TIME: TAbmesSQLTimeStampField;
    cdsGridDataSTRUCT_CHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    cdsGridDataSTRUCT_CHANGE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataSTRUCT_CHANGE_TIME: TAbmesSQLTimeStampField;
    cdsGridDataIS_STRUCT_CHANGED: TAbmesFloatField;
    cdsGridData_HAS_STRUCT_CHANGES: TAggregateField;
    actClearStructChanges: TAction;
    btnClearStructChanges: TBitBtn;
    cdsCLSpecModelVariantStagesORIGINAL_SPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecModelVariantStagesqrySMVSOperations: TDataSetField;
    cdsInsertSMVSOperations: TAbmesClientDataSet;
    cdsInsertSpecLineModelStagesqryInsertSMVSOperations: TDataSetField;
    cdsCLSMVSOperations: TAbmesClientDataSet;
    cdsCLSpecModelVariantStagesqryCLSMVSOperations: TDataSetField;
    cdsOperations_MAX_SMVS_OPERATION_CODE: TAggregateField;
    cdsOperationsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsOperationsSPEC_LINE_CODE: TAbmesFloatField;
    cdsOperationsSMVS_OPERATION_CODE: TAbmesFloatField;
    cdsOperationsSMVS_OPERATION_NO: TAbmesFloatField;
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
    cdsInsertSpecLinesNO_AS_TEXT: TAbmesWideStringField;
    cdsInsertSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField;
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
    cdsCLSpecLinesNO_9: TAbmesFloatField;
    cdsCLSpecLinesNO_10: TAbmesFloatField;
    cdsCLSpecLinesNO_11: TAbmesFloatField;
    cdsCLSpecLinesNO_12: TAbmesFloatField;
    cdsCLSpecLinesNO_13: TAbmesFloatField;
    cdsCLSpecLinesNO_14: TAbmesFloatField;
    cdsCLSpecLinesNO_15: TAbmesFloatField;
    cdsCLSpecLinesNO_16: TAbmesFloatField;
    cdsCLSpecLinesNO_17: TAbmesFloatField;
    cdsCLSpecLinesNO_18: TAbmesFloatField;
    cdsCLSpecLinesNO_19: TAbmesFloatField;
    cdsCLSpecLinesNO_20: TAbmesFloatField;
    cdsCLSpecLinesNO_21: TAbmesFloatField;
    cdsCLSpecLinesNO_22: TAbmesFloatField;
    cdsCLSpecLinesNO_23: TAbmesFloatField;
    cdsCLSpecLinesNO_24: TAbmesFloatField;
    cdsCLSpecLinesNO_25: TAbmesFloatField;
    cdsCLSpecLinesNO_AS_TEXT: TAbmesWideStringField;
    cdsCLSpecLinesNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsInsertSpecLineModelStagesDEPT_NAME: TAbmesWideStringField;
    cdsInsertSpecLineModelStagesDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsInsertSpecLineModelStagesDEPT_IS_STORE: TAbmesFloatField;
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
    cdsSpecModelVariants_MAX_AUTHORIZATION_EMPLOYEE_CODE: TAggregateField;
    cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_NAME: TAbmesWideStringField;
    cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_IS_STORE: TAbmesFloatField;
    cdsSpecModelVariantStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsInsertSpecLineModelStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsCLSpecModelVariantStagesIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsSpecModelVariantStagesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsSpecModelVariantStagesDOC_CODE: TAbmesFloatField;
    cdsSpecModelVariantStagesHAS_DOCUMENTATION: TAbmesFloatField;
    cdsInsertSpecLineModelStagesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsInsertSpecLineModelStagesDOC_CODE: TAbmesFloatField;
    cdsInsertSpecLineModelStagesHAS_DOCUMENTATION: TAbmesFloatField;
    cdsCLSpecModelVariantStagesDOC_BRANCH_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantStagesDOC_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantStagesHAS_DOCUMENTATION: TAbmesFloatField;
    cdsCopyModelVariantDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsCopyModelVariantDEPT_IS_STORE: TAbmesFloatField;
    cdsCopyModelVariantIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsCopyModelVariantDOC_BRANCH_CODE: TAbmesFloatField;
    cdsCopyModelVariantDOC_CODE: TAbmesFloatField;
    cdsCopyModelVariantHAS_DOCUMENTATION: TAbmesFloatField;
    cdsCopyModelVariantDEPT_NAME: TAbmesWideStringField;
    cdsOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsInsertSMVSOperationsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsInsertSMVSOperationsSPEC_LINE_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsSMVS_OPERATION_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsSMVS_OPERATION_NO: TAbmesFloatField;
    cdsInsertSMVSOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsInsertSMVSOperationsDEPT_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsDEPT_NAME: TAbmesWideStringField;
    cdsInsertSMVSOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsInsertSMVSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    cdsInsertSMVSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsInsertSMVSOperationsPROFESSION_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsEFFORT_COEF: TAbmesFloatField;
    cdsInsertSMVSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsInsertSMVSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsInsertSMVSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsInsertSMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsInsertSMVSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsInsertSMVSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsInsertSMVSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsInsertSMVSOperationsNOTES: TAbmesWideStringField;
    cdsCLSMVSOperationsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsCLSMVSOperationsSPEC_LINE_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsSMVS_OPERATION_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsSMVS_OPERATION_NO: TAbmesFloatField;
    cdsCLSMVSOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsCLSMVSOperationsDEPT_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsDEPT_NAME: TAbmesWideStringField;
    cdsCLSMVSOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsCLSMVSOperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    cdsCLSMVSOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsCLSMVSOperationsPROFESSION_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsEFFORT_COEF: TAbmesFloatField;
    cdsCLSMVSOperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsCLSMVSOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsCLSMVSOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsCLSMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsCLSMVSOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsCLSMVSOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsCLSMVSOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsCLSMVSOperationsNOTES: TAbmesWideStringField;
    cdsInsertSMVSOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsDOC_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsDOC_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    cdsCLSMVSOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    cdsInsertSMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsSpecModelVariantStagesSMVS_TYPE_CODE: TAbmesFloatField;
    cdsInsertSpecLineModelStagesSMVS_TYPE_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantStagesSMVS_TYPE_CODE: TAbmesFloatField;
    cdsSMVSTypes: TAbmesClientDataSet;
    cdsSMVSTypesSMVS_TYPE_CODE: TAbmesFloatField;
    cdsSMVSTypesSMVS_TYPE_NAME: TAbmesWideStringField;
    cdsSpecModelVariantStages_SMVS_TYPE_NAME: TAbmesWideStringField;
    cdsCopyModelVariantOperations: TAbmesClientDataSet;
    cdsCopyModelVariantOperationsSPEC_LINE_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsSMVS_OPERATION_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsSMVS_OPERATION_NO: TAbmesFloatField;
    cdsCopyModelVariantOperationsSMVS_OPERATION_VARIANT_NO: TAbmesFloatField;
    cdsCopyModelVariantOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsDEPT_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsDEPT_NAME: TAbmesWideStringField;
    cdsCopyModelVariantOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsCopyModelVariantOperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    cdsCopyModelVariantOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsCopyModelVariantOperationsPROFESSION_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsEFFORT_COEF: TAbmesFloatField;
    cdsCopyModelVariantOperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsCopyModelVariantOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsCopyModelVariantOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsCopyModelVariantOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsCopyModelVariantOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsCopyModelVariantOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsCopyModelVariantOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsCopyModelVariantOperationsNOTES: TAbmesWideStringField;
    cdsCopyModelVariantOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsDOC_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    cdsInsertSMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecModelVariantStagesOPERATION_COUNT: TAbmesFloatField;
    cdsInsertSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField;
    cdsCLSpecLinesIS_FOR_SINGLE_USE: TAbmesFloatField;
    cdsInsertSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsInsertSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsCLSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsCLSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsCopyModelVariantOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsCopyModelVariantOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsSpecModelVariantsAUTHORIZATION_OF_OPERATIONS: TAbmesFloatField;
    cdsSpecModelVariants_AUTHORIZATION_OF_OPERATIONS: TAbmesWideStringField;
    btnAuthorizeOperationModelVariant: TBitBtn;
    actAuthorizeOperationModelVariant: TAction;
    cdsSpecModelVariantStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    cdsInsertSpecLineModelStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantStagesSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    cdsSpecModelVariantStages_MAX_SPEC_LINE_STAGE_CODE: TAggregateField;
    cdsOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    cdsCopyModelVariantSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    cdsSpecModelVariantStages_MIN_SPEC_LINE_STAGE_NO: TAggregateField;
    cdsInsertSpecLineModelStagesOPERATION_COUNT: TAbmesFloatField;
    cdsInsertSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField;
    cdsCLSpecLinesCONSTRUCTION_NOTES: TAbmesWideStringField;
    cdsInsertSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    cdsInsertSMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsCLSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    cdsCLSMVSOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsCopyModelVariantOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    cdsCopyModelVariantOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsInsertSMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    cdsInsertSpecLinesDETAIL_PARENT_CODE: TAbmesFloatField;
    cdsCLSpecLinesDETAIL_PARENT_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    cdsCLSMVSOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    cdsCopyModelVariantOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    cdsSelectModelVariants: TAbmesClientDataSet;
    cdsSelectModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsSelectModelVariantsMODEL_VARIANT_IDENTIFIER: TAbmesWideStringField;
    dsSelectModelVariants: TDataSource;
    cdsInsertSpecLinesDETAIL_IS_INACTIVE: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_IS_INACTIVE: TAbmesFloatField;
    cdsCLSpecLinesDETAIL_IS_INACTIVE: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_IS_INACTIVE: TAbmesFloatField;
    lblAuthorizationEmployeeName: TLabel;
    edtAuthorizationEmployeeName: TDBEdit;
    lblAuthorizationDate: TLabel;
    gbPrices: TGroupBox;
    gbNotes: TGroupBox;
    cdsInsertSpecLineModelStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    cdsSpecModelVariantStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    cdsCLSpecModelVariantStagesEXTERNAL_WORK_PRICE: TAbmesFloatField;
    cdsCopyModelVariantEXTERNAL_WORK_PRICE: TAbmesFloatField;
    cdsInsertSMVSOperationsD_HOUR_PRICE: TAbmesFloatField;
    cdsCLSpecModelVariantStagesOPERATION_COUNT: TAbmesFloatField;
    cdsCLSMVSOperationsD_HOUR_PRICE: TAbmesFloatField;
    cdsCopyModelVariantD_STAGE_LEVEL_ORG_PRICE: TAbmesFloatField;
    cdsCopyModelVariantD_ADDITIONAL_PRICE_COEF: TAbmesFloatField;
    cdsCopyModelVariantOperationsD_HOUR_PRICE: TAbmesFloatField;
    cdsStageInvestedValuesSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsStageInvestedValuesSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsStageInvestedValuesSPEC_LINE_CODE: TAbmesFloatField;
    cdsStageInvestedValuesSPEC_LINE_STAGE_CODE: TAbmesFloatField;
    edtInvestedValueType: TEdit;
    lblInvestedValueType: TLabel;
    lblTotalInvestedValue: TLabel;
    lblTotalInvestedValueCurrencyAbbrev: TLabel;
    btnInvestedValueFilter: TBitBtn;
    edtTotalInvestedValue: TJvEdit;
    cdsInsertSpecLinesPRODUCT_SINGLE_PRICE: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_SINGLE_PRICE: TAbmesFloatField;
    lblInvestedValueResultProductTechQuantity: TLabel;
    edtInvestedValueResultProductTechQuantity: TJvEdit;
    cdsDataTECH_MEASURE_CODE: TAbmesFloatField;
    cdsData_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    txtSpecProductTechMeasureAbbrev: TDBText;
    cdsSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField;
    cdsInsertSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField;
    cdsCLSpecModelVariantLinesAPPROVE_CYCLE_NO: TAbmesFloatField;
    cdsInsertSpecLinesIS_COMPLETE: TAbmesFloatField;
    cdsCLSpecLinesIS_COMPLETE: TAbmesFloatField;
    cdsInsertSpecLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField;
    cdsCLSpecLinesDETAIL_IS_SELF_APPROVED: TAbmesFloatField;
    lblStructureCoef: TLabel;
    edtStructureCoef: TJvEdit;
    pgdSpecModel: TPrintDBGridEh;
    cdsInsertSMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField;
    cdsCLSMVSOperationsIS_NORMAL_OPERATION: TAbmesFloatField;
    cdsSpecModelVariantStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsInsertSpecLineModelStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsCLSpecModelVariantStagesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsInsertSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsCLSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsCopyModelVariantUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsCopyModelVariantOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsSpecModelVariantStagesDOC_IS_COMPLETE: TAbmesFloatField;
    cdsInsertSpecLineModelStagesDOC_IS_COMPLETE: TAbmesFloatField;
    cdsInsertSMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    cdsCLSpecModelVariantStagesDOC_IS_COMPLETE: TAbmesFloatField;
    cdsCLSMVSOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    cdsCopyModelVariantDOC_IS_COMPLETE: TAbmesFloatField;
    cdsCopyModelVariantOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    cdsSpecModelVariantStages_SHOW_APPROVE_CYCLE_NO: TAbmesWideStringField;
    cdsSpecModelVariantStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsInsertSpecLineModelStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsCLSpecModelVariantStagesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsCopyModelVariantDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    frAuthorizationDate: TfrDateFieldEditFrame;
    cdsSpecModelVariantStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsSpecModelVariantStagesDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsInsertSpecLineModelStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsInsertSpecLineModelStagesDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsInsertSMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsInsertSMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsCLSpecModelVariantStagesDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsCLSpecModelVariantStagesDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsCLSMVSOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsCLSMVSOperationsDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsCopyModelVariantDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsCopyModelVariantDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsCopyModelVariantOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsCopyModelVariantOperationsDEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsSpecModelVariantsMAIN_DEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsSpecModelVariantsMAIN_DEPT_END_DATE: TAbmesSQLTimeStampField;
    cdsDataMANUFACTURER_NAME: TAbmesWideStringField;
    cdsCopyInSpecModelVariants_MAX_INSERT_MODEL_VARIANT_NO: TAggregateField;
    frManufacturer: TfrPartnerFieldEditFrame;
    gbSpecProduct: TGroupBox;
    frSpecProduct: TfrProductFieldEditFrameBald;
    gbStatus: TGroupBox;
    frCreateDate: TfrDateFieldEditFrame;
    frAuthor: TfrEmployeeFieldEditFrameBald;
    lblDate: TLabel;
    edtNotes: TDBEdit;
    pnlVersionButtons: TPanel;
    pnlNewVersion: TPanel;
    btnNewVersion: TBitBtn;
    pnlAuthorize: TPanel;
    btnAuthorize: TBitBtn;
    cdsDataSPEC_STATE_CODE: TAbmesFloatField;
    edtSpecState: TDBEdit;
    pnlCommonGroups: TPanel;
    btnCommonGroups: TBitBtn;
    actCommonGroups: TAction;
    cdsDataSPEC_PRODUCT_PARENT_CODE: TAbmesFloatField;
    cdsSpecModelVariantsMAX_TOTAL_TREATMENT_WORKDAYS: TAbmesFloatField;
    lblAuthor: TLabel;
    cdsSpecModelVariantsIS_CHANGED: TAbmesFloatField;
    cdsSpecModelVariants_MAX_IS_CHANGED: TAggregateField;
    cdsData_PRINT_AUTHORIZATION_DATE: TAbmesSQLTimeStampField;
    cdsDataCOMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    cdsData_AUTHOR_EMPLOYEE_NO: TAbmesFloatField;
    cdsData_VERSION_CREATE_EMPLOYEE_NO: TAbmesFloatField;
    cdsData_CHANGE_EMPLOYEE_NO: TAbmesFloatField;
    cdsData_AUTHORIZATION_EMPLOYEE_NO: TAbmesFloatField;
    cdsSpecModelVariants_AUTHORIZATION_EMPLOYEE_NO: TAbmesFloatField;
    cdsCopyInSpecModelVariants_AUTHORIZATION_EMPLOYEE_NO: TAbmesFloatField;
    edtInvestedValuesDate: TJvEdit;
    cdsModelVariantInvestedValues: TAbmesClientDataSet;
    cdsModelVariantInvestedValuesMIN_TECH_QUANTITY: TAbmesFloatField;
    cdsModelVariantInvestedValuesMAX_TECH_QUANTITY: TAbmesFloatField;
    cdsModelVariantInvestedValuesINVESTED_VALUE_LEVEL: TAbmesFloatField;
    cdsModelVariantInvestedValuesFIXED_INVESTED_VALUE: TAbmesFloatField;
    cdsModelVariantInvestedValuesSINGLE_INVESTED_VALUE: TAbmesFloatField;
    cdsModelVariantInvestedValuesMAIN_DEPT_CODE: TAbmesFloatField;
    actInvestedValuesGraph: TAction;
    btnInvestedValuesGraph: TSpeedButton;
    cdsMainDepts: TAbmesClientDataSet;
    cdsMainDeptsMAIN_DEPT_CODE: TAbmesFloatField;
    cdsMainDeptsMAIN_DEPT_NAME: TAbmesWideStringField;
    cdsMainDeptsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsMainDeptsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsMainDeptsMEASURE_CODE: TAbmesFloatField;
    cdsMainDeptsACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsMainDeptsTECH_MEASURE_CODE: TAbmesFloatField;
    cdsMainDeptsTRANSPORT_MEASURE_CODE: TAbmesFloatField;
    cdsMainDeptsACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsMainDeptsTECH_MEASURE_COEF: TAbmesFloatField;
    cdsMainDeptsTRANSPORT_MEASURE_COEF: TAbmesFloatField;
    cdsInsertSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsInsertSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsCLSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    gbTechMeasureAbbrev: TGroupBox;
    edtTechMeasureAbbrev: TDBEdit;
    cdsModelTasksHeaderSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    cdsModelTasksHeaderMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsModelTasksHeaderSPEC_STATE_CODE: TAbmesFloatField;
    cdsModelTasksHeader_SPEC_TYPE_NAME: TAbmesWideStringField;
    cdsModelTasksHeaderSTRUCTURE_COEF: TAbmesWideStringField;
    cdsModelTasksHeaderCOMPANY_PRODUCT_NAMES: TAbmesWideStringField;
    cdsInsertSMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsInsertSMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsInsertSMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsCLSMVSOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsCLSMVSOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsCLSMVSOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsCopyModelVariantOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsCopyModelVariantOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsCopyModelVariantOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsCopyModelVariantOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsInsertSMVSOperationsSETUP_COUNT: TAbmesFloatField;
    cdsCLSMVSOperationsSETUP_COUNT: TAbmesFloatField;
    cdsCopyModelVariantOperationsSETUP_COUNT: TAbmesFloatField;
    cdsInsertSMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    cdsCLSMVSOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    cdsCopyModelVariantOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    cdsInsertSMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    cdsInsertSMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    cdsCLSMVSOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    cdsCLSMVSOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    cdsCopyModelVariantOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    cdsCopyModelVariantOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    cdsModelVariantInvestedValuesAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField;
    actUnauthorizeModelVariant: TAction;
    btnUnauthorizeModelVariant: TSpeedButton;
    cdsCLSpecLinesPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField;
    cdsInsertSpecLinesPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField;
    cdsCLSpecLinesPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField;
    cdsCopyInSpecModelVariantsPARENT_DETAIL_CODE: TAbmesFloatField;
    cdsAuthorizedModelVariantsSPEC_MODEL_VARIANT_STATE: TAbmesFloatField;
    cdsCopyInSpecModelVariants_INSERT_SPEC_MODEL_VARIANT_STATE: TAbmesFloatField;
    cdsSpecModelVariantProductPeriods: TAbmesClientDataSet;
    cdsSpecModelVariantsqrySMVProductPeriods: TDataSetField;
    cdsSpecModelVariantProductPeriodsPRODUCT_CODE: TAbmesFloatField;
    cdsSpecModelVariantProductPeriodsPRODUCT_PERIOD_CODE: TAbmesFloatField;
    cdsSpecModelVariantProductPeriodsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsSpecModelVariantProductPeriodsEND_DATE: TAbmesSQLTimeStampField;
    lblInvestedValuesDate: TLabel;
    cdsSpecModelVariantsNOTES: TAbmesWideStringField;
    cdsCLSpecModelVariantsNOTES: TAbmesWideStringField;
    tlbShowModelVariantNotes: TToolBar;
    btnShowModelVariantNotes: TToolButton;
    actSpecInvestedValuesLevel1: TAction;
    cdsSpecInvestedValuesLevelParams: TAbmesClientDataSet;
    cdsSpecInvestedValuesLevelParamsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecInvestedValuesLevelParamsTHE_DATE: TAbmesSQLTimeStampField;
    cdsSpecInvestedValuesLevelParamsRESULT_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    btnSpecInvestedValuesLevel1: TBitBtn;
    cdsInsertSMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsInsertSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField;
    cdsCLSMVSOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsCLSMVSOperationsIS_AUTO_SETUP: TAbmesFloatField;
    cdsCopyModelVariantOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsCopyModelVariantOperationsIS_AUTO_SETUP: TAbmesFloatField;
    cdsGridDataDETAIL_HAS_SPEC: TAbmesFloatField;
    cdsInsertSpecLinesDETAIL_HAS_SPEC: TAbmesFloatField;
    cdsCLSpecLinesDETAIL_HAS_SPEC: TAbmesFloatField;
    cdsCopyInSpecModelVariants_INSERT_SPEC_MODEL_VARIANT_STATE_NAME: TAbmesStringField;
    cdsSpecModelVariantsIS_INACTIVE: TAbmesFloatField;
    actShowInactiveModelVariants: TAction;
    btnShowInactiveModelVariants: TToolButton;
    cdsCopyInSpecModelVariantsIS_INACTIVE: TAbmesFloatField;
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure actAddSpecificationExecute(Sender: TObject);
    procedure cdsDataCalcFields(DataSet: TDataSet);
    procedure cdsDataAUTHOR_EMPLOYEE_CODEChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataPAR_TOTAL_DETAIL_TECH_QUANTITYChange(
      Sender: TField);
    procedure cdsGridDataPRODUCT_SECONDARY_SINGLE_PRICEChange(
      Sender: TField);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsDataSPEC_PRODUCT_CODEChange(Sender: TField);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure actAddModelVariantUpdate(Sender: TObject);
    procedure actAddModelVariantExecute(Sender: TObject);
    procedure actDelModelVariantUpdate(Sender: TObject);
    procedure actDelModelVariantExecute(Sender: TObject);
    procedure actEditModelVariantUpdate(Sender: TObject);
    procedure actEditModelVariantExecute(Sender: TObject);
    procedure grdModelVariantsDblClick(Sender: TObject);
    procedure cdsSpecModelVariantsNewRecord(DataSet: TDataSet);
    procedure actAuthorizeModelVariantUpdate(Sender: TObject);
    procedure actAuthorizeModelVariantExecute(Sender: TObject);
    procedure cdsSpecModelVariantsMAIN_DEPT_CODEChange(Sender: TField);
    procedure cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODEChange(
      Sender: TField);
    procedure cdsSpecModelVariantsAfterEdit(DataSet: TDataSet);
    procedure cdsDataAUTHORIZATION_EMPLOYEE_CODEChange(Sender: TField);
    procedure cbStagesModelVariantChange(Sender: TObject);
    procedure cdsSpecModelVariantStagesDEPT_CODEChange(Sender: TField);
    procedure cdsSpecModelVariantStagesNewRecord(DataSet: TDataSet);
    procedure cdsSpecModelVariantStagesAfterPost(DataSet: TDataSet);
    procedure actMoveDownModelVariantStageUpdate(Sender: TObject);
    procedure cdsSpecModelVariantStagesAfterDelete(DataSet: TDataSet);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsDataAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataBeforeEdit(DataSet: TDataSet);
    procedure actInsertSpecificationExecute(Sender: TObject);
    procedure actNewVersionExecute(Sender: TObject);
    procedure actAuthorizeExecute(Sender: TObject);
    procedure actAuthorizeUpdate(Sender: TObject);
    procedure actNewVersionUpdate(Sender: TObject);
    procedure cbModelModelVariantChange(Sender: TObject);
    procedure cdsSpecModelVariantsAfterPost(DataSet: TDataSet);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
    procedure cdsSpecModelVariantsAfterDelete(DataSet: TDataSet);
    procedure cdsSpecModelVariantStagesAfterCancel(DataSet: TDataSet);
    procedure cdsSpecModelVariantsBeforePost(DataSet: TDataSet);
    procedure cdsDataSPEC_VERSION_NOChange(Sender: TField);
    procedure cdsDataBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParamsNEW_SPEC_PRODUCT_CODEChange(Sender: TField);
    procedure pdsGridDataParamsORIGINAL_SPEC_PRODUCT_CODEChange(
      Sender: TField);
    procedure cdsGridDataDETAIL_CODEChange(Sender: TField);
    procedure cdsGridDataDETAIL_TECH_QUANTITYChange(Sender: TField);
    procedure cdsGridDataPRODUCT_CODEChange(Sender: TField);
    procedure cdsGridDataPRODUCT_TECH_QUANTITYChange(Sender: TField);
    procedure actAddBasedOnExecute(Sender: TObject);
    procedure cdsSpecModelVariantStagesBeforePost(DataSet: TDataSet);
    procedure cdsDataBeforeOpen(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataBeforeDelete(DataSet: TDataSet);
    procedure cdsSpecModelVariantsBeforeDelete(DataSet: TDataSet);
    procedure cdsSpecModelVariantLinesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsDataBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actRefreshSpecificationUpdate(Sender: TObject);
    procedure actRefreshSpecificationExecute(Sender: TObject);
    procedure actAddBasedOnUpdate(Sender: TObject);
    procedure cdsSpecModelVariantStagesBeforeDelete(DataSet: TDataSet);
    procedure actAddModelVariantLikeUpdate(Sender: TObject);
    procedure actAddModelVariantLikeExecute(Sender: TObject);
    procedure actPrintModelExecute(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsSpecModelVariantTasksNewRecord(DataSet: TDataSet);
    procedure cdsSpecModelVariantTaskDeptsDEPT_CODEChange(Sender: TField);
    procedure cdsSpecModelVariantTaskDeptsNewRecord(DataSet: TDataSet);
    procedure cdsSpecModelVariantTaskDeptsAfterPost(DataSet: TDataSet);
    procedure cdsSpecModelVariantTasksBeforeDelete(DataSet: TDataSet);
    procedure cdsSpecModelVariantTaskDeptsAfterCancel(DataSet: TDataSet);
    procedure cdsSpecModelVariantsAfterScroll(DataSet: TDataSet);
    procedure cbTasksModelVariantChange(Sender: TObject);
    procedure actEdittingTaskInModelExecute(Sender: TObject);
    procedure cdsModelTasksHeaderNewRecord(DataSet: TDataSet);
    procedure actEditTaskInModelExecute(Sender: TObject);
    procedure cdsGridDataSTRUCT_CHANGE_EMPLOYEE_CODEChange(Sender: TField);
    procedure cdsGridDataIS_STRUCT_CHANGEDChange(Sender: TField);
    procedure actClearStructChangesUpdate(Sender: TObject);
    procedure actClearStructChangesExecute(Sender: TObject);
    procedure grdLinesGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsSpecModelVariantLinesBeforeDelete(DataSet: TDataSet);
    procedure cdsOperationsNewRecord(DataSet: TDataSet);
    procedure cdsOperationsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure cdsSpecModelVariantTasksAfterPost(DataSet: TDataSet);
    procedure actAddTaskExecute(Sender: TObject);
    procedure actAddStageExecute(Sender: TObject);
    procedure cdsOperationsDEPT_CODEChange(Sender: TField);
    procedure cdsOperationsPROGRAM_TOOL_PRODUCT_CODEChange(Sender: TField);
    procedure cdsOperationsSPECIFIC_TOOL_PRODUCT_CODEChange(
      Sender: TField);
    procedure cdsOperationsTYPICAL_TOOL_PRODUCT_CODEChange(Sender: TField);
    procedure cdsOperationsCalcFields(DataSet: TDataSet);
    procedure cdsOperationsBeforePost(DataSet: TDataSet);
    procedure cdsSpecModelVariantsCalcFields(DataSet: TDataSet);
    procedure actCheckModelExecute(Sender: TObject);
    procedure actAuthorizeOperationModelVariantUpdate(Sender: TObject);
    procedure actAuthorizeOperationModelVariantExecute(Sender: TObject);
    procedure pcMainChange(Sender: TObject);
    procedure cdsSpecModelVariantStagesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actToggleInvestedValueUpdate(Sender: TObject);
    procedure cdsSpecModelVariantLinesNewRecord(DataSet: TDataSet);
    procedure actDocStatusExecute(Sender: TObject);
    procedure cdsSpecModelVariantStagesCalcFields(DataSet: TDataSet);
    procedure cdsDataMANUFACTURER_COMPANY_CODEChange(Sender: TField);
    procedure cdsDataSPEC_STATE_CODEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actCommonGroupsUpdate(Sender: TObject);
    procedure actCommonGroupsExecute(Sender: TObject);
    procedure cdsDataAfterEdit(DataSet: TDataSet);
    procedure actInvestedValuesGraphExecute(Sender: TObject);
    procedure actInvestedValuesGraphUpdate(Sender: TObject);
    procedure cdsMainDeptsSPEC_PRODUCT_CODEChange(Sender: TField);
    procedure cdsSpecModelVariantStagesEXTERNAL_WORK_PRICEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actUnauthorizeModelVariantUpdate(Sender: TObject);
    procedure actUnauthorizeModelVariantExecute(Sender: TObject);
    procedure cdsCopyInSpecModelVariantsNewRecord(DataSet: TDataSet);
    procedure cdsCopyInSpecModelVariants_INSERT_SPEC_MODEL_VARIANT_STATEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actSpecInvestedValuesLevel1Execute(Sender: TObject);
    procedure actSpecInvestedValuesLevel1Update(Sender: TObject);
    procedure cdsSpecModelVariantsMIN_TECH_QUANTITYChange(Sender: TField);
    procedure cdsSpecModelVariantsMAX_TECH_QUANTITYChange(Sender: TField);
    procedure cdsSpecModelVariantsNOTESChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure cdsCopyInSpecModelVariantsCalcFields(DataSet: TDataSet);
    procedure grdModelVariantsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actShowInactiveModelVariantsExecute(Sender: TObject);
    procedure pcMainChanging(Sender: TObject; var AllowChange: Boolean);
  private
    NewLineData: TLineData;
    FBeforeEditDetailQuantity: Real;
    FPostAfterEdit: Boolean;
    FCurrentModelVariantNo: Integer;
    FChangingSpecProductCode: Boolean;
    FOldSpecProductCode: Variant;
    FBeforeEditProductCode: Integer;
    FProcessingAfterPost: Boolean;
    FOldSpecVersionNo: Integer;
    FFilterModelVariantNo: Integer;
    FCreateLike: Boolean;
    FCreatingLike: Boolean;
    FAddModelVariantBasedOnMainDeptCode: Integer;
    FModelVariantMaxQuantity: Real;
    FCopyingVariantStages: Boolean;
    FCalculatingTotalTreatmentWorkdays: Boolean;
    FCreateLikeProductCode: Integer;
    FPostAfterEditModelVariant: Boolean;
    FEmptingDataSets: Boolean;
    FReplaceSpecProductCode: Integer;
    FDontUnauthorizeAllModelVariants: Boolean;
    FSettingTasksModelVariant: Boolean;
    FCopyingTasks: Boolean;
    FSpecProductCodePtr: PInteger;
    cdsFilteredGridDataIS_STRUCT_CHANGED: TField;
    FDeletingAllStages: Boolean;
    FMaxSpecLineCode: Integer;
    FAuthorizationOfOperations: Boolean;
    FFilterOperationsOnMove: Boolean;
    FInvestedValueResultProductTechQuantityOK: Boolean;
    FFocusSpecLineCode: Integer;
    FFocusSpecModelVariantNo: Integer;
    FAddSpecificationParentDetailCode: Integer;
    FCreateLikeNewProductCode: Integer;
    FAddedSpecificationSpecLineCodes: array of Integer;
    FNoModelChange: TMultiPassSection;
    FNewSpecModelVariantNo: Integer;
    FAfterEditSpecModelVariantData: TSpecModelVariantData;
    FOldPage: TTabSheet;
    procedure SetCurrentModelVariantNo(const Value: Integer);
    procedure RefilterModelVariantLines(ModelVariantNo: Integer);
    procedure SetStagesNumberingFrom(StartNo: Integer);
    procedure UnauthorizeCurrentModelVariant;
    procedure UnauthorizeAllModelVariants;
    procedure DoCreateLike;
    function CalcTotalTreatmentWorkdays(CurrentModelVariantOnly: Boolean = False): Integer;
    procedure CopyAllVariantStagesFrom(FromVariantNo: Integer);
    procedure CopyAllVariantTasksFrom(FromVariantNo: Integer);
    function GetEditModelVariantReadOnly: Boolean;
    function NewVersionEnabled: Boolean;
    procedure DeleteSpecModelVariantLinesFor(ASpecLineCode, ASpecModelVariantNo: Integer);
    procedure AppendSpecModelVariantLine;
    function InsertOrReplaceSpecification(DoInsert: Boolean): Boolean;
    function GetAddModelVariantEnabled: Boolean;
    function UserCanEdit: Boolean;
    procedure ActivateVariantsGrid;
    function NewSpecLineCode: Integer;
    procedure AuthorizeModel(AAuthorizationOfOperations: Boolean);
    procedure ShowDeptOperations(ADeptCode: Integer);
    function GetStageFullNo: string;
    procedure CalcModelVariantInvestedValues(ACurrencyCode: Integer; ADate: TDateTime;
       ARootLineStageIncludeLevel, ANonRootLineStageIncludeLevel: Integer;
       out AInvestedValueIsIncomplete: Boolean);
    procedure FillMainDepts;
    function FilterInvestedValueStage(RootLineStageIncludeLevel, NonRootLineStageIncludeLevel: Integer): Boolean;
    procedure ClearSpecModelVariantChangeEmployeeCode;
    procedure LoadLineDocs;
    procedure SetInitialSpecModelVariantNo(const ASpecModelVariantNo: Integer);

    property CurrentModelVariantNo: Integer read FCurrentModelVariantNo write SetCurrentModelVariantNo;
  protected
    function GetRecordReadOnly: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetDelRecordEnabled: Boolean; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure DoApplyUpdates; override;
    function CanModifyData: Boolean; override;
    procedure PrepareNewLineData(AddLineMode: TAddLineMode); override;
    procedure LocateParent; override;
    function GetAddStageEnabled: Boolean; override;
    function GetDelStageEnabled: Boolean; override;
    function GetEditStageReadOnly: Boolean; override;
    function GetMoveUpStageEnabled: Boolean; override;
    function GetMoveDownStageEnabled: Boolean; override;
    procedure DoBeforeShow; override;
    procedure ChangeEditMode(var AEditMode: TEditMode); override;
    function LineDetailTechQuantity: Real; override;
    function GetParentLineDetailTechQuantity: Variant; override;
    procedure SetParentLineDetailTechQuantity(const Value: Variant); override;
    function ReadOnlyLine: Boolean; override;
    function GetInsertRecordEnabled: Boolean; override;
    function GetAddSpecificationEnabled: Boolean; override;
    function GetAddChildEnabled: Boolean; override;
    function GetParent: Variant; override;
    function SameParent(AParent: Variant): Boolean; override;
    // MODEL stuff
    function GetStagesClientDataSet: TClientDataSet; override;
    function GetStageNoField: TField; override;
    function GetOperationNoField: TField; override;
    function FirstModelDeptColumnIndex: Integer; override;
    procedure AddModelFieldDefs; override;
    procedure SetModelFields; override;
    function PrintStaticColumnsCount: Integer; override;
    procedure SetPrintModelParams(RecursivePrint: Boolean = False; TaskModelPrint: Boolean = False;
      ARealNoAsText: string = ''; ADetailName: string = ''; ADetailNo: string = ''); override;
    function AllowLocateModel: Boolean; override;
    function GetStageDeptColumnWidth: Integer; override;
    function GetPrintStageDeptColumnWidth: Integer; override;
    procedure CheckDataBeforeCheckLines(CheckOnlyLines: Boolean); override;
    procedure CheckStageAdditional; override;
    procedure CheckOperationAdditional; override;
    function CanModifyModel: Boolean; override;
    function GetModelStage(InvestedValue, InvestedValuePart: Boolean): string; override;
    // end MODEL stuff
    function ShowStageEditForm(AEditMode: TEditMode): Boolean; override;
    function NewLineDataNo(idx: Integer): Integer; override;
    function DataGridVisible: Boolean; override;
    function GetMoveUpLineEnabled: Boolean; override;
    function GetMoveDownLineEnabled: Boolean; override;
    function HasForkField: Boolean; override;
    function ConfirmParentDeletionMsg: string; override;
    procedure MoveStage(MoveUp: Boolean; UnapprovePrompt: Boolean = False); override;
    procedure CheckCdsDataRequiredFields; override;
    function GetResultStoreCode: Integer; override;
    procedure SetResultStoreCode(Value: Integer); override;
    function GetModelIsCorrectMsg: string; override;
    function ModelColumnType(Index, FirstStageColumnIndex: Integer): TModelColumnType; override;
    function PrintModelColumnType(Index, FirstStageColumnIndex: Integer): TModelColumnType; override;
    function GetArrowDeptColumn(ACol: Integer): Integer; override;
    function GetStageDaysFormat: string; override;
    function GetTasksClientDataSet: TCustomClientDataSet; override;
    function GetTaskNoField: TField; override;
    function GetTaskDeptsClientDataSet: TCustomClientDataSet; override;
    function ShowTaskEditForm(AEditMode: TEditMode): Boolean; override;
    function GetAddTaskEnabled: Boolean; override;
    function GetEditTaskEnabled: Boolean; override;
    function GetDelTaskEnabled: Boolean; override;
    function GetAddTaskDeptEnabled: Boolean; override;
    function GetEditTaskDeptEnabled: Boolean; override;
    function GetDelTaskDeptEnabled: Boolean; override;
    procedure GenerateModelTasksAddFields(FromDeptOutgoingWorkdays,
      ToDeptTotalTreatmentWorkdays: Integer;
      DeptBeginDate, ProductionEndDate: TDateTime); override;
    function GetProductionEndDate: TDateTime; override;
    procedure PrintModel; override;
    procedure AssignPersistentFilterGridDataFields; override;
    procedure NilPersistentFilterGridDataFields; override;
    function CalcNoAsTextOnNewRecord: Boolean; override;
    function ModelTaskDeptBeginDate(AProductionEndDate: TDateTime;
      ATotalTreatmentWorkdays: Integer): TDateTime; override;
    function GetModelColumnGroupWidth: Integer; override;
    procedure SetOperationCount; override;
    function OperationsModel: Boolean; override;
    procedure PrintOperations; override;
    function MaxStageNo: Integer; override;
    function GetMinStageNoField: TField; override;
    function GetMaxStageNoField: TField; override;
    procedure AddFilteredStage; override;
    function OperationVariantNoField: TField; override;
    procedure AddStageInvestedValues(AInvestedValue, AAggregatedInvestedValue,
      AProductInvestedValue: TInvestedValue); override;
    procedure LocateStageInvestedValue; override;
    procedure ShowTotalInvestedValue(AInvestedValue: TInvestedValue; ACurrencyAbbrev: string); override;
    procedure BeforeGenerateModel; override;
    function ShowInvestedValueFilter: Boolean; override;
    function GetResultProductTechMeasureAbbrev: string; override;
    function InvestedValueFilterQuantityMultiplier(AInvestedValueFilter: TInvestedValueFilter): Real; override;
    function GetOperationDetailTechQuantity: Real; override;
    function GetStageInvestedValue(AInvestedValueFilter: TInvestedValueFilter): TInvestedValue; override;
    procedure AfterGenerateModel; override;
    procedure SetChangeAfterModelGeneration(const Value: Boolean); override;
    procedure UnapproveSpecLineStagesAndOperationsDocs(AUnapproveMethod: TUnapproveMethod); override;
    function LineHasApprovedDocItem: Boolean; override;
    function CountApproveCycles: Boolean; override;
    procedure IncApproveCycleNo; override;
    procedure ShowStructureDataCoef; override;
    function ApproveCycleNoField: TField; override;
    function GetModelIdentifier: string; override;
    function CheckSpecOrModelDocs: Boolean; override;
    procedure StructurePrint(PrintNotes: Boolean); override;
    procedure PrintRecursiveReport(APrintOnA3, APrintNotes, APrintProductNos, APrintInvestedValues: Boolean); override;
    procedure SetStageAndOperationDeptPriceFields(cdsStages: TClientDataSet); override;
    procedure SetLineAndStageAndOperationDeptPriceFields; override;
  public
    procedure Initialize; override;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; AFilterFormEnabled: Boolean = True;
      ACreateLike: Boolean = False; ACreateLikeProductCode: Integer = 0;
      ASpecProductCodePtr: PInteger = nil; AFocusSpecLineCode: Integer = 0;
      AFocusSpecModelVariantNo: Integer = 0; ACreateLikeNewProductCode: Integer = 0); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; AFilterFormEnabled: Boolean = True;
      ACreateLike: Boolean = False; ACreateLikeProductCode: Integer = 0;
      ASpecProductCodePtr: PInteger = nil; AFocusSpecLineCode: Integer = 0;
      AFocusSpecModelVariantNo: Integer = 0; ACreateLikeNewProductCode: Integer = 0): Boolean;
    class procedure PrintStructure(AdmDocClient: TdmDocClient; AProductCode: Integer);
    class procedure ShowOperations(AdmDocClient: TdmDocClient; AProductCode, ADeptCode: Integer);
    class procedure ShowInvestedValuesGraph(AdmDocClient: TdmDocClient; AProductCode: Integer);
  end;

implementation

uses
  dMain, fSpecDetail, fSpecMaterial, uUtils, fSpecifications, uClientUtils,
  fSpecModelVariantsCopyTo, Printers, rSpecification, uUserActivityConsts,
  fTreeSelectForm, fSpecificationCreateLikeFilter, fSpecModelVariantEdit,
  DBConsts, fSpecModelVariantStageEdit,
  uTreeClientUtils, fSpecModelVariantTaskEdit, rSpecModelTasks, AbmesDialogs,
  fSpecificationPrintOptions, rSpecRecursivePrint, Variants, uSpecTypes,
  uProductionLevels, fDataForm, rStructureSpecification, rSpecOperations,
  uColorConsts, uOperationTypes,
  fSpecInvestedValueFilter, uRTFUtils, fSpecUnapprove, fBaseForm,
  StrUtils, fSpecDocStatus, uDocClientUtils, uDocUtils, uCompanyKinds,
  uCompanyClientUtils, uModelUtils, fCommonGroups, Math, JclDateTime,
  fSpecInvestedValuesGraph, uSplitInvestedValue, uClientDateTime,
  fSpecInvestedValuesLevel1, uToolbarUtils, System.Generics.Collections,
  uServerMessageTexts;

{$R *.DFM}

resourcestring
  SSpecModelVariantInactiveDept = 'Не можете да задавате неактивно Главно Изпълнително ТП!';
  SOperationsDeptNotFound = 'Не е намерен етап с това ТП!';
  SNoSpecification = 'Няма Принципен МОДЕл за този Управляем Обект!';
  SCheckOperations = 'Проверка на ниво?';
  SInvalidAuthorCode = 'Некоректен код на Създал';
  SSpecificationAlreadyExists = 'Вече съществува Принципен МОДЕл за Управляем Обект "%s" Nо: %s!';
  SModelVariantMinQuantityExceeds = 'Максималното количество трябва да е по-голямо от минималното';
  SConfirmParentDeletion = 'Ще бъдат изтрити и всички части на тази Крайна Структурна Част. Желаете ли да продължите?';
  SConfirmA4Print = 'На лист А4 формат ли желаете да печатате?';
  SModelVariantIsCorrect = 'Вариантът на МОДЕл-а е коректен.';
  SSpecificationDeleted = 'Не можете да обновите тази КСЧ, тъй като Принципният й МОДЕл е изтрит.';
  SNoModelVariants = 'Не сте въвели варианти на Принципния МОДЕл';
  SPrintNotes = 'Печат на бележките?';
  SStageLevel = 'Етапно';
  SOperationsLevel = 'Операционно';
  SNoProductModelVariants = 'Няма варианти на П-МОДЕл-а на този УОб';

  plblSpecState = 'Принципен МОДЕл';
  plblSpecStateCode = 'ПИР Статус';
  plblStructCoef = 'Вид ИнжСтр';
  plblSpecTypeName = 'Управляем Обект';
  plblSpecProductName = 'КСЯ';
  plblVariantNo = 'Вар No';
  plblMainDeptIdentifier = 'ТП Реализатор';
  plblManufacturerName = 'Създал Управляемия Обект';
  plblCompanyProductNames = 'Означения от Партньори';
  plblInvestedValueDate = 'Към дата';
  plblInvestedValueQty = 'Партида';
  plblInvestedValueType = 'Тип';
  plblTotalInvestedValue = 'Общо';
  plblDetailStruct = 'Структура на детайл';
  plblNoAsText = 'Структурен номер';
  plblDetailName = 'Наименование';
  plblDetailNo = '№';
  plblTaskName = 'Нормативно задание';
  plblInvestedValue = 'Вложена Стойност';

const
  SpecFirstModelDeptColumnIndex = 4;
  SpecPrintStaticColumnsCount = 14;
  StageDays = ' [%d/%d]';
  StageDeptColumnWidth = 85;
  PrintStageDeptColumnWidth = 70;

{ TfmSpecification }

procedure TfmSpecification.OpenDataSets;
begin
  cdsSpecificationTypes.Open;
  cdsBranches.Open;

  inherited;

  cdsSpecModelVariantLines.Open;
  cdsSpecModelVariantStages.Open;
  cdsOperations.Open;
  cdsSpecModelVariants.Open;
  cdsSpecModelVariantTasks.Open;
  cdsSpecModelVariantTaskDepts.Open;
end;

procedure TfmSpecification.ClearSpecModelVariantChangeEmployeeCode;
begin
  if not FNoModelChange.IsEntered then
    cdsSpecModelVariantsCHANGE_EMPLOYEE_CODE.Clear;
end;

procedure TfmSpecification.CloseDataSets;
begin
  cdsModel.Close;

  cdsSpecModelVariantTaskDepts.Close;
  cdsSpecModelVariantTasks.Close;
  cdsSpecModelVariants.Close;
  cdsOperations.IndexName:= '';
  cdsOperations.Close;
  cdsSpecModelVariantStages.Close;
  cdsSpecModelVariantLines.Close;

  inherited;

  cdsBranches.Close;
  cdsSpecificationTypes.Close;
end;

procedure TfmSpecification.cdsGridDataNewRecord(DataSet: TDataSet);
var
  i: Integer;
begin
  if FCreatingLike then Exit;

  cdsGridDataSPEC_PRODUCT_CODE.AsVariant:= cdsDataSPEC_PRODUCT_CODE.AsVariant;
  cdsGridDataSPEC_LINE_CODE.AsInteger:= NewSpecLineCode;
  cdsGridDataIS_STRUCT_CHANGED.AsBoolean:= False;

  with NewLineData do
    begin
      for i:= 1 to MaxNoPos do
        GetNoField(i).AsInteger:= No[i];

      if (ParentSpecLineCode = 0) then     // the root
        cdsGridDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat:= 1
      else
        begin
          cdsGridDataPARENT_SPEC_LINE_CODE.AsInteger:= ParentSpecLineCode;
          cdsGridDataPAR_TOTAL_DETAIL_TECH_QUANTITY.AsFloat:= ParentTotalDetailTechQuantity;
        end;   { if }
    end;

  inherited;
end;

procedure TfmSpecification.LocateParent;
begin
  cdsGridData.Locate('SPEC_LINE_CODE', cdsGridDataPARENT_SPEC_LINE_CODE.AsInteger, []);
end;

procedure TfmSpecification.actAddSpecificationExecute(Sender: TObject);
var
  ParentNoStack: array[1..MaxNoPos, 1..MaxNoPos] of Integer;
  ParentNoStackCount: Integer;
  SaveModelVariantLinesBookmark: TBookmark;
  SaveModelVariantLinesFiltered: Boolean;
  LinesBookmark: TBookmark;
  StagesBookmark: TBookmark;
  i: Integer;
  SpecModelVariantsSaveRecNo: Integer;
  SpecModelVariantsSaveFiltered: Boolean;

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

var
  SpecProductCode: Variant;
  SaveCursor: TCursor;
  SaveFiltered: Boolean;
  ImportedSpecParentLevel: Integer;
  b: TBookmark;

  procedure AddTheSpecification(ASpecProductCode: Integer);

    procedure AddTheChild;
    begin
//      CalcChildAndForkCount;
      PrepareNewLineData(almAddChild);
      cdsGridData.Append;
      try
        cdsGridDataDETAIL_CODE.AsVariant:= cdsInsertSpecLinesDETAIL_CODE.AsVariant;
        cdsGridDataDETAIL_NAME.AsVariant:= cdsInsertSpecLinesDETAIL_NAME.AsVariant;
        cdsGridDataDETAIL_NO.AsVariant:= cdsInsertSpecLinesDETAIL_NO.AsVariant;
        cdsGridDataDETAIL_TECH_MEASURE_CODE.AsVariant:= cdsInsertSpecLinesDETAIL_TECH_MEASURE_CODE.AsVariant;
        cdsGridDataDETAIL_HAS_DOCUMENTATION.AsVariant:= cdsInsertSpecLinesDETAIL_HAS_DOCUMENTATION.AsVariant;
        cdsGridDataDETAIL_HAS_SPEC.AsVariant:= cdsInsertSpecLinesDETAIL_HAS_SPEC.AsVariant;
        cdsGridDataDETAIL_IS_INACTIVE.AsVariant:= cdsInsertSpecLinesDETAIL_IS_INACTIVE.AsVariant;
        cdsGridDataDETAIL_PARENT_CODE.AsVariant:= cdsInsertSpecLinesDETAIL_PARENT_CODE.AsVariant;
        cdsGridDataDETAIL_IS_SELF_APPROVED.AsVariant:= cdsInsertSpecLinesDETAIL_IS_SELF_APPROVED.AsVariant;
        cdsGridDataDETAIL_TECH_QUANTITY.AsVariant:= cdsInsertSpecLinesDETAIL_TECH_QUANTITY.AsVariant;
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
        cdsGridDataIS_IMPORTED.AsVariant:= cdsInsertSpecLinesIS_IMPORTED.AsVariant;
        cdsGridDataIS_FOR_SINGLE_USE.AsVariant:= cdsInsertSpecLinesIS_FOR_SINGLE_USE.AsVariant;
        cdsGridDataIS_COMPLETE.AsVariant:= cdsInsertSpecLinesIS_COMPLETE.AsVariant;

        cdsGridDataIS_IMPORTED_SUBDETAIL.AsInteger:=
          LastNoPos - ImportedSpecParentLevel - 1;

        cdsGridData.Post;
      except
        cdsGridData.Cancel;
        raise;
      end;   { try }

      IncChildCount(LastNoPos-1);
    end;   { AddTheChild }

    procedure AddModelVariantLines;

      procedure AddStages;
      var
        OperationVariant0DocBranchCode: Integer;
        OperationVariant0DocCode: Integer;

        procedure AddOperations;
        begin
          while not cdsInsertSMVSOperations.Eof do
            begin
              NewOperationData.SetData(-1, -1);
              cdsOperations.Append;
              try
                cdsOperationsSMVS_OPERATION_NO.AsVariant:= cdsInsertSMVSOperationsSMVS_OPERATION_NO.AsVariant;
                cdsOperationsSMVS_OPERATION_VARIANT_NO.AsVariant:= cdsInsertSMVSOperationsSMVS_OPERATION_VARIANT_NO.AsVariant;
                cdsOperationsOPERATION_TYPE_CODE.AsVariant:= cdsInsertSMVSOperationsOPERATION_TYPE_CODE.AsVariant;
                cdsOperationsIS_NORMAL_OPERATION.AsVariant:= cdsInsertSMVSOperationsIS_NORMAL_OPERATION.AsVariant;
                cdsOperationsDEPT_CODE.AsVariant:= cdsInsertSMVSOperationsDEPT_CODE.AsVariant;
                cdsOperationsDEPT_NAME.AsVariant:= cdsInsertSMVSOperationsDEPT_NAME.AsVariant;
                cdsOperationsDEPT_IDENTIFIER.AsVariant:= cdsInsertSMVSOperationsDEPT_IDENTIFIER.AsVariant;
                cdsOperationsDEPT_PRODUCT_CODE.AsVariant:= cdsInsertSMVSOperationsDEPT_PRODUCT_CODE.AsVariant;
                cdsOperationsDEPT_PARENT_CODE.AsVariant:= cdsInsertSMVSOperationsDEPT_PARENT_CODE.AsVariant;
                cdsOperationsDEPT_BEGIN_DATE.AsVariant:= cdsInsertSMVSOperationsDEPT_BEGIN_DATE.AsVariant;
                cdsOperationsDEPT_END_DATE.AsVariant:= cdsInsertSMVSOperationsDEPT_END_DATE.AsVariant;
                cdsOperationsSETUP_PROFESSION_CODE.AsVariant:= cdsInsertSMVSOperationsSETUP_PROFESSION_CODE.AsVariant;
                cdsOperationsSETUP_EFFORT_COEF.AsVariant:= cdsInsertSMVSOperationsSETUP_EFFORT_COEF.AsVariant;
                cdsOperationsSETUP_HOUR_TECH_QUANTITY.AsVariant:= cdsInsertSMVSOperationsSETUP_HOUR_TECH_QUANTITY.AsVariant;
                cdsOperationsSETUP_COUNT.AsVariant:= cdsInsertSMVSOperationsSETUP_COUNT.AsVariant;
                cdsOperationsPROFESSION_CODE.AsVariant:= cdsInsertSMVSOperationsPROFESSION_CODE.AsVariant;
                cdsOperationsEFFORT_COEF.AsVariant:= cdsInsertSMVSOperationsEFFORT_COEF.AsVariant;
                cdsOperationsHOUR_TECH_QUANTITY.AsVariant:= cdsInsertSMVSOperationsHOUR_TECH_QUANTITY.AsVariant;
                cdsOperationsPROGRAM_TOOL_PRODUCT_CODE.AsVariant:= cdsInsertSMVSOperationsPROGRAM_TOOL_PRODUCT_CODE.AsVariant;
                cdsOperationsPROGRAM_TOOL_PRODUCT_NAME.AsVariant:= cdsInsertSMVSOperationsPROGRAM_TOOL_PRODUCT_NAME.AsVariant;
                cdsOperationsPROGRAM_TOOL_PRODUCT_NO.AsVariant:= cdsInsertSMVSOperationsPROGRAM_TOOL_PRODUCT_NO.AsVariant;
                cdsOperationsSPECIFIC_TOOL_PRODUCT_CODE.AsVariant:= cdsInsertSMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE.AsVariant;
                cdsOperationsSPECIFIC_TOOL_PRODUCT_NAME.AsVariant:= cdsInsertSMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME.AsVariant;
                cdsOperationsSPECIFIC_TOOL_PRODUCT_NO.AsVariant:= cdsInsertSMVSOperationsSPECIFIC_TOOL_PRODUCT_NO.AsVariant;
                cdsOperationsTYPICAL_TOOL_PRODUCT_CODE.AsVariant:= cdsInsertSMVSOperationsTYPICAL_TOOL_PRODUCT_CODE.AsVariant;
                cdsOperationsTYPICAL_TOOL_PRODUCT_NAME.AsVariant:= cdsInsertSMVSOperationsTYPICAL_TOOL_PRODUCT_NAME.AsVariant;
                cdsOperationsTYPICAL_TOOL_PRODUCT_NO.AsVariant:= cdsInsertSMVSOperationsTYPICAL_TOOL_PRODUCT_NO.AsVariant;
                cdsOperationsNOTES.AsVariant:= cdsInsertSMVSOperationsNOTES.AsVariant;
                cdsOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY.AsVariant:= cdsInsertSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY.AsVariant;
                cdsOperationsTYPICAL_TOOL_DETAIL_TECH_QTY.AsVariant:= cdsInsertSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY.AsVariant;
                cdsOperationsPROGRAM_TOOL_REQUIREMENT_CODE.AsVariant:= cdsInsertSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE.AsVariant;
                cdsOperationsSPECIFIC_TOOL_REQUIREMENT_CODE.AsVariant:= cdsInsertSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE.AsVariant;
                cdsOperationsTYPICAL_TOOL_REQUIREMENT_CODE.AsVariant:= cdsInsertSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE.AsVariant;
                cdsOperationsPROGRAM_TOOL_IS_COMPLETE.AsVariant:= cdsInsertSMVSOperationsPROGRAM_TOOL_IS_COMPLETE.AsVariant;
                cdsOperationsSPECIFIC_TOOL_IS_COMPLETE.AsVariant:= cdsInsertSMVSOperationsSPECIFIC_TOOL_IS_COMPLETE.AsVariant;
                cdsOperationsTYPICAL_TOOL_IS_COMPLETE.AsVariant:= cdsInsertSMVSOperationsTYPICAL_TOOL_IS_COMPLETE.AsVariant;
                cdsOperationsTREATMENT_BEGIN_WORKDAY_NO.AsVariant:= cdsInsertSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO.AsVariant;
                cdsOperationsTREATMENT_WORKDAYS.AsVariant:= cdsInsertSMVSOperationsTREATMENT_WORKDAYS.AsVariant;
                cdsOperationsHAS_SPECIAL_CONTROL.AsVariant:= cdsInsertSMVSOperationsHAS_SPECIAL_CONTROL.AsVariant;
                cdsOperationsIS_AUTO_MOVEMENT.AsVariant:= cdsInsertSMVSOperationsIS_AUTO_MOVEMENT.AsVariant;
                cdsOperationsIS_AUTO_SETUP.AsVariant:= cdsInsertSMVSOperationsIS_AUTO_SETUP.AsVariant;
                cdsOperationsD_HOUR_PRICE.AsVariant:= cdsInsertSMVSOperationsD_HOUR_PRICE.AsVariant;
                cdsOperationsD_MAINTAINANCE_HOUR_PRICE.AsVariant:= cdsInsertSMVSOperationsD_MAINTAINANCE_HOUR_PRICE.AsVariant;
                cdsOperationsD_PARALLEL_OPERATOR_COUNT.AsVariant:= cdsInsertSMVSOperationsD_PARALLEL_OPERATOR_COUNT.AsVariant;
                cdsOperationsD_PARALLEL_PROCESS_COUNT.AsVariant:= cdsInsertSMVSOperationsD_PARALLEL_PROCESS_COUNT.AsVariant;

                cdsOperationsHAS_DOCUMENTATION.AsVariant:= cdsInsertSMVSOperationsHAS_DOCUMENTATION.AsVariant;
                cdsOperationsDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant:= cdsInsertSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant;
                cdsOperationsDOC_IS_COMPLETE.AsVariant:= cdsInsertSMVSOperationsDOC_IS_COMPLETE.AsVariant;
                cdsOperationsUNAPPROVED_ACTIVE_DI_COUNT.AsVariant:= cdsInsertSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT.AsVariant;

                if (cdsOperationsSMVS_OPERATION_VARIANT_NO.AsInteger = 0) then
                  begin
                    dmDocClient.CreateDocLike(
                      cdsInsertSMVSOperationsDOC_BRANCH_CODE.AsInteger,
                      cdsInsertSMVSOperationsDOC_CODE.AsInteger,
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
              end;   { try }

              cdsInsertSMVSOperations.Next;
            end;   { while }
        end;   { AddOperations }

      var
        StageNo: Integer;
      begin
        if cdsInsertSpecLinesPRODUCT_CODE.IsNull then
          StageNo:= 1
        else
          StageNo:= 0;

        cdsInsertSpecLineModelStages.First;
        while not cdsInsertSpecLineModelStages.EOF do
          begin
            cdsSpecModelVariantStages.Append;
            try
              cdsSpecModelVariantStagesSPEC_MODEL_VARIANT_NO.AsVariant:= cdsSpecModelVariantLinesSPEC_MODEL_VARIANT_NO.AsVariant;
              cdsSpecModelVariantStagesSPEC_LINE_STAGE_CODE.AsVariant:= cdsInsertSpecLineModelStagesSPEC_LINE_STAGE_CODE.AsVariant;
              cdsSpecModelVariantStagesSPEC_LINE_STAGE_NO.AsInteger:= StageNo;
              cdsSpecModelVariantStagesDEPT_CODE.AsVariant:= cdsInsertSpecLineModelStagesDEPT_CODE.AsVariant;
              cdsSpecModelVariantStagesDEPT_NAME.AsVariant:= cdsInsertSpecLineModelStagesDEPT_NAME.AsVariant;
              cdsSpecModelVariantStagesDEPT_IDENTIFIER.AsVariant:= cdsInsertSpecLineModelStagesDEPT_IDENTIFIER.AsVariant;
              cdsSpecModelVariantStagesDEPT_IS_STORE.AsVariant:= cdsInsertSpecLineModelStagesDEPT_IS_STORE.AsVariant;
              cdsSpecModelVariantStagesDEPT_BEGIN_DATE.AsVariant:= cdsInsertSpecLineModelStagesDEPT_BEGIN_DATE.AsVariant;
              cdsSpecModelVariantStagesDEPT_END_DATE.AsVariant:= cdsInsertSpecLineModelStagesDEPT_END_DATE.AsVariant;
              cdsSpecModelVariantStagesTREATMENT_WORKDAYS.AsVariant:= cdsInsertSpecLineModelStagesTREATMENT_WORKDAYS.AsVariant;
              cdsSpecModelVariantStagesTOTAL_TREATMENT_WORKDAYS.AsVariant:= cdsInsertSpecLineModelStagesTOTAL_TREATMENT_WORKDAYS.AsVariant;
              cdsSpecModelVariantStagesOUTGOING_WORKDAYS.AsVariant:= cdsInsertSpecLineModelStagesOUTGOING_WORKDAYS.AsVariant;
              cdsSpecModelVariantStagesIS_AUTO_MOVEMENT.AsVariant:= cdsInsertSpecLineModelStagesIS_AUTO_MOVEMENT.AsVariant;
              cdsSpecModelVariantStagesHAS_DOCUMENTATION.AsVariant:= cdsInsertSpecLineModelStagesHAS_DOCUMENTATION.AsVariant;
              cdsSpecModelVariantStagesDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant:= cdsInsertSpecLineModelStagesDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant;
              cdsSpecModelVariantStagesDOC_IS_COMPLETE.AsVariant:= cdsInsertSpecLineModelStagesDOC_IS_COMPLETE.AsVariant;
              cdsSpecModelVariantStagesUNAPPROVED_ACTIVE_DI_COUNT.AsVariant:= cdsInsertSpecLineModelStagesUNAPPROVED_ACTIVE_DI_COUNT.AsVariant;
              cdsSpecModelVariantStagesSMVS_TYPE_CODE.AsVariant:= cdsInsertSpecLineModelStagesSMVS_TYPE_CODE.AsVariant;
              cdsSpecModelVariantStagesEXTERNAL_WORK_PRICE.AsVariant:= cdsInsertSpecLineModelStagesEXTERNAL_WORK_PRICE.AsVariant;
              cdsSpecModelVariantStagesOPERATION_COUNT.AsVariant:= cdsInsertSpecLineModelStagesOPERATION_COUNT.AsVariant;

              dmDocClient.CreateDocLike(
                cdsInsertSpecLineModelStagesDOC_BRANCH_CODE.AsInteger,
                cdsInsertSpecLineModelStagesDOC_CODE.AsInteger,
                True,
                cdsSpecModelVariantStagesDOC_BRANCH_CODE,
                cdsSpecModelVariantStagesDOC_CODE);

              if cdsSpecModelVariantStagesDOC_CODE.IsNull then
                begin
                  cdsSpecModelVariantStagesHAS_DOCUMENTATION.AsBoolean:= False;
                  cdsSpecModelVariantStagesDOC_EMPTINESS_REQUIREMENT_CODE.Clear;
                  cdsSpecModelVariantStagesDOC_IS_COMPLETE.AsBoolean:= False;
                  cdsSpecModelVariantStagesUNAPPROVED_ACTIVE_DI_COUNT.Clear;
                end;

              cdsSpecModelVariantStages.Post;
            except
              cdsSpecModelVariantStages.Cancel;
              raise;
            end;   { try }

            Inc(StageNo);

            if (cdsSpecModelVariantStagesOUTGOING_WORKDAYS.AsInteger > 0) then
              AddOperations;

            cdsInsertSpecLineModelStages.Next;
          end;   { while }
      end;   { AddStages }


    begin
      cdsInsertSpecModelVariantLines.First;
      while not cdsInsertSpecModelVariantLines.EOF do
        begin
          cdsCopyInSpecModelVariants.First;
          while not cdsCopyInSpecModelVariants.EOF do
            begin
              if (cdsCopyInSpecModelVariantsINSERT_MODEL_VARIANT_NO.AsInteger =
                  cdsInsertSpecModelVariantLinesSPEC_MODEL_VARIANT_NO.AsInteger) then
                begin
                  // set import variant
                  cdsSpecModelVariantLines.Locate('SPEC_MODEL_VARIANT_NO',
                    cdsCopyInSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger,
                    []);

                  cdsSpecModelVariantLines.Edit;
                  try
                    cdsSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE.AsVariant:= 
                      cdsInsertSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE.AsVariant;
                    cdsSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO.AsVariant:= 
                      cdsInsertSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO.AsVariant;
                    cdsSpecModelVariantLinesAPPROVE_CYCLE_NO.AsVariant:=
                      cdsInsertSpecModelVariantLinesAPPROVE_CYCLE_NO.AsVariant;

                    cdsSpecModelVariantLines.Post;
                  except
                    cdsSpecModelVariantLines.Cancel;
                    raise;
                  end;   { try }

                  AddStages;
                end;   { if }

              cdsCopyInSpecModelVariants.Next;
            end;   { while }

          cdsInsertSpecModelVariantLines.Next;
        end;   { while }
    end;   { AddModelVariantLines }

  var
    i: Integer;
    SaveOperationsAutoCalcFields: Boolean;
  begin
    with cdsGridData do
      begin
        SaveCursor:= Screen.Cursor;
        Screen.Cursor:= crHourGlass;
        try
          FAddingSpecification:= True;
          try
            DisableControls;
            cdsSpecModelVariantLines.DisableControls;
            cdsSpecModelVariantStages.DisableControls;
            cdsOperations.DisableControls;
            try
              SaveOperationsAutoCalcFields:= cdsOperations.AutoCalcFields;
              cdsOperations.AutoCalcFields:= False;
              try
                SaveFiltered:= cdsSpecModelVariantLines.Filtered;
                cdsSpecModelVariantLines.Filtered:= False;
                try
                  cdsInsertSpecLines.Params.ParamByName('SPEC_PRODUCT_CODE').AsFloat:= ASpecProductCode;

                  cdsInsertSpecLines.Open;
                  try
                    cdsInsertSpecLineModelStages.Open;
                    try
                      cdsInsertSMVSOperations.Open;
                      try
                        if FInsertingSpecification then LocateParent;

                        ParentNoStackCount:= 0;
                        ImportedSpecParentLevel:= LastNoPos;

                        while not cdsInsertSpecLines.EOF do
                          begin
                            while not ParentSameAsPeek do
                              begin
                                Pop;
                                LocateParent;
                              end;   { while }

                            AddTheChild;

                            AddModelVariantLines;

                            Push;

                            cdsInsertSpecLines.Next;
                          end;   { while }

                        for i:= 2 to ParentNoStackCount do
                          LocateParent;

                        UpdateParentAfterAdd;

                        // get parent's first model stages

                        cdsSpecLineLastModelStages.CreateDataSet;
                        try
                          b:= Bookmark;
                          try
                            LocateParent;

                            cdsSpecModelVariantLines.First;
                            while not cdsSpecModelVariantLines.EOF do
                              begin
                                if (cdsSpecModelVariantStages.RecordCount > 0) then
                                  begin
                                    cdsSpecModelVariantStages.First;

                                    cdsSpecLineLastModelStages.Append;
                                    try
                                      cdsSpecLineLastModelStagesSPEC_MODEL_VARIANT_NO.AsVariant:=
                                        cdsSpecModelVariantStagesSPEC_MODEL_VARIANT_NO.AsVariant;
                                      cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_CODE.AsVariant:=
                                        cdsSpecModelVariantStagesDEPT_CODE.AsVariant;
                                      cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_NAME.AsVariant:=
                                        cdsSpecModelVariantStagesDEPT_NAME.AsVariant;
                                      cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_IDENTIFIER.AsVariant:=
                                        cdsSpecModelVariantStagesDEPT_IDENTIFIER.AsVariant;
                                      cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_IS_STORE.AsVariant:=
                                        cdsSpecModelVariantStagesDEPT_IS_STORE.AsVariant;

                                      cdsSpecLineLastModelStages.Post;
                                    except
                                      cdsSpecLineLastModelStages.Cancel;
                                      raise;
                                    end;   { try }
                                  end;   { if }

                                cdsSpecModelVariantLines.Next;
                              end;   { while }
                          finally
                            Bookmark:= b;
                          end;   { try }

                          cdsSpecModelVariantLines.First;
                          while not cdsSpecModelVariantLines.EOF do
                            begin
                              if (not (cdsSpecModelVariantStages.BOF and cdsSpecModelVariantStages.EOF)) and
                                 cdsSpecLineLastModelStages.Locate('SPEC_MODEL_VARIANT_NO',
                                   cdsSpecModelVariantLinesSPEC_MODEL_VARIANT_NO.AsInteger, []) then
                                begin
                                  cdsSpecModelVariantStages.Last;

                                  cdsSpecModelVariantStages.Edit;
                                  try
                                    cdsSpecModelVariantStagesDEPT_CODE.AsVariant:=
                                      cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_CODE.AsVariant;
                                    cdsSpecModelVariantStagesDEPT_NAME.AsVariant:=
                                      cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_NAME.AsVariant;
                                    cdsSpecModelVariantStagesDEPT_IDENTIFIER.AsVariant:=
                                      cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_IDENTIFIER.AsVariant;
                                    cdsSpecModelVariantStagesDEPT_IS_STORE.AsVariant:=
                                      cdsSpecLineLastModelStagesFIRST_STAGE_DEPT_IS_STORE.AsVariant;

                                    cdsSpecModelVariantStagesOUTGOING_WORKDAYS.AsInteger:= 0;
                                    cdsSpecModelVariantStagesTREATMENT_WORKDAYS.AsInteger:= 0;
                                    cdsSpecModelVariantStagesIS_AUTO_MOVEMENT.AsBoolean:= False;

                                    cdsSpecModelVariantStages.Post;
                                  except
                                    cdsSpecModelVariantStages.Cancel;
                                    raise;
                                  end;   { try }

                                  cdsSpecModelVariantStages.First;
                                end;   { if }

                              cdsSpecModelVariantLines.Next;
                            end;   { while }
                        finally
                          cdsSpecLineLastModelStages.Close;
                        end;   { try }
                      finally
                        cdsInsertSMVSOperations.Close;
                      end;   { try }
                    finally
                      cdsInsertSpecLineModelStages.Close;
                    end;   { try }
                  finally
                    cdsInsertSpecLines.Close;
                  end;   { try }
                finally
                  cdsSpecModelVariantLines.Filtered:= SaveFiltered;
                end;   { try }
              finally
                cdsOperations.AutoCalcFields:= SaveOperationsAutoCalcFields;
              end;  { try }
            finally
              EnableControls;
              cdsSpecModelVariantLines.EnableControls;
              cdsSpecModelVariantStages.EnableControls;
              cdsOperations.EnableControls;
            end;   { try }
          finally
            FAddingSpecification:= False;
          end;   { try }
        finally
          Screen.Cursor:= SaveCursor;
        end;   { try }

        UpdateFilteredGridData;
      end;   { with }
  end;   { AddTheSpecification }

begin
  inherited;

  SetLength(FAddedSpecificationSpecLineCodes, 0);

  if (not FInsertingSpecification) and
     (not cdsGridDataPRODUCT_CODE.IsNull) and
     (MessageDlgEx(SConfirmMaterialDeletion, mtWarning, mbOkCancel, 0) <> mrOK) then
    Abort;

  if FInsertingSpecification and (FReplaceSpecProductCode > 0) then
    SpecProductCode:= FReplaceSpecProductCode
  else   { if }
    begin
      if not TfmSpecifications.GetSpecification(nil, SpecProductCode, MaxNoPos - LastNoPos - 1) then
        SpecProductCode:= 0;
    end;   { if }

  if VarIsArray(SpecProductCode) or (SpecProductCode > 0) then
    begin
      if not VarIsArray(SpecProductCode) then
        SpecProductCode:= VarArrayOf([SpecProductCode]);

      for i:= VarArrayLowBound(SpecProductCode, 1) to VarArrayHighBound(SpecProductCode, 1) do
        begin
          if (i > VarArrayLowBound(SpecProductCode, 1)) then
            LocateParent;

          if FInsertingSpecification then
            begin
              cdsGridData.DisableControls;
              try
                GetStagesClientDataSet.DisableControls;
                try
                  LinesBookmark:= cdsGridData.Bookmark;
                  StagesBookmark:= GetStagesClientDataSet.Bookmark;
                  try
                    LocateParent;
                    FAddSpecificationParentDetailCode:= cdsGridDataDETAIL_CODE.AsInteger;
                  finally
                    cdsGridData.Bookmark:= LinesBookmark;
                    GetStagesClientDataSet.Bookmark:= StagesBookmark;
                  end;
                finally
                  GetStagesClientDataSet.EnableControls;
                end;
              finally
                cdsGridData.EnableControls;
              end;
            end
          else
            FAddSpecificationParentDetailCode:= cdsGridDataDETAIL_CODE.AsInteger;

          cdsAuthorizedModelVariants.Params.ParamByName('SPEC_PRODUCT_CODE').AsFloat:= SpecProductCode[i];

          cdsAuthorizedModelVariants.Open;
          try
            cdsCopyInSpecModelVariants.CreateDataSet;
            try
              cdsSpecModelVariantLines.DisableControls;
              try
                SaveModelVariantLinesBookmark:= cdsSpecModelVariantLines.Bookmark;
                try
                  SaveModelVariantLinesFiltered:= cdsSpecModelVariantLines.Filtered;
                  cdsSpecModelVariantLines.Filtered:= False;
                  try
                    cdsSpecModelVariants.TempDisableControls/
                      cdsSpecModelVariants.PreserveBookmark/
                        cdsSpecModelVariants.TempUnfilter/
                          cdsSpecModelVariants.ForEach/
                            cdsCopyInSpecModelVariants.SafeAppend/
                              procedure begin
                                cdsCopyInSpecModelVariants.AssignFields(cdsSpecModelVariants);

                                if (FReplaceSpecProductCode > 0) and
                                   cdsSpecModelVariantLines.Locate('SPEC_MODEL_VARIANT_NO', cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger, []) and
                                   (cdsSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE.AsInteger = SpecProductCode[i]) then
                                  cdsCopyInSpecModelVariantsINSERT_MODEL_VARIANT_NO.AsVariant:= cdsSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO.AsVariant;
                              end;
                  finally
                    cdsSpecModelVariantLines.Filtered:= SaveModelVariantLinesFiltered;
                  end;
                finally
                  cdsSpecModelVariantLines.Bookmark:= SaveModelVariantLinesBookmark;
                end;
              finally
                cdsSpecModelVariantLines.EnableControls;
              end;

              cdsCopyInSpecModelVariants.Locate('SPEC_MODEL_VARIANT_NO', CurrentModelVariantNo, []);

              if (cdsAuthorizedModelVariants.RecordCount = 0) or
                 (cdsSpecModelVariants.RecordCount = 0) or
                 TfmSpecModelVariantsCopyTo.ShowForm(dmDocClient, cdsCopyInSpecModelVariants) then
                begin
                  if (VarToInt(cdsCopyInSpecModelVariants_MAX_INSERT_MODEL_VARIANT_NO.AsVariant) > 0) then
                    dmDocClient.ReserveDocCodes(dmDocClient.LoadSpecDocs(SpecProductCode[i], 0, False, True));

                  cdsSpecModelVariants.DisableControls;
                  try
                    SpecModelVariantsSaveRecNo:= cdsSpecModelVariants.RecNo;
                    try
                      SpecModelVariantsSaveFiltered:= cdsSpecModelVariants.Filtered;
                      cdsSpecModelVariants.Filtered:= False;
                      try
                        AddTheSpecification(SpecProductCode[i]);
                      finally
                        cdsSpecModelVariants.Filtered:= SpecModelVariantsSaveFiltered;
                      end;
                    finally
                      cdsSpecModelVariants.RecNo:= SpecModelVariantsSaveRecNo;
                    end;
                  finally
                    cdsSpecModelVariants.EnableControls;
                  end;

                  SetLength(FAddedSpecificationSpecLineCodes, Length(FAddedSpecificationSpecLineCodes)+1);
                  FAddedSpecificationSpecLineCodes[Length(FAddedSpecificationSpecLineCodes)-1]:= cdsGridDataSPEC_LINE_CODE.AsInteger;
                end;
            finally
              cdsCopyInSpecModelVariants.Close;
            end;   { try }
          finally
            cdsAuthorizedModelVariants.Close;
          end;   { try }
        end;  { for }
    end
  else
    Abort;   // zaradi AddBrotherSpec
end;

procedure TfmSpecification.PrepareNewLineData(AddLineMode: TAddLineMode);
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

          ParentSpecLineCode:= 0;
        end;

      almAddChild, almAddBrother:
        begin
          for i:= 1 to MaxNoPos do
            No[i]:= GetNoField(i).AsInteger;

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

                    ParentTotalDetailTechQuantity:= cdsGridDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat;
                  finally
                    Bookmark:= b;
                  end;   { try }
                finally
                  EnableControls;
                end;   { try }
              end   { with }
          else   { if }
            begin
              ParentTotalDetailTechQuantity:= cdsGridDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat;
            end;

          if (AddLineMode = almAddChild) then
            ParentSpecLineCode:= cdsGridDataSPEC_LINE_CODE.AsInteger
          else
            ParentSpecLineCode:= cdsGridDataPARENT_SPEC_LINE_CODE.AsInteger;
        end;
    else   { case }
      UnknownAddLineModeError;
    end;   { case }
end;

function TfmSpecification.ShowEditForm(AEditMode: TEditMode): Boolean;
var
  EditQuantityOnly: Boolean;
begin
  EditQuantityOnly:=
    (AEditMode = emEdit) and
    cdsGridDataIS_IMPORTED.AsBoolean;

  if (AEditMode <> emInsert) and
     (ChildCount > 0) then
    Result:= TfmSpecDetail.ShowForm(dmDocClient, cdsGridData, AEditMode, EditQuantityOnly)
  else
    Result:= TfmSpecMaterial.ShowForm(dmDocClient, cdsGridData, AEditMode, EditQuantityOnly);
end;

procedure TfmSpecification.cdsDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsData_IS_VALID.AsBoolean:=
    not cdsDataAUTHORIZATION_EMPLOYEE_CODE.IsNull;
  cdsData_PRINT_AUTHORIZATION_DATE.Assign(cdsDataAUTHORIZATION_DATE);
end;

procedure TfmSpecification.cdsDataAUTHOR_EMPLOYEE_CODEChange(
  Sender: TField);
begin
  inherited;

  if not Sender.IsNull and cdsData_AUTHOR_NAME.IsNull then
    raise Exception.Create(SInvalidAuthorCode);
end;

procedure TfmSpecification.FormCreate(Sender: TObject);
begin
  inherited;

  lblTotalInvestedValueCurrencyAbbrev.Caption:= '';

  ReportClass:= TrptSpecification;
  TasksReportClass:= TrptSpecModelTasks;
  RecursiveReportClass:= TrptSpecRecursivePrint;
  UnapproveFormClass:= TfmSpecUnapprove;

  SetSecondaryCurrencyAbbrevColumnCaption(grdLines2.Columns[12]);
  SetSecondaryCurrencyAbbrevColumnCaption(grdLines2.Columns[13]);

  frSpecProduct.FieldNames:= 'SPEC_PRODUCT_CODE';
  frSpecProduct.TreeDetailSelection:= tdsInstance;

  RegisterDateField(cdsDataCREATE_DATE);
  RegisterDateField(cdsDataAUTHORIZATION_DATE);

  frCreateDate.FieldNames:= 'CREATE_DATE';
  frAuthorizationDate.FieldNames:= 'AUTHORIZATION_DATE';

  frManufacturer.FieldNames:= 'MANUFACTURER_COMPANY_CODE';
  frManufacturer.ShowOurCompany:= True;
//  frManufacturer.FilterCompanyKind:= ck       lipsa filter za manufacturer

  frAuthor.FieldNames:= 'AUTHOR_EMPLOYEE_CODE';
  frAuthor.DocButtonVisible:= False;

  RegisterFieldTextVisibility(
    IsHighLevelInvestedValueVisible,
    cdsSpecModelVariantStagesEXTERNAL_WORK_PRICE);
end;

procedure TfmSpecification.FormShow(Sender: TObject);
begin
  inherited;
  CreateDBGridSearchFor(grdModelVariants, tlbTopButtons, NormalizedToolbar(tlbTopButtons).Width);
end;

procedure TfmSpecification.cdsGridDataPAR_TOTAL_DETAIL_TECH_QUANTITYChange(
  Sender: TField);
begin
  inherited;
  if not FCreatingLike then
    CalcTotalDetailQuantity;
end;

procedure TfmSpecification.cdsGridDataPRODUCT_SECONDARY_SINGLE_PRICEChange(
  Sender: TField);
begin
  if not FCreatingLike then
    inherited;
end;

procedure TfmSpecification.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frSpecProduct) then
    begin
      AFrame.ReadOnly:=
        cdsGridData.Active and
        ( (cdsGridData.RecordCount > 1) or
          (not CanModifyData) or
          (EditMode <> emInsert) or
          (not cdsDataSPEC_PRODUCT_CODE.IsNull) );
      Exit;
    end;

  if (AFrame = frCreateDate) or
     (AFrame = frAuthorizationDate) then
    begin
      AFrame.ReadOnly:= True;
      Exit;
    end;

  if (AFrame = frManufacturer) or (AFrame = frAuthor) then
    begin
      AFrame.ReadOnly:= cdsData.Active and (not CanModifyData);
      Exit;
    end;

  inherited;
end;

procedure TfmSpecification.SetInitialSpecModelVariantNo(
  const ASpecModelVariantNo: Integer);
begin
  cdsSpecModelVariants.Filtered:= False;
  try
    cdsSpecModelVariants.Locate('SPEC_MODEL_VARIANT_NO', ASpecModelVariantNo, []);
  finally
    cdsSpecModelVariants.Filtered:= not cdsSpecModelVariantsIS_INACTIVE.AsBoolean;
    CurrentModelVariantNo:= ASpecModelVariantNo;
  end;
end;

procedure TfmSpecification.SetLineAndStageAndOperationDeptPriceFields;
var
  SaveCurrentModelVariantNo: Integer;
begin
  cdsSpecModelVariants.DisableControls;
  try
    SaveCurrentModelVariantNo:= CurrentModelVariantNo;
    try
      inherited;
      ChangeAfterModelGeneration:= True;
    finally
      CurrentModelVariantNo:= SaveCurrentModelVariantNo;
    end;
  finally
    cdsSpecModelVariants.EnableControls;
  end;
end;

procedure TfmSpecification.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  if FCreatingLike or FRelocatingSpecification then Exit;

  if cdsGridDataPRODUCT_CODE.IsNull then
    cdsGridDataPRODUCT_TECH_QUANTITY.Clear;

  if (not FDeletingLine) and
     (not UpdatingFilteredGridData) and
     (cdsGridDataNO_1.AsInteger > 0) and
     (not cdsGridDataIS_IMPORTED.AsBoolean) and
     (cdsGridDataPRODUCT_CODE.IsNull or
      (cdsGridDataDETAIL_HAS_SPEC.AsBoolean and (cdsGridDataPRODUCT_CODE.AsInteger <> cdsGridDataDETAIL_CODE.AsInteger))) then
    raise Exception.Create(SInvalidInlineModelText.Replace('%NoAsText%', ''));

  FPostAfterEdit:= (DataSet.State = dsEdit);
end;

procedure TfmSpecification.cdsDataSPEC_PRODUCT_CODEChange(Sender: TField);
var
  ErrMsg: string;
  Authorized: Boolean;
  AuthorEmployeeCode: Integer;
begin
  inherited;

  if FChangingSpecProductCode or FCreatingLike then Exit;

  DoProductFieldChanged(cdsDataSPEC_PRODUCT_CODE,
    cdsDataSPEC_PRODUCT_NAME, cdsDataSPEC_PRODUCT_NO,
    nil, nil, nil, cdsDataTECH_MEASURE_CODE,
    nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
    cdsDataSPEC_PRODUCT_PARENT_CODE);

  if dmMain.SvrSpecifications.SpecificationExists(cdsDataSPEC_PRODUCT_CODE.AsInteger, Authorized, AuthorEmployeeCode) and
     (EditMode = emInsert) then
    begin
      FChangingSpecProductCode:= True;
      try
        ErrMsg:= Format(SSpecificationAlreadyExists, [
                   cdsDataSPEC_PRODUCT_NAME.AsString,
                   cdsDataSPEC_PRODUCT_NO.AsString]);

        cdsDataSPEC_PRODUCT_CODE.AsVariant:= FOldSpecProductCode;

        DoProductFieldChanged(cdsDataSPEC_PRODUCT_CODE,
          cdsDataSPEC_PRODUCT_NAME, cdsDataSPEC_PRODUCT_NO);
      finally
        FChangingSpecProductCode:= False;
      end;   { try }

      raise Exception.Create(ErrMsg);
    end;


  FOldSpecProductCode:= cdsDataSPEC_PRODUCT_CODE.AsVariant;

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
        cdsGridDataDETAIL_CODE.AsVariant:= cdsDataSPEC_PRODUCT_CODE.AsVariant;
      finally
        Post;
      end;   { try }
    end;   { with }
  UpdateFilteredGridData;

  if (EditMode = emInsert) and
     (not cdsDataSPEC_PRODUCT_CODE.IsNull) and
     (dmMain.SvrSpecifications.GetProductInlineModelCount(cdsDataSPEC_PRODUCT_CODE.AsInteger) > 0) then
    raise Exception.Create(SCantAddSpecWhenInlineModelsText);
end;

function TfmSpecification.GetDelRecordEnabled: Boolean;
begin
  Result:=
    inherited GetDelRecordEnabled and
    cdsGridData.Active and
    (cdsGridData.RecNo > 1) and
    (cdsGridDataIS_IMPORTED_SUBDETAIL.AsInteger = 0);
end;

function TfmSpecification.GetDelStageEnabled: Boolean;
begin
  Result:=
    inherited GetDelStageEnabled and
    not cdsGridDataIS_IMPORTED.AsBoolean;
end;

procedure TfmSpecification.actFormUpdate(Sender: TObject);
var
  ro: Boolean;
  c: TColor;
begin
  inherited;

  if (pcMain.ActivePage = tsModelVariants) then
    navLines.DataSource:= dsSpecModelVariants
  else
    navLines.DataSource:= dsFilteredGridData;

  ro:= cdsData.Active and (not CanModifyData);

  cbSpecType.ReadOnly:= ro;
  edtNotes.ReadOnly:= ro;

  c:= ReadOnlyColors[ro];

  cbSpecType.Color:= c;
  edtNotes.Color:= c;

  pnlAuthorize.Visible:= CanModifyData;
  pnlNewVersion.Visible:= NewVersionEnabled and UserCanEdit;

  btnAuthorizeOperationModelVariant.Visible:=
    (LoginContext.ProductionLevelCode <> plStage);

// nechoveshka izrodshtina
// ako napisha tova na Initialize ili ShowForm, sled tova pri FormUpdate se vrushta na purvia red :-O !!!!!!
  if (FFocusSpecLineCode > 0) then
    begin
      cdsFilteredGridData.Locate('SPEC_LINE_CODE', FFocusSpecLineCode, []);
      LocateDataSet(cdsFilteredGridData, cdsGridData);
      FFocusSpecLineCode:= 0;
    end;

  if (FFocusSpecModelVariantNo > 0) then
    begin
      SetInitialSpecModelVariantNo(FFocusSpecModelVariantNo);
      FFocusSpecModelVariantNo:= 0;
    end;

  if StructureCoef.IsComplete then
    edtStructureCoef.Color:= $00C5EFC2
  else
    edtStructureCoef.Color:= ccTotalLateNotSelected;

  if cdsData.Active and
    (not cdsDataSPEC_STATE_CODE.IsNull) and
    InRange(cdsDataSPEC_STATE_CODE.AsInteger, Low(SpecStateColors), High(SpecStateColors)) then
    edtSpecState.Color:= SpecStateColors[cdsDataSPEC_STATE_CODE.AsInteger]
  else
    edtSpecState.Color:= clBtnFace;

  edtInvestedValuesDate.Text:=
    JclDateTime.FormatDateTime(dmMain.GetDateDisplayFormat, InvestedValueFilter.InvestedValueDate);

  UpdateColumnsVisibility(grdModelVariants, tlbShowModelVariantNotes);
end;

procedure TfmSpecification.cdsGridDataAfterPost(DataSet: TDataSet);
var
  b: TBookmark;
begin
  inherited;

  if FProcessingAfterPost or FCreatingLike or FRelocatingSpecification then Exit;

  if FPostAfterEdit then
    begin
      FProcessingAfterPost:= True;
      try
        if (FBeforeEditDetailQuantity <> cdsGridDataDETAIL_TECH_QUANTITY.AsFloat) then
          UpdateChildrenParentTotalQuantity;

        if not SameAsOldNo(MaxNoPos) then
          ChangeNo;

        if (FBeforeEditProductCode <> cdsGridDataPRODUCT_CODE.AsInteger) then
          SetStagesNumberingFrom(Ord(cdsGridDataPRODUCT_CODE.IsNull));
      finally
        FProcessingAfterPost:= False;
      end;   { try }
    end   { if }
  else   { if }   // not FPostAfterEdit, sirech AfterInsert
    begin
      with cdsSpecModelVariants do
        begin
          DisableControls;
          try
            b:= Bookmark;
            try
              First;
              while not EOF do
                begin
                  AppendSpecModelVariantLine;
                  Next;
                end;   { while }
            finally
              Bookmark:= b;
            end;   { try }
          finally
            EnableControls;
          end;   { try }
        end;   { with }
    end;   { if }

  if (not FCalculatingTotalTreatmentWorkdays) and
     (not FDontUnauthorizeAllModelVariants) and
     (not SettingLineAndStageAndOperationDeptPriceFields) then
    FNoModelChange.TempEnter/
      procedure begin
        UnauthorizeAllModelVariants;
      end;
      
  ChangeAfterModelGeneration:= True;
end;

procedure TfmSpecification.actAddModelVariantUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    GetAddModelVariantEnabled and
    not (cdsGridData.Bof and cdsGridData.Eof);
end;

procedure TfmSpecification.actAddModelVariantExecute(Sender: TObject);
begin
  inherited;

  cdsSpecModelVariants.TempDisableControls/
    cdsSpecModelVariants.PreserveRecNo/
      cdsSpecModelVariants.TempUnfilter/
        procedure begin
          FNewSpecModelVariantNo:= VarToInt(cdsSpecModelVariants_MAX_SPEC_MODEL_VARIANT_NO.AsVariant) + 1;
        end;
  try
    FAddModelVariantBasedOnMainDeptCode:= 0;
    if TfmSpecModelVariantEdit.ShowForm(dmDocClient, cdsSpecModelVariants, emInsert) then
      begin
        CurrentModelVariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;
        cbTasksModelVariant.KeyValue:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;
      end;
  finally
    FNewSpecModelVariantNo:= 0;
  end;
end;

procedure TfmSpecification.actDelModelVariantUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsSpecModelVariants.Active and
    (EditMode <> emReadOnly) and
    (not cdsSpecModelVariants.IsEmpty) and
    CanModifyModel;
end;

procedure TfmSpecification.actDelModelVariantExecute(Sender: TObject);
begin
  inherited;

  if ConfirmRecordDelete then
    cdsSpecModelVariants.Delete;
end;

procedure TfmSpecification.actEditModelVariantUpdate(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      with cdsSpecModelVariants do
        Enabled:= Active and not (Bof and Eof);

      Caption:= GetEditActionCaption(not GetEditModelVariantReadOnly);
    end;   { with }
end;

procedure TfmSpecification.actEditModelVariantExecute(Sender: TObject);
var
  AEditMode: TEditMode;
  SaveCurrentModelVariantNo: Integer;
begin
  inherited;

  if GetEditModelVariantReadOnly then
    AEditMode:= emReadOnly
  else
    AEditMode:= emEdit;

  if TfmSpecModelVariantEdit.ShowForm(dmDocClient, cdsSpecModelVariants, AEditMode) and
     (cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger = CurrentModelVariantNo) then
    begin
      // refresh combos
      SaveCurrentModelVariantNo:= CurrentModelVariantNo;
      CurrentModelVariantNo:= 0;
      CurrentModelVariantNo:= SaveCurrentModelVariantNo;
    end;
end;

procedure TfmSpecification.grdModelVariantsDblClick(Sender: TObject);
begin
  inherited;

  if not actEditModelVariant.Execute then
    actAddModelVariant.Execute;
end;

procedure TfmSpecification.grdModelVariantsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if cdsSpecModelVariantsIS_INACTIVE.AsBoolean then
    AFont.Color:= clSilver;
end;

procedure TfmSpecification.cdsSpecModelVariantsNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  cdsSpecModelVariantsSPEC_PRODUCT_CODE.AsVariant:= cdsDataSPEC_PRODUCT_CODE.AsVariant;
  cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsVarInteger:= FNewSpecModelVariantNo;

  if (FAddModelVariantBasedOnMainDeptCode > 0) then
    begin
      cdsSpecModelVariantsMAIN_DEPT_CODE.AsInteger:= FAddModelVariantBasedOnMainDeptCode;
      cdsSpecModelVariantsMIN_TECH_QUANTITY.AsFloat:= FModelVariantMaxQuantity;
    end;

  cdsSpecModelVariantsAUTHORIZATION_OF_OPERATIONS.AsBoolean:= False;
  cdsSpecModelVariantsIS_CHANGED.AsBoolean:= True;
  cdsSpecModelVariantsIS_INACTIVE.AsBoolean:= False;
end;

procedure TfmSpecification.cdsSpecModelVariantsNOTESChange(Sender: TField);
begin
  inherited;
  ClearSpecModelVariantChangeEmployeeCode;
end;

procedure TfmSpecification.actAuthorizeModelVariantUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    cdsSpecModelVariants.Active and
    (not cdsSpecModelVariants.IsEmpty) and
    cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE.IsNull and
    CanModifyModel;
end;

procedure TfmSpecification.actAuthorizeModelVariantExecute(
  Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaAuthorizeSpecModelVariant);
  AuthorizeModel(False);
end;

procedure TfmSpecification.cdsSpecModelVariantsMAIN_DEPT_CODEChange(
  Sender: TField);
begin
  inherited;

  if not FCreatingLike then
    DoDeptFieldChanged(cdsSpecModelVariantsMAIN_DEPT_CODE,
      cdsSpecModelVariantsMAIN_DEPT_NAME,
      cdsSpecModelVariantsMAIN_DEPT_IDENTIFIER,
      nil, nil, nil, nil,
      cdsSpecModelVariantsMAIN_DEPT_BEGIN_DATE, cdsSpecModelVariantsMAIN_DEPT_END_DATE);

  ClearSpecModelVariantChangeEmployeeCode;
end;

procedure TfmSpecification.cdsSpecModelVariantsMAX_TECH_QUANTITYChange(
  Sender: TField);
begin
  inherited;
  ClearSpecModelVariantChangeEmployeeCode;
end;

procedure TfmSpecification.cdsSpecModelVariantsMIN_TECH_QUANTITYChange(
  Sender: TField);
begin
  inherited;
  ClearSpecModelVariantChangeEmployeeCode;
end;

procedure TfmSpecification.cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODEChange(
  Sender: TField);
begin
  inherited;

  if cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE.IsNull then
    begin
      cdsSpecModelVariantsAUTHORIZATION_DATE.Clear;
      cdsSpecModelVariantsAUTHORIZATION_TIME.Clear;
      cdsSpecModelVariantsMAX_TOTAL_TREATMENT_WORKDAYS.Clear;

      ClearSpecModelVariantChangeEmployeeCode;
    end
  else
    begin
      cdsSpecModelVariantsAUTHORIZATION_DATE.AsDateTime:= ContextDate;
      cdsSpecModelVariantsAUTHORIZATION_TIME.AsDateTime:= ContextTime;
    end;
end;

procedure TfmSpecification.cdsSpecModelVariantsAfterEdit(
  DataSet: TDataSet);
begin
  inherited;

  FAfterEditSpecModelVariantData.Assign(DataSet);
end;

procedure TfmSpecification.cdsDataAUTHORIZATION_EMPLOYEE_CODEChange(
  Sender: TField);
begin
  inherited;

  if cdsDataAUTHORIZATION_EMPLOYEE_CODE.IsNull then
    begin
      cdsDataAUTHORIZATION_DATE.Clear;
      cdsDataAUTHORIZATION_TIME.Clear;
    end
  else
    begin
      cdsDataAUTHORIZATION_DATE.AsDateTime:= ContextDate;
      cdsDataAUTHORIZATION_TIME.AsDateTime:= ContextTime;
    end;
end;

procedure TfmSpecification.Initialize;
var
  IV: TInvestedValue;
begin
  inherited;

  if not cdsSpecModelVariants.IsEmpty then
    CurrentModelVariantNo:=
      cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;

  if FCreateLike then
    DoCreateLike;

  if (cdsData.State = dsInsert) then
    begin
      cdsData.Post;
      cdsData.Edit;
    end;  { if }


  if (EditMode <> emInsert) then
    begin
      IV.Value:= VarToFloat(cdsGridData_PRODUCTS_PRICE.AsVariant);
      IV.IsIncomplete:=
        ( VarToInt(cdsGridData_PRODUCT_SINGLE_PRICE_COUNT.AsVariant) <>
          VarToInt(cdsGridData_PRODUCT_COUNT.AsVariant) );

      ShowTotalInvestedValue(IV, LoginContext.BaseCurrencyAbbrev);
    end;
end;

procedure TfmSpecification.SetCurrentModelVariantNo(const Value: Integer);
begin
  if (Value <> FCurrentModelVariantNo) then
    begin
      FCurrentModelVariantNo:= Value;

      if not cdsSpecModelVariants.ControlsDisabled then
        begin
          cdsSpecModelVariants.TempUnfilter/
            procedure begin
              cbStagesModelVariant.KeyValue:= Value;
              cbModelModelVariant.KeyValue:= Value;
              cbTasksModelVariant.KeyValue:= Value;
            end;

          cdsSpecModelVariants.First;
          cdsSpecModelVariants.Locate('SPEC_MODEL_VARIANT_NO', Value, []);
        end;

      RefilterModelVariantLines(Value);

      if not cdsSpecModelVariants.ControlsDisabled then
        ChangeAfterModelGeneration:= True;
    end;   { if }
end;

procedure TfmSpecification.cbStagesModelVariantChange(Sender: TObject);
begin
  inherited;
  if (pcMain.ActivePage = tsStages) then
    CurrentModelVariantNo:= StrToIntDef(cbStagesModelVariant.KeyValue, 0);
end;

procedure TfmSpecification.cdsSpecModelVariantStagesDEPT_CODEChange(
  Sender: TField);
begin
  inherited;

  if (not FCreatingLike) and
     (not FAddingSpecification) and
     (not FCopyingVariantStages) then
    begin
      DoDeptFieldChanged(cdsSpecModelVariantStagesDEPT_CODE,
        cdsSpecModelVariantStagesDEPT_NAME,
        cdsSpecModelVariantStagesDEPT_IDENTIFIER,
        cdsSpecModelVariantStagesDEPT_IS_STORE,
        nil, nil, nil,
        cdsSpecModelVariantStagesDEPT_BEGIN_DATE, cdsSpecModelVariantStagesDEPT_END_DATE);

      UpdateCurrentStageOrgOperationsDepts;
    end;
end;

procedure TfmSpecification.cdsSpecModelVariantStagesEXTERNAL_WORK_PRICEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmSpecification.cdsSpecModelVariantStagesNewRecord(
  DataSet: TDataSet);
var
  NewStageNo: Integer;
begin
  inherited;

  cdsSpecModelVariantStagesSPEC_PRODUCT_CODE.AsVariant:= cdsSpecModelVariantLinesSPEC_PRODUCT_CODE.AsVariant;
  cdsSpecModelVariantStagesSPEC_MODEL_VARIANT_NO.AsVariant:= cdsSpecModelVariantLinesSPEC_MODEL_VARIANT_NO.AsVariant;
  cdsSpecModelVariantStagesSPEC_LINE_CODE.AsVariant:= cdsSpecModelVariantLinesSPEC_LINE_CODE.AsVariant;
  cdsSpecModelVariantStagesSPEC_LINE_STAGE_CODE.AsInteger:=
    VarToInt(cdsSpecModelVariantStages_MAX_SPEC_LINE_STAGE_CODE.AsVariant) + 1;

  if (cdsSpecModelVariantStages.RecordCount = 0) then
    begin
      if cdsGridDataPRODUCT_CODE.IsNull then
        NewStageNo:= 1
      else
        NewStageNo:= 0;
    end
  else   { if }
    NewStageNo:= VarToInt(cdsSpecModelVariantStages_MAX_SPEC_LINE_STAGE_NO.Value) + 1;

  cdsSpecModelVariantStagesSPEC_LINE_STAGE_NO.AsInteger:= NewStageNo;

  cdsSpecModelVariantStagesTREATMENT_WORKDAYS.AsInteger:= 0;
  cdsSpecModelVariantStagesOUTGOING_WORKDAYS.AsInteger:= 0;
  cdsSpecModelVariantStagesTOTAL_TREATMENT_WORKDAYS.AsInteger:= 0;
  cdsSpecModelVariantStagesIS_AUTO_MOVEMENT.AsBoolean:= False;
  cdsSpecModelVariantStagesHAS_DOCUMENTATION.AsBoolean:= False;
  cdsSpecModelVariantStagesDOC_IS_COMPLETE.AsBoolean:= False;
  cdsSpecModelVariantStagesSMVS_TYPE_CODE.AsInteger:= smvstNormal;
end;

procedure TfmSpecification.cdsSpecModelVariantStagesAfterPost(
  DataSet: TDataSet);
begin
  inherited;

  if FCreatingLike or FCopyingVariantStages then Exit;

  FDontUnauthorizeAllModelVariants:= True;
  try
    cdsGridData.Post;
  finally
    FDontUnauthorizeAllModelVariants:= False;
  end;   { try }

  if (not FCalculatingTotalTreatmentWorkdays) and
     (not SettingLineAndStageAndOperationDeptPriceFields) then
    UnauthorizeCurrentModelVariant;

  ChangeAfterModelGeneration:= True;
end;

procedure TfmSpecification.actMoveDownModelVariantStageUpdate(
  Sender: TObject);
begin
  inherited;
  with cdsSpecModelVariantStages do
    (Sender as TAction).Enabled:=
      Active and
      not IsEmpty and
      (RecNo < RecordCount) and
      (EditMode <> emReadOnly) and
      CanModifyData;
end;

procedure TfmSpecification.RefilterModelVariantLines(ModelVariantNo: Integer);
begin
  FFilterModelVariantNo:= ModelVariantNo;

  with cdsSpecModelVariantLines do
    begin
      DisableControls;
      try
        Filtered:= False;
        Filtered:= True;

        First;
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TfmSpecification.cdsSpecModelVariantStagesAfterDelete(
  DataSet: TDataSet);
begin
  inherited;

  if not FDeletingAllStages then
    UnauthorizeCurrentModelVariant;

  if not FDeletingAllStages then
    StagesAfterDelete(DataSet);
end;

procedure TfmSpecification.DoApplyUpdates;
begin
  CheckCdsDataRequiredFields;

  CheckData(True, False);

  if (cdsGridData.ChangeCount > 0) then
    CalcTotalTreatmentWorkdays;

  inherited;

  if Assigned(FSpecProductCodePtr) then
    FSpecProductCodePtr^:= cdsDataSPEC_PRODUCT_CODE.AsInteger;
end;

procedure TfmSpecification.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  if Assigned(OuterDataSet) and
     Assigned(OuterDataSet.FindField('NEW_SPEC_PRODUCT_CODE')) then
    cdsDataSPEC_PRODUCT_CODE.AsVariant:= OuterDataSet.FieldByName('NEW_SPEC_PRODUCT_CODE').AsVariant;

  cdsDataSPEC_VERSION_NO.AsInteger:= 1;
  cdsDataWORK_BRANCH_CODE.AsFloat:= LoginContext.LocalBranchCode;
  cdsDataAUTHOR_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataCREATE_DATE.AsDateTime:= ContextDate;
end;

procedure TfmSpecification.cdsDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FOldSpecProductCode:= cdsDataSPEC_PRODUCT_CODE.AsVariant;
  FOldSpecVersionNo:= cdsDataSPEC_VERSION_NO.AsInteger;
end;

procedure TfmSpecification.cdsGridDataBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if FCreatingLike or FRelocatingSpecification then Exit;

  if not FProcessingAfterPost then
    begin
      FBeforeEditDetailQuantity:= cdsGridDataDETAIL_TECH_QUANTITY.AsFloat;
      FBeforeEditProductCode:= cdsGridDataPRODUCT_CODE.AsInteger;

      SaveOldNo(MaxNoPos);
    end;   { if }
end;

procedure TfmSpecification.actInsertSpecificationExecute(Sender: TObject);
begin
  inherited;

  InsertOrReplaceSpecification(True);
  UpdateFilteredGridData;
end;

procedure TfmSpecification.actInvestedValuesGraphExecute(Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivities([uaShowLevelOneInvestedValues, uaShowHighLevelInvestedValues]);
  FillMainDepts;
  TfmSpecInvestedValuesGraph.ShowForm(nil, cdsMainDepts, emReadOnly,
    doNone, True, cdsModelVariantInvestedValues, CalcModelVariantInvestedValues);
end;

procedure TfmSpecification.actInvestedValuesGraphUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsSpecModelVariants.IsEmpty;
end;

procedure TfmSpecification.SetStagesNumberingFrom(StartNo: Integer);
var
  StageNo: Integer;
  SaveFiltered: Boolean;
  SpecModelVariantNo: Integer;

  procedure GoToFirstStage;
  begin
    with cdsSpecModelVariantStages do
      if (StartNo = 0) then
        StageNo:= 1
      else   { if }
        StageNo:= RecordCount-1;
  end;   { GoToFirstStage }

  function LocateStage: Boolean;
  begin
    Result:= cdsSpecModelVariantStages.Locate('SPEC_LINE_STAGE_NO', StageNo, []);
  end;   { EndOfStages }

  procedure NextStage;
  begin
    with cdsSpecModelVariantStages do
      if (StartNo = 0) then
        Inc(StageNo)
      else   { if }
        Dec(StageNo);
  end;   { NextStage }

  procedure RenumberStage;
  var
    d: Integer;
  begin
    with cdsSpecModelVariantStages do
      begin
        if (StartNo = 0) then
          d:= -1
        else
          d:= 1;

        Edit;
        try
          with cdsSpecModelVariantStagesSPEC_LINE_STAGE_NO do
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
  SaveCurrentModelVariantNo: Integer;
  ModelVariantsBookmark: TBookmark;
  SpecModelVariantNos: array of Integer;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    with cdsSpecModelVariantStages do
      begin
        DisableControls;
        try
          SaveCurrentModelVariantNo:= CurrentModelVariantNo;
          try
            ModelVariantsBookmark:= cdsSpecModelVariants.Bookmark;
            try
              SaveFiltered:= cdsSpecModelVariants.Filtered;
              cdsSpecModelVariants.Filtered:= False;
              try
                SetLength(SpecModelVariantNos, cdsSpecModelVariants.RecordCount);
                cdsSpecModelVariants.First;
                while not cdsSpecModelVariants.EOF do
                  begin
                    SpecModelVariantNos[cdsSpecModelVariants.RecNo - 1]:=
                      cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;

                    cdsSpecModelVariants.Next;
                  end;

                for SpecModelVariantNo in SpecModelVariantNos do
                  begin
                    CurrentModelVariantNo:= SpecModelVariantNo;

                    First;
                    if (cdsSpecModelVariantStagesSPEC_LINE_STAGE_NO.AsInteger <> StartNo) then
                      begin
                        GoToFirstStage;
                        while LocateStage do
                          begin
                            RenumberStage;
                            NextStage;
                          end;   { while }
                      end;   { if }
                  end;   { for }
              finally
                cdsSpecModelVariants.Filtered:= SaveFiltered;
              end;
            finally
              cdsSpecModelVariants.Bookmark:= ModelVariantsBookmark;
            end;   { try }
          finally
            CurrentModelVariantNo:= SaveCurrentModelVariantNo;
          end;   { try }

          First;
        finally
          EnableControls;
        end;   { try }
      end;   { with }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

procedure TfmSpecification.actNewVersionExecute(Sender: TObject);
begin
  inherited;

  CheckEditMode(cdsData);
  cdsDataAUTHORIZATION_EMPLOYEE_CODE.Clear;
  with cdsDataSPEC_VERSION_NO do
    AsInteger:= AsInteger + 1;
end;

procedure TfmSpecification.actAuthorizeExecute(Sender: TObject);
begin
  inherited;

  LoginContext.CheckUserActivity(uaAuthorizeSpecification);

  CheckCdsDataRequiredFields;
  CheckData(True, False);

  CheckEditMode(cdsData);
  cdsDataAUTHORIZATION_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
end;

function TfmSpecification.CanModifyData: Boolean;
begin
  Result:=
    inherited CanModifyData and
    cdsDataAUTHORIZATION_EMPLOYEE_CODE.IsNull and
    UserCanEdit;
end;

procedure TfmSpecification.actAuthorizeUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (not cdsGridData.IsEmpty) and
    (cdsGridData.RecordCount > 0) and
    (EditMode <> emReadOnly) and
    (not EdittingTaskInModel) and
    CanModifyData;
end;

procedure TfmSpecification.actNewVersionUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    NewVersionEnabled and
    UserCanEdit and
    (not EdittingTaskInModel);
end;

procedure TfmSpecification.cbModelModelVariantChange(Sender: TObject);
begin
  inherited;

  if (pcMain.ActivePage = tsModel) and (not FCalculatingTotalTreatmentWorkdays) then
    begin
      CurrentModelVariantNo:= StrToIntDef(cbModelModelVariant.KeyValue, 0);
      GenerateModel;
    end;   { if }
end;

procedure TfmSpecification.cdsSpecModelVariantsAfterPost(
  DataSet: TDataSet);
var
  b: TBookmark;
begin
  inherited;

  if FCreatingLike then Exit;

  ChangeAfterModelGeneration:= True;

  if not FPostAfterEditModelVariant then
    with cdsGridData do
      begin
        DisableControls;
        try
          b:= Bookmark;
          try
            First;
            while not EOF do
              begin
                AppendSpecModelVariantLine;
                Next;
              end;   { while }
          finally
            Bookmark:= b;
          end;   { try }
        finally
          EnableControls;
        end;   { try }
      end;   { with }
end;

procedure TfmSpecification.cdsGridDataAfterDelete(DataSet: TDataSet);
begin
  inherited;

  UnauthorizeAllModelVariants;

  ChangeAfterModelGeneration:= True;
end;

procedure TfmSpecification.cdsSpecModelVariantsAfterDelete(
  DataSet: TDataSet);
begin
  inherited;

  ChangeAfterModelGeneration:= True;

  if cdsSpecModelVariants.IsEmpty then
    CurrentModelVariantNo:= 0
  else
    CurrentModelVariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;
end;

procedure TfmSpecification.CheckCdsDataRequiredFields;
begin
  inherited;
  CheckRequiredFields(cdsData,
    'SPEC_PRODUCT_NAME; MANUFACTURER_COMPANY_CODE; _SPEC_TYPE_NAME; AUTHOR_EMPLOYEE_CODE');
end;

procedure TfmSpecification.cdsSpecModelVariantStagesAfterCancel(
  DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Cancel;
end;

procedure TfmSpecification.UnauthorizeCurrentModelVariant;
begin
  cdsSpecModelVariants.PreserveRecNo/
    cdsSpecModelVariants.TempDisableControls/
      cdsSpecModelVariants.TempUnfilter/
        procedure begin
          cdsSpecModelVariants.Locate('SPEC_MODEL_VARIANT_NO', CurrentModelVariantNo, []);

          if (cdsSpecModelVariants.RecordCount > 0) and
             ( (not cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE.IsNull) or
               (not cdsSpecModelVariantsIS_CHANGED.AsBoolean) ) then
            cdsSpecModelVariants.SafeEdit/
              procedure begin
                cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE.Clear;
                cdsSpecModelVariantsIS_CHANGED.AsBoolean:= True;
              end;
        end;
end;

procedure TfmSpecification.UnauthorizeAllModelVariants;
var
  b: TBookmark;
begin
  if (cdsSpecModelVariants.RecordCount > 0) and
     ( (VarToInt(cdsSpecModelVariants_MAX_AUTHORIZATION_EMPLOYEE_CODE.Value) > 0) or
       (VarToInt(cdsSpecModelVariants_MAX_IS_CHANGED.Value) = 0) )then
    with cdsSpecModelVariants do
      begin
        DisableControls;
        try
          b:= Bookmark;
          try
            First;
            while not EOF do
              begin
                if (not cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE.IsNull) or
                   (not cdsSpecModelVariantsIS_CHANGED.AsBoolean) then
                  begin
                    Edit;
                    try
                      cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE.Clear;
                      cdsSpecModelVariantsIS_CHANGED.AsBoolean:= True;
                      Post;
                    except
                      Cancel;
                      raise;
                    end;   { try }
                  end;   { if }

                Next;
              end;   { while }
          finally
            Bookmark:= b;
          end;   { try }
        finally
          EnableControls;
        end;   { try }
      end;   { with }
end;

procedure TfmSpecification.cdsSpecModelVariantsBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if FCreatingLike then Exit;

  if (cdsSpecModelVariantsMIN_TECH_QUANTITY.AsFloat >=
      cdsSpecModelVariantsMAX_TECH_QUANTITY.AsFloat) then
    begin
      cdsSpecModelVariantsMAX_TECH_QUANTITY.FocusControl;
      raise Exception.Create(SModelVariantMinQuantityExceeds);
    end;   { if }

  if (DataSet.State = dsEdit) and
     not FAfterEditSpecModelVariantData.Compare(DataSet) then
    FNoModelChange.TempEnter/
      procedure begin
        cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE.Clear;
      end;

  cdsSpecModelVariantsMODEL_VARIANT_IDENTIFIER.AsString:=
    Format('%d. %s [%s - %s] - %s', [
      cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger,
      cdsSpecModelVariantsMAIN_DEPT_IDENTIFIER.AsString,
      FormatFloat(',0.###', cdsSpecModelVariantsMIN_TECH_QUANTITY.AsFloat),
      FormatFloat(',0.###', cdsSpecModelVariantsMAX_TECH_QUANTITY.AsFloat),
      cdsSpecModelVariantsMAIN_DEPT_NAME.AsString]);

  FPostAfterEditModelVariant:= (DataSet.State = dsEdit);
end;

procedure TfmSpecification.cdsDataSPEC_VERSION_NOChange(Sender: TField);
begin
  inherited;

  // slojeno e tuk, a ne v server-a, zaradi pechata
  cdsDataVERSION_CREATE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataVERSION_CREATE_DATE.AsDateTime:= ContextDate;
  cdsDataVERSION_CREATE_TIME.AsDateTime:= ContextTime;
end;

procedure TfmSpecification.cdsDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  // slojeno e tuk, a ne v server-a, zaradi pechata
  cdsDataCHANGE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode;
  cdsDataCHANGE_DATE.AsDateTime:= ContextDate;
  cdsDataCHANGE_TIME.AsDateTime:= ContextTime;
end;

function TfmSpecification.GetAddStageEnabled: Boolean;
begin
  Result:=
    inherited GetAddStageEnabled and
    (CurrentModelVariantNo > 0) and
    not cdsGridDataIS_IMPORTED.AsBoolean;
end;

class function TfmSpecification.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AFilterFormEnabled, ACreateLike: Boolean;
  ACreateLikeProductCode: Integer; ASpecProductCodePtr: PInteger;
  AFocusSpecLineCode, AFocusSpecModelVariantNo, ACreateLikeNewProductCode: Integer): Boolean;
var
  f: TfmSpecification;
  SavePage: TPrinterPage;
begin
  SavePage:= SetUpPrinter(DMPAPER_A3, poLandscape);
  try
    f:= CreateEx;
    try
      f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AFilterFormEnabled,
          ACreateLike, ACreateLikeProductCode, ASpecProductCodePtr, AFocusSpecLineCode,
          AFocusSpecModelVariantNo, ACreateLikeNewProductCode);
      f.InternalShowForm;
      Result:= f.IsDataModified;
    finally
      f.ReleaseForm;
    end;
  finally
    SetUpPrinter(SavePage.PaperSize, SavePage.Orientation);
  end;   { try }
end;

procedure TfmSpecification.SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
  AEditMode: TEditMode; AFilterFormEnabled, ACreateLike: Boolean;
  ACreateLikeProductCode: Integer; ASpecProductCodePtr: PInteger;
  AFocusSpecLineCode, AFocusSpecModelVariantNo, ACreateLikeNewProductCode: Integer);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, doNone, AFilterFormEnabled);
  FCreateLike:= ACreateLike;
  FCreateLikeProductCode:= ACreateLikeProductCode;
  FSpecProductCodePtr:= ASpecProductCodePtr;
  FFocusSpecLineCode:= AFocusSpecLineCode;
  FFocusSpecModelVariantNo:= AFocusSpecModelVariantNo;
  FCreateLikeNewProductCode:= ACreateLikeNewProductCode;
end;

procedure TfmSpecification.DoBeforeShow;
begin
  if FCreateLike and (FCreateLikeNewProductCode = 0) then
    FilterFormClass:= TfmSpecificationCreateLikeFilter;

  inherited;
end;

procedure TfmSpecification.pdsGridDataParamsNEW_SPEC_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(pdsGridDataParamsNEW_SPEC_PRODUCT_CODE,
    pdsGridDataParams_NEW_SPEC_PRODUCT_NAME, pdsGridDataParams_NEW_SPEC_PRODUCT_NO);
end;

procedure TfmSpecification.pdsGridDataParamsORIGINAL_SPEC_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;

  DoProductFieldChanged(pdsGridDataParamsORIGINAL_SPEC_PRODUCT_CODE,
    pdsGridDataParams_ORIGINAL_SPEC_PRODUCT_NAME, pdsGridDataParams_ORIGINAL_SPEC_PRODUCT_NO);

  if pdsGridDataParamsORIGINAL_SPEC_PRODUCT_CODE.IsNull then
    pdsGridDataParamsORIGINAL_SPEC_VERSION_NO.Clear
  else
    pdsGridDataParamsORIGINAL_SPEC_VERSION_NO.AsVariant:=
      IntToVar(
        dmMain.SvrSpecifications.SpecificationVersion(
          pdsGridDataParamsORIGINAL_SPEC_PRODUCT_CODE.AsInteger));
end;

procedure TfmSpecification.DoCreateLike;
var
  OperationVariant0DocBranchCode: Integer;
  OperationVariant0DocCode: Integer;

  procedure OpenCreateLikeDataSets;
  begin
    cdsCLSpec.Open;
    cdsCLSpecModelVariants.Open;
    cdsCLSpecLines.Open;
    cdsCLSpecModelVariantLines.Open;
    cdsCLSpecModelVariantStages.Open;
    cdsCLSMVSOperations.Open;
    cdsCLSpecModelVariantTasks.Open;
    cdsCLSpecModelVariantTaskDepts.Open;
  end;

  procedure CloseCreateLikeDataSets;
  begin
    cdsCLSpecModelVariantTaskDepts.Close;
    cdsCLSpecModelVariantTasks.Close;
    cdsCLSMVSOperations.Close;
    cdsCLSpecModelVariantStages.Close;
    cdsCLSpecModelVariantLines.Close;
    cdsCLSpecLines.Close;
    cdsCLSpecModelVariants.Close;
    cdsCLSpec.Close;
  end;

  procedure AssignSpecFields;
  begin
    cdsDataSPEC_PRODUCT_CODE.AsVariant:= cdsCLSpecSPEC_PRODUCT_CODE.AsVariant;
    cdsDataSPEC_PRODUCT_NAME.AsVariant:= cdsCLSpecSPEC_PRODUCT_NAME.AsVariant;
    cdsDataSPEC_PRODUCT_NO.AsVariant:= cdsCLSpecSPEC_PRODUCT_NO.AsVariant;
    cdsDataSPEC_TYPE_CODE.AsVariant:= cdsCLSpecSPEC_TYPE_CODE.AsVariant;
    cdsDataWORK_BRANCH_CODE.AsVariant:= cdsCLSpecWORK_BRANCH_CODE.AsVariant;
    cdsDataMANUFACTURER_COMPANY_CODE.AsVariant:= cdsCLSpecMANUFACTURER_COMPANY_CODE.AsVariant;
    cdsDataNOTES.AsVariant:= cdsCLSpecNOTES.AsVariant;
  end;

  procedure AssignSpecModelVariantFields;
  begin
    cdsSpecModelVariantsSPEC_PRODUCT_CODE.AsVariant:= cdsCLSpecModelVariantsSPEC_PRODUCT_CODE.AsVariant;
    cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsVariant:= cdsCLSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsVariant;
    cdsSpecModelVariantsMAIN_DEPT_CODE.AsVariant:= cdsCLSpecModelVariantsMAIN_DEPT_CODE.AsVariant;
    cdsSpecModelVariantsMAIN_DEPT_NAME.AsVariant:= cdsCLSpecModelVariantsMAIN_DEPT_NAME.AsVariant;
    cdsSpecModelVariantsMAIN_DEPT_IDENTIFIER.AsVariant:= cdsCLSpecModelVariantsMAIN_DEPT_IDENTIFIER.AsVariant;
    cdsSpecModelVariantsRESULT_STORE_CODE.AsVariant:= cdsCLSpecModelVariantsRESULT_STORE_CODE.AsVariant;
    cdsSpecModelVariantsMIN_TECH_QUANTITY.AsVariant:= cdsCLSpecModelVariantsMIN_TECH_QUANTITY.AsVariant;
    cdsSpecModelVariantsMAX_TECH_QUANTITY.AsVariant:= cdsCLSpecModelVariantsMAX_TECH_QUANTITY.AsVariant;
    cdsSpecModelVariantsMODEL_VARIANT_IDENTIFIER.AsVariant:= cdsCLSpecModelVariantsMODEL_VARIANT_IDENTIFIER.AsVariant;
    cdsSpecModelVariantsNOTES.AsVariant:= cdsCLSpecModelVariantsNOTES.AsVariant;
  end;

  procedure AssignSpecModelVariantTaskFields;
  begin
    cdsSpecModelVariantTasksSPEC_PRODUCT_CODE.AsVariant:= cdsCLSpecModelVariantTasksSPEC_PRODUCT_CODE.AsVariant;
    cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_NO.AsVariant:= cdsCLSpecModelVariantTasksSPEC_MODEL_VARIANT_NO.AsVariant;
    cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO.AsVariant:= cdsCLSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO.AsVariant;
    cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NAME.AsVariant:= cdsCLSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NAME.AsVariant;
  end;

  procedure AssignSpecModelVariantTaskDeptFields;
  begin
    cdsSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_TASK_NO.AsVariant:= cdsCLSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_TASK_NO.AsVariant;
    cdsSpecModelVariantTaskDeptsDEPT_CODE.AsVariant:= cdsCLSpecModelVariantTaskDeptsDEPT_CODE.AsVariant;
    cdsSpecModelVariantTaskDeptsDEPT_NAME.AsVariant:= cdsCLSpecModelVariantTaskDeptsDEPT_NAME.AsVariant;
    cdsSpecModelVariantTaskDeptsDEPT_IDENTIFIER.AsVariant:= cdsCLSpecModelVariantTaskDeptsDEPT_IDENTIFIER.AsVariant;
  end;

  procedure AssignSpecLineFields;
  begin
    cdsGridDataSPEC_PRODUCT_CODE.AsVariant:= cdsCLSpecLinesSPEC_PRODUCT_CODE.AsVariant;
    cdsGridDataSPEC_LINE_CODE.AsVariant:= cdsCLSpecLinesSPEC_LINE_CODE.AsVariant;
    cdsGridDataPARENT_SPEC_LINE_CODE.AsVariant:= cdsCLSpecLinesPARENT_SPEC_LINE_CODE.AsVariant;
    cdsGridDataNO_1.AsVariant:= cdsCLSpecLinesNO_1.AsVariant;
    cdsGridDataNO_2.AsVariant:= cdsCLSpecLinesNO_2.AsVariant;
    cdsGridDataNO_3.AsVariant:= cdsCLSpecLinesNO_3.AsVariant;
    cdsGridDataNO_4.AsVariant:= cdsCLSpecLinesNO_4.AsVariant;
    cdsGridDataNO_5.AsVariant:= cdsCLSpecLinesNO_5.AsVariant;
    cdsGridDataNO_6.AsVariant:= cdsCLSpecLinesNO_6.AsVariant;
    cdsGridDataNO_7.AsVariant:= cdsCLSpecLinesNO_7.AsVariant;
    cdsGridDataNO_8.AsVariant:= cdsCLSpecLinesNO_8.AsVariant;
    cdsGridDataNO_9.AsVariant:= cdsCLSpecLinesNO_9.AsVariant;
    cdsGridDataNO_10.AsVariant:= cdsCLSpecLinesNO_10.AsVariant;
    cdsGridDataNO_11.AsVariant:= cdsCLSpecLinesNO_11.AsVariant;
    cdsGridDataNO_12.AsVariant:= cdsCLSpecLinesNO_12.AsVariant;
    cdsGridDataNO_13.AsVariant:= cdsCLSpecLinesNO_13.AsVariant;
    cdsGridDataNO_14.AsVariant:= cdsCLSpecLinesNO_14.AsVariant;
    cdsGridDataNO_15.AsVariant:= cdsCLSpecLinesNO_15.AsVariant;
    cdsGridDataNO_16.AsVariant:= cdsCLSpecLinesNO_16.AsVariant;
    cdsGridDataNO_17.AsVariant:= cdsCLSpecLinesNO_17.AsVariant;
    cdsGridDataNO_18.AsVariant:= cdsCLSpecLinesNO_18.AsVariant;
    cdsGridDataNO_19.AsVariant:= cdsCLSpecLinesNO_19.AsVariant;
    cdsGridDataNO_20.AsVariant:= cdsCLSpecLinesNO_20.AsVariant;
    cdsGridDataNO_21.AsVariant:= cdsCLSpecLinesNO_21.AsVariant;
    cdsGridDataNO_22.AsVariant:= cdsCLSpecLinesNO_22.AsVariant;
    cdsGridDataNO_23.AsVariant:= cdsCLSpecLinesNO_23.AsVariant;
    cdsGridDataNO_24.AsVariant:= cdsCLSpecLinesNO_24.AsVariant;
    cdsGridDataNO_25.AsVariant:= cdsCLSpecLinesNO_25.AsVariant;
    cdsGridDataNO_AS_TEXT.AsVariant:= cdsCLSpecLinesNO_AS_TEXT.AsVariant;
    cdsGridDataNO_AS_FORMATED_TEXT.AsVariant:= cdsCLSpecLinesNO_AS_FORMATED_TEXT.AsVariant;
    cdsGridDataDETAIL_CODE.AsVariant:= cdsCLSpecLinesDETAIL_CODE.AsVariant;
    cdsGridDataDETAIL_NAME.AsVariant:= cdsCLSpecLinesDETAIL_NAME.AsVariant;
    cdsGridDataDETAIL_NO.AsVariant:= cdsCLSpecLinesDETAIL_NO.AsVariant;
    cdsGridDataDETAIL_HAS_DOCUMENTATION.AsVariant:= cdsCLSpecLinesDETAIL_HAS_DOCUMENTATION.AsVariant;
    cdsGridDataDETAIL_HAS_SPEC.AsVariant:= cdsCLSpecLinesDETAIL_HAS_SPEC.AsVariant;
    cdsGridDataDETAIL_IS_INACTIVE.AsVariant:= cdsCLSpecLinesDETAIL_IS_INACTIVE.AsVariant;
    cdsGridDataDETAIL_TECH_QUANTITY.AsVariant:= cdsCLSpecLinesDETAIL_TECH_QUANTITY.AsVariant;
    cdsGridDataDETAIL_PARENT_CODE.AsVariant:= cdsCLSpecLinesDETAIL_PARENT_CODE.AsVariant;
    cdsGridDataDETAIL_IS_SELF_APPROVED.AsVariant:= cdsCLSpecLinesDETAIL_IS_SELF_APPROVED.AsVariant;
    cdsGridDataTOTAL_DETAIL_TECH_QUANTITY.AsVariant:= cdsCLSpecLinesTOTAL_DETAIL_TECH_QUANTITY.AsVariant;
    cdsGridDataPAR_TOTAL_DETAIL_TECH_QUANTITY.AsVariant:= cdsCLSpecLinesPAR_TOTAL_DETAIL_TECH_QUANTITY.AsVariant;
    cdsGridDataDETAIL_TECH_MEASURE_CODE.AsVariant:= cdsCLSpecLinesDETAIL_TECH_MEASURE_CODE.AsVariant;
    cdsGridDataPRODUCT_CODE.AsVariant:= cdsCLSpecLinesPRODUCT_CODE.AsVariant;
    cdsGridDataPRODUCT_NAME.AsVariant:= cdsCLSpecLinesPRODUCT_NAME.AsVariant;
    cdsGridDataPRODUCT_NO.AsVariant:= cdsCLSpecLinesPRODUCT_NO.AsVariant;
    cdsGridDataPRODUCT_HAS_DOCUMENTATION.AsVariant:= cdsCLSpecLinesPRODUCT_HAS_DOCUMENTATION.AsVariant;
    cdsGridDataPRODUCT_IS_INACTIVE.AsVariant:= cdsCLSpecLinesPRODUCT_IS_INACTIVE.AsVariant;
    cdsGridDataPRODUCT_TECH_QUANTITY.AsVariant:= cdsCLSpecLinesPRODUCT_TECH_QUANTITY.AsVariant;
    cdsGridDataTOTAL_PRODUCT_TECH_QUANTITY.AsVariant:= cdsCLSpecLinesTOTAL_PRODUCT_TECH_QUANTITY.AsVariant;
    cdsGridDataPRODUCT_TECH_MEASURE_CODE.AsVariant:= cdsCLSpecLinesPRODUCT_TECH_MEASURE_CODE.AsVariant;
    cdsGridDataPRODUCT_TECH_MEASURE_COEF.AsVariant:= cdsCLSpecLinesPRODUCT_TECH_MEASURE_COEF.AsVariant;
    cdsGridDataTOTAL_PRODUCT_ACCOUNT_QUANTITY.AsVariant:= cdsCLSpecLinesTOTAL_PRODUCT_ACCOUNT_QUANTITY.AsVariant;
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_CODE.AsVariant:= cdsCLSpecLinesPRODUCT_ACCOUNT_MEASURE_CODE.AsVariant;
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF.AsVariant:= cdsCLSpecLinesPRODUCT_ACCOUNT_MEASURE_COEF.AsVariant;
    cdsGridDataPRODUCT_SECONDARY_SINGLE_PRICE.AsVariant:= cdsCLSpecLinesPRODUCT_SECONDARY_SINGLE_PRICE.AsVariant;
    cdsGridDataPRODUCT_SINGLE_PRICE.AsVariant:= cdsCLSpecLinesPRODUCT_SINGLE_PRICE.AsVariant;
    cdsGridDataPRODUCT_SECONDARY_TOTAL_PRICE.AsVariant:= cdsCLSpecLinesPRODUCT_SECONDARY_TOTAL_PRICE.AsVariant;
    cdsGridDataPRODUCT_INVESTMENT_VALUE_2.AsVariant:= cdsCLSpecLinesPRODUCT_INVESTMENT_VALUE_2.AsVariant;
    cdsGridDataPRODUCT_INVESTMENT_VALUE_3.AsVariant:= cdsCLSpecLinesPRODUCT_INVESTMENT_VALUE_3.AsVariant;
    cdsGridDataPRODUCT_INVESTMENT_VALUE_4.AsVariant:= cdsCLSpecLinesPRODUCT_INVESTMENT_VALUE_4.AsVariant;
    cdsGridDataPRODUCT_INVESTMENT_VALUE_5.AsVariant:= cdsCLSpecLinesPRODUCT_INVESTMENT_VALUE_5.AsVariant;
    cdsGridDataPRODUCT_PRECISION_LEVEL_CODE.AsVariant:= cdsCLSpecLinesPRODUCT_PRECISION_LEVEL_CODE.AsVariant;
    cdsGridDataPRODUCT_IS_FOR_TREATMENT_USE.AsVariant:= cdsCLSpecLinesPRODUCT_IS_FOR_TREATMENT_USE.AsVariant;
    cdsGridDataPRODUCT_IS_FOR_DIRECT_USE.AsVariant:= cdsCLSpecLinesPRODUCT_IS_FOR_DIRECT_USE.AsVariant;
    cdsGridDataNOTES.AsVariant:= cdsCLSpecLinesNOTES.AsVariant;
    cdsGridDataCONSTRUCTION_NOTES.AsVariant:= cdsCLSpecLinesCONSTRUCTION_NOTES.AsVariant;
    cdsGridDataIS_IMPORTED.AsVariant:= cdsCLSpecLinesIS_IMPORTED.AsVariant;
    cdsGridDataIS_FOR_SINGLE_USE.AsVariant:= cdsCLSpecLinesIS_FOR_SINGLE_USE.AsVariant;
    cdsGridDataIS_IMPORTED_SUBDETAIL.AsVariant:= cdsCLSpecLinesIS_IMPORTED_SUBDETAIL.AsVariant;
    cdsGridDataIS_COMPLETE.AsVariant:= cdsCLSpecLinesIS_COMPLETE.AsVariant;
  end;

  procedure AssignSpecModelVariantLineFields;
  begin
    cdsSpecModelVariantLinesSPEC_PRODUCT_CODE.AsVariant:= cdsCLSpecModelVariantLinesSPEC_PRODUCT_CODE.AsVariant;
    cdsSpecModelVariantLinesSPEC_MODEL_VARIANT_NO.AsVariant:= cdsCLSpecModelVariantLinesSPEC_MODEL_VARIANT_NO.AsVariant;
    cdsSpecModelVariantLinesSPEC_LINE_CODE.AsVariant:= cdsCLSpecModelVariantLinesSPEC_LINE_CODE.AsVariant;
    cdsSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE.AsVariant:= cdsCLSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE.AsVariant;
    cdsSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO.AsVariant:= cdsCLSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO.AsVariant;
    cdsSpecModelVariantLinesAPPROVE_CYCLE_NO.AsVariant:= cdsCLSpecModelVariantLinesAPPROVE_CYCLE_NO.AsVariant;
  end;

  procedure AssignStagesFields;
  begin
    cdsSpecModelVariantStagesSPEC_PRODUCT_CODE.AsVariant:= cdsCLSpecModelVariantStagesSPEC_PRODUCT_CODE.AsVariant;
    cdsSpecModelVariantStagesSPEC_MODEL_VARIANT_NO.AsVariant:= cdsCLSpecModelVariantStagesSPEC_MODEL_VARIANT_NO.AsVariant;
    cdsSpecModelVariantStagesSPEC_LINE_CODE.AsVariant:= cdsCLSpecModelVariantStagesSPEC_LINE_CODE.AsVariant;
    cdsSpecModelVariantStagesSPEC_LINE_STAGE_CODE.AsVariant:= cdsCLSpecModelVariantStagesSPEC_LINE_STAGE_CODE.AsVariant;
    cdsSpecModelVariantStagesSPEC_LINE_STAGE_NO.AsVariant:= cdsCLSpecModelVariantStagesSPEC_LINE_STAGE_NO.AsVariant;
    cdsSpecModelVariantStagesDEPT_CODE.AsVariant:= cdsCLSpecModelVariantStagesDEPT_CODE.AsVariant;
    cdsSpecModelVariantStagesDEPT_NAME.AsVariant:= cdsCLSpecModelVariantStagesDEPT_NAME.AsVariant;
    cdsSpecModelVariantStagesDEPT_IDENTIFIER.AsVariant:= cdsCLSpecModelVariantStagesDEPT_IDENTIFIER.AsVariant;
    cdsSpecModelVariantStagesDEPT_IS_STORE.AsVariant:= cdsCLSpecModelVariantStagesDEPT_IS_STORE.AsVariant;
    cdsSpecModelVariantStagesDEPT_BEGIN_DATE.AsVariant:= cdsCLSpecModelVariantStagesDEPT_BEGIN_DATE.AsVariant;
    cdsSpecModelVariantStagesDEPT_END_DATE.AsVariant:= cdsCLSpecModelVariantStagesDEPT_END_DATE.AsVariant;
    cdsSpecModelVariantStagesOUTGOING_WORKDAYS.AsVariant:= cdsCLSpecModelVariantStagesOUTGOING_WORKDAYS.AsVariant;
    cdsSpecModelVariantStagesTREATMENT_WORKDAYS.AsVariant:= cdsCLSpecModelVariantStagesTREATMENT_WORKDAYS.AsVariant;
    cdsSpecModelVariantStagesTOTAL_TREATMENT_WORKDAYS.AsVariant:= cdsCLSpecModelVariantStagesTOTAL_TREATMENT_WORKDAYS.AsVariant;
    cdsSpecModelVariantStagesIS_AUTO_MOVEMENT.AsVariant:= cdsCLSpecModelVariantStagesIS_AUTO_MOVEMENT.AsVariant;
    cdsSpecModelVariantStagesHAS_DOCUMENTATION.AsVariant:= cdsCLSpecModelVariantStagesHAS_DOCUMENTATION.AsVariant;
    cdsSpecModelVariantStagesDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant:= cdsCLSpecModelVariantStagesDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant;
    cdsSpecModelVariantStagesDOC_IS_COMPLETE.AsVariant:= cdsCLSpecModelVariantStagesDOC_IS_COMPLETE.AsVariant;
    cdsSpecModelVariantStagesUNAPPROVED_ACTIVE_DI_COUNT.AsVariant:= cdsCLSpecModelVariantStagesUNAPPROVED_ACTIVE_DI_COUNT.AsVariant;
    cdsSpecModelVariantStagesSMVS_TYPE_CODE.AsVariant:= cdsCLSpecModelVariantStagesSMVS_TYPE_CODE.AsVariant;
    cdsSpecModelVariantStagesEXTERNAL_WORK_PRICE.AsVariant:= cdsCLSpecModelVariantStagesEXTERNAL_WORK_PRICE.AsVariant;
    cdsSpecModelVariantStagesOPERATION_COUNT.AsVariant:= cdsCLSpecModelVariantStagesOPERATION_COUNT.AsVariant;

    dmDocClient.CreateDocLike(
      cdsCLSpecModelVariantStagesDOC_BRANCH_CODE.AsInteger,
      cdsCLSpecModelVariantStagesDOC_CODE.AsInteger,
      False,
      cdsSpecModelVariantStagesDOC_BRANCH_CODE,
      cdsSpecModelVariantStagesDOC_CODE);

    if cdsSpecModelVariantStagesDOC_CODE.IsNull then
      begin
        cdsSpecModelVariantStagesHAS_DOCUMENTATION.AsBoolean:= False;
        cdsSpecModelVariantStagesDOC_EMPTINESS_REQUIREMENT_CODE.Clear;
        cdsSpecModelVariantStagesDOC_IS_COMPLETE.AsBoolean:= False;
        cdsSpecModelVariantStagesUNAPPROVED_ACTIVE_DI_COUNT.Clear;
      end;
  end;   { AssignStagesFields }

  procedure AssignOperationsFields;
  begin
    cdsOperationsSPEC_PRODUCT_CODE.AsVariant:= cdsCLSMVSOperationsSPEC_PRODUCT_CODE.AsVariant;
    cdsOperationsSPEC_MODEL_VARIANT_NO.AsVariant:= cdsCLSMVSOperationsSPEC_MODEL_VARIANT_NO.AsVariant;
    cdsOperationsSPEC_LINE_CODE.AsVariant:= cdsCLSMVSOperationsSPEC_LINE_CODE.AsVariant;
    cdsOperationsSPEC_LINE_STAGE_CODE.AsVariant:= cdsCLSMVSOperationsSPEC_LINE_STAGE_CODE.AsVariant;
    cdsOperationsSMVS_OPERATION_CODE.AsVariant:= cdsCLSMVSOperationsSMVS_OPERATION_CODE.AsVariant;
    cdsOperationsSMVS_OPERATION_NO.AsVariant:= cdsCLSMVSOperationsSMVS_OPERATION_NO.AsVariant;
    cdsOperationsSMVS_OPERATION_VARIANT_NO.AsVariant:= cdsCLSMVSOperationsSMVS_OPERATION_VARIANT_NO.AsVariant;
    cdsOperationsOPERATION_TYPE_CODE.AsVariant:= cdsCLSMVSOperationsOPERATION_TYPE_CODE.AsVariant;
    cdsOperationsIS_NORMAL_OPERATION.AsVariant:= cdsCLSMVSOperationsIS_NORMAL_OPERATION.AsVariant;
    cdsOperationsDEPT_CODE.AsVariant:= cdsCLSMVSOperationsDEPT_CODE.AsVariant;
    cdsOperationsDEPT_NAME.AsVariant:= cdsCLSMVSOperationsDEPT_NAME.AsVariant;
    cdsOperationsDEPT_IDENTIFIER.AsVariant:= cdsCLSMVSOperationsDEPT_IDENTIFIER.AsVariant;
    cdsOperationsDEPT_PRODUCT_CODE.AsVariant:= cdsCLSMVSOperationsDEPT_PRODUCT_CODE.AsVariant;
    cdsOperationsDEPT_PARENT_CODE.AsVariant:= cdsCLSMVSOperationsDEPT_PARENT_CODE.AsVariant;
    cdsOperationsDEPT_BEGIN_DATE.AsVariant:= cdsCLSMVSOperationsDEPT_BEGIN_DATE.AsVariant;
    cdsOperationsDEPT_END_DATE.AsVariant:= cdsCLSMVSOperationsDEPT_END_DATE.AsVariant;
    cdsOperationsSETUP_PROFESSION_CODE.AsVariant:= cdsCLSMVSOperationsSETUP_PROFESSION_CODE.AsVariant;
    cdsOperationsSETUP_EFFORT_COEF.AsVariant:= cdsCLSMVSOperationsSETUP_EFFORT_COEF.AsVariant;
    cdsOperationsSETUP_HOUR_TECH_QUANTITY.AsVariant:= cdsCLSMVSOperationsSETUP_HOUR_TECH_QUANTITY.AsVariant;
    cdsOperationsSETUP_COUNT.AsVariant:= cdsCLSMVSOperationsSETUP_COUNT.AsVariant;
    cdsOperationsPROFESSION_CODE.AsVariant:= cdsCLSMVSOperationsPROFESSION_CODE.AsVariant;
    cdsOperationsEFFORT_COEF.AsVariant:= cdsCLSMVSOperationsEFFORT_COEF.AsVariant;
    cdsOperationsHOUR_TECH_QUANTITY.AsVariant:= cdsCLSMVSOperationsHOUR_TECH_QUANTITY.AsVariant;
    cdsOperationsPROGRAM_TOOL_PRODUCT_CODE.AsVariant:= cdsCLSMVSOperationsPROGRAM_TOOL_PRODUCT_CODE.AsVariant;
    cdsOperationsPROGRAM_TOOL_PRODUCT_NAME.AsVariant:= cdsCLSMVSOperationsPROGRAM_TOOL_PRODUCT_NAME.AsVariant;
    cdsOperationsPROGRAM_TOOL_PRODUCT_NO.AsVariant:= cdsCLSMVSOperationsPROGRAM_TOOL_PRODUCT_NO.AsVariant;
    cdsOperationsSPECIFIC_TOOL_PRODUCT_CODE.AsVariant:= cdsCLSMVSOperationsSPECIFIC_TOOL_PRODUCT_CODE.AsVariant;
    cdsOperationsSPECIFIC_TOOL_PRODUCT_NAME.AsVariant:= cdsCLSMVSOperationsSPECIFIC_TOOL_PRODUCT_NAME.AsVariant;
    cdsOperationsSPECIFIC_TOOL_PRODUCT_NO.AsVariant:= cdsCLSMVSOperationsSPECIFIC_TOOL_PRODUCT_NO.AsVariant;
    cdsOperationsTYPICAL_TOOL_PRODUCT_CODE.AsVariant:= cdsCLSMVSOperationsTYPICAL_TOOL_PRODUCT_CODE.AsVariant;
    cdsOperationsTYPICAL_TOOL_PRODUCT_NAME.AsVariant:= cdsCLSMVSOperationsTYPICAL_TOOL_PRODUCT_NAME.AsVariant;
    cdsOperationsTYPICAL_TOOL_PRODUCT_NO.AsVariant:= cdsCLSMVSOperationsTYPICAL_TOOL_PRODUCT_NO.AsVariant;
    cdsOperationsNOTES.AsVariant:= cdsCLSMVSOperationsNOTES.AsVariant;
    cdsOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY.AsVariant:= cdsCLSMVSOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY.AsVariant;
    cdsOperationsTYPICAL_TOOL_DETAIL_TECH_QTY.AsVariant:= cdsCLSMVSOperationsTYPICAL_TOOL_DETAIL_TECH_QTY.AsVariant;
    cdsOperationsPROGRAM_TOOL_REQUIREMENT_CODE.AsVariant:= cdsCLSMVSOperationsPROGRAM_TOOL_REQUIREMENT_CODE.AsVariant;
    cdsOperationsSPECIFIC_TOOL_REQUIREMENT_CODE.AsVariant:= cdsCLSMVSOperationsSPECIFIC_TOOL_REQUIREMENT_CODE.AsVariant;
    cdsOperationsTYPICAL_TOOL_REQUIREMENT_CODE.AsVariant:= cdsCLSMVSOperationsTYPICAL_TOOL_REQUIREMENT_CODE.AsVariant;
    cdsOperationsPROGRAM_TOOL_IS_COMPLETE.AsBoolean:= False;
    cdsOperationsSPECIFIC_TOOL_IS_COMPLETE.AsBoolean:= False;
    cdsOperationsTYPICAL_TOOL_IS_COMPLETE.AsBoolean:= False;
    cdsOperationsTREATMENT_BEGIN_WORKDAY_NO.AsVariant:= cdsCLSMVSOperationsTREATMENT_BEGIN_WORKDAY_NO.AsVariant;
    cdsOperationsTREATMENT_WORKDAYS.AsVariant:= cdsCLSMVSOperationsTREATMENT_WORKDAYS.AsVariant;
    cdsOperationsHAS_SPECIAL_CONTROL.AsVariant:= cdsCLSMVSOperationsHAS_SPECIAL_CONTROL.AsVariant;
    cdsOperationsIS_AUTO_MOVEMENT.AsVariant:= cdsCLSMVSOperationsIS_AUTO_MOVEMENT.AsVariant;
    cdsOperationsIS_AUTO_SETUP.AsVariant:= cdsCLSMVSOperationsIS_AUTO_SETUP.AsVariant;
    cdsOperationsD_HOUR_PRICE.AsVariant:= cdsCLSMVSOperationsD_HOUR_PRICE.AsVariant;
    cdsOperationsD_MAINTAINANCE_HOUR_PRICE.AsVariant:= cdsCLSMVSOperationsD_MAINTAINANCE_HOUR_PRICE.AsVariant;
    cdsOperationsD_PARALLEL_OPERATOR_COUNT.AsVariant:= cdsCLSMVSOperationsD_PARALLEL_OPERATOR_COUNT.AsVariant;
    cdsOperationsD_PARALLEL_PROCESS_COUNT.AsVariant:= cdsCLSMVSOperationsD_PARALLEL_PROCESS_COUNT.AsVariant;

    cdsOperationsHAS_DOCUMENTATION.AsVariant:= cdsCLSMVSOperationsHAS_DOCUMENTATION.AsVariant;
    cdsOperationsDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant:= cdsCLSMVSOperationsDOC_EMPTINESS_REQUIREMENT_CODE.AsVariant;
    cdsOperationsDOC_IS_COMPLETE.AsVariant:= cdsCLSMVSOperationsDOC_IS_COMPLETE.AsVariant;
    cdsOperationsUNAPPROVED_ACTIVE_DI_COUNT.AsInteger:= cdsCLSMVSOperationsUNAPPROVED_ACTIVE_DI_COUNT.AsInteger;

    if (cdsOperationsSMVS_OPERATION_VARIANT_NO.AsInteger = 0) then
      begin
        dmDocClient.CreateDocLike(
          cdsCLSMVSOperationsDOC_BRANCH_CODE.AsInteger,
          cdsCLSMVSOperationsDOC_CODE.AsInteger,
          False,
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
    else  { if }
      begin
        cdsOperationsDOC_BRANCH_CODE.AsInteger:= OperationVariant0DocBranchCode;
        cdsOperationsDOC_CODE.AsInteger:= OperationVariant0DocCode;
      end;  { if }
  end;   { AssignOperationsFields }

var
  SaveCursor: TCursor;
  SaveOperationsAutoCalcFields: Boolean;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    FCreatingLike:= True;
    try
      if NewVersionEnabled then
        actNewVersion.Execute;

      CheckEditMode(cdsData);
      cdsDataSPEC_PRODUCT_CODE.Clear;

      cdsData.DisableControls;
      cdsSpecModelVariants.DisableControls;
      cdsGridData.DisableControls;
      cdsSpecModelVariantLines.DisableControls;
      cdsSpecModelVariantStages.DisableControls;
      cdsOperations.DisableControls;
      cdsSpecModelVariantTasks.DisableControls;
      cdsSpecModelVariantTaskDepts.DisableControls;
      try
        SaveOperationsAutoCalcFields:= cdsOperations.AutoCalcFields;
        cdsOperations.AutoCalcFields:= False;
        try
          OpenCreateLikeDataSets;
          try
            dmDocClient.ReserveDocCodes(dmDocClient.LoadSpecDocs(FCreateLikeProductCode, 0, False, True));

            // copy Spec
            AssignSpecFields;

            // copy SpecModelVariant
            cdsCLSpecModelVariants.First;
            while not cdsCLSpecModelVariants.EOF do
              begin
                cdsSpecModelVariants.Append;
                try
                  AssignSpecModelVariantFields;
                  cdsSpecModelVariants.Post;

                  // copy tasks
                  while not cdsCLSpecModelVariantTasks.EOF do
                    begin
                      cdsSpecModelVariantTasks.Append;
                      try
                        AssignSpecModelVariantTaskFields;
                        cdsSpecModelVariantTasks.Post;
                      except
                        cdsSpecModelVariantTasks.Cancel;
                        raise;
                      end;   { try }

                      // copy SpecModelVariantTaskDepts
                      cdsCLSpecModelVariantTaskDepts.First;
                      while not cdsCLSpecModelVariantTaskDepts.EOF do
                        begin
                          cdsSpecModelVariantTaskDepts.Append;
                          try
                            AssignSpecModelVariantTaskDeptFields;
                            cdsSpecModelVariantTaskDepts.Post;
                          except
                            cdsSpecModelVariantTaskDepts.Cancel;
                            raise;
                          end;   { try }

                          cdsCLSpecModelVariantTaskDepts.Next;
                        end;   { while }

                      cdsCLSpecModelVariantTasks.Next;
                    end;   { while }
                except
                  cdsSpecModelVariants.Cancel;
                  raise;
                end;   { try }

                cdsCLSpecModelVariants.Next;
              end;   { while }
            cdsSpecModelVariants.First;

            // copy SpecLines
            cdsCLSpecLines.First;
            while not cdsCLSpecLines.EOF do
              begin
                cdsGridData.Append;
                try
                  AssignSpecLineFields;
                  cdsGridData.Post;
                except
                  cdsGridData.Cancel;
                  raise;
                end;   { try }

                // copy SpecModelVariantLines
                cdsCLSpecModelVariantLines.First;
                while not cdsCLSpecModelVariantLines.EOF do
                  begin
                    cdsSpecModelVariantLines.Append;
                    try
                      AssignSpecModelVariantLineFields;
                      cdsSpecModelVariantLines.Post;
                    except
                      cdsSpecModelVariantLines.Cancel;
                      raise;
                    end;   { try }

                    // copy SpecModelVariantStages
                    cdsCLSpecModelVariantStages.First;
                    while not cdsCLSpecModelVariantStages.EOF do
                      begin
                        cdsSpecModelVariantStages.Append;
                        try
                          AssignStagesFields;
                          cdsSpecModelVariantStages.Post;
                        except
                          cdsSpecModelVariantStages.Cancel;
                          raise;
                        end;   { try }

                        // copy SMVSOperations
                        cdsCLSMVSOperations.First;
                        while not cdsCLSMVSOperations.EOF do
                          begin
                            NewOperationData.SetData(-1, -1);
                            cdsOperations.Append;
                            try
                              AssignOperationsFields;
                              cdsOperations.Post;
                            except
                              cdsOperations.Cancel;
                              raise;
                            end;   { try }

                            cdsCLSMVSOperations.Next;
                          end;   { while }

                        cdsCLSpecModelVariantStages.Next;
                      end;   { while }

                    cdsCLSpecModelVariantLines.Next;
                  end;   { while }

                cdsCLSpecLines.Next;
              end;   { while }
            cdsGridData.First;

            if (cdsSpecModelVariants.RecordCount > 0) then
              CurrentModelVariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;
          finally
            CloseCreateLikeDataSets;
          end;   { try }
        finally
          cdsOperations.AutoCalcFields:= SaveOperationsAutoCalcFields;
        end;  { try }
      finally
        cdsData.EnableControls;
        cdsSpecModelVariants.EnableControls;
        cdsGridData.EnableControls;
        cdsSpecModelVariantLines.EnableControls;
        cdsSpecModelVariantStages.EnableControls;
        cdsOperations.EnableControls;
        cdsSpecModelVariantTasks.EnableControls;
        cdsSpecModelVariantTaskDepts.EnableControls;
      end;   { try }

      UpdateFilteredGridData;
    finally
      FCreatingLike:= False;
    end;   { try SaveCursor }

    cdsSpecModelVariants.First;

    FMaxSpecLineCode:= VarToInt(cdsGridData_MAX_SPEC_LINE_CODE.AsVariant);
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try }
end;

procedure TfmSpecification.cdsGridDataDETAIL_CODEChange(Sender: TField);
begin
  if (not FCreatingLike) and (not FAddingSpecification) then
    inherited;
end;

procedure TfmSpecification.cdsGridDataDETAIL_TECH_QUANTITYChange(
  Sender: TField);
begin
  if not FCreatingLike then
    inherited;
end;

procedure TfmSpecification.cdsGridDataPRODUCT_CODEChange(Sender: TField);
begin
  if (not FCreatingLike) and (not FAddingSpecification) then
    inherited;
end;

procedure TfmSpecification.cdsGridDataPRODUCT_TECH_QUANTITYChange(
  Sender: TField);
begin
  if not FCreatingLike then
    inherited;
end;

procedure TfmSpecification.actAddBasedOnExecute(Sender: TObject);
var
  VariantNo: Integer;
begin
  inherited;

  VariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;

  FAddModelVariantBasedOnMainDeptCode:=
    cdsSpecModelVariantsMAIN_DEPT_CODE.AsInteger;
  FModelVariantMaxQuantity:= cdsSpecModelVariantsMAX_TECH_QUANTITY.AsFloat;

  if TfmSpecModelVariantEdit.ShowForm(dmDocClient, cdsSpecModelVariants, emInsert) then
    begin
      CopyAllVariantStagesFrom(VariantNo);
      CopyAllVariantTasksFrom(VariantNo);
      CurrentModelVariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;
    end;
end;

function TfmSpecification.CalcTotalTreatmentWorkdays(CurrentModelVariantOnly: Boolean): Integer;
var
  MaxTotalTreatmentWorkdays: Integer;

  procedure CalcModelVariant;
  var
    LevelTotalTreatmentWorkdays: array[-1..MaxNoPos] of Integer;
    i: Integer;
    Level: Integer;
    CurrentLevelTotalTreatmentWorkdays: Integer;
  begin
    for i:= -1 to MaxNoPos do
      LevelTotalTreatmentWorkdays[i]:= 0;

    cdsGridData.First;
    while not cdsGridData.EOF do
      begin
        Level:= LastNoPos;
        CurrentLevelTotalTreatmentWorkdays:= LevelTotalTreatmentWorkdays[Level-1];

        cdsSpecModelVariantStages.Last;
        while not cdsSpecModelVariantStages.BOF do
          begin
            Inc(CurrentLevelTotalTreatmentWorkdays,
              cdsSpecModelVariantStagesTREATMENT_WORKDAYS.AsInteger -
              cdsSpecModelVariantStagesOUTGOING_WORKDAYS.AsInteger);

            if (cdsSpecModelVariantStagesTOTAL_TREATMENT_WORKDAYS.AsInteger <> CurrentLevelTotalTreatmentWorkdays) then
              begin
                cdsSpecModelVariantStages.Edit;
                try
                  cdsSpecModelVariantStagesTOTAL_TREATMENT_WORKDAYS.AsInteger:=
                    CurrentLevelTotalTreatmentWorkdays;

                  cdsSpecModelVariantStages.Post;
                except
                  cdsSpecModelVariantStages.Cancel;
                  raise;
                end;   { try }
              end;

            cdsSpecModelVariantStages.Prior;
          end;   { while }

        LevelTotalTreatmentWorkdays[Level]:=
          CurrentLevelTotalTreatmentWorkdays;

        MaxTotalTreatmentWorkdays:= Max(MaxTotalTreatmentWorkdays, CurrentLevelTotalTreatmentWorkdays);

        cdsGridData.Next;
      end;   { while }
  end;

var
  SaveCurrentModelVariantNo: Integer;
  GridDataBookmark: TBookmark;
  StagesBookmark: TBookmark;
begin
  FCalculatingTotalTreatmentWorkdays:= True;
  try
    cdsModel.DisableControls;
    try
      cdsGridData.DisableControls;
      try
        cdsSpecModelVariants.DisableControls;
        try
          cdsSpecModelVariantStages.DisableControls;
          try
            GridDataBookmark:= cdsGridData.Bookmark;
            StagesBookmark:= cdsSpecModelVariantStages.Bookmark;
            try
              MaxTotalTreatmentWorkdays:= 0;

              if CurrentModelVariantOnly then
                CalcModelVariant
              else
                begin
                  SaveCurrentModelVariantNo:= CurrentModelVariantNo;
                  try
                    cdsSpecModelVariants.First;
                    while not cdsSpecModelVariants.EOF do
                      begin
                        CurrentModelVariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;

                        CalcModelVariant;

                        cdsSpecModelVariants.Next;
                      end;   { while }
                  finally
                    CurrentModelVariantNo:= SaveCurrentModelVariantNo;
                  end;   { try }
                end;

              Result:= MaxTotalTreatmentWorkdays;
            finally
              cdsGridData.Bookmark:= GridDataBookmark;
              cdsSpecModelVariantStages.Bookmark:= StagesBookmark;
            end;  { try }
          finally
            cdsSpecModelVariantStages.EnableControls;
          end;   { try }
        finally
          cdsSpecModelVariants.EnableControls;
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
end;

procedure TfmSpecification.CopyAllVariantStagesFrom(
  FromVariantNo: Integer);
var
  SaveCursor: TCursor;
  SaveModelVariantNo: Integer;
  b: TBookmark;
  ToVariantNo: Integer;
  OperationVariant0DocBranchCode: Integer;
  OperationVariant0DocCode: Integer;
begin
  FCopyingVariantStages:= True;
  try
    SaveCursor:= Screen.Cursor;
    Screen.Cursor:= crHourGlass;
    try
      cdsGridData.DisableControls;
      try
        cdsSpecModelVariants.DisableControls;
        try
          b:= cdsSpecModelVariants.Bookmark;
          try
            cdsSpecModelVariantStages.DisableControls;
            try
              SaveModelVariantNo:= CurrentModelVariantNo;
              try
                ToVariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;
                CurrentModelVariantNo:= FromVariantNo;

                cdsCopyModelVariant.CreateDataSet;
                try
                  cdsCopyModelVariantOperations.CreateDataSet;
                  try
                    cdsGridData.First;
                    while not cdsGridData.EOF do
                      begin
                        cdsSpecModelVariantStages.First;
                        while not cdsSpecModelVariantStages.EOF do
                          begin
                            cdsCopyModelVariant.Append;
                            try
                              AssignFields(cdsSpecModelVariantStages, cdsCopyModelVariant);
                              cdsCopyModelVariant.Post;
                            except
                              cdsCopyModelVariant.Cancel;
                              raise;
                            end;   { try }

                            cdsOperations.First;
                            while not cdsOperations.Eof do
                              begin
                                cdsCopyModelVariantOperations.Append;
                                try
                                  AssignFields(cdsOperations, cdsCopyModelVariantOperations);
                                  cdsCopyModelVariantOperations.Post;
                                except
                                  cdsCopyModelVariantOperations.Cancel;
                                  raise;
                                end;   { try }

                                cdsOperations.Next;
                              end;   { while }

                            cdsSpecModelVariantStages.Next;
                          end;   { while }

                        cdsGridData.Next;
                      end;   { while }

                    CurrentModelVariantNo:= ToVariantNo;

                    // stages
                    cdsCopyModelVariant.First;
                    while not cdsCopyModelVariant.EOF do
                      begin
                        cdsSpecModelVariantStages.Append;
                        try
                          AssignFields(cdsCopyModelVariant, cdsSpecModelVariantStages);

                          dmDocClient.CreateDocLike(
                            cdsCopyModelVariantDOC_BRANCH_CODE.AsInteger,
                            cdsCopyModelVariantDOC_CODE.AsInteger,
                            False,
                            cdsSpecModelVariantStagesDOC_BRANCH_CODE,
                            cdsSpecModelVariantStagesDOC_CODE);

                          if cdsSpecModelVariantStagesDOC_CODE.IsNull then
                            begin
                              cdsSpecModelVariantStagesHAS_DOCUMENTATION.AsBoolean:= False;
                              cdsSpecModelVariantStagesDOC_EMPTINESS_REQUIREMENT_CODE.Clear;
                              cdsSpecModelVariantStagesDOC_IS_COMPLETE.AsBoolean:= False;
                              cdsSpecModelVariantStagesUNAPPROVED_ACTIVE_DI_COUNT.Clear;
                            end;

                          cdsSpecModelVariantStages.Post;
                        except
                          cdsSpecModelVariantStages.Cancel;
                          raise;
                        end;   { try }

                        cdsCopyModelVariant.Next;
                      end;   { while }

                    // operations
                    OperationVariant0DocBranchCode:= -1;
                    OperationVariant0DocCode:= -1;

                    cdsCopyModelVariantOperations.First;
                    while not cdsCopyModelVariantOperations.EOF do
                      begin
                        cdsGridData.Locate('SPEC_LINE_CODE', cdsCopyModelVariantOperationsSPEC_LINE_CODE.AsInteger, []);
                        cdsSpecModelVariantStages.Locate('SPEC_LINE_STAGE_CODE', cdsCopyModelVariantOperationsSPEC_LINE_STAGE_CODE.AsInteger, []);

                        cdsOperations.Append;
                        try
                          AssignFields(cdsCopyModelVariantOperations, cdsOperations);

                          if (cdsOperationsSMVS_OPERATION_VARIANT_NO.AsInteger = 0) then
                            begin
                              dmDocClient.CreateDocLike(
                                cdsCopyModelVariantOperationsDOC_BRANCH_CODE.AsInteger,
                                cdsCopyModelVariantOperationsDOC_CODE.AsInteger,
                                False,
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
                        end;   { try }

                        cdsCopyModelVariantOperations.Next;
                      end;   { while }
                  finally
                    cdsCopyModelVariantOperations.Close;
                  end;   { try }
                finally
                  cdsCopyModelVariant.Close;
                end;   { try }
              finally
                CurrentModelVariantNo:= SaveModelVariantNo;
              end;   { try }

              cdsGridData.First;
              cdsSpecModelVariantStages.First;
            finally
              cdsSpecModelVariantStages.EnableControls;
            end;   { try }
          finally
            cdsSpecModelVariants.Bookmark:= b;
          end;
        finally
          cdsSpecModelVariants.EnableControls;
        end;   { try }
      finally
        cdsGridData.EnableControls;
      end;   { try }
    finally
      Screen.Cursor:= SaveCursor;
    end;   { try SaveCursor }
  finally
    FCopyingVariantStages:= False;
  end;   { try }
end;

function TfmSpecification.GetEditModelVariantReadOnly: Boolean;
begin
  Result:=
    cdsSpecModelVariants.IsEmpty or
    (EditMode = emReadOnly) or
    (not CanModifyModel);
end;

function TfmSpecification.GetEditStageReadOnly: Boolean;
begin
  Result:=
    inherited GetEditStageReadOnly or
    cdsGridDataIS_IMPORTED.AsBoolean;
end;

procedure TfmSpecification.cdsSpecModelVariantStagesBeforePost(
  DataSet: TDataSet);
begin                                   
  inherited;

  if (cdsSpecModelVariantStagesOUTGOING_WORKDAYS.AsInteger >
      cdsSpecModelVariantStagesTREATMENT_WORKDAYS.AsInteger) then
    begin
      cdsSpecModelVariantStagesOUTGOING_WORKDAYS.FocusControl;
      raise Exception.Create(SWrongWorkdays);
    end;

  if (cdsSpecModelVariantStagesOUTGOING_WORKDAYS.AsInteger = 0) then
    cdsSpecModelVariantStagesIS_AUTO_MOVEMENT.AsBoolean:= False;

  if cdsSpecModelVariantStagesDOC_CODE.IsNull then
    dmDocClient.DSNewDoc(cdsSpecModelVariantStages);
end;

function TfmSpecification.NewVersionEnabled: Boolean;
begin
  Result:=
    (not cdsDataAUTHORIZATION_EMPLOYEE_CODE.IsNull) and
    (FOldSpecVersionNo = cdsDataSPEC_VERSION_NO.AsInteger);
end;

procedure TfmSpecification.cdsDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  cdsData.Params.ParamByName('CREATE_LIKE').AsInteger:= Ord(FCreateLike);

  if FCreateLike then
    cdsData.Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:=
      pdsGridDataParamsNEW_SPEC_PRODUCT_CODE.AsInteger;
end;

procedure TfmSpecification.ChangeEditMode(var AEditMode: TEditMode);
begin
  inherited;
  if FCreateLike and
     not cdsData.IsEmpty then
    AEditMode:= emEdit; 
end;

procedure TfmSpecification.actPrintExecute(Sender: TObject);
var
  PrintOnA3, PrintProductNos, PrintNotes, PrintInvestedValues: Boolean;
begin
//  inherited;           new behaviour

  if TfmSpecificationPrintOptions.ShowForm(HasShowInvestedValueActivity, PrintOnA3, PrintProductNos, PrintNotes, PrintInvestedValues) then
    begin
      FDontShowInvestedValues:= not PrintInvestedValues;
      try
        TrptSpecification.PrintReport(cdsFilteredGridData, cdsData, PrintOnA3, PrintProductNos, PrintNotes,
          edtStructureCoef.Text, edtInvestedValueResultProductTechQuantity.Text,
          edtInvestedValueType.Text, IfThen(PrintInvestedValues, edtTotalInvestedValue.Text, SNotAvailable),
          lblTotalInvestedValueCurrencyAbbrev.Caption, edtInvestedValuesDate.Text);
      finally
        FDontShowInvestedValues:= False;
        dsGridData.DataSet:= nil;
        dsGridData.DataSet:= cdsGridData;
      end;  { try }
    end;
end;

procedure TfmSpecification.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;

  with DataSet do
    begin
      Edit;
      try
        if (FCreateLikeProductCode > 0) then
          pdsGridDataParamsORIGINAL_SPEC_PRODUCT_CODE.AsInteger:=
            FCreateLikeProductCode;

        if (FCreateLikeNewProductCode > 0) then
          pdsGridDataParamsNEW_SPEC_PRODUCT_CODE.AsInteger:=
            FCreateLikeNewProductCode;

        Post;
      except
        Cancel;
        raise;
      end;   { try }
    end;   { with }
end;

function TfmSpecification.LineDetailTechQuantity: Real;
begin
  Result:= cdsGridDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat;
end;

function TfmSpecification.GetParentLineDetailTechQuantity: Variant;
begin
  Result:= cdsGridDataPAR_TOTAL_DETAIL_TECH_QUANTITY.AsVariant;
end;

procedure TfmSpecification.DeleteSpecModelVariantLinesFor(ASpecLineCode,
  ASpecModelVariantNo: Integer);

  procedure DeleteAllStages;
  begin
    FDeletingAllStages:= True;
    try
      cdsSpecModelVariantStages.First;
      while not (cdsSpecModelVariantStages.BOF and cdsSpecModelVariantStages.EOF) do
        cdsSpecModelVariantStages.Delete;
    finally
      FDeletingAllStages:= False;
    end;   { try }
  end;   { DeleteAllStages }

var
  SaveCursor: TCursor;
  b: TBookmark;
  SaveFiltered: Boolean;
begin
  if FEmptingDataSets then Exit;

  Assert((ASpecLineCode <> 0) or (ASpecModelVariantNo <> 0));

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    with cdsGridData do
      begin
        DisableControls;
        try
          b:= Bookmark;
          try
            cdsSpecModelVariantStages.DisableControls;
            try
              SaveFiltered:= cdsSpecModelVariantLines.Filtered;
              cdsSpecModelVariantLines.Filtered:= False;
              try
                First;

                if (ASpecLineCode = 0) then
                  begin
                    while not EOF do
                      begin
                        if cdsSpecModelVariantLines.Locate('SPEC_MODEL_VARIANT_NO', ASpecModelVariantNo, []) then
                          begin
                            DeleteAllStages;
                            cdsSpecModelVariantLines.Delete;
                          end;   { if }

                        Next;
                      end;   { while }
                  end
                else   { if }       // SpecLineCode <> 0
                  begin
                    Locate('SPEC_LINE_CODE', ASpecLineCode, []);

                    if (ASpecModelVariantNo = 0) then
                      begin
                        cdsSpecModelVariantLines.First;
                        while not (cdsSpecModelVariantLines.BOF and cdsSpecModelVariantLines.EOF) do
                          begin
                            DeleteAllStages;
                            cdsSpecModelVariantLines.Delete;
                          end;   { while }
                      end
                    else   { if }
                      begin
                        cdsSpecModelVariantLines.Locate('SPEC_MODEL_VARIANT_NO', ASpecModelVariantNo, []);

                        DeleteAllStages;
                        cdsSpecModelVariantLines.Delete;
                      end;   { if }
                  end;   { if }
              finally
                cdsSpecModelVariantLines.Filtered:= SaveFiltered;
              end;   { try }
            finally
              cdsSpecModelVariantStages.EnableControls;
            end;   { try }
          finally
            Bookmark:= b;
          end;   { try }
        finally
          EnableControls;
        end;   { try }
      end;   { with }

    UnauthorizeCurrentModelVariant;
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

procedure TfmSpecification.cdsGridDataBeforeDelete(DataSet: TDataSet);
begin
  inherited;
// sledvashtoto po princip triabva da go ima samo pri Specifikacia Kato, shtoto inache
// dava "Mismatch in datapacket" pri ApplyUpdates
  if FCreateLike or (cdsGridData.UpdateStatus = usInserted) then
    DeleteSpecModelVariantLinesFor(cdsGridDataSPEC_LINE_CODE.AsInteger, 0);
end;

procedure TfmSpecification.cdsSpecModelVariantsBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;

  DeleteSpecModelVariantLinesFor(0, cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger);

  with cdsSpecModelVariantTasks do
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

procedure TfmSpecification.AppendSpecModelVariantLine;
begin
  cdsSpecModelVariantLines.Append;
  try
    cdsSpecModelVariantLinesSPEC_PRODUCT_CODE.AsVariant:= 
      cdsSpecModelVariantsSPEC_PRODUCT_CODE.AsVariant;
    cdsSpecModelVariantLinesSPEC_MODEL_VARIANT_NO.AsVariant:= 
      cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsVariant;
    cdsSpecModelVariantLinesSPEC_LINE_CODE.AsVariant:= 
      cdsGridDataSPEC_LINE_CODE.AsVariant;
    cdsSpecModelVariantLinesIMPORT_SPEC_PRODUCT_CODE.AsVariant:= 
      cdsSpecModelVariantsSPEC_PRODUCT_CODE.AsVariant;
    cdsSpecModelVariantLinesIMPORT_SPEC_MODEL_VARIANT_NO.AsVariant:=
      cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsVariant;

    cdsSpecModelVariantLines.Post;
  except
    cdsSpecModelVariantLines.Cancel;
    raise;
  end;   { try }
end;

procedure TfmSpecification.cdsSpecModelVariantLinesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;

  Accept:=
    (cdsSpecModelVariantLinesSPEC_MODEL_VARIANT_NO.AsInteger = CurrentModelVariantNo);
end;

function TfmSpecification.ReadOnlyLine: Boolean;
begin
  Result:=
    (cdsGridDataIS_IMPORTED_SUBDETAIL.AsInteger > 0);
end;

function TfmSpecification.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertRecordEnabled and
    (cdsGridDataIS_IMPORTED_SUBDETAIL.AsInteger = 0);
end;

function TfmSpecification.GetAddSpecificationEnabled: Boolean;
begin
  Result:=
    FInsertingSpecification or
    (inherited GetAddSpecificationEnabled and
     (cdsGridDataIS_IMPORTED_SUBDETAIL.AsInteger = 0) and
     (not cdsGridDataIS_IMPORTED.AsBoolean) and
     (cdsGridDataNO_1.AsInteger = 0));
end;

function TfmSpecification.GetAddChildEnabled: Boolean;
begin
  Result:=
    inherited GetAddChildEnabled and
    (cdsGridDataIS_IMPORTED_SUBDETAIL.AsInteger = 0) and
    (not cdsGridDataIS_IMPORTED.AsBoolean) and
    (cdsGridDataNO_1.AsInteger = 0);
end;

procedure TfmSpecification.cdsDataBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  OwnerData:= VarArrayCreate([0, 1], varVariant);

  if FCreateLike then
    OwnerData[0]:= VarToInt(FOldSpecProductCode)
  else
    OwnerData[0]:= 0;

  OwnerData[1]:= DocsDelta;
end;

function TfmSpecification.InsertOrReplaceSpecification(DoInsert: Boolean): Boolean;

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
  InsertBeforeSpecLineCode: Integer;
  DetailTechQuantity: Real;
  ConstructionNotes: string;
  i: Integer;
  AddedSpecificationCount: Integer;
begin
  inherited;

  Result:= False;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    if (not DoInsert) and
       cdsFilteredGridData.FieldByName(IsShrunkFieldName).AsBoolean then
      ToggleIsShrunk;

    FLockIsComplete:= True;
    try
      with cdsGridData do
        begin
          DisableControls;
          try
            lnp:= LastNoPos;
            InsertBeforeNo:= GetNoField(lnp).AsInteger;
            InsertBeforeSpecLineCode:= cdsGridDataSPEC_LINE_CODE.AsInteger;

            if DoInsert then
              begin
                FReplaceSpecProductCode:= 0;
                DetailTechQuantity:= 1;
                ConstructionNotes:= '';
              end
            else   { if }
              begin
                FReplaceSpecProductCode:= cdsGridDataDETAIL_CODE.AsInteger;
                DetailTechQuantity:= cdsGridDataDETAIL_TECH_QUANTITY.AsFloat;
                ConstructionNotes:= cdsGridDataCONSTRUCTION_NOTES.AsString;
              end;   { if }

            FInsertingSpecification:= True;
            try
              actAddSpecification.Execute;
            finally
              FInsertingSpecification:= False;
            end;   { try }

            AddedSpecificationCount:= Length(FAddedSpecificationSpecLineCodes);
            if (AddedSpecificationCount > 0) then
              begin
                if DoInsert then
                  IncNo(lnp, AddedSpecificationCount);

                FRelocatingSpecification:= True;
                try
                  if DoInsert then
                    begin
                      repeat
                        Prior;
                        IncNo(lnp, AddedSpecificationCount);
                      until (InsertBeforeSpecLineCode = cdsGridDataSPEC_LINE_CODE.AsInteger);
                    end
                  else   { if }
                    begin
                      Locate('SPEC_LINE_CODE', InsertBeforeSpecLineCode, []);
                      DeleteLine(False);
                    end;   { if }
                finally
                  FRelocatingSpecification:= False;
                end;   { try }

                for i:= 0 to AddedSpecificationCount - 1 do
                  begin
                    Locate('SPEC_LINE_CODE', FAddedSpecificationSpecLineCodes[i], []);

                    Edit;
                    try
                      GetNoField(lnp).AsInteger:= InsertBeforeNo + i;
                      cdsGridDataDETAIL_TECH_QUANTITY.AsFloat:= DetailTechQuantity;
                      cdsGridDataCONSTRUCTION_NOTES.AsString:= ConstructionNotes;

                      Post;
                    except
                      Cancel;
                      raise;
                    end;   { try }
                  end;

                Result:= True;
              end;   { if }
          finally
            EnableControls;
          end;   { try }
        end;   { with }
    finally
      FLockIsComplete:= True;
    end;  { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

procedure TfmSpecification.actRefreshSpecificationUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    (CanModifyData or CanModifyModel) and
    (cdsGridDataIS_IMPORTED_SUBDETAIL.AsInteger = 0) and
    cdsGridDataIS_IMPORTED.AsBoolean;
end;

procedure TfmSpecification.actShowInactiveModelVariantsExecute(Sender: TObject);
begin
  inherited;
  actShowInactiveModelVariants.Checked:= not actShowInactiveModelVariants.Checked;
  btnShowInactiveModelVariants.Down:= actShowInactiveModelVariants.Checked;
  cdsSpecModelVariants.Filtered:= not actShowInactiveModelVariants.Checked;
end;

procedure TfmSpecification.actSpecInvestedValuesLevel1Execute(Sender: TObject);
begin
  inherited;

  LoginContext.CheckUserActivity(uaShowLevelOneInvestedValues);

  cdsSpecInvestedValuesLevelParams.CreateDataSet;
  try
    cdsSpecInvestedValuesLevelParams.SafeAppend /
      procedure begin
        cdsSpecInvestedValuesLevelParamsSPEC_PRODUCT_CODE.Assign(cdsDataSPEC_PRODUCT_CODE);
        cdsSpecInvestedValuesLevelParamsTHE_DATE.AsDateTime:= InvestedValueFilter.InvestedValueDate;
        cdsSpecInvestedValuesLevelParamsRESULT_PRODUCT_TECH_QUANTITY.AsFloat:= InvestedValueFilter.ResultProductTechQuantity;
      end;

    TfmSpecInvestedValuesLevel1.ShowForm(nil, cdsSpecInvestedValuesLevelParams);
  finally
    cdsSpecInvestedValuesLevelParams.Close;
  end;
end;

procedure TfmSpecification.actSpecInvestedValuesLevel1Update(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not GetApplyUpdatesEnabled;
end;

procedure TfmSpecification.actRefreshSpecificationExecute(Sender: TObject);
var
  Authorized: Boolean;
  AuthorEmployeeCode: Integer;
begin
  inherited;

  if not dmMain.SvrSpecifications.SpecificationExists(
           cdsGridDataDETAIL_CODE.AsInteger, Authorized, AuthorEmployeeCode) then
    raise Exception.Create(SSpecificationDeleted)
  else
    begin
      if InsertOrReplaceSpecification(False) then
        UpdateFilteredGridData;
    end;
end;

function TfmSpecification.GetAddModelVariantEnabled: Boolean;
begin
  Result:=
    cdsSpecModelVariants.Active and
    (EditMode <> emReadOnly) and
    CanModifyModel;
end;

procedure TfmSpecification.actAddBasedOnUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    GetAddModelVariantEnabled and
    not (cdsSpecModelVariants.Bof and cdsSpecModelVariants.Eof);
end;

function TfmSpecification.GetStagesClientDataSet: TClientDataSet;
begin
  Result:= cdsSpecModelVariantStages;
end;

function TfmSpecification.GetParent: Variant;
begin
  Result:= cdsGridDataPARENT_SPEC_LINE_CODE.AsVariant;
end;

function TfmSpecification.SameParent(AParent: Variant): Boolean;
begin
  Result:= (AParent = cdsGridDataPARENT_SPEC_LINE_CODE.AsVariant);
end;

procedure TfmSpecification.SetParentLineDetailTechQuantity(
  const Value: Variant);
begin
  cdsGridDataPAR_TOTAL_DETAIL_TECH_QUANTITY.AsVariant:= Value;
end;

function TfmSpecification.GetStageNoField: TField;
begin
  Result:= cdsSpecModelVariantStagesSPEC_LINE_STAGE_NO;
end;

function TfmSpecification.GetOperationNoField: TField;
begin
  Result:= cdsOperationsSMVS_OPERATION_NO;
end;

procedure TfmSpecification.FillMainDepts;
var
  ModelVariantsBookmark: TBookmark;
  TasksBookmark: TBookmark;
  TaskDeptsBookmark: TBookmark;
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsSpecModelVariants.DisableControls;
    try
      cdsSpecModelVariantTasks.DisableControls;
      try
        cdsSpecModelVariantTaskDepts.DisableControls;
        try
          ModelVariantsBookmark:= cdsSpecModelVariants.Bookmark;
          TasksBookmark:= cdsSpecModelVariantTasks.Bookmark;
          TaskDeptsBookmark:= cdsSpecModelVariantTaskDepts.Bookmark;
          try
            cdsMainDepts.Close;
            cdsMainDepts.CreateDataSet;

            cdsSpecModelVariants.First;
            while not cdsSpecModelVariants.Eof do
              begin
                cdsMainDepts.First;
                if not cdsMainDepts.Locate('MAIN_DEPT_CODE', cdsSpecModelVariantsMAIN_DEPT_CODE.AsVariant, []) then
                  begin
                    cdsMainDepts.Append;
                    try
                      cdsMainDepts.AssignFields(cdsSpecModelVariants);
                      cdsMainDepts.Post;
                    except
                      cdsMainDepts.Cancel;
                      raise;
                    end;
                  end;  { if }

                cdsSpecModelVariants.Next;
              end;  { while }
          finally
            cdsSpecModelVariants.Bookmark:= ModelVariantsBookmark;
            TasksBookmark:= cdsSpecModelVariantTasks.Bookmark;
            TaskDeptsBookmark:= cdsSpecModelVariantTaskDepts.Bookmark;
          end;
        finally
          cdsSpecModelVariantTaskDepts.EnableControls;
        end;
      finally
        cdsSpecModelVariantTasks.EnableControls;
      end;
    finally
      cdsSpecModelVariants.EnableControls;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

function TfmSpecification.FilterInvestedValueStage(
  RootLineStageIncludeLevel,
  NonRootLineStageIncludeLevel: Integer): Boolean;
begin
  Result:=
    (cdsSpecModelVariantStagesSMVS_TYPE_CODE.AsInteger = smvstNormal) or
    ( (cdsSpecModelVariantStagesSMVS_TYPE_CODE.AsInteger = smvstRowZero) and
      ( ( (cdsGridDataNO_1.AsInteger = 0) and
          (RootLineStageIncludeLevel in [1, 2])
        ) or
        ( (cdsGridDataNO_1.AsInteger > 0) and
          (NonRootLineStageIncludeLevel = 1)
        )
      )
    ) or
    ( (cdsSpecModelVariantStagesSMVS_TYPE_CODE.AsInteger = smvstTrunc) and
      ( ( (cdsGridDataNO_1.AsInteger = 0) and
          (RootLineStageIncludeLevel = 2)
        ) or
        ( (cdsGridDataNO_1.AsInteger > 0) and
          (NonRootLineStageIncludeLevel = 1)
        )
      )
    );
end;

function TfmSpecification.FirstModelDeptColumnIndex: Integer;
begin
  Result:= SpecFirstModelDeptColumnIndex;
end;

procedure TfmSpecification.AddModelFieldDefs;
begin
  with cdsModel.FieldDefs.AddFieldDef do
    begin
      Name:= 'SPEC_LINE_CODE';
      DataType:= ftInteger;
      Index:= 0;
    end;   { with }
end;

procedure TfmSpecification.SetModelFields;
begin
  cdsModel.FieldByName('SPEC_LINE_CODE').Visible:= False;
end;

function TfmSpecification.PrintStaticColumnsCount: Integer;
begin
  Result:= SpecPrintStaticColumnsCount;
end;

procedure TfmSpecification.SetPrintModelParams(RecursivePrint, TaskModelPrint: Boolean;
  ARealNoAsText, ADetailName, ADetailNo: string);
var
  b: TBookmark;
  VariantNo: string;
  MainDeptIdentifier: string;
begin
  inherited;

  with cdsSpecModelVariants do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          First;
          if Locate('SPEC_MODEL_VARIANT_NO', CurrentModelVariantNo, []) then
            begin
              VariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.DisplayText;
              MainDeptIdentifier:= cdsSpecModelVariantsMAIN_DEPT_IDENTIFIER.DisplayText;
            end
          else   { if }
            begin
              VariantNo:= '';
              MainDeptIdentifier:= '';
            end;
        finally
          Bookmark:= b;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }

  pgdModel.BeforeGridText:= pgdSpecModel.BeforeGridText;

  if RecursivePrint then
    AppendRichEditStrings(pgdModel.BeforeGridText, pgdModelRecursive.BeforeGridText);

  if TaskModelPrint then
    AppendRichEditStrings(pgdModel.BeforeGridText, pgdModelTask.BeforeGridText);

//  if InvestedValueVisible then
//    AppendRichEditStrings(pgdModel.BeforeGridText, pgdInvestedValues.BeforeGridText);

  pgdModel.SetSubstitutes([
    'VARIANT_NO', VariantNo,
    'MAIN_DEPT_IDENTIFIER', MainDeptIdentifier,
    'SPEC_PRODUCT_NAME', cdsDataSPEC_PRODUCT_NAME.DisplayText,
    'SPEC_PRODUCT_NO', cdsDataSPEC_PRODUCT_NO.DisplayText,
    'MANUFACTURER_NAME', cdsDataMANUFACTURER_NAME.DisplayText,
    'MIN_TECH_QUANTITY', cdsSpecModelVariantsMIN_TECH_QUANTITY.DisplayText,
    'MAX_TECH_QUANTITY', cdsSpecModelVariantsMAX_TECH_QUANTITY.DisplayText,
    'NO_AS_TEXT', ARealNoAsText,
    'DETAIL_NAME', ADetailName,
    'DETAIL_NO', ADetailNo,
    'TASK_NAME', cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NAME.DisplayText,
    'INVESTED_VALUE_DATE', edtInvestedValuesDate.Text,
    'INVESTED_VALUE_QTY', edtInvestedValueResultProductTechQuantity.Text,
    '_RESULT_PRODUCT_TECH_MEASURE_ABBREV', cdsData_TECH_MEASURE_ABBREV.DisplayText,
    'INVESTED_VALUE_TYPE', edtInvestedValueType.Text,
    'TOTAL_INVESTED_VALUE', edtTotalInvestedValue.Text,
    'INVESTED_VALUE_CURRENCY_ABBREV', lblTotalInvestedValueCurrencyAbbrev.Caption,
    'STRUCT_COEF', edtStructureCoef.Text,
    '_TECH_MEASURE_ABBREV', cdsData_TECH_MEASURE_ABBREV.DisplayText,
    'SPEC_STATE_CODE', cdsDataSPEC_STATE_CODE.DisplayText,
    '_SPEC_TYPE_NAME', cdsData_SPEC_TYPE_NAME.DisplayText,
    'COMPANY_PRODUCT_NAMES', cdsDataCOMPANY_PRODUCT_NAMES.DisplayText,
    'plblSpecStateCode', plblSpecStateCode,
    'plblSpecState', plblSpecState,
    'plblStructCoef', plblStructCoef,
    'plblSpecTypeName', plblSpecTypeName,
    'plblSpecProductName', plblSpecProductName,
    'plblVariantNo', plblVariantNo,
    'plblMainDeptIdentifier', plblMainDeptIdentifier,
    'plblManufacturerName', plblManufacturerName,
    'plblCompanyProductNames', plblCompanyProductNames,
    'plblInvestedValueDate', plblInvestedValueDate,
    'plblInvestedValueQty', plblInvestedValueQty,
    'plblInvestedValueType', plblInvestedValueType,
    'plblTotalInvestedValue', plblTotalInvestedValue,
    'plblDetailStruct', plblDetailStruct,
    'plblNoAsText', plblNoAsText,
    'plblDetailName', plblDetailName,
    'plblDetailNo', plblDetailNo,
    'plblTaskName', plblTaskName,
    'plblInvestedValue', plblInvestedValue
  ]);
end;

function TfmSpecification.AllowLocateModel: Boolean;
begin
  Result:= not FCheckingModel;
end;

function TfmSpecification.ShowStageEditForm(AEditMode: TEditMode): Boolean;
var
  UnapproveMethod: TUnapproveMethod;
  DeptCode: Integer;
  lhadi: Boolean;
  FinalizedDocs: Boolean;
begin
  DeptCode:= cdsSpecModelVariantStagesDEPT_CODE.AsInteger;

  lhadi:= LoginContext.DocItemsUnapprovePrompt and LineHasApprovedDocItem;
  FinalizedDocs:= CountApproveCycles and LineStageAndOperationDocsFinalized;

  Result:= TfmSpecModelVariantStageEdit.ShowForm(dmDocClient, cdsSpecModelVariantStages, AEditMode,
    doNone, True, cdsOperations, cdsGridData, NewOperationData, cdsSpecModelVariants,
    lhadi, GetModelIDentifier, UnapproveMethod, GetStageOperationInvestedValue, InvestedValueFilter);

  if lhadi and Result then
    begin
      UnapproveSpecLineStagesAndOperationsDocs(UnapproveMethod);

      if (EditMode = emInsert) or (DeptCode <> cdsSpecModelVariantStagesDEPT_CODE.AsInteger) then
        UnapproveStage(UnapproveMethod);
    end;

  if Result and FinalizedDocs and (not LineStageAndOperationDocsFinalized) then
    IncApproveCycleNo;
end;

function TfmSpecification.NewLineDataNo(idx: Integer): Integer;
begin
  Result:= NewLineData.No[idx];
end;

function TfmSpecification.DataGridVisible: Boolean;
begin
  Result:=
    inherited DataGridVisible and
    (pcMain.ActivePage <> tsModelVariants);
end;

function TfmSpecification.GetMoveUpLineEnabled: Boolean;
begin
  Result:=
    inherited GetMoveUpLineEnabled and
    (cdsGridDataIS_IMPORTED_SUBDETAIL.AsInteger = 0);
end;

function TfmSpecification.GetMoveUpStageEnabled: Boolean;
begin
  Result:=
    inherited GetMoveUpStageEnabled and
    not cdsGridDataIS_IMPORTED.AsBoolean;
end;

function TfmSpecification.GetMoveDownLineEnabled: Boolean;
begin
  Result:=
    inherited GetMoveDownLineEnabled and
    (cdsGridDataIS_IMPORTED_SUBDETAIL.AsInteger = 0);
end;

function TfmSpecification.GetMoveDownStageEnabled: Boolean;
begin
  Result:=
    inherited GetMoveDownStageEnabled and
    not cdsGridDataIS_IMPORTED.AsBoolean;
end;

procedure TfmSpecification.cdsSpecModelVariantStagesBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;

  dmDocClient.DSDeleteDoc(DataSet);

  StagesBeforeDelete(DataSet);

  with cdsOperations do
    begin
      DisableControls;
      try
        First;
        while not Eof do
          begin
            if (cdsOperationsSMVS_OPERATION_VARIANT_NO.AsInteger = 0) then
              dmDocClient.DSDeleteDoc(cdsOperations);

            Next;
          end;
      finally
        EnableControls;
      end;   { try }
    end;   { with }

//  with cdsOperations do
//  begin
//    DisableControls;
//    try
//      while not (Bof and Eof) do
//        Delete;
//    finally
//      EnableControls;
//    end;   { try }
//  end;   { with }
end;

function TfmSpecification.HasForkField: Boolean;
begin
  Result:= False;
end;

function TfmSpecification.ConfirmParentDeletionMsg: string;
begin
  Result:= SConfirmParentDeletion;
end;

procedure TfmSpecification.actAddModelVariantLikeUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    GetAddModelVariantEnabled and
    not (cdsSpecModelVariants.Bof and cdsSpecModelVariants.Eof);
end;

procedure TfmSpecification.actAddModelVariantLikeExecute(
  Sender: TObject);
var
  VariantNo: Integer;
begin
  inherited;

  VariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;

  FAddModelVariantBasedOnMainDeptCode:= 0;

  cdsSpecModelVariants.TempDisableControls/
    cdsSpecModelVariants.PreserveRecNo/
      cdsSpecModelVariants.TempUnfilter/
        procedure begin
          FNewSpecModelVariantNo:= VarToInt(cdsSpecModelVariants_MAX_SPEC_MODEL_VARIANT_NO.AsVariant) + 1;
        end;
  try
    if TfmSpecModelVariantEdit.ShowForm(dmDocClient, cdsSpecModelVariants, emInsert) then
      begin
        CopyAllVariantStagesFrom(VariantNo);
        CopyAllVariantTasksFrom(VariantNo);
        CurrentModelVariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;
      end;
  finally
    FNewSpecModelVariantNo:= 0;
  end;
end;

procedure TfmSpecification.MoveStage(MoveUp: Boolean; UnapprovePrompt: Boolean = False);
var
  CurrentStageNo, OtherStageNo: Integer;

  procedure SetStageNo(AStageNo: Integer);
  begin
    cdsSpecModelVariantStages.Edit;
    try
      cdsSpecModelVariantStagesSPEC_LINE_STAGE_NO.AsInteger:= AStageNo;
      cdsSpecModelVariantStages.Post;
    except
      cdsSpecModelVariantStages.Cancel;
      raise;
    end;  { try }
  end;

  procedure LocateStageNo(AStageNo: Integer);
  begin
    cdsSpecModelVariantStages.Locate('SPEC_LINE_STAGE_NO', AStageNo, []);
  end;

var
  um: TUnapproveMethod;
begin
  with cdsSpecModelVariantStages do
    begin
      Assert(RecordCount >= 2);

      DisableControls;
      try
        CurrentStageNo:= cdsSpecModelVariantStagesSPEC_LINE_STAGE_NO.AsInteger;

        if MoveUp then
          Prior
        else
          Next;

        OtherStageNo:= cdsSpecModelVariantStagesSPEC_LINE_STAGE_NO.AsInteger;

        SetStageNo(-1);
        LocateStageNo(CurrentStageNo);
        SetStageNo(OtherStageNo);
        LocateStageNo(-1);
        SetStageNo(CurrentStageNo);
        LocateStageNo(OtherStageNo);
      finally
        EnableControls;
      end;   { try }

      if UnapprovePrompt and LoginContext.DocItemsUnapprovePrompt and LineHasApprovedDocItem then
        begin
          um:= UnapproveStage;

          LocateStageNo(CurrentStageNo);
          UnapproveStage(um);

          LocateStageNo(OtherStageNo);
        end;
    end;   { with }
end;

function TfmSpecification.GetResultStoreCode: Integer;
begin
  Result:= cdsSpecModelVariantsRESULT_STORE_CODE.AsInteger;
end;

procedure TfmSpecification.SetResultStoreCode(Value: Integer);
begin
  with cdsSpecModelVariants do
    begin
      Edit;
      try
        cdsSpecModelVariantsRESULT_STORE_CODE.AsInteger:= Value;
        Post;
      except
        Cancel;
        raise;
      end;   { try }
    end;   { with }
end;

function TfmSpecification.GetModelIsCorrectMsg: string;
begin
  Result:= SModelVariantIsCorrect;
end;

function TfmSpecification.ModelColumnType(Index,
  FirstStageColumnIndex: Integer): TModelColumnType;
begin
  case (Index - FirstStageColumnIndex) mod 5 of
    0: Result:= mctDept;
    1: Result:= mctInvestedValue;
    2: Result:= mctInvestedValuePart;
    3: Result:= mctInvestedValueIsIncomplete;
    4: Result:= mctArrow;
  else
    raise Exception.Create('Invalid ModelColumnType!');
  end;
end;

function TfmSpecification.PrintModelColumnType(Index,
  FirstStageColumnIndex: Integer): TModelColumnType;
begin
  case (Index - FirstStageColumnIndex) mod 2 of
    0: if actToggleInvestedValue.Checked then
         begin
          if actToggleInvestedValuePart.Checked then
            Result:= mctInvestedValuePart
          else
            Result:= mctInvestedValue;
         end
       else
        Result:= mctDept;
    1: Result:= mctArrow;
  else
    raise Exception.Create('Invalid ModelColumnType!');
  end;
end;

function TfmSpecification.GetArrowDeptColumn(ACol: Integer): Integer;
begin
  Result:= (ACol - 1);
end;

function TfmSpecification.GetStageDaysFormat: string;
begin
  Result:= StageDays;
end;

procedure TfmSpecification.actPrintModelExecute(Sender: TObject);
var
  b: TBookmark;
begin
  with cdsSpecModelVariants do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          Locate('SPEC_MODEL_VARIANT_NO', CurrentModelVariantNo, []);

          inherited;
        finally
          Bookmark:= b;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

function TfmSpecification.GetStageDeptColumnWidth: Integer;
begin
  Result:= StageDeptColumnWidth;
end;

function TfmSpecification.GetPrintStageDeptColumnWidth: Integer;
begin
  Result:= PrintStageDeptColumnWidth;
end;

procedure TfmSpecification.CheckDataBeforeCheckLines(CheckOnlyLines: Boolean);
var
  ModelVariantsBookmark: TBookmark;
begin
  inherited;

  if not CheckOnlyLines then
    begin
      if cdsSpecModelVariants.Bof and cdsSpecModelVariants.Eof then
        begin
          ActivateVariantsGrid;
          raise Exception.Create(SNoModelVariants);
        end;

      ModelVariantsBookmark:= cdsSpecModelVariants.Bookmark;
      try
        cdsSpecModelVariants.Locate('SPEC_MODEL_VARIANT_NO', CurrentModelVariantNo, []);

        if (ContextDate < cdsSpecModelVariantsMAIN_DEPT_BEGIN_DATE.AsDateTime) or
           ((not cdsSpecModelVariantsMAIN_DEPT_END_DATE.IsNull) and (ContextDate > cdsSpecModelVariantsMAIN_DEPT_END_DATE.AsDateTime)) then
          raise Exception.Create(SSpecModelVariantInactiveDept);
      finally
        cdsSpecModelVariants.Bookmark:= ModelVariantsBookmark;
      end;   { try }
    end;
end;

procedure TfmSpecification.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  cdsGridData_LINE_DETAIL_TECH_QUANTITY_SHOW.AsVariant:=
    cdsGridDataTOTAL_DETAIL_TECH_QUANTITY.AsVariant;
end;

procedure TfmSpecification.cdsSpecModelVariantTasksNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  cdsSpecModelVariantTasksSPEC_PRODUCT_CODE.AsVariant:=
    cdsSpecModelVariantsSPEC_PRODUCT_CODE.AsVariant;
  cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_NO.AsVariant:=
    cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsVariant;

  cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO.AsInteger:=
    VarToInt(cdsSpecModelVariantTasks_MAX_SPEC_MODEL_VARIANT_TASK_NO.Value) + 1;
end;

procedure TfmSpecification.cdsSpecModelVariantTaskDeptsDEPT_CODEChange(
  Sender: TField);
begin
  inherited;

  if not FCreatingLike then
    DoDeptFieldChanged(cdsSpecModelVariantTaskDeptsDEPT_CODE,
      cdsSpecModelVariantTaskDeptsDEPT_NAME,
      cdsSpecModelVariantTaskDeptsDEPT_IDENTIFIER);
end;

procedure TfmSpecification.cdsSpecModelVariantTaskDeptsNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  cdsSpecModelVariantTaskDeptsSPEC_PRODUCT_CODE.AsVariant:= 
    cdsSpecModelVariantTasksSPEC_PRODUCT_CODE.AsVariant;
  cdsSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_NO.AsVariant:= 
    cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_NO.AsVariant;
  cdsSpecModelVariantTaskDeptsSPEC_MODEL_VARIANT_TASK_NO.AsVariant:=
    cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO.AsVariant;
end;

function TfmSpecification.GetTaskDeptsClientDataSet: TCustomClientDataSet;
begin
  Result:= cdsSpecModelVariantTaskDepts;
end;

function TfmSpecification.GetTasksClientDataSet: TCustomClientDataSet;
begin
  Result:= cdsSpecModelVariantTasks;
end;

function TfmSpecification.ShowTaskEditForm(AEditMode: TEditMode): Boolean;
begin
  Result:= TfmSpecModelVariantTaskEdit.ShowForm(dmDocClient, cdsSpecModelVariantTasks, AEditMode);
end;

function TfmSpecification.GetAddTaskEnabled: Boolean;
begin
  Result:=
    inherited GetAddTaskEnabled and
    (CurrentModelVariantNo > 0);
end;

function TfmSpecification.GetDelTaskEnabled: Boolean;
begin
  Result:=
    inherited GetDelTaskEnabled and
    (CurrentModelVariantNo > 0);
end;

function TfmSpecification.GetEditTaskEnabled: Boolean;
begin
  Result:=
    inherited GetEditTaskEnabled and
    (CurrentModelVariantNo > 0);
end;

function TfmSpecification.GetAddTaskDeptEnabled: Boolean;
begin
  Result:=
    inherited GetAddTaskDeptEnabled and
    (cdsSpecModelVariants.RecordCount > 0);
end;

function TfmSpecification.GetDelTaskDeptEnabled: Boolean;
begin
  Result:=
    inherited GetDelTaskDeptEnabled and
    (cdsSpecModelVariants.RecordCount > 0);
end;

function TfmSpecification.GetEditTaskDeptEnabled: Boolean;
begin
  Result:=
    inherited GetEditTaskDeptEnabled and
    (cdsSpecModelVariants.RecordCount > 0);
end;

procedure TfmSpecification.cdsSpecModelVariantTaskDeptsAfterPost(
  DataSet: TDataSet);
var
  TasksBookmark: TBookmark;
  TaskDeptsBookmark: TBookmark;
begin
  inherited;

  TaskDeptsBookmark:= cdsSpecModelVariantTaskDepts.Bookmark;
  TasksBookmark:= cdsSpecModelVariantTasks.Bookmark;
  try
    PostDataSet(cdsSpecModelVariantTasks);
  finally
    cdsSpecModelVariantTasks.Bookmark:= TasksBookmark;
    cdsSpecModelVariantTaskDepts.Bookmark:= TaskDeptsBookmark;
  end;   { try }
end;

procedure TfmSpecification.cdsSpecModelVariantTasksBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;

  with cdsSpecModelVariantTaskDepts do
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

procedure TfmSpecification.cdsSpecModelVariantTaskDeptsAfterCancel(
  DataSet: TDataSet);
begin
  inherited;
  CancelDataSet(cdsSpecModelVariantTasks);
end;

function TfmSpecification.UserCanEdit: Boolean;
begin
  Result:=
    (EditMode = emInsert) or
    ( (cdsDataAUTHOR_EMPLOYEE_CODE.AsInteger = LoginContext.UserCode) and
      LoginContext.HasUserActivity(uaSpecificationsEdit)) or
    LoginContext.HasUserActivity(uaEditForeignSpecification);
end;

procedure TfmSpecification.cdsSpecModelVariantsAfterScroll(
  DataSet: TDataSet);
begin
  inherited;

  if (not FSettingTasksModelVariant) and
     (not FCreatingLike) and
     (not (cdsSpecModelVariants.State in dsEditModes)) then
    begin
      FSettingTasksModelVariant:= True;
      try
        if cdsSpecModelVariants.IsEmpty then
          cbTasksModelVariant.KeyValue:= ''
        else
          cbTasksModelVariant.KeyValue:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;
      finally
        FSettingTasksModelVariant:= False;
      end;   { try }
    end;   { if }
end;

procedure TfmSpecification.cbTasksModelVariantChange(Sender: TObject);
begin
  inherited;

  if not FSettingTasksModelVariant then
    begin
      FSettingTasksModelVariant:= True;
      try
        CurrentModelVariantNo:= StrToIntDef(cbTasksModelVariant.KeyValue, 0);

        if (CurrentModelVariantNo > 0) then
          with cdsSpecModelVariants do
            begin
              DisableControls;
              try
                Locate('SPEC_MODEL_VARIANT_NO', CurrentModelVariantNo, []);
              finally
                EnableControls;
              end;   { try }
            end;   { with }
      finally
        FSettingTasksModelVariant:= False;
      end;   { try }
    end;   { if }
end;

procedure TfmSpecification.actEdittingTaskInModelExecute(Sender: TObject);
begin
  CurrentModelVariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;

  inherited;
end;

procedure TfmSpecification.GenerateModelTasksAddFields(
  FromDeptOutgoingWorkdays, ToDeptTotalTreatmentWorkdays: Integer;
  DeptBeginDate, ProductionEndDate: TDateTime);
begin
  inherited;

  cdsModelTasksTASK_NO.AsInteger:= cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO.AsInteger;
  cdsModelTasksTASK_NAME.AsString:= cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NAME.AsString;
end;

function TfmSpecification.GetProductionEndDate: TDateTime;
begin
  Result:= EncodeDate(2020, 12, 30);
end;

procedure TfmSpecification.cdsMainDeptsSPEC_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoProductFieldChanged(cdsMainDeptsSPEC_PRODUCT_CODE,
    nil, nil, cdsMainDeptsMEASURE_CODE,
    cdsMainDeptsACCOUNT_MEASURE_CODE, cdsMainDeptsACCOUNT_MEASURE_COEF,
    cdsMainDeptsTECH_MEASURE_CODE, cdsMainDeptsTECH_MEASURE_COEF,
    nil, nil, nil, nil,
    cdsMainDeptsTRANSPORT_MEASURE_CODE, cdsMainDeptsTRANSPORT_MEASURE_COEF);
end;

procedure TfmSpecification.cdsModelTasksHeaderNewRecord(DataSet: TDataSet);
begin
  inherited;

  AssignFields(cdsData, DataSet);
  AssignFields(cdsSpecModelVariants, DataSet);
  cdsModelTasksHeaderSTRUCTURE_COEF.AsString:= edtStructureCoef.Text;
end;

procedure TfmSpecification.PrintModel;
var
  b: TBookmark;
begin
  b:= cdsSpecModelVariants.Bookmark;
  try
    cdsSpecModelVariants.Locate('SPEC_MODEL_VARIANT_NO', CurrentModelVariantNo, []);
    inherited;
  finally
    cdsSpecModelVariants.Bookmark:= b;
  end;   { try }
end;

procedure TfmSpecification.CopyAllVariantTasksFrom(FromVariantNo: Integer);
var
  SaveCursor: TCursor;
  ModelVariantsBookmark: TBookmark;
  TasksBookmark: TBookmark;
  TaskDeptsBookmark: TBookmark;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    FCopyingTasks:= True;
    try
      cdsSpecModelVariants.DisableControls;
      cdsSpecModelVariantTasks.DisableControls;
      cdsSpecModelVariantTaskDepts.DisableControls;
      try
        ModelVariantsBookmark:= cdsSpecModelVariants.Bookmark;
        TasksBookmark:= cdsSpecModelVariantTasks.Bookmark;
        TaskDeptsBookmark:= cdsSpecModelVariantTaskDepts.Bookmark;
        try
          cdsCopyModelVariantTasks.CreateDataSet;
          try
            cdsCopyModelVariantTaskDepts.CreateDataSet;
            try
              cdsSpecModelVariants.Locate('SPEC_MODEL_VARIANT_NO', FromVariantNo, []);

              cdsSpecModelVariantTasks.First;
              while not cdsSpecModelVariantTasks.EOF do
                begin
                  cdsCopyModelVariantTasks.Append;
                  try
                    AssignFields(cdsSpecModelVariantTasks, cdsCopyModelVariantTasks);
                    cdsCopyModelVariantTasks.Post;
                  except
                    cdsCopyModelVariantTasks.Cancel;
                    raise;
                  end;   { try }

                  cdsSpecModelVariantTaskDepts.First;
                  while not cdsSpecModelVariantTaskDepts.EOF do
                    begin
                      cdsCopyModelVariantTaskDepts.Append;
                      try
                        AssignFields(cdsSpecModelVariantTaskDepts, cdsCopyModelVariantTaskDepts);
                        cdsCopyModelVariantTaskDepts.Post;
                      except
                        cdsCopyModelVariantTaskDepts.Cancel;
                        raise;
                      end;   { try }

                      cdsSpecModelVariantTaskDepts.Next;
                    end;   { while }

                  cdsSpecModelVariantTasks.Next;
                end;   { while }

              // copy to the current model variant
              cdsSpecModelVariants.Bookmark:= ModelVariantsBookmark;

              cdsCopyModelVariantTasks.First;
              while not cdsCopyModelVariantTasks.EOF do
                begin
                  cdsSpecModelVariantTasks.Append;
                  try
                    AssignFields(cdsCopyModelVariantTasks, cdsSpecModelVariantTasks);
                    cdsSpecModelVariantTasks.Post;
                  except
                    cdsSpecModelVariantTasks.Cancel;
                    raise;
                  end;   { try }

                  cdsCopyModelVariantTasks.Next;
                end;   { while }

              cdsCopyModelVariantTaskDepts.First;
              while not cdsCopyModelVariantTaskDepts.EOF do
                begin
                  cdsSpecModelVariantTaskDepts.Append;
                  try
                    AssignFields(cdsCopyModelVariantTaskDepts, cdsSpecModelVariantTaskDepts);
                    cdsSpecModelVariantTaskDepts.Post;
                  except
                    cdsSpecModelVariantTaskDepts.Cancel;
                    raise;
                  end;   { try }

                  cdsCopyModelVariantTaskDepts.Next;
                end;   { while }
            finally
              cdsCopyModelVariantTaskDepts.Close;
            end;   { try }
          finally
            cdsCopyModelVariantTasks.Close;
          end;   { try }

        finally
          cdsSpecModelVariants.Bookmark:= ModelVariantsBookmark;
          cdsSpecModelVariantTasks.Bookmark:= TasksBookmark;
          cdsSpecModelVariantTaskDepts.Bookmark:= TaskDeptsBookmark;
        end;   { try }
      finally
        cdsSpecModelVariantTaskDepts.EnableControls;
        cdsSpecModelVariantTasks.EnableControls;
        cdsSpecModelVariants.EnableControls;
      end;   { try }
    finally
      FCopyingTasks:= False;
    end;   { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

procedure TfmSpecification.actEditTaskInModelExecute(Sender: TObject);
var
  SaveCurrentModelVariantNo: Integer;
  ModelVariantsBookmark: TBookmark;
  TasksBookmark: TBookmark;
begin
  ModelVariantsBookmark:= cdsSpecModelVariants.Bookmark;
  TasksBookmark:= cdsSpecModelVariantTasks.Bookmark;
  try
    SaveCurrentModelVariantNo:= CurrentModelVariantNo;
    CurrentModelVariantNo:=
      cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;
    try
      inherited;
    finally
      CurrentModelVariantNo:= SaveCurrentModelVariantNo;
    end;   { try }
  finally
    cdsSpecModelVariants.Bookmark:= ModelVariantsBookmark;
    cdsSpecModelVariantTasks.Bookmark:= TasksBookmark;
  end;   { try }
end;

function TfmSpecification.GetRecordReadOnly: Boolean;
begin
  Result:=
    (inherited GetRecordReadOnly) or
    ( (EditMode = emEdit) and
      (cdsDataWORK_BRANCH_CODE.AsInteger <> LoginContext.LocalBranchCode) ) or
    (not (LoginContext.HasUserActivity(uaEditForeignSpecification) or
          LoginContext.HasUserActivity(uaEditSpecificationModel) or
          (LoginContext.HasUserActivity(uaSpecificationsEdit) and
           (cdsDataAUTHOR_EMPLOYEE_CODE.AsInteger = LoginContext.UserCode))));
end;

procedure TfmSpecification.ActivateVariantsGrid;
begin
  pcMain.ActivePage:= tsModelVariants;
  ActiveControl:= grdModelVariants;
end;   { ActivateVariantsGrid }

function TfmSpecification.CanModifyModel: Boolean;
begin
  Result:=
    (inherited CanModifyData) and
    LoginContext.HasUserActivity(uaEditSpecificationModel) and
    (not cdsDataAUTHORIZATION_EMPLOYEE_CODE.IsNull);
end;

procedure TfmSpecification.cdsGridDataSTRUCT_CHANGE_EMPLOYEE_CODEChange(
  Sender: TField);
begin
  inherited;

  if cdsGridDataSTRUCT_CHANGE_EMPLOYEE_CODE.IsNull then
    begin
      cdsGridDataSTRUCT_CHANGE_DATE.Clear;
      cdsGridDataSTRUCT_CHANGE_TIME.Clear;
    end
  else   { if }
    begin
      cdsGridDataSTRUCT_CHANGE_DATE.AsDateTime:= ContextDate;
      cdsGridDataSTRUCT_CHANGE_TIME.AsDateTime:= ContextTime;
    end;   { if }
end;

procedure TfmSpecification.cdsGridDataIS_STRUCT_CHANGEDChange(
  Sender: TField);
begin
  inherited;
  if cdsGridDataIS_STRUCT_CHANGED.AsBoolean then
    cdsGridDataSTRUCT_CHANGE_EMPLOYEE_CODE.AsInteger:= LoginContext.UserCode
  else
    cdsGridDataSTRUCT_CHANGE_EMPLOYEE_CODE.Clear;
end;

procedure TfmSpecification.actClearStructChangesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (VarToInt(cdsGridData_HAS_STRUCT_CHANGES.Value) = 1);
end;

procedure TfmSpecification.actClearStructChangesExecute(Sender: TObject);
var
  b: TBookmark;
  SaveCursor: TCursor;
begin
  inherited;

  LoginContext.CheckUserActivity(uaSpecClearStructChanges);

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    with cdsGridData do
      begin
        DisableControls;
        try
          b:= Bookmark;
          try
            First;
            while not Eof do
              begin
                if cdsGridDataIS_STRUCT_CHANGED.AsBoolean then
                  begin
                    Edit;
                    try
                      cdsGridDataIS_STRUCT_CHANGED.AsBoolean:= False;
                      Post;
                    except
                      Cancel;
                      raise;
                    end;   { try }
                  end;   { if }
                Next;
              end;   { while }
          finally
            Bookmark:= b;
          end;   { try }
        finally
          EnableControls;
        end;   { try }
      end;   { with }

    CheckEditMode(cdsData);

    cdsDataSTRUCT_CHANGE_CLEAR_EMPL_CODE.AsInteger:= LoginContext.UserCode;
    cdsDataSTRUCT_CHANGE_CLEAR_DATE.AsDateTime:= ContextDate;
    cdsDataSTRUCT_CHANGE_CLEAR_TIME.AsDateTime:= ContextTime;

    UpdateFilteredGridData;
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

procedure TfmSpecification.grdLinesGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  Assert(Assigned(cdsFilteredGridDataIS_STRUCT_CHANGED));

  if cdsFilteredGridDataIS_STRUCT_CHANGED.AsBoolean then
    AFont.Color:= clRed;
end;

procedure TfmSpecification.cdsSpecModelVariantLinesBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;

  with cdsSpecModelVariantStages do
    begin
      DisableControls;
      try
        while not (Bof and Eof) do
          Delete;
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TfmSpecification.cdsOperationsNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsOperationsSPEC_PRODUCT_CODE.AsVariant:= cdsSpecModelVariantStagesSPEC_PRODUCT_CODE.AsVariant;
  cdsOperationsSPEC_MODEL_VARIANT_NO.AsVariant:= cdsSpecModelVariantStagesSPEC_MODEL_VARIANT_NO.AsVariant;
  cdsOperationsSPEC_LINE_CODE.AsVariant:= cdsSpecModelVariantStagesSPEC_LINE_CODE.AsVariant;
  cdsOperationsSPEC_LINE_STAGE_CODE.AsVariant:= cdsSpecModelVariantStagesSPEC_LINE_STAGE_CODE.AsVariant;

  cdsOperationsSMVS_OPERATION_CODE.AsInteger:=
    VarToInt(cdsOperations_MAX_SMVS_OPERATION_CODE.Value) + 1;

  cdsOperationsSMVS_OPERATION_NO.AsInteger:=
    NewOperationData.OperationShowNo;
  cdsOperationsSMVS_OPERATION_VARIANT_NO.AsInteger:=
    NewOperationData.OperationVariantShowNo;
end;

procedure TfmSpecification.cdsOperationsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;

  if FFilterOperationsOnMove then
    Accept:= (cdsOperationsSMVS_OPERATION_CODE.AsInteger < 0);
end;

procedure TfmSpecification.AssignPersistentFilterGridDataFields;
begin
  inherited;

  cdsFilteredGridDataIS_STRUCT_CHANGED:=
    cdsFilteredGridData.FieldByName('IS_STRUCT_CHANGED');
end;

procedure TfmSpecification.NilPersistentFilterGridDataFields;
begin
  inherited;
  cdsFilteredGridDataIS_STRUCT_CHANGED:= nil;
end;

function TfmSpecification.NewSpecLineCode: Integer;
begin
  Inc(FMaxSpecLineCode);
  Result:= FMaxSpecLineCode;
end;

procedure TfmSpecification.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FMaxSpecLineCode:= VarToInt(cdsGridData_MAX_SPEC_LINE_CODE.AsVariant);
end;

procedure TfmSpecification.CalcModelVariantInvestedValues(
  ACurrencyCode: Integer; ADate: TDateTime;
  ARootLineStageIncludeLevel, ANonRootLineStageIncludeLevel: Integer;
  out AInvestedValueIsIncomplete: Boolean);

  function StageSplitInvestedValue(AInvestedValueLevel: Integer): TSplitInvestedValue;

    function OperationSplitInvestedValue(AInvestedValueLevel: Integer): TSplitInvestedValue;
    begin
      Result.Clear;

      if (cdsOperationsSMVS_OPERATION_VARIANT_NO.AsInteger = 0) then
        case AInvestedValueLevel of
          2: begin
               if not cdsOperationsSETUP_PROFESSION_CODE.IsNull then
                 begin
                   Result.FixedValue:=
                     (cdsOperationsSETUP_COUNT.AsFloat / cdsOperationsSETUP_HOUR_TECH_QUANTITY.AsFloat) *
                     cdsOperationsSETUP_EFFORT_COEF.AsFloat *
                     cdsOperationsSETUP_HOUR_PRICE.AsFloat *
                     InvestedValueFilter.LabourCostCoef;

                   AInvestedValueIsIncomplete:= AInvestedValueIsIncomplete or
                     cdsOperationsSETUP_HOUR_PRICE.IsNull;
                 end;

               Result.SingleValue:=
                 (1 / cdsOperationsHOUR_TECH_QUANTITY.AsFloat) *
                 cdsOperationsEFFORT_COEF.AsFloat *
                 cdsOperationsHOUR_PRICE.AsFloat *
                 InvestedValueFilter.LabourCostCoef;

               AInvestedValueIsIncomplete:= AInvestedValueIsIncomplete or
                 cdsOperationsHOUR_PRICE.IsNull or
                 not InvestedValueFilter.HasLabourAndOrganizationCostCoef;
             end;

          3: begin
               if not cdsOperationsSETUP_PROFESSION_CODE.IsNull and
                  (cdsOperationsD_PARALLEL_PROCESS_COUNT.AsFloat <> 0) then
                 Result.FixedValue:=
                   (cdsOperationsSETUP_COUNT.AsFloat / cdsOperationsSETUP_HOUR_TECH_QUANTITY.AsFloat) *
                   (cdsOperationsD_HOUR_PRICE.AsFloat + cdsOperationsD_MAINTAINANCE_HOUR_PRICE.AsFloat) /
                   cdsOperationsD_PARALLEL_PROCESS_COUNT.AsFloat;

               if (cdsOperationsD_PARALLEL_PROCESS_COUNT.AsFloat <> 0) then
                 Result.SingleValue:=
                   (1 / cdsOperationsHOUR_TECH_QUANTITY.AsFloat) *
                   (cdsOperationsD_HOUR_PRICE.AsFloat + cdsOperationsD_MAINTAINANCE_HOUR_PRICE.AsFloat) /
                   cdsOperationsD_PARALLEL_PROCESS_COUNT.AsFloat;

               AInvestedValueIsIncomplete:= AInvestedValueIsIncomplete or
                 cdsOperationsD_HOUR_PRICE.IsNull or
                 cdsOperationsD_MAINTAINANCE_HOUR_PRICE.IsNull or
                 cdsOperationsD_PARALLEL_PROCESS_COUNT.IsNull or
                 not InvestedValueFilter.HasLabourAndOrganizationCostCoef;
             end;

          5: Result:= OperationSplitInvestedValue(2) * InvestedValueFilter.OrganizationCostCoef;
        end;
    end;  { OperationSplitInvestedValue }

  begin
    Result.Clear;

    if (AInvestedValueLevel > 1) and
       (cdsSpecModelVariantStagesSPEC_LINE_STAGE_NO.AsInteger > 0) and
       (cdsSpecModelVariantStagesTREATMENT_WORKDAYS.AsInteger > 0) and
       (cdsSpecModelVariantStagesOUTGOING_WORKDAYS.AsInteger > 0) and
       FilterInvestedValueStage(ARootLineStageIncludeLevel, ANonRootLineStageIncludeLevel) then
      begin
        if (AInvestedValueLevel = 4) then
          Result.SingleValue:= cdsSpecModelVariantStagesEXTERNAL_WORK_PRICE.AsFloat
        else
          begin
            if (cdsOperations.RecordCount > 0) then
              begin  // operacionno nivo
                cdsOperations.First;
                while not cdsOperations.Eof do
                  begin
                    if (cdsOperationsOPERATION_TYPE_CODE.AsInteger = otNormal) then
                      Result:= Result +
                        OperationSplitInvestedValue(AInvestedValueLevel);

                    cdsOperations.Next;
                  end;  { while }
              end;  { if }
          end;  { if }         

        Result.SingleValue:= Result.SingleValue * LineDetailTechQuantity;
        Result:= Result / InvestedValueFilter.CurrencyRate;
      end;  { if }
  end;  { StageSplitInvestedValue }

  procedure PrepareInvestedValueFilter;
  begin
    InvestedValueFilter.CurrencyCode:= ACurrencyCode;
    InvestedValueFilter.InvestedValueDate:= ADate;
    LoadLabourAndOrganizationCostCoef(InvestedValueFilter);

    if (InvestedValueFilter.CurrencyCode = LoginContext.BaseCurrencyCode) then
      InvestedValueFilter.CurrencyRate:= 1
    else
      begin
        if (InvestedValueFilter.InvestedValueDate = ContextDate) then
          InvestedValueFilter.CurrencyRate:= TodayCurrencyRate(InvestedValueFilter.CurrencyCode)
        else
          InvestedValueFilter.CurrencyRate:=
            dmMain.SvrCommon.GetBaseCurrencyFixing(
              InvestedValueFilter.CurrencyCode, InvestedValueFilter.InvestedValueDate);
      end;

    if (InvestedValueFilter.CurrencyRate = 0) then
      raise Exception.Create(SNoCurrencyRate);
  end;  { PrepareInvestedValueFilter}

  function CurrentSpecModelVariantProductPeriods: Variant;
  begin
    if (cdsSpecModelVariantProductPeriods.RecordCount = 0) then
      Result:= Null
    else
      begin
        Result:= VarArrayCreate([1, 2 * cdsSpecModelVariantProductPeriods.RecordCount], varVariant);
        cdsSpecModelVariantProductPeriods.First;
        while not cdsSpecModelVariantProductPeriods.Eof do
          begin
            Result[2 * cdsSpecModelVariantProductPeriods.RecNo - 1]:= cdsSpecModelVariantProductPeriodsBEGIN_DATE.AsDateTime;
            Result[2 * cdsSpecModelVariantProductPeriods.RecNo]:= cdsSpecModelVariantProductPeriodsEND_DATE.AsDateTime;

            cdsSpecModelVariantProductPeriods.Next;
          end;
      end;
  end;  { CurrentSpecModelVariantProductPeriods }

  function ModelVariantHasCurrentProductPeriod: Boolean;
  begin
    Result:= True;
    cdsSpecModelVariantProductPeriods.First;
    while not cdsSpecModelVariantProductPeriods.Eof do
      begin
        if InRange(
             ADate,
             cdsSpecModelVariantProductPeriodsBEGIN_DATE.AsDateTime,
             cdsSpecModelVariantProductPeriodsEND_DATE.AsDateTime) then
          Exit;

        cdsSpecModelVariantProductPeriods.Next;
      end;
    Result:= False;
  end;  { ModelVariantHasCurrentProductPeriod }

var
  ModelVariantsBookmark: TBookmark;
  LinesBookmark: TBookmark;
  StagesBookmark: TBookmark;
  OperationsBookmark: TBookmark;
  TasksBookmark: TBookmark;
  TaskDeptsBookmark: TBookmark;
  SaveCurrentModelVariantNo: Integer;
  InvestedValues: array[1..5] of TSplitInvestedValue;
  InvestedValueLevel: Integer;
  SaveInvestedValueFilter: TInvestedValueFilter;
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    SaveInvestedValueFilter:= InvestedValueFilter;
    try
      InvestedValueFilter:= TInvestedValueFilter.Create;
      try
        PrepareInvestedValueFilter;

        if (InvestedValueFilter.InvestedValueDate <> LastSetLineAndStageAndOperationDeptPriceFieldsDate) then
          SetLineAndStageAndOperationDeptPriceFields;

        cdsModelVariantInvestedValues.DisableControls;
        try
          cdsModelVariantInvestedValues.Close;
          cdsModelVariantInvestedValues.CreateDataSet;

          cdsGridData.DisableControls;
          try
            cdsSpecModelVariantLines.DisableControls;
            try
              cdsSpecModelVariantStages.DisableControls;
              try
                cdsOperations.DisableControls;
                try
                  cdsSpecModelVariants.DisableControls;
                  try
                    cdsSpecModelVariantTasks.DisableControls;
                    try
                      cdsSpecModelVariantTaskDepts.DisableControls;
                      try
                        ModelVariantsBookmark:= cdsSpecModelVariants.Bookmark;
                        LinesBookmark:= cdsGridData.Bookmark;
                        StagesBookmark:= cdsSpecModelVariantStages.Bookmark;
                        OperationsBookmark:= cdsOperations.Bookmark;
                        TasksBookmark:= cdsSpecModelVariantTasks.Bookmark;
                        TaskDeptsBookmark:= cdsSpecModelVariantTaskDepts.Bookmark;
                        try
                          SaveCurrentModelVariantNo:= CurrentModelVariantNo;
                          try
                            AInvestedValueIsIncomplete:= False;

                            cdsSpecModelVariants.First;
                            while not cdsSpecModelVariants.Eof do
                              begin
                                CurrentModelVariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;

                                if ModelVariantHasCurrentProductPeriod then
                                  begin
                                    for InvestedValueLevel:= Low(InvestedValues) to High(InvestedValues) do
                                      InvestedValues[InvestedValueLevel].Clear;

                                    cdsGridData.First;
                                    while not cdsGridData.Eof do
                                      begin
                                        if not cdsGridDataPRODUCT_CODE.IsNull then
                                          begin
                                            InvestedValues[1].SingleValue:=
                                              InvestedValues[1].SingleValue +
                                              cdsGridDataTOTAL_PRODUCT_ACCOUNT_QUANTITY.AsFloat *
                                              cdsGridDataPRODUCT_SINGLE_PRICE.AsFloat /
                                              InvestedValueFilter.CurrencyRate;

                                            AInvestedValueIsIncomplete:= AInvestedValueIsIncomplete or
                                              cdsGridDataPRODUCT_SINGLE_PRICE.IsNull;

                                            // IS ot DIOb
                                            for InvestedValueLevel:= 2 to 5 do
                                              with cdsGridData.FieldByName(Format('PRODUCT_INVESTMENT_VALUE_%d', [InvestedValueLevel])) do
                                                begin
                                                  InvestedValues[InvestedValueLevel].SingleValue:=
                                                    InvestedValues[InvestedValueLevel].SingleValue +
                                                    ( cdsGridDataTOTAL_PRODUCT_TECH_QUANTITY.AsFloat /
                                                      cdsGridDataPRODUCT_TECH_MEASURE_COEF.AsFloat
                                                    ) * AsFloat / InvestedValueFilter.CurrencyRate;

                                                  AInvestedValueIsIncomplete:= AInvestedValueIsIncomplete or IsNull;
                                                end;
                                          end;

                                        cdsSpecModelVariantStages.First;
                                        while not cdsSpecModelVariantStages.Eof do
                                          begin
                                            for InvestedValueLevel:= 2 to 5 do
                                              InvestedValues[InvestedValueLevel]:=
                                                InvestedValues[InvestedValueLevel] +
                                                StageSplitInvestedValue(InvestedValueLevel);

                                            cdsSpecModelVariantStages.Next;
                                          end;  { while }

                                        cdsGridData.Next;
                                      end;  { while }

                                    for InvestedValueLevel:= Low(InvestedValues) to High(InvestedValues) do
                                      begin
                                        cdsModelVariantInvestedValues.Append;
                                        try
                                          cdsModelVariantInvestedValues.AssignFields(cdsSpecModelVariants);
                                          cdsModelVariantInvestedValuesINVESTED_VALUE_LEVEL.AsInteger:= InvestedValueLevel;
                                          cdsModelVariantInvestedValuesFIXED_INVESTED_VALUE.AsFloat:= InvestedValues[InvestedValueLevel].FixedValue;
                                          cdsModelVariantInvestedValuesSINGLE_INVESTED_VALUE.AsFloat:= InvestedValues[InvestedValueLevel].SingleValue;

                                          cdsModelVariantInvestedValues.Post;
                                        except
                                          cdsModelVariantInvestedValues.Cancel;
                                          raise;
                                        end;
                                      end;  { for }
                                  end;  { if }

                                cdsSpecModelVariants.Next;
                              end;  { while }

                            cdsModelVariantInvestedValues.First;
                          finally
                            CurrentModelVariantNo:= SaveCurrentModelVariantNo;
                          end;
                        finally
                          cdsSpecModelVariants.Bookmark:= ModelVariantsBookmark;
                          cdsGridData.Bookmark:= LinesBookmark;
                          StagesBookmark:= cdsSpecModelVariantStages.Bookmark;
                          OperationsBookmark:= cdsOperations.Bookmark;
                          TasksBookmark:= cdsSpecModelVariantTasks.Bookmark;
                          TaskDeptsBookmark:= cdsSpecModelVariantTaskDepts.Bookmark;
                        end;
                      finally
                        cdsSpecModelVariantTaskDepts.EnableControls;
                      end;
                    finally
                      cdsSpecModelVariantTasks.EnableControls;
                    end;
                  finally
                    cdsSpecModelVariants.EnableControls;
                  end;
                finally
                  cdsOperations.EnableControls;
                end;
              finally
                cdsSpecModelVariantStages.EnableControls;
              end;
            finally
              cdsSpecModelVariantLines.EnableControls;
            end;
          finally
            cdsGridData.EnableControls;
          end;
        finally
          cdsModelVariantInvestedValues.EnableControls;
        end;
      finally
        InvestedValueFilter.Free;
        InvestedValueFilter:= nil;
      end;
    finally
      InvestedValueFilter:= SaveInvestedValueFilter;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;  { CalcModelVariantInvestedValues }

function TfmSpecification.CalcNoAsTextOnNewRecord: Boolean;
begin
  Result:= (not FCreatingLike) and (not FAddingSpecification);
end;

procedure TfmSpecification.cdsSpecModelVariantTasksAfterPost(
  DataSet: TDataSet);
var
  b: TBookmark;
begin
  inherited;

  b:= DataSet.Bookmark;
  try
    PostDataSet(cdsSpecModelVariants);
  finally
    DataSet.Bookmark:= b;
  end;  { try }
end;

procedure TfmSpecification.actAddTaskExecute(Sender: TObject);
begin
  inherited;
  cdsSpecModelVariantTasks.Last;
end;

procedure TfmSpecification.actAddStageExecute(Sender: TObject);
begin
  if (cdsSpecModelVariantLines.RecordCount = 0) then
    AppendSpecModelVariantLine;
  inherited;
end;

function TfmSpecification.ModelTaskDeptBeginDate(
  AProductionEndDate: TDateTime;
  ATotalTreatmentWorkdays: Integer): TDateTime;
begin
  Result:= AProductionEndDate + 1 - ATotalTreatmentWorkdays;
end;

function TfmSpecification.GetModelColumnGroupWidth: Integer;
begin
  Result:= 2;                                             
end;

procedure TfmSpecification.cdsOperationsDEPT_CODEChange(Sender: TField);
begin
  if FCreatingLike or FAddingSpecification then
    Exit;

  inherited;
end;

procedure TfmSpecification.cdsOperationsPROGRAM_TOOL_PRODUCT_CODEChange(
  Sender: TField);
begin
  if FCreatingLike or FAddingSpecification then
    Exit;

  inherited;
end;

procedure TfmSpecification.cdsOperationsSPECIFIC_TOOL_PRODUCT_CODEChange(
  Sender: TField);
begin
  if FCreatingLike or FAddingSpecification then
    Exit;

  inherited;
end;

procedure TfmSpecification.cdsOperationsTYPICAL_TOOL_PRODUCT_CODEChange(
  Sender: TField);
begin
  if FCreatingLike or FAddingSpecification then
    Exit;

  inherited;
end;

procedure TfmSpecification.cdsOperationsCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsOperations_SHOW_NO.AsString:=
    cdsOperationsSMVS_OPERATION_NO.AsString + '.' +
    cdsOperationsSMVS_OPERATION_VARIANT_NO.AsString;
end;

procedure TfmSpecification.cdsOperationsBeforePost(DataSet: TDataSet);
begin
  if (DataSet.State = dsInsert) and
     (not FAddingSpecification) and
     (not FCreatingLike) and
     (not FCopyingVariantStages) then
    begin
      cdsOperationsSMVS_OPERATION_NO.AsInteger:=
        NewOperationData.OperationNo;
      cdsOperationsSMVS_OPERATION_VARIANT_NO.AsInteger:=
        NewOperationData.OperationVariantNo;
    end;   { if }

  if (not FCreatingLike) then
    inherited;
end;

function TfmSpecification.GetModelStage(InvestedValue, InvestedValuePart: Boolean): string;
begin
  Result:= inherited GetModelStage(InvestedValue, InvestedValuePart);

  if (cdsSpecModelVariantStagesSMVS_TYPE_CODE.AsInteger <> smvstNormal) then
    Result:= Result + '^';
end;

procedure TfmSpecification.SetOperationCount;
var
  OperationCount: Integer;
begin
  with cdsSpecModelVariantStages do
    begin
      DisableControls;
      try
        OperationCount:= cdsOperations.RecordCount;
        if (State in dsEditModes) then
          begin
            cdsSpecModelVariantStagesOPERATION_COUNT.AsInteger:= OperationCount;
          end
        else  { if }
          begin
            Edit;
            try
              cdsSpecModelVariantStagesOPERATION_COUNT.AsInteger:= OperationCount;
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

function TfmSpecification.GetTaskNoField: TField;
begin
  Result:= cdsSpecModelVariantTasksSPEC_MODEL_VARIANT_TASK_NO;
end;

function TfmSpecification.OperationsModel: Boolean;
begin
  Result:= FAuthorizationOfOperations;
end;

procedure TfmSpecification.cdsSpecModelVariantsCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE.IsNull then
    cdsSpecModelVariants_AUTHORIZATION_OF_OPERATIONS.Clear
  else
    cdsSpecModelVariants_AUTHORIZATION_OF_OPERATIONS.AsString:=
      cdsSpecModelVariantsAUTHORIZATION_OF_OPERATIONS.DisplayText;
end;

procedure TfmSpecification.actCheckModelExecute(Sender: TObject);
begin
  if (LoginContext.ProductionLevelCode = plStage) then
    FAuthorizationOfOperations:= False
  else
    case MessageDlgBtn(SCheckOperations, mtConfirmation, [SStageLevel, SOperationsLevel, bcCancel], 0) of
      0: FAuthorizationOfOperations:= False;
      1: FAuthorizationOfOperations:= True;
    else
      Abort;
    end;

  try
    inherited;
  finally
    FAuthorizationOfOperations:= False;
  end;  { try }
end;

procedure TfmSpecification.actAuthorizeOperationModelVariantUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    cdsSpecModelVariants.Active and
    (not cdsSpecModelVariants.IsEmpty) and
    (cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE.IsNull or
     ( (LoginContext.ProductionLevelCode <> plStage) and
       (not cdsSpecModelVariantsAUTHORIZATION_OF_OPERATIONS.AsBoolean) ) ) and
    CanModifyModel;
end;

procedure TfmSpecification.actAuthorizeOperationModelVariantExecute(
  Sender: TObject);
begin
  inherited;
  LoginContext.CheckUserActivity(uaAuthorizeSpecModelVariant);
  AuthorizeModel(True);
end;

procedure TfmSpecification.AuthorizeModel(
  AAuthorizationOfOperations: Boolean);
var
  MaxTotalTreatmentWorkdays: Integer;
begin
  FAuthorizationOfOperations:= AAuthorizationOfOperations;
  try
    CheckData(False, True);

    MaxTotalTreatmentWorkdays:= CalcTotalTreatmentWorkdays(True);

    with cdsSpecModelVariants do
      begin
        Edit;
        try
          cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE.AsInteger:=
            LoginContext.UserCode;
          cdsSpecModelVariantsAUTHORIZATION_OF_OPERATIONS.AsBoolean:=
            FAuthorizationOfOperations;
          cdsSpecModelVariantsMAX_TOTAL_TREATMENT_WORKDAYS.AsInteger:=
            MaxTotalTreatmentWorkdays;

          Post;
        except
          Cancel;
          raise;
        end;   { try }
      end;   { with }
  finally
    FAuthorizationOfOperations:= False;
  end;  { try }
end;

procedure TfmSpecification.PrintOperations;
var
  b: TBookmark;
begin
  with cdsSpecModelVariants do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          Locate('SPEC_MODEL_VARIANT_NO',
            cdsSpecModelVariantStagesSPEC_MODEL_VARIANT_NO.AsInteger, []);
               
          TrptSpecOperations.PrintReport(cdsSpecModelVariantStages,
            cdsGridData, cdsOperations, False, ExcludeStageNo, cdsSpecModelVariants);
        finally
          Bookmark:= b;
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmSpecification.PrintRecursiveReport(APrintOnA3, APrintNotes,
  APrintProductNos, APrintInvestedValues: Boolean);
begin
//  inherited;
  TrptSpecRecursivePrint.PrintReport(cdsRecursivePrint, cdsData, APrintOnA3,
    APrintProductNos, APrintNotes, StructureCoef.DisplayText,
    edtInvestedValueResultProductTechQuantity.Text,
    edtInvestedValueType.Text, IfThen(APrintInvestedValues, edtTotalInvestedValue.Text, SNotAvailable),
    lblTotalInvestedValueCurrencyAbbrev.Caption, edtInvestedValuesDate.Text);
end;

function TfmSpecification.MaxStageNo: Integer;
begin
  Result:= VarToInt(cdsSpecModelVariantStages_MAX_SPEC_LINE_STAGE_NO.AsVariant);
end;

function TfmSpecification.GetMaxStageNoField: TField;
begin
  Result:= cdsSpecModelVariantStages_MAX_SPEC_LINE_STAGE_NO;
end;

function TfmSpecification.GetMinStageNoField: TField;
begin
  Result:= cdsSpecModelVariantStages_MIN_SPEC_LINE_STAGE_NO;
end;

procedure TfmSpecification.SetStageAndOperationDeptPriceFields(
  cdsStages: TClientDataSet);
begin
  cdsSpecModelVariants.First;
  while not cdsSpecModelVariants.Eof do
    begin
      CurrentModelVariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;
      inherited SetStageAndOperationDeptPriceFields(cdsStages);
      cdsSpecModelVariants.Next;
    end;
end;

procedure TfmSpecification.StructurePrint(PrintNotes: Boolean);
begin
  TrptStructureSpecification.PrintReport(cdsFilteredGridData, cdsData, cdsGridData,
    PrintNotes, edtStructureCoef.Text);
end;

class procedure TfmSpecification.PrintStructure(
  AdmDocClient: TdmDocClient; AProductCode: Integer);
var
  f: TfmSpecification;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient);

    f.cdsData.Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= AProductCode;

    f.Initialize;

    if (f.cdsData.RecordCount > 0) then
      f.StructurePrint(True)
    else
      raise Exception.Create(SNoSpecification);

    f.Finalize;
  finally
    f.ReleaseForm;
  end;
end;

class procedure TfmSpecification.ShowOperations(
  AdmDocClient: TdmDocClient; AProductCode, ADeptCode: Integer);
var
  f: TfmSpecification;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient);

    f.cdsData.Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= AProductCode;

    f.Initialize;

    if (f.cdsData.RecordCount > 0) then
      f.ShowDeptOperations(ADeptCode)
    else
      raise Exception.Create(SNoSpecification);

    f.Finalize;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmSpecification.ShowDeptOperations(ADeptCode: Integer);
var
  DummyUnapproveMethod: TUnapproveMethod;
begin
  cdsGridData.First;
  cdsSpecModelVariants.First;

  while not cdsSpecModelVariants.Eof do
    begin
      if cdsSpecModelVariantStages.Locate('DEPT_CODE', ADeptCode, []) then
        begin
          TfmSpecModelVariantStageEdit.ShowForm(dmDocClient, cdsSpecModelVariantStages, emReadOnly,
            doNone, True, cdsOperations, cdsGridData, NewOperationData, cdsSpecModelVariants,
            False, '', DummyUnapproveMethod, GetStageOperationInvestedValue, InvestedValueFilter);
          Exit;
        end;

      cdsSpecModelVariants.Next;
    end;  { while }

  raise Exception.Create(SOperationsDeptNotFound);
end;

procedure TfmSpecification.pcMainChange(Sender: TObject);
begin
  inherited;

  cdsSelectModelVariants.Close;

  if (FOldPage = tsModelVariants) then
    CurrentModelVariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;

  if (pcMain.ActivePage = tsModel) then
    cdsSpecModelVariants.Locate('SPEC_MODEL_VARIANT_NO', CurrentModelVariantNo, []);

  if (pcMain.ActivePage = tsTasks) then
    begin
      cdsSelectModelVariants.CreateDataSet;

      cdsSpecModelVariants.TempUnfilter/
        cdsSpecModelVariants.TempDisableControls/
          cdsSpecModelVariants.PreserveBookmark/
            procedure begin
              cdsSpecModelVariants.ForEach/
                cdsSelectModelVariants.SafeAppend/
                  procedure begin
                    cdsSelectModelVariants.AssignFields(cdsSpecModelVariants);
                  end;  { while }

              if (CurrentModelVariantNo > 0) then
                cbTasksModelVariant.KeyValue:= CurrentModelVariantNo
              else
                cbTasksModelVariant.KeyValue:= '';
            end;
    end;
end;

procedure TfmSpecification.pcMainChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  FOldPage:= pcMain.ActivePage;
end;

procedure TfmSpecification.AddFilteredStage;
begin
  FilteredStages.Add(GetStageFullNo);
end;

function TfmSpecification.GetStageFullNo: string;
begin
  Result:=
    cdsGridData.Lookup('SPEC_LINE_CODE', cdsSpecModelVariantStagesSPEC_LINE_CODE.AsInteger, 'NO_AS_FORMATED_TEXT') + '/' +
    cdsSpecModelVariantStagesSPEC_LINE_STAGE_NO.AsString;
end;

procedure TfmSpecification.cdsSpecModelVariantStagesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (not Assigned(FilteredStages)) or
    (FilteredStages.IndexOf(GetStageFullNo) >= 0);
end;

function TfmSpecification.OperationVariantNoField: TField;
begin
  Result:= cdsOperationsSMVS_OPERATION_VARIANT_NO;
end;

procedure TfmSpecification.BeforeGenerateModel;
var
  b: TBookmark;
begin
  inherited;

  with cdsSpecModelVariants do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          Locate('SPEC_MODEL_VARIANT_NO', CurrentModelVariantNo, []);

          FInvestedValueResultProductTechQuantityOK:=
            (InvestedValueFilter.ResultProductTechQuantity > cdsSpecModelVariantsMIN_TECH_QUANTITY.AsFloat) and
            (InvestedValueFilter.ResultProductTechQuantity <= cdsSpecModelVariantsMAX_TECH_QUANTITY.AsFloat);
        finally
          Bookmark:= b;
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmSpecification.AddStageInvestedValues(AInvestedValue,
  AAggregatedInvestedValue, AProductInvestedValue: TInvestedValue);
begin
  with cdsStageInvestedValues do
    begin
      Append;
      try
        cdsStageInvestedValuesSPEC_PRODUCT_CODE.AsInteger:= cdsSpecModelVariantStagesSPEC_PRODUCT_CODE.AsInteger;
        cdsStageInvestedValuesSPEC_MODEL_VARIANT_NO.AsInteger:= cdsSpecModelVariantStagesSPEC_MODEL_VARIANT_NO.AsInteger;
        cdsStageInvestedValuesSPEC_LINE_CODE.AsInteger:= cdsSpecModelVariantStagesSPEC_LINE_CODE.AsInteger;
        cdsStageInvestedValuesSPEC_LINE_STAGE_CODE.AsInteger:= cdsSpecModelVariantStagesSPEC_LINE_STAGE_CODE.AsInteger;
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

procedure TfmSpecification.LocateStageInvestedValue;
begin
  cdsStageInvestedValues.Locate(
    'SPEC_PRODUCT_CODE; SPEC_MODEL_VARIANT_NO; SPEC_LINE_CODE; SPEC_LINE_STAGE_CODE',
    VarArrayOf([
      cdsSpecModelVariantStagesSPEC_PRODUCT_CODE.AsInteger,
      cdsSpecModelVariantStagesSPEC_MODEL_VARIANT_NO.AsInteger,
      cdsSpecModelVariantStagesSPEC_LINE_CODE.AsInteger,
      cdsSpecModelVariantStagesSPEC_LINE_STAGE_CODE.AsInteger
    ]),
    []
  );
end;

procedure TfmSpecification.ShowTotalInvestedValue(AInvestedValue: TInvestedValue;
  ACurrencyAbbrev: string);
begin
  if (InvestedValueFilter.InvestedValueLevel = 1) or FInvestedValueResultProductTechQuantityOK then
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
    end
  else
    begin
      edtTotalInvestedValue.Text:= '';
      lblTotalInvestedValueCurrencyAbbrev.Caption:= '';
    end;

  edtInvestedValueType.Text:= Format('%s / %s / %s',
    [InvestedValueFilter.InvestedValueAbbrev,
     InvestedValueFilter.AggregatedAbbrev,
     InvestedValueFilter.InvestedValueSingleAbbrev]);

  edtInvestedValueResultProductTechQuantity.Text:=
    FormatFloat(',0.###', InvestedValueFilter.ResultProductTechQuantity);
end;

function TfmSpecification.ShowInvestedValueFilter: Boolean;
begin
  Result:= TfmSpecInvestedValueFilter.ShowForm(nil, cdsInvestedValueFilter);
end;

class procedure TfmSpecification.ShowInvestedValuesGraph(
  AdmDocClient: TdmDocClient; AProductCode: Integer);
var
  f: TfmSpecification;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient);

    f.cdsData.Params.ParamByName('SPEC_PRODUCT_CODE').AsInteger:= AProductCode;

    f.Initialize;

    if f.cdsSpecModelVariants.IsEmpty then
      raise Exception.Create(SNoProductModelVariants);
    f.actInvestedValuesGraph.Execute;

    f.Finalize;
  finally
    f.ReleaseForm;
  end;
end;

function TfmSpecification.GetResultProductTechMeasureAbbrev: string;
begin
  Result:= cdsData_TECH_MEASURE_ABBREV.AsString;
end;

function TfmSpecification.InvestedValueFilterQuantityMultiplier(
  AInvestedValueFilter: TInvestedValueFilter): Real;
begin
  Result:= AInvestedValueFilter.ResultProductTechQuantity;
end;

function TfmSpecification.GetOperationDetailTechQuantity: Real;
begin
  if (cdsOperationsSMVS_OPERATION_VARIANT_NO.AsInteger = 0) then
    Result:= LineDetailTechQuantity
  else
    Result:= 0;
end;

procedure TfmSpecification.actToggleInvestedValueUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    FInvestedValueResultProductTechQuantityOK and
    HasShowInvestedValueActivity;
end;

procedure TfmSpecification.actUnauthorizeModelVariantExecute(Sender: TObject);
begin
  inherited;
  cdsSpecModelVariants.Edit;
  try
    cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE.Clear;
    cdsSpecModelVariants.Post;
  except
    cdsSpecModelVariants.Cancel;
    raise;
  end;   { try }
end;

procedure TfmSpecification.actUnauthorizeModelVariantUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emReadOnly) and
    cdsSpecModelVariants.Active and
    (not cdsSpecModelVariants.IsEmpty) and
    (not cdsSpecModelVariantsAUTHORIZATION_EMPLOYEE_CODE.IsNull) and
    CanModifyModel;
end;

procedure TfmSpecification.AfterGenerateModel;
begin
  inherited;
  if not FInvestedValueResultProductTechQuantityOK then
    InvestedValueVisible:= False;
end;

function TfmSpecification.GetStageInvestedValue(AInvestedValueFilter: TInvestedValueFilter): TInvestedValue;
begin
  if (cdsOperationsSMVS_OPERATION_VARIANT_NO.AsInteger = 0) and
     FilterInvestedValueStage(
       AInvestedValueFilter.RootLineStageIncludeLevel,
       AInvestedValueFilter.NonRootLineStageIncludeLevel) then
    Result:= inherited GetStageInvestedValue(AInvestedValueFilter)
  else
    Result.Clear;
end;

procedure TfmSpecification.SetChangeAfterModelGeneration(
  const Value: Boolean);
begin
  inherited;
  if Value then
    edtTotalInvestedValue.Text:= '';
end;

procedure TfmSpecification.UnapproveSpecLineStagesAndOperationsDocs(
  AUnapproveMethod: TUnapproveMethod);
var
  SaveCurrentModelVariantNo: Integer;
  MainDeptCode: Integer;
  StagesBookmark: TBookmark;
  OperationsBookmark:  TBookmark;
  ModelVariantsBookmark: TBookmark;
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsSpecModelVariantStages.DisableControls;
    try
      cdsOperations.DisableControls;
      try
        StagesBookmark:= cdsSpecModelVariantStages.Bookmark;
        OperationsBookmark:= cdsOperations.Bookmark;
        try
          case AUnapproveMethod of
            umLineStagesAndOperationsDocs:
              UnapproveLineStagesAndOperationsDocs;

            umMainDeptModelLineStagesAndOperationsDocs,
            umAllModelVariantsLineStagesAndOperationsDocs:
              begin
                SaveCurrentModelVariantNo:= CurrentModelVariantNo;
                try
                  ModelVariantsBookmark:= cdsSpecModelVariants.Bookmark;
                  try
                    if (AUnapproveMethod = umMainDeptModelLineStagesAndOperationsDocs) then
                      begin
                        cdsSpecModelVariants.Locate('SPEC_MODEL_VARIANT_NO', CurrentModelVariantNo, []);
                        MainDeptCode:= cdsSpecModelVariantsMAIN_DEPT_CODE.AsInteger;
                      end
                    else
                      MainDeptCode:= -1;

                    cdsSpecModelVariants.First;
                    while not cdsSpecModelVariants.EOF do
                      begin
                        if (AUnapproveMethod = umAllModelVariantsLineStagesAndOperationsDocs) or
                           (cdsSpecModelVariantsMAIN_DEPT_CODE.AsInteger = MainDeptCode) then
                          begin
                            CurrentModelVariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;
                            UnapproveLineStagesAndOperationsDocs;
                          end;

                        cdsSpecModelVariants.Next;
                      end;   { while }
                  finally
                    cdsSpecModelVariants.Bookmark:= ModelVariantsBookmark;
                  end;   { try }
                finally
                  CurrentModelVariantNo:= SaveCurrentModelVariantNo;
                end;   { try }
              end;
          end;
        finally
          cdsSpecModelVariantStages.Bookmark:= StagesBookmark;
          cdsOperations.Bookmark:= OperationsBookmark;
        end;  { try }
      finally
        cdsOperations.EnableControls;
      end;  { try }
    finally
      cdsSpecModelVariantStages.EnableControls;
    end;  { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;  { cursor try }
end;

procedure TfmSpecification.LoadLineDocs;
var
  Docs: TList<TDoc>;
  DocsArray: TDocs;
  i: Integer;
begin
  Docs:= TList<TDoc>.Create;
  try
    cdsSpecModelVariants.ForEach/
      procedure begin
        CurrentModelVariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;

        cdsSpecModelVariantStages.ForEach/
          procedure begin
            if not cdsSpecModelVariantStagesDOC_CODE.IsNull then
              Docs.Add(TDoc.Create(cdsSpecModelVariantStagesDOC_BRANCH_CODE.AsInteger, cdsSpecModelVariantStagesDOC_CODE.AsInteger));

            cdsOperations.ForEach/
              procedure begin
                if not cdsOperationsDOC_CODE.IsNull and (cdsOperationsSMVS_OPERATION_VARIANT_NO.AsInteger = 0) then
                  Docs.Add(TDoc.Create(cdsOperationsDOC_BRANCH_CODE.AsInteger, cdsOperationsDOC_CODE.AsInteger));
              end;
          end;
      end;

    SetLength(DocsArray, Docs.Count);
    for i:= 0 to Length(DocsArray) - 1 do
      DocsArray[i]:= Docs[i];

    dmDocClient.LoadDocs(DocsArray);
  finally
    FreeAndNil(Docs);
  end;
end;

function TfmSpecification.LineHasApprovedDocItem: Boolean;
var
  SaveCurrentModelVariantNo: Integer;
  StagesBookmark: TBookmark;
  OperationsBookmark:  TBookmark;
  ModelVariantsBookmark: TBookmark;
  SaveCursor: TCursor;
begin
  Result:= False;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsSpecModelVariants.DisableControls;
    try
      cdsSpecModelVariantStages.DisableControls;
      try
        cdsOperations.DisableControls;
        try
          StagesBookmark:= cdsSpecModelVariantStages.Bookmark;
          OperationsBookmark:= cdsOperations.Bookmark;
          try
            SaveCurrentModelVariantNo:= CurrentModelVariantNo;
            try
              ModelVariantsBookmark:= cdsSpecModelVariants.Bookmark;
              try
                LoadLineDocs;

                cdsSpecModelVariants.First;
                while not cdsSpecModelVariants.EOF do
                  begin
                    CurrentModelVariantNo:= cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO.AsInteger;

                    cdsSpecModelVariantStages.First;
                    while not cdsSpecModelVariantStages.Eof do
                      begin
                        Result:= (dmDocClient.DSApprovedDocItemCount(cdsSpecModelVariantStages) > 0);
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

                        cdsSpecModelVariantStages.Next;
                      end;  { while }

                    if Result then
                      Break;

                    cdsSpecModelVariants.Next;
                  end;   { while }
              finally
                cdsSpecModelVariants.Bookmark:= ModelVariantsBookmark;
              end;   { try }
            finally
              CurrentModelVariantNo:= SaveCurrentModelVariantNo;
            end;   { try }
          finally
            cdsSpecModelVariantStages.Bookmark:= StagesBookmark;
            cdsOperations.Bookmark:= OperationsBookmark;
          end;  { try }
        finally
          cdsOperations.EnableControls;
        end;  { try }
      finally
        cdsSpecModelVariantStages.EnableControls;
      end;  { try }
    finally
      cdsSpecModelVariants.EnableControls;
    end;  { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;  { cursor try }
end;

procedure TfmSpecification.cdsSpecModelVariantLinesNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsSpecModelVariantLinesAPPROVE_CYCLE_NO.AsInteger:= 1;
end;

function TfmSpecification.CountApproveCycles: Boolean;
begin
  Result:= LoginContext.CountApproveCycles;
end;

procedure TfmSpecification.IncApproveCycleNo;
begin
  with cdsSpecModelVariantLines do
    begin
      Edit;
      try
        with cdsSpecModelVariantLinesAPPROVE_CYCLE_NO do
          AsInteger:= AsInteger + 1;

        Post;
      except
        Cancel;
        raise;
      end;  { try }
    end;  { with }
end;

procedure TfmSpecification.ShowStructureDataCoef;
begin
  edtStructureCoef.Text:= StructureCoef.DisplayText;
end;

procedure TfmSpecification.actDocStatusExecute(Sender: TObject);
begin
  inherited;
  TfmSpecDocStatus.ShowForm(dmDocClient, cdsDataSPEC_PRODUCT_CODE.AsInteger,
    emReadOnly, False, nil, CurrentModelVariantNo);
end;

function TfmSpecification.ApproveCycleNoField: TField;
begin
  Result:= cdsSpecModelVariantLinesAPPROVE_CYCLE_NO;
end;

procedure TfmSpecification.cdsSpecModelVariantStagesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
 
  if (cdsSpecModelVariantStagesDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger = DocEmptinessRequirementToInt(derNotEmpty)) then
    begin
      if (cdsSpecModelVariantStagesUNAPPROVED_ACTIVE_DI_COUNT.AsInteger = 0) and
         cdsSpecModelVariantStagesDOC_IS_COMPLETE.AsBoolean then
        cdsSpecModelVariantStages_SHOW_APPROVE_CYCLE_NO.AsString:= ApproveCycleNoField.DisplayText
      else
        cdsSpecModelVariantStages_SHOW_APPROVE_CYCLE_NO.AsString:= Format('(%s)', [ApproveCycleNoField.DisplayText]);
    end;
end;

function TfmSpecification.GetModelIdentifier: string;
begin
  Result:= cbStagesModelVariant.Text;
end;

function TfmSpecification.CheckSpecOrModelDocs: Boolean;
begin
  Result:= LoginContext.CheckSpecDocs;
end;

procedure TfmSpecification.CheckStageAdditional;
begin
  inherited;

  if (ContextDate < cdsSpecModelVariantStagesDEPT_BEGIN_DATE.AsDateTime) or
     ((not cdsSpecModelVariantStagesDEPT_END_DATE.IsNull) and (ContextDate > cdsSpecModelVariantStagesDEPT_END_DATE.AsDateTime)) then
    raise Exception.Create(SStageInactiveDept);
end;

procedure TfmSpecification.CheckOperationAdditional;
begin
  inherited;

  if (ContextDate < cdsOperationsDEPT_BEGIN_DATE.AsDateTime) or
     ((not cdsOperationsDEPT_END_DATE.IsNull) and (ContextDate > cdsOperationsDEPT_END_DATE.AsDateTime)) then
    raise Exception.Create(SOperationInactiveDept);
end;

procedure TfmSpecification.cdsDataMANUFACTURER_COMPANY_CODEChange(
  Sender: TField);
begin
  inherited;
  GetCompanyInfo(cdsDataMANUFACTURER_COMPANY_CODE,
    nil, nil, nil, nil, nil, nil, nil,
    cdsDataMANUFACTURER_NAME);
end;

procedure TfmSpecification.cdsDataSPEC_STATE_CODEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;

  if (not Sender.IsNull) and
     InRange(Sender.AsInteger, Low(SpecNoQuantityStateAbbrevs), High(SpecNoQuantityStateAbbrevs)) then
    Text:= SpecNoQuantityStateAbbrevs[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure TfmSpecification.actCommonGroupsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsData.Active and
    (not cdsDataSPEC_PRODUCT_CODE.IsNull);
end;

procedure TfmSpecification.actCommonGroupsExecute(Sender: TObject);
begin
  inherited;

  TfmCommonGroups.ShowForm(
    nil,
    cdsDataSPEC_PRODUCT_PARENT_CODE.AsInteger,
    cdsDataSPEC_PRODUCT_CODE.AsInteger
  );
end;

procedure TfmSpecification.cdsCopyInSpecModelVariantsCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if (not cdsCopyInSpecModelVariants_INSERT_SPEC_MODEL_VARIANT_STATE.IsNull) and
     InRange(cdsCopyInSpecModelVariants_INSERT_SPEC_MODEL_VARIANT_STATE.AsInteger, Low(SpecNoQuantityStates), High(SpecNoQuantityStates)) then
    cdsCopyInSpecModelVariants_INSERT_SPEC_MODEL_VARIANT_STATE_NAME.AsString:=
      SpecNoQuantityStates[cdsCopyInSpecModelVariants_INSERT_SPEC_MODEL_VARIANT_STATE.AsInteger];
end;

procedure TfmSpecification.cdsCopyInSpecModelVariantsNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsCopyInSpecModelVariantsPARENT_DETAIL_CODE.AsInteger:=
    FAddSpecificationParentDetailCode;
end;

procedure TfmSpecification.cdsCopyInSpecModelVariants_INSERT_SPEC_MODEL_VARIANT_STATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if (not Sender.IsNull) and
     InRange(Sender.AsInteger, Low(SpecNoQuantityStates), High(SpecNoQuantityStates)) then
    Text:= SpecNoQuantityStates[Sender.AsInteger];
end;

procedure TfmSpecification.cdsDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  cdsDataSPEC_STATE_CODE.Clear;
end;

{ TSpecModelVariantData }

procedure TSpecModelVariantData.Assign(ADataSet: TDataSet);
begin
  MainDeptCode:= ADataSet.FieldByName('MAIN_DEPT_CODE').AsInteger;
  MinQuantity:= ADataSet.FieldByName('MIN_TECH_QUANTITY').AsFloat;
  MaxQuantity:= ADataSet.FieldByName('MAX_TECH_QUANTITY').AsFloat;
  Notes:= ADataSet.FieldByName('NOTES').AsString;
end;

function TSpecModelVariantData.Compare(ADataSet: TDataSet): Boolean;
begin
  Result:=
    (MainDeptCode = ADataSet.FieldByName('MAIN_DEPT_CODE').AsInteger) and
    (MinQuantity = ADataSet.FieldByName('MIN_TECH_QUANTITY').AsFloat) and
    (MaxQuantity = ADataSet.FieldByName('MAX_TECH_QUANTITY').AsFloat) and
    (Notes = ADataSet.FieldByName('NOTES').AsString);
end;

end.


