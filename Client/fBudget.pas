unit fBudget;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, JvButtons, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, Buttons,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  StdCtrls, JvDBTreeView, PrnDbgeh, fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDeptFieldEditFrameBald, fDateIntervalFrame,
  JvComponent, JvCaptionButton, uBudgetClientUtils, dDocClient, uClientTypes,
  AbmesDBCheckBox, JvComponentBase, Menus, Mask,
  uPeriods, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TAggregatePattern = record
    AggName: string;
    AggExpression: string;
    GroupingLevel: Integer;
    IsRedundant: Boolean;
  end;

  TColumnFieldPattern = record
    FieldNamePattern: string;
    FieldDisplayLabelPattern: string;
    IsRedundant: Boolean;
    InitialVisible: Boolean;
    ColumnWidth: Integer;
    ColumnColor: Integer;
    Tag: Integer;
  end;

type
  TfmBudget = class(TMasterDetailForm)
    pcDetailViews: TPageControl;
    tsDeptBudgetView: TTabSheet;
    pnlDeptBudgetViewNavigator: TPanel;
    grdDeptBudgetView: TAbmesDBGrid;
    navDeptBudgetView: TDBColorNavigator;
    cdsGridDataNAME: TAbmesWideStringField;
    cdsGridDataIS_GROUP: TAbmesFloatField;
    cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataDOC_CODE: TAbmesFloatField;
    cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField;
    cdsGridDataIS_INACTIVE: TAbmesFloatField;
    cdsGridDataTOTAL_REAL_PRICE: TAbmesFloatField;
    cdsGridDataTOTAL_PLAN_PRICE: TAbmesFloatField;
    cdsGridData_BUDGET_CLASS_TREE_DISPLAY_NAME: TAbmesWideStringField;
    cdsGridData_BUDGET_CLASS_TREE_ICON: TAbmesFloatField;
    tsBudgetOrderItems: TTabSheet;
    pnlBudgetOrderItemsNavigator: TPanel;
    navBudgetOrderItems: TDBColorNavigator;
    grdBudgetOrderItems: TAbmesDBGrid;
    cdsDetail2: TAbmesClientDataSet;
    dsDetail2: TDataSource;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsTIME_UNIT_CODE: TAbmesFloatField;
    pdsGridDataParamsDEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsTIME_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParamsIS_LOCAL: TAbmesFloatField;
    pdsGridDataParamsBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsBO_REGULARITY_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_CODE: TAbmesFloatField;
    pdsGridDataParamsGENERATOR_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsMIN_BO_STATUS: TAbmesFloatField;
    pdsGridDataParamsMAX_BO_STATUS: TAbmesFloatField;
    tlbDocButton: TToolBar;
    btnDocumentation: TToolButton;
    sepBeforeDocumentation: TToolButton;
    actDocumentation: TAction;
    printDeptBudgetViewExpense: TPrintDBGridEh;
    tlbDeptBudgetView: TToolBar;
    sepBeforeExcelExportDeptBudgetView: TToolButton;
    btnPrintDeptBudgetView: TToolButton;
    actPrintDeptBudgetView: TAction;
    printBudgetOrderItemsExpense: TPrintDBGridEh;
    actPrintBudgetOrderItems: TAction;
    tlbBudgetOrderItems: TToolBar;
    sepBeforeExcelExportBudgetOrderItems: TToolButton;
    btnPrintBudgetOrderItems: TToolButton;
    btnExcelExportDeptBudgetView: TToolButton;
    actExcelExportDeptBudgetView: TAction;
    actExcelExportBudgetOrderItems: TAction;
    btnExcelExportBudgetOrderItems: TToolButton;
    pdsGridDataParamsIS_EXPANDED: TAbmesFloatField;
    pnlParams: TPanel;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    cdsGridDataBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    gbDept: TGroupBox;
    frDept: TfrDeptFieldEditFrameBald;
    gbDateInterval: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    gbBOIOrderTypes: TGroupBox;
    actOneLevelUp: TAction;
    actOneLevelDown: TAction;
    btnOneLevelUp: TBitBtn;
    btnOneLevelDown: TBitBtn;
    lblDocumentation: TLabel;
    pdsGridDataParamsPARENT_DEPT_CODE: TAbmesFloatField;
    cdsGridDataSUM_TOTAL_PLAN_PRICE: TAggregateField;
    cdsGridDataSUM_TOTAL_REAL_PRICE: TAggregateField;
    cdsGridData_REPORT_TITLE: TAbmesWideStringField;
    cdsGridData_BUDGET_MODE: TAbmesFloatField;
    printDeptBudgetViewInvest: TPrintDBGridEh;
    printBudgetOrderItemsInvest: TPrintDBGridEh;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsGridDataBUDGET_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPARENT_CODE: TAbmesFloatField;
    cdsGridDataCUSTOM_CODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_PRODUCT_CODE: TAbmesFloatField;
    cdsGridDataTOTAL_BOIO_PLAN_PRICE: TAbmesFloatField;
    cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV: TAbmesFloatField;
    cdsGridData_TOTAL_REAL_TO_BOIO_PLAN_DEV: TAbmesFloatField;
    tlbMaster: TToolBar;
    btnMasterBOIOPlanPrice: TSpeedButton;
    btnMasterBOIOPlanPriceDeviation: TSpeedButton;
    sepMasterRealPriceDeviation: TToolButton;
    btnMasterRealPrice: TSpeedButton;
    btnMasterRealToPlanDeviation: TSpeedButton;
    btnMasterRealToBOIOPlanDeviation: TSpeedButton;
    lblBaseCurrency: TLabel;
    sepShowDeviationPercents: TToolButton;
    btnShowDeviationPercents: TSpeedButton;
    cdsGridData_TOTAL_REAL_TO_PLAN_DEV: TAbmesFloatField;
    cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV_P: TAbmesFloatField;
    cdsGridData_TOTAL_REAL_TO_PLAN_DEV_P: TAbmesFloatField;
    cdsGridData_TOTAL_REAL_TO_BOIO_PLAN_DEV_P: TAbmesFloatField;
    pdsGridDataParams_BOIO_PLAN_COLUMN_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParams_REAL_COLUMN_TYPE_CODE: TAbmesFloatField;
    cdsBudgetGraph: TAbmesClientDataSet;
    cdsBudgetGraphDATE_UNIT_NO: TAbmesFloatField;
    cdsBudgetGraphPLAN_PRICE: TAbmesFloatField;
    cdsBudgetGraphBOIO_PLAN_PRICE: TAbmesFloatField;
    cdsBudgetGraphREAL_PRICE: TAbmesFloatField;
    cdsBudgetGraphAVG_PLAN_PRICE: TAbmesFloatField;
    cdsBudgetGraphAVG_BOIO_PLAN_PRICE: TAbmesFloatField;
    cdsBudgetGraphAVG_REAL_PRICE: TAbmesFloatField;
    cdsBudgetGraphParams: TAbmesClientDataSet;
    cdsBudgetGraphParamsDEPT_CODE: TAbmesFloatField;
    cdsBudgetGraphParamsBEGIN_DATE: TAbmesDateTimeField;
    cdsBudgetGraphParamsEND_DATE: TAbmesFloatField;
    cdsBudgetGraphParamsBUDGET_PRODUCT_CODE: TAbmesFloatField;
    cdsBudgetGraphPERIOD_LABEL: TAbmesWideStringField;
    actShowBudgetGraph: TAction;
    sepBudgetGraph: TToolButton;
    btnShowBudgetGraph: TToolButton;
    cdsBudgetGraphPERIOD_LABEL_EX: TAbmesWideStringField;
    cdsBudgetGraphParamsBUDGET_MODE_CODE: TAbmesFloatField;
    pdsGridDataParamsBUDGET_ORDER_ITEM_TYPE: TAbmesFloatField;
    cdsGridDataCUSTOM_CODE_AS_TEXT: TAbmesWideStringField;
    cdsGridData_BUDGET_PRODUCT_NAME: TAbmesWideStringField;
    cdsGridData_BUDGET_PRODUCT_NO: TAbmesWideStringField;
    cdsGridData_DATE_INTERVAL: TAbmesWideStringField;
    pdsGridDataParamsORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField;
    cdsOrgTaskProposalStates: TAbmesClientDataSet;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NO: TAbmesFloatField;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField;
    cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_ORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField;
    pdsGridDataParamsIS_CHOSEN_PRODUCTS_READ_ONLY: TAbmesFloatField;
    pdsGridDataParamsIS_OTP_STATE_CODE_READ_ONLY: TAbmesFloatField;
    pdsGridDataParamsIS_BOI_TYPE_READ_ONLY: TAbmesFloatField;
    cdsGridDataIS_LAST_CHILD: TAbmesFloatField;
    cdsGridDataHAS_CHILDREN: TAbmesFloatField;
    cdsGridDataBUDGET_PRODUCT_LEVEL: TAbmesFloatField;
    pdsGridDataParamsBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsBOIOrderTypes: TAbmesClientDataSet;
    cdsBOIOrderTypesBOI_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsBOIOrderTypesBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsBOIOrderTypesBOI_ORDER_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_BOI_ORDER_TYPE_NAME: TAbmesWideStringField;
    edtBOIOrderTypeName: TDBEdit;
    cdsBOIOrdersParams: TAbmesClientDataSet;
    grdBudgetClasses: TAbmesDBGrid;
    procedure cdsDetailAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataTOTAL_REAL_PRICEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataTOTAL_PLAN_PRICEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_DEVIATIONGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataAVG_DEVIATION_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cdsDetailBeforeOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure grdDeptBudgetViewGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure cdsDetail2BeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsDetail2AfterOpen(DataSet: TDataSet);
    procedure cdsDetailBeforeClose(DataSet: TDataSet);
    procedure grdBudgetOrderItemsGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure cdsDetail2BeforeClose(DataSet: TDataSet);
    procedure grdBudgetOrderItemsDblClick(Sender: TObject);
    procedure cdsDetailAVG_AVG_DEPT_PRICE_DEV_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailAfterClose(DataSet: TDataSet);
    procedure cdsDetail2AfterClose(DataSet: TDataSet);
    procedure actDocumentationUpdate(Sender: TObject);
    procedure actDocumentationExecute(Sender: TObject);
    procedure actPrintDeptBudgetViewExecute(Sender: TObject);
    procedure actPrintBudgetOrderItemsExecute(Sender: TObject);
    procedure actExcelExportDeptBudgetViewExecute(Sender: TObject);
    procedure actExcelExportBudgetOrderItemsExecute(Sender: TObject);
    procedure actExcelExportExecute(Sender: TObject);
    procedure navDataBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure actFilterExecute(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure actOneLevelUpUpdate(Sender: TObject);
    procedure actOneLevelDownUpdate(Sender: TObject);
    procedure actOneLevelUpExecute(Sender: TObject);
    procedure actOneLevelDownExecute(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure pdsGridDataParamsDEPT_CODEChange(Sender: TField);
    procedure grdDeptBudgetViewDblClick(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEVGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_REAL_TO_BOIO_PLAN_DEVGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_REAL_TO_PLAN_DEVGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV_PGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_REAL_TO_PLAN_DEV_PGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_REAL_TO_BOIO_PLAN_DEV_PGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataTOTAL_BOIO_PLAN_PRICEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure grdBudgetOrderItemsGetFooterParams(Sender: TObject; DataCol,
      Row: Integer; Column: TColumnEh; AFont: TFont; var Background: TColor;
      var Alignment: TAlignment; State: TGridDrawState; var Text: string);
    procedure actPrintExecute(Sender: TObject);
    procedure actShowBudgetGraphExecute(Sender: TObject);
    procedure actShowBudgetGraphUpdate(Sender: TObject);
    procedure pdsGridDataParams_BOI_ORDER_TYPE_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure grdBudgetClassesGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure grdBudgetClassesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    FBudgetMode: TBudgetMode;
    FMsgParams: TStrings;
    procedure DoRefresh;
    procedure FillMasterDataSet;
    procedure CreateAggregates(ADataSet: TAbmesClientDataSet; AAggregatesPattern: array of TAggregatePattern);
    procedure CreateGridColumns(ADataSet: TAbmesClientDataSet; AGrid: TAbmesDBGrid; AColumnPatterns: array of TColumnFieldPattern; AFrozenCols: Integer);
    procedure InitializeDataSetFieldsProperties(ADataSet: TAbmesClientDataSet);
    procedure SetDistributedPriceFieldGetTextEventHandler;
    procedure StatusFieldGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure DistributedPriceFieldGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure PercentGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure DetailDataSetBeforeClose(ADataSet: TAbmesClientDataSet;
      AGrid: TAbmesDBGrid);
    function GetSelectedCellPeriodFirstDate: TDateTime;
    function GetSelectedCellPeriodLastDate: TDateTime;
    function GetSelectedCellTimeUnitCount: Integer;
    function GetSelectedPeriodFirstDate: TDateTime;
    function ChosenPeriod: TPeriod;
  protected
    class function ManualDetailFetch: Boolean; override;
    class function CanUseDocs: Boolean; override;
    function ShowFilterForm: Boolean; override;
    procedure SetDBFrameReadOnly(AFrame: TDBFrame); override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoBeforeShow; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      ABudgetMode: TBudgetMode = bmExpense); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AFilterFormEnabled: Boolean = True;
      ABudgetMode: TBudgetMode = bmExpense): Boolean;
  end;

implementation

uses
  dMain, uClientUtils, uClientPeriods,
  uColorConsts, fBudgetFilter, uUtils, StrUtils, fBudgetOrder, fGridForm,
  uDocUtils, rBudget, fDataForm, Printers, PrViewEh, uExcelExport,
  uMessageDecodingUtils, uTreeClientUtils, fTreeSelectForm, uTreeNodes,
  uClientDateTime, uToolbarUtils, Math, fBudgetGraph, DateUtils,
  JclDateTime, fEditForm, fBOICompanyOrders, fBOIProductOrders, fBOIWasteOrders,
  fBOIOrders, uBudgetReportUtils, fBOIMarkingOrders, uTreeListUtils, PrvFrmEh,
  uScalingUtils;

{$R *.dfm}

resourcestring
  SExpense = 'Разходи в Среда';
  SInvest = 'Инвестиции в Среда';
  SBOIDistributionType = 'Консумиране|Начин';
  SDeptIdentifier = 'Консумиране|ТП';
  SDocumentation = 'И И О';
  SBudgetClassShortName = 'Статия|Кратко Наименование';
  SBudgetClassFullNo = 'Статия|Код';
  SBOIOrderTypeAbbrev = 'Статия|Тип';
  SBudgetOrderItemNo = 'ID %BudgetOrderItemAbbrev%|No';
  SBudgetOrderItemStatus = 'ID %BudgetOrderItemAbbrev%|Стат';
  SBORegularityType = 'Ка- тег.';
  SBudgetOrderNo = 'ID ББ|№';
  SBudgetOrderBranch = 'ID %BudgetOrderAbbrev%';
  SDistributedPrice = '^^^';
  SConsumerDeptName = 'Елементи от Структурата на ТП|Наименование';
  SConsumerDeptNo = 'Елементи от Структурата на ТП|Код';

  STotalDeptPlanPrice            = 'Общо|Лимит';

  STotalBOIOPlanPrice            = 'Общо|План';
  STotalBOIOPlanToPlanDev        = 'Общо|Откл. (П-Л)';
  STotalBOIOPlanToPlanDevPercent = 'Общо|Откл. (П-Л) %%%%';

  STotalDeptRealPrice            = 'Общо|Отчет';
  STotalRealToPlanDev            = 'Общо|Откл. (О-Л)';
  STotalRealToPlanDevPercent     = 'Общо|Откл. (О-Л) %%%%';
  STotalRealToBOIOPlanDev        = 'Общо|Откл. (О-П)';
  STotalRealToBOIOPlanDevPercent = 'Общо|Откл. (О-П) %%%%';

  SDeptPlanPrice                 = '%s|Лимит';

  SBOIOPlanPrice                 = '%s|План';
  SBOIOPlanToPlanDev             = '%s|Откл. (П-Л)';
  SBOIOPlanToPlanDevPercent      = '%s|Откл. (П-Л) %%%%';

  SDeptRealPrice                 = '%s|Отчет';
  SRealToPlanDev                 = '%s|Откл. (О-Л)';
  SRealToPlanDevPercent          = '%s|Откл. (О-Л) %%%%';
  SRealToBOIOPlanDev             = '%s|Откл. (О-П)';
  SRealToBOIOPlanDevPercent      = '%s|Откл. (О-П) %%%%';

  
  plblBudgetOrderItemsExpense = 'Разходи в Среда - Аналитичен разрез';
  plblBudgetOrderItemsInvest = 'Инвестиции в Среда - Аналитичен разрез';
  plblDeptBudgetViewExpense = 'Разходи в Среда - Синтетичен разрез';
  plblDeptBudgetViewInvest = 'Инвестиции в Среда - Синтетичен разрез';

{ TfmBudget }

class function TfmBudget.ManualDetailFetch: Boolean;
begin
  Result:= True;
end;

procedure TfmBudget.cdsDetailAfterOpen(DataSet: TDataSet);
const
  AggregatePatterns: array [0..2] of TAggregatePattern = (
    (AggName: 'SUM_TOTAL_DEPT_PLAN_PRICE'; AggExpression: 'Sum(TOTAL_DEPT_PLAN_PRICE)'; GroupingLevel: 2; IsRedundant: False),
    (AggName: 'SUM_TOTAL_DEPT_REAL_PRICE'; AggExpression: 'Sum(TOTAL_DEPT_REAL_PRICE)'; GroupingLevel: 2; IsRedundant: False),
    (AggName: 'SUM_TOTAL_BOIO_PLAN_PRICE'; AggExpression: 'Sum(TOTAL_BOIO_PLAN_PRICE)'; GroupingLevel: 2; IsRedundant: False)
  );

  ColumnFieldPatterns: array [0..19] of TColumnFieldPattern = (
    ( FieldNamePattern: 'DEPT_NAME'; FieldDisplayLabelPattern: SConsumerDeptName;
      IsRedundant: False; InitialVisible: True; ColumnWidth: 181; ColumnColor: 0; Tag: 0),
    ( FieldNamePattern: 'DEPT_IDENTIFIER'; FieldDisplayLabelPattern: SConsumerDeptNo;
      IsRedundant: False; InitialVisible: True; ColumnWidth: 81; ColumnColor: 0; Tag: 0),

    ( FieldNamePattern: 'TOTAL_DEPT_PLAN_PRICE'; FieldDisplayLabelPattern: STotalDeptPlanPrice;
      IsRedundant: False; InitialVisible: True; ColumnWidth: 71; ColumnColor: ccBudgetPeriodSummaryBackground; Tag: 0),

    ( FieldNamePattern: 'TOTAL_BOIO_PLAN_PRICE'; FieldDisplayLabelPattern: STotalBOIOPlanPrice;
      IsRedundant: False; InitialVisible: True; ColumnWidth: 71; ColumnColor: ccBudgetPeriodSummaryBackground; Tag: 5),
    ( FieldNamePattern: 'BOIO_PLAN_TO_PLAN_DEV'; FieldDisplayLabelPattern: STotalBOIOPlanToPlanDev;
      IsRedundant: False; InitialVisible: False; ColumnWidth: 71; ColumnColor: ccBudgetPeriodSummaryBackground; Tag: 702),
    ( FieldNamePattern: 'BOIO_PLAN_TO_PLAN_DEV_P'; FieldDisplayLabelPattern: STotalBOIOPlanToPlanDevPercent;
      IsRedundant: False; InitialVisible: False; ColumnWidth: 71; ColumnColor: ccBudgetPeriodSummaryBackground; Tag: 703),

    ( FieldNamePattern: 'TOTAL_DEPT_REAL_PRICE'; FieldDisplayLabelPattern: STotalDeptRealPrice;
      IsRedundant: False; InitialVisible: True; ColumnWidth: 71; ColumnColor: ccBudgetPeriodSummaryBackground; Tag: 9),
    ( FieldNamePattern: 'REAL_TO_PLAN_DEV'; FieldDisplayLabelPattern: STotalRealToPlanDev;
      IsRedundant: False; InitialVisible: False; ColumnWidth: 71; ColumnColor: ccBudgetPeriodSummaryBackground; Tag: 1102),
    ( FieldNamePattern: 'REAL_TO_PLAN_DEV_P'; FieldDisplayLabelPattern: STotalRealToPlanDevPercent;
      IsRedundant: False; InitialVisible: False; ColumnWidth: 71; ColumnColor: ccBudgetPeriodSummaryBackground; Tag: 1103),
    ( FieldNamePattern: 'REAL_TO_BOIO_PLAN_DEV'; FieldDisplayLabelPattern: STotalRealToBOIOPlanDev;
      IsRedundant: False; InitialVisible: False; ColumnWidth: 71; ColumnColor: ccBudgetPeriodSummaryBackground; Tag: 1302),
    ( FieldNamePattern: 'REAL_TO_BOIO_PLAN_DEV_P'; FieldDisplayLabelPattern: STotalRealToBOIOPlanDevPercent;
      IsRedundant: False; InitialVisible: False; ColumnWidth: 71; ColumnColor: ccBudgetPeriodSummaryBackground; Tag: 1303),


    ( FieldNamePattern: 'DEPT_PLAN_PRICE_%d'; FieldDisplayLabelPattern: SDeptPlanPrice;
      IsRedundant: True; InitialVisible: True; ColumnWidth: 71; ColumnColor: 0; Tag: 0),

    ( FieldNamePattern: 'BOIO_PLAN_PRICE_%d'; FieldDisplayLabelPattern: SBOIOPlanPrice;
      IsRedundant: True; InitialVisible: True; ColumnWidth: 71; ColumnColor: 0; Tag: 5),
    ( FieldNamePattern: 'BOIO_PLAN_TO_PLAN_DEV_%d'; FieldDisplayLabelPattern: SBOIOPlanToPlanDev;
      IsRedundant: True; InitialVisible: False; ColumnWidth: 71; ColumnColor: 0; Tag: 702),
    ( FieldNamePattern: 'BOIO_PLAN_TO_PLAN_DEV_P_%d'; FieldDisplayLabelPattern: SBOIOPlanToPlanDevPercent;
      IsRedundant: True; InitialVisible: False; ColumnWidth: 71; ColumnColor: 0; Tag: 703),

    ( FieldNamePattern: 'DEPT_REAL_PRICE_%d'; FieldDisplayLabelPattern: SDeptRealPrice;
      IsRedundant: True; InitialVisible: True; ColumnWidth: 71; ColumnColor: 0; Tag: 9),
    ( FieldNamePattern: 'REAL_TO_PLAN_DEV_%d'; FieldDisplayLabelPattern: SRealToPlanDev;
      IsRedundant: True; InitialVisible: False; ColumnWidth: 71; ColumnColor: 0; Tag: 1102),
    ( FieldNamePattern: 'REAL_TO_PLAN_DEV_P_%d'; FieldDisplayLabelPattern: SRealToPlanDevPercent;
      IsRedundant: True; InitialVisible: False; ColumnWidth: 71; ColumnColor: 0; Tag: 1103),
    ( FieldNamePattern: 'REAL_TO_BOIO_PLAN_DEV_%d'; FieldDisplayLabelPattern: SRealToBOIOPlanDev;
      IsRedundant: True; InitialVisible: False; ColumnWidth: 71; ColumnColor: 0; Tag: 1302),
    ( FieldNamePattern: 'REAL_TO_BOIO_PLAN_DEV_P_%d'; FieldDisplayLabelPattern: SRealToBOIOPlanDevPercent;
      IsRedundant: True; InitialVisible: False; ColumnWidth: 71; ColumnColor: 0; Tag: 1303)
  );

begin
  inherited;

  cdsGridData.DisableControls;
  try
    cdsDetail.DisableControls;
    try
      cdsDetail.MasterSource:= nil;
      cdsDetail.MasterFields:= '';

      InitializeDataSetFieldsProperties(cdsDetail);
      CreateAggregates(cdsDetail, AggregatePatterns);

      CreateGridColumns(cdsDetail, grdDeptBudgetView, ColumnFieldPatterns, 2);

      FillMasterDataSet;
      grdBudgetClasses.ConvertToTreeList('BUDGET_PRODUCT_CODE', 'PARENT_CODE');
      grdDetail.Columns.Assign(grdDeptBudgetView.Columns); // zaradi excel exporta

      cdsDetail.MasterSource:= dsGridData;
      cdsDetail.MasterFields:= 'BUDGET_PRODUCT_CODE';

    finally
      cdsDetail.EnableControls;
    end;  { try }

  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

procedure TfmBudget.CreateAggregates(ADataSet: TAbmesClientDataSet; AAggregatesPattern: array of TAggregatePattern);

  procedure AddAggregate(a: TAggregatePattern; ANo: Integer = 0);
  begin
    with ADataSet.Aggregates.Add do
      begin
      
        if (ANo > 0) then
          begin
            AggregateName:= Format(a.AggName, [ANo]);
            Expression:= Format(a.AggExpression, [ANo, ANo, ANo]);
          end
        else
          begin
            AggregateName:= a.AggName;
            Expression:= a.AggExpression;
          end;

        IndexName:= 'idxDefault';
        GroupingLevel:= a.GroupingLevel;
        Visible:= True;
        Active:= True;
      end;  { with }
  end;

var
  i, j, TimeUnitCount: Integer;
  StartRedundantIndex: Integer;

begin
  TimeUnitCount:= ADataSet.Params.ParamByName('TIME_UNIT_COUNT').AsInteger;
  StartRedundantIndex:= Low(AAggregatesPattern);

  while (StartRedundantIndex <= High(AAggregatesPattern)) and not AAggregatesPattern[StartRedundantIndex].IsRedundant do
    begin
      AddAggregate(AAggregatesPattern[StartRedundantIndex]);
      Inc(StartRedundantIndex);
    end;  { while }

  for i:= 1 to TimeUnitCount do
    for j:= StartRedundantIndex to High(AAggregatesPattern) do
      AddAggregate(AAggregatesPattern[j], i);
end;

procedure TfmBudget.CreateGridColumns(ADataSet: TAbmesClientDataSet; AGrid: TAbmesDBGrid; AColumnPatterns: array of TColumnFieldPattern; AFrozenCols: Integer);

  procedure AddColumn(AColumnFieldPattern: TColumnFieldPattern; APeriod: string = ''; ANo: Integer = 0);
  begin
    ADataSet.FieldByName(Format(AColumnFieldPattern.FieldNamePattern, [ANo])).DisplayLabel:=
      Format(FormatMessage(AColumnFieldPattern.FieldDisplayLabelPattern, FMsgParams), [APeriod]);

    with AGrid.Columns.Add do
      begin
        FieldName:= Format(AColumnFieldPattern.FieldNamePattern, [ANo]);
        Visible:= AColumnFieldPattern.InitialVisible;
        Width:= ScalePixels(AColumnFieldPattern.ColumnWidth);
        MinWidth:= ScalePixels(AColumnFieldPattern.ColumnWidth);
        Tag:= AColumnFieldPattern.Tag;

        if (AColumnFieldPattern.ColumnColor <> 0) then
          Color:= AColumnFieldPattern.ColumnColor;
      end;  { with }
  end;

var
  i, j, TimeUnitCount, StartRedundantFieldsIndex: Integer;
  ThePeriod: TPeriod;
  BeginDate: TDateTime;
  PeriodLabel: string;

begin
  AGrid.FrozenCols:= 0;
  AGrid.Columns.Clear;

  StartRedundantFieldsIndex:= 0;
  while (StartRedundantFieldsIndex <= High(AColumnPatterns)) and not AColumnPatterns[StartRedundantFieldsIndex].IsRedundant do
    begin
      AddColumn(AColumnPatterns[StartRedundantFieldsIndex]);
      Inc(StartRedundantFieldsIndex);
    end;  { while }

  TimeUnitCount:= pdsGridDataParamsTIME_UNIT_COUNT.AsInteger;
  ThePeriod:= GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger);
  BeginDate:=  pdsGridDataParamsBEGIN_DATE.AsDateTime;

  for i:= 1 to TimeUnitCount do
    begin
      PeriodLabel:= GetPeriodLabel(IncDate(BeginDate, ThePeriod, i-1), ThePeriod);

      for j:= StartRedundantFieldsIndex to High(AColumnPatterns) do
        begin
          Assert(AColumnPatterns[j].IsRedundant, 'CreateGridColumns: column array should begin with non-redundant and should end with redundant column(s)');
          AddColumn(AColumnPatterns[j], PeriodLabel, i);
        end;  { for }
    end;  { for }

  AGrid.FrozenCols:= AFrozenCols;
