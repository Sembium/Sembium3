unit fSpecificationAndXModelAbstract;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fGridForm, ImgList, ParamDataSet, ActnList, Db, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, ComCtrls, AbmesFields,
  fEditForm, uClientTypes, Menus, JvButtons, PrnDbgeh, rTasks, ToolWin,
  rSpecAndXModelRecursivePrintAbstract, fSpecAndXModelUnapproveAbstract,
  JvComponent, JvCaptionButton, JvComponentBase, Generics.Collections,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.Actions,
  EhLibVCL, DBAxisGridsEh;

const
  MaxNoPos = 25;

type
  TAddLineMode = (almAddRoot, almAddChild, almAddBrother, almAddFork);
  TModelColumnType = (mctDept, mctInvestedValue, mctInvestedValuePart, mctInvestedValueIsIncomplete, mctDates, mctArrow);

type
  TNewOperationData = class
  private
    FOperationNo: Integer;
    FOperationVariantShowNo: Integer;
    FOperationVariantNo: Integer;
    FOperationShowNo: Integer;
    FDocBranchCode: Integer;
    FDocCode: Integer;
    FCreateLike: Boolean;
    FHasDocumentation: Boolean;
    FDocIsComplete: Boolean;
    FUnapprovedActiveDICount: Integer;
    FDocEmtpinessRequirementCode: Integer;
  public
    procedure SetData(AOperationNo: Integer; AOperationVariantNo: Integer;
      ADocBranchCode: Integer = -1; ADocCode: Integer = -1;
      AOperationShowNo: Integer = -1; AOperationVariantShowNo: Integer = -1;
      AHasDocumentation: Boolean = False; ADocEmtpinessRequirementCode: Integer = 0;
      ADocIsComplete: Boolean = False; AUnapprovedActiveDICount: Integer = 0);

    property OperationNo: Integer read FOperationNo write FOperationNo;
    property OperationVariantNo: Integer read FOperationVariantNo write FOperationVariantNo;
    property DocBranchCode: Integer read FDocBranchCode write FDocBranchCode;
    property DocCode: Integer read FDocCode write FDocCode;
    property OperationShowNo: Integer read FOperationShowNo write FOperationShowNo;
    property OperationVariantShowNo: Integer read FOperationVariantShowNo write FOperationVariantShowNo;
    property HasDocumentation: Boolean read FHasDocumentation write FHasDocumentation;
    property DocEmtpinessRequirementCode: Integer read FDocEmtpinessRequirementCode write FDocEmtpinessRequirementCode;
    property DocIsComplete: Boolean read FDocIsComplete write FDocIsComplete;
    property UnapprovedActiveDICount: Integer read FUnapprovedActiveDICount write FUnapprovedActiveDICount;

    property CreateLike: Boolean read FCreateLike write FCreateLike;
  end;

type
  TInvestedValueType = (ivtPlan, ivtReal, ivtDiversion, ivtWaste);
  TInvestedValueLevel = 1..5;
  TInvestedValueSum = (ivsNone, ivsAggregated, ivsFull);

type
  TInvestedValue = record
    Value: Real;
    IsIncomplete: Boolean;
    procedure Clear;
    class operator Add(a, b: TInvestedValue): TInvestedValue;
    class operator Multiply(a: TInvestedValue; b: Real): TInvestedValue;
    class operator Divide(a: TInvestedValue; b: Real): TInvestedValue;
  end;

type
  TOperationInvestedValue = record
    HasSetup: Boolean;
    SetupInvestedValue: TInvestedValue;
    DetailInvestedValue: TInvestedValue;
    procedure Clear;
    function TotalInvestedValue: TInvestedValue;
    class operator Add(a, b: TOperationInvestedValue): TOperationInvestedValue;
    class operator Multiply(a: TOperationInvestedValue; b: Real): TOperationInvestedValue;
    class operator Divide(a: TOperationInvestedValue; b: Real): TOperationInvestedValue;
  end;

type
  TInvestedValueFilter = class(TPersistent)
  private
    FResultProductTechQuantity: Real;
    FInvestedValueSingle: Boolean;
    FAggregated: Boolean;     // lokalizirano/sintezirano
    FInvestedValueType: TInvestedValueType;
    FInvestedValueLevel: TInvestedValueLevel;
    FInvestedValueSum: TInvestedValueSum;
    FCurrencyCode: Integer;
    FCurrencyAbbrev: string;
    FInvestedValueAbbrev: string;
    FInvestedValueDate: TDateTime;
    FCurrencyRate: Real;
    FLabourCostCoef: Real;
    FOrganizationCostCoef: Real;
    FHasLabourAndOrganizationCostCoef: Boolean;
    FRootLineStageIncludeLevel: Integer;
    FNonRootLineStageIncludeLevel: Integer;
  public
    constructor Create;
    procedure AssignTo(Dest: TPersistent); override;
    function InvestedValueSingleAbbrev: string;
    function AggregatedAbbrev: string;
    function InvestedValueTypeAbbrev: string;

    property ResultProductTechQuantity: Real read FResultProductTechQuantity write FResultProductTechQuantity;
    property InvestedValueSingle: Boolean read FInvestedValueSingle write FInvestedValueSingle;
    property Aggregated: Boolean read FAggregated write FAggregated;
    property InvestedValueType: TInvestedValueType read FInvestedValueType write FInvestedValueType;
    property InvestedValueLevel: TInvestedValueLevel read FInvestedValueLevel write FInvestedValueLevel default 1;
    property InvestedValueSum: TInvestedValueSum read FInvestedValueSum write FInvestedValueSum;
    property CurrencyCode: Integer read FCurrencyCode write FCurrencyCode;
    property CurrencyAbbrev: string read FCurrencyAbbrev write FCurrencyAbbrev;
    property CurrencyRate: Real read FCurrencyRate write FCurrencyRate;
    property InvestedValueAbbrev: string read FInvestedValueAbbrev write FInvestedValueAbbrev;
    property InvestedValueDate: TDateTime read FInvestedValueDate write FInvestedValueDate;
    property LabourCostCoef: Real read FLabourCostCoef write FLabourCostCoef;
    property OrganizationCostCoef: Real read FOrganizationCostCoef write FOrganizationCostCoef;
    property HasLabourAndOrganizationCostCoef: Boolean read FHasLabourAndOrganizationCostCoef write FHasLabourAndOrganizationCostCoef;
    property RootLineStageIncludeLevel: Integer read FRootLineStageIncludeLevel write FRootLineStageIncludeLevel default 2;
    property NonRootLineStageIncludeLevel: Integer read FNonRootLineStageIncludeLevel write FNonRootLineStageIncludeLevel default 1;
  end;

type
  TStructureCoef = class
  private
    LevelNo: Integer;
    LevelIsComplete: Boolean;
    MaxLevelNo: Integer;
    HasMissingChildren: Boolean;
  public
    function DisplayText: string;
    function IsComplete: Boolean;
  end;