end;

procedure TfmBudget.grdBudgetClassesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;

  with Column.Field.DataSet do
    if BOF and EOF then
      Exit;

  if (Column.FieldName = '_BUDGET_CLASS_TREE_DISPLAY_NAME') then
    DrawTreeImageColumnCell(
      grdBudgetClasses,
      dmMain.ilBudgetClassesTreeIcons,
      grdBudgetClasses.DataSource.DataSet.FieldByName('_BUDGET_CLASS_TREE_ICON').AsInteger,
      Rect,
      Column
    );
end;

procedure TfmBudget.grdBudgetClassesGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;
  if (grdBudgetClasses.DataSource.DataSet.FieldByName('IS_GROUP').AsInteger = 1) and
     (Column.FieldName <> '_BUDGET_CLASS_TREE_DISPLAY_NAME') and
     not VarIsNullOrEmpty(Column.Field.AsVariant) and
     (LargeZero(Column.Field.AsInteger) <> 0) and
     not (gdSelected in State) then
    Background:= ccBudgetPeriodSummaryBackground;
end;

procedure TfmBudget.InitializeDataSetFieldsProperties(ADataSet: TAbmesClientDataSet);
var
  i: Integer;
begin
  with ADataSet do
    for i:= 0 to FieldCount - 1 do
      begin
        if (Pos('AVG_', Fields[i].FieldName) = 1) or
           (Pos('_DEV_P', Fields[i].FieldName) > 0) or
           (Pos('_PERCENT', Fields[i].FieldName) > 0) then
          Fields[i].OnGetText:= PercentGetText;

        if ( (Fields[i] is TAbmesFloatField) or
             (Fields[i] is TAggregateField)
           ) and
           (Fields[i].FieldName <> 'CUSTOM_CODE') then
          begin
            (Fields[i] as TNumericField).DisplayFormat:= ',0';
          end;  { if }
      end;  { for }
end;

procedure TfmBudget.cdsGridDataCalcFields(DataSet: TDataSet);

  procedure CalcDeviation(AResultField, AFromField, AToField: TAbmesFloatField; AInPercents: Boolean = False);
  begin
    if (AFromField.AsFloat = 0) then
      AResultField.Clear
    else
      AResultField.AsVariant:=
        FloatToVar((AToField.AsFloat - AFromField.AsFloat) / IfThen(AInPercents, AFromField.AsFloat, 1));
  end;

  procedure CalcDeviationPercent(AResultField, AFromField, AToField: TAbmesFloatField);
  begin
    CalcDeviation(AResultField, AFromField, AToField, True);
  end;

begin
  inherited;

  if (cdsGridDataBUDGET_PRODUCT_CODE.AsInteger = tnRootBudgetClassCode) then
    cdsGridData_BUDGET_CLASS_TREE_DISPLAY_NAME.AsString:=
      cdsGridDataCUSTOM_CODE.AsString +
      ' ' +
      IfThen((FBudgetMode = bmExpense), SExpense, SInvest)
  else
    cdsGridData_BUDGET_CLASS_TREE_DISPLAY_NAME.AsString:=
      cdsGridDataCUSTOM_CODE.AsString +
      ' ' +
      cdsGridDataNAME.AsString;

  cdsGridData_BUDGET_CLASS_TREE_ICON.AsInteger:=
    2 * (1 - cdsGridDataIS_GROUP.AsInteger) * cdsGridDataBOI_ORDER_TYPE_CODE.AsInteger * (1 + cdsGridDataIS_INACTIVE.AsInteger);

  CalcDeviation(cdsGridData_TOTAL_REAL_TO_PLAN_DEV, cdsGridDataTOTAL_PLAN_PRICE, cdsGridDataTOTAL_REAL_PRICE);
  CalcDeviation(cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV, cdsGridDataTOTAL_PLAN_PRICE, cdsGridDataTOTAL_BOIO_PLAN_PRICE);
  CalcDeviation(cdsGridData_TOTAL_REAL_TO_BOIO_PLAN_DEV, cdsGridDataTOTAL_BOIO_PLAN_PRICE, cdsGridDataTOTAL_REAL_PRICE);

  CalcDeviationPercent(cdsGridData_TOTAL_REAL_TO_PLAN_DEV_P, cdsGridDataTOTAL_PLAN_PRICE, cdsGridDataTOTAL_REAL_PRICE);
  CalcDeviationPercent(cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV_P, cdsGridDataTOTAL_PLAN_PRICE, cdsGridDataTOTAL_BOIO_PLAN_PRICE);
  CalcDeviationPercent(cdsGridData_TOTAL_REAL_TO_BOIO_PLAN_DEV_P, cdsGridDataTOTAL_BOIO_PLAN_PRICE, cdsGridDataTOTAL_REAL_PRICE);

  cdsGridData_REPORT_TITLE.AsString:= Caption;
  cdsGridData_BUDGET_MODE.AsInteger:= BudgetModeToInt(FBudgetMode);

  cdsGridData_BUDGET_PRODUCT_NAME.AsString:= frDept.edtTreeNodeName.Text;
  cdsGridData_BUDGET_PRODUCT_NO.AsString:= frDept.cdsTreeNodeNODE_NO.AsString;
  cdsGridData_DATE_INTERVAL.AsString:= frDateInterval.edtInterval.Text;