type
  TfmSpecificationAndXModelAbstract = class(TGridForm)
    pnlMainData: TPanel;
    pnlLinesData: TPanel;
    pcMain: TPageControl;
    pnlNav: TPanel;
    actResizeWorkspace: TAction;
    actLevelUp: TAction;
    tsLines1: TTabSheet;
    pnlDataButtons1: TPanel;
    btnAddData1: TBitBtn;
    btnDeleteData1: TBitBtn;
    btnEditData1: TBitBtn;
    grdLines1: TAbmesDBGrid;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    tsLines2: TTabSheet;
    pnlDataButtons2: TPanel;
    btnAddData2: TBitBtn;
    btnDeleteData2: TBitBtn;
    btnEditData2: TBitBtn;
    grdLines2: TAbmesDBGrid;
    pnlBottomButtonsClient: TPanel;
    pnlResizeWorkspaceButton: TPanel;
    btnResizeWorkspace: TSpeedButton;
    actAddChild: TAction;
    actAddBrother: TAction;
    actInsertBefore: TAction;
    actAddSpecification: TAction;
    actInsertSpecification: TAction;
    actMoveUpLine: TAction;
    actMoveDownLine: TAction;
    pmAdd: TPopupMenu;
    miAddChild: TMenuItem;
    miAddBrother: TMenuItem;
    miAddSpecification: TMenuItem;
    miLineBeforeInsertItems: TMenuItem;
    miInsertBefore: TMenuItem;
    miInsertSpecification: TMenuItem;
    cdsGridDataNO_1: TAbmesFloatField;
    cdsGridDataNO_2: TAbmesFloatField;
    cdsGridDataNO_3: TAbmesFloatField;
    cdsGridDataNO_4: TAbmesFloatField;
    cdsGridDataNO_5: TAbmesFloatField;
    cdsGridDataDETAIL_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_NAME: TAbmesWideStringField;
    cdsGridDataDETAIL_NO: TAbmesFloatField;
    cdsGridDataDETAIL_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataDETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataDETAIL_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsGridDataPRODUCT_TECH_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataNOTES: TAbmesWideStringField;
    cdsGridDataPRODUCT_IS_FOR_TREATMENT_USE: TAbmesFloatField;
    cdsGridDataPRODUCT_IS_FOR_DIRECT_USE: TAbmesFloatField;
    btnMoveUpLine1: TSpeedButton;
    btnMoveDownLine1: TSpeedButton;
    btnMoveUpLine2: TSpeedButton;
    btnMoveDownLine2: TSpeedButton;
    tsStages: TTabSheet;
    pnlStagesDataButtons: TPanel;
    pnlStagesDataButtonsInner: TPanel;
    btnModelVariantStageUp: TSpeedButton;
    btnModelVariantStageDown: TSpeedButton;
    btnAddStage: TBitBtn;
    btnDelStage: TBitBtn;
    btnEditStage: TBitBtn;
    pnlStages: TPanel;
    grdStages: TAbmesDBGrid;
    pnlSplitter: TPanel;
    grdLines3: TAbmesDBGrid;
    actAddStage: TAction;
    actDelStage: TAction;
    actEditStage: TAction;
    actMoveUpStage: TAction;
    actMoveDownStage: TAction;
    tsModel: TTabSheet;
    grdModel: TAbmesDBGrid;
    cdsGridDataPRODUCT_TECH_MEASURE_COEF: TAbmesFloatField;
    cdsGridDataTOTAL_PRODUCT_ACCOUNT_QUANTITY: TAbmesFloatField;
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    cdsGridDataPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField;
    cdsGridDataPRODUCT_SECONDARY_TOTAL_PRICE: TAbmesFloatField;
    cdsGridData_DETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_PRODUCT_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_PRODUCT_TREATMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridData_LINE_TYPE_ABRREV: TAbmesWideStringField;
    cdsGridDataNO_6: TAbmesFloatField;
    cdsGridDataNO_7: TAbmesFloatField;
    cdsGridDataNO_8: TAbmesFloatField;
    cdsModel: TAbmesClientDataSet;
    dsModel: TDataSource;
    grdPrint: TAbmesDBGrid;
    pgdModel: TPrintDBGridEh;
    actPrintModel: TAction;
    pnlModelControls: TPanel;
    actMaximizeInModel: TAction;
    btnMaximizeInModel: TSpeedButton;
    pnlModelLeft: TPanel;
    pnlModelRight: TPanel;
    pnlModelBottom: TPanel;
    cdsGridData_IS_FIRST_CHILD: TBooleanField;
    cdsGridData_IS_LAST_CHILD: TBooleanField;
    actCheckModel: TAction;
    btnCheckModel: TBitBtn;
    cdsGridData_DETAIL_TECH_QUANTITY_SHOW: TAbmesFloatField;
    cdsGridData_LINE_DETAIL_TECH_QUANTITY_SHOW: TAbmesFloatField;
    tsTasks: TTabSheet;
    pnlTasksTop: TPanel;
    grdTasks: TAbmesDBGrid;
    pnlTasksButtons: TPanel;
    grdTaskDepts: TAbmesDBGrid;
    btnAddTask: TBitBtn;
    blvDivider: TBevel;
    btnDelTask: TBitBtn;
    btnEditTask: TBitBtn;
    pnlTaskDeptsButtons: TPanel;
    btnAddTaskDept: TBitBtn;
    btnDelTaskDept: TBitBtn;
    btnEditTaskDept: TBitBtn;
    actAddTask: TAction;
    actDelTask: TAction;
    actEditTask: TAction;
    actAddTaskDept: TAction;
    actDelTaskDept: TAction;
    actEditTaskDept: TAction;
    actEditTaskInModel: TAction;
    btnPrintAllTasks: TBitBtn;
    actPrintAllTasks: TAction;
    pnlModelTaskEdit: TPanel;
    btnMaximizeInModel2: TSpeedButton;
    btnEditTaskInModelOK: TBitBtn;
    btnEditTaskInModelCancel: TBitBtn;
    actEditTaskInModelOK: TAction;
    actEditTaskInModelCancel: TAction;
    lblEditTaskInModelCaption: TLabel;
    cdsModelTasks: TAbmesClientDataSet;
    cdsModelTasksNO_1: TAbmesFloatField;
    cdsModelTasksNO_2: TAbmesFloatField;
    cdsModelTasksNO_3: TAbmesFloatField;
    cdsModelTasksNO_4: TAbmesFloatField;
    cdsModelTasksNO_5: TAbmesFloatField;
    cdsModelTasksNO_6: TAbmesFloatField;
    cdsModelTasksNO_7: TAbmesFloatField;
    cdsModelTasksNO_8: TAbmesFloatField;
    cdsModelTasksDETAIL_NAME: TAbmesWideStringField;
    cdsModelTasksDETAIL_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsModelTasksPRODUCT_NAME: TAbmesWideStringField;
    cdsModelTasksPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsModelTasksPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsModelTasksTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsModelTasks_DETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsModelTasks_PRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsModelTasks_PRODUCT_TREATMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsModelTasks_DETAIL_TECH_QUANTITY_SHOW: TAbmesFloatField;
    cdsModelTasks_LINE_DETAIL_TECH_QUANTITY_SHOW: TAbmesFloatField;
    cdsModelTasksFROM_DEPT_CODE: TAbmesFloatField;
    cdsModelTasksDEPT_CODE: TAbmesFloatField;
    cdsModelTasksTO_DEPT_CODE: TAbmesFloatField;
    cdsModelTasksDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsModelTasksFROM_STAGE_IDENTIFIER: TAbmesWideStringField;
    cdsModelTasksSTAGE_IDENTIFIER: TAbmesWideStringField;
    cdsModelTasksTO_STAGE_IDENTIFIER: TAbmesWideStringField;
    cdsModelTasksLINE_LEVEL: TAbmesFloatField;
    cdsModelTasksTASK_NO: TAbmesFloatField;
    cdsModelTasksTASK_NAME: TAbmesWideStringField;
    cdsModelTasksHeader: TAbmesClientDataSet;
    cdsModelTasksFROM_ARROW: TAbmesWideStringField;
    cdsModelTasksTO_ARROW: TAbmesWideStringField;
    cdsModelTasksSTAGE_NO: TAbmesFloatField;
    actAddBrotherSpecification: TAction;
    miAddBrotherSpecification: TMenuItem;
    actResizeFormHeight: TAction;
    cdsFilteredGridData: TAbmesClientDataSet;
    dsFilteredGridData: TDataSource;
    actFocusShowLevelEdit: TAction;
    cdsModelTasks_LINE_TYPE_ABRREV: TAbmesWideStringField;
    cdsProfessions: TAbmesClientDataSet;
    cdsProfessionsPROFESSION_CODE: TAbmesFloatField;
    cdsProfessionsPROFESSION_NAME: TAbmesWideStringField;
    cdsOperations: TAbmesClientDataSet;
    cdsOperationsPROFESSION_CODE: TAbmesFloatField;
    cdsOperationsEFFORT_COEF: TAbmesFloatField;
    cdsOperations_PROFESSION_NAME: TAbmesWideStringField;
    tlbTopButtons: TToolBar;
    btnProductDocumentation: TSpeedButton;
    btnDetailDocumentation: TSpeedButton;
    cdsOperationsHOUR_PRICE: TAbmesFloatField;
    cdsModelTasks_PRINT_NOTES: TAbmesWideStringField;
    cdsGridDataNO_9: TAbmesFloatField;
    cdsGridDataNO_10: TAbmesFloatField;
    cdsGridDataNO_11: TAbmesFloatField;
    cdsGridDataNO_12: TAbmesFloatField;
    cdsGridDataNO_13: TAbmesFloatField;
    cdsGridDataNO_14: TAbmesFloatField;
    cdsGridDataNO_15: TAbmesFloatField;
    cdsGridDataNO_16: TAbmesFloatField;
    cdsGridDataNO_17: TAbmesFloatField;
    cdsGridDataNO_18: TAbmesFloatField;
    cdsGridDataNO_19: TAbmesFloatField;
    cdsGridDataNO_20: TAbmesFloatField;
    cdsGridDataNO_21: TAbmesFloatField;
    cdsGridDataNO_22: TAbmesFloatField;
    cdsGridDataNO_23: TAbmesFloatField;
    cdsGridDataNO_24: TAbmesFloatField;
    cdsGridDataNO_25: TAbmesFloatField;
    cdsGridDataNO_AS_TEXT: TAbmesWideStringField;
    cdsGridDataNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsModelTasksNO_9: TAbmesFloatField;
    cdsModelTasksNO_10: TAbmesFloatField;
    cdsModelTasksNO_11: TAbmesFloatField;
    cdsModelTasksNO_12: TAbmesFloatField;
    cdsModelTasksNO_13: TAbmesFloatField;
    cdsModelTasksNO_14: TAbmesFloatField;
    cdsModelTasksNO_15: TAbmesFloatField;
    cdsModelTasksNO_16: TAbmesFloatField;
    cdsModelTasksNO_17: TAbmesFloatField;
    cdsModelTasksNO_18: TAbmesFloatField;
    cdsModelTasksNO_19: TAbmesFloatField;
    cdsModelTasksNO_20: TAbmesFloatField;
    cdsModelTasksNO_21: TAbmesFloatField;
    cdsModelTasksNO_22: TAbmesFloatField;
    cdsModelTasksNO_23: TAbmesFloatField;
    cdsModelTasksNO_24: TAbmesFloatField;
    cdsModelTasksNO_25: TAbmesFloatField;
    cdsModelTasksNO_AS_TEXT: TAbmesWideStringField;
    cdsModelTasksNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsGridData_MAX_NO_1: TAggregateField;
    cdsGridData_MAX_NO_2: TAggregateField;
    cdsGridData_MAX_NO_3: TAggregateField;
    cdsGridData_MAX_NO_4: TAggregateField;
    cdsGridData_MAX_NO_5: TAggregateField;
    cdsGridData_MAX_NO_6: TAggregateField;
    cdsGridData_MAX_NO_7: TAggregateField;
    cdsGridData_MAX_NO_8: TAggregateField;
    cdsGridData_MAX_NO_9: TAggregateField;
    cdsGridData_MAX_NO_10: TAggregateField;
    cdsGridData_MAX_NO_11: TAggregateField;
    cdsGridData_MAX_NO_12: TAggregateField;
    cdsGridData_MAX_NO_13: TAggregateField;
    cdsGridData_MAX_NO_14: TAggregateField;
    cdsGridData_MAX_NO_15: TAggregateField;
    cdsGridData_MAX_NO_16: TAggregateField;
    cdsGridData_MAX_NO_17: TAggregateField;
    cdsGridData_MAX_NO_18: TAggregateField;
    cdsGridData_MAX_NO_19: TAggregateField;
    cdsGridData_MAX_NO_20: TAggregateField;
    cdsGridData_MAX_NO_21: TAggregateField;
    cdsGridData_MAX_NO_22: TAggregateField;
    cdsGridData_MAX_NO_23: TAggregateField;
    cdsGridData_MAX_NO_24: TAggregateField;
    cdsGridData_MAX_NO_25: TAggregateField;
    cdsRecursivePrint: TAbmesClientDataSet;
    cdsRecursivePrintPARENT_NO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsRecursivePrintNO_AS_FORMATED_TEXT: TAbmesWideStringField;
    btnRecursivePrint: TBitBtn;
    actRecursivePrint: TAction;
    cdsRecursivePrintREAL_NO_AS_FORMATED_TEXT: TAbmesWideStringField;
    cdsRecursivePrintLINE_TYPE_ABRREV: TAbmesWideStringField;
    cdsRecursivePrintDETAIL_NAME: TAbmesWideStringField;
    cdsRecursivePrintDETAIL_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsRecursivePrintDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsRecursivePrintPRODUCT_TREATMENT_TYPE_ABBREV: TAbmesWideStringField;
    cdsRecursivePrintPRODUCT_NAME: TAbmesWideStringField;
    cdsRecursivePrintPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField;
    cdsRecursivePrintPRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsRecursivePrintPRODUCT_SECONDARY_SINGLE_PRICE: TAbmesFloatField;
    cdsRecursivePrintPRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsRecursivePrintDETAIL_TECH_QUANTITY_SHOW: TAbmesFloatField;
    cdsRecursivePrintDETAIL_NO: TAbmesFloatField;
    cdsRecursivePrint_PRINT_NOTES: TAbmesWideStringField;
    actModelRecursivePrint: TAction;
    cdsRecursivePrintBEGIN_DEPT_STAGE_NO: TAbmesFloatField;
    cdsRecursivePrintEND_DEPT_STAGE_NO: TAbmesFloatField;
    cdsRecursivePrintREAL_NO_AS_TEXT: TAbmesWideStringField;
    cdsOperationsDEPT_CODE: TAbmesFloatField;
    cdsOperationsDEPT_NAME: TAbmesWideStringField;
    cdsOperationsDEPT_IDENTIFIER: TAbmesWideStringField;
    cdsOperationsSETUP_PROFESSION_CODE: TAbmesFloatField;
    cdsOperationsSETUP_EFFORT_COEF: TAbmesFloatField;
    cdsOperationsSETUP_HOUR_PRICE: TAbmesFloatField;
    cdsOperationsSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsOperationsHOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsOperationsPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsOperationsSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsOperationsTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsOperationsNOTES: TAbmesWideStringField;
    cdsOperations_SETUP_PROFESSION_NAME: TAbmesWideStringField;
    cdsOperationsPROGRAM_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsOperationsPROGRAM_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsOperationsSPECIFIC_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsOperationsSPECIFIC_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsOperationsTYPICAL_TOOL_PRODUCT_NAME: TAbmesWideStringField;
    cdsOperationsTYPICAL_TOOL_PRODUCT_NO: TAbmesFloatField;
    cdsOperations_SETUP_ABBREV: TAbmesWideStringField;
    cdsOperations_ABBREV: TAbmesWideStringField;
    cdsOperations_SETUP_DEPT_NAME: TAbmesWideStringField;
    cdsOperations_SETUP_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsOperationsDOC_BRANCH_CODE: TAbmesFloatField;
    cdsOperationsDOC_CODE: TAbmesFloatField;
    cdsOperationsHAS_DOCUMENTATION: TAbmesFloatField;
    cdsOperations_SHOW_NO: TAbmesWideStringField;
    cdsOperationsOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsOperations_MIN_OPERATION_TYPE_CODE: TAggregateField;
    cdsOperations_MAX_OPERATION_TYPE_CODE: TAggregateField;
    cdsOperations_MAX_OPERATION_NO: TAggregateField;
    cdsOperations_MAX_OPERATION_VARIANT_NO: TAggregateField;
    cdsOperations_SHOW_SETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsOperations_SHOW_HOUR_TECH_QUANTITY: TAbmesWideStringField;
    cdsOperationsDEPT_PRODUCT_CODE: TAbmesFloatField;
    cdsOperations_OPERATION_COUNT: TAggregateField;
    cdsGridDataIS_FOR_SINGLE_USE: TAbmesFloatField;
    cdsOperationsSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsOperationsTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    btnEditTaskInModel: TBitBtn;
    btnPrintTask: TBitBtn;
    actPrintTask: TAction;                            
    btnPrintOperations: TBitBtn;              
    actPrintOperations: TAction;
    cdsGridDataCONSTRUCTION_NOTES: TAbmesWideStringField;            
    cdsGridData_PRINT_NOTES: TAbmesWideStringField;
    cdsOperationsTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    cdsOperationsTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsOperationsDEPT_PARENT_CODE: TAbmesFloatField;
    cdsGridDataDETAIL_PARENT_CODE: TAbmesFloatField;
    cdsOperationsHAS_SPECIAL_CONTROL: TAbmesFloatField;
    cdsOperations_MAX_HAS_SPECIAL_CONTROL: TAggregateField;
    cdsOperations_STAGE_HAS_SPECIAL_CONTROL: TAggregateField;
    cdsProfessionsHOUR_PRICE: TAbmesFloatField;
    cdsOperations_MAX_END_DAY_NO: TAggregateField;
    actTaskModel: TAction;
    btnTaskModel: TBitBtn;
    pnlTaskModelTop: TPanel;
    actTaskModelClose: TAction;
    pnlTaskModelCloseButton: TPanel;
    btnTaskModelClose: TBitBtn;
    pnlTaskModelTopClient: TPanel;
    btnPrintModel2: TBitBtn;
    btnMaximizeInModel3: TSpeedButton;
    lblTaskModelCaption: TLabel;
    cdsGridDataDETAIL_IS_INACTIVE: TAbmesFloatField;
    cdsGridDataPRODUCT_IS_INACTIVE: TAbmesFloatField;
    cdsOperationCreateLike: TAbmesClientDataSet;
    cdsOperationCreateLikeOPERATION_TYPE_CODE: TAbmesFloatField;
    cdsOperationCreateLikeDEPT_CODE: TAbmesFloatField;
    cdsOperationCreateLikeSETUP_PROFESSION_CODE: TAbmesFloatField;
    cdsOperationCreateLikeSETUP_EFFORT_COEF: TAbmesFloatField;
    cdsOperationCreateLikeSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsOperationCreateLikePROFESSION_CODE: TAbmesFloatField;
    cdsOperationCreateLikeEFFORT_COEF: TAbmesFloatField;
    cdsOperationCreateLikeHOUR_TECH_QUANTITY: TAbmesFloatField;
    cdsOperationCreateLikePROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsOperationCreateLikeSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsOperationCreateLikeTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField;
    cdsOperationCreateLikeNOTES: TAbmesWideStringField;
    cdsOperationCreateLikeDOC_BRANCH_CODE: TAbmesFloatField;
    cdsOperationCreateLikeDOC_CODE: TAbmesFloatField;
    cdsOperationCreateLikeSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsOperationCreateLikeTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField;
    cdsOperationCreateLikeTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField;
    cdsOperationCreateLikeTREATMENT_WORKDAYS: TAbmesFloatField;
    cdsOperationCreateLikeHAS_DOCUMENTATION: TAbmesFloatField;
    cdsOperationCreateLikeHAS_SPECIAL_CONTROL: TAbmesFloatField;
    cdsOperationsD_HOUR_PRICE: TAbmesFloatField;
    cdsStageInvestedValues: TAbmesClientDataSet;
    cdsStageInvestedValuesINVESTED_VALUE: TAbmesFloatField;
    cdsStageInvestedValuesAGGREGATED_INVESTED_VALUE: TAbmesFloatField;
    actToggleInvestedValue: TAction;
    btnToggleInvestedValue: TSpeedButton;
    actInvestedValueFilter: TAction;
    cdsStageInvestedValuesPRODUCT_INVESTED_VALUE: TAbmesFloatField;
    cdsTodayCurrencyRates: TAbmesClientDataSet;
    cdsTodayCurrencyRatesCURRENCY_CODE: TAbmesFloatField;
    cdsTodayCurrencyRatesFIXING: TAbmesFloatField;
    cdsGridDataPRODUCT_SINGLE_PRICE: TAbmesFloatField;
    cdsGridData_PRODUCTS_INVESTED_VALUE: TAggregateField;
    cdsEarningModifiers: TAbmesClientDataSet;
    cdsInvestedValueFilter: TAbmesClientDataSet;
    cdsInvestedValueFilterRESULT_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    cdsInvestedValueFilterIS_AGGREGATED: TAbmesFloatField;
    cdsInvestedValueFilterINVESTED_VALUE_TYPE: TAbmesFloatField;
    cdsInvestedValueFilterINVESTED_VALUE_LEVEL: TAbmesFloatField;
    cdsInvestedValueFilterINVESTED_VALUE_SUM: TAbmesFloatField;
    cdsInvestedValueFilterCURRENCY_CODE: TAbmesFloatField;
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    cdsInvestedValueFilter_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsInvestedValueFilterTECH_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_PRODUCTS_PRICE: TAggregateField;
    cdsInvestedValueFilterINVESTED_VALUE_ABBREV: TAbmesWideStringField;
    pgdModelTask: TPrintDBGridEh;
    pgdModelRecursive: TPrintDBGridEh;
    pgdInvestedValues: TPrintDBGridEh;
    cdsGridDataIS_COMPLETE: TAbmesFloatField;
    cdsGridDataDETAIL_IS_SELF_APPROVED: TAbmesFloatField;
    cdsOperationsIS_NORMAL_OPERATION: TAbmesFloatField;
    cdsOperations_MIN_NORMAL_BEGIN_WORKDAY_NO: TAggregateField;
    cdsOperations_MAX_NORMAL_END_WORKDAY_NO: TAggregateField;
    cdsOperations_MIN_BEGIN_DAY_NO: TAggregateField;
    actDocStatus: TAction;
    pnlDocStatusButton: TPanel;
    btnDocStatus: TSpeedButton;
    cdsOperationsUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField;
    cdsOperationsDOC_IS_COMPLETE: TAbmesFloatField;
    cdsOperations_SHOW_APPROVE_CYCLE_NO: TAbmesWideStringField;
    cdsOperationsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField;
    cdsOperationsDEPT_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsOperationsDEPT_END_DATE: TAbmesSQLTimeStampField;
    pnlDetailDocsCaption: TPanel;
    pnlProductDocsCaption: TPanel;
    sepBeforeProductDocsCaption: TToolButton;
    pnlShowLevel: TPanel;
    edtShowLevel: TEdit;
    udShowLevel: TUpDown;
    sepBeforeShowLevel: TToolButton;
    btnLevelUp: TSpeedButton;
    sepBeforeNavLines: TToolButton;
    navLines: TDBColorNavigator;
    btnExcelExportLines: TSpeedButton;
    cdsInvestedValueFilterTHE_DATE: TAbmesSQLTimeStampField;
    cdsDeptPricesCache: TAbmesClientDataSet;
    cdsDeptPricesCacheDEPT_CODE: TAbmesFloatField;
    cdsDeptPricesCachePRICE_DATE: TAbmesSQLTimeStampField;
    cdsDeptPricesCacheHOUR_PRICE: TAbmesFloatField;
    cdsDeptPricesCacheMAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    cdsOperationsPROGRAM_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsOperationsSPECIFIC_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    cdsOperationsTYPICAL_TOOL_REQUIREMENT_CODE: TAbmesFloatField;
    pmPrintModel: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    btnPrintModel: TBitBtn;
    pmPrint: TPopupMenu;
    miPrint: TMenuItem;
    miRecursivePrint: TMenuItem;
    actStructurePrint: TAction;
    miStructurePrint: TMenuItem;
    cdsRecursivePrintPRODUCT_NO: TAbmesFloatField;
    cdsOperationsPROGRAM_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsOperationsSPECIFIC_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsOperationsTYPICAL_TOOL_IS_COMPLETE: TAbmesFloatField;
    cdsOperationsSETUP_COUNT: TAbmesFloatField;
    cdsOperationsD_MAINTAINANCE_HOUR_PRICE: TAbmesFloatField;
    cdsEarningModifiersLABOUR_COST_COEF: TAbmesFloatField;
    cdsEarningModifiersORGANIZATION_COST_COEF: TAbmesFloatField;
    cdsInvestedValueFilterINVESTED_VALUE_SINGLE: TAbmesFloatField;
    actToggleInvestedValuePart: TAction;
    btnToggleInvestedValuePart: TSpeedButton;
    cdsOperationsD_PARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    cdsOperationsD_PARALLEL_PROCESS_COUNT: TAbmesFloatField;
    cdsDeptPricesCachePARALLEL_OPERATOR_COUNT: TAbmesFloatField;
    cdsDeptPricesCachePARALLEL_PROCESS_COUNT: TAbmesFloatField;
    cdsStageInvestedValuesINVESTED_VALUE_IS_INCOMPLETE: TAbmesFloatField;
    cdsStageInvestedValuesAGGREGATED_INVESTED_VALUE_IS_INCOMPLETE: TAbmesFloatField;
    cdsStageInvestedValuesPRODUCT_INVESTED_VALUE_IS_INCOMPLETE: TAbmesFloatField;
    cdsGridData_PRODUCT_SINGLE_PRICE_COUNT: TAggregateField;
    cdsGridData_PRODUCT_COUNT: TAggregateField;
    cdsGridDataPRODUCT_INVESTMENT_VALUE_2: TAbmesFloatField;
    cdsGridDataPRODUCT_INVESTMENT_VALUE_3: TAbmesFloatField;
    cdsGridDataPRODUCT_INVESTMENT_VALUE_4: TAbmesFloatField;
    cdsGridDataPRODUCT_INVESTMENT_VALUE_5: TAbmesFloatField;
    cdsProductPricesCache: TAbmesClientDataSet;
    cdsProductPricesCachePRODUCT_CODE: TAbmesFloatField;
    cdsProductPricesCachePRICE_DATE: TAbmesSQLTimeStampField;
    cdsProductPricesCacheESTIMATED_SECONDARY_PRICE: TAbmesFloatField;
    cdsProductPricesCacheMARKET_SECONDARY_PRICE: TAbmesFloatField;
    cdsProductPricesCacheINVESTMENT_VALUE_2: TAbmesFloatField;
    cdsProductPricesCacheINVESTMENT_VALUE_3: TAbmesFloatField;
    cdsProductPricesCacheINVESTMENT_VALUE_4: TAbmesFloatField;
    cdsProductPricesCacheINVESTMENT_VALUE_5: TAbmesFloatField;
    cdsInvestedValueFilterROOT_LINE_STAGE_INCLUDE_LEVEL: TAbmesFloatField;
    cdsInvestedValueFilterNON_ROOT_LINE_STAGE_INCLUDE_LEVEL: TAbmesFloatField;
    cdsProductPricesCachePRECISION_LEVEL_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_PRECISION_LEVEL_CODE: TAbmesFloatField;
    cdsPrecisionLevels: TAbmesClientDataSet;
    cdsPrecisionLevelsPRECISION_LEVEL_CODE: TAbmesFloatField;
    cdsPrecisionLevelsPRECISION_LEVEL_NO: TAbmesFloatField;
    cdsPrecisionLevelsPRECISION_LEVEL_NAME: TAbmesWideStringField;
    cdsPrecisionLevelsCOLOR: TAbmesFloatField;
    cdsPrecisionLevelsBACKGROUND_COLOR: TAbmesFloatField;
    cdsGridData_PRODUCT_PRECISION_LEVEL_NO: TAbmesFloatField;
    cdsGridData_PRODUCT_PRECISION_LEVEL_COLOR: TAbmesFloatField;
    cdsGridData_PRODUCT_PRECISION_LEVEL_BACKGROUND_COLOR: TAbmesFloatField;
    cdsRecursivePrint_PRODUCT_PRECISION_LEVEL_NO: TAbmesFloatField;
    cdsOperationsIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsOperationsIS_AUTO_SETUP: TAbmesFloatField;
    cdsOperationCreateLikeIS_AUTO_MOVEMENT: TAbmesFloatField;
    cdsOperationCreateLikeIS_AUTO_SETUP: TAbmesFloatField;
    procedure actResizeWorkspaceExecute(Sender: TObject);
    procedure actLevelUpUpdate(Sender: TObject);
    procedure grdLinesDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actAddChildUpdate(Sender: TObject);
    procedure actAddChildExecute(Sender: TObject);
    procedure actAddBrotherUpdate(Sender: TObject);
    procedure actAddBrotherExecute(Sender: TObject);
    procedure actInsertBeforeUpdate(Sender: TObject);
    procedure actAddSpecificationUpdate(Sender: TObject);
    procedure actInsertSpecificationUpdate(Sender: TObject);
    procedure actInsertRecordExecute(Sender: TObject);
    procedure cdsGridDataDETAIL_CODEChange(Sender: TField);
    procedure cdsGridDataPRODUCT_CODEChange(Sender: TField);
    procedure cdsGridDataDETAIL_TECH_QUANTITYChange(Sender: TField);
    procedure cdsGridDataPRODUCT_TECH_QUANTITYChange(Sender: TField);
    procedure actAddStageUpdate(Sender: TObject);
    procedure actDelStageUpdate(Sender: TObject);
    procedure actDelStageExecute(Sender: TObject);
    procedure actEditStageUpdate(Sender: TObject);
    procedure actMoveUpStageUpdate(Sender: TObject);
    procedure actMoveDownStageUpdate(Sender: TObject);
    procedure grdStagesDblClick(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure actEditRecordUpdate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataPRODUCT_SECONDARY_SINGLE_PRICEChange(
      Sender: TField);
    procedure actMoveUpStageExecute(Sender: TObject);
    procedure actMoveDownStageExecute(Sender: TObject);
    procedure pcMainChange(Sender: TObject);
    procedure grdModelGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actPrintModelExecute(Sender: TObject);
    procedure actMaximizeInModelUpdate(Sender: TObject);
    procedure actMaximizeInModelExecute(Sender: TObject);
    procedure cdsModelAfterScroll(DataSet: TDataSet);
    procedure cdsGridDataAfterScroll(DataSet: TDataSet);
    procedure grdModelDblClick(Sender: TObject);
    procedure grdLinesGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure grdStagesGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnResizeWorkspaceMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure pcMainChanging(Sender: TObject; var AllowChange: Boolean);
    procedure actEditStageExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actInsertBeforeExecute(Sender: TObject);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure actLevelUpExecute(Sender: TObject);
    procedure actAddStageExecute(Sender: TObject);
    procedure actMoveUpLineExecute(Sender: TObject);
    procedure actMoveDownLineExecute(Sender: TObject);
    procedure actMoveUpLineUpdate(Sender: TObject);
    procedure actMoveDownLineUpdate(Sender: TObject);
    procedure actDelRecordExecute(Sender: TObject);
    procedure actCheckModelExecute(Sender: TObject);
    procedure actAddTaskUpdate(Sender: TObject);
    procedure actAddTaskExecute(Sender: TObject);
    procedure actDelTaskUpdate(Sender: TObject);
    procedure actDelTaskExecute(Sender: TObject);
    procedure actEditTaskUpdate(Sender: TObject);
    procedure actEditTaskExecute(Sender: TObject);
    procedure actAddTaskDeptUpdate(Sender: TObject);
    procedure actAddTaskDeptExecute(Sender: TObject);
    procedure actDelTaskDeptUpdate(Sender: TObject);
    procedure actDelTaskDeptExecute(Sender: TObject);
    procedure actEditTaskDeptUpdate(Sender: TObject);
    procedure actEditTaskDeptExecute(Sender: TObject);
    procedure grdTasksDblClick(Sender: TObject);
    procedure grdTaskDeptsDblClick(Sender: TObject);
    procedure actEditTaskInModelUpdate(Sender: TObject);
    procedure actEditTaskInModelExecute(Sender: TObject);
    procedure actPrintAllTasksUpdate(Sender: TObject);
    procedure actPrintAllTasksExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actEditTaskInModelOKExecute(Sender: TObject);
    procedure actEditTaskInModelCancelExecute(Sender: TObject);
    procedure actAddBrotherSpecificationUpdate(Sender: TObject);
    procedure actAddBrotherSpecificationExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actResizeFormHeightExecute(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure cdsFilteredGridDataAfterScroll(DataSet: TDataSet);
    procedure cdsFilteredGridDataFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure udShowLevelChangingEx(Sender: TObject;
      var AllowChange: Boolean; NewValue: Integer; 
      Direction: TUpDownDirection);
    procedure FormDestroy(Sender: TObject);
    procedure cdsGridDataAfterClose(DataSet: TDataSet);
    procedure actFocusShowLevelEditExecute(Sender: TObject);
    procedure grdLines1CellClick(Column: TColumnEh);
    procedure cdsOperationsNewRecord(DataSet: TDataSet);
    procedure cdsOperationsBeforePost(DataSet: TDataSet);
    procedure btnDetailDocumentationClick(Sender: TObject);
    procedure btnProductDocumentationClick(Sender: TObject);
    procedure grdLines1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdLines1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actRecursivePrintUpdate(Sender: TObject);
    procedure actRecursivePrintExecute(Sender: TObject);
    procedure cdsModelFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure actModelRecursivePrintUpdate(Sender: TObject);
    procedure actModelRecursivePrintExecute(Sender: TObject);
    procedure cdsModelNO_AS_FORMATED_TEXTGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsOperationsDEPT_CODEChange(Sender: TField);
    procedure cdsOperationsPROGRAM_TOOL_PRODUCT_CODEChange(Sender: TField);
    procedure cdsOperationsSPECIFIC_TOOL_PRODUCT_CODEChange(
      Sender: TField);
    procedure cdsOperationsTYPICAL_TOOL_PRODUCT_CODEChange(Sender: TField);
    procedure cdsOperationsCalcFields(DataSet: TDataSet);
    procedure cdsOperationsSETUP_PROFESSION_CODEChange(Sender: TField);
    procedure actExcelExportExecute(Sender: TObject);
    procedure cdsOperationsBeforeDelete(DataSet: TDataSet);
    procedure cdsOperationsSPECIFIC_TOOL_DETAIL_TECH_QTYGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure actPrintTaskUpdate(Sender: TObject);
    procedure actPrintTaskExecute(Sender: TObject);
    procedure actPrintOperationsUpdate(Sender: TObject);
    procedure actPrintOperationsExecute(Sender: TObject);
    procedure actTaskModelExecute(Sender: TObject);
    procedure actTaskModelCloseExecute(Sender: TObject);
    procedure actTaskModelUpdate(Sender: TObject);
    procedure cdsOperationsSETUP_HOUR_TECH_QUANTITYValidate(
      Sender: TField);
    procedure cdsOperationsBeforeInsert(DataSet: TDataSet);
    procedure actToggleInvestedValueExecute(Sender: TObject);
    procedure actInvestedValueFilterExecute(Sender: TObject);
    procedure cdsTodayCurrencyRatesBeforeOpen(DataSet: TDataSet);
    procedure cdsOperationsAfterPost(DataSet: TDataSet);
    procedure cdsInvestedValueFilterAfterOpen(DataSet: TDataSet);
    procedure cdsInvestedValueFilterAfterPost(DataSet: TDataSet);
    procedure cdsInvestedValueFilterBeforePost(DataSet: TDataSet);
    procedure actInvestedValueFilterUpdate(Sender: TObject);
    procedure actEditRecordExecute(Sender: TObject);
    procedure actDocStatusUpdate(Sender: TObject);
    procedure actExcelExportUpdate(Sender: TObject);
    procedure cdsOperationsNOTESGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsOperationsPROGRAM_TOOL_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsOperationsSPECIFIC_TOOL_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsOperationsTYPICAL_TOOL_REQUIREMENT_CODEGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnPrintModelClick(Sender: TObject);
    procedure btnRecursivePrintClick(Sender: TObject);
    procedure actStructurePrintExecute(Sender: TObject);
    procedure cdsOperationsPROGRAM_TOOL_IS_COMPLETEChange(Sender: TField);
    procedure cdsOperationsSPECIFIC_TOOL_IS_COMPLETEChange(Sender: TField);
    procedure cdsOperationsTYPICAL_TOOL_IS_COMPLETEChange(Sender: TField);
    procedure cdsOperationsPROGRAM_TOOL_REQUIREMENT_CODEValidate(
      Sender: TField);
    procedure cdsOperationsSPECIFIC_TOOL_REQUIREMENT_CODEValidate(
      Sender: TField);
    procedure cdsOperationsTYPICAL_TOOL_REQUIREMENT_CODEValidate(
      Sender: TField);
    procedure cdsOperationsPROGRAM_TOOL_IS_COMPLETEValidate(
      Sender: TField);
    procedure cdsOperationsSPECIFIC_TOOL_IS_COMPLETEValidate(
      Sender: TField);
    procedure cdsOperationsTYPICAL_TOOL_IS_COMPLETEValidate(
      Sender: TField);
    procedure cdsOperationsPROGRAM_TOOL_REQUIREMENT_CODEChange(
      Sender: TField);
    procedure cdsOperationsSPECIFIC_TOOL_REQUIREMENT_CODEChange(
      Sender: TField);
    procedure cdsOperationsTYPICAL_TOOL_REQUIREMENT_CODEChange(
      Sender: TField);
    procedure actToggleInvestedValuePartExecute(Sender: TObject);
    procedure actToggleInvestedValueUpdate(Sender: TObject);
    procedure cdsProfessionsBeforeOpen(DataSet: TDataSet);
    procedure actToggleFormHeightExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsOperationsIS_AUTO_MOVEMENTChange(Sender: TField);
  private
    FInsertBeforeNo: Integer;
    FInsertBeforeLastNoPos: Integer;
    FDeletedModelVariantStageNo: Integer;
    FTaskDeptIdentifiers: TStringList;
    FOtherTasksDeptIdentifiers: TStringList;
    FTasksReportClass: TrptTasksClass;
    FOriginalFormHeight: Integer;
    FSaveFormTop: Integer;
    FShowLevel: Integer;
    FFilteredGridDataSaveBookmark: TBookmark;
    FcdsGridDataNoFields: array[1..MaxNoPos] of TField;
    FcdsFilteredGridDataNoFields: array[1..MaxNoPos] of TField;
    FMaxNoFields: array[1..MaxNoPos] of TField;
    FPrintModelLines: TStringList;
    FTruncatedNosAsFormatedText: TStringList;
    FExcludeStageNo: Integer;
    FFilteredStages: TStringList;
    FViewingTaskModel: Boolean;
    FLastStageNo: Integer;
    FNewOperationData: TNewOperationData;
    FInvestedValueFilter: TInvestedValueFilter;
    FInvestedValueFilterEditPost: Boolean;
    FChangeAfterModelGeneration: Boolean;
    FUnapproveFormClass: TfmSpecAndXModelUnapproveAbstractClass;
    FInToolIntegritySync: Boolean;
    FTotalInvestedValue: TInvestedValue;
    FInvestedValuePartVisible: Boolean;
    FLastSetLineAndStageAndOperationDeptPriceFieldsDate: TDateTime;
    cdsFilteredGridData_PRODUCT_PRECISION_LEVEL_NO: TField;
    cdsFilteredGridData_PRODUCT_PRECISION_LEVEL_COLOR: TField;
    cdsFilteredGridData_PRODUCT_PRECISION_LEVEL_BACKGROUND_COLOR: TField;
    FUpdatingFilteredGridData: Boolean;
    FSettingLineAndStageAndOperationDeptPriceFields: Boolean;
    procedure CalcProductUseTypes;
    procedure FixDetailQuantity;
    procedure CalcTotalSecondaryPrice;
    function ShowTaskDeptEditForm(AEditMode: TEditMode): Boolean;
    function GetbtnMaximizeInModelDown: Boolean;
    procedure SetbtnMaximizeInModelDown(const Value: Boolean);
    procedure ActivateTasksGrid;
    procedure EndEdittingTaskInModel;
    procedure SetModelPrintColumns;
    procedure PrintTasks(CurrentTaskOnly: Boolean = False);
    procedure GenerateTaskModel;
    procedure CheckOperationWorkdays(AStageTreatmentWorkdays: Integer);
    procedure SetModelInvestedValueVisibleColumns;
    procedure ClearParentIsComplete;
    function CheckSelfAndChildrenFinalizedDocs: Boolean;
    procedure SetOperationDeptPriceFields;
    procedure SetLineProductPriceFields;
    function GetInvestedValueVisible: Boolean;
    procedure SetInvestedValueVisible(const Value: Boolean);
    function GetModelStageInvestedValueIsIncomplete: Boolean;
    procedure WMSysCommand(var AMessage: TWmSysCommand); message WM_SYSCOMMAND;
    procedure SetModelExcelExportColumnsVisible(const AVisible: Boolean);

    property btnMaximizeInModelDown: Boolean read GetbtnMaximizeInModelDown write SetbtnMaximizeInModelDown;
    function StagesRecordCount(cdsStages: TDataSet): Integer;
  protected
    FGeneratingModel: Boolean;
    FModelWidth: Integer;
    FRelocatingSpecification: Boolean;
    FOldNo: array[1..MaxNoPos+1] of Integer;     // +1 zaradi fork-a
    FCheckingModel: Boolean;
    FInsertingSpecification: Boolean;
    FAddingSpecification: Boolean;
    FPostAfterEdit: Boolean;
    FLocatingDataSets: TList<TDataSet>;
    FShrunkBookmarks: TList<TBookmark>;
    FHiddenBookmarks: TList<TBookmark>;
    cdsFilteredGridDataCHILD_COUNT: TField;
    cdsFilteredGridDataDETAIL_IS_INACTIVE: TField;
    cdsFilteredGridDataPRODUCT_IS_INACTIVE: TField;
    FMaxNos: Variant;
    FDeletingLine: Boolean;
    FApplyingUpdates: Boolean;
    FEdittingTaskInModel: Boolean;
    FStageDatesColumnWidth: Integer;
    FChildCount: TStringList;
    FForkCount: TStringList;
    FRecursiveReportClass: TrptSpecAndXModelRecursivePrintAbstractClass;
    cdsModelNO_AS_FORMATED_TEXT: TField;
    FDontShowInvestedValues: Boolean;
    StructureCoef: TStructureCoef;
    FLockIsComplete: Boolean;
    class function CanUseDocs: Boolean; override;
    procedure CalcTotalProductQuantities;
    function GetCaption: string; virtual; abstract;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetLevelUpEnabled: Boolean; virtual;
    function GetAddChildEnabled: Boolean; virtual;
    function SimpleLastNoPos(ADataSet: TDataSet = nil): Integer;
    function LastNoPos(ADataSet: TDataSet = nil): Integer; virtual;
    function GetNoField(ANo: Integer; ADataSet: TDataSet = nil): TField; virtual;
    function CanModifyData: Boolean; virtual;
    function CanModifyModel: Boolean; virtual; abstract;
    procedure PrepareNewLineData(AddLineMode: TAddLineMode); virtual; abstract;
    procedure UpdateParentAfterAdd;
    procedure LocateParent; virtual; abstract;
    function GetAddStageEnabled: Boolean; virtual;
    function GetEditStageEnabled: Boolean; virtual;
    function GetEditStageReadOnly: Boolean; virtual;
    function GetDelStageEnabled: Boolean; virtual;
    function GetMoveUpStageEnabled: Boolean; virtual;
    function GetMoveDownStageEnabled: Boolean; virtual;
    function GetInsertRecordEnabled: Boolean; override;
    function DoShowEditForm(AEditMode: TEditMode): Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    function InternalChildCount(OfTheParent: Boolean): Integer;
    function ChildCount: Integer;
    function ParentChildCount: Integer;
    procedure UnknownAddLineModeError;
    function LineDetailTechQuantity: Real; virtual; abstract;
    procedure CalcTotalDetailQuantity;
    function ReadOnlyLine: Boolean; virtual;
    function GetAddSpecificationEnabled: Boolean; virtual;
    procedure MoveStage(MoveUp: Boolean; UnapprovePrompt: Boolean = False); virtual; abstract;
    function GetParent: Variant; virtual; abstract;
    function SameParent(AParent: Variant): Boolean; virtual; abstract;
    procedure UpdateChildrenParentTotalQuantity;
    function GetParentLineDetailTechQuantity: Variant; virtual; abstract;
    procedure SetParentLineDetailTechQuantity(const Value: Variant); virtual; abstract;
    function UpdateCurrentParentDetailQuantity: Boolean; virtual;
    // MODEL stuff
    function GetStagesClientDataSet: TClientDataSet; virtual; abstract;
    procedure GenerateModel(AMinStageCount: Integer = 2);
    function GetStageNoField: TField; virtual; abstract;
    function GetOperationNoField: TField; virtual; abstract;
    function FirstModelDeptColumnIndex: Integer; virtual; abstract;
    procedure AddModelFieldDefs; virtual; abstract;
    procedure SetModelFields; virtual; abstract;
    function LocateDataSet(Source, Dest: TDataSet): Boolean;
    procedure UpdateLocateDataSetData(var FieldNames: string; var FieldValues: Variant; Source: TDataSet); virtual;
    function PrintStaticColumnsCount: Integer; virtual; abstract;
    procedure SetPrintModelParams(RecursivePrint: Boolean = False; TaskModelPrint: Boolean = False;
      ARealNoAsText: string = ''; ADetailName: string = ''; ADetailNo: string = ''); virtual;
    function AllowLocateModel: Boolean; virtual;
    function GetStageDeptColumnWidth: Integer; virtual; abstract;
    function GetPrintStageDeptColumnWidth: Integer; virtual; abstract;
    procedure SetModelGridColumns; virtual;
    function GetModelStage(InvestedValue, InvestedValuePart: Boolean): string; virtual;
    // end MODEL stuff
    procedure ActivateStagesGrid;
    procedure RestoreForm;
    function ShowStageEditForm(AEditMode: TEditMode): Boolean; virtual; abstract;
    function NewLineDataNo(idx: Integer): Integer; virtual; abstract;
    procedure MoveLine(MoveUp: Boolean);
    function SelectModelCell(SelectMovement: Boolean): Boolean;
    function GetMoveUpLineEnabled: Boolean; virtual;
    function GetMoveDownLineEnabled: Boolean; virtual;
    procedure StagesBeforeDelete(DataSet: TDataSet);
    procedure StagesAfterDelete(DataSet: TDataSet);
    procedure DeleteLine(Prompt: Boolean);
    procedure SaveOldNo(EndPos: Integer; ADataSet: TDataSet = nil);
    function SameAsOldNo(EndPos: Integer; ADataSet: TDataSet = nil): Boolean;
    procedure ChangeNo;
    function HasForkField: Boolean; virtual; abstract;
    function ForkCount: Integer; virtual;
    function ConfirmParentDeletionMsg: string; virtual; abstract;
    procedure CheckData(CheckOnlyLines, CheckDocs: Boolean);
    procedure CheckStageAdditional; virtual;
    procedure CheckOperationAdditional; virtual;
    procedure CheckCdsDataRequiredFields; virtual;
    function GetResultStoreCode: Integer; virtual; abstract;
    procedure SetResultStoreCode(Value: Integer); virtual; abstract;
    function GetAddBrotherEnabled: Boolean; virtual;
    function GetInsertBeforeEnabled: Boolean; virtual;
    function GetInsertSpecificationEnabled: Boolean; virtual;
    function GetModelIsCorrectMsg: string; virtual; abstract;
    function ModelColumnType(Index, FirstStageColumnIndex: Integer): TModelColumnType; virtual; abstract;
    function PrintModelColumnType(Index, FirstStageColumnIndex: Integer): TModelColumnType; virtual; abstract; 
    function GetArrowDeptColumn(ACol: Integer): Integer; virtual; abstract;
    procedure AddBeforeDirFieldDefs(Index: Integer); virtual;
    procedure AddBeforeDirPrintColumns(Idx: Integer); virtual;
    procedure SetModelBeforeDirFields(Index: Integer); virtual;
    function GetStageDaysFormat: string; virtual; abstract;
    procedure FillModelBeforeDirFields(StageNo: Integer); virtual;
    procedure BeforeGenerateModel; virtual;
    procedure AfterGenerateModel; virtual;
    procedure CheckDataBeforeCheckLines(CheckOnlyLines: Boolean); virtual;
    function GetTasksClientDataSet: TCustomClientDataSet; virtual; abstract;
    function GetTaskNoField: TField; virtual; abstract;
    function GetTaskDeptsClientDataSet: TCustomClientDataSet; virtual; abstract;
    function ShowTaskEditForm(AEditMode: TEditMode): Boolean; virtual; abstract;
    function GetAddTaskEnabled: Boolean; virtual;
    function GetEditTaskEnabled: Boolean; virtual;
    function GetDelTaskEnabled: Boolean; virtual;
    function GetAddTaskDeptEnabled: Boolean; virtual;
    function GetEditTaskDeptEnabled: Boolean; virtual;
    function GetDelTaskDeptEnabled: Boolean; virtual;
    procedure GenerateModelTasks;
    procedure GenerateModelTasksAddFields(FromDeptOutgoingWorkdays,
      ToDeptTotalTreatmentWorkdays: Integer;
      DeptBeginDate, ProductionEndDate: TDateTime); virtual;
    function GetProductionEndDate: TDateTime; virtual; abstract;
    procedure PrintModel; virtual;
    procedure CheckDataCheckLine(CheckDocs: Boolean); virtual;
    function GetAddBrotherSpecificationEnabled: Boolean;
    procedure UpdateFilteredGridData(ACalcNoAsText: Boolean = True);
    procedure ToggleIsShrunk;
    procedure AssignPersistentFilterGridDataFields; virtual;
    procedure NilPersistentFilterGridDataFields; virtual;
    function DataGridVisible: Boolean; virtual;
    procedure CalcChildAndForkCount;
    procedure CalcNoAsText;
    procedure FillMaxNos;
    procedure ClearMaxNos;
    procedure DeleteGridDataRecord; virtual;
    procedure IncChildCount(ALastNoPos: Integer);
    procedure IncForkCount;
    function CalcNoAsTextOnNewRecord: Boolean; virtual;
    function ModelTaskDeptBeginDate(AProductionEndDate: TDateTime;
      ATotalTreatmentWorkdays: Integer): TDateTime; virtual; abstract;
    procedure RecursivePrint(AMinLineLevel: Integer; AModelPrint, APrintOnA3, APrintProductNos, APrintNotes, APrintInvestedValues: Boolean); virtual;
    procedure AssignRecursivePrintFields; virtual;
    procedure PrintModelFromRecursivePrint;
    function GetModelColumnGroupWidth: Integer; virtual; abstract;
    procedure SetModelSubstitutes(ARealNoAsText: string = '';
      ADetailName: string = ''; ADetailNo: string = ''); virtual; abstract;
    procedure SetOperationCount; virtual; abstract;
    function OperationsModel: Boolean; virtual; abstract;
    procedure PrintOperations; virtual; abstract;
    function MaxStageNo: Integer; virtual; abstract;
    function GetMinStageNoField: TField; virtual; abstract;
    function GetMaxStageNoField: TField; virtual; abstract;
    procedure RebuildAdditionalDataSets; virtual;
    procedure RebuildGridDataLDTQ; virtual;
    function GetLineNo: string; virtual;
    function DeleteMoves(AEndPos: Integer): Integer; virtual;
    procedure AddFilteredStage; virtual; abstract;
    function OperationVariantNoField: TField; virtual; abstract;
    function GetLineLevel: Integer;
    procedure AddStageInvestedValues(AInvestedValue, AAggregatedInvestedValue,
      AProductInvestedValue: TInvestedValue); virtual; abstract;
    procedure LocateStageInvestedValue; virtual; abstract;
    procedure ShowTotalInvestedValue(AInvestedValue: TInvestedValue; ACurrencyAbbrev: string); virtual; abstract;
    function TodayCurrencyRate(ACurrencyCode: Integer): Real;
    function ShowInvestedValueFilter: Boolean; virtual; abstract;
    function GetResultProductTechMeasureAbbrev: string; virtual; abstract;
    function GetProductInvestedValue(AInvestedValueFilter: TInvestedValueFilter): TInvestedValue; virtual;
    function GetOperationInvestedValue(AInvestedValueFilter: TInvestedValueFilter): TOperationInvestedValue; virtual;
    function GetStageOperationInvestedValue: TOperationInvestedValue;
    function GetStageInvestedValue(AInvestedValueFilter: TInvestedValueFilter): TInvestedValue; virtual;
    function InvestedValueFilterQuantityMultiplier(AInvestedValueFilter: TInvestedValueFilter): Real; virtual; abstract;
    function GetOperationDetailTechQuantity: Real; virtual; abstract;
    procedure SetChangeAfterModelGeneration(const Value: Boolean); virtual;
    function HasShowInvestedValueActivity: Boolean; virtual;
    function IsInvestedValueVisibleAndShowInvestedValues: Boolean;
    function IsLevelOneInvestedValueVisibleAndShowInvestedValues: Boolean;
    procedure UnapproveSpecLineStagesAndOperationsDocs(AUnapproveMethod: TUnapproveMethod); virtual; abstract;
    procedure UnapproveLineStagesAndOperationsDocs;
    function UnapproveStage(LineUnapproveMethodDone: TUnapproveMethod = umNone;
      FromUnapproveMethod: TUnapproveMethod = umStageAndOperationsDocs; ShowStage: Boolean = True): TUnapproveMethod;
    function LineHasApprovedDocItem: Boolean; virtual; abstract;
    function LineStageAndOperationDocsFinalized: Boolean;
    function CountApproveCycles: Boolean; virtual; abstract;
    procedure IncApproveCycleNo; virtual; abstract;
    procedure ShowStructureDataCoef; virtual; abstract;
    function ApproveCycleNoField: TField; virtual; abstract;
    function GetModelIdentifier: string; virtual; abstract;
    function CheckSpecOrModelDocs: Boolean; virtual; abstract;
    procedure SetEnterResultStoreWorkdays(AWorkdays: Integer); virtual;
    procedure CachedSetDeptPriceFields(
      DeptCodeField: TField;
      PricesDate: TDateTime;
      HourPriceField: TField = nil;
      MaintainanceHourPriceField: TField = nil;
      ParallelProcessCountField: TField = nil;
      ParallelOperatorCountField: TField = nil);
    procedure CachedSetProductPriceFields(
      ProductCodeField: TField;
      PricesDate: TDateTime;
      EstimatedSecondaryPriceField: TField = nil;
      MarketSecondaryPriceField: TField = nil;
      InvestementValue2Field: TField = nil;
      InvestementValue3Field: TField = nil;
      InvestementValue4Field: TField = nil;
      InvestementValue5Field: TField = nil;
      PrecisionLevelCodeField: TField = nil);
    procedure LoadLabourAndOrganizationCostCoef(AInvestedValueFilter: TInvestedValueFilter);
    procedure SetStageAndOperationDeptPriceFields(cdsStages: TClientDataSet); virtual;
    procedure SetLineAndStageAndOperationDeptPriceFields; virtual;
    procedure StructurePrint(PrintNotes: Boolean); virtual;
    procedure ToolRequirementValidate(AToolRequirementField, AToolIsCompleteField, AToolProductField: TField);
    procedure ToolRequirementChange(AToolRequirementField, AToolIsCompleteField, AToolProductField: TField);
    procedure ToolIsCompleteValidate(AToolIsCompleteField, AToolRequirementField, AToolProductField: TField);
    procedure ToolIsCompleteChange(AToolIsCompleteField, AToolRequirementField, AToolProductField: TField);
    procedure ToolProductChange(AToolProductField, AToolRequirementField, AToolIsCompleteField: TField);
    function OperationRealHourPriceField: TField; virtual;
    function OperationRealSetupHourPriceField: TField; virtual;
    procedure PrintRecursiveReport(APrintOnA3, APrintNotes, APrintProductNos, APrintInvestedValues: Boolean); virtual;
    function ReadOnlyModeDataSetReadOnly: Boolean; override;

    property ParentLineDetailTechQuantity: Variant read GetParentLineDetailTechQuantity write SetParentLineDetailTechQuantity;
    property ResultStoreCode: Integer read GetResultStoreCode write SetResultStoreCode;
    property EdittingTaskInModel: Boolean read FEdittingTaskInModel;
    property TasksReportClass: TrptTasksClass read FTasksReportClass write FTasksReportClass;
    property RecursiveReportClass: TrptSpecAndXModelRecursivePrintAbstractClass read FRecursiveReportClass write FRecursiveReportClass;
    property ExcludeStageNo: Integer read FExcludeStageNo;
    property FilteredStages: TStringList read FFilteredStages;
    property NewOperationData: TNewOperationData read FNewOperationData;
    property InvestedValueFilter: TInvestedValueFilter read FInvestedValueFilter write FInvestedValueFilter;
    property InvestedValuePartVisible: Boolean read FInvestedValuePartVisible write FInvestedValuePartVisible;
    property ChangeAfterModelGeneration: Boolean read FChangeAfterModelGeneration write SetChangeAfterModelGeneration;
    property UnapproveFormClass: TfmSpecAndXModelUnapproveAbstractClass read FUnapproveFormClass write FUnapproveFormClass;
    property InvestedValueVisible: Boolean read GetInvestedValueVisible write SetInvestedValueVisible;
    property LastSetLineAndStageAndOperationDeptPriceFieldsDate: TDateTime read FLastSetLineAndStageAndOperationDeptPriceFieldsDate;
    property UpdatingFilteredGridData: Boolean read FUpdatingFilteredGridData;
    property SettingLineAndStageAndOperationDeptPriceFields: Boolean read FSettingLineAndStageAndOperationDeptPriceFields;
  public
    class function CanEditOuterDataSet: Boolean; override;
    procedure Initialize; override;
    procedure Finalize; override;
  end;

resourcestring
  SConfirmMaterialDeletion = 'Данните за Началната Структурна Част ще бъдат изтрити. Желаете ли да продължите?';
  SWrongWorkdays = 'Работните дни за изход не трябва да надвишават дните за обработка';
  SPositiveValueRequired = 'Стойността на полето ''%s'' трябва да е по-голяма от нула.';
  SOperationInactiveDept = 'Не можете да задавате неактивно ТП на операция!';
  SStageInactiveDept = 'Не можете да задавате неактивно ТП на етап!';
  // invested value
  SNoCurrencyRate = 'Не е въведен курс за зададените валута и дата';

const
  GridSpecialColor = $00E1E1E1;
  IsShrunkFieldName = 'IS_SHRUNK';

implementation

uses
  Variants, uClientUtils, uUtils, fTreeSelectForm, DBConsts, Math,
  fSpecAndXModelTaskDeptEdit, fDeptsTreeEditor, dMain, AbmesDialogs, Printers,
  fSpecAndXModelRecursivePrintOptions, PrViewEh, uTreeClientUtils,
  fSpecAndXModelModelRecursivePrintOptions, uOperationTypes, uExcelExport,
  uUserActivityConsts, fSpecModelVariantStageEdit, uColorConsts,
  uProductionLevels, fBaseInvestedValueFilter, fXModelInvestedValueFilter,
  uDocClientUtils, uDocUtils, uModelUtils, uToolRequirements, uClientDateTime,
  StrUtils, uToolbarUtils, PrvFrmEh, uComCtrlsHelpers;

{$R *.DFM}

resourcestring
  SIncorrectIsComplete = 'Зададената Структурна Съгласуваност е некоректна, поради некоректна Самосъгласуваност на ред %s!';
  SIncorrectIsCompleteNoChildren = 'Зададената Структурна Съгласуваност е некоректна, поради липсата на структура';
  SNoAutoMovementFromStore = 'Не може да се прави автоматично предаване (теглене) от ТП Задържащо';
  SIncorrectHasSpecialControl = 'Несъответствие по специализиран контрол' + SLineBreak + 'на ред %s, етап %d, операция %s';
  SNoOperationsRequired = 'В крайните етапи не трябва да има операции!';
  SNoTasksToPrint = 'Няма нормативни задания';
  SOneToolForAll = '1 / вс.';
  SForTreatmentUseAbbrev = 'О';
  SForDirectUseAbbrev = 'В';
  SDetailIsComposite = 'С   Структурно създавана КСЧ';
  SDetailIsTreated = 'П    Преобразувана КСЧ';
  SDetailIsDirectUsed = 'Ф    Фиксирана КСЧ';
  SLineTypeCaption = 'В';
  SOperationSetupAbbrev = 'Н';
  SOperationAbbrev = 'И';

  // MODEL stuff
  SNoCaption = '№%d';
  SDetailCaption = 'Крайна Структурна Част';
  SProductCaption = 'Начална Структурна Част';
  SDetailNoCaption = 'КСЧ - id цифров';
  SProductNoCaption = 'НСЧ - id цифров';
  SInvestedValueFormat = ' [%n]';
  SInvestedValuePartFormat = ' [%.1n%%]';
//  CheckData error messages
  SNoProduct = 'Не сте въвели Начална Структурна Част!';
  SStageNoIsNotX = 'Номерът на този етап трябва да е %d!';
  SStageIsNotAStore = 'ТП в този етап трябва да е ТП Задържащо!';
  SNotEnoughStages = 'Не сте въвели достатъчно етапи за тази Структурна Част!' + SLineBreak +
                     'Трябва да са поне два.';
  SIncorrectStages = 'Некоректен етапен ред';
  SNotSameAsParentDept = 'ТП на последния етап не е същото като ТП на първия етап на родителя!';
  SLastStageOutgoingWorkdaysNotZero = 'Работните дни за изход на последния етап трябва да са 0';
  SLevelLastStageWorkdaysNotZero = 'Работните дни за обработка и изход на краен етап трябва да са 0';
  SZeroStageWorkdays = 'Работните дни за обработка и изход трябва да са повече от 0';
  SExternalWorkPriceNotAllowed = 'Не можете да задавате ВС4 за началните и крайните етапи';
  SWrongStoreOperations = 'В етапите за ТП Задържащо трябва да има само Крайна организационна операция';
  SWrongEndStoreOperations = 'В етапа за Крайно ТП Задържащо трябва да има само Начална организационна операция';
  SOperationsNeeded = 'Не сте въвели операции';
  SStageDocNotFinalized = 'МИИО-то на етапа не е утвърдено и крайно определено!';
  SOperationDocNotFinalized = 'МИИО-то на операция %d не е утвърдено и крайно определено!';
//  SBeginOperationAfterStoreRequired = 'В етапите след ТП Задържащо трябва да има Начална организационна операция';
  SBeginOperationRequired = 'В събирателните етапи трябва да има Начална организационна операция';
  SIncorrectOutgoingWorkdays = 'Работните дни за изход не трябва да превишават работните дни (%d) за обработка на следващия етап';
  SIncorrectOperationNo = 'Некоректен номер на операция (%d)!';
  SIncorrectOperationBegin = 'Операцията започва по-рано от началото на предходната!';
  SIncorrectOperationEnd = 'Операцията приключва по-рано от края на предходната!';
  SIncorrectResultStoreEnterWorkdays = 'Дните за преминаване в ТП Приемник трябва да съвпадат с дните за изпълнение на етапа за ТП Приемник!';
  SDetailDocsNotFinalized = 'МИИО-тата на КСЧ на следните редове не са утвърдени и крайно определени!' + SLineBreak +
                            '%s' + SLineBreak +
                            'Желаете ли да продължите?';
//  end of CheckData error messages
  SPrintNotes = 'Печат на бележките?';

  SCircularReference = 'Не може КСЧ да е част от себе си';
  SNotPositiveHourTechQty = '''%s'' трябва да е по-голяма от 0!';
  SShowDetailTechQuantityFormat = '%s %s/ч';
  SIncorrectUnknownOrEmptyToolRequirement = 'Неопределен Комплектоващ Ресурс или определен като ненужен, не може да има зададен УОб!';
  SIncorrectToolIsComplete = 'Комплектоващ Ресурс, определен като нужен и крайно определен, трябва да има зададен УОб';
  SInvalidAutoSetupCount = 'При автоматично отчитане на настройка броят настройки трябва да е 1';
  SInvalidAutoMovementDept = 'Автоматични движения между етапи са възможни само в рамките на едно ЕтТП';
  SLastOperationAutoMovementsNotAllowed = 'Автоматични настройка и движения в последната операция не са възможни!';
  SIncorrectLineProduct = 'Некоректна НСЧ';

const
  StageDatesColumnWidth = 45;
  InvestedValueColumnWidth = 85;
  PrintIvestedValueStageWidth = 100;

  DirStageDisplayLabel = '«';
  StageDisplayLabel = 'Етап';
  UpArrow = '­';
  RightArrow = '®';
  RightTransitArrow = 'Ю';
  StageDeptFormat = '%d:%s';
  DirStageFieldName = 'DIR_STAGE_NO_%d';
  StageFieldName = 'DEPT_STAGE_NO_%d';
  InvestedValueFieldName = 'INVESTED_VALUE_NO_%d';
  InvestedValuePartFieldName = 'INVESTED_VALUE_PART_NO_%d';
  InvestedValueIsIncompleteFieldName = 'INVESTED_VALUE_IS_INCOMPLETE_NO_%d';
  SymbolFontName = 'Symbol';

  ChildCountFieldName = 'CHILD_COUNT';
  IsHiddenFieldName = 'IS_HIDDEN';
  ShrunkDisplayValues = '+;—';

{ TNewOperationData }

procedure TNewOperationData.SetData(AOperationNo, AOperationVariantNo,
  ADocBranchCode: Integer; ADocCode: Integer;
  AOperationShowNo, AOperationVariantShowNo: Integer;
  AHasDocumentation: Boolean; ADocEmtpinessRequirementCode: Integer;
  ADocIsComplete: Boolean; AUnapprovedActiveDICount: Integer);
begin
  OperationNo:= AOperationNo;
  OperationVariantNo:= AOperationVariantNo;

  DocBranchCode:= ADocBranchCode;
  DocCode:= ADocCode;

  if (AOperationShowNo = -1) then
    OperationShowNo:= AOperationNo
  else
    OperationShowNo:= AOperationShowNo;

  if (AOperationVariantShowNo = -1) then
    OperationVariantShowNo:= AOperationVariantNo
  else
    OperationVariantShowNo:= AOperationVariantShowNo;

  FHasDocumentation:= AHasDocumentation;
  FDocEmtpinessRequirementCode:= ADocEmtpinessRequirementCode;
  FDocIsComplete:= ADocIsComplete;
  FUnapprovedActiveDICount:= AUnapprovedActiveDICount;
end;

{ TInvestedValueFilter }

procedure TInvestedValueFilter.AssignTo(Dest: TPersistent);
var
  d: TInvestedValueFilter;
begin
  if Dest is TInvestedValueFilter then
    begin
      d:= Dest as TInvestedValueFilter;

      d.ResultProductTechQuantity:= ResultProductTechQuantity;
      d.InvestedValueSingle:= InvestedValueSingle;
      d.Aggregated:= Aggregated;
      d.InvestedValueType:= InvestedValueType;
      d.InvestedValueLevel:= InvestedValueLevel;
      d.InvestedValueSum:= InvestedValueSum;
      d.CurrencyCode:= CurrencyCode;
      d.CurrencyAbbrev:= CurrencyAbbrev;
      d.CurrencyRate:= CurrencyRate;
      d.InvestedValueAbbrev:= InvestedValueAbbrev;
      d.InvestedValueDate:= InvestedValueDate;
      d.LabourCostCoef:= LabourCostCoef;
      d.OrganizationCostCoef:= OrganizationCostCoef;
      d.HasLabourAndOrganizationCostCoef:= HasLabourAndOrganizationCostCoef;
      d.RootLineStageIncludeLevel:= RootLineStageIncludeLevel;
      d.NonRootLineStageIncludeLevel:= NonRootLineStageIncludeLevel;
    end;
end;

constructor TInvestedValueFilter.Create;
begin
  FResultProductTechQuantity:= 1;
  FInvestedValueLevel:= 1;
  FCurrencyCode:= dmMain.LoginContext.BaseCurrencyCode;
  FCurrencyAbbrev:= dmMain.LoginContext.BaseCurrencyAbbrev;
  FCurrencyRate:= 1;
  FInvestedValueAbbrev:= SInvestedValueLevel1Abbrev;
  FInvestedValueDate:= ContextDate;
  FLabourCostCoef:= 1;
  FRootLineStageIncludeLevel:= 2;
  FNonRootLineStageIncludeLevel:= 1;
end;

function TInvestedValueFilter.AggregatedAbbrev: string;
const
  InvestedValueAggregatedAbbrevs: array[Boolean] of string =
    (SInvestedValueLocalAbbrev, SInvestedValueAggregatedAbbrev);
begin
  Result:= InvestedValueAggregatedAbbrevs[Aggregated];
end;

function TInvestedValueFilter.InvestedValueSingleAbbrev: string;
const
  InvestedValueSingleAbbrevs: array[Boolean] of string =
    (SInvestedValueSingleAbbrevQuantity, SInvestedValueSingleAbbrevSingle);
begin
  Result:= InvestedValueSingleAbbrevs[InvestedValueSingle];
end;

function TInvestedValueFilter.InvestedValueTypeAbbrev: string;
const
  InvestedValueTypeAbbrevs: array[TInvestedValueType] of string =
    (SInvestedValueTypeAbbrevPlan, SInvestedValueTypeAbbrevReal,
     SInvestedValueTypeAbbrevDiversion, SInvestedValueTypeAbbrevWaste);
begin
  Result:= InvestedValueTypeAbbrevs[InvestedValueType];
end;

{ TInvestedValue }

class operator TInvestedValue.Add(a, b: TInvestedValue): TInvestedValue;
begin
  Result.Value:= a.Value + b.Value;
  Result.IsIncomplete:= a.IsIncomplete or b.IsIncomplete;
end;

procedure TInvestedValue.Clear;
begin
  Value:= 0;
  IsIncomplete:= False;
end;

class operator TInvestedValue.Divide(a: TInvestedValue;
  b: Real): TInvestedValue;
begin
  Result.Value:= a.Value / b;
  Result.IsIncomplete:= a.IsIncomplete;
end;

class operator TInvestedValue.Multiply(a: TInvestedValue;
  b: Real): TInvestedValue;
begin
  Result.Value:= a.Value * b;
  Result.IsIncomplete:= a.IsIncomplete;
end;

{ TOperationInvestedValue }

class operator TOperationInvestedValue.Add(a,
  b: TOperationInvestedValue): TOperationInvestedValue;
begin
  Result.HasSetup:= a.HasSetup or b.HasSetup;

  Result.SetupInvestedValue.Clear;
  if a.HasSetup then
    Result.SetupInvestedValue:= Result.SetupInvestedValue + a.SetupInvestedValue;
  if b.HasSetup then
    Result.SetupInvestedValue:= Result.SetupInvestedValue + b.SetupInvestedValue;

  Result.DetailInvestedValue:= a.DetailInvestedValue + b.DetailInvestedValue;
end;

procedure TOperationInvestedValue.Clear;
begin
  HasSetup:= False;
  SetupInvestedValue.Clear;
  DetailInvestedValue.Clear;
end;

class operator TOperationInvestedValue.Divide(a: TOperationInvestedValue;
  b: Real): TOperationInvestedValue;
begin
  Result.HasSetup:= a.HasSetup;
  Result.SetupInvestedValue:= a.SetupInvestedValue / b;
  Result.DetailInvestedValue:= a.DetailInvestedValue / b;
end;

class operator TOperationInvestedValue.Multiply(a: TOperationInvestedValue;
  b: Real): TOperationInvestedValue;
begin
  Result.HasSetup:= a.HasSetup;
  Result.SetupInvestedValue:= a.SetupInvestedValue * b;
  Result.DetailInvestedValue:= a.DetailInvestedValue * b;
end;

function TOperationInvestedValue.TotalInvestedValue: TInvestedValue;
begin
  Result:= DetailInvestedValue;
  if HasSetup then
    Result:= Result + SetupInvestedValue;
end;

{ TStructureCoef }

function TStructureCoef.DisplayText: string;
begin
  Result:= DocStatusToStr(LevelNo, LevelIsComplete, MaxLevelNo, HasMissingChildren);
end;

function TStructureCoef.IsComplete: Boolean;
begin
  Result:= (LevelNo = MaxLevelNo);
end;

{ TfmSpecificationAndXModelAbstract }

procedure TfmSpecificationAndXModelAbstract.actResizeWorkspaceExecute(
  Sender: TObject);
begin
  inherited;

  if actMaximizeInModel.Checked then
    begin
      btnResizeWorkspace.Down:= actResizeWorkspace.Checked;
      Abort;
    end;

  with Sender as TAction do
    begin
      Checked:= not Checked;
      btnResizeWorkspace.Down:= Checked;  // neshto se bugva, kogato se upotrebiava Hotkey-a

      pnlMainData.Visible:= not Checked;
    end;   { with }
end;

procedure TfmSpecificationAndXModelAbstract.actStructurePrintExecute(
  Sender: TObject);
var
  PrintNotes: Boolean;
begin
  inherited;

  PrintNotes:= False;
  case MessageDlgEx(SPrintNotes, mtConfirmation, mbYesNoCancel, 0) of
    mrYes: PrintNotes:= True;
    mrNo: PrintNotes:= False;
  else
    Abort;
  end;

  StructurePrint(PrintNotes);
end;

procedure TfmSpecificationAndXModelAbstract.actLevelUpUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:= GetLevelUpEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.OpenDataSets;
begin
  cdsCurrencies.Open;
  cdsTodayCurrencyRates.Open;
  cdsMeasures.Open;
  cdsProfessions.Open;
  cdsPrecisionLevels.Open;

  inherited;
end;

function TfmSpecificationAndXModelAbstract.OperationRealHourPriceField: TField;
begin
  Result:= cdsOperationsHOUR_PRICE;
end;

function TfmSpecificationAndXModelAbstract.OperationRealSetupHourPriceField: TField;
begin
  Result:= cdsOperationsSETUP_HOUR_PRICE;
end;

procedure TfmSpecificationAndXModelAbstract.CloseDataSets;
begin
  inherited;

  cdsPrecisionLevels.Close;
  cdsProfessions.Close;
  cdsMeasures.Close;
  cdsTodayCurrencyRates.Close;
  cdsCurrencies.Close;
end;

procedure TfmSpecificationAndXModelAbstract.grdLinesDblClick(
  Sender: TObject);
begin
  inherited;

  with Sender as TAbmesDBGrid do
    if (Columns[Col-1].FieldName <> IsShrunkFieldName) then
      actEditRecord.Execute;
end;

function TfmSpecificationAndXModelAbstract.GetLevelUpEnabled: Boolean;
begin
  Result:=
    cdsGridData.Active and
    (cdsGridData.RecNo > 1) and
    DataGridVisible;
end;

procedure TfmSpecificationAndXModelAbstract.FormClose(
  Sender: TObject; var Action: TCloseAction);
begin
  actMaximizeInModel.Checked:= False;

  inherited;
end;

procedure TfmSpecificationAndXModelAbstract.actAddChildUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetAddChildEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actAddChildExecute(
  Sender: TObject);
begin
  inherited;

  if not cdsGridDataPRODUCT_CODE.IsNull and
     (MessageDlgEx(SConfirmMaterialDeletion, mtWarning, mbOkCancel, 0) <> mrOK) then
    Abort;

  PrepareNewLineData(almAddChild);
  if ShowEditForm(emInsert) then
    begin
      UpdateParentAfterAdd;
      UpdateFilteredGridData;
    end;
end;

procedure TfmSpecificationAndXModelAbstract.actAddBrotherUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetAddBrotherEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actAddBrotherExecute(
  Sender: TObject);
begin
  inherited;

  PrepareNewLineData(almAddBrother);
  if ShowEditForm(emInsert) then
    begin
      UpdateParentAfterAdd;
      UpdateFilteredGridData;
    end;
end;

procedure TfmSpecificationAndXModelAbstract.actInsertBeforeUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetInsertBeforeEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actAddSpecificationUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    GetAddSpecificationEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actInsertSpecificationUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetInsertSpecificationEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actInsertRecordExecute(
  Sender: TObject);
begin
//  inherited;     new behaviour
  PopupMenuFromButton(ActiveControl, pmAdd);
end;

function TfmSpecificationAndXModelAbstract.GetAddChildEnabled: Boolean;
begin
  with cdsGridData do
    Result:=
      Active and
      (RecordCount > 0) and
      (GetNoField(MaxNoPos).AsInteger = 0) and
      CanModifyData and
      (EditMode <> emReadOnly);
end;

function TfmSpecificationAndXModelAbstract.GetNoField(
  ANo: Integer; ADataSet: TDataSet): TField;
begin
  if not Assigned(ADataSet) then
    ADataSet:= cdsGridData;

  if (ADataSet = cdsGridData) then
    Result:= FcdsGridDataNoFields[ANo]
  else
    begin
      if (ADataSet = cdsFilteredGridData) then
        Result:= FcdsFilteredGridDataNoFields[ANo]
      else
        Result:= ADataSet.FieldByName(Format('NO_%d', [ANo]));
    end;
end;

procedure TfmSpecificationAndXModelAbstract.UpdateParentAfterAdd;
var
  b: TBookmark;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          LocateParent;

          if (not cdsGridDataPRODUCT_CODE.IsNull) or cdsGridDataIS_COMPLETE.AsBoolean then
            begin
              Edit;
              try
                cdsGridDataPRODUCT_CODE.Clear;
                cdsGridDataPRODUCT_TECH_QUANTITY.Clear;

                if not FLockIsComplete then
                  cdsGridDataIS_COMPLETE.AsBoolean:= False;

                Post;
              except
                Cancel;
                raise;
              end;   { try }
            end;   { if }
        finally
          Bookmark:= b;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

procedure TfmSpecificationAndXModelAbstract.WMSysCommand(
  var AMessage: TWmSysCommand);
begin
  if (((AMessage.CmdType and $FFF0) = SC_RESTORE) and actMaximizeInModel.Checked) then
    actMaximizeInModel.Execute
  else
    inherited;
end;

procedure TfmSpecificationAndXModelAbstract.CalcProductUseTypes;
begin
  cdsGridDataPRODUCT_IS_FOR_TREATMENT_USE.AsBoolean:=
    (not cdsGridDataPRODUCT_CODE.IsNull) and
    (cdsGridDataPRODUCT_CODE.AsInteger <> cdsGridDataDETAIL_CODE.AsInteger);

  cdsGridDataPRODUCT_IS_FOR_DIRECT_USE.AsBoolean:=
    (not cdsGridDataPRODUCT_CODE.IsNull) and
    (cdsGridDataPRODUCT_CODE.AsInteger = cdsGridDataDETAIL_CODE.AsInteger);
end;

procedure TfmSpecificationAndXModelAbstract.FixDetailQuantity;
begin
  Assert(cdsGridData.State in dsEditModes);

  if cdsGridDataPRODUCT_CODE.IsNull then
    cdsGridDataPRODUCT_TECH_QUANTITY.Clear
  else   { if }
    begin
      if (cdsGridDataDETAIL_CODE.AsInteger =
          cdsGridDataPRODUCT_CODE.AsInteger) then
        cdsGridDataPRODUCT_TECH_QUANTITY.AsFloat:= 1;
    end;   { if }
end;

procedure TfmSpecificationAndXModelAbstract.cdsGridDataDETAIL_CODEChange(
  Sender: TField);
begin
  inherited;

  DoProductFieldChanged(cdsGridDataDETAIL_CODE,
    cdsGridDataDETAIL_NAME, cdsGridDataDETAIL_NO, nil, nil, nil,
    cdsGridDataDETAIL_TECH_MEASURE_CODE,
    nil, nil, nil, nil,
    cdsGridDataDETAIL_HAS_DOCUMENTATION,
    nil, nil, nil, nil, nil, nil,
    cdsGridDataDETAIL_PARENT_CODE,
    cdsGridDataDETAIL_IS_INACTIVE,
    cdsGridDataDETAIL_IS_SELF_APPROVED,
    nil, nil, nil, nil, nil,
    cdsGridData.FindField('DETAIL_HAS_SPEC')
  );

  CalcProductUseTypes;
  FixDetailQuantity;
end;

procedure TfmSpecificationAndXModelAbstract.cdsGridDataPRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;

  DoProductFieldChanged(cdsGridDataPRODUCT_CODE,
    cdsGridDataPRODUCT_NAME, cdsGridDataPRODUCT_NO, nil,
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_CODE,
    cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF,
    cdsGridDataPRODUCT_TECH_MEASURE_CODE,
    cdsGridDataPRODUCT_TECH_MEASURE_COEF,
    nil,
    nil, nil,
    cdsGridDataPRODUCT_HAS_DOCUMENTATION,
    nil, nil, nil, nil, nil, nil, nil,
    cdsGridDataPRODUCT_IS_INACTIVE);

  if cdsGridDataPRODUCT_CODE.IsNull then
    cdsGridDataPRODUCT_HAS_DOCUMENTATION.AsBoolean:= False;

  SetLineProductPriceFields;

  cdsGridDataIS_COMPLETE.AsBoolean:= not cdsGridDataPRODUCT_CODE.IsNull;

  CalcProductUseTypes;
  FixDetailQuantity;
  CalcTotalProductQuantities;
end;

procedure TfmSpecificationAndXModelAbstract.cdsGridDataDETAIL_TECH_QUANTITYChange(
  Sender: TField);
begin
  inherited;
  CalcTotalDetailQuantity;
end;

procedure TfmSpecificationAndXModelAbstract.CalcTotalDetailQuantity;
var
  pldtq: Variant;
begin
  pldtq:= ParentLineDetailTechQuantity;

  if cdsGridDataDETAIL_TECH_QUANTITY.IsNull or VarIsNull(pldtq) then
    cdsGridDataTOTAL_DETAIL_TECH_QUANTITY.Clear
  else
    cdsGridDataTOTAL_DETAIL_TECH_QUANTITY.AsFloat:=
      cdsGridDataDETAIL_TECH_QUANTITY.AsFloat *
      pldtq;

  if not cdsGridDataPRODUCT_CODE.IsNull then
    CalcTotalProductQuantities;
end;

procedure TfmSpecificationAndXModelAbstract.cdsGridDataPRODUCT_TECH_QUANTITYChange(
  Sender: TField);
begin
  inherited;
  CalcTotalProductQuantities;
end;

procedure TfmSpecificationAndXModelAbstract.CalcTotalProductQuantities;
begin
  if cdsGridDataPRODUCT_TECH_QUANTITY.IsNull then
    cdsGridDataTOTAL_PRODUCT_TECH_QUANTITY.Clear
  else   { if }
    cdsGridDataTOTAL_PRODUCT_TECH_QUANTITY.AsFloat:=
      cdsGridDataPRODUCT_TECH_QUANTITY.AsFloat *
      LineDetailTechQuantity;

  if cdsGridDataPRODUCT_TECH_QUANTITY.IsNull or
     cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF.IsNull or
     cdsGridDataPRODUCT_TECH_MEASURE_COEF.IsNull then
    cdsGridDataTOTAL_PRODUCT_ACCOUNT_QUANTITY.Clear
  else   { if }
    cdsGridDataTOTAL_PRODUCT_ACCOUNT_QUANTITY.AsFloat:=
      cdsGridDataTOTAL_PRODUCT_TECH_QUANTITY.AsFloat /
      cdsGridDataPRODUCT_TECH_MEASURE_COEF.AsFloat *
      cdsGridDataPRODUCT_ACCOUNT_MEASURE_COEF.AsFloat;

  CalcTotalSecondaryPrice;
end;

function TfmSpecificationAndXModelAbstract.GetAddStageEnabled: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    CanModifyModel;
end;

procedure TfmSpecificationAndXModelAbstract.actAddStageUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetAddStageEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actDelStageUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetDelStageEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actDelStageExecute(
  Sender: TObject);
begin
  inherited;

  if ConfirmRecordDelete then
    begin
      grdStages.DataSource.DataSet.Delete;
      UnapproveStage(umNone, umLineStagesAndOperationsDocs, False);
    end;
end;

procedure TfmSpecificationAndXModelAbstract.actEditStageUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetEditStageEnabled;

  if GetEditStageReadOnly then
    (Sender as TAction).Caption:= SReadOnlyCaption + cDialogSuffix
  else
    (Sender as TAction).Caption:= SEditCaption + cDialogSuffix;
end;

procedure TfmSpecificationAndXModelAbstract.actMoveUpStageUpdate(
  Sender: TObject);
begin
  inherited;

 (Sender as TAction).Enabled:= GetMoveUpStageEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actMoveDownStageUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:= GetMoveDownStageEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.grdStagesDblClick(
  Sender: TObject);
begin
  inherited;

  if not actEditStage.Execute then
    actAddStage.Execute;
end;

function TfmSpecificationAndXModelAbstract.GetEditStageEnabled: Boolean;
begin
  Result:=
    (not grdStages.DataSource.DataSet.IsEmpty);
end;

function TfmSpecificationAndXModelAbstract.GetEditStageReadOnly: Boolean;
begin
  Result:=
    (EditMode = emReadOnly) or
    not CanModifyModel;
end;

class function TfmSpecificationAndXModelAbstract.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmSpecificationAndXModelAbstract.cdsGridDataCalcFields(
  DataSet: TDataSet);
var
  s: string;
  lnp: Integer;
begin
  inherited;

  if cdsGridDataPRODUCT_CODE.IsNull then
    s:= ''
  else
    begin
      if (cdsGridDataDETAIL_CODE.AsInteger = cdsGridDataPRODUCT_CODE.AsInteger) then
        s:= SForDirectUseAbbrev
      else
        s:= SForTreatmentUseAbbrev;
    end;
  cdsGridData_PRODUCT_TREATMENT_TYPE_ABBREV.AsString:= s;

  if (ChildCount > 0) then
    s:= SDetailIsComposite
  else   { if }
    begin
      if cdsGridDataPRODUCT_CODE.IsNull then
        s:= ''
      else   { if }
        begin
          if (cdsGridDataDETAIL_CODE.AsInteger = cdsGridDataPRODUCT_CODE.AsInteger) then
            s:= SDetailIsDirectUsed
          else
            s:= SDetailIsTreated;
        end;   { if }
    end;   { if }
  cdsGridData_LINE_TYPE_ABRREV.AsString:= s;


  lnp:= LastNoPos;
  cdsGridData_IS_FIRST_CHILD.AsBoolean:=
    (lnp = 0) or (GetNoField(lnp).AsInteger = 1);
  cdsGridData_IS_LAST_CHILD.AsBoolean:=
    (lnp = 0) or (GetNoField(lnp).AsInteger = ParentChildCount);

  cdsGridData_DETAIL_TECH_QUANTITY_SHOW.AsVariant:= cdsGridDataDETAIL_TECH_QUANTITY.AsVariant;

  cdsGridData_PRINT_NOTES.AsVariant:= cdsGridDataNOTES.AsVariant;

  if (cdsGridDataCONSTRUCTION_NOTES.AsString <> '') then
    begin
      if (cdsGridData_PRINT_NOTES.AsString <> '') then
        cdsGridData_PRINT_NOTES.AsString:= cdsGridData_PRINT_NOTES.AsString + ' / ';

      cdsGridData_PRINT_NOTES.AsString:=
        cdsGridData_PRINT_NOTES.AsString + cdsGridDataCONSTRUCTION_NOTES.AsString;
    end;
end;

function TfmSpecificationAndXModelAbstract.GetInsertRecordEnabled: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    (not cdsGridData.IsEmpty) and
    CanModifyData;
end;

function TfmSpecificationAndXModelAbstract.DoShowEditForm(
  AEditMode: TEditMode): Boolean;
var
  OldIsComplete: Boolean;
begin
  Assert(not cdsGridData.IsEmpty);

  if (not CanModifyData) or ReadOnlyLine then
    AEditMode:= emReadOnly;

  OldIsComplete:= cdsGridDataIS_COMPLETE.AsBoolean;

  Result:= ShowEditForm(AEditMode);

  if Result and (not OldIsComplete) and cdsGridDataIS_COMPLETE.AsBoolean then
    begin
      if not CheckSelfAndChildrenFinalizedDocs then
        with cdsGridData do
          begin
            Edit;
            try
              cdsGridDataIS_COMPLETE.AsBoolean:= False;
              Post;
            except
              Cancel;
              raise;
            end;  { try }
          end;  { with }
    end;

  if Result then
    UpdateFilteredGridData;
end;

function TfmSpecificationAndXModelAbstract.GetDelRecordEnabled: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    CanModifyData and
    (cdsGridData.RecNo > 1);
end;

function TfmSpecificationAndXModelAbstract.InternalChildCount(
  OfTheParent: Boolean): Integer;
var
  lnp: Integer;
  s: string;
  i: Integer;
  v: string;
begin
  lnp:= SimpleLastNoPos;

  if OfTheParent and (lnp = 0) then
    Result:= 1
  else   { if }
    begin
      if OfTheParent then
        Dec(lnp);

      if (lnp = 0) then
        s:= '0'
      else
        begin
          s:= GetNoField(1).AsString;
          for i:= 2 to lnp do
            s:= s + '.' + GetNoField(i).AsString;
        end;

      if Assigned(FChildCount) then
        v:= FChildCount.Values[s]
      else
        v:= '';

      if (v = '') then
        Result:= 0
      else
        Result:= StrToInt(v);
    end;   { if }
end;

function TfmSpecificationAndXModelAbstract.IsInvestedValueVisibleAndShowInvestedValues: Boolean;
begin
  Result:= HasShowInvestedValueActivity and (not FDontShowInvestedValues);
end;

function TfmSpecificationAndXModelAbstract.IsLevelOneInvestedValueVisibleAndShowInvestedValues: Boolean;
begin
  Result:= IsLevelOneInvestedValueVisible and (not FDontShowInvestedValues);
end;

function TfmSpecificationAndXModelAbstract.ChildCount: Integer;
begin
  Result:= InternalChildCount(False);
end;

function TfmSpecificationAndXModelAbstract.ParentChildCount: Integer;
begin
  Result:= InternalChildCount(True);
end;

function TfmSpecificationAndXModelAbstract.LastNoPos(ADataSet: TDataSet): Integer;
begin
  Result:= SimpleLastNoPos(ADataSet);
end;

procedure TfmSpecificationAndXModelAbstract.actEditRecordUpdate(
  Sender: TObject);
var
  s: string;
begin
  with (Sender as TAction) do
    begin
      Enabled:=
        cdsGridData.Active and
        not cdsGridData.IsEmpty;

      if Enabled and
         ((not CanModifyData) or ReadOnlyLine) then
        s:= SReadOnlyCaption
      else
        s:= SEditCaption;

      actEditRecord.Caption:= s + cDialogSuffix;
      actEditRecord.Hint:= s;
    end;   { with }
end;

procedure TfmSpecificationAndXModelAbstract.UnknownAddLineModeError;
begin
  raise Exception.Create('Unknown AddLineMode');
end;

procedure TfmSpecificationAndXModelAbstract.cdsGridDataNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  cdsGridDataDETAIL_HAS_DOCUMENTATION.AsBoolean:= False;
  cdsGridDataPRODUCT_HAS_DOCUMENTATION.AsBoolean:= False;
  cdsGridDataPRODUCT_IS_FOR_TREATMENT_USE.AsBoolean:= False;
  cdsGridDataPRODUCT_IS_FOR_DIRECT_USE.AsBoolean:= False;
  cdsGridDataIS_FOR_SINGLE_USE.AsBoolean:= False;
  cdsGridDataIS_COMPLETE.AsBoolean:= False;

  if (FInsertBeforeNo > 0) then
    GetNoField(FInsertBeforeLastNoPos).AsInteger:= FInsertBeforeNo;

  if CalcNoAsTextOnNewRecord then
    CalcNoAsText;
end;

procedure TfmSpecificationAndXModelAbstract.CalcTotalSecondaryPrice;
begin
  if cdsGridDataTOTAL_PRODUCT_ACCOUNT_QUANTITY.IsNull or
     cdsGridDataPRODUCT_SECONDARY_SINGLE_PRICE.IsNull then
    cdsGridDataPRODUCT_SECONDARY_TOTAL_PRICE.Clear
  else
    cdsGridDataPRODUCT_SECONDARY_TOTAL_PRICE.AsFloat:=
      cdsGridDataTOTAL_PRODUCT_ACCOUNT_QUANTITY.AsFloat *
      cdsGridDataPRODUCT_SECONDARY_SINGLE_PRICE.AsFloat;
end;

procedure TfmSpecificationAndXModelAbstract.cdsGridDataPRODUCT_SECONDARY_SINGLE_PRICEChange(
  Sender: TField);
begin
  inherited;
  CalcTotalSecondaryPrice;
end;

function TfmSpecificationAndXModelAbstract.ReadOnlyLine: Boolean;
begin
  Result:= False;
end;

function TfmSpecificationAndXModelAbstract.ReadOnlyModeDataSetReadOnly: Boolean;
begin
  Result:= False;
end;

function TfmSpecificationAndXModelAbstract.GetAddSpecificationEnabled: Boolean;
begin
  Result:=
    GetAddChildEnabled and
    (EditMode <> emReadOnly) and
    CanModifyData;
end;

procedure TfmSpecificationAndXModelAbstract.actMoveUpStageExecute(
  Sender: TObject);
var
  FinalizedDocs: Boolean;
begin
  inherited;

  FinalizedDocs:= CountApproveCycles and LineStageAndOperationDocsFinalized;

  MoveStage(True, True);

  if FinalizedDocs and (not LineStageAndOperationDocsFinalized) then
    IncApproveCycleNo;
end;

procedure TfmSpecificationAndXModelAbstract.actMoveDownStageExecute(
  Sender: TObject);
var
  FinalizedDocs: Boolean;
begin
  inherited;

  FinalizedDocs:= CountApproveCycles and LineStageAndOperationDocsFinalized;

  MoveStage(False, True);

  if FinalizedDocs and (not LineStageAndOperationDocsFinalized) then
    IncApproveCycleNo;
end;

procedure TfmSpecificationAndXModelAbstract.UpdateChildrenParentTotalQuantity;
var
  NoAsFormatedText: string;
  b, bm: TBookmark;
  TheParent: Variant;
  ParentTotalDetailQuantity: Real;

  function SameKey: Boolean;
  begin
    Result:=
      (Copy(cdsGridDataNO_AS_FORMATED_TEXT.AsString, 1, Length(NoAsFormatedText) + 1) =
       NoAsFormatedText + '.');
  end;

var
  SP: Integer;
begin
  if (ChildCount = 0) then
    Exit;

  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          SP:= SavePoint;
          try
            NoAsFormatedText:= cdsGridDataNO_AS_FORMATED_TEXT.AsString;

            TheParent:= GetParent;
            ParentTotalDetailQuantity:= LineDetailTechQuantity;

            Next;
            while (not EOF) and SameKey do
              begin
                if not SameParent(TheParent) then
                  begin
                    bm:= Bookmark;
                    try
                      LocateParent;
                      ParentTotalDetailQuantity:= LineDetailTechQuantity;
                    finally
                      Bookmark:= bm;
                    end;   { try }

                    TheParent:= GetParent;
                  end;   { if }

                if UpdateCurrentParentDetailQuantity then
                  begin
                    Edit;
                    try
                      ParentLineDetailTechQuantity:= ParentTotalDetailQuantity;
                      Post;
                    except
                      Cancel;
                      raise;
                    end;   { try }
                  end;   { if }

                Next;
              end;
          except
            SavePoint:= SP;
            RebuildGridDataLDTQ;
            raise;
          end;  { try }
        finally
          Bookmark:= b;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

function TfmSpecificationAndXModelAbstract.UpdateCurrentParentDetailQuantity: Boolean;
begin
  Result:= True;
end;

function TfmSpecificationAndXModelAbstract.StagesRecordCount(cdsStages: TDataSet): Integer;
var
  Accept: Boolean;
begin
  Result:= 0;
  cdsStages.First;
  while not cdsStages.Eof do
    begin
      Accept:= False;
      cdsStages.OnFilterRecord(cdsStages, Accept);

      Inc(Result, Ord(Accept));

      cdsStages.Next;
    end;  { while }
end;

procedure TfmSpecificationAndXModelAbstract.StructurePrint(
  PrintNotes: Boolean);
begin
end;

procedure TfmSpecificationAndXModelAbstract.GenerateModel(AMinStageCount: Integer = 2);
var
  cdsStages: TCustomClientDataSet;
  cdsStagesIS_AUTO_MOVEMENT: TField;

  function CorrectRecordCount(Value: Integer): Integer;
  begin
    if (Value < AMinStageCount) then
      Result:= AMinStageCount
    else
      Result:= Value;
  end;

  function GetModelWidth: Integer;
  type
    TLevelLengthArray = array[0..MaxNoPos] of Integer;
  var
    MaxLength: Integer;
    CurrentLevelLength: TLevelLengthArray;
    PrevLevel, Level: Integer;
    StagesBookmark: TBookmark;
    i: Integer;
    b: TBookmark;

    procedure RecalcMaxLength(Level, PrevLevel: Integer);
    var
      i, k: Integer;
    begin
      MaxLength:= 0;
      for i:= 0 to Level do
        Inc(MaxLength, CurrentLevelLength[i]);

      if (PrevLevel > Level) then
        for k:= Level + 1 to MaxNoPos do
          CurrentLevelLength[k]:= 0;
    end;   { RecalcMaxLevelLengthDowntoLevel }

  begin
    for i:= 0 to MaxNoPos do
      CurrentLevelLength[i]:= 0;

    MaxLength:= 0;
    Result:= 0;

    with cdsGridData do
      begin
        cdsStages.DisableControls;
        try
          StagesBookmark:= cdsStages.Bookmark;
          try
            DisableControls;
            try
              b:= Bookmark;
              try
                PrevLevel:= -1;
                First;

                while not EOF do
                  begin
                    Level:= SimpleLastNoPos;

                    CurrentLevelLength[Level]:=
                      CorrectRecordCount(StagesRecordCount(cdsStages)) - 1;

                    RecalcMaxLength(Level, PrevLevel);
                    Result:= Max(Result, MaxLength + 1);

                    PrevLevel:= Level;
                    Next;
                  end;   { while }

                RecalcMaxLength(0, PrevLevel);
                Result:= Max(Result, MaxLength + 1);
              finally
                Bookmark:= b;
              end;   { try }
            finally
              EnableControls;
            end;   { try }
          finally
            cdsStages.Bookmark:= StagesBookmark;
          end;   { try }
        finally
          cdsStages.EnableControls;
        end;   { try }
      end;   { with }
  end;   { GetModelWidth }

  procedure DefineModelCDS(ModelWidth: Integer);
  var
    i: Integer;
  begin
    with cdsModel.FieldDefs do
      begin
        Clear;

        Add(IsShrunkFieldName, ftBoolean);
        Add(IsHiddenFieldName, ftBoolean);

        for i:= 1 to MaxNoPos do
          Add(Format('NO_%d', [i]), ftInteger);

        Add('NO_AS_FORMATED_TEXT', ftWideString, cdsGridDataNO_AS_FORMATED_TEXT.Size);
        Add('_LINE_TYPE_ABRREV', ftWideString, 50);
        Add('DETAIL_NAME', ftWideString, cdsGridDataDETAIL_NAME.Size);
        Add('DETAIL_NO', ftFloat);
        Add('DETAIL_HAS_DOCUMENTATION', ftWideString, 1);
        Add('_DETAIL_TECH_QUANTITY_SHOW', ftFloat);
        Add('_LINE_DETAIL_TECH_QUANTITY_SHOW', ftFloat);
        Add('_DETAIL_TECH_MEASURE_ABBREV', ftWideString, 5);
        Add('_PRODUCT_TREATMENT_TYPE_ABBREV', ftWideString, 1);
        Add('PRODUCT_NAME', ftWideString, cdsGridDataPRODUCT_NAME.Size);
        Add('PRODUCT_NO', ftFloat);
        Add('PRODUCT_HAS_DOCUMENTATION', ftWideString, 1);
        Add('_PRODUCT_PRECISION_LEVEL_NO', ftFloat);
        Add('PRODUCT_TECH_QUANTITY', ftFloat);
        Add('TOTAL_PRODUCT_TECH_QUANTITY', ftFloat);
        Add('_PRODUCT_TECH_MEASURE_ABBREV', ftWideString, cdsGridData_PRODUCT_TECH_MEASURE_ABBREV.Size);

        AddModelFieldDefs;

        for i:= 1 to ModelWidth do
          begin
            Add(Format(StageFieldName, [i]), ftWideString, 40);   // dept field
            Add(Format(InvestedValueFieldName, [i]), ftWideString, 40);   // invested value field
            Add(Format(InvestedValuePartFieldName, [i]), ftWideString, 40);   // invested value field
            Add(Format(InvestedValueIsIncompleteFieldName, [i]), ftFloat);   // invested value field

            if (i < ModelWidth) then
              begin
                AddBeforeDirFieldDefs(i);
                Add(Format(DirStageFieldName, [i]), ftWideString, 1);   /// dir field
              end;
          end;   { for }
      end;   { with }
  end;   { CreateCDS }

  procedure SetModelCDSFields(ModelWidth: Integer);
  const
    QuantityDisplayFormat = ',0.###';
  var
    i: Integer;
  begin
    SetModelFields;

    with cdsModel.FieldByName(IsShrunkFieldName) as TBooleanField do
      begin
        Alignment:= taCenter;
        DisplayLabel:= '±';
        DisplayValues:= ShrunkDisplayValues;
      end;   { with }

    cdsModel.FieldByName(IsHiddenFieldName).Visible:= False;

    with cdsModel.FieldByName('DETAIL_NAME') do
      begin
        DisplayLabel:= SDetailCaption;
        DisplayWidth:= 30;
      end;   { with }

    with cdsModel.FieldByName('DETAIL_NO') do
      begin
        DisplayLabel:= SDetailNoCaption;
        DisplayWidth:= 10;
      end;   { with }

    with cdsModel.FieldByName('PRODUCT_NAME') do
      begin
        DisplayLabel:= SProductCaption;
        DisplayWidth:= 30;
      end;   { with }

    with cdsModel.FieldByName('PRODUCT_NO') do
      begin
        DisplayLabel:= SProductNoCaption;
        DisplayWidth:= 10;
      end;   { with }

    with cdsModel do
      begin
        for i:= 1 to MaxNoPos do
          FieldByName(Format('NO_%d', [i])).Visible:= False;

        FieldByName('NO_AS_FORMATED_TEXT').DisplayLabel:=
          cdsGridDataNO_AS_FORMATED_TEXT.DisplayLabel;

        FieldByName('DETAIL_NO').Visible:= False;
        FieldByName('DETAIL_HAS_DOCUMENTATION').Visible:= False;
        FieldByName('_DETAIL_TECH_QUANTITY_SHOW').Visible:= False;
        FieldByName('_LINE_DETAIL_TECH_QUANTITY_SHOW').Visible:= False;
        FieldByName('_DETAIL_TECH_MEASURE_ABBREV').Visible:= False;
        FieldByName('_PRODUCT_TREATMENT_TYPE_ABBREV').Visible:= False;
        FieldByName('PRODUCT_NAME').Visible:= False;
        FieldByName('PRODUCT_NO').Visible:= False;
        FieldByName('PRODUCT_HAS_DOCUMENTATION').Visible:= False;
        FieldByName('_PRODUCT_PRECISION_LEVEL_NO').Visible:= False;
        FieldByName('PRODUCT_TECH_QUANTITY').Visible:= False;
        FieldByName('TOTAL_PRODUCT_TECH_QUANTITY').Visible:= False;
        FieldByName('_PRODUCT_TECH_MEASURE_ABBREV').Visible:= False;

        FieldByName('DETAIL_HAS_DOCUMENTATION').Alignment:= taCenter;
        FieldByName('_DETAIL_TECH_MEASURE_ABBREV').Alignment:= taCenter;
        FieldByName('_PRODUCT_TREATMENT_TYPE_ABBREV').Alignment:= taCenter;
        FieldByName('PRODUCT_HAS_DOCUMENTATION').Alignment:= taCenter;
        FieldByName('_PRODUCT_TECH_MEASURE_ABBREV').Alignment:= taCenter;

        (FieldByName('_DETAIL_TECH_QUANTITY_SHOW') as TAbmesFloatField).DisplayFormat:= QuantityDisplayFormat;
        (FieldByName('_LINE_DETAIL_TECH_QUANTITY_SHOW') as TAbmesFloatField).DisplayFormat:= QuantityDisplayFormat;
        (FieldByName('PRODUCT_TECH_QUANTITY') as TAbmesFloatField).DisplayFormat:= QuantityDisplayFormat;
        (FieldByName('TOTAL_PRODUCT_TECH_QUANTITY') as TAbmesFloatField).DisplayFormat:= QuantityDisplayFormat;

        FieldByName('NO_AS_FORMATED_TEXT').OnGetText:= cdsModelNO_AS_FORMATED_TEXTGetText;
      end;   { with }

    // stages
    for i:= 1 to ModelWidth do
      begin
        with cdsModel.FieldByName(Format(StageFieldName, [i])) do
          begin
            DisplayLabel:= Format(StageDisplayLabel, [i]);
            DisplayWidth:= 15;
          end;   { with }

        with cdsModel.FieldByName(Format(InvestedValueFieldName, [i])) do
          begin
            DisplayLabel:= Format(StageDisplayLabel, [i]);
            DisplayWidth:= 15;
          end;   { with }

        with cdsModel.FieldByName(Format(InvestedValuePartFieldName, [i])) do
          begin
            DisplayLabel:= Format(StageDisplayLabel, [i]);
            DisplayWidth:= 15;
          end;   { with }

        if (i < ModelWidth) then
          begin
            SetModelBeforeDirFields(i);

            with cdsModel.FieldByName(Format(DirStageFieldName, [i])) do
              begin
                DisplayLabel:= Format(DirStageDisplayLabel, [i]);
                DisplayWidth:= 3;
                Alignment:= taCenter;
              end;   { with }
          end;
      end;   { for }
  end;   { ModelWidth }

  procedure SetModelColumns;
  var
    i: Integer;
  begin
    grdModel.Columns.BeginUpdate;
    try
      with grdModel do
        begin
          Columns[0].Width:= 10;
          Columns[0].Checkboxes:= False;

          Columns[1].Width:= 167;

          with Columns[2+Ord(HasForkField)] do
            begin
              Title.Caption:= SLineTypeCaption;
              Alignment:= taLeftJustify;
              Width:= 15;
            end;   { with }

          for i:= FirstModelDeptColumnIndex to Columns.Count - 1 do
            with Columns[i] do
              case ModelColumnType(i, FirstModelDeptColumnIndex) of
                mctDept:
                  Width:= GetStageDeptColumnWidth;
                mctInvestedValue:
                  Width:= InvestedValueColumnWidth;
                mctInvestedValuePart:
                  Width:= InvestedValueColumnWidth;
                mctInvestedValueIsIncomplete:
                  Width:= InvestedValueColumnWidth;
                mctDates:
                  Width:= FStageDatesColumnWidth;
                mctArrow:
                  begin
                    Width:= 15;
                    Title.Font.Name:= SymbolFontName;
                    Font.Name:= SymbolFontName;
                  end
              end;   { case }
        end;   { with }

      SetModelGridColumns;
      SetModelInvestedValueVisibleColumns;

      InitializeAbmesDBGrid(grdModel, False);
    finally
      grdModel.Columns.EndUpdate;
    end;   { try }
  end;   { SetModelColumns }

  procedure FillModelCDS(ModelWidth: Integer);

    procedure SetStagesFromStageNo(StageNo: Integer);
    var
      ra: string;
      Accept: Boolean;
      LastStageProcessed: Boolean;
    begin
      with cdsStages do
        begin
          LastStageProcessed:= False;
          Last;
          while not BOF do
            begin
              Accept:= False;
              OnFilterRecord(cdsStages, Accept);

              if Accept then
                begin
                  if not LastStageProcessed then
                    begin
                      if (StageNo < ModelWidth) then
                        cdsModel.FieldByName(Format(DirStageFieldName, [StageNo])).AsString:= UpArrow;

                      LastStageProcessed:= True;
                    end
                  else   { if }
                    begin
                      FillModelBeforeDirFields(StageNo);

                      if cdsStagesIS_AUTO_MOVEMENT.AsBoolean then
                        ra:= RightTransitArrow
                      else
                        ra:= RightArrow;

                      cdsModel.FieldByName(Format(DirStageFieldName, [StageNo])).AsString:= ra;
                    end;

                  cdsModel.FieldByName(Format(StageFieldName, [StageNo])).AsString:= GetModelStage(False, False);
                  cdsModel.FieldByName(Format(InvestedValueFieldName, [StageNo])).AsString:= GetModelStage(True, False);
                  cdsModel.FieldByName(Format(InvestedValuePartFieldName, [StageNo])).AsString:= GetModelStage(True, True);
                  cdsModel.FieldByName(Format(InvestedValueIsIncompleteFieldName, [StageNo])).AsInteger:= Ord(GetModelStageInvestedValueIsIncomplete);

                  Dec(StageNo);
                end;

              Prior;
            end;   { while }
        end;   { with }
    end;   { SetStagesFromStageNo }

    procedure CalcStageInvestedValues;

      procedure StoreStageInvestedValues(AInvestedValue, AAggregatedInvestedValue,
        AProductInvestedValue: TInvestedValue);
      begin
        if InvestedValueFilter.InvestedValueSingle and
           (InvestedValueFilter.ResultProductTechQuantity <> 0) and
           (InvestedValueFilter.ResultProductTechQuantity <> 1) then
          begin
            AInvestedValue.Value:= AInvestedValue.Value / InvestedValueFilter.ResultProductTechQuantity;
            AAggregatedInvestedValue.Value:= AAggregatedInvestedValue.Value / InvestedValueFilter.ResultProductTechQuantity;
            AProductInvestedValue.Value:= AProductInvestedValue.Value / InvestedValueFilter.ResultProductTechQuantity;
          end;  { if }

        AddStageInvestedValues(AInvestedValue, AAggregatedInvestedValue, AProductInvestedValue);
      end;

    var
      LevelStageValues: array[-1..MaxNoPos + 1] of TInvestedValue;
      LevelProductValues: array[-1..MaxNoPos + 1] of TInvestedValue;
      i: Integer;
      Level: Integer;
      PriorLevel: Integer;
      ProductInvestedValue: TInvestedValue;
      StageInvestedValue: TInvestedValue;
      StageAggregatedInvestedValue: TInvestedValue;
      TotalInvestedValue: TInvestedValue;
    begin
      for i:= Low(LevelStageValues) to High(LevelStageValues) do
        begin
          LevelStageValues[i].Clear;
          LevelProductValues[i].Clear;
        end;

      PriorLevel:= 0;
      cdsGridData.Last;
      while not cdsGridData.Bof do
        begin
          Level:= GetLineLevel;

          if (Level >= PriorLevel) then
            for i:= PriorLevel to Level do
              begin
                LevelStageValues[i].Clear;
                LevelProductValues[i].Clear;
              end;

          StageAggregatedInvestedValue:= LevelStageValues[Level];

          ProductInvestedValue:= GetProductInvestedValue(InvestedValueFilter);

          ProductInvestedValue:= ProductInvestedValue + LevelProductValues[Level];

          cdsStages.First;
          while not cdsStages.Eof do
            begin
              if (InvestedValueFilter.InvestedValueLevel = 1) then
                StageInvestedValue.Clear
              else
                StageInvestedValue:= GetStageInvestedValue(InvestedValueFilter);

              StageAggregatedInvestedValue:= StageAggregatedInvestedValue + StageInvestedValue;

              StoreStageInvestedValues(StageInvestedValue, StageAggregatedInvestedValue, ProductInvestedValue);

              cdsStages.Next;
            end;  { while }

          LevelStageValues[Level-1]:= LevelStageValues[Level-1] + StageAggregatedInvestedValue;
          LevelProductValues[Level-1]:= LevelProductValues[Level-1] + ProductInvestedValue;

          PriorLevel:= Level;
          cdsGridData.Prior;
        end;  { while }

      TotalInvestedValue:= LevelStageValues[-1] + LevelProductValues[-1];

      if InvestedValueFilter.InvestedValueSingle and
         (InvestedValueFilter.ResultProductTechQuantity <> 0) and
         (InvestedValueFilter.ResultProductTechQuantity <> 1) then
        TotalInvestedValue:= TotalInvestedValue / InvestedValueFilter.ResultProductTechQuantity;

      ShowTotalInvestedValue(TotalInvestedValue, InvestedValueFilter.CurrencyAbbrev);

      FTotalInvestedValue:= TotalInvestedValue;
    end;  { CalcStageInvestedValues }

  var
    StagesBookmark: TBookmark;
    FilteredGridDataBookmark: TBookmark;
    b: TBookmark;
    LevelLength: array[0..MaxNoPos] of Integer;
    Level: Integer;
    i: Integer;
    len: Integer;
    SaveFiltered: Boolean;
    cdsModelDETAIL_HAS_DOCUMENTATION: TField;
    cdsModelPRODUCT_HAS_DOCUMENTATION: TField;
    cdsModelIS_SHRUNK: TField;
    cdsModelIS_HIDDEN: TField;
    cdsFilteredGridDataIS_SHRUNK: TField;
    cdsFilteredGridDataIS_HIDDEN: TField;
    Accept: Boolean;
  begin
    for i:= 0 to MaxNoPos do
      LevelLength[i]:= 0;

    cdsModel.DisableControls;
    try
      cdsFilteredGridData.DisableControls;
      try
        FilteredGridDataBookmark:= cdsFilteredGridData.Bookmark;
        try
          SaveFiltered:= cdsFilteredGridData.Filtered;
          cdsFilteredGridData.Filtered:= False;
          try
            with cdsGridData do
              begin
                cdsStages.DisableControls;
                try
                  StagesBookmark:= cdsStages.Bookmark;
                  try
                    DisableControls;                                       
                    try
                      b:= Bookmark;
                      try
                        cdsStageInvestedValues.CreateDataSet;
                        try
                          CalcStageInvestedValues;

                          cdsModelDETAIL_HAS_DOCUMENTATION:= cdsModel.FieldByName('DETAIL_HAS_DOCUMENTATION');
                          cdsModelPRODUCT_HAS_DOCUMENTATION:= cdsModel.FieldByName('PRODUCT_HAS_DOCUMENTATION');
                          cdsModelIS_SHRUNK:= cdsModel.FieldByName(IsShrunkFieldName);
                          cdsModelIS_HIDDEN:= cdsModel.FieldByName(IsHiddenFieldName);
                          cdsFilteredGridDataIS_SHRUNK:= cdsFilteredGridData.FieldByName(IsShrunkFieldName);
                          cdsFilteredGridDataIS_HIDDEN:= cdsFilteredGridData.FieldByName(IsHiddenFieldName);

                          First;

                          cdsStages.Last;
                          Accept:= False;
                          FLastStageNo:= -1;
                          while not cdsStages.Bof do
                            begin
                              cdsStages.OnFilterRecord(cdsStages, Accept);

                              if Accept then
                                begin
                                  FLastStageNo:= GetStageNoField.AsInteger;
                                  Break;
                                end;

                              cdsStages.Prior;
                            end;

                          while not EOF do
                            begin
                              Level:= SimpleLastNoPos;
                              LevelLength[Level]:= CorrectRecordCount(StagesRecordCount(cdsStages)) - 1;

                              len:= 0;
                              for i:= Level - 1 downto 0 do
                                Inc(len, LevelLength[i]);

                              cdsModel.Append;
                              try
                                cdsModel.AssignFields(cdsGridData);

                                cdsModelDETAIL_HAS_DOCUMENTATION.AsString:= cdsGridDataDETAIL_HAS_DOCUMENTATION.DisplayText;
                                cdsModelPRODUCT_HAS_DOCUMENTATION.AsString:= cdsGridDataPRODUCT_HAS_DOCUMENTATION.DisplayText;

                                LocateDataSet(cdsGridData, cdsFilteredGridData);

                                cdsModelIS_SHRUNK.AsVariant:= cdsFilteredGridDataIS_SHRUNK.AsVariant;
                                cdsModelIS_HIDDEN.AsVariant:= cdsFilteredGridDataIS_HIDDEN.AsVariant;

                                SetStagesFromStageNo(ModelWidth - len);

                                cdsModel.Post;
                              except
                                cdsModel.Cancel;
                                raise;
                              end;   { try }

                              Next;
                            end;   { while }

                          cdsModel.First;
                        finally
                          cdsStageInvestedValues.Close;
                        end;   { try }
                      finally
                        Bookmark:= b;
                      end;   { try }
                    finally
                      EnableControls;
                    end;   { try }
                  finally
                    cdsStages.Bookmark:= StagesBookmark;
                  end;   { try }
                finally
                  cdsStages.EnableControls;
                end;   { try }
              end;   { with }
          finally
            cdsFilteredGridData.Filtered:= SaveFiltered;
          end;   { try }
        finally
          cdsFilteredGridData.Bookmark:= FilteredGridDataBookmark;
        end;   { try }
      finally
        cdsFilteredGridData.EnableControls;
      end;   { try }
    finally
      cdsModel.EnableControls;
    end;   { try }
  end;   { FillModelCDS }

  procedure SetModelInvestedValuesVisible(ModelWidth: Integer);
  var
    i: Integer;
  begin
    for i:= 1 to ModelWidth do
      RegisterFieldsTextVisibility(
        HasShowInvestedValueActivity,
        [ cdsModel.FieldByName(Format(InvestedValueFieldName, [i])),
          cdsModel.FieldByName(Format(InvestedValuePartFieldName, [i]))]);
  end;  { SetModelInvestedValuesVisible }

var
  SaveCursor: TCursor;
begin
  if not ChangeAfterModelGeneration then Exit;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    FGeneratingModel:= True;
    try
      grdModel.Visible:= False;
      try
        BeforeGenerateModel;
        try
          cdsStages:= GetStagesClientDataSet;
          cdsStagesIS_AUTO_MOVEMENT:= cdsStages.FieldByName('IS_AUTO_MOVEMENT');

          FModelWidth:= GetModelWidth;

          cdsModelNO_AS_FORMATED_TEXT:= nil;
          cdsModel.Close;

          DefineModelCDS(FModelWidth);

          cdsModel.CreateDataSet;
          cdsModelNO_AS_FORMATED_TEXT:= cdsModel.FieldByName('NO_AS_FORMATED_TEXT');

          SetModelCDSFields(FModelWidth);

          SetModelInvestedValuesVisible(FModelWidth);

          SetModelColumns;

          FillModelCDS(FModelWidth);

          LocateDataSet(cdsGridData, cdsModel);
        finally
          AfterGenerateModel;
        end;  { try }
      finally
        grdModel.Visible:= True;
      end;   { try }
    finally
      FGeneratingModel:= False;
    end;   { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }

  ChangeAfterModelGeneration:= False;

  FixDBGridEhColumnWidths(grdModel);
end;   { GenerateModel }

procedure TfmSpecificationAndXModelAbstract.LoadLabourAndOrganizationCostCoef(
  AInvestedValueFilter: TInvestedValueFilter);
begin
  cdsEarningModifiers.Params.ParamByName('BEGIN_DATE').AsDateTime:= AInvestedValueFilter.InvestedValueDate;
  cdsEarningModifiers.Params.ParamByName('END_DATE').AsDateTime:= AInvestedValueFilter.InvestedValueDate;

  cdsEarningModifiers.Open;
  try
    AInvestedValueFilter.HasLabourAndOrganizationCostCoef:= not cdsEarningModifiers.IsEmpty;

    if cdsEarningModifiers.IsEmpty then
      begin
        AInvestedValueFilter.LabourCostCoef:= 1;
        AInvestedValueFilter.OrganizationCostCoef:= 0;
      end
    else
      begin
        AInvestedValueFilter.LabourCostCoef:= cdsEarningModifiersLABOUR_COST_COEF.AsFloat;
        AInvestedValueFilter.OrganizationCostCoef:= cdsEarningModifiersORGANIZATION_COST_COEF.AsFloat;
      end;
  finally
    cdsEarningModifiers.Close;
  end;  { try }
end;

function TfmSpecificationAndXModelAbstract.LocateDataSet(Source,
  Dest: TDataSet): Boolean;
var
  v: Variant;
  s: string;
  i: Integer;
  FldName: string;
begin
  inherited;

  Result:= False;

  if (FLocatingDataSets.IndexOf(Dest) >= 0) then Exit;

  FLocatingDataSets.Add(Source);
  try
    v:= VarArrayCreate([0, MaxNoPos-1], varInteger);
    s:= '';
    for i:= 1 to MaxNoPos do
      begin
        FldName:= Format('NO_%d', [i]);
        s:= s + FldName + '; ';
        v[i-1]:= Source.FieldByName(FldName).AsInteger;
      end;
    SetLength(s, Length(s) - 2);

    UpdateLocateDataSetData(s, v, Source);

    Result:= Dest.Locate(s, v, []);
  finally
    FLocatingDataSets.Remove(Source);
  end;   { try }
end;

procedure TfmSpecificationAndXModelAbstract.UpdateLocateDataSetData(
  var FieldNames: string; var FieldValues: Variant; Source: TDataSet);
begin
// do nothing
end;

procedure TfmSpecificationAndXModelAbstract.pcMainChange(Sender: TObject);
begin
  inherited;

  if (pcMain.ActivePage = tsModel) then
    GenerateModel;
end;

procedure TfmSpecificationAndXModelAbstract.Initialize;
begin
  inherited;

  ChangeAfterModelGeneration:= True;

  FTaskDeptIdentifiers:= TStringList.Create;
  FOtherTasksDeptIdentifiers:= TStringList.Create;
end;

procedure TfmSpecificationAndXModelAbstract.grdModelGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  s: string;
  p: Integer;
  No: Integer;
  offs: Integer;
  i: Integer;
  InCurrentTask: Boolean;
  mct: TModelColumnType;
  IncompleteInvestedValue: Boolean;
begin
  inherited;

  if (Sender = grdPrint) then
    offs:= PrintStaticColumnsCount
  else
    offs:= FirstModelDeptColumnIndex;

  if (Column.Index >= offs) then
    begin
      if (Sender = grdPrint) then
        mct:= PrintModelColumnType(Column.Index, offs)
      else
        mct:= ModelColumnType(Column.Index, offs);

      if (mct in [mctDept, mctInvestedValue, mctInvestedValuePart]) then
        begin
          s:= Column.Field.AsString;
          p:= Pos(':', s);
          if (p > 0) then
            begin
              SetLength(s, p-1);

              No:= StrToIntDef(s, -1);

              if ( (not (gdSelected in State)) or
                   (ActiveControl <> Sender) ) and
                 ( (No = 0) or
                   ( (cdsModel.FieldByName('NO_AS_FORMATED_TEXT').AsString = '0') and (No = FLastStageNo) ) ) then
                Background:= GridSpecialColor;

              IncompleteInvestedValue:=
                ((mct = mctInvestedValue) and (cdsModel.Fields[Column.Field.Index + 2].AsInteger = 1)) or
                ((mct = mctInvestedValuePart) and (cdsModel.Fields[Column.Field.Index + 1].AsInteger = 1));

              if IncompleteInvestedValue then
                AFont.Color:= clRed;

              if FEdittingTaskInModel then
                begin
                  s:= Column.Field.AsString;
                  s:= Copy(s, p+1, Length(s)-p);

                  InCurrentTask:= False;

                  for i:= 0 to FTaskDeptIdentifiers.Count - 1 do
                    if (Pos(FTaskDeptIdentifiers[i], s) = 1) then
                      begin
                        if (not (gdSelected in State)) or
                           (ActiveControl <> Sender) then
                          AFont.Color:= clRed
                        else
                          AFont.Color:= clYellow;

                        InCurrentTask:= True;
                        Break;
                      end;   { if }

                  if not InCurrentTask then
                    for i:= 0 to FOtherTasksDeptIdentifiers.Count - 1 do
                      if (Pos(FOtherTasksDeptIdentifiers[i], s) = 1) then
                        begin
                          if (not (gdSelected in State)) or
                             (ActiveControl <> Sender) then
                            AFont.Color:= clGreen
                          else
                            AFont.Color:= clLime;

                          Break;
                        end;   { if }
                end;
            end;   { if }
        end;   { if }
    end;
end;

procedure TfmSpecificationAndXModelAbstract.SetModelPrintColumns;
var
  i: Integer;
  PrintStageFieldName: string;
begin
  with grdPrint do
    begin
      Columns.BeginUpdate;
      try
        while (Columns.Count > PrintStaticColumnsCount) do
          Columns.Delete(PrintStaticColumnsCount);

        Columns[0].Visible:= not FViewingTaskModel;

        for i:= 1 to FModelWidth do
          begin
            with Columns.Add do
              begin
                if actToggleInvestedValue.Checked then
                  begin
                   if actToggleInvestedValuePart.Checked then
                     PrintStageFieldName:= InvestedValuePartFieldName
                   else
                     PrintStageFieldName:= InvestedValueFieldName;
                  end
                else
                  PrintStageFieldName:= StageFieldName;

                FieldName:= Format(PrintStageFieldName, [i]);

                if actToggleInvestedValue.Checked then
                  Width:= PrintIvestedValueStageWidth
                else
                  Width:= GetPrintStageDeptColumnWidth;

                Font.Size:= 7;
              end;   { with }

            if (i < FModelWidth) then
              begin
                AddBeforeDirPrintColumns(i);

                with Columns.Add do
                  begin
                    FieldName:= Format(DirStageFieldName, [i]);
                    Title.Font.Name:= SymbolFontName;
                    Font.Name:= SymbolFontName;
                    Width:= 15;
                  end;   { with }
              end;
          end;   { for }

        Columns[0].Checkboxes:= False;
      finally
        Columns.EndUpdate;
      end;   { try }
    end;   { with }
end;

procedure TfmSpecificationAndXModelAbstract.SetOperationDeptPriceFields;
begin
  CachedSetDeptPriceFields(
    cdsOperationsDEPT_CODE, InvestedValueFilter.InvestedValueDate,
    cdsOperationsD_HOUR_PRICE,
    cdsOperationsD_MAINTAINANCE_HOUR_PRICE,
    cdsOperationsD_PARALLEL_PROCESS_COUNT,
    cdsOperationsD_PARALLEL_OPERATOR_COUNT
  );
end;

{ SetColumns }

procedure TfmSpecificationAndXModelAbstract.actPrintModelExecute(
  Sender: TObject);
var
  SaveCursor: TCursor;
begin
  inherited;

  grdPrint.DataSource:= dsModel;
  try
    SaveCursor:= Screen.Cursor;
    Screen.Cursor:= crHourGlass;
    try
      SetModelPrintColumns;
      SetPrintModelParams(False, FViewingTaskModel);
    finally
      Screen.Cursor:= SaveCursor;
    end;   { try SaveCursor }

    PrintModel;
  finally
    grdPrint.DataSource:= nil;
  end;   { try }
end;

procedure TfmSpecificationAndXModelAbstract.SetPrintModelParams(RecursivePrint, TaskModelPrint: Boolean;
  ARealNoAsText, ADetailName, ADetailNo: string);
begin
// do nothing
end;

procedure TfmSpecificationAndXModelAbstract.actMaximizeInModelUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    (pcMain.ActivePage = tsModel);
end;

procedure TfmSpecificationAndXModelAbstract.actMaximizeInModelExecute(
  Sender: TObject);
var
  NewChecked: Boolean;
begin
  inherited;

  with Sender as TAction do
    begin
      NewChecked:= not Checked;

      if NewChecked then
        begin
          with actResizeWorkspace do
            if not Checked then
              Execute;

          WindowState:= wsMaximized;
        end
      else
        WindowState:= wsNormal;

      Checked:= NewChecked;
      btnMaximizeInModelDown:= NewChecked;  // neshto se bugva, kogato se upotrebiava Hotkey-a
    end;   { with }
end;

procedure TfmSpecificationAndXModelAbstract.cdsModelAfterScroll(
  DataSet: TDataSet);
begin
  inherited;

  if (not FGeneratingModel) and
     (not DataSet.ControlsDisabled) then
    LocateDataSet(cdsModel, cdsFilteredGridData);
end;

procedure TfmSpecificationAndXModelAbstract.cdsGridDataAfterScroll(
  DataSet: TDataSet);
begin
  inherited;

  if not ChangeAfterModelGeneration and
     cdsModel.Active and
     (not FGeneratingModel) and
     AllowLocateModel and
     (not DataSet.ControlsDisabled) then
    LocateDataSet(cdsGridData, cdsModel);
end;

function TfmSpecificationAndXModelAbstract.AllowLocateModel: Boolean;
begin
  Result:= True;
end;

procedure TfmSpecificationAndXModelAbstract.grdModelDblClick(
  Sender: TObject);
var
  DeptIdentifier: string;
  idx: Integer;
begin
  inherited;

  if ((Sender as TAbmesDBGrid).Col > 1) then
    begin
      if SelectModelCell(False) then
        begin
          if FEdittingTaskInModel then
            with GetStagesClientDataSet do
              begin
                if (GetStageNoField.AsInteger > 0) and
                   not ( (cdsGridData.RecNo = 1) and
                         (RecNo = RecordCount) )then
                  begin
                    DeptIdentifier:= FieldByName('DEPT_IDENTIFIER').AsString;

                    idx:= FTaskDeptIdentifiers.IndexOf(DeptIdentifier);

                    if (idx >= 0) then
                      FTaskDeptIdentifiers.Delete(idx)
                    else
                      FTaskDeptIdentifiers.Add(DeptIdentifier);

                    grdModel.Refresh;
                  end;   { if }
              end
          else   { if }
            begin
              if not FViewingTaskModel then
                begin
                  RestoreForm;

                  ActivateStagesGrid;
                  actEditStage.Execute;
                end;
            end;   { if }
        end;   { if }
    end;   { if }
end;

procedure TfmSpecificationAndXModelAbstract.ActivateStagesGrid;
begin
  if tsStages.TabVisible then
    begin
      pcMain.ActivePage:= tsStages;
      ActiveControl:= grdStages;
    end;
end;

procedure TfmSpecificationAndXModelAbstract.RestoreForm;
begin
  WindowState:= wsNormal;
  actMaximizeInModel.Checked:= False;
  btnMaximizeInModelDown:= actMaximizeInModel.Checked;
end;

procedure TfmSpecificationAndXModelAbstract.grdLinesGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  Assert(Assigned(cdsFilteredGridDataCHILD_COUNT));

  if ( (not (gdSelected in State)) or
       (ActiveControl <> Sender) ) and
     (cdsFilteredGridDataCHILD_COUNT.AsInteger > 0) and
     (Background <> ccDocBackground) then
    begin
      Background:= GridSpecialColor;

      if not (Sender as TAbmesDBGrid).Focused then
        AFont.Color:= clBlack;
    end;

  if (cdsFilteredGridDataDETAIL_IS_INACTIVE.AsInteger = 1) and
     (Column.FieldName = 'DETAIL_NAME') then
    AFont.Color:= clRed;

  if (cdsFilteredGridDataPRODUCT_IS_INACTIVE.AsInteger = 1) and
     (Column.FieldName = 'PRODUCT_NAME') then
    AFont.Color:= clRed;

  if (Column.Field = cdsFilteredGridData_PRODUCT_PRECISION_LEVEL_NO) then
    begin
      if not cdsFilteredGridData_PRODUCT_PRECISION_LEVEL_COLOR.IsNull then
        AFont.Color:= cdsFilteredGridData_PRODUCT_PRECISION_LEVEL_COLOR.AsInteger;

      if not cdsFilteredGridData_PRODUCT_PRECISION_LEVEL_BACKGROUND_COLOR.IsNull then
        Background:= cdsFilteredGridData_PRODUCT_PRECISION_LEVEL_BACKGROUND_COLOR.AsInteger;
    end;
end;

procedure TfmSpecificationAndXModelAbstract.grdStagesGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  cdsStages: TCustomClientDataSet;
  cdsStagesDEPT_IS_STORE: TField;
begin
  inherited;

  if (Background <> ccDocBackground) then
    begin
      cdsStages:= GetStagesClientDataSet;
      cdsStagesDEPT_IS_STORE:=
        cdsStages.FieldByName('DEPT_IS_STORE');

      if ( (not (gdSelected in State)) or
           (ActiveControl <> Sender) ) and
         cdsStagesDEPT_IS_STORE.AsBoolean then
        Background:= GridSpecialColor;

      if (cdsStages.RecordCount > 0) and
         ( (GetStageNoField.AsInteger = 0) or
           ( (cdsGridData.RecNo = 1) and
             (cdsStages.RecNo = cdsStages.RecordCount) ) ) and
         (not cdsStagesDEPT_IS_STORE.AsBoolean) then
        begin
          if (gdSelected in State) and
             (ActiveControl = Sender) then
            AFont.Color:= clYellow
          else
            AFont.Color:= clRed;
        end;
    end;
end;

procedure TfmSpecificationAndXModelAbstract.btnRecursivePrintClick(
  Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(Sender as TControl, pmPrint);
end;

procedure TfmSpecificationAndXModelAbstract.btnResizeWorkspaceMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  if actMaximizeInModel.Checked then
    Abort;

  inherited;
end;

procedure TfmSpecificationAndXModelAbstract.pcMainChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;

  AllowChange:=
    (not actMaximizeInModel.Checked) and
    (not FEdittingTaskInModel) and
    (not FViewingTaskModel);
end;

procedure TfmSpecificationAndXModelAbstract.actEditStageExecute(
  Sender: TObject);
var
  AEditMode: TEditMode;
begin
  inherited;

  if GetEditStageReadOnly then
    AEditMode:= emReadOnly
  else
    AEditMode:= emEdit;

  if ShowStageEditForm(AEditMode) then
    SetOperationCount;
end;

procedure TfmSpecificationAndXModelAbstract.FormResize(Sender: TObject);
begin
  inherited;

  if actMaximizeInModel.Checked and
     (WindowState = wsMaximized) then
    begin
      actMaximizeInModel.Checked:= False;
//      btnMaximizeInModel.Down:= False;
    end;

  pnlNav.Top:= pcMain.Top + pcMain.RealTabHeight - pnlNav.Height;
end;

procedure TfmSpecificationAndXModelAbstract.FormShow(Sender: TObject);
begin
  inherited;

  grdLines3.VTitleMargin:=
    grdLines3.VTitleMargin +
    (grdLines1.DataRect.Top - grdLines3.DataRect.Top);

  FOriginalFormHeight:= Height;

  CreateDBGridSearchFor(grdLines1, tlbTopButtons, NormalizedToolbar(tlbTopButtons).Width);
  CreateDBGridSearchFor(grdLines2, tlbTopButtons, NormalizedToolbar(tlbTopButtons).Width);
  CreateDBGridSearchFor(grdLines3, tlbTopButtons, NormalizedToolbar(tlbTopButtons).Width);
  CreateDBGridSearchFor(grdStages, tlbTopButtons, NormalizedToolbar(tlbTopButtons).Width);
  CreateDBGridSearchFor(grdModel, tlbTopButtons, NormalizedToolbar(tlbTopButtons).Width);
end;

procedure TfmSpecificationAndXModelAbstract.actInsertBeforeExecute(
  Sender: TObject);
var
  i, d: Integer;
begin
  inherited;

  FInsertBeforeLastNoPos:= LastNoPos;
  FInsertBeforeNo:= GetNoField(FInsertBeforeLastNoPos).AsInteger;
  try
    PrepareNewLineData(almAddBrother);
    if ShowEditForm(emInsert) then
      UpdateParentAfterAdd
    else
      Abort;

    d:= GetNoField(LastNoPos).AsInteger - FInsertBeforeNo;
  finally
    FInsertBeforeNo:= 0;
  end;   { try }

  cdsGridData.DisableControls;
  try
    for i:= 1 to d do
      MoveLine(True);
  finally
    cdsGridData.EnableControls;
  end;   { try }

  UpdateFilteredGridData;
end;

procedure TfmSpecificationAndXModelAbstract.cdsGridDataBeforePost(
  DataSet: TDataSet);

  procedure CheckPositiveValue(AField: TField);
  begin
    with AField do
      if (not IsNull) and (AsFloat <= 0) then
        begin
          FocusControl;
          raise Exception.CreateFmt(SPositiveValueRequired, [DisplayLabel]);
        end;
  end;   { CheckPositiveValue }

begin
  inherited;

  CheckPositiveValue(cdsGridDataDETAIL_TECH_QUANTITY);
  CheckPositiveValue(cdsGridDataPRODUCT_TECH_QUANTITY);

  FPostAfterEdit:= (DataSet.State = dsEdit);

  if (FInsertBeforeNo > 0) then
    GetNoField(FInsertBeforeLastNoPos).AsInteger:= NewLineDataNo(FInsertBeforeLastNoPos);

  if not cdsGridDataPRODUCT_CODE.IsNull then
    cdsGridDataIS_COMPLETE.AsBoolean:= True;
end;

procedure TfmSpecificationAndXModelAbstract.MoveLine(MoveUp: Boolean);
var
  No: Variant;
  i: Integer;
  lnp: Integer;
  OldLastPosNo: Integer;
  NewLastPosNo: Integer;
  s: string;
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    No:= VarArrayCreate([0, MaxNoPos-1], varInteger);
    for i:= 1 to MaxNoPos do
      begin
        s:= s + Format('NO_%d; ', [i]);
        No[i-1]:= GetNoField(i).AsInteger;
      end;
    SetLength(s, Length(s) - 2);

    UpdateLocateDataSetData(s, No, cdsGridData);

    lnp:= VarArrayHighBound(No, 1);
    while (lnp >= 0) and (No[lnp] = 0) do
      Dec(lnp);
    Inc(lnp);

    OldLastPosNo:= No[lnp-1];

    if MoveUp then
      NewLastPosNo:= OldLastPosNo - 1
    else
      NewLastPosNo:= OldLastPosNo + 1;

    with cdsGridData do
      begin
        DisableControls;
        try
          Edit;
          try
            GetNoField(lnp).AsInteger:= -1;
            Post;
          except
            Cancel;
            raise;
          end;   { try }

          First;
          No[lnp-1]:= NewLastPosNo;
          Locate(s, No, []);

          Edit;
          try
            GetNoField(lnp).AsInteger:= OldLastPosNo;
            Post;
          except
            Cancel;
            raise;
          end;   { try }

          First;
          No[lnp-1]:= -1;
          Locate(s, No, []);

          Edit;
          try
            GetNoField(lnp).AsInteger:= NewLastPosNo;
            Post;
          except
            Cancel;
            raise;
          end;   { try }
        finally
          EnableControls;
        end;   { try }
      end;   { with }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try }
end;

procedure TfmSpecificationAndXModelAbstract.actLevelUpExecute(
  Sender: TObject);
begin
  inherited;
  LocateParent;
  LocateDataSet(cdsGridData, cdsFilteredGridData);
end;

procedure TfmSpecificationAndXModelAbstract.actAddStageExecute(
  Sender: TObject);
var
  SP: Integer;
begin
  inherited;

  SP:= GetStagesClientDataSet.SavePoint;

  if ShowStageEditForm(emInsert) then
    SetOperationCount
  else
    GetStagesClientDataSet.SavePoint:= SP;
end;

procedure TfmSpecificationAndXModelAbstract.actMoveUpLineExecute(
  Sender: TObject);
begin
  inherited;
  MoveLine(True);
  UpdateFilteredGridData;
end;

procedure TfmSpecificationAndXModelAbstract.actMoveDownLineExecute(
  Sender: TObject);
begin
  inherited;
  MoveLine(False);
  UpdateFilteredGridData;
end;

function TfmSpecificationAndXModelAbstract.SelectModelCell(
  SelectMovement: Boolean): Boolean;
var
  s: string;
  p: Integer;
  StageNo: Integer;
  mct: TModelColumnType;
begin
  Result:= False;

  if (grdModel.Col-1 >= FirstModelDeptColumnIndex) then
    begin
      mct:= ModelColumnType(grdModel.Col-1, FirstModelDeptColumnIndex);

      with grdModel do
        if ((not SelectMovement) and (mct in [mctDept, mctInvestedValue, mctInvestedValuePart])) or
           (SelectMovement and (mct = mctArrow)) then
          begin
            if SelectMovement then
              s:= Columns[GetArrowDeptColumn(Col-1)].Field.AsString
            else
              s:= Columns[Col-1].Field.AsString;

            if (s <> '') then
              begin
                p:= Pos(':', s);
                Assert(p > 0, 'No ":" in stage identification');

                StageNo:= StrToInt(Copy(s, 1, p-1));

                Result:= GetStagesClientDataSet.Locate(GetStageNoField.FieldName, StageNo, []);
              end;   { if }
          end;
    end;   { if }
end;

function TfmSpecificationAndXModelAbstract.SimpleLastNoPos(ADataSet: TDataSet): Integer;
begin
  Result:= 1;
  while (Result <= MaxNoPos) and (GetNoField(Result, ADataSet).AsInteger <> 0) do
    Inc(Result);
  Dec(Result);
end;

function TfmSpecificationAndXModelAbstract.GetMoveUpLineEnabled: Boolean;
begin
  Result:=
    cdsGridData.Active and
    not cdsGridData.IsEmpty and
    not cdsGridData_IS_FIRST_CHILD.AsBoolean and
    (EditMode <> emReadOnly) and
    CanModifyData;
end;

procedure TfmSpecificationAndXModelAbstract.actMoveUpLineUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetMoveUpLineEnabled;
end;

function TfmSpecificationAndXModelAbstract.GetMoveDownLineEnabled: Boolean;
begin
  Result:=
    cdsGridData.Active and
    not cdsGridData.IsEmpty and
    not cdsGridData_IS_LAST_CHILD.AsBoolean and
    (EditMode <> emReadOnly) and
    CanModifyData;
end;

procedure TfmSpecificationAndXModelAbstract.actMoveDownLineUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetMoveDownLineEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.StagesBeforeDelete(
  DataSet: TDataSet);
begin
  FDeletedModelVariantStageNo:= GetStageNoField.AsInteger;
end;

procedure TfmSpecificationAndXModelAbstract.SetStageAndOperationDeptPriceFields(
  cdsStages: TClientDataSet);
begin
  cdsStages.First;
  while not cdsStages.Eof do
    begin
      cdsStages.Edit;
      try
        cdsOperations.First;
        while not cdsOperations.Eof do
          begin
            cdsOperations.Edit;
            try
              SetOperationDeptPriceFields;

              cdsOperations.Post;
            except
              cdsOperations.Cancel;
              raise;
            end;

            cdsOperations.Next;
          end;  { while }

        cdsStages.Post;
      except
        cdsStages.Cancel;
        raise;
      end;

      cdsStages.Next;
    end;  { while }
end;

procedure TfmSpecificationAndXModelAbstract.StagesAfterDelete(
  DataSet: TDataSet);
var
  StageNo: Integer;
  StageNoField: TField;
begin
  inherited;

  ChangeAfterModelGeneration:= True;

  StageNoField:= GetStageNoField;

  if (DataSet.RecordCount > 0) and
     (FDeletedModelVariantStageNo < StageNoField.AsInteger) then
    with DataSet do
      begin
        DisableControls;
        try
          StageNo:= FDeletedModelVariantStageNo + 1;

          First;
          while Locate(StageNoField.FieldName, StageNo, []) do
            begin
              Edit;
              try
                with StageNoField do
                  AsInteger:= AsInteger - 1;

                Post;
              except
                Cancel;
                raise;
              end;   { try }

              Inc(StageNo);

              First;
            end;   { while }

          First;
          Locate(StageNoField.FieldName, FDeletedModelVariantStageNo, []);
        finally
          EnableControls;
        end;   { try }
      end;   { with }
end;

procedure TfmSpecificationAndXModelAbstract.DeleteLine(Prompt: Boolean);
var
  No: array[1..MaxNoPos+1] of Integer;        // +1 zaradi ForkNo-to
  EndPos: Integer;
  i, d: Integer;
  b: TBookmark;
  SaveCursor: TCursor;
  NewRecNo: Integer;
  ForkNoField: TField;
  ParentBookmark: TBookmark;

  function SameKey(AEndPos: Integer): Boolean;
  var
    i: Integer;
  begin
    Result:= False;
    for i:= 1 to AEndPos do
      if (No[i] <> GetNoField(i).AsInteger) then Exit;
    Result:= True;
  end;

begin
  FDeletingLine:= True;
  try
    with cdsGridData do
      begin
        DisableControls;
        try
          EndPos:= LastNoPos;

          ForkNoField:= cdsGridData.FindField('FORK_NO');

          if (Assigned(ForkNoField) and (ForkNoField.AsInteger > 0)) then
            ParentBookmark:= nil
          else
            begin
              b:= Bookmark;
              LocateParent;
              ParentBookmark:= Bookmark;
              Bookmark:= b;
            end;

          if ((ChildCount > 0) or (ForkCount > 0)) and
             ((not Assigned(ForkNoField)) or (ForkNoField.AsInteger = 0)) then
            begin
              if Prompt and
                 (MessageDlgEx(ConfirmParentDeletionMsg, mtConfirmation, mbOKCancel, 0) <> mrOK) then
                Abort;

                SaveCursor:= Screen.Cursor;
                Screen.Cursor:= crHourGlass;
                try
                  b:= Bookmark;
                  try
                    for i:= 1 to MaxNoPos + Ord(HasForkField) do
                      No[i]:= GetNoField(i).AsInteger;

                    Next;
                    while SameKey(EndPos) and not SameKey(MaxNoPos + Ord(HasForkField)) do
                      DeleteGridDataRecord;
                  finally
                    Bookmark:= b;
                  end;   { try }
                finally
                  Screen.Cursor:= SaveCursor;
                end;   { try SaveCursor }
            end
          else
            begin
              if Prompt and (not ConfirmRecordDelete) then
                Abort;
            end;

          if not cdsGridData_IS_LAST_CHILD.AsBoolean then
            begin
              NewRecNo:= RecNo;

              d:= DeleteMoves(EndPos);

              if not FRelocatingSpecification then
                for i:= 1 to d do
                  MoveLine(False);
            end   { if }
          else
            NewRecNo:= -1;

          DeleteGridDataRecord;

          if (NewRecNo >= 0) then
            RecNo:= NewRecNo;

          if (ParentBookmark <> nil) and (not FLockIsComplete) then
            begin
              b:= Bookmark;

              Bookmark:= ParentBookmark;
              if cdsGridDataIS_COMPLETE.AsBoolean then
                begin
                  Edit;
                  try
                    cdsGridDataIS_COMPLETE.AsBoolean:= False;
                    Post;
                  except
                    Cancel;
                    raise;
                  end;  { try }
                end;

              Bookmark:= b;
            end;
        finally
          EnableControls;
        end;   { try }
      end;   { with }

    ChangeAfterModelGeneration:= True;
  finally
    FDeletingLine:= False;
  end;   { try }
end;

procedure TfmSpecificationAndXModelAbstract.actDelRecordExecute(
  Sender: TObject);
begin
  DeleteLine(True);
  UpdateFilteredGridData;
end;

procedure TfmSpecificationAndXModelAbstract.SaveOldNo(EndPos: Integer;
  ADataSet: TDataSet);
var
  i: Integer;
begin
  for i:= 1 to EndPos do
    FOldNo[i]:= GetNoField(i, ADataSet).AsInteger;
end;

function TfmSpecificationAndXModelAbstract.SameAsOldNo(EndPos: Integer;
  ADataSet: TDataSet = nil): Boolean;
var
  i: Integer;
begin
  Result:= False;

  for i:= 1 to EndPos do
    if (FOldNo[i] <> GetNoField(i, ADataSet).AsInteger) then
      Exit;

  Result:= True;
end;

procedure TfmSpecificationAndXModelAbstract.ChangeNo;
var
  NewNo: array[1..MaxNoPos+1] of Integer;       // +1 zaradi fork-a
  NewNoEndPos: Integer;
  i: Integer;
  v: Variant;
  s: string;
  b: TBookmark;
begin
  NewNoEndPos:= {Simple}LastNoPos;
  for i:= 1 to NewNoEndPos do
    NewNo[i]:= GetNoField(i).AsInteger;

  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          First;

          s:= '';
          v:= VarArrayCreate([0, NewNoEndPos-1], varInteger);
          for i:= 1 to NewNoEndPos do
            begin
              s:= s + GetNoField(i).FieldName + '; ';
              v[i-1]:= FOldNo[i];
            end;   { for }
          SetLength(s, Length(s) - 2);

          First;
          while Locate(s, v, []) do
            begin
              Edit;
              try
                for i:= 1 to NewNoEndPos do
                  GetNoField(i).AsInteger:= NewNo[i];

                Post;
              except
                Cancel;
                raise;
              end;   { try }

              First;
            end;   { while }
        finally
          Bookmark:= b;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }
end;

function TfmSpecificationAndXModelAbstract.ForkCount: Integer;
begin
  Result:= 0;
end;

function TfmSpecificationAndXModelAbstract.GetDelStageEnabled: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    (not grdStages.DataSource.DataSet.IsEmpty) and
    CanModifyModel;
end;

function TfmSpecificationAndXModelAbstract.GetMoveUpStageEnabled: Boolean;
begin
  with grdStages.DataSource.DataSet do
    Result:=
      Active and
      not IsEmpty and
      (RecNo > 1) and
      (EditMode <> emReadOnly) and
      CanModifyModel;
end;

function TfmSpecificationAndXModelAbstract.GetMoveDownStageEnabled: Boolean;
begin
  with grdStages.DataSource.DataSet do
    Result:=
      Active and
      not IsEmpty and
      (RecNo < RecordCount) and
      (EditMode <> emReadOnly) and
      CanModifyModel;
end;

procedure TfmSpecificationAndXModelAbstract.CheckData(CheckOnlyLines, CheckDocs: Boolean);
var
  LevelDetail: array[0..MaxNoPos] of Integer;
  LevelProduct: array[0..MaxNoPos] of Integer;
  LevelFirstDept: array[0..MaxNoPos] of Integer;
  cdsStages: TCustomClientDataSet;
  cdsStagesSTAGE_NO: TField;
  cdsStagesDEPT_IS_STORE: TField;
  cdsStagesDEPT_CODE: TField;
  cdsStagesOUTGOING_WORKDAYS: TField;
  cdsStagesTREATMENT_WORKDAYS: TField;
  cdsStagesIS_AUTO_MOVEMENT: TField;
  cdsStagesEXTERNAL_WORK_PRICE: TField;
  cdsStages_MIN_STAGE_NO: TField;
  cdsStages_MAX_STAGE_NO: TField;
  cdsOperationsOPERATION_NO: TField;

  procedure CheckLine;
  var
    Level: Integer;
    i: Integer;
  begin
    if (not CheckOnlyLines) and (ChildCount = 0) and cdsGridDataPRODUCT_CODE.IsNull then
      begin
        pcMain.ActivePage:= tsLines2;
        ActiveControl:= grdLines2;

        raise Exception.Create(SNoProduct);
      end;

    Level:= SimpleLastNoPos;
    LevelDetail[Level]:= cdsGridDataDETAIL_CODE.AsInteger;
    LevelProduct[Level]:= cdsGridDataPRODUCT_CODE.AsInteger;

    for i:= 0 to Level-1 do
      if (LevelDetail[Level] = LevelDetail[i]) then
        raise Exception.Create(SCircularReference);

    if (Level > 0) and (LevelProduct[Level-1] > 0) then
      begin
        cdsGridData.Prior;

        pcMain.ActivePage:= tsLines2;
        ActiveControl:= grdLines2;

        raise Exception.Create(SIncorrectLineProduct);
      end;

    CheckDataCheckLine(CheckDocs);
  end;   { CheckLine }

  procedure CheckStage(APrevStageOutgoingWorkdays: Integer);

    procedure AddOperation(AOperationTypeCode: Integer);
    begin
      Assert(AOperationTypeCode in [otBegin, otEnd]);

      with cdsOperations do
        begin
          Append;
          try
            cdsOperationsOPERATION_TYPE_CODE.AsInteger:= AOperationTypeCode;
            cdsOperationsEFFORT_COEF.Clear;
            cdsOperationsPROFESSION_CODE.AsInteger:=
              LoginContext.ProductionOrganizerProfessionCode;
            cdsOperationsDEPT_CODE.AsVariant:= cdsStagesDEPT_CODE.AsVariant;

            if (AOperationTypeCode = otBegin) then
              cdsOperationsTREATMENT_BEGIN_WORKDAY_NO.AsInteger:= 1
            else
              cdsOperationsTREATMENT_BEGIN_WORKDAY_NO.AsVariant:=
                cdsStagesTREATMENT_WORKDAYS.AsVariant;

            cdsOperationsTREATMENT_WORKDAYS.AsInteger:= 1;

            if (AOperationTypeCode = otBegin) then
              NewOperationData.OperationNo:= 0
            else
              NewOperationData.OperationNo:=
                VarToInt(cdsOperations_MAX_OPERATION_NO.AsVariant) + 1;

            NewOperationData.OperationVariantNo:= 0;

            Post;
          except
            Cancel;
            raise;
          end;  { try }
        end;  { with }
    end;  { AddOperation }

  var
    Level: Integer;
    PrevMinBeginDayNo: Integer;
    PrevMaxEndDayNo: Integer;
    HasBeginOperation: Boolean;
    HasEndOperation: Boolean;
    StageTreatmentWorkdays: Integer;
    d: Integer;
    PrevOperationNo: Integer;
    NextStageDeptCode: Integer;
  begin
    try
      with cdsStages do
        begin
          if (cdsStagesSTAGE_NO.AsInteger = 0) and
             cdsStagesIS_AUTO_MOVEMENT.AsBoolean then
            raise Exception.Create(SNoAutoMovementFromStore);

          if cdsStagesIS_AUTO_MOVEMENT.AsBoolean and
             (cdsStages.RecNo < cdsStages.RecordCount) and
             not ( (cdsGridDataNO_1.AsInteger = 0) and
                   (cdsStages.RecNo = cdsStages.RecordCount - 1) ) then
            begin
              cdsStages.PreserveRecNo/
                procedure begin
                  cdsStages.Next;
                  NextStageDeptCode:= cdsStagesDEPT_CODE.AsInteger;
                end;

              if (NextStageDeptCode <> cdsStagesDEPT_CODE.AsInteger) then
                raise Exception.Create(SInvalidAutoMovementDept);
            end;

          // check for stage_no = 0 if product
          if (cdsStages.RecNo = 1) and
             (not cdsGridDataPRODUCT_CODE.IsNull) and
             (cdsStagesSTAGE_NO.AsInteger <> 0) then
            raise Exception.CreateFmt(SStageNoIsNotX, [0]);

          // check for stage_no = 1 if not product
          if (cdsStages.RecNo = 1) and
             cdsGridDataPRODUCT_CODE.IsNull and
             (cdsStagesSTAGE_NO.AsInteger <> 1) then
            raise Exception.CreateFmt(SStageNoIsNotX, [1]);

          // check for store
          if ( ( (cdsStagesSTAGE_NO.AsInteger = 0) or
                 ( (cdsGridData.RecNo = 1) and
                   (cdsStages.RecNo = RecordCount) ) ) and
               (not cdsStagesDEPT_IS_STORE.AsBoolean) ) then
            raise Exception.Create(SStageIsNotAStore);

          // check if the last dept is same as parent's first
          Level:= SimpleLastNoPos;

          if (cdsGridData.RecNo > 1) and
             (RecNo = RecordCount) and
             (cdsStagesDEPT_CODE.AsInteger <> LevelFirstDept[Level-1]) then
            raise Exception.Create(SNotSameAsParentDept);

          // check last stage outgoing workdays to be 0
          if (cdsGridData.RecNo = 1) and
             (cdsStages.RecNo = RecordCount) then
            begin
              if (cdsStagesOUTGOING_WORKDAYS.AsInteger <> 0) then
                raise Exception.Create(SLastStageOutgoingWorkdaysNotZero);
            end
          else   { if }
            begin
              // check level last stage workdays to be 0
              if (cdsGridData.RecNo > 1) and
                 (cdsStages.RecNo = RecordCount) then
                begin
                  if ( (cdsStagesOUTGOING_WORKDAYS.AsInteger <> 0) or
                       (cdsStagesTREATMENT_WORKDAYS.AsInteger <> 0) ) then
                    raise Exception.Create(SLevelLastStageWorkdaysNotZero);
                end
              else
                begin
                  // any other stage workdays must be > 0
                  if ( (cdsStagesOUTGOING_WORKDAYS.AsInteger <= 0) or
                       (cdsStagesTREATMENT_WORKDAYS.AsInteger <= 0) ) then
                    raise Exception.Create(SZeroStageWorkdays);
                end;
            end;   { if }

          if ( (cdsStagesOUTGOING_WORKDAYS.AsInteger = 0) or
               (cdsStagesSTAGE_NO.AsInteger = 0) ) and
             not cdsStagesEXTERNAL_WORK_PRICE.IsNull then
            raise Exception.Create(SExternalWorkPriceNotAllowed);

          if (RecNo = 1) then
            LevelFirstDept[Level]:= cdsStagesDEPT_CODE.AsInteger;

          if (cdsGridData.RecNo = 1) and
             (cdsStages.RecNo = RecordCount) then
            begin
              // update ModelVariant.RESULT_STORE_CODE
              if (cdsStagesDEPT_CODE.AsInteger <> ResultStoreCode) then
                ResultStoreCode:= cdsStagesDEPT_CODE.AsInteger;

              SetEnterResultStoreWorkdays(cdsStagesTREATMENT_WORKDAYS.AsInteger);
            end;

          // stage docs
          if CheckDocs and CheckSpecOrModelDocs and
             (not dmDocClient.DSFinalizedDoc(cdsStages)) then
            raise Exception.Create(SStageDocNotFinalized);

          // operacii

          if (cdsStagesSTAGE_NO.AsInteger > 0) and
             (cdsStagesTREATMENT_WORKDAYS.AsInteger > 0) and
             (cdsOperations.RecordCount = 0) then
            AddOperation(otBegin);

          if (cdsGridData.RecNo = 1) and
             (cdsStages.RecNo = cdsStages.RecordCount) then
            begin
              if (cdsOperations.RecordCount = 0) then
                AddOperation(otBegin);

              if ( (cdsOperations.RecordCount > 1) or
                 ( (cdsOperations.RecordCount = 1) and
                   (cdsOperationsOPERATION_TYPE_CODE.AsInteger <> otBegin) ) ) then
              raise Exception.Create(SWrongEndStoreOperations);
            end;

          if (cdsStagesTREATMENT_WORKDAYS.AsInteger = 0) and
             (cdsOperations.RecordCount > 0) then
            raise Exception.Create(SNoOperationsRequired);

          if (cdsStagesSTAGE_NO.AsInteger = 0) and
             (cdsOperations.RecordCount = 0) then
            AddOperation(otEnd);

          if not OperationsModel and
             (cdsStagesSTAGE_NO.AsInteger > 0) and
             ( (cdsGridDataNO_1.AsInteger > 0) or
               (cdsStages.RecNo <> cdsStages.RecordCount) ) and
             (cdsOperations.RecordCount = 1) and
             (cdsOperationsOPERATION_TYPE_CODE.AsInteger = otEnd) then
            begin
              cdsOperations.Delete;
              AddOperation(otBegin);
            end;

          if (cdsStagesSTAGE_NO.AsInteger = 0) and
             ( (cdsOperations.RecordCount > 1) or
               ( (cdsOperations.RecordCount = 1) and
                 (cdsOperationsOPERATION_TYPE_CODE.AsInteger <> otEnd) ) ) then
            raise Exception.Create(SWrongStoreOperations);

          if OperationsModel and
             (LoginContext.ProductionLevelCode = plOperation) and
             (cdsStagesSTAGE_NO.AsInteger > 0) and
             (cdsStages.RecNo <> cdsStages.RecordCount) and
             ( (cdsOperations.RecordCount = 0) or
               ( (cdsOperations.RecordCount = 1) and
                 (cdsOperationsOPERATION_TYPE_CODE.AsInteger = otBegin) ) ) then
            raise Exception.Create(SOperationsNeeded);

          if (cdsStagesSTAGE_NO.AsInteger = 1) and
             cdsGridDataPRODUCT_CODE.IsNull then
            begin
              cdsOperations.First;
              if (cdsOperationsOPERATION_TYPE_CODE.AsInteger <> otBegin) then
                raise Exception.Create(SBeginOperationRequired);
            end;

          if (cdsGridData.RecNo = 1) and
             (cdsStages.RecNo = cdsStages.RecordCount) and
             (cdsStagesTREATMENT_WORKDAYS.AsInteger <> APrevStageOutgoingWorkdays) then
            raise Exception.Create(SIncorrectResultStoreEnterWorkdays);

          with cdsOperations do
            begin
              HasBeginOperation:=
                (VarToInt(cdsOperations_MIN_OPERATION_TYPE_CODE.AsVariant) = otBegin);
              HasEndOperation:=
                (VarToInt(cdsOperations_MAX_OPERATION_TYPE_CODE.AsVariant) = otEnd);
              StageTreatmentWorkdays:=
                GetStagesClientDataSet.FieldByName('TREATMENT_WORKDAYS').AsInteger;

              if HasBeginOperation then
                begin
                  d:= Min(StageTreatmentWorkdays, VarToInt(cdsOperations_MIN_NORMAL_BEGIN_WORKDAY_NO.AsVariant));
                  if (d = 0) then
                    d:= StageTreatmentWorkdays;

                  First;
                  if (cdsOperationsTREATMENT_WORKDAYS.AsInteger <> d) then
                    begin
                      Edit;
                      try
                        cdsOperationsTREATMENT_WORKDAYS.AsInteger:= d;
                        Post;
                      except
                        Cancel;
                        raise;
                      end;  { try }
                    end;
                end;

              if HasEndOperation then
                begin
                  d:= VarToInt(cdsOperations_MAX_NORMAL_END_WORKDAY_NO.AsVariant);
                  if (d = 0) then
                    d:= IfThen(HasBeginOperation, StageTreatmentWorkdays, 1);

                  Last;
                  if (cdsOperationsTREATMENT_BEGIN_WORKDAY_NO.AsInteger <> d) or
                     (cdsOperationsTREATMENT_WORKDAYS.AsInteger <> StageTreatmentWorkdays - d + 1) then
                    begin
                      Edit;
                      try
                        cdsOperationsTREATMENT_BEGIN_WORKDAY_NO.AsInteger:= d;
                        cdsOperationsTREATMENT_WORKDAYS.AsInteger:= StageTreatmentWorkdays - d + 1;
                        Post;
                      except
                        Cancel;
                        raise;
                      end;  { try }
                    end;
                end;

              PrevMinBeginDayNo:= 0;
              PrevMaxEndDayNo:= 0;
              First;
              PrevOperationNo:= cdsOperationsOPERATION_NO.AsInteger;
              while not Eof do
                begin
                  CheckOperationWorkdays(StageTreatmentWorkdays);

                  // proverka za posledovatelni nomera
                  if (cdsOperationsOPERATION_NO.AsInteger <> PrevOperationNo) and
                     (cdsOperationsOPERATION_NO.AsInteger <> PrevOperationNo + 1) then
                    raise Exception.CreateFmt(SIncorrectOperationNo, [cdsOperationsOPERATION_NO.AsInteger]);

                  // proverka za razminavashti se dati
                  if (PrevMinBeginDayNo > VarToInt(cdsOperations_MIN_BEGIN_DAY_NO.AsVariant)) then
                    raise Exception.Create(SIncorrectOperationBegin);

                  if (PrevMaxEndDayNo > VarToInt(cdsOperations_MAX_END_DAY_NO.AsVariant)) then
                    raise Exception.Create(SIncorrectOperationEnd);

                  if (cdsGridDataNO_1.AsInteger = 0) and
                     (cdsStages.RecNo = cdsStages.RecordCount) and
                     (cdsOperations.RecNo = cdsOperations.RecordCount) and
                     (cdsOperationsIS_AUTO_SETUP.AsBoolean or cdsOperationsIS_AUTO_MOVEMENT.AsBoolean) then
                    raise Exception.Create(SLastOperationAutoMovementsNotAllowed);

                  PrevMinBeginDayNo:= VarToInt(cdsOperations_MIN_BEGIN_DAY_NO.AsVariant);
                  PrevMaxEndDayNo:= VarToInt(cdsOperations_MAX_END_DAY_NO.AsVariant);
                  PrevOperationNo:= cdsOperationsOPERATION_NO.AsInteger;
                  //

                  if (cdsOperationsOPERATION_TYPE_CODE.AsInteger = otNormal) and
                     (not cdsOperationsHAS_SPECIAL_CONTROL.AsBoolean) and
                     (VarToInt(cdsOperations_MAX_HAS_SPECIAL_CONTROL.Value) = 1) then
                    raise Exception.CreateFmt(SIncorrectHasSpecialControl,
                            [GetLineNo, cdsStagesSTAGE_NO.AsInteger, cdsOperations_SHOW_NO.AsString]);

                  // operation docs
                  if CheckDocs and CheckSpecOrModelDocs and
                     OperationsModel and
                     (not dmDocClient.DSFinalizedDoc(cdsOperations)) then
                    raise Exception.CreateFmt(SOperationDocNotFinalized, [cdsOperationsOPERATION_NO.AsInteger]);

                  CheckOperationAdditional;

                  Next;
                end;  { while }
            end;  { with }
        end;   { with }

      CheckStageAdditional;
    except
      ActivateStagesGrid;
      raise;
    end;  { try }
  end;   { CheckStage }

var
  SaveCursor: TCursor;
  SpecBookmark: TBookmark;
  LevelNextStageTreatmentWorkdays: array[0..MaxNoPos] of Integer;
  Level: Integer;
  PrevStageOutgoingWorkdays: Integer;
  DetailFinalizedDocs: Boolean;
  NoFinalizedDetailsNoAsText: string;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    FCheckingModel:= True;
    try
      try
        cdsStages:= GetStagesClientDataSet;
        cdsStagesSTAGE_NO:= GetStageNoField;
        cdsStagesDEPT_IS_STORE:= cdsStages.FieldByName('DEPT_IS_STORE');
        cdsStagesDEPT_CODE:= cdsStages.FieldByName('DEPT_CODE');
        cdsStagesOUTGOING_WORKDAYS:= cdsStages.FieldByName('OUTGOING_WORKDAYS');
        cdsStagesTREATMENT_WORKDAYS:= cdsStages.FieldByName('TREATMENT_WORKDAYS');
        cdsStagesIS_AUTO_MOVEMENT:= cdsStages.FieldByName('IS_AUTO_MOVEMENT');
        cdsStagesEXTERNAL_WORK_PRICE:= cdsStages.FieldByName('EXTERNAL_WORK_PRICE');

        cdsStages_MIN_STAGE_NO:= GetMinStageNoField;
        cdsStages_MAX_STAGE_NO:= GetMaxStageNoField;

        cdsOperationsOPERATION_NO:= GetOperationNoField;

        CheckCdsDataRequiredFields;

        CheckDataBeforeCheckLines(CheckOnlyLines);

        with cdsGridData do
          begin
            DisableControls;
            try
              cdsStages.DisableControls;
              try
                SpecBookmark:= Bookmark;

                DetailFinalizedDocs:= True;
                NoFinalizedDetailsNoAsText:= '';
                First;
                while not EOF do
                  begin
                    CheckLine;

                    if CheckDocs and
                       not dmDocClient.ProductFinalizedDoc(cdsGridDataDETAIL_CODE.AsInteger) then
                      begin
                        DetailFinalizedDocs:= False;
                        NoFinalizedDetailsNoAsText:= NoFinalizedDetailsNoAsText + cdsGridDataNO_AS_TEXT.AsString + SLineBreak;
                      end;

                    if (not CheckOnlyLines) then
                      begin
                        Level:= SimpleLastNoPos;

                        if (cdsStages.RecordCount < 2) then
                          begin
                            ActivateStagesGrid;
                            raise Exception.Create(SNotEnoughStages);
                          end;

                        if (VarToInt(cdsStages_MAX_STAGE_NO.AsVariant) - VarToInt(cdsStages_MIN_STAGE_NO.AsVariant) + 1 <> cdsStages.RecordCount) then
                          begin
                            ActivateStagesGrid;
                            raise Exception.Create(SIncorrectStages);
                          end;

                        PrevStageOutgoingWorkdays:= 0;
                        cdsStages.First;
                        while not cdsStages.EOF do
                          begin
                            CheckStage(PrevStageOutgoingWorkdays);
                            PrevStageOutgoingWorkdays:= cdsStagesOUTGOING_WORKDAYS.AsInteger;

                            cdsStages.Next;
                          end;   { while }


                        // check OUTGOING_WORKDAYS <= next.TREATMENT_WORKDAYS
                        cdsStages.Last;
                        while not cdsStages.BOF do
                          begin
                            if (cdsStages.RecNo = cdsStages.RecordCount) then
                              begin
                                if (RecNo = 1) then  // last stage
                                  LevelNextStageTreatmentWorkdays[Level]:=
                                    cdsStagesTREATMENT_WORKDAYS.AsInteger
                                else   { if }  // level last stage
                                  LevelNextStageTreatmentWorkdays[Level]:=
                                    LevelNextStageTreatmentWorkdays[Level-1];
                              end
                            else   { if }
                              begin
                                if (cdsStagesOUTGOING_WORKDAYS.AsInteger >
                                    LevelNextStageTreatmentWorkdays[Level]) then
                                  begin
                                    ActivateStagesGrid;
                                    raise Exception.CreateFmt(SIncorrectOutgoingWorkdays, [
                                            LevelNextStageTreatmentWorkdays[Level]]);
                                  end;

                                LevelNextStageTreatmentWorkdays[Level]:=
                                  cdsStagesTREATMENT_WORKDAYS.AsInteger;
                              end;   { if }

                            cdsStages.Prior;
                          end;   { while }
                      end;   { if }

                    Next;
                  end;   { while }

                if CheckSpecOrModelDocs and (not DetailFinalizedDocs) then
                  begin
                    if (MessageDlgFmtEx(SDetailDocsNotFinalized, [NoFinalizedDetailsNoAsText],
                        mtWarning, [mbOK, mbCancel], 0) <> mrOk) then
                      Abort;
                  end;

                Bookmark:= SpecBookmark;
              finally
                cdsStages.EnableControls;
              end;   { try }
            finally
              EnableControls;
            end;   { try }
          end;   { with }
      except
        LocateDataSet(cdsGridData, cdsFilteredGridData);
        RestoreForm;
        raise;
      end;   { try }
    finally
      FCheckingModel:= False;
    end;   { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

procedure TfmSpecificationAndXModelAbstract.CheckCdsDataRequiredFields;
begin
// do nothing
end;

function TfmSpecificationAndXModelAbstract.GetAddBrotherEnabled: Boolean;
begin
  Result:=
    cdsGridData.Active and
    (cdsGridData.RecNo > 1) and
    CanModifyData and
    (EditMode <> emReadOnly);
end;

function TfmSpecificationAndXModelAbstract.GetInsertBeforeEnabled: Boolean;
begin
  Result:=
    cdsGridData.Active and
    (cdsGridData.RecNo > 1) and
    (EditMode <> emReadOnly) and
    CanModifyData;
end;

function TfmSpecificationAndXModelAbstract.GetInsertSpecificationEnabled: Boolean;
begin
  Result:=
    cdsGridData.Active and
    (cdsGridData.RecNo > 1) and
    (EditMode <> emReadOnly) and
    CanModifyData;
end;

function TfmSpecificationAndXModelAbstract.GetInvestedValueVisible: Boolean;
begin
  Result:= actToggleInvestedValue.Checked;
end;

procedure TfmSpecificationAndXModelAbstract.actCheckModelExecute(Sender: TObject);
begin
  inherited;

  CheckData(False, True);
  ShowMessageEx(GetModelIsCorrectMsg);
end;

procedure TfmSpecificationAndXModelAbstract.AddBeforeDirFieldDefs(
  Index: Integer);
begin
// do nothing
end;

procedure TfmSpecificationAndXModelAbstract.SetModelBeforeDirFields(
  Index: Integer);
begin
// do nothing
end;

procedure TfmSpecificationAndXModelAbstract.FillModelBeforeDirFields(
  StageNo: Integer);
begin
// do nothing
end;

procedure TfmSpecificationAndXModelAbstract.BeforeGenerateModel;
begin
// do nothing
end;

procedure TfmSpecificationAndXModelAbstract.AfterGenerateModel;
begin
// do nothing
end;

procedure TfmSpecificationAndXModelAbstract.CheckDataBeforeCheckLines(CheckOnlyLines: Boolean);
begin
// do nothing
end;

procedure TfmSpecificationAndXModelAbstract.AddBeforeDirPrintColumns(
  Idx: Integer);
begin
// do nothing
end;

procedure TfmSpecificationAndXModelAbstract.SetModelGridColumns;
begin
// do nothing
end;

procedure TfmSpecificationAndXModelAbstract.actAddTaskUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:= GetAddTaskEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actAddTaskExecute(
  Sender: TObject);
begin
  inherited;
  if not ShowTaskEditForm(emInsert) then
    Abort;
end;

procedure TfmSpecificationAndXModelAbstract.actDelTaskUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:= GetDelTaskEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actDelTaskExecute(
  Sender: TObject);
begin
  inherited;

  if ConfirmRecordDelete then
    GetTasksClientDataSet.Delete;
end;

procedure TfmSpecificationAndXModelAbstract.actEditTaskUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:= GetEditTaskEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actEditTaskExecute(
  Sender: TObject);
begin
  inherited;
  ShowTaskEditForm(emEdit);
end;

function TfmSpecificationAndXModelAbstract.GetAddTaskEnabled: Boolean;
begin
  with GetTasksClientDataSet do
    Result:=
      CanModifyModel and
      (EditMode <> emReadOnly) and
      Active;
end;

function TfmSpecificationAndXModelAbstract.GetEditTaskEnabled: Boolean;
begin
  with GetTasksClientDataSet do
    Result:=
      CanModifyModel and
      (EditMode <> emReadOnly) and
      Active and
      not (Bof and Eof);
end;

function TfmSpecificationAndXModelAbstract.GetDelTaskEnabled: Boolean;
begin
  with GetTasksClientDataSet do
    Result:=
      CanModifyModel and
      (EditMode <> emReadOnly) and
      Active and
      not (Bof and Eof);
end;

procedure TfmSpecificationAndXModelAbstract.actAddTaskDeptUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetAddTaskDeptEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actAddTaskDeptExecute(
  Sender: TObject);
var
  DeptCode: Integer;
begin
  inherited;

  if ShiftIsPressed then
    begin
      DeptCode:= TfmDeptsTreeEditor.ShowForm;

      if (DeptCode > 0) then
        with GetTaskDeptsClientDataSet do
          begin
            DisableControls;
            try
              Append;
              try
                FieldByName('DEPT_CODE').AsInteger:= DeptCode;
                Post;
              except
                Cancel;
                raise;
              end;   { try }
            finally
              EnableControls;
            end;   { try }
          end;   { with }
    end
  else   { if }
    ShowTaskDeptEditForm(emInsert);
end;

procedure TfmSpecificationAndXModelAbstract.actDelTaskDeptUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetDelTaskDeptEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actDelTaskDeptExecute(
  Sender: TObject);
begin
  inherited;
  if ConfirmRecordDelete then
    GetTaskDeptsClientDataSet.Delete;
end;

procedure TfmSpecificationAndXModelAbstract.actEditTaskDeptUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetEditTaskDeptEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actEditTaskDeptExecute(
  Sender: TObject);
var
  DeptCode: Integer;
  DeptCodeField: TField;
begin
  inherited;

  if ShiftIsPressed then
    with GetTaskDeptsClientDataSet do
      begin
        DeptCodeField:= FieldByName('DEPT_CODE');
        DeptCode:= TfmDeptsTreeEditor.ShowForm(nil, DeptCodeField.AsInteger);

        if (DeptCode > 0) and (DeptCode <> DeptCodeField.AsInteger) then
          begin
            DisableControls;
            try
              Edit;
              try
                DeptCodeField.AsInteger:= DeptCode;
                Post;
              except
                Cancel;
                raise;
              end;   { try }
            finally
              EnableControls;
            end;   { try }
          end;   { with }
      end
  else   { if }
    ShowTaskDeptEditForm(emEdit);
end;

function TfmSpecificationAndXModelAbstract.ShowTaskDeptEditForm(
  AEditMode: TEditMode): Boolean;
begin
  Result:= TfmSpecAndXModelTaskDeptEdit.ShowForm(dmDocClient, GetTaskDeptsClientDataSet, AEditMode);
end;

function TfmSpecificationAndXModelAbstract.GetAddTaskDeptEnabled: Boolean;
begin
  Result:=
    CanModifyModel and
    (EditMode <> emReadOnly) and
    GetTaskDeptsClientDataSet.Active and
    not (GetTasksClientDataSet.Bof and GetTasksClientDataSet.Eof);
end;

function TfmSpecificationAndXModelAbstract.GetDelTaskDeptEnabled: Boolean;
begin
  Result:=
    CanModifyModel and
    (EditMode <> emReadOnly) and
    GetTaskDeptsClientDataSet.Active and
    not (GetTaskDeptsClientDataSet.Bof and GetTaskDeptsClientDataSet.Eof) and
    not (GetTasksClientDataSet.Bof and GetTasksClientDataSet.Eof);
end;

function TfmSpecificationAndXModelAbstract.GetEditTaskDeptEnabled: Boolean;
begin
  Result:=
    CanModifyModel and
    (EditMode <> emReadOnly) and
    GetTaskDeptsClientDataSet.Active and
    not (GetTaskDeptsClientDataSet.Bof and GetTaskDeptsClientDataSet.Eof) and
    not (GetTasksClientDataSet.Bof and GetTasksClientDataSet.Eof);
end;

procedure TfmSpecificationAndXModelAbstract.grdTasksDblClick(
  Sender: TObject);
begin
  inherited;

  if not actEditTask.Execute then
    actAddTask.Execute;
end;

procedure TfmSpecificationAndXModelAbstract.grdTaskDeptsDblClick(
  Sender: TObject);
begin
  inherited;

  if not actEditTaskDept.Execute then
    actAddTaskDept.Execute;
end;

procedure TfmSpecificationAndXModelAbstract.actEditTaskInModelUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetEditTaskEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actEditTaskInModelExecute(
  Sender: TObject);
var
  cdsTasks: TCustomClientDataSet;
  cdsTaskDepts: TCustomClientDataSet;
  TasksBookmark: TBookmark;
  TaskDeptsBookmark: TBookmark;
  DeptIdentifiers: TStringList;
  s: string;
begin
  inherited;

  FTaskDeptIdentifiers.Clear;
  FOtherTasksDeptIdentifiers.Clear;

  cdsTasks:= GetTasksClientDataSet;
  cdsTaskDepts:= GetTaskDeptsClientDataSet;

  cdsTasks.DisableControls;
  try
    cdsTaskDepts.DisableControls;
    try
      TasksBookmark:= cdsTasks.Bookmark;
      TaskDeptsBookmark:= cdsTaskDepts.Bookmark;
      try
        cdsTasks.First;
        while not cdsTasks.Eof do
          begin
            if (cdsTasks.Bookmark = TasksBookmark) then
              DeptIdentifiers:= FTaskDeptIdentifiers
            else
              DeptIdentifiers:= FOtherTasksDeptIdentifiers;

            cdsTaskDepts.First;
            while not cdsTaskDepts.Eof do
              begin
                s:= cdsTaskDepts.FieldByName('DEPT_IDENTIFIER').AsString;

                if (DeptIdentifiers.IndexOf(s) < 0)  then
                  DeptIdentifiers.Add(s);

                cdsTaskDepts.Next;
              end;   { while }

            cdsTasks.Next;
          end;   { while }
      finally
        cdsTasks.Bookmark:= TasksBookmark;
        cdsTaskDepts.Bookmark:= TaskDeptsBookmark;
      end;   { try }
    finally
      cdsTaskDepts.EnableControls;
    end;   { try }
  finally
    cdsTasks.EnableControls;
  end;   { try }


  GenerateModel;

  FEdittingTaskInModel:= True;
  actForm.Update;

  pcMain.ActivePage:= tsModel;
  ActiveControl:= grdModel;
end;

procedure TfmSpecificationAndXModelAbstract.actPrintAllTasksUpdate(
  Sender: TObject);
//var
//  cds: TCustomClientDataSet;
begin
  inherited;

// sled tozi red ako (cds.BOF and cds.EOF) imame (cds.RecordCount = 1)
// mnogo interesen bug, deto ebe mamata na specifikaciite
//  cds:= GetTasksClientDataSet;

  with GetTasksClientDataSet do
    (Sender as TAction).Enabled:=
      Active and not (Bof and Eof);
end;

procedure TfmSpecificationAndXModelAbstract.actPrintAllTasksExecute(
  Sender: TObject);
begin
  inherited;
  PrintTasks;
end;

function TfmSpecificationAndXModelAbstract.GetbtnMaximizeInModelDown: Boolean;
begin
  Result:= btnMaximizeInModel.Down;
end;

procedure TfmSpecificationAndXModelAbstract.SetbtnMaximizeInModelDown(
  const Value: Boolean);
begin
  btnMaximizeInModel.Down:= Value;
  btnMaximizeInModel2.Down:= Value;
end;

procedure TfmSpecificationAndXModelAbstract.actFormUpdate(Sender: TObject);
begin
  inherited;

  pnlModelControls.Visible:= (not FEdittingTaskInModel) and (not FViewingTaskModel);
  pnlModelTaskEdit.Visible:= FEdittingTaskInModel;
  pnlTaskModelTop.Visible:= FViewingTaskModel;

  udShowLevel.Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 1);

  btnDetailDocumentation.Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    (not cdsGridDataDETAIL_CODE.IsNull) and
    DataGridVisible and
    (pcMain.ActivePage <> tsLines2);

  btnProductDocumentation.Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0) and
    (not cdsGridDataPRODUCT_CODE.IsNull) and
    DataGridVisible and
    (pcMain.ActivePage = tsLines2);
end;

procedure TfmSpecificationAndXModelAbstract.actEditTaskInModelOKExecute(
  Sender: TObject);
var
  b: TBookmark;
  DeptIdentifier: string;
  idx: Integer;
  i: Integer;
  SaveCursor: TCursor;
  WasEmpty: Boolean;

  procedure AppendDept(ADeptIdentifier: string);
  begin
    with GetTaskDeptsClientDataSet do
      begin
        Append;
        try
          FieldByName('DEPT_CODE').AsInteger:=
            dmMain.SvrDeptsTree.GetDeptID(ADeptIdentifier);
          Post;
        except
          Cancel;
          raise;
        end;   { try }
      end;   { with }
  end;

begin
  inherited;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    with GetTaskDeptsClientDataSet do
      begin
        DisableControls;
        try
          WasEmpty:= (RecordCount = 0);
          b:= Bookmark;
          try
            First;
            while not EOF do
              begin
                DeptIdentifier:= FieldByName('DEPT_IDENTIFIER').AsString;
                idx:= FTaskDeptIdentifiers.IndexOf(DeptIdentifier);

                if (idx = -1) then
                  Delete
                else   { if }
                  begin
                    FTaskDeptIdentifiers.Delete(idx);
                    Next;
                  end;
              end;   { while }

            for i:= 0 to FTaskDeptIdentifiers.Count - 1 do
              AppendDept(FTaskDeptIdentifiers[i]);
          finally
            if WasEmpty then
              First
            else
              try
                Bookmark:= b;
              except
                First;
              end;  { try }
          end;   { try }
        finally
          EnableControls;
        end;   { try }
      end;   { with }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }

  EndEdittingTaskInModel;
end;

procedure TfmSpecificationAndXModelAbstract.actEditTaskInModelCancelExecute(
  Sender: TObject);
begin
  inherited;
  EndEdittingTaskInModel;
end;

procedure TfmSpecificationAndXModelAbstract.ActivateTasksGrid;
begin
  pcMain.ActivePage:= tsTasks;
  ActiveControl:= grdTasks;
end;

function TfmSpecificationAndXModelAbstract.CanModifyData: Boolean;
begin
  Result:=
    (EditMode <> emReadOnly) and
    (not FEdittingTaskInModel);
end;

procedure TfmSpecificationAndXModelAbstract.Finalize;
begin
  inherited;
  FreeAndNil(FTaskDeptIdentifiers);
  FreeAndNil(FOtherTasksDeptIdentifiers);
end;

procedure TfmSpecificationAndXModelAbstract.PrintRecursiveReport(
  APrintOnA3, APrintNotes, APrintProductNos, APrintInvestedValues: Boolean);
begin
  Assert(Assigned(RecursiveReportClass));
  RecursiveReportClass.PrintReport(cdsRecursivePrint, cdsData, APrintOnA3, APrintProductNos, APrintNotes, StructureCoef.DisplayText);
end;

procedure TfmSpecificationAndXModelAbstract.EndEdittingTaskInModel;
begin
  RestoreForm;
  FEdittingTaskInModel:= False;
  ChangeAfterModelGeneration:= True;
  ActivateTasksGrid;
end;

procedure TfmSpecificationAndXModelAbstract.GenerateModelTasks;
var
  SaveCursor: TCursor;
  cdsStages: TCustomClientDataSet;
  cdsTasks: TCustomClientDataSet;
  cdsTaskDepts: TCustomClientDataSet;
  LinesBookmark: TBookmark;
  StagesBookmark: TBookmark;
  TasksBookmark: TBookmark;
  TaskDeptsBookmark: TBookmark;
  cdsStagesDEPT_CODE: TField;
  cdsStagesSTAGE_NO: TField;
  cdsStagesOUTGOING_WORKDAYS: TField;
  cdsStagesTOTAL_TREATMENT_WORKDAYS: TField;
  cdsTaskDeptsDEPT_CODE: TField;
  ProductionEndDate: TDateTime;

  procedure AddStageToModelTasks;
  var
    FromDeptCode: Integer;
    FromStageIdentifier: string;
    FromDeptOutgoingWorkdays: Integer;
    ToDeptCode: Integer;
    ToStageIdentifier: string;
    ToDeptTotalTreatmentWorkdays: Integer;
    DeptBeginDate: TDateTime;
  begin
    if (cdsStages.RecNo = 1) then
      begin
        FromDeptCode:= 0;
        FromStageIdentifier:= '';
        FromDeptOutgoingWorkdays:= 0;
      end
    else   { if }
      begin
        cdsStages.Prior;
        try
          FromDeptCode:= cdsStagesDEPT_CODE.AsInteger;
          FromStageIdentifier:= GetModelStage(False, False);
          FromDeptOutgoingWorkdays:= cdsStagesOUTGOING_WORKDAYS.AsInteger;
        finally
          cdsStages.Next;
        end;   { try }
      end;   { if }

    if (cdsStages.RecNo = cdsStages.RecordCount) then
      begin
        ToDeptCode:= 0;
        ToStageIdentifier:= '';
        ToDeptTotalTreatmentWorkdays:= 0;
      end
    else   { if }
      begin
        cdsStages.Next;
        try
          ToDeptCode:= cdsStagesDEPT_CODE.AsInteger;
          ToStageIdentifier:= GetModelStage(False, False);
          ToDeptTotalTreatmentWorkdays:= cdsStagesTOTAL_TREATMENT_WORKDAYS.AsInteger;
        finally
          cdsStages.Prior;
        end;   { try }
      end;   { if }

    cdsModelTasks.Append;
    try
      AssignFields(cdsGridData, cdsModelTasks);

      if (FromDeptCode > 0) then
        begin
          cdsModelTasksFROM_DEPT_CODE.AsInteger:= FromDeptCode;
          cdsModelTasksFROM_STAGE_IDENTIFIER.AsString:= FromStageIdentifier;
        end;   { if }

      cdsModelTasksDEPT_CODE.AsInteger:= cdsStagesDEPT_CODE.AsInteger;
      cdsModelTasksSTAGE_IDENTIFIER.AsString:= GetModelStage(False, False);

      if (ToDeptCode > 0) then
        begin
          cdsModelTasksTO_DEPT_CODE.AsInteger:= ToDeptCode;
          cdsModelTasksTO_STAGE_IDENTIFIER.AsString:= ToStageIdentifier;
        end;   { if }

      DeptBeginDate:=
        ModelTaskDeptBeginDate(ProductionEndDate, cdsStagesTOTAL_TREATMENT_WORKDAYS.AsInteger);

      cdsModelTasksDEPT_BEGIN_DATE.AsDateTime:= DeptBeginDate;

      cdsModelTasksLINE_LEVEL.AsInteger:= MaxNoPos - SimpleLastNoPos;

      if (FromDeptCode > 0) then
        cdsModelTasksFROM_ARROW.AsString:= RightArrow;

      if (ToDeptCode > 0) then
        cdsModelTasksTO_ARROW.AsString:= RightArrow;

      cdsModelTasksSTAGE_NO.AsInteger:= cdsStagesSTAGE_NO.AsInteger;

      GenerateModelTasksAddFields(
        FromDeptOutgoingWorkdays,
        ToDeptTotalTreatmentWorkdays,
        DeptBeginDate,
        ProductionEndDate
      );

      cdsModelTasks.Post;
    except
      cdsModelTasks.Cancel;
      raise;
    end;   { try }
  end;  { AddStageToModelTasks }

begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsStages:= GetStagesClientDataSet;
    cdsTasks:= GetTasksClientDataSet;
    cdsTaskDepts:= GetTaskDeptsClientDataSet;

    cdsStagesDEPT_CODE:= cdsStages.FieldByName('DEPT_CODE');
    cdsStagesSTAGE_NO:= GetStageNoField;
    cdsStagesOUTGOING_WORKDAYS:= cdsStages.FieldByName('OUTGOING_WORKDAYS');
    cdsStagesTOTAL_TREATMENT_WORKDAYS:= cdsStages.FieldByName('TOTAL_TREATMENT_WORKDAYS');
    cdsTaskDeptsDEPT_CODE:= cdsTaskDepts.FieldByName('DEPT_CODE');

    ProductionEndDate:= GetProductionEndDate;

    cdsGridData.DisableControls;
    cdsStages.DisableControls;
    cdsTasks.DisableControls;
    cdsTaskDepts.DisableControls;
    try
      LinesBookmark:= cdsGridData.Bookmark;
      StagesBookmark:= cdsStages.Bookmark;
      TasksBookmark:= cdsTasks.Bookmark;
      TaskDeptsBookmark:= cdsTaskDepts.Bookmark;
      try
        cdsGridData.First;
        while not cdsGridData.EOF do
          begin
            cdsStages.First;
            while not cdsStages.EOF do
              begin
                cdsTasks.First;
                while not cdsTasks.EOF do
                  begin
                    cdsTaskDepts.First;
                    while not cdsTaskDepts.EOF do
                      begin
                        if (cdsStagesDEPT_CODE.AsInteger = cdsTaskDeptsDEPT_CODE.AsInteger) and
                           (cdsStagesSTAGE_NO.AsInteger > 0) and
                           not ( (cdsGridData.RecNo = 1) and
                                 (cdsStages.RecNo = cdsStages.RecordCount) ) then
                          AddStageToModelTasks;

                        cdsTaskDepts.Next;
                      end;  { while }

                    cdsTasks.Next;
                  end;  { while }

                cdsStages.Next;
              end;  { while }

            cdsGridData.Next;
          end;  { while }
      finally
        cdsGridData.Bookmark:= LinesBookmark;
        cdsStages.Bookmark:= StagesBookmark;
        cdsTasks.Bookmark:= TasksBookmark;
        cdsTaskDepts.Bookmark:= TaskDeptsBookmark;
      end;  { try }
    finally
      cdsTaskDepts.EnableControls;
      cdsTasks.EnableControls;
      cdsStages.EnableControls;
      cdsGridData.EnableControls;
    end;  { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;  { try }
end;

function TfmSpecificationAndXModelAbstract.GetModelStage(InvestedValue, InvestedValuePart: Boolean): string;
var
  cdsStages: TCustomClientDataSet;
  cdsStagesTREATMENT_WORKDAYS: TField;
  cdsStagesOUTGOING_WORKDAYS: TField;
  iv: Real;
  StageNo: Integer;
begin
  cdsStages:= GetStagesClientDataSet;
  cdsStagesTREATMENT_WORKDAYS:= cdsStages.FieldByName('TREATMENT_WORKDAYS');
  cdsStagesOUTGOING_WORKDAYS:= cdsStages.FieldByName('OUTGOING_WORKDAYS');

  StageNo:= GetStageNoField.AsInteger;

  Result:=
    Format(StageDeptFormat, [
      StageNo,
      cdsStages.FieldByName('DEPT_IDENTIFIER').AsString]);

  if (cdsStagesTREATMENT_WORKDAYS.AsInteger <> 0) or
     (cdsStagesOUTGOING_WORKDAYS.AsInteger <> 0) then
    begin
      if InvestedValue then
        begin
          LocateStageInvestedValue;

          if InvestedValueFilter.Aggregated then
            iv:= cdsStageInvestedValuesAGGREGATED_INVESTED_VALUE.AsFloat
          else
            iv:= cdsStageInvestedValuesINVESTED_VALUE.AsFloat;

          if InvestedValueFilter.Aggregated or (StageNo = 0) then
            iv:= iv + cdsStageInvestedValuesPRODUCT_INVESTED_VALUE.AsFloat;

          if InvestedValuePart then
            begin
              if (FTotalInvestedValue.Value <> 0) then
                iv:= (iv / FTotalInvestedValue.Value) * 100;

              Result:= Result + Format(SInvestedValuePartFormat, [iv]);
            end
          else
            Result:= Result + Format(SInvestedValueFormat, [iv]);
        end
      else  { if }
        begin
          Result:= Result +
            Format(GetStageDaysFormat, [
              cdsStagesTREATMENT_WORKDAYS.AsInteger,
              cdsStagesOUTGOING_WORKDAYS.AsInteger]);
        end;  { if }
    end;

  Result:= Result + ' ';

  if (VarToInt(cdsOperations_STAGE_HAS_SPECIAL_CONTROL.AsVariant) > 0) then
    Result:= Result + '!';

  if cdsStages.FieldByName('HAS_DOCUMENTATION').AsBoolean then
    Result:= Result + '*';
end;

function TfmSpecificationAndXModelAbstract.GetModelStageInvestedValueIsIncomplete: Boolean;
begin
  LocateStageInvestedValue;

  if InvestedValueFilter.Aggregated then
    Result:= cdsStageInvestedValuesAGGREGATED_INVESTED_VALUE_IS_INCOMPLETE.AsBoolean
  else
    Result:= cdsStageInvestedValuesINVESTED_VALUE_IS_INCOMPLETE.AsBoolean;

  if InvestedValueFilter.Aggregated or (GetStageNoField.AsInteger = 0) then
    Result:= Result or cdsStageInvestedValuesPRODUCT_INVESTED_VALUE_IS_INCOMPLETE.AsBoolean;
end;

procedure TfmSpecificationAndXModelAbstract.GenerateModelTasksAddFields(
  FromDeptOutgoingWorkdays, ToDeptTotalTreatmentWorkdays: Integer;
  DeptBeginDate, ProductionEndDate: TDateTime);
begin
// do nothing
end;

procedure TfmSpecificationAndXModelAbstract.PrintModel;
var
  b: TBookmark;
  SavePage: TPrinterPage;
begin
  SavePage:= SetUpPrinter(DMPAPER_A3, poLandscape, PrinterPreview.Printer);
  try
    with cdsModel do
      begin
        b:= Bookmark;
        try
          First;

          DisableControls;
          try
            pgdModel.PreviewModal;
          finally
            EnableControls;
          end;  { try }
        finally
          Bookmark:= b;
        end;  { try }
      end;  { with }
  finally
    SetUpPrinter(SavePage.PaperSize, SavePage.Orientation, PrinterPreview.Printer);
  end;   { try }

//  if not FViewingTaskModel then         // ne shtem go veche
//    actPrintAllTasks.Execute;
end;

procedure TfmSpecificationAndXModelAbstract.CheckDataCheckLine(CheckDocs: Boolean);
begin
// do nothing
end;

function TfmSpecificationAndXModelAbstract.GetAddBrotherSpecificationEnabled: Boolean;
begin
  Result:=
    cdsGridData.Active and
    (cdsGridData.RecNo > 1) and
    CanModifyData and
    (EditMode <> emReadOnly);
end;

procedure TfmSpecificationAndXModelAbstract.actAddBrotherSpecificationUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= GetAddBrotherSpecificationEnabled;
end;

procedure TfmSpecificationAndXModelAbstract.actAddBrotherSpecificationExecute(
  Sender: TObject);
var
  b: TBookmark;
begin
  inherited;

  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          LocateParent;
          actAddSpecification.Execute;
        except
          Bookmark:= b;
          raise;
        end;   { try }
      finally
        EnableControls;
      end;   { try }
    end;   { with }

  UpdateFilteredGridData;
end;

procedure TfmSpecificationAndXModelAbstract.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;

  FNewOperationData:= TNewOperationData.Create;
  FInvestedValueFilter:= TInvestedValueFilter.Create;
  FLastSetLineAndStageAndOperationDeptPriceFieldsDate:= FInvestedValueFilter.InvestedValueDate;
  LoadLabourAndOrganizationCostCoef(FInvestedValueFilter);

  FLocatingDataSets:= TList<TDataSet>.Create;
  FShrunkBookmarks:= TList<TBookmark>.Create;
  FHiddenBookmarks:= TList<TBookmark>.Create;

  FShowLevel:= udShowLevel.Position;

  FMaxNos:= Null;

  FStageDatesColumnWidth:= StageDatesColumnWidth;

  for i:= 1 to MaxNoPos do
    begin
      FcdsGridDataNoFields[i]:= cdsGridData.FieldByName(Format('NO_%d', [i]));
      FMaxNoFields[i]:= cdsGridData.FieldByName(Format('_MAX_NO_%d', [i]));
    end;

  FChildCount:= TStringList.Create;
  FForkCount:= TStringList.Create;

  pcMain.ActivePage:= tsLines1;

  StructureCoef:= TStructureCoef.Create;

  cdsDeptPricesCache.CreateDataSet;
  cdsProductPricesCache.CreateDataSet;

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisibleAndShowInvestedValues,
    [ cdsGridDataPRODUCT_SECONDARY_SINGLE_PRICE,
      cdsGridDataPRODUCT_SECONDARY_TOTAL_PRICE,
      cdsRecursivePrintPRODUCT_SECONDARY_SINGLE_PRICE]);

  RegisterFieldsTextVisibility(
    IsHighLevelInvestedValueVisible,
    [ cdsOperationsHOUR_PRICE,
      cdsOperationsSETUP_HOUR_PRICE]);

  RegisterFieldTextVisibility(IsInvestedValueVisibleAndShowInvestedValues, cdsGridData_PRODUCTS_INVESTED_VALUE);
end;

procedure TfmSpecificationAndXModelAbstract.actResizeFormHeightExecute(
  Sender: TObject);
const
  RowHeight = 18;
var
  WorkArea: TRect;
  NewHeight: Integer;
begin
  inherited;

  if actMaximizeInModel.Checked then
    Abort;

  with Sender as TAction do
    begin
      Checked:= not Checked;

      WorkArea:= GetWorkArea;

      if Checked then
        begin
          FSaveFormTop:= Top;

          NewHeight:= ((WorkArea.Bottom - WorkArea.Top - FOriginalFormHeight) div RowHeight) * RowHeight +
                      FOriginalFormHeight;

          Height:= NewHeight;
          Top:= WorkArea.Top + (WorkArea.Bottom - WorkArea.Top - NewHeight) div 2;
        end
      else   { if }
        begin
          Height:= FOriginalFormHeight;
          Top:= FSaveFormTop;
        end;   { if }
    end;   { with }
end;

procedure TfmSpecificationAndXModelAbstract.UpdateFilteredGridData(ACalcNoAsText: Boolean);
var
  LocateData: Variant;
  LocateFields: string;

  procedure SaveShrunkAndHiddenFlags;
  var
    Searched: Boolean;
    Located: Boolean;
    IsShrunkField: TField;
    IsHiddenField: TField;
  begin
    FShrunkBookmarks.Clear;
    FHiddenBookmarks.Clear;

    with cdsFilteredGridData do
      if Active then
        begin
          IsShrunkField:= FieldByName(IsShrunkFieldName);
          IsHiddenField:= FieldByName(IsHiddenFieldName);

          First;
          while not Eof do
            begin
              Located:= False;
              Searched:= False;

              if IsShrunkField.AsBoolean then
                begin
                  if not Searched then
                    begin
                      Searched:= True;
                      Located:= LocateDataSet(cdsFilteredGridData, cdsGridData);
                    end;

                  if Located then
                    FShrunkBookmarks.Add(cdsGridData.Bookmark);
                end;   { if }

              if IsHiddenField.AsBoolean then
                begin
                  if not Searched then
                    Located:= LocateDataSet(cdsFilteredGridData, cdsGridData);

                  if Located then
                    FHiddenBookmarks.Add(cdsGridData.Bookmark);
                end;   { if }

              Next;
            end;   { while }
        end;   { if }
  end;   { SaveShrunkAndHiddenFlags }

  procedure AssignFieldProperties;
  var
    DestField, SourceField: TField;
    i: Integer;
  begin
    for i:= 0 to cdsFilteredGridData.Fields.Count - 1 do
      begin
        DestField:= cdsFilteredGridData.Fields[i];
        SourceField:= cdsGridData.FindField(DestField.FieldName);

        if Assigned(SourceField) then
          begin
            DestField.Alignment:= SourceField.Alignment;
            DestField.DisplayLabel:= SourceField.DisplayLabel;
            DestField.EditMask:= SourceField.EditMask;
            DestField.DisplayWidth:= SourceField.DisplayWidth;
            DestField.ReadOnly:= SourceField.ReadOnly;
            DestField.Visible:= SourceField.Visible;
            DestField.OnGetText:= SourceField.OnGetText;

            if (DestField is TAbmesFloatField) then
              begin
                TAbmesFloatField(DestField).DisplayFormat:= TAbmesFloatField(SourceField).DisplayFormat;
                TAbmesFloatField(DestField).FieldValueType:= TAbmesFloatField(SourceField).FieldValueType;
                TAbmesFloatField(DestField).DisplayBoolValues:= TAbmesFloatField(SourceField).DisplayBoolValues;
              end;   { if }

            if (DestField is TSQLTimeStampField) then
              begin
                TSQLTimeStampField(DestField).DisplayFormat:= TSQLTimeStampField(SourceField).DisplayFormat;
              end;   { if }

            if (DestField is TBooleanField) then
              begin
                TBooleanField(DestField).DisplayValues:= TBooleanField(SourceField).DisplayValues;
              end;   { if }
          end;   { if }
      end;
  end;

  procedure SaveGridDataPos;
  var
    i: Integer;
    FldName: string;
  begin
    LocateData:= VarArrayCreate([0, MaxNoPos-1], varInteger);
    LocateFields:= '';
    for i:= 1 to MaxNoPos do
      begin
        FldName:= Format('NO_%d', [i]);
        LocateFields:= LocateFields + FldName + '; ';
        LocateData[i-1]:= GetNoField(i).AsInteger;
      end;
    SetLength(LocateFields, Length(LocateFields) - 2);

    UpdateLocateDataSetData(LocateFields, LocateData, cdsGridData);
  end;

  procedure RestoreGridDataPos;
  begin
    cdsGridData.Locate(LocateFields, LocateData, []);
  end;

var
  i: Integer;
  SaveCursor: TCursor;
  FilteredGridDataBookmark: TBookmark;
  SaveFiltered: Boolean;
  SaveIndexName: string;
  cdsFilteredGridDataNO_1: TField;
  cdsFilteredGridDataIS_SHRUNK: TField;
  cdsFilteredGridDataIS_HIDDEN: TField;

  LevelNo: Integer;
  MaxLevelNo: Integer;
  LevelHasMissingChildren: array[0..MaxNoPos] of Boolean;
  LevelIsSelfApproved: array[0..MaxNoPos] of Boolean;
  LevelIsComplete: array[0..MaxNoPos] of Boolean;
  MaxSelfApprovedLevelNo, MaxCompleteLevelNo: Integer;

begin
  FUpdatingFilteredGridData:= True;
  try
    SaveCursor:= Screen.Cursor;
    Screen.Cursor:= crHourGlass;
    try
      with cdsGridData do
        begin
          DisableControls;
          try
            cdsFilteredGridData.DisableControls;
            try
              SaveGridDataPos;
              try
                CalcChildAndForkCount;

                FilteredGridDataBookmark:= cdsFilteredGridData.Bookmark;

                SaveFiltered:= cdsFilteredGridData.Filtered;
                cdsFilteredGridData.Filtered:= False;
                try
                  cdsFilteredGridData.Bookmark:= FilteredGridDataBookmark;

                  SaveShrunkAndHiddenFlags;

                  cdsFilteredGridData.Close;

                  for i:= 1 to MaxNoPos do
                    FcdsFilteredGridDataNoFields[i]:= nil;

                  NilPersistentFilterGridDataFields;

                  cdsFilteredGridData.FieldDefs.Clear;

                  for i:= 0 to Fields.Count - 1 do
                    if (Fields[i].DataType <> ftDataSet) then
                      cdsFilteredGridData.FieldDefs.Add(
                        Fields[i].FieldName,
                        Fields[i].DataType,
                        Fields[i].Size
                      );

                  cdsFilteredGridData.FieldDefs.Add(ChildCountFieldName, ftInteger);
                  cdsFilteredGridData.FieldDefs.Add(IsShrunkFieldName, ftFloat);
                  cdsFilteredGridData.FieldDefs.Add(IsHiddenFieldName, ftFloat);

                  cdsFilteredGridData.CreateDataSet;

                  for i:= 1 to MaxNoPos do
                    FcdsFilteredGridDataNoFields[i]:= cdsFilteredGridData.FieldByName(Format('NO_%d', [i]));

                  AssignPersistentFilterGridDataFields;

                  AssignFieldProperties;

                  TAbmesFloatField(cdsFilteredGridData.FieldByName(IsShrunkFieldName)).FieldValueType:= fvtBoolean;
                  TAbmesFloatField(cdsFilteredGridData.FieldByName(IsShrunkFieldName)).DisplayBoolValues:= ShrunkDisplayValues;
                  TAbmesFloatField(cdsFilteredGridData.FieldByName(IsHiddenFieldName)).FieldValueType:= fvtBoolean;

                  // purvo preizchesliavame NoAsText & NoAsFormatedText;
                  if ACalcNoAsText then
                    begin
                      FillMaxNos;
                      try
                        SaveIndexName:= IndexName;
                        IndexName:= '';
                        try
                          First;
                          while not Eof do
                            begin
                              Edit;
                              try
                                CalcNoAsText;
                                Post;
                              except
                                Cancel;
                                raise;
                              end;   { try }

                              Next;
                            end;
                        finally
                          IndexName:= SaveIndexName;
                        end;   { try }
                      finally
                        ClearMaxNos;
                      end;   { try }
                    end;

                  cdsFilteredGridDataNO_1:= GetNoField(1, cdsFilteredGridData);
                  cdsFilteredGridDataIS_SHRUNK:= cdsFilteredGridData.FieldByName(IsShrunkFieldName);
                  cdsFilteredGridDataIS_HIDDEN:= cdsFilteredGridData.FieldByName(IsHiddenFieldName);

                  for i:= 0 to MaxNoPos do
                    begin
                      LevelIsSelfApproved[i]:= True;
                      LevelIsComplete[i]:= True;
                      LevelHasMissingChildren[i]:= False;
                    end;
                  MaxLevelNo:= 0;

                  First;
                  while not Eof do
                    begin
                      cdsFilteredGridData.Append;
                      try
                        cdsFilteredGridData.AssignFields(cdsGridData);

                        cdsFilteredGridData.FieldByName(ChildCountFieldName).AsInteger:= ChildCount;

                        if (cdsFilteredGridDataNO_1.AsInteger > 0) and
                           (ChildCount > 0) then
                          begin
                            cdsFilteredGridDataIS_SHRUNK.AsBoolean:=
                              (FShrunkBookmarks.IndexOf(Bookmark) >= 0);

                            cdsFilteredGridDataIS_HIDDEN.AsBoolean:=
                              (FHiddenBookmarks.IndexOf(Bookmark) >= 0);
                          end;   { if }

                        cdsFilteredGridData.Post;
                      except
                        cdsFilteredGridData.Cancel;
                        raise;
                      end;   { try }

                      // KSIa
                      LevelNo:= GetLineLevel;
                      MaxLevelNo:= Max(MaxLevelNo, LevelNo);

                      LevelHasMissingChildren[LevelNo]:= LevelHasMissingChildren[LevelNo] or (cdsGridDataPRODUCT_CODE.IsNull and (ChildCount = 0));
                      LevelIsSelfApproved[LevelNo]:= LevelIsSelfApproved[LevelNo] and cdsGridDataDETAIL_IS_SELF_APPROVED.AsBoolean;
                      LevelIsComplete[LevelNo]:= LevelIsComplete[LevelNo] and cdsGridDataIS_COMPLETE.AsBoolean;
                      //

                      Next;
                    end;   { while }

                  // KSIa
                  for i:= 1 to MaxLevelNo do
                    LevelIsSelfApproved[i]:= LevelIsSelfApproved[i] and not LevelHasMissingChildren[i-1];

                  MaxSelfApprovedLevelNo:= MaxLevelNo + 1;
                  for i:= MaxLevelNo downto 0 do
                    if not LevelIsSelfApproved[i] then
                      MaxSelfApprovedLevelNo:= i;
                  Dec(MaxSelfApprovedLevelNo);

                  MaxCompleteLevelNo:= MaxLevelNo + 1;
                  for i:= MaxLevelNo downto 0 do
                    if not LevelIsComplete[i] then
                      MaxCompleteLevelNo:= i;
                  Dec(MaxCompleteLevelNo);

                  if (MaxSelfApprovedLevelNo > MaxCompleteLevelNo) then
                    StructureCoef.LevelNo:= MaxCompleteLevelNo + Ord(MaxSelfApprovedLevelNo > MaxCompleteLevelNo + 1)
                  else
                    StructureCoef.LevelNo:= Max((MaxSelfApprovedLevelNo - 1), -1);

                  if (StructureCoef.LevelNo = -1) then
                    StructureCoef.LevelIsComplete:= LevelIsSelfApproved[0]
                  else
                    StructureCoef.LevelIsComplete:= LevelIsComplete[StructureCoef.LevelNo];

                  StructureCoef.MaxLevelNo:= MaxLevelNo;

                  StructureCoef.HasMissingChildren:= False;
                  for i:= MaxLevelNo downto 0 do
                    StructureCoef.HasMissingChildren:=
                      StructureCoef.HasMissingChildren or not LevelIsComplete[i];

                  with StructureCoef do
                    if (LevelNo = MaxLevelNo - 1) and LevelIsComplete and (not HasMissingChildren) then
                      Inc(LevelNo);

                  ShowStructureDataCoef;
                  //

                  RebuildAdditionalDataSets;
                finally
                  cdsFilteredGridData.Filtered:= SaveFiltered;
                end;   { try }
              finally
                RestoreGridDataPos;
                LocateDataSet(cdsGridData, cdsFilteredGridData);
              end;   { try }
            finally
              cdsFilteredGridData.EnableControls;
            end;   { try }
          finally
            EnableControls;
          end;   { try }
        end;   { with }
    finally
      Screen.Cursor:= SaveCursor;
    end;   { try SaveCursor }
  finally
    FUpdatingFilteredGridData:= False;
  end;
end;

procedure TfmSpecificationAndXModelAbstract.cdsGridDataAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  UpdateFilteredGridData(False);
end;

procedure TfmSpecificationAndXModelAbstract.cdsFilteredGridDataAfterScroll(
  DataSet: TDataSet);
begin
  inherited;

  if not cdsFilteredGridData.ControlsDisabled then
    LocateDataSet(cdsFilteredGridData, cdsGridData);
end;

procedure TfmSpecificationAndXModelAbstract.cdsFilteredGridDataFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  i: Integer;
begin
  inherited;

  Accept:= not DataSet.FieldByName(IsHiddenFieldName).AsBoolean;

  if Accept then
    for i:= FShowLevel + 1 to MaxNoPos + Ord(HasForkField) do
      if (GetNoField(i, DataSet).AsInteger > 0) then
        begin
          Accept:= False;
          Break;
        end;
end;

procedure TfmSpecificationAndXModelAbstract.udShowLevelChangingEx(
  Sender: TObject; var AllowChange: Boolean; NewValue: Integer;
  Direction: TUpDownDirection);
begin
  inherited;

  if Visible and (NewValue in [udShowLevel.Min..udShowLevel.Max]) then
    begin
      FShowLevel:= NewValue;

      RefilterDataSet(cdsFilteredGridData);

      if cdsModel.Active then
        RefilterDataSet(cdsModel);
    end;
end;

procedure TfmSpecificationAndXModelAbstract.FormDestroy(Sender: TObject);
begin
  inherited;

  FreeAndNil(FChildCount);
  FreeAndNil(FForkCount);

  FreeAndNil(FLocatingDataSets);
  FreeAndNil(FShrunkBookmarks);
  FreeAndNil(FHiddenBookmarks);

  FreeAndNil(FNewOperationData);
  FreeAndNil(FInvestedValueFilter);

  FreeAndNil(StructureCoef);

  cdsProductPricesCache.Close;
  cdsDeptPricesCache.Close;
end;

procedure TfmSpecificationAndXModelAbstract.cdsGridDataAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  cdsFilteredGridData.Close;
end;

procedure TfmSpecificationAndXModelAbstract.actFocusShowLevelEditExecute(
  Sender: TObject);
begin
  inherited;
  ActiveControl:= edtShowLevel;
end;

procedure TfmSpecificationAndXModelAbstract.grdLines1CellClick(
  Column: TColumnEh);
begin
  inherited;

  if (Column.Field.FieldName = IsShrunkFieldName) and
     (not Column.Field.IsNull) then
    begin
      ToggleIsShrunk;
      Abort;
    end;   { if }
end;

procedure TfmSpecificationAndXModelAbstract.ToggleIsShrunk;

  procedure UpdateModelRecord;
  begin
    with cdsModel do
      if Active and (not ChangeAfterModelGeneration) then
        begin
          LocateDataSet(cdsFilteredGridData, cdsModel);

          Edit;
          try
            FieldByName(IsShrunkFieldName).AsVariant:=
              cdsFilteredGridData.FieldByName(IsShrunkFieldName).AsVariant;
            FieldByName(IsHiddenFieldName).AsVariant:=
              cdsFilteredGridData.FieldByName(IsHiddenFieldName).AsVariant;

            Post;
          except
            Cancel;
            raise;
          end;   { try }
        end;   { with }
  end;

var
  SaveCursor: TCursor;
  lnp, lnp2: Integer;
  IsShrunk: array[1..MaxNoPos+1] of Boolean;
  b: TBookmark;
  SaveFiltered: Boolean;
  SaveModelFiltered: Boolean;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    with cdsFilteredGridData do
      begin
        cdsModel.DisableControls;
        try
          SaveModelFiltered:= cdsModel.Filtered;
          cdsModel.Filtered:= False;
          try
            DisableControls;
            try
              Edit;
              try
                with FieldByName(IsShrunkFieldName) do
                  AsBoolean:= not AsBoolean;
                Post;
              except
                Cancel;
                raise;
              end;   { try }

              UpdateModelRecord;

              if not Eof then
                begin
                  b:= Bookmark;
                  try
                    SaveFiltered:= Filtered;
                    Filtered:= False;
                    try
                      Bookmark:= b;

                      lnp:= LastNoPos(cdsFilteredGridData);
                      SaveOldNo(lnp, cdsFilteredGridData);

                      IsShrunk[lnp]:= FieldByName(IsShrunkFieldName).AsBoolean;

                      Next;
                      while (not Eof) and SameAsOldNo(lnp, cdsFilteredGridData) do
                        begin
                          lnp2:= LastNoPos(cdsFilteredGridData);

                          Edit;
                          try
                            FieldByName(IsHiddenFieldName).AsBoolean:= IsShrunk[lnp] or IsShrunk[lnp2-1];
                            Post;
                          except
                            Cancel;
                            raise;
                          end;   { try }

                          UpdateModelRecord;

                          IsShrunk[lnp2]:= FieldByName(IsShrunkFieldName).AsBoolean;

                          Next;
                        end;   { while }
                    finally
                      Filtered:= SaveFiltered;
                    end;   { try }
                  finally
                    Bookmark:= b;
                  end;   { try }
                end;   { if }
            finally
              EnableControls;
            end;   { try }
          finally
            cdsModel.Filtered:= SaveModelFiltered
          end;   { try }

          if cdsModel.Active and (not ChangeAfterModelGeneration) then
            LocateDataSet(cdsFilteredGridData, cdsModel);
        finally
          cdsModel.EnableControls;
        end;   { try }
      end;   { with }
  finally
    Screen.Cursor:= SaveCursor;
  end;   { try SaveCursor }
end;

procedure TfmSpecificationAndXModelAbstract.ToolRequirementChange(
  AToolRequirementField, AToolIsCompleteField, AToolProductField: TField);
begin
  if FInToolIntegritySync then
    Exit;

  FInToolIntegritySync:= True;
  try
    AToolIsCompleteField.AsBoolean:=
      (IntToToolRequirement(AToolRequirementField.AsInteger) = trEmpty)
  finally
    FInToolIntegritySync:= False;
  end;
end;

procedure TfmSpecificationAndXModelAbstract.ToolRequirementValidate(
  AToolRequirementField, AToolIsCompleteField, AToolProductField: TField);
begin
  if FInToolIntegritySync then
    Exit;

  FInToolIntegritySync:= True;
  try
    if (IntToToolRequirement(AToolRequirementField.AsInteger) in [trUnknown, trEmpty]) and
       not AToolProductField.IsNull then
      raise Exception.Create(SIncorrectUnknownOrEmptyToolRequirement);
  finally
    FInToolIntegritySync:= False;
  end;
end;

procedure TfmSpecificationAndXModelAbstract.ToolIsCompleteValidate(
  AToolIsCompleteField, AToolRequirementField, AToolProductField: TField);
begin
  if FInToolIntegritySync then
    Exit;

  FInToolIntegritySync:= True;
  try
    if AToolIsCompleteField.AsBoolean and
       (IntToToolRequirement(AToolRequirementField.AsInteger) = trNotEmpty) and
       AToolProductField.IsNull then
      raise Exception.Create(SIncorrectToolIsComplete);
  finally
    FInToolIntegritySync:= False;
  end;
end;

procedure TfmSpecificationAndXModelAbstract.ToolIsCompleteChange(
  AToolIsCompleteField, AToolRequirementField, AToolProductField: TField);
var
  tr: TToolRequirement;
begin
  if FInToolIntegritySync then
    Exit;

  FInToolIntegritySync:= True;
  try
    tr:= IntToToolRequirement(AToolRequirementField.AsInteger);

    if not AToolIsCompleteField.AsBoolean and (tr = trEmpty) then
      AToolRequirementField.AsInteger:= ToolRequirementToInt(trUnknown);

    if AToolIsCompleteField.AsBoolean and (tr = trUnknown) then
      AToolRequirementField.AsInteger:= ToolRequirementToInt(trEmpty);
  finally
    FInToolIntegritySync:= False;
  end;
end;

procedure TfmSpecificationAndXModelAbstract.ToolProductChange(
  AToolProductField, AToolRequirementField, AToolIsCompleteField: TField);
begin
  if FInToolIntegritySync then
    Exit;

  FInToolIntegritySync:= True;
  try
    if not AToolProductField.IsNull then
      AToolRequirementField.AsInteger:= ToolRequirementToInt(trNotEmpty);

    AToolIsCompleteField.AsBoolean:= False;
  finally
    FInToolIntegritySync:= False;
  end;
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  cdsOperationsEFFORT_COEF.AsFloat:= 1;
  cdsOperationsHAS_DOCUMENTATION.AsBoolean:= False;
  cdsOperationsDOC_IS_COMPLETE.AsBoolean:= False;
  cdsOperationsUNAPPROVED_ACTIVE_DI_COUNT.AsInteger:= 0;
  cdsOperationsOPERATION_TYPE_CODE.AsInteger:= otNormal;
  cdsOperationsHAS_SPECIAL_CONTROL.AsBoolean:= False;
  cdsOperationsPROGRAM_TOOL_REQUIREMENT_CODE.AsInteger:= 1;
  cdsOperationsSPECIFIC_TOOL_REQUIREMENT_CODE.AsInteger:= 1;
  cdsOperationsTYPICAL_TOOL_REQUIREMENT_CODE.AsInteger:= 1;
  cdsOperationsPROGRAM_TOOL_IS_COMPLETE.AsBoolean:= False;
  cdsOperationsSPECIFIC_TOOL_IS_COMPLETE.AsBoolean:= False;
  cdsOperationsTYPICAL_TOOL_IS_COMPLETE.AsBoolean:= False;
  cdsOperationsIS_AUTO_MOVEMENT.AsBoolean:= False;
  cdsOperationsIS_AUTO_SETUP.AsBoolean:= False;

  if (NewOperationData.DocCode > 0) then
    begin
      cdsOperationsDOC_BRANCH_CODE.AsInteger:= NewOperationData.DocBranchCode;
      cdsOperationsDOC_CODE.AsInteger:= NewOperationData.DocCode;
      cdsOperationsHAS_DOCUMENTATION.AsBoolean:= NewOperationData.HasDocumentation;
      cdsOperationsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger:= NewOperationData.DocEmtpinessRequirementCode;
      cdsOperationsDOC_IS_COMPLETE.AsBoolean:= NewOperationData.DocIsComplete;
      cdsOperationsUNAPPROVED_ACTIVE_DI_COUNT.AsInteger:= NewOperationData.UnapprovedActiveDICount;
    end;

  if NewOperationData.CreateLike then
    begin
      Assert(cdsOperationCreateLike.Active);
      AssignFields(cdsOperationCreateLike, DataSet);

      cdsOperationCreateLike.Close;
      NewOperationData.CreateLike:= False;
    end;  { if }
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsBeforePost(
  DataSet: TDataSet);

  procedure PositiveCheck(AField: TField);
  begin
    if (not AField.IsNull) and (AField.AsFloat <= 0) then
      begin
        AField.FocusControl;
        raise Exception.CreateFmt(SNotPositiveHourTechQty, [AField.DisplayLabel]);
      end;   { if }
  end;

begin
  inherited;

  if not FAddingSpecification then
    begin
      if not cdsOperationsSETUP_PROFESSION_CODE.IsNull then
        CheckRequiredFields(DataSet,
          'SETUP_EFFORT_COEF; SETUP_HOUR_TECH_QUANTITY; SETUP_COUNT');

      if (cdsOperationsOPERATION_TYPE_CODE.AsInteger = otNormal) then
        CheckRequiredFields(DataSet, 'DEPT_NAME; _PROFESSION_NAME; EFFORT_COEF; HOUR_TECH_QUANTITY')
      else
        CheckRequiredFields(DataSet, '_PROFESSION_NAME');

      PositiveCheck(cdsOperationsSETUP_HOUR_TECH_QUANTITY);
      PositiveCheck(cdsOperationsHOUR_TECH_QUANTITY);

      CheckRequiredFields(DataSet, 'TREATMENT_BEGIN_WORKDAY_NO; TREATMENT_WORKDAYS');

      if cdsOperationsIS_AUTO_SETUP.AsBoolean and (cdsOperationsSETUP_COUNT.AsInteger > 1) then
        begin
          cdsOperationsSETUP_COUNT.FocusControl;
          raise Exception.Create(SInvalidAutoSetupCount);
        end;

      CheckOperationWorkdays(GetStagesClientDataSet.FieldByName('TREATMENT_WORKDAYS').AsInteger);
    end;

  if (cdsOperationsOPERATION_TYPE_CODE.AsInteger <> otNormal) then
    cdsOperationsHAS_SPECIAL_CONTROL.AsBoolean:= False;

  cdsOperationsIS_NORMAL_OPERATION.AsBoolean:=
    (cdsOperationsOPERATION_TYPE_CODE.AsInteger = otNormal);
    
  if cdsOperationsDOC_CODE.IsNull then
    begin
      dmDocClient.DSNewDoc(cdsOperations);

      if not cdsOperationsIS_NORMAL_OPERATION.AsBoolean then
        begin
          dmDocClient.SetDocEmptinessRequirement(derEmpty);
          cdsOperationsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger:= DocEmptinessRequirementToInt(derEmpty);

          dmDocClient.SetDocIsComplete(True);
          cdsOperationsDOC_IS_COMPLETE.AsBoolean:= True;
        end;
    end;
end;

procedure TfmSpecificationAndXModelAbstract.AssignPersistentFilterGridDataFields;
begin
  cdsFilteredGridDataCHILD_COUNT:=
    cdsFilteredGridData.FieldByName('CHILD_COUNT');
  cdsFilteredGridDataDETAIL_IS_INACTIVE:=
    cdsFilteredGridData.FieldByName('DETAIL_IS_INACTIVE');
  cdsFilteredGridDataPRODUCT_IS_INACTIVE:=
    cdsFilteredGridData.FieldByName('PRODUCT_IS_INACTIVE');

  cdsFilteredGridData_PRODUCT_PRECISION_LEVEL_NO:=
    cdsFilteredGridData.FieldByName('_PRODUCT_PRECISION_LEVEL_NO');
  cdsFilteredGridData_PRODUCT_PRECISION_LEVEL_COLOR:=
    cdsFilteredGridData.FieldByName('_PRODUCT_PRECISION_LEVEL_COLOR');
  cdsFilteredGridData_PRODUCT_PRECISION_LEVEL_BACKGROUND_COLOR:=
    cdsFilteredGridData.FieldByName('_PRODUCT_PRECISION_LEVEL_BACKGROUND_COLOR');
end;

procedure TfmSpecificationAndXModelAbstract.NilPersistentFilterGridDataFields;
begin
  cdsFilteredGridDataCHILD_COUNT:= nil;
end;

procedure TfmSpecificationAndXModelAbstract.btnDetailDocumentationClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, btnDetailDocumentation,
    cdsGridDataDETAIL_CODE.AsInteger);
end;

procedure TfmSpecificationAndXModelAbstract.btnPrintModelClick(
  Sender: TObject);
begin
  inherited;
  PopupMenuFromButton(btnPrintModel, pmPrintModel);
end;

procedure TfmSpecificationAndXModelAbstract.btnProductDocumentationClick(
  Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, btnProductDocumentation,
    cdsGridDataPRODUCT_CODE.AsInteger);
end;

function TfmSpecificationAndXModelAbstract.DataGridVisible: Boolean; 
begin
  Result:=
    (pcMain.ActivePage <> tsTasks);
end;

procedure TfmSpecificationAndXModelAbstract.grdLines1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  FFilteredGridDataSaveBookmark:= cdsFilteredGridData.Bookmark;
end;

procedure TfmSpecificationAndXModelAbstract.grdLines1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (FFilteredGridDataSaveBookmark <> cdsFilteredGridData.Bookmark) then
    LocateDataSet(cdsFilteredGridData, cdsGridData);
end;

procedure TfmSpecificationAndXModelAbstract.IncChildCount(ALastNoPos: Integer);
var
  i: Integer;
  s: string;
  v: string;
begin
  if (ALastNoPos = 0) then
    s:= '0'
  else
    begin
      s:= GetNoField(1).AsString;
      for i:= 2 to ALastNoPos do
        s:= s + '.' + GetNoField(i).AsString;
    end;

  v:= FChildCount.Values[s];
  if (v = '') then
    v:= '1'
  else
    v:= IntToStr(StrToInt(v) + 1);
  FChildCount.Values[s]:= v;
end;

procedure TfmSpecificationAndXModelAbstract.IncForkCount;
var
  i: Integer;
  s: string;
  v: string;
begin
  s:= GetNoField(1).AsString;
  for i:= 2 to SimpleLastNoPos do
    s:= s + '.' + GetNoField(i).AsString;

  v:= FForkCount.Values[s];
  if (v = '') then
    v:= '1'
  else
    v:= IntToStr(StrToInt(v) + 1);
  FForkCount.Values[s]:= v;
end;

procedure TfmSpecificationAndXModelAbstract.CachedSetDeptPriceFields(
  DeptCodeField: TField; PricesDate: TDateTime; HourPriceField,
  MaintainanceHourPriceField, ParallelProcessCountField,
  ParallelOperatorCountField: TField);
begin
  Assert(Assigned(DeptCodeField));

  if DeptCodeField.IsNull then
    ClearFieldsIfAssigned([
      HourPriceField,
      MaintainanceHourPriceField,
      ParallelProcessCountField,
      ParallelOperatorCountField
    ])
  else
    begin
      cdsDeptPricesCache.First;
      if not cdsDeptPricesCache.Locate('DEPT_CODE; PRICE_DATE', VarArrayOf([DeptCodeField.AsInteger, PricesDate]), []) then
        begin
          cdsDeptPricesCache.Append;
          try
            cdsDeptPricesCacheDEPT_CODE.AsVariant:= DeptCodeField.AsVariant;
            cdsDeptPricesCachePRICE_DATE.AsDateTime:= PricesDate;

            SetDeptPriceFields(
              cdsDeptPricesCacheDEPT_CODE,
              cdsDeptPricesCachePRICE_DATE.AsDateTime,
              cdsDeptPricesCacheHOUR_PRICE,
              cdsDeptPricesCacheMAINTAINANCE_HOUR_PRICE,
              cdsDeptPricesCachePARALLEL_PROCESS_COUNT,
              cdsDeptPricesCachePARALLEL_OPERATOR_COUNT);

            cdsDeptPricesCache.Post;
          except
            cdsDeptPricesCache.Cancel;
            raise;
          end;
        end;  { if }

      if Assigned(HourPriceField) then
        HourPriceField.AsVariant:= cdsDeptPricesCacheHOUR_PRICE.AsVariant;

      if Assigned(MaintainanceHourPriceField) then
        MaintainanceHourPriceField.AsVariant:= cdsDeptPricesCacheMAINTAINANCE_HOUR_PRICE.AsVariant;

      if Assigned(ParallelProcessCountField) then
        ParallelProcessCountField.AsVariant:= cdsDeptPricesCachePARALLEL_PROCESS_COUNT.AsVariant;

      if Assigned(ParallelOperatorCountField) then
        ParallelOperatorCountField.AsVariant:= cdsDeptPricesCachePARALLEL_OPERATOR_COUNT.AsVariant;

      // zachistvame tozi cache, zashtoto veche razchitame na globalnia
      cdsDeptPricesCache.EmptyDataSet;
    end;
end;

procedure TfmSpecificationAndXModelAbstract.CachedSetProductPriceFields(
  ProductCodeField: TField; PricesDate: TDateTime;
  EstimatedSecondaryPriceField, MarketSecondaryPriceField,
  InvestementValue2Field, InvestementValue3Field, InvestementValue4Field,
  InvestementValue5Field, PrecisionLevelCodeField: TField);
begin
  Assert(Assigned(ProductCodeField));

  if ProductCodeField.IsNull then
    ClearFieldsIfAssigned([
      EstimatedSecondaryPriceField,
      MarketSecondaryPriceField,
      InvestementValue2Field,
      InvestementValue3Field,
      InvestementValue4Field,
      InvestementValue5Field,
      PrecisionLevelCodeField
    ])
  else
    begin
      cdsProductPricesCache.First;
      if not cdsProductPricesCache.Locate('PRODUCT_CODE; PRICE_DATE', VarArrayOf([ProductCodeField.AsInteger, PricesDate]), []) then
        begin
          cdsProductPricesCache.Append;
          try
            cdsProductPricesCachePRODUCT_CODE.AsVariant:= ProductCodeField.AsVariant;
            cdsProductPricesCachePRICE_DATE.AsDateTime:= PricesDate;

            SetProductPriceFields(
              cdsProductPricesCachePRODUCT_CODE,
              cdsProductPricesCachePRICE_DATE.AsDateTime,
              cdsProductPricesCacheESTIMATED_SECONDARY_PRICE,
              cdsProductPricesCacheMARKET_SECONDARY_PRICE,
              cdsProductPricesCacheINVESTMENT_VALUE_2,
              cdsProductPricesCacheINVESTMENT_VALUE_3,
              cdsProductPricesCacheINVESTMENT_VALUE_4,
              cdsProductPricesCacheINVESTMENT_VALUE_5,
              cdsProductPricesCachePRECISION_LEVEL_CODE);

            cdsProductPricesCache.Post;
          except
            cdsProductPricesCache.Cancel;
            raise;
          end;
        end;  { if }

      if Assigned(EstimatedSecondaryPriceField) then
        EstimatedSecondaryPriceField.AsVariant:= cdsProductPricesCacheESTIMATED_SECONDARY_PRICE.AsVariant;

      if Assigned(MarketSecondaryPriceField) then
        MarketSecondaryPriceField.AsVariant:= cdsProductPricesCacheMARKET_SECONDARY_PRICE.AsVariant;

      if Assigned(InvestementValue2Field) then
        InvestementValue2Field.AsVariant:= cdsProductPricesCacheINVESTMENT_VALUE_2.AsVariant;

      if Assigned(InvestementValue3Field) then
        InvestementValue3Field.AsVariant:= cdsProductPricesCacheINVESTMENT_VALUE_3.AsVariant;

      if Assigned(InvestementValue4Field) then
        InvestementValue4Field.AsVariant:= cdsProductPricesCacheINVESTMENT_VALUE_4.AsVariant;

      if Assigned(InvestementValue5Field) then
        InvestementValue5Field.AsVariant:= cdsProductPricesCacheINVESTMENT_VALUE_5.AsVariant;

      if Assigned(PrecisionLevelCodeField) then
        PrecisionLevelCodeField.AsVariant:= cdsProductPricesCachePRECISION_LEVEL_CODE.AsVariant;

      // zachistvame tozi cache, zashtoto veche razchitame na globalnia
      cdsProductPricesCache.EmptyDataSet;
    end;
end;

procedure TfmSpecificationAndXModelAbstract.CalcChildAndForkCount;
var
  b: TBookmark;
  ForkField: TField;
begin
  with cdsGridData do
    begin
      DisableControls;
      try
        ForkField:= FindField('FORK_NO');

        b:= Bookmark;
        try
          FChildCount.Clear;
          FForkCount.Clear;

          First;
          while not Eof do
            begin
              if (cdsGridDataNO_1.AsInteger > 0) then
                begin
                  if Assigned(ForkField) and (ForkField.AsInteger > 0) then
                    IncForkCount
                  else   { if }
                    IncChildCount(LastNoPos-1);
                end;

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

procedure TfmSpecificationAndXModelAbstract.CalcNoAsText;
var
  i, k: Integer;
  NoAsText, NoAsFormatedText: string;
  s: string;
  MaxNo: Integer;
  lnp: Integer;
begin
  Assert(cdsGridData.State in dsEditModes);

  if FApplyingUpdates then
    Exit;

  lnp:= SimpleLastNoPos;
  if (lnp = 0) then
    lnp:= 1;

  NoAsText:= '';
  NoAsFormatedText:= '';
  for i:= 1 to lnp do
    begin
      if not VarIsNull(FMaxNos) then
        MaxNo:= FMaxNos[i-1]
      else
        MaxNo:= VarToInt(FMaxNoFields[i].Value);

      s:= GetNoField(i).AsString;

      NoAsText:= NoAsText + s + '.';

      if (s <> '0') then
        for k:= Length(s)+1 to Length(IntToStr(MaxNo)) do
          s:= '0' + s;
      NoAsFormatedText:= NoAsFormatedText + s + '.';
    end;

  SetLength(NoAsText, Length(NoAsText)-1);
  SetLength(NoAsFormatedText, Length(NoAsFormatedText)-1);

  cdsGridDataNO_AS_TEXT.AsString:= NoAsText;
  cdsGridDataNO_AS_FORMATED_TEXT.AsString:= NoAsFormatedText;
end;

procedure TfmSpecificationAndXModelAbstract.FillMaxNos;
var
  i: Integer;
begin
  FMaxNos:= VarArrayCreate([0, MaxNoPos-1], varInteger);

  for i:= 1 to MaxNoPos do
    FMaxNos[i-1]:= VarToInt(cdsGridData.FieldByName(Format('_MAX_NO_%d', [i])).Value);
end;

procedure TfmSpecificationAndXModelAbstract.ClearMaxNos;
begin
  FMaxNos:= Null;
end;

procedure TfmSpecificationAndXModelAbstract.DeleteGridDataRecord;
begin
  cdsGridData.Delete;
end;

function TfmSpecificationAndXModelAbstract.CalcNoAsTextOnNewRecord: Boolean;
begin
  Result:= True;
end;


function TfmSpecificationAndXModelAbstract.GetLineLevel: Integer;
var
  s: string;
  i: Integer;
begin
  s:= cdsGridDataNO_AS_FORMATED_TEXT.AsString;

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

procedure TfmSpecificationAndXModelAbstract.RecursivePrint(AMinLineLevel: Integer;
  AModelPrint, APrintOnA3, APrintProductNos, APrintNotes, APrintInvestedValues: Boolean);
var
  StartNoAsFormatedText: string;
  MaxLineLevels: TStringList;
  NextStagesCount: TStringList;

  function NeededLine: Boolean;
  begin
    Result:=
      (StartNoAsFormatedText = '0') or
      (Pos(StartNoAsFormatedText + '.', cdsGridDataNO_AS_FORMATED_TEXT.AsString + '.') = 1);
  end;

  function GetMaxLineLevel: Integer;
  begin
    Result:=
      StrToInt(MaxLineLevels.Values[cdsGridDataNO_AS_FORMATED_TEXT.AsString]);
  end;

  procedure AddLine(AParentNoAsFormatedText: string);
  var
    s: string;
  begin
    with cdsRecursivePrint do
      begin
        Append;
        try
          cdsRecursivePrintPARENT_NO_AS_FORMATED_TEXT.AsString:= AParentNoAsFormatedText;

          if (AParentNoAsFormatedText = '0') then
            s:= cdsGridDataNO_AS_FORMATED_TEXT.AsString
          else   { if }
            begin
              s:= Copy(cdsGridDataNO_AS_FORMATED_TEXT.AsString, Length(AParentNoAsFormatedText) + 2,
                    Length(cdsGridDataNO_AS_FORMATED_TEXT.AsString) - Length(AParentNoAsFormatedText) - 1);

              if (s = '') then
                s:= '0';
            end;   { if }

          cdsRecursivePrintNO_AS_FORMATED_TEXT.AsString:= s;
          cdsRecursivePrintREAL_NO_AS_FORMATED_TEXT.AsVariant:= cdsGridDataNO_AS_FORMATED_TEXT.AsVariant;
          cdsRecursivePrintREAL_NO_AS_TEXT.AsVariant:= cdsGridDataNO_AS_TEXT.AsVariant;
          cdsRecursivePrintDETAIL_NAME.AsVariant:= cdsGridDataDETAIL_NAME.AsVariant;
          cdsRecursivePrintDETAIL_NO.AsVariant:= cdsGridDataDETAIL_NO.AsVariant;

          if AModelPrint then
            begin
              cdsRecursivePrintBEGIN_DEPT_STAGE_NO.AsInteger:=
                FModelWidth -
                StrToInt(NextStagesCount.Values[cdsGridDataNO_AS_FORMATED_TEXT.AsString]) -
                Max(GetStagesClientDataSet.RecordCount, 2) + 1;

              cdsRecursivePrintEND_DEPT_STAGE_NO.AsInteger:=
                FModelWidth - StrToInt(NextStagesCount.Values[AParentNoAsFormatedText]);
            end
          else
            begin
              cdsRecursivePrintLINE_TYPE_ABRREV.AsString:= LeftStr(cdsGridData_LINE_TYPE_ABRREV.AsString, 1);
              cdsRecursivePrintDETAIL_HAS_DOCUMENTATION.AsVariant:= cdsGridDataDETAIL_HAS_DOCUMENTATION.AsVariant;
              cdsRecursivePrintDETAIL_TECH_QUANTITY_SHOW.AsVariant:= cdsGridData_DETAIL_TECH_QUANTITY_SHOW.AsVariant;
              cdsRecursivePrintDETAIL_TECH_MEASURE_ABBREV.AsVariant:= cdsGridData_DETAIL_TECH_MEASURE_ABBREV.AsVariant;
              cdsRecursivePrintPRODUCT_TREATMENT_TYPE_ABBREV.AsVariant:= cdsGridData_PRODUCT_TREATMENT_TYPE_ABBREV.AsVariant;
              cdsRecursivePrintPRODUCT_NAME.AsVariant:= cdsGridDataPRODUCT_NAME.AsVariant;
              cdsRecursivePrintPRODUCT_NO.AsVariant:= cdsGridDataPRODUCT_NO.AsVariant;
              cdsRecursivePrintPRODUCT_HAS_DOCUMENTATION.AsVariant:= cdsGridDataPRODUCT_HAS_DOCUMENTATION.AsVariant;
              cdsRecursivePrintPRODUCT_TECH_QUANTITY.AsVariant:= cdsGridDataPRODUCT_TECH_QUANTITY.AsVariant;
              cdsRecursivePrintPRODUCT_TECH_MEASURE_ABBREV.AsVariant:= cdsGridData_PRODUCT_TECH_MEASURE_ABBREV.AsVariant;
              cdsRecursivePrintPRODUCT_SECONDARY_SINGLE_PRICE.AsVariant:= cdsGridDataPRODUCT_SECONDARY_SINGLE_PRICE.AsVariant;
              cdsRecursivePrint_PRINT_NOTES.AsVariant:= cdsGridData_PRINT_NOTES.AsVariant;
              cdsRecursivePrint_PRODUCT_PRECISION_LEVEL_NO.AsVariant:= cdsGridData_PRODUCT_PRECISION_LEVEL_NO.AsVariant;

              AssignRecursivePrintFields;
            end;   { if }

          Post;
        except
          Cancel;
          raise;
        end;   { try }
      end;   { with }
  end;

var
  SaveCursor: TCursor;
  Parents: array[-1..MaxNoPos] of string;
  LevelStages: array[0..MaxNoPos] of Integer;
  StartLineLevel: Integer;
  LineLevel: Integer;
  ParentLineLevel: Integer;
  b: TBookmark;
  ModelBookmark: TBookmark;
  s: string;
  i: Integer;
  cdsStages: TCustomClientDataSet;
  nsc: Integer;
begin
  Assert(AMinLineLevel >= 1);

  ModelBookmark:= cdsModel.Bookmark;
  try
    cdsRecursivePrint.CreateDataSet;
    try
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crHourGlass;
      try
        if AModelPrint then
          cdsModel.First;

        MaxLineLevels:= TStringList.Create;
        try
          with cdsGridData do
            begin
              DisableControls;
              try
                b:= Bookmark;
                try
                  NextStagesCount:= TStringList.Create;
                  try
                    if AModelPrint then
                      begin
                        cdsStages:= GetStagesClientDataSet;

                        First;

                        while not Eof do
                          begin
                            LineLevel:= GetLineLevel;
                            LevelStages[LineLevel]:= Max(cdsStages.RecordCount, 2); // minimum dva etapa

                            nsc:= 0;
                            for i:= 0 to LineLevel - 1 do
                              Inc(nsc, LevelStages[i]-1);

                            NextStagesCount.Values[cdsGridDataNO_AS_FORMATED_TEXT.AsString]:= IntToStr(nsc);

                            Next;
                          end;   { while }

                        Bookmark:= b;
                      end;   { if }

                    StartNoAsFormatedText:= cdsGridDataNO_AS_FORMATED_TEXT.AsString;
                    StartLineLevel:= GetLineLevel;

                    // calc max line levels
                    while (not Eof) and NeededLine do
                      begin
                        LineLevel:= GetLineLevel;

                        for i:= 0 to MaxLineLevels.Count - 1 do
                          begin
                            s:= MaxLineLevels.Names[i];

                             if (s = '0') or
                                (Pos(s + '.', cdsGridDataNO_AS_FORMATED_TEXT.AsString + '.') = 1) then
                              MaxLineLevels.Values[s]:=
                                IntToStr(Max(StrToIntDef(MaxLineLevels.Values[s], 0), LineLevel));
                          end;

                        MaxLineLevels.Values[cdsGridDataNO_AS_FORMATED_TEXT.AsString]:=
                          IntToStr(LineLevel);

                        Next;
                      end;   { while }
                    Bookmark:= b;
                    // calc max line levels end


                    while (not Eof) and NeededLine do
                      begin
                        LineLevel:= GetLineLevel;

                        Parents[LineLevel]:= cdsGridDataNO_AS_FORMATED_TEXT.AsString;

                        if (LineLevel = StartLineLevel) or
                           ( (ChildCount > 0) and
                             (GetMaxLineLevel - LineLevel >= AMinLineLevel) ) then
                          AddLine(cdsGridDataNO_AS_FORMATED_TEXT.AsString);

                        if (LineLevel > StartLineLevel) then
                          begin
                            ParentLineLevel:=
                              Max(StartLineLevel, Min((GetMaxLineLevel - AMinLineLevel), LineLevel - 1));
                            AddLine(Parents[ParentLineLevel]);
                          end;

                        Next;
                      end;   { while }
                  finally
                    FreeAndNil(NextStagesCount);
                  end;   { try }
                finally
                  Bookmark:= b;
                end;   { try }
              finally
                EnableControls;
              end;   { try }
            end;   { with }
        finally
          FreeAndNil(MaxLineLevels);
        end;
      finally
        Screen.Cursor:= SaveCursor;
      end;   { try SaveCursor }

    if AModelPrint then
      PrintModelFromRecursivePrint
    else
      PrintRecursiveReport(APrintOnA3, APrintNotes, APrintProductNos, APrintInvestedValues);

    finally
      cdsRecursivePrint.Close;
    end;   { try }
  finally
    cdsModel.Bookmark:= ModelBookmark;
  end;  { try }
end;

procedure TfmSpecificationAndXModelAbstract.AssignRecursivePrintFields;
begin
// do nothing
end;

procedure TfmSpecificationAndXModelAbstract.actRecursivePrintUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmSpecificationAndXModelAbstract.actRecursivePrintExecute(
  Sender: TObject);
var
  AMinWidth: Integer;
  APrintOnA3: Boolean;
  APrintProductNos: Boolean;
  APrintNotes: Boolean;
  PrintInvestedValues: Boolean;
begin
  inherited;

  if TfmSpecAndXModelRecursivePrintOptions.ShowForm(HasShowInvestedValueActivity, APrintOnA3, APrintProductNos, APrintNotes, PrintInvestedValues, AMinWidth) then
    begin
      FDontShowInvestedValues:= not PrintInvestedValues;
      try
        RecursivePrint(AMinWidth, False, APrintOnA3, APrintProductNos, APrintNotes, PrintInvestedValues);
      finally
        FDontShowInvestedValues:= False;
        dsGridData.DataSet:= nil;
        dsGridData.DataSet:= cdsGridData;
      end;  { try }
    end;
end;

procedure TfmSpecificationAndXModelAbstract.PrintModelFromRecursivePrint;
var
  PrintedModels: Integer;
  ParentNoAsFormatedText: string;
  BeginDeptStageNo: Integer;
  EndDeptStageNo: Integer;
  ColumnGroupWidth: Integer;
  RealNoAsText: string;
  DetailName: string;
  DetailNo: Integer;
  SavePage: TPrinterPage;

  procedure SaveStatus;
  begin
    ParentNoAsFormatedText:= cdsRecursivePrintPARENT_NO_AS_FORMATED_TEXT.AsString;
    BeginDeptStageNo:= cdsRecursivePrintBEGIN_DEPT_STAGE_NO.AsInteger;
    EndDeptStageNo:= cdsRecursivePrintEND_DEPT_STAGE_NO.AsInteger;
    RealNoAsText:= cdsRecursivePrintREAL_NO_AS_TEXT.AsString;
    DetailName:= cdsRecursivePrintDETAIL_NAME.AsString;
    DetailNo:= cdsRecursivePrintDETAIL_NO.AsInteger;
  end;

  procedure PrintCurrentModel;

    procedure HidePrintModelColumns(Index: Integer; Offset: Integer = 0);
    var
      e: Integer;
      i: Integer;
    begin
      with grdPrint do
        begin
          if (Index = FModelWidth) then
            Columns[Columns.Count-1].Visible:= False
          else
            begin
              e:= Columns.Count-2;
              Dec(e, ColumnGroupWidth*(FModelWidth - Index - 1));

              for i:= 0 to ColumnGroupWidth-1-Offset do
                Columns[e-i].Visible:= False;
            end;
        end;   { with }
    end;

  var
    i: Integer;
  begin
    RefilterDataSet(cdsModel);

    grdPrint.DataSource:= dsModel;
    try
      SetModelPrintColumns;
      SetPrintModelParams(True, False, RealNoAsText, DetailName, IntToStr(DetailNo));

      grdPrint.Columns.BeginUpdate;
      try
        for i:= 1 to BeginDeptStageNo - 1 do
          HidePrintModelColumns(i);

        for i:= EndDeptStageNo + 1 to FModelWidth do
          HidePrintModelColumns(i);

        if (EndDeptStageNo < FModelWidth) then
          HidePrintModelColumns(EndDeptStageNo, 1);

        grdPrint.Columns[0].Visible:= False;  // +/-
      finally
        grdPrint.Columns.EndUpdate;
      end;   { try }

      cdsModel.First;

      if (PrintedModels = 0) then
        pgdModel.Preview
      else
        pgdModel.PrintTo(PrinterPreview);
    finally
      grdPrint.DataSource:= nil;
    end;   { try }

    Inc(PrintedModels);
  end;   { PrintCurrentModel }

var
  b: TBookmark;
  SaveCursor: TCursor;
begin
  ColumnGroupWidth:= GetModelColumnGroupWidth;

  SavePage:= SetUpPrinter(DMPAPER_A3, poLandscape, PrinterPreview.Printer);
  try
    PrinterPreview.BeginDoc;
    try
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crHourGlass;
      try
        with cdsModel do
          begin
            DisableControls;
            try
              b:= Bookmark;
              try
                FPrintModelLines:= TStringList.Create;
                try
                  FPrintModelLines.Sorted:= True;

                  FTruncatedNosAsFormatedText:= TStringList.Create;
                  try
                    PrintedModels:= 0;
                    cdsRecursivePrint.First;
                    SaveStatus;

                    while not cdsRecursivePrint.Eof do
                      begin
                        if (ParentNoAsFormatedText <> cdsRecursivePrintPARENT_NO_AS_FORMATED_TEXT.AsString) then
                          begin
                            PrintCurrentModel;
                            FPrintModelLines.Clear;
                            SaveStatus;
                          end;

                        FPrintModelLines.Add(cdsRecursivePrintREAL_NO_AS_FORMATED_TEXT.AsString);
                        BeginDeptStageNo:= Min(BeginDeptStageNo, cdsRecursivePrintBEGIN_DEPT_STAGE_NO.AsInteger);

                        FTruncatedNosAsFormatedText.Values[cdsRecursivePrintREAL_NO_AS_FORMATED_TEXT.AsString]:=
                          cdsRecursivePrintNO_AS_FORMATED_TEXT.AsString;

                        cdsRecursivePrint.Next;
                      end;   { while }

                    PrintCurrentModel;
                    FPrintModelLines.Clear;
                  finally
                    FreeAndNil(FTruncatedNosAsFormatedText);
                  end;
                finally
                  FreeAndNil(FPrintModelLines);
                end;

                RefilterDataSet(cdsModel);
              finally
                Bookmark:= b;
              end;   { try }
            finally
              EnableControls;
            end;   { try }
          end;   { with }
      finally
        Screen.Cursor:= SaveCursor;
      end;      { try SaveCursor }
    finally
      PrinterPreview.EndDoc;
    end;   { try }
  finally
    SetUpPrinter(SavePage.PaperSize, SavePage.Orientation, PrinterPreview.Printer);
  end;   { try }
end;

procedure TfmSpecificationAndXModelAbstract.cdsModelFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;

  if Assigned(FPrintModelLines) then
    Accept:=
      Assigned(cdsModelNO_AS_FORMATED_TEXT) and
      (FPrintModelLines.IndexOf(cdsModelNO_AS_FORMATED_TEXT.AsString) >= 0)
  else
    cdsFilteredGridDataFilterRecord(DataSet, Accept);
end;

procedure TfmSpecificationAndXModelAbstract.actModelRecursivePrintUpdate(
  Sender: TObject);
begin
  inherited;

  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    (cdsGridData.RecordCount > 0);
end;

procedure TfmSpecificationAndXModelAbstract.actModelRecursivePrintExecute(
  Sender: TObject);
var
  AMinWidth: Integer;
  APrintOnA3: Boolean;
  APrintProductNos: Boolean;
  APrintNotes: Boolean;
  APrintInvestedValues: Boolean;
begin
  inherited;

  if TfmSpecAndXModelModelRecursivePrintOptions.ShowForm(HasShowInvestedValueActivity, APrintOnA3, APrintProductNos, APrintNotes, APrintInvestedValues, AMinWidth) then
    RecursivePrint(AMinWidth, True, APrintOnA3, APrintProductNos, APrintNotes, APrintInvestedValues);
end;

procedure TfmSpecificationAndXModelAbstract.cdsModelNO_AS_FORMATED_TEXTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if DisplayText then
    begin
      if Assigned(FTruncatedNosAsFormatedText) then
        Text:= FTruncatedNosAsFormatedText.Values[Sender.AsString]
      else
        Text:= Sender.AsString
    end;
end;

class function TfmSpecificationAndXModelAbstract.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsDEPT_CODEChange(
  Sender: TField);
begin
  inherited;

  DoDeptFieldChanged(cdsOperationsDEPT_CODE,
    cdsOperationsDEPT_NAME, cdsOperationsDEPT_IDENTIFIER,
    nil, cdsOperationsDEPT_PRODUCT_CODE, cdsOperationsDEPT_PARENT_CODE,
    nil, cdsOperationsDEPT_BEGIN_DATE, cdsOperationsDEPT_END_DATE);

  SetOperationDeptPriceFields;
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsIS_AUTO_MOVEMENTChange(
  Sender: TField);
begin
  inherited;
  if cdsOperationsIS_AUTO_MOVEMENT.AsBoolean then
    cdsOperationsIS_AUTO_SETUP.AsBoolean:= not cdsOperationsSETUP_PROFESSION_CODE.IsNull;
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsPROGRAM_TOOL_IS_COMPLETEChange(
  Sender: TField);
begin
  inherited;
  ToolIsCompleteChange(Sender, cdsOperationsPROGRAM_TOOL_REQUIREMENT_CODE, cdsOperationsPROGRAM_TOOL_PRODUCT_CODE);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsPROGRAM_TOOL_IS_COMPLETEValidate(
  Sender: TField);
begin
  inherited;
  ToolIsCompleteValidate(Sender, cdsOperationsPROGRAM_TOOL_REQUIREMENT_CODE, cdsOperationsPROGRAM_TOOL_PRODUCT_CODE);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsPROGRAM_TOOL_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  ToolProductChange(Sender, cdsOperationsPROGRAM_TOOL_REQUIREMENT_CODE, cdsOperationsPROGRAM_TOOL_IS_COMPLETE);
  DoProductFieldChanged(cdsOperationsPROGRAM_TOOL_PRODUCT_CODE,
    cdsOperationsPROGRAM_TOOL_PRODUCT_NAME, cdsOperationsPROGRAM_TOOL_PRODUCT_NO);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsPROGRAM_TOOL_REQUIREMENT_CODEChange(
  Sender: TField);
begin
  inherited;
  ToolRequirementChange(Sender, cdsOperationsPROGRAM_TOOL_IS_COMPLETE, cdsOperationsPROGRAM_TOOL_PRODUCT_CODE);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsPROGRAM_TOOL_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ToolRequirementFieldGetText(Sender, cdsOperationsPROGRAM_TOOL_IS_COMPLETE, cdsOperationsOPERATION_TYPE_CODE,
    Text, DisplayText);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsPROGRAM_TOOL_REQUIREMENT_CODEValidate(
  Sender: TField);
begin
  inherited;
  ToolRequirementValidate(Sender, cdsOperationsPROGRAM_TOOL_IS_COMPLETE, cdsOperationsPROGRAM_TOOL_PRODUCT_CODE);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsSPECIFIC_TOOL_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  ToolProductChange(Sender, cdsOperationsSPECIFIC_TOOL_REQUIREMENT_CODE, cdsOperationsSPECIFIC_TOOL_IS_COMPLETE);
  DoProductFieldChanged(cdsOperationsSPECIFIC_TOOL_PRODUCT_CODE,
    cdsOperationsSPECIFIC_TOOL_PRODUCT_NAME, cdsOperationsSPECIFIC_TOOL_PRODUCT_NO);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsSPECIFIC_TOOL_REQUIREMENT_CODEChange(
  Sender: TField);
begin
  inherited;
  ToolRequirementChange(Sender, cdsOperationsSPECIFIC_TOOL_IS_COMPLETE, cdsOperationsSPECIFIC_TOOL_PRODUCT_CODE);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsSPECIFIC_TOOL_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ToolRequirementFieldGetText(Sender, cdsOperationsSPECIFIC_TOOL_IS_COMPLETE, cdsOperationsOPERATION_TYPE_CODE,
    Text, DisplayText);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsSPECIFIC_TOOL_REQUIREMENT_CODEValidate(
  Sender: TField);
begin
  inherited;
  ToolRequirementValidate(Sender, cdsOperationsSPECIFIC_TOOL_IS_COMPLETE, cdsOperationsSPECIFIC_TOOL_PRODUCT_CODE);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsTYPICAL_TOOL_IS_COMPLETEChange(
  Sender: TField);
begin
  inherited;
  ToolIsCompleteChange(Sender, cdsOperationsTYPICAL_TOOL_REQUIREMENT_CODE, cdsOperationsTYPICAL_TOOL_PRODUCT_CODE);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsTYPICAL_TOOL_IS_COMPLETEValidate(
  Sender: TField);
begin
  inherited;
  ToolIsCompleteValidate(Sender, cdsOperationsTYPICAL_TOOL_REQUIREMENT_CODE, cdsOperationsTYPICAL_TOOL_PRODUCT_CODE);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsTYPICAL_TOOL_PRODUCT_CODEChange(
  Sender: TField);
begin
  inherited;
  ToolProductChange(Sender, cdsOperationsTYPICAL_TOOL_REQUIREMENT_CODE, cdsOperationsTYPICAL_TOOL_IS_COMPLETE);
  DoProductFieldChanged(cdsOperationsTYPICAL_TOOL_PRODUCT_CODE,
    cdsOperationsTYPICAL_TOOL_PRODUCT_NAME, cdsOperationsTYPICAL_TOOL_PRODUCT_NO);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsTYPICAL_TOOL_REQUIREMENT_CODEChange(
  Sender: TField);
begin
  inherited;
  ToolRequirementChange(Sender, cdsOperationsTYPICAL_TOOL_IS_COMPLETE, cdsOperationsTYPICAL_TOOL_PRODUCT_CODE);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsTYPICAL_TOOL_REQUIREMENT_CODEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  ToolRequirementFieldGetText(Sender, cdsOperationsTYPICAL_TOOL_IS_COMPLETE, cdsOperationsOPERATION_TYPE_CODE,
    Text, DisplayText);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsTYPICAL_TOOL_REQUIREMENT_CODEValidate(
  Sender: TField);
begin
  inherited;
  ToolRequirementValidate(Sender, cdsOperationsTYPICAL_TOOL_IS_COMPLETE, cdsOperationsTYPICAL_TOOL_PRODUCT_CODE);
end;

procedure TfmSpecificationAndXModelAbstract.cdsProfessionsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsProfessions.Params.ParamByName('HOUR_PRICE_DATE').AsDateTime:=
    InvestedValueFilter.InvestedValueDate;
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  cdsOperations_SETUP_ABBREV.AsString:= SOperationSetupAbbrev;
  cdsOperations_ABBREV.AsString:= SOperationAbbrev;

  if cdsOperationsSETUP_PROFESSION_CODE.IsNull then
    begin
      cdsOperations_SETUP_DEPT_NAME.Clear;
      cdsOperations_SETUP_DEPT_IDENTIFIER.Clear;
    end
  else
    begin
      cdsOperations_SETUP_DEPT_NAME.AsVariant:= cdsOperationsDEPT_NAME.AsVariant;
      cdsOperations_SETUP_DEPT_IDENTIFIER.AsVariant:= cdsOperationsDEPT_IDENTIFIER.AsVariant;
    end;

  cdsOperations_SHOW_SETUP_HOUR_TECH_QUANTITY.AsVariant:=
    cdsOperationsSETUP_HOUR_TECH_QUANTITY.AsVariant;

  if cdsOperationsHOUR_TECH_QUANTITY.IsNull then
    cdsOperations_SHOW_HOUR_TECH_QUANTITY.Clear
  else
    cdsOperations_SHOW_HOUR_TECH_QUANTITY.AsString:=
      Format(SShowDetailTechQuantityFormat, [
        cdsOperationsHOUR_TECH_QUANTITY.DisplayText,
        cdsGridData_DETAIL_TECH_MEASURE_ABBREV.AsString]);

  if (cdsOperationsOPERATION_TYPE_CODE.AsInteger = otNormal) and
     (cdsOperationsDOC_EMPTINESS_REQUIREMENT_CODE.AsInteger = DocEmptinessRequirementToInt(derNotEmpty)) then
    begin
      if (cdsOperationsUNAPPROVED_ACTIVE_DI_COUNT.AsInteger = 0) and
         cdsOperationsDOC_IS_COMPLETE.AsBoolean then
        cdsOperations_SHOW_APPROVE_CYCLE_NO.AsString:= ApproveCycleNoField.DisplayText
      else
        cdsOperations_SHOW_APPROVE_CYCLE_NO.AsString:= Format('(%s)', [ApproveCycleNoField.DisplayText]);
    end
  else
    begin
      cdsOperations_SHOW_APPROVE_CYCLE_NO.Clear;
    end;
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsSETUP_PROFESSION_CODEChange(
  Sender: TField);
begin
  inherited;

  if Sender.IsNull then
    begin
      cdsOperationsSETUP_EFFORT_COEF.Clear;
      cdsOperationsSETUP_HOUR_TECH_QUANTITY.Clear;
      cdsOperationsSETUP_COUNT.Clear;
      cdsOperationsIS_AUTO_SETUP.AsBoolean:= False;
    end
  else
    begin
      if cdsOperationsSETUP_COUNT.IsNull then
        cdsOperationsSETUP_COUNT.AsInteger:= 1;

      if cdsOperationsIS_AUTO_MOVEMENT.AsBoolean then
        cdsOperationsIS_AUTO_SETUP.AsBoolean:= True;
    end;
end;

procedure TfmSpecificationAndXModelAbstract.SetModelExcelExportColumnsVisible(const AVisible: Boolean);
begin
  cdsModel.FieldByName('DETAIL_NO').Visible:= AVisible;
  cdsModel.FieldByName('PRODUCT_NAME').Visible:= AVisible;
  cdsModel.FieldByName('PRODUCT_NO').Visible:= AVisible;
end;

procedure TfmSpecificationAndXModelAbstract.actExcelExportExecute(
  Sender: TObject);
begin
//  inherited;
  if (pcMain.ActivePage = tsModel) then
    begin
      SetModelExcelExportColumnsVisible(True);
      try
        GridExcelExport(grdModel, False);
      finally
        SetModelExcelExportColumnsVisible(False);
      end;
    end
  else
    MultiGridExcelExport([grdLines1, grdLines2]);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;

  if (OperationVariantNoField.AsInteger = 0) then
    dmDocClient.DSDeleteDoc(DataSet);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsSPECIFIC_TOOL_DETAIL_TECH_QTYGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;

  if DisplayText then
    begin                              
      if Sender.IsNull then
        Text:= SOneToolForAll
      else
        Text:= Format('1 / %s %s', [
                 FormatFloat((Sender as TAbmesFloatField).DisplayFormat, Sender.AsFloat),
                 cdsGridData_DETAIL_TECH_MEASURE_ABBREV.AsString
               ]);
    end
  else
    Text:= Sender.AsString;
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsSPECIFIC_TOOL_IS_COMPLETEChange(
  Sender: TField);
begin
  inherited;
  ToolIsCompleteChange(Sender, cdsOperationsSPECIFIC_TOOL_REQUIREMENT_CODE, cdsOperationsSPECIFIC_TOOL_PRODUCT_CODE);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsSPECIFIC_TOOL_IS_COMPLETEValidate(
  Sender: TField);
begin
  inherited;
  ToolIsCompleteValidate(Sender, cdsOperationsSPECIFIC_TOOL_REQUIREMENT_CODE, cdsOperationsSPECIFIC_TOOL_PRODUCT_CODE);
end;

procedure TfmSpecificationAndXModelAbstract.actPrintTaskUpdate(
  Sender: TObject);
begin
  inherited;

  with GetTasksClientDataSet do
    (Sender as TAction).Enabled:=
      Active and not (Bof and Eof);
end;

procedure TfmSpecificationAndXModelAbstract.actPrintTaskExecute(
  Sender: TObject);
begin
  inherited;
  PrintTasks(True);
end;

procedure TfmSpecificationAndXModelAbstract.PrintTasks(CurrentTaskOnly: Boolean);
var
  PrintNotes: Boolean;
  cdsTasks: TCustomClientDataSet;
  cdsTaskDepts: TCustomClientDataSet;
  TasksBookmark: TBookmark;
  TaskDeptsBookmark: TBookmark;
begin
  Assert(Assigned(TasksReportClass));

  cdsTasks:= GetTasksClientDataSet;
  cdsTaskDepts:= GetTaskDeptsClientDataSet;

  cdsTasks.DisableControls;
  try
    cdsTaskDepts.DisableControls;
    try
      TasksBookmark:= cdsTasks.Bookmark;
      TaskDeptsBookmark:= cdsTaskDepts.Bookmark;
      try
        if CurrentTaskOnly then
          begin
            cdsTasks.Filter:= Format('%s = %d', [GetTaskNoField.FieldName, GetTaskNoField.AsInteger]);
            cdsTasks.Filtered:= True;
          end;
        try
          cdsModelTasks.CreateDataSet;
          try
            GenerateModelTasks;

            if (cdsModelTasks.RecordCount = 0) then
              raise Exception.Create(SNoTasksToPrint);

            PrintNotes:= False;
            case MessageDlgEx(SPrintNotes, mtConfirmation, mbYesNoCancel, 0) of
              mrYes: PrintNotes:= True;
              mrNo: PrintNotes:= False;
            else
              Abort;
            end;

            cdsModelTasksHeader.CreateDataSet;
            try
              cdsModelTasksHeader.Append;
              try
                // tuka shte se izvika OnNewRecord
                cdsModelTasksHeader.Post;
              except
                cdsModelTasksHeader.Cancel;
                raise;
              end;   { try }

              TasksReportClass.PrintReport(cdsModelTasks, cdsModelTasksHeader, PrintNotes)
            finally
              cdsModelTasksHeader.Close;
            end;   { try }
          finally
            cdsModelTasks.Close;
          end;   { try }
        finally
          cdsTasks.Filtered:= False;
        end;  { try }
      finally
        cdsTasks.Bookmark:= TasksBookmark;
        cdsTaskDepts.Bookmark:= TaskDeptsBookmark;
      end;
    finally
      cdsTaskDepts.EnableControls;
    end;  { try }
  finally
    cdsTasks.EnableControls;
  end;  { try }
end;

procedure TfmSpecificationAndXModelAbstract.actPrintOperationsUpdate(
  Sender: TObject);
begin
  inherited;

  with GetStagesClientDataSet do
    (Sender as TAction).Enabled:=
      Active and (RecordCount > 0);
end;

procedure TfmSpecificationAndXModelAbstract.actPrintOperationsExecute(
  Sender: TObject);
begin
  inherited;

  if (cdsGridData.RecNo = 1) then
    FExcludeStageNo:= MaxStageNo
  else
    FExcludeStageNo:= -1;

  PrintOperations;
end;

procedure TfmSpecificationAndXModelAbstract.RebuildAdditionalDataSets;
begin
  // do nothing
end;

procedure TfmSpecificationAndXModelAbstract.RebuildGridDataLDTQ;
begin
  // do nothing
end;

function TfmSpecificationAndXModelAbstract.GetLineNo: string;
begin
  Result:= cdsGridDataNO_AS_TEXT.AsString;
end;

function TfmSpecificationAndXModelAbstract.DeleteMoves(AEndPos: Integer): Integer;
begin
  Result:= ParentChildCount - GetNoField(AEndPos).AsInteger;
end;

procedure TfmSpecificationAndXModelAbstract.GenerateTaskModel;
var
  SaveCursor: TCursor;
  TaskDeptsBookmark: TBookmark;
  cdsTaskDepts: TCustomClientDataSet;
  cdsStages: TClientDataSet;
  cdsStagesDEPT_CODE: TField;
  LinesBookmark: TBookmark;
  StagesBookmark: TBookmark;
  b: TBookmark;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    FFilteredStages:= TStringList.Create;
    try
      FFilteredStages.Duplicates:= dupIgnore;
      FFilteredStages.Sorted:= True;

      cdsTaskDepts:= GetTaskDeptsClientDataSet;
      cdsStages:= GetStagesClientDataSet;
      cdsStagesDEPT_CODE:= cdsStages.FieldByName('DEPT_CODE');

      cdsTaskDepts.DisableControls;
      try
        TaskDeptsBookmark:= cdsTaskDepts.Bookmark;
        try
          cdsGridData.DisableControls;
          try
            cdsStages.DisableControls;
            try
              LinesBookmark:= cdsGridData.Bookmark;
              StagesBookmark:= cdsStages.Bookmark;
              try
                cdsGridData.First;
                while not cdsGridData.Eof do
                  begin
                    cdsStages.First;
                    while not cdsStages.Eof do
                      begin
                        if cdsTaskDepts.Locate('DEPT_CODE', cdsStagesDEPT_CODE.AsInteger, []) then
                          begin
                            if (cdsStages.RecNo > 1) then
                              begin
                                cdsStages.Prior;
                                AddFilteredStage;
                                cdsStages.Next;
                              end;

                            AddFilteredStage;

                            if (cdsStages.RecNo < cdsStages.RecordCount) then
                              begin
                                cdsStages.Next;
                                AddFilteredStage;
                                cdsStages.Prior;
                              end;
                          end;

                        cdsStages.Next;
                      end;  { while }

                    cdsGridData.Next;
                  end;  { while }

                BeforeGenerateModel;
//                cdsStages.Filtered:= True;                 // taka triabva da bude, no ClientDataSet-a e pederast i mu spirat
//                try                                        // aggregatite sled Filter, zatova navsiakude, kudeto se vajen filtura se vika OnFilterRecord i ...
                  ChangeAfterModelGeneration:= True;
                  GenerateModel(1);

                  grdModel.Columns[0].Visible:= False;

                  cdsGridData.First;
                  while not cdsGridData.Eof do
                    begin
                      if (StagesRecordCount(cdsStages) = 0) then
                        begin
                          LocateDataSet(cdsGridData, cdsModel);

                          b:= cdsGridData.Bookmark;
                          try
                            cdsModel.Delete;
                          finally
                            cdsGridData.Bookmark:= b;
                          end;  { try }
                        end;

                      cdsGridData.Next;
                    end;  { while }

                  cdsModel.First;
                  LocateDataSet(cdsModel, cdsGridData);
//                finally
//                  cdsStages.Filtered:= False;
//                end;  { try }
              finally
                cdsGridData.Bookmark:= LinesBookmark;
                cdsStages.Bookmark:= StagesBookmark;
              end;  { try }
            finally
              cdsStages.EnableControls;
            end;  { try }
          finally
            cdsGridData.EnableControls;
          end;  { try }
        finally
          cdsTaskDepts.Bookmark:= TaskDeptsBookmark;
        end;  { try }
      finally
        cdsTaskDepts.EnableControls;
      end;  { try }
    finally
      FreeAndNil(FFilteredStages);
    end;  { try }
  finally
    Screen.Cursor:= SaveCursor;
  end;  { cursor try }
end;

function TfmSpecificationAndXModelAbstract.GetStageOperationInvestedValue: TOperationInvestedValue;
begin
  Result:= GetOperationInvestedValue(InvestedValueFilter);
end;

procedure TfmSpecificationAndXModelAbstract.actTaskModelExecute(
  Sender: TObject);
begin
  inherited;
  
  GenerateTaskModel;

  FViewingTaskModel:= True;
  actForm.Update;

  pcMain.ActivePage:= tsModel;
  ActiveControl:= grdModel;
end;

procedure TfmSpecificationAndXModelAbstract.actTaskModelCloseExecute(
  Sender: TObject);
begin
  inherited;
  RestoreForm;
  FViewingTaskModel:= False;
  ChangeAfterModelGeneration:= True;
  ActivateTasksGrid;
end;

procedure TfmSpecificationAndXModelAbstract.actTaskModelUpdate(
  Sender: TObject);
begin
  inherited;
  with GetTasksClientDataSet do
    (Sender as TAction).Enabled:=
      Active and
      not (Bof and Eof);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsSETUP_HOUR_TECH_QUANTITYValidate(
  Sender: TField);
begin
  inherited;

  if (not Sender.IsNull) and
     (Sender.AsFloat <= 0) then
    raise Exception.CreateFmt(SPositiveValueRequired, [Sender.DisplayLabel]);
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;

  if NewOperationData.CreateLike then
    with cdsOperationCreateLike do
      begin
        Assert(not Active);
        CreateDataSet;

        Append;
        try
          AssignFields(cdsOperations);
          Post;
        except
          Cancel;
          raise;
        end;  { try }
      end;  { with }
end;

procedure TfmSpecificationAndXModelAbstract.CheckOperationWorkdays(AStageTreatmentWorkdays: Integer);
begin
  if (cdsOperationsTREATMENT_BEGIN_WORKDAY_NO.AsInteger + cdsOperationsTREATMENT_WORKDAYS.AsInteger - 1 >
      AStageTreatmentWorkdays) then
    begin
      cdsOperationsTREATMENT_BEGIN_WORKDAY_NO.FocusControl;
      raise Exception.Create(SIncorrectOperationWorkdays);
    end;
end;

procedure TfmSpecificationAndXModelAbstract.CheckStageAdditional;
begin
// do nothing
end;

procedure TfmSpecificationAndXModelAbstract.CheckOperationAdditional;
begin
// do nothing
end;

procedure TfmSpecificationAndXModelAbstract.SetModelInvestedValueVisibleColumns;
var
  i: Integer;
  VisibleLeftCol: Integer;
  VisibleCol: Integer;
  VisibleCols: Integer;
  NewLeftCol: Integer;
  NewCol: Integer;
  VisibleColFromLeftCol: Integer;
  FirstNonFrozenCol: Integer;
begin
  with grdModel do
    begin
      Columns.BeginUpdate;
      try
        VisibleLeftCol:= 0;
        for i:= 1 to LeftCol do
          Inc(VisibleLeftCol, Ord(Columns[i-1].Visible));

        VisibleCol:= 0;
        for i:= 1 to Col do
          Inc(VisibleCol, Ord(Columns[i-1].Visible));

        VisibleColFromLeftCol:= VisibleCol - VisibleLeftCol;

        for i:= FirstModelDeptColumnIndex to Columns.Count - 1 do
          with Columns[i] do
            case ModelColumnType(i, FirstModelDeptColumnIndex) of
              mctDept:
                Visible:= not actToggleInvestedValue.Checked;
              mctInvestedValue:
                Visible:= actToggleInvestedValue.Checked and not actToggleInvestedValuePart.Checked;
              mctInvestedValuePart:
                Visible:= actToggleInvestedValue.Checked and actToggleInvestedValuePart.Checked;
              mctInvestedValueIsIncomplete:
                Visible:= False;
            end;   { case }
      finally
        Columns.EndUpdate;
      end;   { try }

      VisibleLeftCol:= Max(VisibleCol - VisibleColFromLeftCol, 1);

      VisibleCols:= 0;
      i:= -1;
      while (VisibleCols < VisibleLeftCol) do
        begin
          Inc(i);
          Inc(VisibleCols, Ord(Columns[i].Visible));
        end;
      NewLeftCol:= i+1;

      VisibleCols:= 0;
      i:= -1;
      while (VisibleCols < VisibleCol) do
        begin
          Inc(i);
          Inc(VisibleCols, Ord(Columns[i].Visible));
        end;
      NewCol:= i+1;

      VisibleCols:= 0;
      i:= -1;
      while (VisibleCols <= FrozenCols) do
        begin
          Inc(i);
          Inc(VisibleCols, Ord(Columns[i].Visible));
        end;  { while }
      FirstNonFrozenCol:= i+1;

      if HorzScrollBar.IsScrollBarShowing then
        LeftCol:= Max(NewLeftCol, FirstNonFrozenCol);

      Col:= NewCol;

      Invalidate;
    end;  { with }
end;

procedure TfmSpecificationAndXModelAbstract.actToggleFormHeightExecute(
  Sender: TObject);
begin
//  inherited;
  actResizeFormHeight.Execute;
end;

procedure TfmSpecificationAndXModelAbstract.actToggleInvestedValueExecute(
  Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    begin
      Checked:= not Checked;
      SetModelInvestedValueVisibleColumns;
    end;  { with }
end;

procedure TfmSpecificationAndXModelAbstract.actToggleInvestedValuePartExecute(
  Sender: TObject);
begin
  inherited;

  with (Sender as TAction) do
    begin
      Checked:= not Checked;
      SetModelInvestedValueVisibleColumns;
    end;  { with }
end;

procedure TfmSpecificationAndXModelAbstract.actToggleInvestedValueUpdate(
  Sender: TObject);
begin
  inherited;
  btnToggleInvestedValue.Down:= actToggleInvestedValue.Checked;
end;

procedure TfmSpecificationAndXModelAbstract.actInvestedValueFilterExecute(
  Sender: TObject);
var
  SaveRecNo: Integer;
  SaveLeftCol: Integer;
  SaveCol: Integer;
  SaveCursor: TCursor;
begin
  inherited;

  if ShowInvestedValueFilter then
    begin
      SaveCursor:= Screen.Cursor;
      Screen.Cursor:= crHourGlass;
      try
        ChangeAfterModelGeneration:= True;

        if (InvestedValueFilter.InvestedValueDate <> LastSetLineAndStageAndOperationDeptPriceFieldsDate) then
          SetLineAndStageAndOperationDeptPriceFields;

        if tsModel.Visible then
          begin
            SaveRecNo:= cdsModel.RecNo;
            SaveLeftCol:= grdModel.LeftCol;
            SaveCol:= grdModel.Col;

            GenerateModel;

            cdsModel.RecNo:= SaveRecNo;
            grdModel.LeftCol:= SaveLeftCol;
            grdModel.Col:= SaveCol;
          end
        else
          begin
            GenerateModel;
            pcMain.ActivePage:= tsModel;
          end;

        ActiveControl:= grdModel;
      finally
        Screen.Cursor:= SaveCursor;
      end;
    end;
end;

procedure TfmSpecificationAndXModelAbstract.cdsTodayCurrencyRatesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsTodayCurrencyRates.Params.ParamByName('RATE_DATE').AsDateTime:= ContextDate;
end;

function TfmSpecificationAndXModelAbstract.TodayCurrencyRate(
  ACurrencyCode: Integer): Real;
begin
  Result:=
    VarToFloat(cdsTodayCurrencyRates.Lookup('CURRENCY_CODE', ACurrencyCode, 'FIXING'));
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  ChangeAfterModelGeneration:= True;
end;

procedure TfmSpecificationAndXModelAbstract.cdsInvestedValueFilterAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsInvestedValueFilter.Append;
  try
    cdsInvestedValueFilterRESULT_PRODUCT_TECH_QUANTITY.AsFloat:= InvestedValueFilter.ResultProductTechQuantity;
    cdsInvestedValueFilterINVESTED_VALUE_SINGLE.AsBoolean:= InvestedValueFilter.InvestedValueSingle;
    cdsInvestedValueFilterIS_AGGREGATED.AsBoolean:= InvestedValueFilter.Aggregated;
    cdsInvestedValueFilterINVESTED_VALUE_TYPE.AsInteger:= Ord(InvestedValueFilter.InvestedValueType);
    cdsInvestedValueFilterINVESTED_VALUE_LEVEL.AsInteger:= InvestedValueFilter.InvestedValueLevel;
    cdsInvestedValueFilterINVESTED_VALUE_SUM.AsInteger:= Ord(InvestedValueFilter.InvestedValueSum);
    cdsInvestedValueFilterCURRENCY_CODE.AsInteger:= InvestedValueFilter.CurrencyCode;
    cdsInvestedValueFilterTECH_MEASURE_ABBREV.AsString:= GetResultProductTechMeasureAbbrev;
    cdsInvestedValueFilterINVESTED_VALUE_ABBREV.AsString:= InvestedValueFilter.InvestedValueAbbrev;
    cdsInvestedValueFilterTHE_DATE.AsDateTime:= InvestedValueFilter.InvestedValueDate;
    cdsInvestedValueFilterROOT_LINE_STAGE_INCLUDE_LEVEL.AsInteger:= InvestedValueFilter.RootLineStageIncludeLevel;
    cdsInvestedValueFilterNON_ROOT_LINE_STAGE_INCLUDE_LEVEL.AsInteger:= InvestedValueFilter.NonRootLineStageIncludeLevel;

    cdsInvestedValueFilter.Post;
  except
    cdsInvestedValueFilter.Cancel;
    raise;
  end;  { try }
end;

procedure TfmSpecificationAndXModelAbstract.cdsInvestedValueFilterAfterPost(
  DataSet: TDataSet);
var
  CurrencyRate: Real;
begin
  inherited;

  if FInvestedValueFilterEditPost then
    begin
      if (cdsInvestedValueFilterCURRENCY_CODE.AsInteger = LoginContext.BaseCurrencyCode) then
        CurrencyRate:= 1
      else
        begin
          if (cdsInvestedValueFilterTHE_DATE.AsDateTime = ContextDate) then
            CurrencyRate:= TodayCurrencyRate(cdsInvestedValueFilterCURRENCY_CODE.AsInteger)
          else
            CurrencyRate:=
              dmMain.SvrCommon.GetBaseCurrencyFixing(
                cdsInvestedValueFilterCURRENCY_CODE.AsInteger, cdsInvestedValueFilterTHE_DATE.AsDateTime);
        end;

      if (CurrencyRate = 0) then
        raise Exception.Create(SNoCurrencyRate);

      InvestedValueFilter.ResultProductTechQuantity:= cdsInvestedValueFilterRESULT_PRODUCT_TECH_QUANTITY.AsFloat;
      InvestedValueFilter.InvestedValueSingle:= cdsInvestedValueFilterINVESTED_VALUE_SINGLE.AsBoolean;
      InvestedValueFilter.Aggregated:= cdsInvestedValueFilterIS_AGGREGATED.AsBoolean;
      InvestedValueFilter.InvestedValueType:= TInvestedValueType(cdsInvestedValueFilterINVESTED_VALUE_TYPE.AsInteger);
      InvestedValueFilter.InvestedValueLevel:= cdsInvestedValueFilterINVESTED_VALUE_LEVEL.AsInteger;
      InvestedValueFilter.InvestedValueSum:= TInvestedValueSum(cdsInvestedValueFilterINVESTED_VALUE_SUM.AsInteger);
      InvestedValueFilter.CurrencyCode:= cdsInvestedValueFilterCURRENCY_CODE.AsInteger;
      InvestedValueFilter.CurrencyAbbrev:= cdsInvestedValueFilter_CURRENCY_ABBREV.AsString;
      InvestedValueFilter.CurrencyRate:= CurrencyRate;
      InvestedValueFilter.InvestedValueAbbrev:= cdsInvestedValueFilterINVESTED_VALUE_ABBREV.AsString;
      InvestedValueFilter.InvestedValueDate:= cdsInvestedValueFilterTHE_DATE.AsDateTime;
      InvestedValueFilter.RootLineStageIncludeLevel:= cdsInvestedValueFilterROOT_LINE_STAGE_INCLUDE_LEVEL.AsInteger;
      InvestedValueFilter.NonRootLineStageIncludeLevel:= cdsInvestedValueFilterNON_ROOT_LINE_STAGE_INCLUDE_LEVEL.AsInteger;
      LoadLabourAndOrganizationCostCoef(InvestedValueFilter);
    end;  { if }
end;

procedure TfmSpecificationAndXModelAbstract.cdsInvestedValueFilterBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  FInvestedValueFilterEditPost:= (cdsInvestedValueFilter.State = dsEdit);
end;

function TfmSpecificationAndXModelAbstract.GetProductInvestedValue(
  AInvestedValueFilter: TInvestedValueFilter): TInvestedValue;
var
  FromIVL: Integer;
  ToIVL: Integer;
  IVL: Integer;
  InvestmentValueField: TField;
begin
  Result.Clear;
  if not cdsGridDataPRODUCT_CODE.IsNull then
    begin
      if (AInvestedValueFilter.InvestedValueLevel = 1) or
         (AInvestedValueFilter.InvestedValueSum = ivsFull) then
        begin
          Result.Value:= Result.Value +
            (cdsGridDataTOTAL_PRODUCT_ACCOUNT_QUANTITY.AsFloat *
             cdsGridDataPRODUCT_SINGLE_PRICE.AsFloat *
             InvestedValueFilterQuantityMultiplier(InvestedValueFilter)) /
            InvestedValueFilter.CurrencyRate;

          Result.IsIncomplete:= Result.IsIncomplete or
            cdsGridDataPRODUCT_SINGLE_PRICE.IsNull;
        end;

      if (AInvestedValueFilter.InvestedValueLevel > 1) then
        begin
          ToIVL:= AInvestedValueFilter.InvestedValueLevel;

          if AInvestedValueFilter.InvestedValueSum in [ivsAggregated, ivsFull] then
            FromIVL:= 2
          else
            FromIVL:= ToIVL;

          if (cdsGridDataPRODUCT_TECH_MEASURE_COEF.AsFloat <> 0) then
            for IVL:= FromIVL to ToIVL do
              begin
                InvestmentValueField:= cdsGridData.FieldByName(Format('PRODUCT_INVESTMENT_VALUE_%d', [IVL]));

                Result.Value:= Result.Value +
                  ((cdsGridDataTOTAL_PRODUCT_TECH_QUANTITY.AsFloat / cdsGridDataPRODUCT_TECH_MEASURE_COEF.AsFloat) *
                   InvestmentValueField.AsFloat *
                   InvestedValueFilterQuantityMultiplier(InvestedValueFilter)) /
                  InvestedValueFilter.CurrencyRate;

                Result.IsIncomplete:= Result.IsIncomplete or InvestmentValueField.IsNull;
              end;
        end;
    end;
end;

function TfmSpecificationAndXModelAbstract.GetOperationInvestedValue(
  AInvestedValueFilter: TInvestedValueFilter): TOperationInvestedValue;
var
  FromIVL: Integer;
  ToIVL: Integer;
  IVL: Integer;
  OperationDetailTechQuantity: Real;
  TotalFilterDetailTechQuantity: Real;
  OperationFilterDetailTechQuantity: Real;
  IV2: TOperationInvestedValue;

  function InvestedValueLevel2: TOperationInvestedValue;
  begin
    Result.Clear;
    if not cdsOperationsSETUP_PROFESSION_CODE.IsNull then
      begin
        Result.HasSetup:= True;

        Result.SetupInvestedValue.Value:= Result.SetupInvestedValue.Value +
          (cdsOperationsSETUP_COUNT.AsFloat / cdsOperationsSETUP_HOUR_TECH_QUANTITY.AsFloat) *
          cdsOperationsSETUP_EFFORT_COEF.AsFloat *
          OperationRealSetupHourPriceField.AsFloat *
          InvestedValueFilter.LabourCostCoef;

        Result.SetupInvestedValue.IsIncomplete:= Result.SetupInvestedValue.IsIncomplete or
          OperationRealSetupHourPriceField.IsNull or
          not AInvestedValueFilter.HasLabourAndOrganizationCostCoef;
      end;

    Result.DetailInvestedValue.Value:= Result.DetailInvestedValue.Value +
      (OperationFilterDetailTechQuantity / cdsOperationsHOUR_TECH_QUANTITY.AsFloat) *
      cdsOperationsEFFORT_COEF.AsFloat *
      OperationRealHourPriceField.AsFloat *
      InvestedValueFilter.LabourCostCoef;

    Result.DetailInvestedValue.IsIncomplete:= Result.DetailInvestedValue.IsIncomplete or
      OperationRealHourPriceField.IsNull or
      not AInvestedValueFilter.HasLabourAndOrganizationCostCoef;
  end;  { InvestedValueLevel2 }

begin
  Result.Clear;
  if (cdsOperationsOPERATION_TYPE_CODE.AsInteger = otNormal) then
    begin
      ToIVL:= AInvestedValueFilter.InvestedValueLevel;

      if (AInvestedValueFilter.InvestedValueSum in [ivsAggregated, ivsFull]) then
        FromIVL:= 2
      else
        FromIVL:= ToIVL;

      OperationDetailTechQuantity:= GetOperationDetailTechQuantity;
      if (OperationDetailTechQuantity > 0) then
        begin
          TotalFilterDetailTechQuantity:=
            LineDetailTechQuantity *
            InvestedValueFilterQuantityMultiplier(AInvestedValueFilter);

          OperationFilterDetailTechQuantity:=
            (OperationDetailTechQuantity / LineDetailTechQuantity) *
            TotalFilterDetailTechQuantity;

          Result.Clear;
          for IVL:= FromIVL to ToIVL do
            case IVL of
              2: begin
                   Result:= Result + InvestedValueLevel2;
                 end;

              3: begin
                   if (not cdsOperationsSETUP_PROFESSION_CODE.IsNull) and
                      (cdsOperationsD_PARALLEL_PROCESS_COUNT.AsFloat <> 0) then
                     begin
                       Result.HasSetup:= True;

                       Result.SetupInvestedValue.Value:= Result.SetupInvestedValue.Value +
                         (cdsOperationsSETUP_COUNT.AsFloat / cdsOperationsSETUP_HOUR_TECH_QUANTITY.AsFloat) *
                         (cdsOperationsD_HOUR_PRICE.AsFloat + cdsOperationsD_MAINTAINANCE_HOUR_PRICE.AsFloat) /
                         cdsOperationsD_PARALLEL_PROCESS_COUNT.AsFloat;

                       Result.SetupInvestedValue.IsIncomplete:= Result.SetupInvestedValue.IsIncomplete or
                         cdsOperationsD_HOUR_PRICE.IsNull or
                         cdsOperationsD_MAINTAINANCE_HOUR_PRICE.IsNull or
                         cdsOperationsD_PARALLEL_PROCESS_COUNT.IsNull;
                     end;

                   if (cdsOperationsD_PARALLEL_PROCESS_COUNT.AsFloat <> 0) then
                     Result.DetailInvestedValue.Value:= Result.DetailInvestedValue.Value +
                       (OperationFilterDetailTechQuantity / cdsOperationsHOUR_TECH_QUANTITY.AsFloat) *
                       (cdsOperationsD_HOUR_PRICE.AsFloat + cdsOperationsD_MAINTAINANCE_HOUR_PRICE.AsFloat) /
                       cdsOperationsD_PARALLEL_PROCESS_COUNT.AsFloat;

                   Result.DetailInvestedValue.IsIncomplete:= Result.DetailInvestedValue.IsIncomplete or
                     cdsOperationsD_HOUR_PRICE.IsNull or
                     cdsOperationsD_MAINTAINANCE_HOUR_PRICE.IsNull or
                     cdsOperationsD_PARALLEL_PROCESS_COUNT.IsNull;
                 end;

              5: begin
                   IV2:= InvestedValueLevel2;

                   Result:= Result +
                     IV2 * InvestedValueFilter.OrganizationCostCoef;

                   if Result.HasSetup then
                     Result.SetupInvestedValue.IsIncomplete:= Result.SetupInvestedValue.IsIncomplete or
                       not AInvestedValueFilter.HasLabourAndOrganizationCostCoef;

                   Result.DetailInvestedValue.IsIncomplete:= Result.DetailInvestedValue.IsIncomplete or
                     not AInvestedValueFilter.HasLabourAndOrganizationCostCoef;
                 end;
            end;
        end;
    end;
end;

function TfmSpecificationAndXModelAbstract.GetStageInvestedValue(
  AInvestedValueFilter: TInvestedValueFilter): TInvestedValue;
var
  TotalFilterDetailTechQuantity: Real;
  cdsStages: TClientDataSet;
begin
  cdsStages:= GetStagesClientDataSet;

  Result.Clear;
  if (AInvestedValueFilter.InvestedValueLevel > 1) and
     (cdsOperations.RecordCount > 0) and
     (GetStageNoField.AsInteger > 0) and
     (cdsStages.FieldByName('TREATMENT_WORKDAYS').AsInteger > 0) and
     (cdsStages.FieldByName('OUTGOING_WORKDAYS').AsInteger > 0) then
    begin
      cdsOperations.First;
      while not cdsOperations.Eof do
        begin
          Result:= Result + GetOperationInvestedValue(AInvestedValueFilter).TotalInvestedValue;
          cdsOperations.Next;
        end;  { while }
    end;  { with }

  if (AInvestedValueFilter.InvestedValueLevel = 4) or
     ( (AInvestedValueFilter.InvestedValueLevel >= 4) and
       (AInvestedValueFilter.InvestedValueSum in [ivsAggregated, ivsFull]) ) and
     (GetStageNoField.AsInteger > 0) and
     (cdsStages.FieldByName('TREATMENT_WORKDAYS').AsInteger > 0) and
     (cdsStages.FieldByName('OUTGOING_WORKDAYS').AsInteger > 0) then
    begin
      TotalFilterDetailTechQuantity:=
        LineDetailTechQuantity *
        InvestedValueFilterQuantityMultiplier(AInvestedValueFilter);

      Result.Value:= Result.Value +
        cdsStages.FieldByName('EXTERNAL_WORK_PRICE').AsFloat * TotalFilterDetailTechQuantity;
    end;

  Result:= Result / InvestedValueFilter.CurrencyRate;
end;

procedure TfmSpecificationAndXModelAbstract.actInvestedValueFilterUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not FEdittingTaskInModel;
end;

procedure TfmSpecificationAndXModelAbstract.SetChangeAfterModelGeneration(
  const Value: Boolean);
begin
  FChangeAfterModelGeneration:= Value;
end;

procedure TfmSpecificationAndXModelAbstract.SetLineAndStageAndOperationDeptPriceFields;
var
  LinesBookmark: TBookmark;
  StagesBookmark: TBookmark;
  OperationsBookmark: TBookmark;
  TasksBookmark: TBookmark;
  TaskDeptsBookmark: TBookmark;
  cdsStages: TClientDataSet;
  cdsTasks: TCustomClientDataSet;
  cdsTaskDepts: TCustomClientDataSet;
  HadChanges: Boolean;
begin
  FSettingLineAndStageAndOperationDeptPriceFields:= True;
  try
    FLastSetLineAndStageAndOperationDeptPriceFieldsDate:= InvestedValueFilter.InvestedValueDate;

    cdsProfessions.Close;
    cdsProfessions.Open;

    HadChanges:= GetApplyUpdatesEnabled;

    cdsStages:= GetStagesClientDataSet;
    cdsTasks:= GetTasksClientDataSet;
    cdsTaskDepts:= GetTaskDeptsClientDataSet;

    cdsGridData.DisableControls;
    try
      cdsStages.DisableControls;
      try
        cdsOperations.DisableControls;
        try
          cdsTasks.DisableControls;
          try
            cdsTaskDepts.DisableControls;
            try
              LinesBookmark:= cdsGridData.Bookmark;
              StagesBookmark:= cdsStages.Bookmark;
              OperationsBookmark:= cdsOperations.Bookmark;
              TasksBookmark:= cdsTasks.Bookmark;
              TaskDeptsBookmark:= cdsTaskDepts.Bookmark;
              try
                cdsGridData.First;
                while not cdsGridData.Eof do
                  begin
                    cdsGridData.Edit;
                    try
                      SetLineProductPriceFields;
                      SetStageAndOperationDeptPriceFields(cdsStages);

                      PostDataSet(cdsGridData);
                    except
                      cdsGridData.Cancel;
                      raise;
                    end;

                    cdsGridData.Next;
                  end;  { while }

                if not HadChanges then
                  cdsData.MergeChangeLog;

                UpdateFilteredGridData(False);
              finally
                cdsGridData.Bookmark:= LinesBookmark;
                StagesBookmark:= cdsStages.Bookmark;
                OperationsBookmark:= cdsOperations.Bookmark;
                TasksBookmark:= cdsTasks.Bookmark;
                TaskDeptsBookmark:= cdsTaskDepts.Bookmark;
              end;
            finally
              cdsTaskDepts.EnableControls;
            end;
          finally
            cdsTasks.EnableControls;
          end;
        finally
          cdsOperations.EnableControls;
        end;
      finally
        cdsStages.EnableControls;
      end;
    finally
      cdsGridData.EnableControls;
    end;
  finally
    FSettingLineAndStageAndOperationDeptPriceFields:= True;
  end;
end;

procedure TfmSpecificationAndXModelAbstract.SetLineProductPriceFields;
begin
  CachedSetProductPriceFields(cdsGridDataPRODUCT_CODE, InvestedValueFilter.InvestedValueDate,
    cdsGridDataPRODUCT_SECONDARY_SINGLE_PRICE, nil,
    cdsGridDataPRODUCT_INVESTMENT_VALUE_2, cdsGridDataPRODUCT_INVESTMENT_VALUE_3,
    cdsGridDataPRODUCT_INVESTMENT_VALUE_4, cdsGridDataPRODUCT_INVESTMENT_VALUE_5,
    cdsGridDataPRODUCT_PRECISION_LEVEL_CODE);

  cdsGridDataPRODUCT_SINGLE_PRICE.AsVariant:=
    FloatToVar(
      cdsGridDataPRODUCT_SECONDARY_SINGLE_PRICE.AsFloat *
      TodayCurrencyRate(LoginContext.SecondaryCurrencyCode)
    );
end;

{ SetStageAndOperationDeptPriceFields }

function TfmSpecificationAndXModelAbstract.HasShowInvestedValueActivity: Boolean;
begin
  if (InvestedValueFilter.InvestedValueLevel = 1) then
    Result:= IsLevelOneInvestedValueVisible
  else
    if (InvestedValueFilter.InvestedValueSum = ivsFull) then
      Result:= IsFullInvestedValueVisible
    else
      Result:= IsHighLevelInvestedValueVisible;
end;

procedure TfmSpecificationAndXModelAbstract.UnapproveLineStagesAndOperationsDocs;
var
  StagesBookmark: TBookmark;
  OperationsBookmark: TBookmark;
  SaveCursor: TCursor;
  cdsStages: TClientDataSet;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsStages:= GetStagesClientDataSet;

    with cdsStages do
      begin
        DisableControls;
        try
          StagesBookmark:= Bookmark;
          OperationsBookmark:= cdsOperations.Bookmark;
          try
            cdsOperations.DisableControls;
            try
              First;
              while not Eof do
                begin
                  dmDocClient.UnapproveDocItems(
                    FieldByName('DOC_BRANCH_CODE').AsInteger,
                    FieldByName('DOC_CODE').AsInteger,
                    True, []);

                  Edit;
                  try
                    FieldByName('UNAPPROVED_ACTIVE_DI_COUNT').AsInteger:=
                      dmDocClient.DSDocItemCount(cdsStages, True);
                    Post;
                  except
                    Cancel;
                    raise;
                  end;  { try }

                  cdsOperations.First;
                  while not cdsOperations.Eof do
                    begin
                      dmDocClient.UnapproveDocItems(
                        cdsOperationsDOC_BRANCH_CODE.AsInteger,
                        cdsOperationsDOC_CODE.AsInteger,
                        True, []);

                      cdsOperations.Edit;
                      try
                        cdsOperationsUNAPPROVED_ACTIVE_DI_COUNT.AsInteger:=
                          dmDocClient.DSDocItemCount(cdsOperations, True);
                        cdsOperations.Post;
                      except
                        cdsOperations.Cancel;
                        raise;
                      end;  { try }

                      cdsOperations.Next;
                    end;  { while }

                  Next;
                end;  { while }
            finally
              cdsOperations.EnableControls;
            end;  { try }
          finally
            Bookmark:= StagesBookmark;
            cdsOperations.Bookmark:= OperationsBookmark;
          end;  { try }
        finally
          EnableControls;
        end;  { try }
      end;  { with }
  finally
    Screen.Cursor:= SaveCursor;
  end;  { cursor try }
end;

function TfmSpecificationAndXModelAbstract.UnapproveStage(
  LineUnapproveMethodDone: TUnapproveMethod;
  FromUnapproveMethod: TUnapproveMethod; ShowStage: Boolean): TUnapproveMethod;
var
  StageNo: Integer;
  OperationsBookmark: TBookmark;
  SaveCursor: TCursor;
begin
  if ShowStage then
    StageNo:= GetStageNoField.AsInteger
  else
    StageNo:= -1;

  Result:=
    UnapproveFormClass.SelectUnapproveMethod(dmDocClient,
      cdsGridDataNO_AS_TEXT.AsString,
      StageNo,
      '',
      GetModelIdentifier,
      False,
      [FromUnapproveMethod..umAllModelVariantsLineStagesAndOperationsDocs] - [umRangeOperationsDocs]
    ).UnapproveMethod;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    case Result of
      umDocItemOnly, umDoc:
        dmDocClient.UnapproveDocItems(
          GetStagesClientDataSet.FieldByName('DOC_BRANCH_CODE').AsInteger,
          GetStagesClientDataSet.FieldByName('DOC_CODE').AsInteger,
          (Result = umDoc), [dmDocClient.cdsDocItemsDOC_ITEM_CODE.AsInteger]);

      umStageAndOperationsDocs:
        begin
          cdsOperations.DisableControls;
          try
            OperationsBookmark:= cdsOperations.Bookmark;
            try
              dmDocClient.UnapproveDocItems(
                GetStagesClientDataSet.FieldByName('DOC_BRANCH_CODE').AsInteger,
                GetStagesClientDataSet.FieldByName('DOC_CODE').AsInteger,
                True, []);

              cdsOperations.First;
              while not cdsOperations.Eof do
                begin
                  dmDocClient.UnapproveDocItems(
                    cdsOperationsDOC_BRANCH_CODE.AsInteger,
                    cdsOperationsDOC_CODE.AsInteger,
                    True, []);

                  cdsOperations.Next;
                end;  { while }
            finally
              cdsOperations.Bookmark:= OperationsBookmark;
            end;  { try }
          finally
            cdsOperations.EnableControls;
          end;  { try }
        end;

      umLineStagesAndOperationsDocs..umAllModelVariantsLineStagesAndOperationsDocs:
        if (LineUnapproveMethodDone < Result) then
          UnapproveSpecLineStagesAndOperationsDocs(Result);
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;  { cursor try }
end;

procedure TfmSpecificationAndXModelAbstract.actEditRecordExecute(
  Sender: TObject);
var
  DetailCode: Integer;
  DetailTechQuantity: Real;
  ProductCode: Integer;
  ProductTechQuantity: Real;
begin
  DetailCode:= cdsGridDataDETAIL_CODE.AsInteger;
  DetailTechQuantity:= cdsGridDataDETAIL_TECH_QUANTITY.AsFloat;
  ProductCode:= cdsGridDataPRODUCT_CODE.AsInteger;
  ProductTechQuantity:= cdsGridDataPRODUCT_TECH_QUANTITY.AsFloat;

  inherited;

  if ((DetailCode <> cdsGridDataDETAIL_CODE.AsInteger) or
      (DetailTechQuantity <> cdsGridDataDETAIL_TECH_QUANTITY.AsFloat)) then
    ClearParentIsComplete;

  if ((ProductCode <> cdsGridDataPRODUCT_CODE.AsInteger) or
      (ProductTechQuantity <> cdsGridDataPRODUCT_TECH_QUANTITY.AsFloat)) and
     LineHasApprovedDocItem then
    UnapproveStage(umNone, umLineStagesAndOperationsDocs, False);
end;

function TfmSpecificationAndXModelAbstract.LineStageAndOperationDocsFinalized: Boolean;
var
  cdsStages: TClientDataSet;
  StagesBookmark: TBookmark;
  OperationsBookmark: TBookmark;
begin
    cdsStages:= GetStagesClientDataSet;

    cdsStages.DisableControls;
    try
      cdsOperations.DisableControls;
      try
        StagesBookmark:= cdsStages.Bookmark;
        OperationsBookmark:= cdsOperations.Bookmark;
        try
          Result:= True;

          cdsStages.First;
          while not cdsStages.Eof do
            begin
              Result:= dmDocClient.DSFinalizedDoc(cdsStages);
              if not Result then
                Break;

              cdsOperations.First;
              while not cdsOperations.Eof do
                begin
                  Result:= dmDocClient.DSFinalizedDoc(cdsOperations);
                  if not Result then
                    Break;

                  cdsOperations.Next;
                end;  { while }

              if not Result then
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
end;

procedure TfmSpecificationAndXModelAbstract.ClearParentIsComplete;
var
  b: TBookmark;
begin
  if not FLockIsComplete then
    with cdsGridData do
      begin
        DisableControls;
        try
          b:= Bookmark;
          try
            LocateParent;

            if cdsGridDataIS_COMPLETE.AsBoolean then
              begin
                Edit;
                try
                  cdsGridDataIS_COMPLETE.AsBoolean:= False;
                  Post;
                except
                  Cancel;
                  raise;
                end;   { try }
              end;   { if }
          finally
            Bookmark:= b;
          end;   { try }
        finally
          EnableControls;
        end;   { try }
      end;   { with }
end;

procedure TfmSpecificationAndXModelAbstract.actDocStatusUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (EditMode <> emInsert) and
    (not GetApplyUpdatesEnabled) and
    (not dmDocClient.Modified);
end;

procedure TfmSpecificationAndXModelAbstract.actExcelExportUpdate(
  Sender: TObject);
begin
//  inherited;
  (Sender as TAction).Enabled:=
    (pcMain.ActivePage = tsLines1) or
    (pcMain.ActivePage = tsLines2) or
    (pcMain.ActivePage = tsModel);
end;

function TfmSpecificationAndXModelAbstract.CheckSelfAndChildrenFinalizedDocs: Boolean;
var
  NoAsFormatedText: string;
  b: TBookmark;
  LineLevel: Integer;
begin
  Result:= False;

  with cdsGridData do
    begin
      DisableControls;
      try
        b:= Bookmark;
        try
          if cdsGridDataPRODUCT_CODE.IsNull and (ChildCount = 0) then
            MessageDlgEx(SIncorrectIsCompleteNoChildren, mtError, [mbOK], 0)
          else
            begin
              NoAsFormatedText:= cdsGridDataNO_AS_FORMATED_TEXT.AsString;
              LineLevel:= GetLineLevel;
              Result:= True;

              while Result and (not Eof) do
                begin
                  if ( (NoAsFormatedText = '0') or
                       (Pos(NoAsFormatedText + '.', cdsGridDataNO_AS_FORMATED_TEXT.AsString + '.') = 1) ) and
                     (GetLineLevel <= LineLevel + 1) then
                    Result:= dmDocClient.ProductAuthorizedDoc(cdsGridDataDETAIL_CODE.AsInteger);

                  if Result then
                    Next;
                end;

              if not Result then
                MessageDlgFmtEx(SIncorrectIsComplete, [cdsGridDataNO_AS_FORMATED_TEXT.AsString], mtError, [mbOK], 0);
            end;
        finally
          Bookmark:= b;
        end;  { try }
      finally
        EnableControls;
      end;  { try }
    end;  { with }
end;

procedure TfmSpecificationAndXModelAbstract.SetEnterResultStoreWorkdays(
  AWorkdays: Integer);
begin
  // do nothing
end;

procedure TfmSpecificationAndXModelAbstract.SetInvestedValueVisible(
  const Value: Boolean);
begin
  if (Value <> actToggleInvestedValue.Checked) then
    actToggleInvestedValue.Execute;
end;

procedure TfmSpecificationAndXModelAbstract.cdsOperationsNOTESGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  OperationNotesGetText(Sender, Text, cdsOperationsOPERATION_TYPE_CODE.AsInteger);
end;

end.