end;

procedure TfmBudget.FillMasterDataSet;
begin
  cdsGridData.First;

  while not cdsGridData.Eof do
    begin
      if cdsDetail.Locate('BUDGET_PRODUCT_CODE', cdsGridDataBUDGET_PRODUCT_CODE.AsInteger, []) then
        begin
          cdsGridData.Edit;
          cdsGridDataTOTAL_REAL_PRICE.AsVariant:= cdsDetail.Aggregates.Find('SUM_TOTAL_DEPT_REAL_PRICE').Value;
          cdsGridDataTOTAL_PLAN_PRICE.AsVariant:= cdsDetail.Aggregates.Find('SUM_TOTAL_DEPT_PLAN_PRICE').Value;
          cdsGridDataTOTAL_BOIO_PLAN_PRICE.AsVariant:= cdsDetail.Aggregates.Find('SUM_TOTAL_BOIO_PLAN_PRICE').Value;
          cdsGridData.Post;
          cdsGridData.Next;
        end
      else
        begin
          if not pdsGridDataParamsIS_EXPANDED.AsBoolean then
            cdsGridData.Delete
          else
            cdsGridData.Next;
        end;

    end;

  cdsGridData.First;
end;

procedure TfmBudget.cdsGridDataTOTAL_REAL_PRICEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudget.cdsGridDataTOTAL_BOIO_PLAN_PRICEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudget.cdsGridDataTOTAL_PLAN_PRICEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudget.cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEVGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudget.cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV_PGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudget.cdsGridData_TOTAL_DEVIATIONGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudget.cdsGridData_TOTAL_REAL_TO_BOIO_PLAN_DEVGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudget.cdsGridData_TOTAL_REAL_TO_BOIO_PLAN_DEV_PGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudget.cdsGridData_TOTAL_REAL_TO_PLAN_DEVGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudget.cdsGridData_TOTAL_REAL_TO_PLAN_DEV_PGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudget.cdsGridDataAVG_DEVIATION_PERCENTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudget.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmBudgetFilter;
  ReportClass:= TrptBudget;
  frDept.ShowAllWhenEmpty:= True;
  MaximizeStyle:= msFull;
end;

procedure TfmBudget.cdsDetailBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsDetail.Params, pdsGridDataParams);
  cdsDetail.Params.ParamByName('BUDGET_ORDER_CLASS_CODE').AsInteger:= BudgetModeToInt(FBudgetMode);
end;

procedure TfmBudget.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
const
  DefaultTimeUnitCount = 4;
begin
  pdsGridDataParams.Edit;
  try
    pdsGridDataParamsTIME_UNIT_CODE.AsInteger:= LoginContext.DefaultDateUnitCode;
    pdsGridDataParamsBEGIN_DATE.AsDateTime:= ContextDate;
    pdsGridDataParamsIS_LOCAL.AsBoolean:= False;
    pdsGridDataParamsIS_EXPANDED.AsBoolean:= True;
    pdsGridDataParamsMIN_BO_STATUS.AsInteger:= 1;
    pdsGridDataParamsMAX_BO_STATUS.AsInteger:= 4;
    pdsGridDataParamsTIME_UNIT_COUNT.AsInteger:= DefaultTimeUnitCount;

    pdsGridDataParamsCHOSEN_PRODUCTS.AsString:=
      cdsDetail.Params.ParamByName('CHOSEN_PRODUCTS').AsString;

    if Assigned(OuterDataSet) and (DefaultsOrigin = doDataset) then
      pdsGridDataParams.AssignFields(OuterDataSet);

    if Assigned(OuterDataSet) and
       Assigned(OuterDataSet.FindField('BUDGET_ORDER_ITEM_TYPE')) and
       not OuterDataSet.FieldByName('BUDGET_ORDER_ITEM_TYPE').IsNull then
      pdsGridDataParamsBUDGET_ORDER_ITEM_TYPE.AsInteger:=
        OuterDataSet.FieldByName('BUDGET_ORDER_ITEM_TYPE').AsInteger
    else
      pdsGridDataParamsBUDGET_ORDER_ITEM_TYPE.AsInteger:= 1;  // U - Uwelichenie na IP      

    pdsGridDataParamsIS_CHOSEN_PRODUCTS_READ_ONLY.AsBoolean:=
      Assigned(OuterDataSet) and
      Assigned(OuterDataSet.FindField('CHOSEN_PRODUCTS')) and
      not OuterDataSet.FieldByName('CHOSEN_PRODUCTS').IsNull;

    pdsGridDataParamsIS_OTP_STATE_CODE_READ_ONLY.AsBoolean:=
      Assigned(OuterDataSet) and
      Assigned(OuterDataSet.FindField('ORG_TASK_PROPOSAL_STATE_CODE')) and
      not OuterDataSet.FieldByName('ORG_TASK_PROPOSAL_STATE_CODE').IsNull;

    pdsGridDataParamsIS_BOI_TYPE_READ_ONLY.AsBoolean:=
      Assigned(OuterDataSet) and
      Assigned(OuterDataSet.FindField('BUDGET_ORDER_ITEM_TYPE')) and
      not OuterDataSet.FieldByName('BUDGET_ORDER_ITEM_TYPE').IsNull;

    pdsGridDataParams.Post;
  except
    pdsGridDataParams.Cancel;
    raise;
  end;  { try }

  inherited;
end;

procedure TfmBudget.grdDeptBudgetViewDblClick(Sender: TObject);
begin
  inherited;
  actOneLevelDown.Execute;
end;

procedure TfmBudget.grdDeptBudgetViewGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  FieldName: string;
begin
  inherited;

  FieldName:= Column.FieldName;

  if CharInSet(FieldName[Length(FieldName)], ['0'..'9']) and not Column.Field.IsNull then
    begin
      if StartsStr('DEPT_PLAN_PRICE', FieldName) then
        Background:= ccBudgetHasPlanPrice;

      if ( StartsStr('BOIO_PLAN_PRICE', FieldName) or
           StartsStr('BOIO_PLAN_TO_PLAN_DEV', FieldName)
         ) then
        Background:= ccBudgetHasBOIOPlanPrice;

      if ( StartsStr('DEPT_REAL_PRICE', FieldName) or
           StartsStr('REAL_TO_PLAN_DEV', FieldName) or
           StartsStr('REAL_TO_BOIO_PLAN_DEV', FieldName)
         ) then
        Background:= ccBudgetHasRealPrice;
    end;  { if }
end;

procedure TfmBudget.cdsDetail2BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  SetParams(cdsDetail2.Params, pdsGridDataParams);
  cdsDetail2.Params.ParamByName('BUDGET_ORDER_CLASS_CODE').AsInteger:= BudgetModeToInt(FBudgetMode);
end;

procedure TfmBudget.FormShow(Sender: TObject);
begin
  inherited;
  cdsDetail2.Open;
  pcDetailViews.ActivePage:= tsDeptBudgetView;
end;

procedure TfmBudget.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsDetail2.Close;
  inherited;
end;

procedure TfmBudget.cdsDetail2AfterOpen(DataSet: TDataSet);
const
  AggregatePatterns: array [0..8] of TAggregatePattern = (
    (AggName: 'SUM_PLAN_PRICE_%d'; AggExpression: 'Sum((1 - IS_DISTRIBUTED) * PLAN_PRICE_%d)'; GroupingLevel: 1; IsRedundant: True),
    (AggName: 'SUM_BOIO_PLAN_PRICE_%d'; AggExpression: 'Sum((1 - IS_DISTRIBUTED) * BOIO_PLAN_PRICE_%d)'; GroupingLevel: 1; IsRedundant: True),
    (AggName: 'TOTAL_BOIO_PLAN_TO_PLAN_DEV_%d'; AggExpression: 'Sum((1 - IS_DISTRIBUTED) * BOIO_PLAN_PRICE_%d) - Sum((1 - IS_DISTRIBUTED) * PLAN_PRICE_%d)'; GroupingLevel: 1; IsRedundant: True),
    (AggName: 'TOTAL_BOIO_PLAN_TO_PLAN_DEV_P_%d'; AggExpression: '100 * (Sum((1 - IS_DISTRIBUTED) * BOIO_PLAN_PRICE_%d) - Sum((1 - IS_DISTRIBUTED) * PLAN_PRICE_%d)) / Sum((1 - IS_DISTRIBUTED) * PLAN_PRICE_%d)'; GroupingLevel: 1; IsRedundant: True),
    (AggName: 'SUM_REAL_PRICE_%d'; AggExpression: 'Sum((1 - IS_DISTRIBUTED) * REAL_PRICE_%d)'; GroupingLevel: 1; IsRedundant: True),
    (AggName: 'TOTAL_REAL_TO_PLAN_DEV_%d'; AggExpression: 'Sum((1 - IS_DISTRIBUTED) * REAL_PRICE_%d) - Sum((1 - IS_DISTRIBUTED) * PLAN_PRICE_%d)'; GroupingLevel: 1; IsRedundant: True),
    (AggName: 'TOTAL_REAL_TO_PLAN_DEV_P_%d'; AggExpression: '100 * (Sum((1 - IS_DISTRIBUTED) * REAL_PRICE_%d) - Sum((1 - IS_DISTRIBUTED) * PLAN_PRICE_%d)) / Sum((1 - IS_DISTRIBUTED) * PLAN_PRICE_%d)'; GroupingLevel: 1; IsRedundant: True),
    (AggName: 'TOTAL_REAL_TO_BOIO_PLAN_DEV_%d'; AggExpression: 'Sum((1 - IS_DISTRIBUTED) * REAL_PRICE_%d) - Sum((1 - IS_DISTRIBUTED) * BOIO_PLAN_PRICE_%d)'; GroupingLevel: 1; IsRedundant: True),
    (AggName: 'TOTAL_REAL_TO_BOIO_PLAN_DEV_P_%d'; AggExpression: '100 * (Sum((1 - IS_DISTRIBUTED) * REAL_PRICE_%d) - Sum((1 - IS_DISTRIBUTED) * BOIO_PLAN_PRICE_%d)) / Sum((1 - IS_DISTRIBUTED) * BOIO_PLAN_PRICE_%d)'; GroupingLevel: 1; IsRedundant: True)
  );

  ColumnFieldPatterns: array [0..17] of TColumnFieldPattern = (
    ( FieldNamePattern: 'BUDGET_ORDER_IDENTIFIER'; FieldDisplayLabelPattern: SBudgetOrderBranch;
      IsRedundant: False; InitialVisible: True; ColumnWidth: 60; ColumnColor: 0; Tag: 0),
    ( FieldNamePattern: 'BUDGET_ORDER_ITEM_STATUS_CODE'; FieldDisplayLabelPattern: SBudgetOrderItemStatus;
      IsRedundant: False; InitialVisible: True; ColumnWidth: 30; ColumnColor: 0; Tag: 0),
    ( FieldNamePattern: 'BUDGET_ORDER_ITEM_CODE'; FieldDisplayLabelPattern: SBudgetOrderItemNo;
      IsRedundant: False; InitialVisible: True; ColumnWidth: 20; ColumnColor: 0; Tag: 0),
    ( FieldNamePattern: 'CUSTOM_CODE'; FieldDisplayLabelPattern: SBudgetClassFullNo;
      IsRedundant: False; InitialVisible: True; ColumnWidth: 40; ColumnColor: 0; Tag: 0),
    ( FieldNamePattern: 'BUDGET_PRODUCT_NAME'; FieldDisplayLabelPattern: SBudgetClassShortName;
      IsRedundant: False; InitialVisible: True; ColumnWidth: 130; ColumnColor: 0; Tag: 0),
    ( FieldNamePattern: 'BOI_ORDER_TYPE_ABBREV'; FieldDisplayLabelPattern: SBOIOrderTypeAbbrev;
      IsRedundant: False; InitialVisible: True; ColumnWidth: 40; ColumnColor: 0; Tag: 0),
    ( FieldNamePattern: 'HAS_DOCUMENTATION'; FieldDisplayLabelPattern: SDocumentation;
      IsRedundant: False; InitialVisible: True; ColumnWidth: 12; ColumnColor: ccDocBackground; Tag: 0),
    ( FieldNamePattern: 'DEPT_IDENTIFIER'; FieldDisplayLabelPattern: SDeptIdentifier;
      IsRedundant: False; InitialVisible: True; ColumnWidth: 45; ColumnColor: 0; Tag: 0),
    ( FieldNamePattern: 'BOI_DISTRIBUTION_TYPE_NAME'; FieldDisplayLabelPattern: SBOIDistributionType;
      IsRedundant: False; InitialVisible: True; ColumnWidth: 40; ColumnColor: 0; Tag: 0),

    ( FieldNamePattern: 'PLAN_PRICE_%d'; FieldDisplayLabelPattern: SDeptPlanPrice;
      IsRedundant: True; InitialVisible: True; ColumnWidth: 80; ColumnColor: 0; Tag: 0),

    ( FieldNamePattern: 'BOIO_PLAN_PRICE_%d'; FieldDisplayLabelPattern: SBOIOPlanPrice;
      IsRedundant: True; InitialVisible: True; ColumnWidth: 80; ColumnColor: 0; Tag: 5),
    ( FieldNamePattern: 'BOIO_PLAN_TO_PLAN_DEV_%d'; FieldDisplayLabelPattern: SBOIOPlanToPlanDev;
      IsRedundant: True; InitialVisible: False; ColumnWidth: 80; ColumnColor: 0; Tag: 702),
    ( FieldNamePattern: 'BOIO_PLAN_TO_PLAN_DEV_P_%d'; FieldDisplayLabelPattern: SBOIOPlanToPlanDevPercent;
      IsRedundant: True; InitialVisible: False; ColumnWidth: 80; ColumnColor: 0; Tag: 703),

    ( FieldNamePattern: 'REAL_PRICE_%d'; FieldDisplayLabelPattern: SDeptRealPrice;
      IsRedundant: True; InitialVisible: True; ColumnWidth: 80; ColumnColor: 0; Tag: 9),
    ( FieldNamePattern: 'REAL_TO_PLAN_DEV_%d'; FieldDisplayLabelPattern: SRealToPlanDev;
      IsRedundant: True; InitialVisible: False; ColumnWidth: 80; ColumnColor: 0; Tag: 1102),
    ( FieldNamePattern: 'REAL_TO_PLAN_DEV_P_%d'; FieldDisplayLabelPattern: SRealToPlanDevPercent;
      IsRedundant: True; InitialVisible: False; ColumnWidth: 80; ColumnColor: 0; Tag: 1103),
    ( FieldNamePattern: 'REAL_TO_BOIO_PLAN_DEV_%d'; FieldDisplayLabelPattern: SRealToBOIOPlanDev;
      IsRedundant: True; InitialVisible: False; ColumnWidth: 80; ColumnColor: 0; Tag: 1302),
    ( FieldNamePattern: 'REAL_TO_BOIO_PLAN_DEV_P_%d'; FieldDisplayLabelPattern: SRealToBOIOPlanDevPercent;
      IsRedundant: True; InitialVisible: False; ColumnWidth: 80; ColumnColor: 0; Tag: 1303)
  );

begin
  inherited;

  InitializeDataSetFieldsProperties(cdsDetail2);
  SetDistributedPriceFieldGetTextEventHandler;
  CreateAggregates(cdsDetail2, AggregatePatterns);
  CreateGridColumns(cdsDetail2, grdBudgetOrderItems, ColumnFieldPatterns, 9);

  with cdsDetail2.FieldByName('HAS_DOCUMENTATION') as TAbmesFloatField do
    begin
      DisplayBoolValues:= 'i;';
      FieldValueType:= fvtBoolean;
    end;

  cdsDetail2.FieldByName('CUSTOM_CODE').Alignment:= taLeftJustify; 

  with cdsDetail2.FieldByName('BUDGET_ORDER_ITEM_STATUS_CODE') do
    begin
      Alignment:= taLeftJustify;
      OnGetText:= StatusFieldGetText;
    end;

  with grdBudgetOrderItems.Columns[6].Font do
    begin
      Name:= 'Courier New';
      Style:= [fsBold];
    end;

  cdsDetail2.MasterSource:= dsGridData;
  cdsDetail2.MasterFields:= 'BUDGET_PRODUCT_CODE';
end;

procedure TfmBudget.DetailDataSetBeforeClose(ADataSet: TAbmesClientDataSet; AGrid: TAbmesDBGrid);
begin
  ADataSet.MasterSource:= nil;
  ADataSet.MasterFields:= '';
  AGrid.Columns.Clear;
end;

procedure TfmBudget.cdsDetailBeforeClose(DataSet: TDataSet);
begin
  inherited;
  DetailDataSetBeforeClose(cdsDetail, grdDeptBudgetView);
end;

procedure TfmBudget.grdBudgetOrderItemsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
const
  GrayFields: array [1..11] of string =
    ( 'CUSTOM_CODE', 'BUDGET_PRODUCT_NAME', 'HAS_DOCUMENTATION', 'DEPT_IDENTIFIER',
      'BOI_DISTRIBUTION_TYPE_NAME', 'PLAN_PRICE', 'REAL_PRICE', 'DEVIATION_PERCENT',
      'BOIO_PLAN_PRICE', 'BOIO_PLAN_TO_PLAN_DEV_P', 'REAL_TO_BOIO_PLAN_DEV_P');
var
  i: Integer;
  FieldName: string;
begin
  inherited;
  FieldName:= Column.FieldName;

  if CharInSet(FieldName[Length(FieldName)], ['0'..'9']) and not Column.Field.IsNull then
    begin
      if StartsStr('PLAN_PRICE', FieldName) then
        Background:= ccBudgetHasPlanPrice;

      if ( StartsStr('BOIO_PLAN_PRICE', FieldName) or
           StartsStr('BOIO_PLAN_TO_PLAN_DEV', FieldName)
         ) then
        Background:= ccBudgetHasBOIOPlanPrice;

      if ( StartsStr('REAL_PRICE', FieldName) or
           StartsStr('REAL_TO_PLAN_DEV', FieldName) or
           StartsStr('REAL_TO_BOIO_PLAN_DEV', FieldName)
         ) then
        Background:= ccBudgetHasRealPrice;
    end;  { if }

  if (cdsDetail2.FieldByName('IS_DISTRIBUTED').AsInteger = 1) then
    for i:= Low(GrayFields) to High(GrayFields) do
      if StartsStr(GrayFields[i], Column.FieldName) then
        begin
          AFont.Color:= clGray;
          Break;
        end;

  if (Column.Field = cdsDetail2.FieldByName('BO_REGULARITY_TYPE_NAME')) and
     not cdsDetail2.FieldByName('BO_REGULARITY_TYPE_CODE').IsNull then
    AFont.Color:= BoRegularityTypeColors[cdsDetail2.FieldByName('BO_REGULARITY_TYPE_CODE').AsInteger];
end;

procedure TfmBudget.grdBudgetOrderItemsGetFooterParams(Sender: TObject; DataCol,
  Row: Integer; Column: TColumnEh; AFont: TFont; var Background: TColor;
  var Alignment: TAlignment; State: TGridDrawState; var Text: string);
var
  a: TAggregate;
begin
  inherited;
  with (Sender as TAbmesDBGrid).DataSource.DataSet as TAbmesClientDataSet do
    begin
      a:= Aggregates.Find('SUM_' + Column.FieldName);

      if not Assigned(a) then
        a:= Aggregates.Find('TOTAL_' + Column.FieldName);

      if Assigned(a) and not VarIsNullOrEmpty(a.Value) then
        Text:= FormatFloat(',0', VarToFloat(a.Value));
    end;  { with }
end;

procedure TfmBudget.DistributedPriceFieldGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Assert(Sender.DataSet = cdsDetail2);

  if (cdsDetail2.FieldByName('IS_DISTRIBUTED').AsInteger = 1) then
    Text:= SDistributedPrice
  else
    begin
      if (Pos('_DEV_P_', Sender.FieldName) > 0) then
        PercentFieldGetText(Sender, Text, DisplayText)
      else
        NumericFieldGetText(Sender, Text, DisplayText);
    end;
end;

procedure TfmBudget.SetDistributedPriceFieldGetTextEventHandler;
var
  i, TimeUnitCount: Integer;
begin
  TimeUnitCount:= cdsDetail2.Params.ParamByName('TIME_UNIT_COUNT').AsInteger;

  with cdsDetail2 do
    for i:= 1 to TimeUnitCount do
      begin
        FieldByName(Format('PLAN_PRICE_%d', [i])).OnGetText:= DistributedPriceFieldGetText;
        FieldByName(Format('BOIO_PLAN_PRICE_%d', [i])).OnGetText:= DistributedPriceFieldGetText;
        FieldByName(Format('BOIO_PLAN_TO_PLAN_DEV_%d', [i])).OnGetText:= DistributedPriceFieldGetText;
        FieldByName(Format('BOIO_PLAN_TO_PLAN_DEV_P_%d', [i])).OnGetText:= DistributedPriceFieldGetText;
        FieldByName(Format('REAL_PRICE_%d', [i])).OnGetText:= DistributedPriceFieldGetText;
        FieldByName(Format('REAL_TO_PLAN_DEV_%d', [i])).OnGetText:= DistributedPriceFieldGetText;
        FieldByName(Format('REAL_TO_PLAN_DEV_P_%d', [i])).OnGetText:= DistributedPriceFieldGetText;
        FieldByName(Format('REAL_TO_BOIO_PLAN_DEV_%d', [i])).OnGetText:= DistributedPriceFieldGetText;
        FieldByName(Format('REAL_TO_BOIO_PLAN_DEV_P_%d', [i])).OnGetText:= DistributedPriceFieldGetText;
      end;  { for }
end;

procedure TfmBudget.cdsDetail2BeforeClose(DataSet: TDataSet);
begin
  inherited;
  DetailDataSetBeforeClose(cdsDetail2, grdBudgetOrderItems);
end;

function TfmBudget.ChosenPeriod: TPeriod;
begin
  Result:= GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger);
end;

function TfmBudget.GetSelectedCellTimeUnitCount: Integer;
var
  SelectedFieldName: string;
  i: Integer;
begin
  SelectedFieldName:= grdBudgetOrderItems.SelectedField.FieldName;
  i:= Length(SelectedFieldName);
  while CharInSet(SelectedFieldName[i], ['0'..'9']) do
    Dec(i);

  Result:= StrToInt(Copy(SelectedFieldName, i+1, Length(SelectedFieldName) - i));
end;

function TfmBudget.GetSelectedPeriodFirstDate: TDateTime;
begin
  Result:=
    IncDate(
      GetPeriodFirstDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, ChosenPeriod),
      ChosenPeriod,
      GetSelectedCellTimeUnitCount - 1
    );
end;

function TfmBudget.GetSelectedCellPeriodFirstDate: TDateTime;
begin
  Result:= GetPeriodFirstDate(GetSelectedPeriodFirstDate, ChosenPeriod);
end;

function TfmBudget.GetSelectedCellPeriodLastDate: TDateTime;
begin
  Result:= GetPeriodLastDate(GetSelectedPeriodFirstDate, ChosenPeriod);
end;

procedure TfmBudget.grdBudgetOrderItemsDblClick(Sender: TObject);
const
  BOIOrdersForms: array[1..4] of TfmBOIOrdersClass =
    (TfmBOIProductOrders, TfmBOICompanyOrders, TfmBOIWasteOrders, TfmBOIMarkingOrders);

  procedure ShowBOIOrdersForm;
  begin
    cdsBOIOrdersParams.FieldDefs.Assign(cdsDetail2.FieldDefs);
    cdsBOIOrdersParams.FieldDefs.Add('IS_FILTERED_BY_BOI_ORDERS', ftFloat);
    cdsBOIOrdersParams.FieldDefs.Add('MIN_STATUS_CODE', ftFloat);
    cdsBOIOrdersParams.FieldDefs.Add('MIN_ITEM_STATUS_CODE', ftFloat);
    cdsBOIOrdersParams.FieldDefs.Add('MAX_BOIO_STATUS_CODE', ftFloat);
    cdsBOIOrdersParams.FieldDefs.Add('BOIO_BEGIN_PLAN_DATE', ftDateTime);
    cdsBOIOrdersParams.FieldDefs.Add('BOIO_END_PLAN_DATE', ftDateTime);

    cdsBOIOrdersParams.TempCreateDataSet/
      procedure begin
        cdsBOIOrdersParams.SafeAppend/
          procedure begin
            cdsBOIOrdersParams.AssignFields(cdsDetail2);
            cdsBOIOrdersParams.FieldByName('IS_FILTERED_BY_BOI_ORDERS').AsInteger:= 1;
            cdsBOIOrdersParams.FieldByName('MIN_STATUS_CODE').AsInteger:= MinBudgetOrderStatusCode;
            cdsBOIOrdersParams.FieldByName('MIN_ITEM_STATUS_CODE').AsInteger:= MinBudgetOrderItemStatusCode;
            cdsBOIOrdersParams.FieldByName('MAX_BOIO_STATUS_CODE').AsInteger:= ClosedBOIOrderStatusCode;
            cdsBOIOrdersParams.FieldByName('BOIO_BEGIN_PLAN_DATE').AsDateTime:= GetSelectedCellPeriodFirstDate;
            cdsBOIOrdersParams.FieldByName('BOIO_END_PLAN_DATE').AsDateTime:= GetSelectedCellPeriodLastDate;
          end;  { lambda }

        BOIOrdersForms[cdsDetail2.FieldByName('BOI_ORDER_TYPE_CODE').AsInteger].ShowForm(
          dmDocClient,
          cdsBOIOrdersParams,
          emReadOnly,
          doNone,
          False,
          FBudgetMode);
      end;  { lambda }
  end;

begin
  inherited;
  if StartsText('BOIO_PLAN_', grdBudgetOrderItems.SelectedField.FieldName) or
     StartsText('REAL_PRICE_', grdBudgetOrderItems.SelectedField.FieldName) or
     StartsText('REAL_TO_', grdBudgetOrderItems.SelectedField.FieldName) then
    begin
      ShowBOIOrdersForm;
    end
  else
    begin
      if not cdsDetail2.FieldByName('BUDGET_ORDER_BRANCH_CODE').IsNull then
        TfmBudgetOrder.ShowForm(dmDocClient, cdsDetail2, emReadOnly, doNone, False,
          IntToBudgetMode(cdsDetail2.FieldByName('BUDGET_ORDER_CLASS_CODE').AsInteger))
    end;
end;

procedure TfmBudget.PercentGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudget.cdsDetailAVG_AVG_DEPT_PRICE_DEV_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmBudget.cdsDetailAfterClose(DataSet: TDataSet);
begin
  inherited;
  cdsDetail.Filtered:= False;
  cdsDetail.Aggregates.Clear;
end;

procedure TfmBudget.cdsDetail2AfterClose(DataSet: TDataSet);
begin
  inherited;
  cdsDetail2.Aggregates.Clear;
end;

procedure TfmBudget.StatusFieldGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if Sender.IsNull then
    Text:= ''
  else
    Text:= GetBudgetOrderItemStatusText(Sender.AsInteger, sttAbbrevName);
end;

procedure TfmBudget.DoBeforeShow;
begin
  FMsgParams:= CreateCommonMsgParams(LoginContext, FBudgetMode);
  RecursivelyFormatCaptions(Self, FMsgParams);
  inherited;
end;

procedure TfmBudget.DoRefresh;
var
  SaveCursor: TCursor;
  B: TBookmark;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  b:= cdsGridData.Bookmark;
  
  try
    cdsGridData.CancelUpdates;
    RefreshDataSet(cdsGridData);
    RefreshDataSet(cdsDetail);
    RefreshDataSet(cdsDetail2);
    
  finally
    Screen.Cursor:= SaveCursor;

    try
      cdsGridData.Bookmark:= b;
    except
      cdsGridData.First;
    end;
    
  end;  { try }
end;

procedure TfmBudget.actDocumentationUpdate(Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    begin
      Enabled:= not cdsGridDataBUDGET_PRODUCT_CODE.IsNull;
      ImageIndex:= cdsGridDataHAS_DOCUMENTATION.AsInteger;
    end;
end;

procedure TfmBudget.actDocumentationExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDoc(
    emReadOnly,
    ((Sender as TAction).ActionComponent as TControl),
    dotProduct,
    cdsGridDataDOC_BRANCH_CODE.AsInteger,
    cdsGridDataDOC_CODE.AsInteger);
end;

procedure TfmBudget.actPrintDeptBudgetViewExecute(Sender: TObject);
var
  SaveCursor: TCursor;
  SavePage: TPrinterPage;
begin
  inherited;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsDetail.DisableControls;
    try
      SavePage:= SetUpPrinter(0, poLandscape, PrinterPreview.Printer);
      try
        case FBudgetMode of
          bmExpense:
            begin
              printDeptBudgetViewExpense.SetSubstitutes([
                'plblDeptBudgetViewExpense', plblDeptBudgetViewExpense
              ]);
              printDeptBudgetViewExpense.PreviewModal;
            end;
          bmInvest:
            begin
              printDeptBudgetViewInvest.SetSubstitutes([
                'plblDeptBudgetViewInvest', plblDeptBudgetViewInvest
              ]);
              printDeptBudgetViewInvest.PreviewModal;
            end
        else
          raise Exception.Create('unknown budget mode');
        end;
      finally
        SetUpPrinter(SavePage.PaperSize, SavePage.Orientation, PrinterPreview.Printer);
      end;   { try }
    finally
      cdsDetail.EnableControls;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmBudget.actPrintExecute(Sender: TObject);

  function GetBOIOPlanColumnType: TBOIOPlanColumnType;
  begin
    Result:= boiopctBOIOPlanPrice;

    if btnMasterBOIOPlanPrice.Down then
      begin
        Result:= boiopctBOIOPlanPrice;
        Exit;
      end;  { if }

    if btnMasterBOIOPlanPriceDeviation.Down then
      begin
        if btnShowDeviationPercents.Down then
          Result:= boiopctBOIOPlanToPlanDevPercent
        else
          Result:= boiopctBOIOPlanToPlanDev;

        Exit;
      end;  { if }

    Assert(False, 'fmBudget.GetBOIOPlanColumnType: Result is not assigned');
  end;

  function GetRealColumnType: TRealColumnType;
  begin
    Result:= rctRealPrice;
    
    if btnMasterRealPrice.Down then
      begin
        Result:= rctRealPrice;
        Exit;
      end;  { if }

    if btnMasterRealToPlanDeviation.Down then
      begin
        if btnShowDeviationPercents.Down then
          Result:= rctRealToPlanDevPercent
        else
          Result:= rctRealToPlanDev;

        Exit;
      end;  { if }

    if btnMasterRealToBOIOPlanDeviation.Down then
      begin
        if btnShowDeviationPercents.Down then
          Result:= rctRealToBOIOPlanDevPercent
        else
          Result:= rctRealToBOIOPlanDev;

        Exit;
      end;  { if }

    Assert(False, 'fmBudget.GetRealColumnType: Result is not assigned');
  end;

var
  SavedIndexName: string;

begin
  pdsGridDataParams.Edit;
  try
    pdsGridDataParams_BOIO_PLAN_COLUMN_TYPE_CODE.AsInteger:= BOIOPlanColumnTypeToInt(GetBOIOPlanColumnType);
    pdsGridDataParams_REAL_COLUMN_TYPE_CODE.AsInteger:= RealColumnTypeToInt(GetRealColumnType);
    pdsGridDataParams.Post;
  except
    pdsGridDataParams.Cancel;
    raise;
  end;  { try }

  SavedIndexName:= cdsGridData.IndexName;
  cdsGridData.IndexName:= 'idxPrint';
  try
    inherited;
  finally
    cdsGridData.IndexName:= SavedIndexName;
  end;  { try }
end;

procedure TfmBudget.actShowBudgetGraphExecute(Sender: TObject);

  function GetPeriodLabelExtraInfo(ADate: TDateTime; APerod: TPeriod): string;
  var
    Year, Month, Day: Word;
  begin
    Result:= '';

    DecodeDate(ADate, Year, Month, Day);
    case APerod of
      perDay:
        if (DayOfTheWeek(ADate) = 1) then
          Result:= FormatDateTime('dd.mm', ADate);

      perWeek:
        Result:= FormatDateTime('dd.mm', ADate);

      perMonth:
        Result:=
          IntToStr(ISOWeekNumber(EncodeDate(Year, Month, 1))) + '-' +
          IntToStr(ISOWeekNumber(IncMonth(EncodeDate(Year, Month, 1)) - 1));

      perQuarter:
        if (((MonthOf(ADate)-1) div 3) = 0) then
          Result:= IntToStr(Year) + ' ' + SYearAbbrev;
    end;
  end;

var
  CurrentSumPlanPrice: Integer;
  CurrentSumBOIOPlanPrice: Integer;
  CurrentSumRealPrice: Integer;
  TimeUnitCount: Integer;
  ThePeriod: TPeriod;
  BeginDate: TDateTime;
  i: Integer;
begin
  inherited;

  TimeUnitCount:= pdsGridDataParamsTIME_UNIT_COUNT.AsInteger;
  ThePeriod:= GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger);
  BeginDate:=  pdsGridDataParamsBEGIN_DATE.AsDateTime;

  cdsBudgetGraph.CreateDataSet;
  try
    CurrentSumPlanPrice:= 0;
    CurrentSumBOIOPlanPrice:= 0;
    CurrentSumRealPrice:= 0;

    for i:= 1 to TimeUnitCount do
      begin
        cdsBudgetGraph.Append;
        try
          cdsBudgetGraphDATE_UNIT_NO.AsInteger:= i;
          cdsBudgetGraphPERIOD_LABEL.AsString:= GetPeriodLabel(IncDate(BeginDate, ThePeriod, i-1), ThePeriod);

          cdsBudgetGraphPERIOD_LABEL_EX.AsString:=
            cdsBudgetGraphPERIOD_LABEL.AsString + SLineBreak +
            GetPeriodLabelExtraInfo(IncDate(BeginDate, ThePeriod, i-1), ThePeriod);

          cdsBudgetGraphPLAN_PRICE.Assign(cdsDetail.FieldByName(Format('DEPT_PLAN_PRICE_%d', [i])));
          cdsBudgetGraphBOIO_PLAN_PRICE.Assign(cdsDetail.FieldByName(Format('BOIO_PLAN_PRICE_%d', [i])));
          cdsBudgetGraphREAL_PRICE.Assign(cdsDetail.FieldByName(Format('DEPT_REAL_PRICE_%d', [i])));

          Inc(CurrentSumPlanPrice, cdsBudgetGraphPLAN_PRICE.AsInteger);
          Inc(CurrentSumBOIOPlanPrice, cdsBudgetGraphBOIO_PLAN_PRICE.AsInteger);
          Inc(CurrentSumRealPrice, cdsBudgetGraphREAL_PRICE.AsInteger);

          cdsBudgetGraphAVG_PLAN_PRICE.AsFloat:= CurrentSumPlanPrice / i;
          cdsBudgetGraphAVG_BOIO_PLAN_PRICE.AsFloat:= CurrentSumBOIOPlanPrice / i;
          cdsBudgetGraphAVG_REAL_PRICE.AsFloat:= CurrentSumRealPrice / i;

          cdsBudgetGraph.Post;
        except
          cdsBudgetGraph.Cancel;
          raise;
        end;  { try }
      end;  { for }

    cdsBudgetGraphParams.CreateDataSet;
    try
      cdsBudgetGraphParams.Append;
      try
        if (cdsDetail.FieldByName('DEPT_CODE').AsInteger = tnRootDeptCode) then
          cdsBudgetGraphParamsDEPT_CODE.Clear
        else
          cdsBudgetGraphParamsDEPT_CODE.Assign(cdsDetail.FieldByName('DEPT_CODE'));

        cdsBudgetGraphParamsBEGIN_DATE.Assign(pdsGridDataParamsBEGIN_DATE);
        cdsBudgetGraphParamsEND_DATE.Assign(pdsGridDataParamsEND_DATE);
        cdsBudgetGraphParamsBUDGET_PRODUCT_CODE.Assign(cdsGridDataBUDGET_PRODUCT_CODE);
        cdsBudgetGraphParamsBUDGET_MODE_CODE.AsInteger:= BudgetModeToInt(FBudgetMode);

        cdsBudgetGraphParams.Post;
      except
        cdsBudgetGraphParams.Cancel;
        raise;
      end;  { try }

      TfmBudgetGraph.ShowForm(cdsBudgetGraph, cdsBudgetGraphParams, dmDocClient);
    finally
      cdsBudgetGraphParams.Close;
    end;  { try }
  finally
    cdsBudgetGraph.Close;
  end;  { try }
end;

procedure TfmBudget.actShowBudgetGraphUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsDetail.IsEmpty;
end;

procedure TfmBudget.actPrintBudgetOrderItemsExecute(Sender: TObject);
var
  SaveCursor: TCursor;
  SavePage: TPrinterPage;
begin
  inherited;

  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    cdsDetail2.DisableControls;
    try
      SavePage:= SetUpPrinter(0, poLandscape, PrinterPreview.Printer);
      try
        case FBudgetMode of
          bmExpense:
            begin
              printBudgetOrderItemsExpense.SetSubstitutes([
                'plblBudgetOrderItemsExpense', plblBudgetOrderItemsExpense
              ]);
              printBudgetOrderItemsExpense.PreviewModal;
            end;
          bmInvest:
            begin
              printBudgetOrderItemsInvest.SetSubstitutes([
                'plblBudgetOrderItemsInvest', plblBudgetOrderItemsInvest
              ]);
              printBudgetOrderItemsInvest.PreviewModal;
            end;
        else
          raise Exception.Create('unknown budget mode');
        end;
      finally
        SetUpPrinter(SavePage.PaperSize, SavePage.Orientation, PrinterPreview.Printer);
      end;   { try }
    finally
      cdsDetail2.EnableControls;
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmBudget.actExcelExportDeptBudgetViewExecute(Sender: TObject);
begin
  inherited;
  GridExcelExport(grdDeptBudgetView);
end;

procedure TfmBudget.actExcelExportBudgetOrderItemsExecute(Sender: TObject);
begin
  inherited;
  GridExcelExport(grdBudgetOrderItems);
end;

procedure TfmBudget.actExcelExportExecute(Sender: TObject);
begin
  // do not call inherited
  cdsGridData.TempDisableControls /
    procedure begin
      GridExcelExport(grdBudgetClasses);
    end;
end;

class function TfmBudget.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmBudget.navDataBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbRefresh) then
    begin
      DoRefresh;
      Abort;
    end
  else
    inherited;
end;

procedure TfmBudget.OpenDataSets;
begin
  inherited OpenDataSets;
  cdsOrgTaskProposalStates.Open;
end;

procedure TfmBudget.CloseDataSets;
begin
  cdsOrgTaskProposalStates.Close;
  inherited CloseDataSets;
end;

procedure TfmBudget.actFilterExecute(Sender: TObject);
begin
  // do not call inherited
  if TfmBudgetFilter.ShowForm(dmDocClient, pdsGridDataParams, emEdit, doNone, FBudgetMode) then
    DoRefresh;
end;

procedure TfmBudget.actFormUpdate(Sender: TObject);
const
  BOIGridVTitleMargins: array[Boolean] of Integer = (4, 5);

var
  vtm: Integer;
begin
  inherited;
  UpdateColumnsVisibility(grdDeptBudgetView, NormalizedToolbarToolbarsAndFlowPanels(tlbMaster));
  UpdateColumnsVisibility(grdBudgetOrderItems, NormalizedToolbarToolbarsAndFlowPanels(tlbMaster));
  UpdateColumnsVisibility(grdBudgetClasses, NormalizedToolbarToolbarsAndFlowPanels(tlbMaster));

  vtm:= BOIGridVTitleMargins[grdBudgetOrderItems.HorzScrollBar.IsScrollBarShowing];
  if (vtm <> grdBudgetOrderItems.VTitleMargin) then
    grdBudgetOrderItems.VTitleMargin:= vtm;

  AutoSizeColumn(grdDeptBudgetView, 0);
  AutoSizeColumn(grdBudgetOrderItems, 4);
end;

procedure TfmBudget.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;

  if pdsGridDataParamsBEGIN_DATE.IsNull or
     (pdsGridDataParamsTIME_UNIT_CODE.AsInteger < 1) or
     (pdsGridDataParamsTIME_UNIT_COUNT.AsInteger < 1) then
    pdsGridDataParamsEND_DATE.Clear
  else
    pdsGridDataParamsEND_DATE.AsDateTime:=
      IncDate(
        IncDate(
          pdsGridDataParamsBEGIN_DATE.AsDateTime,
          GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger),
          pdsGridDataParamsTIME_UNIT_COUNT.AsInteger
        ),
        perDay,
        -1);
end;

procedure TfmBudget.SetDBFrameReadOnly(AFrame: TDBFrame);
begin
  if (AFrame = frDept) or
     (AFrame = frDateInterval) then
    AFrame.ReadOnly:= True
  else
    inherited;
end;

procedure TfmBudget.actOneLevelUpUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not pdsGridDataParamsPARENT_DEPT_CODE.IsNull;
end;

procedure TfmBudget.actOneLevelDownUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    not cdsDetail.IsEmpty and
    (cdsDetail.FieldByName('DEPT_CODE').AsInteger <> pdsGridDataParamsDEPT_CODE.AsInteger) and
    (cdsDetail.FieldByName('DEPT_CODE').AsInteger <> tnRootDeptCode);
end;

procedure TfmBudget.actOneLevelUpExecute(Sender: TObject);
var
  DeptCode: Integer;
begin
  inherited;
  CheckEditMode(pdsGridDataParams);
  pdsGridDataParamsDEPT_CODE.AsInteger:= pdsGridDataParamsPARENT_DEPT_CODE.AsInteger;
  if (pdsGridDataParamsDEPT_CODE.AsInteger = tnRootDeptCode) then
    pdsGridDataParamsDEPT_CODE.Clear;
  pdsGridDataParams.Post;
  DeptCode:= cdsDetail.FieldByName('DEPT_CODE').AsInteger;
  DoRefresh;
  if not cdsDetail.Locate('DEPT_CODE', DeptCode, []) then
    cdsDetail.First;
end;

procedure TfmBudget.actOneLevelDownExecute(Sender: TObject);
begin
  inherited;
  CheckEditMode(pdsGridDataParams);
  pdsGridDataParamsDEPT_CODE.AsInteger:= cdsDetail.FieldByName('DEPT_CODE').AsInteger;
  pdsGridDataParams.Post;
  DoRefresh;
end;

procedure TfmBudget.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; ABudgetMode: TBudgetMode);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FBudgetMode:= ABudgetMode;
end;

class function TfmBudget.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; ABudgetMode: TBudgetMode): Boolean;
var
  f: TfmBudget;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled, ABudgetMode);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

procedure TfmBudget.FormHide(Sender: TObject);
begin
  inherited;
  FreeAndNil(FMsgParams);
end;

function TfmBudget.ShowFilterForm: Boolean;
begin
  Result:= TfmBudgetFilter.ShowForm(dmDocClient, pdsGridDataParams, emEdit, doNone, FBudgetMode);
end;

procedure TfmBudget.pdsGridDataParamsDEPT_CODEChange(Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(Sender, nil, nil, nil, nil, pdsGridDataParamsPARENT_DEPT_CODE);
end;

procedure TfmBudget.pdsGridDataParams_BOI_ORDER_TYPE_NAMEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

end.


