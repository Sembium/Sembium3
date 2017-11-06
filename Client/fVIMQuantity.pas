unit fVIMQuantity;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uClientTypes, Db, DBClient, ImgList, ActnList, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, TeeProcs, TeEngine, Chart, DBChart, uPeriods, uClientPeriods,
  uUtils, ParamDataSet, ToolWin, DBCtrls, ColorNavigator, GridsEh, DBGridEh,
  AbmesDBGrid, Series, AbmesClientDataSet, AbmesFields, TeeFunci, Menus,
  JvButtons, fEditForm, dDocClient, fBaseFrame, fDBFrame,
  fFieldEditFrame, fTreeNodeFieldEditFrame, fProductFieldEditFrame,
  fProductFieldEditFrameBald, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  JvComponent, JvCaptionButton, uProducts, Mask, JvComponentBase,
  DBGridEhGrouping, uDBChartSeriesClickFixer;

type
  TFormType = (ftQuantity, ftDeficit, ftPlanOut, ftPlanIn, ftOtchOut, ftOtchIn);

type
  TVIMReserveMode = (rmShowTowardsZero, rmShowTowardsReserve, rmShowBoth);

type
  TSetChartTitle = procedure(Title: TStrings) of object;

type
  TAxisLabelData = record
  strict private
    FLabelText: string;
    FWorkdays: Integer;
    FTheDate: TDateTime;
  public
    constructor Create(const ALabelText: string; AWorkdays: Integer; ATheDate: TDateTime);
    property LabelText: string read FLabelText;
    property Workdays: Integer read FWorkdays;
    property TheDate: TDateTime read FTheDate;
  end;

type
  TfmVIMQuantity = class(TEditForm)
    pcVIMQuantity: TPageControl;
    tsQuantity: TTabSheet;
    tsPrice: TTabSheet;
    tsRegister: TTabSheet;
    pnlTop: TPanel;
    pnlVIMInfo: TPanel;
    lblProduct: TLabel;
    lblDept: TLabel;
    lblPeriod: TLabel;
    ChartQuantity: TDBChart;
    btnParams: TBitBtn;
    serOtchQuantity: TLineSeries;
    dsVIM: TDataSource;
    cdsVIM: TAbmesClientDataSet;
    cdsVIM_OTCH_QUANTITY: TAbmesFloatField;
    actPrev: TAction;
    actNext: TAction;
    pdsVIM: TParamDataSet;
    actFilter: TAction;
    serPlanQuantity: TLineSeries;
    cdsVIM_PLAN_QUANTITY: TAbmesFloatField;
    serZeroQuantityLine: TLineSeries;
    cdsVIM_ZERO: TAbmesFloatField;
    actPrintPage: TAction;
    ChartPrice: TDBChart;
    serZeroPriceArea: TAreaSeries;
    serOtchPrice: TLineSeries;
    serPlanPrice: TLineSeries;
    serZeroPriceLine: TLineSeries;
    cdsVIM_OTCH_PRICE: TAbmesFloatField;
    cdsVIM_PLAN_PRICE: TAbmesFloatField;
    actAccountMeasure: TAction;
    actShowPassive: TAction;
    pnlMaster: TPanel;
    pnlMasterNav: TPanel;
    cnMaster: TDBColorNavigator;
    cdsRegister: TClientDataSet;
    cdsRegisterTHE_DATE: TAbmesSQLTimeStampField;
    cdsRegisterA_QUANTITY: TAbmesFloatField;
    cdsRegisterQUANTITY_PRICE: TAbmesFloatField;
    dsRegister: TDataSource;
    cdsVIM_COLOR_OTCH: TAbmesFloatField;
    cdsVIM_COLOR_PLAN: TAbmesFloatField;
    grdMaster: TAbmesDBGrid;
    cdsRegisterCOLOR: TAbmesFloatField;
    cdsRegisterCOLOR_SELECTED: TAbmesFloatField;
    cdsRegister_INCLUDE_PLANS: TAbmesFloatField;
    cdsVIM_LABEL: TAbmesWideStringField;
    cdsRegisterDATE_LABEL: TAbmesWideStringField;
    actShowPassiveMarks: TAction;
    actWorkMeasure: TAction;
    cdsVIM_IN_OTCH_QUANTITY: TAbmesFloatField;
    cdsVIM_IN_OTCH_PRICE: TAbmesFloatField;
    cdsVIM_OUT_OTCH_QUANTITY: TAbmesFloatField;
    cdsVIM_OUT_OTCH_PRICE: TAbmesFloatField;
    cdsVIM_IN_PLAN_QUANTITY: TAbmesFloatField;
    cdsVIM_IN_PLAN_PRICE: TAbmesFloatField;
    cdsVIM_OUT_PLAN_QUANTITY: TAbmesFloatField;
    cdsVIM_OUT_PLAN_PRICE: TAbmesFloatField;
    cdsVIM_DEFICIT_QUANTITY: TAbmesFloatField;
    cdsVIM_DEFICIT_PRICE: TAbmesFloatField;
    pdsVIMROUNDER_QUANTITY: TAbmesFloatField;
    pdsVIMROUNDER_PRICE: TAbmesFloatField;
    cdsRounders: TAbmesClientDataSet;
    cdsRoundersROUNDER: TAbmesFloatField;
    cdsRoundersROUNDER_NAME: TAbmesWideStringField;
    pdsVIM_ROUNDER_QUANTITY_NAME: TAbmesWideStringField;
    pdsVIM_ROUNDER_PRICE_NAME: TAbmesWideStringField;
    lblRounderQuantity: TLabel;
    lblRounderPrice: TLabel;
    cdsRoundersROUNDER_ABBREV: TAbmesWideStringField;
    pdsVIM_ROUNDER_QUANTITY_ABBREV: TAbmesWideStringField;
    pdsVIM_ROUNDER_PRICE_ABBREV: TAbmesWideStringField;
    serOtchInQuantity: TBarSeries;
    serOtchOutQuantity: TBarSeries;
    serOtchInPrice: TBarSeries;
    serOtchOutPrice: TBarSeries;
    serDeficitQuantity: TBarSeries;
    serDeficitPrice: TBarSeries;
    serPlanInQuantity: TBarSeries;
    serPlanOutQuantity: TBarSeries;
    TeeFunction1: TLowTeeFunction;
    serZeroArea: TAreaSeries;
    serPlanInPrice: TBarSeries;
    serPlanOutPrice: TBarSeries;
    actShowQuantity: TAction;
    actShowQuantityMarks: TAction;
    actShowMovements: TAction;
    actShowMovementsMarks: TAction;
    actShowDeficit: TAction;
    actShowDeficitMarks: TAction;
    cdsRegisterA_QUANTITY_IN: TAbmesFloatField;
    cdsRegisterQUANTITY_IN_PRICE: TAbmesFloatField;
    cdsRegisterA_QUANTITY_OUT: TAbmesFloatField;
    cdsRegisterQUANTITY_OUT_PRICE: TAbmesFloatField;
    cdsRegisterQUANTITY_DEFICIT: TAbmesFloatField;
    cdsRegisterQUANTITY_DEFICIT_PRICE: TAbmesFloatField;
    tlbTopButtons: TToolBar;
    sbtnShowQuantity: TSpeedButton;
    sbtnShowPrice: TSpeedButton;
    actShowRegQuantity: TAction;
    actShowRegPrice: TAction;
    pdsVIMINCLUDE_PLANNED_SECOND_LEVEL: TAbmesFloatField;
    cdsTempParams: TAbmesClientDataSet;
    cdsTempParamsSTART_DATE: TAbmesSQLTimeStampField;
    cdsTempParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsTempParamsIN_P: TAbmesFloatField;
    cdsTempParamsOUT_P: TAbmesFloatField;
    cdsTempParamsIS_ANNULED: TAbmesFloatField;
    cdsTempParamsIS_NOT_ANNULED: TAbmesFloatField;
    cdsTempParamsIS_CLOSED: TAbmesFloatField;
    cdsTempParamsIS_NOT_CLOSED: TAbmesFloatField;
    cdsTempParamsSTORE_DEAL_DATE: TAbmesSQLTimeStampField;
    cdsTempParamsIS_IN: TAbmesFloatField;
    cdsTempParamsIS_OUT: TAbmesFloatField;
    cdsTempParamsIS_STORNO: TAbmesFloatField;
    cdsTempParamsIS_NOT_STORNO: TAbmesFloatField;
    cdsTempParamsSTART_PERIOD_DATE: TAbmesSQLTimeStampField;
    cdsTempParamsEND_PERIOD_DATE: TAbmesSQLTimeStampField;
    cdsTempParamsINCLUDE_PL_SECOND_LEVEL: TAbmesFloatField;
    cdsTempParamsDATE_UNIT_CODE: TAbmesFloatField;
    cdsTempParams_STORE_DEAL_DATE_2: TAbmesSQLTimeStampField;
    cdsTempParamsIS_WASTE_BOUND: TAbmesFloatField;
    cdsTempParamsIS_NOT_WASTE_BOUND: TAbmesFloatField;
    serNegativeQuantity: TLineSeries;
    serNegativePrice: TLineSeries;
    cdsVIM_NEGATIVE_QUANTITY: TAbmesFloatField;
    cdsVIM_NEGATIVE_PRICE: TAbmesFloatField;
    actTogglePeriodLabelsExtraInfo: TAction;
    lblChartPriceStartDate: TLabel;
    lblChartPriceEndDate: TLabel;
    lblChartQuantityStartDate: TLabel;
    lblChartQuantityEndDate: TLabel;
    cdsVIM_LABEL_FOR_REGISTER: TAbmesWideStringField;
    cdsRegisterWORKDAYS: TAbmesFloatField;
    pnlGridButtons: TPanel;
    btnDealsIn: TBitBtn;
    actDealsIn: TAction;
    actDealsOut: TAction;
    actQuantity: TAction;
    actDeficit: TAction;
    btnDealsOut: TBitBtn;
    btnQuantity: TBitBtn;
    btnDeficit: TBitBtn;
    sepBeforeExcelExport: TToolButton;
    btnExcelExport: TToolButton;
    actExcelExport: TAction;
    cdsVIMORDER_NO: TAbmesFloatField;
    cdsVIMTHE_DATE: TAbmesSQLTimeStampField;
    cdsVIMWORKDAYS: TAbmesFloatField;
    cdsVIMTHE_YEAR_DATE: TAbmesSQLTimeStampField;
    cdsVIMTHE_NO: TAbmesFloatField;
    cdsVIMIS_TODAY_SECOND_RECORD: TAbmesFloatField;
    cdsVIMQUANTITY_OTCH: TAbmesFloatField;
    cdsVIMQUANTITY_OTCH_PRICE: TAbmesFloatField;
    cdsVIMQUANTITY_IN_OTCH: TAbmesFloatField;
    cdsVIMQUANTITY_IN_OTCH_PRICE: TAbmesFloatField;
    cdsVIMQUANTITY_OUT_OTCH: TAbmesFloatField;
    cdsVIMQUANTITY_OUT_OTCH_PRICE: TAbmesFloatField;
    cdsVIMQUANTITY_PLAN: TAbmesFloatField;
    cdsVIMQUANTITY_PLAN_PRICE: TAbmesFloatField;
    cdsVIMQUANTITY_IN_PLAN: TAbmesFloatField;
    cdsVIMQUANTITY_IN_PLAN_PRICE: TAbmesFloatField;
    cdsVIMQUANTITY_OUT_PLAN: TAbmesFloatField;
    cdsVIMQUANTITY_OUT_PLAN_PRICE: TAbmesFloatField;
    cdsVIMQUANTITY_DEFICIT: TAbmesFloatField;
    cdsVIMQUANTITY_DEFICIT_PRICE: TAbmesFloatField;
    cdsVIMNEGATIVE_QUANTITY: TAbmesFloatField;
    cdsVIMNEGATIVE_PRICE: TAbmesFloatField;
    cdsVIMQUANTITY_OTCH_RESERVE: TAbmesFloatField;
    cdsVIMQUANTITY_OTCH_PRICE_RESERVE: TAbmesFloatField;
    cdsVIMQUANTITY_PLAN_RESERVE: TAbmesFloatField;
    cdsVIMQUANTITY_PLAN_PRICE_RESERVE: TAbmesFloatField;
    cdsVIMNEGATIVE_QUANTITY_RESERVE: TAbmesFloatField;
    cdsVIMNEGATIVE_PRICE_RESERVE: TAbmesFloatField;
    cdsVIMQUANTITY_DEFICIT_RESERVE: TAbmesFloatField;
    cdsVIMQUANTITY_DEFICIT_PRICE_RESERVE: TAbmesFloatField;
    cdsVIM_OTCH_QUANTITY_RESERVE: TAbmesFloatField;
    cdsVIM_OTCH_PRICE_RESERVE: TAbmesFloatField;
    actShowTowardsZero: TAction;
    actShowTowardsReserve: TAction;
    serOtchQuantityReserve: TLineSeries;
    serOtchPriceReserve: TLineSeries;
    serPlanQuantityReserve: TLineSeries;
    cdsVIM_PLAN_QUANTITY_RESERVE: TAbmesFloatField;
    cdsVIM_PLAN_PRICE_RESERVE: TAbmesFloatField;
    cdsVIM_NEGATIVE_QUANTITY_RESERVE: TAbmesFloatField;
    cdsVIM_NEGATIVE_PRICE_RESERVE: TAbmesFloatField;
    cdsVIM_DEFICIT_QUANTITY_RESERVE: TAbmesFloatField;
    cdsVIM_DEFICIT_QUANTITY_PRICE_RESERVE: TAbmesFloatField;
    serNegativeQuantityReserve: TLineSeries;
    serPassiveQuantity: TAreaSeries;
    serDeficitQuantityReserve: TBarSeries;
    serPassivePrice: TAreaSeries;
    serDeficitPriceReserve: TBarSeries;
    serNegativePriceReserve: TLineSeries;
    serPlanPriceReserve: TLineSeries;
    cdsVIMNEGATIVE_QTY_OTCH_RESERVE: TAbmesFloatField;
    cdsVIMNEGATIVE_OTCH_PRICE_RESERVE: TAbmesFloatField;
    cdsVIM_OTCH_NEGATIVE_QUANTITY_RESERVE: TAbmesFloatField;
    cdsVIM_OTCH_NEGATIVE_PRICE_RESERVE: TAbmesFloatField;
    serOtchNegativeQuantityReserve: TLineSeries;
    serOtchNegativePriceReserve: TLineSeries;
    cdsRegisterQUANTITY_RESERVE: TAbmesFloatField;
    cdsRegisterQUANTITY_PRICE_RESERVE: TAbmesFloatField;
    cdsRegisterQUANTITY_DEFICIT_RESERVE: TAbmesFloatField;
    cdsRegisterQUANTITY_DEFICIT_PRICE_RESERVE: TAbmesFloatField;
    cdsTempParamsSHOW_INACTIVE: TAbmesFloatField;
    btnPrintQuantityChart: TSpeedButton;
    actPrintQuantityChart: TAction;
    actPrintPriceChart: TAction;
    btnPrintPriceChart: TSpeedButton;
    tbSpeed: TToolBar;
    sbtnWorkMeasure: TSpeedButton;
    sbtnAccountMeasure: TSpeedButton;
    sepBeforeQuantity: TToolButton;
    sbtnQuantity: TSpeedButton;
    sbtnQuantityMarks: TSpeedButton;
    sepBeforeMovements: TToolButton;
    sbtnMovements: TSpeedButton;
    sbtnMovementsMarks: TSpeedButton;
    sepBeforeDeficit: TToolButton;
    sbtnDeficit: TSpeedButton;
    sbtnDeficitMarks: TSpeedButton;
    sepBeforePassive: TToolButton;
    sbtnPassive: TSpeedButton;
    sbtnPassiveMarks: TSpeedButton;
    btnShowTowardsReserve: TSpeedButton;
    sepBeforeShowTowardsReserve: TToolButton;
    actRefresh: TAction;
    cdsTempParamsPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField;
    sepBeforeShowQuantity: TToolButton;
    btnPrintGrid: TToolButton;
    cdsTempParamsIS_GROUPED_BY_STORE: TAbmesFloatField;
    cdsVIMMIN_QUANTITY: TAbmesFloatField;
    cdsVIMMIN_PRICE: TAbmesFloatField;
    serMinQuantity: TLineSeries;
    serMinPrice: TLineSeries;
    actShowMinQuantity: TAction;
    actShowMinQuantityMarks: TAction;
    cdsVIM_MIN_QUANTITY: TAbmesFloatField;
    cdsVIM_MIN_PRICE: TAbmesFloatField;
    cdsVIMPASSIVE_QUANTITY: TAbmesFloatField;
    cdsVIMPASSIVE_QUANTITY_PRICE: TAbmesFloatField;
    cdsVIM_PASSIVE_QUANTITY: TAbmesFloatField;
    cdsVIM_PASSIVE_QUANTITY_PRICE: TAbmesFloatField;
    cdsVIM_PASSIVE_QUANTITY_PERCENT: TAbmesFloatField;
    cdsVIM_PASSIVE_PRICE_PERCENT: TAbmesFloatField;
    lblMeasure: TLabel;
    cdsRegisterA_PASSIVE_QUANTITY_PERCENT: TAbmesFloatField;
    cdsRegisterPASSIVE_PRICE_PERCENT: TAbmesFloatField;
    cdsRegister_SUM_QUANTITY_IN: TAggregateField;
    cdsRegister_SUM_QUANTITY_OUT: TAggregateField;
    cdsRegister_SUM_PRICE_IN: TAggregateField;
    cdsRegister_SUM_PRICE_OUT: TAggregateField;
    pnlChartQuantityLegend: TPanel;
    shpLegend3: TShape;
    lblLegend: TShape;
    lblOtchInQuantity: TLabel;
    lblOtchOutQuantity: TLabel;
    shpOtchInQuantity: TShape;
    shpOtchOutQuantity: TShape;
    shpPassiveQuantity1: TShape;
    lblPassiveQuantity: TLabel;
    lblOtchNegativeQuantityReserve2: TLabel;
    lblOtchQuantityReserve2: TLabel;
    lblOtchNegativeQuantityReserve1: TLabel;
    lblPlanQuantity1: TLabel;
    lblDeficitQuantity: TLabel;
    lblOtchQuantityReserve1: TLabel;
    lblPlanQuantity2: TLabel;
    lblDeficitQuantityReserve: TLabel;
    shpPassiveQuantity: TShape;
    shpOtchNegativeQuantityReserve1: TShape;
    shpOtchNegativeQuantityReserve: TShape;
    shpOtchQuantityReserve1: TShape;
    shpOtchQuantityReserve: TShape;
    shpPlanQuantity12: TShape;
    shpPlanQuantity1: TShape;
    shpPlanQuantity21: TShape;
    shpPlanQuantity2: TShape;
    shpDeficitQuantity: TShape;
    shpDeficitQuantityReserve: TShape;
    lblToDateOnChartQuantity: TLabel;
    lblToDateOnChartPrice: TLabel;
    cdsTempParamsIS_TOWARDS_RESERVE: TAbmesFloatField;
    cdsTempParamsTIME_UNIT_COUNT: TAbmesFloatField;
    cdsTempParamsTIME_UNIT_CODE: TAbmesFloatField;
    cdsTempParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsVIMBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsVIMTIME_UNIT_CODE: TAbmesFloatField;
    pdsVIMMAX_PLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField;
    pdsVIMTIME_UNIT_COUNT: TAbmesFloatField;
    pdsVIM_END_DATE: TAbmesSQLTimeStampField;
    pdsVIMCURRENT_FILTER_VARIANT_CODE: TAbmesFloatField;
    pdsVIMIS_AUTO_ROUNDER: TAbmesFloatField;
    pdsVIMIS_TOWARDS_RESERVE: TAbmesFloatField;
    pdsVIM_TIME_UNIT_NAME: TAbmesWideStringField;
    pdsVIMCHOSEN_PRODUCTS: TAbmesWideStringField;
    edtProductName: TDBEdit;
    pdsVIM_PRODUCT_NAME: TAbmesWideStringField;
    pdsVIM_PRODUCT_CODE: TAbmesFloatField;
    edtProductNo: TDBEdit;
    dsVIMParams: TDataSource;
    pdsVIM_PRODUCT_NO: TAbmesFloatField;
    pdsVIMCHOSEN_DEPTS: TAbmesWideStringField;
    pdsVIM_DEPT_CODE: TAbmesFloatField;
    pdsVIM_DEPT_NAME: TAbmesWideStringField;
    edtDeptName: TDBEdit;
    edtDeptNo: TDBEdit;
    pdsVIM_DEPT_NO: TAbmesWideStringField;
    cdsTempParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsTempParamsCHOSEN_DEPTS: TAbmesWideStringField;
    cdsRegisterQUANTITY_IN: TAbmesFloatField;
    cdsRegisterQUANTITY_OUT: TAbmesFloatField;
    cdsRegisterQUANTITY: TAbmesFloatField;
    cdsRegisterA_QUANTITY_RESERVE: TAbmesFloatField;
    cdsRegisterA_QUANTITY_DEFICIT: TAbmesFloatField;
    cdsRegisterA_QUANTITY_DEFICIT_RESERVE: TAbmesFloatField;
    cdsRegisterPASSIVE_QUANTITY_PERCENT: TAbmesFloatField;
    cdsRegister_SUM_A_QUANTITY_IN: TAggregateField;
    cdsRegister_SUM_A_QUANTITY_OUT: TAggregateField;
    cdsVIM_A_PASSIVE_QUANTITY_PERCENT: TAbmesFloatField;
    cdsVIMACC_QUANTITY_OTCH: TAbmesFloatField;
    cdsVIMACC_QUANTITY_IN_OTCH: TAbmesFloatField;
    cdsVIMACC_QUANTITY_OUT_OTCH: TAbmesFloatField;
    cdsVIMACC_QUANTITY_OTCH_RESERVE: TAbmesFloatField;
    cdsVIMACC_NEGATIVE_QTY_OTCH_RESERVE: TAbmesFloatField;
    cdsVIMACC_QUANTITY_PLAN: TAbmesFloatField;
    cdsVIMACC_NEGATIVE_QUANTITY: TAbmesFloatField;
    cdsVIMACC_QUANTITY_IN_PLAN: TAbmesFloatField;
    cdsVIMACC_QUANTITY_OUT_PLAN: TAbmesFloatField;
    cdsVIMACC_QUANTITY_PLAN_RESERVE: TAbmesFloatField;
    cdsVIMACC_NEGATIVE_QUANTITY_RESERVE: TAbmesFloatField;
    cdsVIMACC_PASSIVE_QUANTITY: TAbmesFloatField;
    cdsVIMACC_QUANTITY_DEFICIT: TAbmesFloatField;
    cdsVIMACC_QUANTITY_DEFICIT_RESERVE: TAbmesFloatField;
    cdsVIMACC_MIN_QUANTITY: TAbmesFloatField;
    cdsVIMACC_CLEAR_QUANTITY: TAbmesFloatField;
    pdsVIMROUNDER_ACCOUNT_QUANTITY: TAbmesFloatField;
    pdsVIM_ROUNDER_ACC_QUANTITY_NAME: TAbmesWideStringField;
    pdsVIM_ROUNDER_ACC_QUANTITY_ABBREV: TAbmesWideStringField;
    pdsVIM_TIME_UNITS: TAbmesWideStringField;
    pnlLegend: TPanel;
    shpLegend2: TShape;
    shpLegend: TShape;
    lblOtchInPrice: TLabel;
    lblOtchOutPrice: TLabel;
    shpOtchInPrice: TShape;
    shpOtchOutPrice: TShape;
    shpPassivePrice2: TShape;
    lblPassivePrice: TLabel;
    lblOtchNegativePriceReserve2: TLabel;
    lblOtchPriceReserve2: TLabel;
    lblOtchNegativePriceReserve1: TLabel;
    lblPlanPriceReserve1: TLabel;
    lblDeficitPrice: TLabel;
    lblOtchPriceReserve1: TLabel;
    lblPlanPriceReserve2: TLabel;
    lblDeficitPriceReserve: TLabel;
    shpPassivePrice: TShape;
    shpOtchNegativePriceReserve2: TShape;
    shpOtchNegativePriceReserve: TShape;
    shpOtchPriceReserve2: TShape;
    shpOtchPriceReserve: TShape;
    shpPlanPriceReserve11: TShape;
    shpPlanPriceReserve1: TShape;
    shpPlanPriceReserve21: TShape;
    shpPlanPriceReserve2: TShape;
    shpDeficitPrice: TShape;
    shpDeficitPriceReserve: TShape;
    edtTimeUnits: TDBEdit;
    edtRoundeQuantity: TDBEdit;
    edtRounderPrice: TDBEdit;
    pdsVIM_PRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsVIM_BALANCED_PRICE: TAbmesFloatField;
    serBalancedPrice: TLineSeries;
    sbtnBalancedPrice: TSpeedButton;
    actShowBalancedPrice: TAction;
    sbtnBalancedPriceMarks: TSpeedButton;
    sepBeforeBalancedPrice: TToolButton;
    actShowBalancedPriceMarks: TAction;
    lblBalancedPrice: TLabel;
    shpBalancedPrice: TShape;
    shpBalancedPrice2: TShape;
    serBalancedPriceReserve: TLineSeries;
    cdsVIM_BALANCED_PRICE_RESERVE: TAbmesFloatField;
    lblBalancedPriceReserve: TLabel;
    shpBalancedPriceReserve: TShape;
    shpBalancedPriceReserve2: TShape;
    pnlTogglePeriodLabelsExtraInfo: TPanel;
    btnTogglePeriodLabelsExtraInfo: TSpeedButton;
    pnlTogglePeriodLabelsExtraInfo2: TPanel;
    btnTogglePeriodLabelsExtraInfo2: TSpeedButton;
    pnlTime: TPanel;
    btnPrev: TBitBtn;
    btnNext: TBitBtn;
    pnlStartDate: TPanel;
    pnlEndDate: TPanel;
    pnlStartDateGSD: TPanel;
    pnlEndDateGSD: TPanel;
    tlbFilterDeptDocs: TToolBar;
    btnFilterDeptDocs: TToolButton;
    actFilterDeptDocs: TAction;
    pdsVIM_DEPT_HAS_DOCUMENTATION: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdsVIMBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cdsVIMCalcFields(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure cdsVIMAfterOpen(DataSet: TDataSet);
    procedure actShowPassiveUpdate(Sender: TObject);
    procedure actPrevExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actPrevUpdate(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
    procedure ChartQuantityGetLegendRect(Sender: TCustomChart;
      var Rect: TRect);
    procedure ChartQuantityGetLegendPos(Sender: TCustomChart;
      Index: Integer; var X, Y, XColor: Integer);
    procedure ChartPriceGetLegendPos(Sender: TCustomChart; Index: Integer;
      var X, Y, XColor: Integer);
    procedure ChartPriceGetLegendRect(Sender: TCustomChart;
      var Rect: TRect);
    procedure actShowPassiveMarksUpdate(Sender: TObject);
    procedure actWorkMeasureUpdate(Sender: TObject);
    procedure grdMasterGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cdsVIMAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actShowQuantityUpdate(Sender: TObject);
    procedure actShowMovementsUpdate(Sender: TObject);
    procedure actShowDeficitUpdate(Sender: TObject);
    procedure actShowQuantityMarksUpdate(Sender: TObject);
    procedure actShowMovementsMarksUpdate(Sender: TObject);
    procedure actShowDeficitMarksUpdate(Sender: TObject);
    procedure actShowRegQuantityUpdate(Sender: TObject);
    procedure cdsVIMDetailBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure grdMasterDblClick(Sender: TObject);
    procedure serOtchQuantityDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serOtchPriceDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serPlanPriceDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serPlanQuantityDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serDeficitPriceDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serDeficitQuantityDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serOtchOutPriceDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serOtchInQuantityDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serOtchInPriceDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serOtchOutQuantityDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serPlanInPriceDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serPlanInQuantityDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serPlanOutPriceDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serPlanOutQuantityDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure grdMasterDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure serNegativePriceDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serNegativeQuantityDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure LineSeriesAfterDrawValues(Sender: TObject);
    procedure serZeroQuantityLineAfterDrawValues(Sender: TObject);
    procedure serZeroPriceLineAfterDrawValues(Sender: TObject);
    procedure ChartPriceBeforeDrawSeries(Sender: TObject);
    procedure ChartQuantityBeforeDrawSeries(Sender: TObject);
    procedure actAccountMeasureUpdate(Sender: TObject);
    procedure actShowRegPriceUpdate(Sender: TObject);
    procedure actTogglePeriodLabelsExtraInfoExecute(Sender: TObject);
    procedure ChartPriceAfterDraw(Sender: TObject);
    procedure ChartQuantityAfterDraw(Sender: TObject);
    procedure ChartsGetAxisLabel(Sender: TChartAxis;
      Series: TChartSeries; ValueIndex: Integer; var LabelText: String);
    procedure actDealsInExecute(Sender: TObject);
    procedure actDealsOutExecute(Sender: TObject);
    procedure actQuantityExecute(Sender: TObject);
    procedure actDeficitExecute(Sender: TObject);
    procedure actExcelExportUpdate(Sender: TObject);
    procedure actExcelExportExecute(Sender: TObject);
    procedure actShowTowardsReserveExecute(Sender: TObject);
    procedure actPrintQuantityChartExecute(Sender: TObject);
    procedure actPrintPriceChartExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure serNegativePriceReserveDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serDeficitPriceReserveDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serDeficitQuantityReserveDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serNegativeQuantityReserveDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serOtchNegativePriceReserveDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serOtchNegativeQuantityReserveDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serOtchPriceReserveDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serOtchQuantityReserveDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serPlanPriceReserveDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serPlanQuantityReserveDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure actRefreshExecute(Sender: TObject);
    procedure actRefreshUpdate(Sender: TObject);
    procedure actFilterUpdate(Sender: TObject);
    procedure actShowMinQuantityUpdate(Sender: TObject);
    procedure actShowMinQuantityMarksUpdate(Sender: TObject);
    procedure cdsRegisterA_PASSIVE_QUANTITY_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsRegisterPASSIVE_PRICE_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsRegisterQuantityFieldsGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsRegisterPriceFieldsGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsVIMCalcFields(DataSet: TDataSet);
    procedure pdsVIMAfterOpen(DataSet: TDataSet);
    procedure actShowTowardsReserveUpdate(Sender: TObject);
    procedure pdsVIMCHOSEN_PRODUCTSChange(Sender: TField);
    procedure pdsVIMCHOSEN_DEPTSChange(Sender: TField);
    procedure pdsVIMBeforePost(DataSet: TDataSet);
    procedure pdsVIM_DEPT_NAMEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure pdsVIM_PRODUCT_NAMEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsRegisterPASSIVE_QUANTITY_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure pdsVIM_ROUNDER_QUANTITY_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actShowBalancedPriceUpdate(Sender: TObject);
    procedure actShowBalancedPriceMarksUpdate(Sender: TObject);
    procedure actTogglePeriodLabelsExtraInfoUpdate(Sender: TObject);
    procedure actFilterDeptDocsUpdate(Sender: TObject);
    procedure actFilterDeptDocsExecute(Sender: TObject);
  private
    FProductClass: TProductClass;
    FOriginalFormCaption: string;
    
    FCurrentDate: TDateTime;

    FProductsHaveSameMeasure: TExBoolean;
    FProductsHaveSameAccountMeasure: Boolean;
    FIsWorkMeasure: Boolean;
    FIsShowRegQuantity: Boolean;
    FOldIsShowRegQuantity: Boolean;

    FProductMeasureAbbrev: string;
    FProductAccountMeasureAbbrev: string;
    FShowPassiveQuantity: Boolean;
    FShowPassiveQuantityMarks: Boolean;
    FShowQuantity: Boolean;
    FShowQuantityMarks: Boolean;
    FShowBalancedPrice: Boolean;
    FShowBalancedPriceMarks: Boolean;
    FShowMovements: Boolean;
    FShowMovementsMarks: Boolean;
    FShowDeficit: Boolean;
    FShowDeficitMarks: Boolean;
    FShowMinQuantity: Boolean;
    FShowMinQuantityMarks: Boolean;

    FChartMinDate, FChartMaxDate: TDateTime;
    FQuantityLegendCorr: Integer;
    FPriceLegendCorr: Integer;

    FMinQuantity: Real;
    FMaxQuantity: Real;
    FMinAccQuantity: Real;
    FMaxAccQuantity: Real;
    FMinPrice: Real;
    FMaxPrice: Real;

    FIsSingleProduct: Boolean;

    FFirstTodayOrderNo: Integer;

    FFilterFormEnabled: Boolean;
    FOpenedFrom: Integer; // vofVIMOpenedFromNorm - Normalno;  vofVIMOpenedFromSale - Prodajbi; vofVIMOpenedFromDef - Deficit

    FIsMadeChange: Boolean;

    FReserveMode: TVIMReserveMode;
    FOldReserveMode: TVIMReserveMode;

    FOpenTimeInSeconds: Integer;
    FBeforeOpenTickCount: Longword;
    FCanRefilter: Boolean;

    FAxisLabelsData: array of TAxisLabelData;
    FChartQuantitySeriesClickFixer: TDBChartSeriesClickFixer;
    FChartPriceSeriesClickFixer: TDBChartSeriesClickFixer;

    procedure SetProductsHaveSameMeasure(const Value: Boolean);
    function GetProductsHaveSameMeasure: Boolean;
    procedure SetMeasure(const Value: Boolean);

    procedure SetShowPassiveQuantity(const Value: Boolean);
    procedure SetShowPassiveQuantityMarks(const Value: Boolean);
    procedure SetShowQuantity(const Value: Boolean);
    procedure SetShowQuantityMarks(const Value: Boolean);
    procedure SetShowBalancedPrice(const Value: Boolean);
    procedure SetShowBalancedPriceMarks(const Value: Boolean);
    procedure SetShowMovements(const Value: Boolean);
    procedure SetShowMovementsMarks(const Value: Boolean);
    procedure SetShowDeficit(const Value: Boolean);
    procedure SetShowDeficitMarks(const Value: Boolean);
    procedure SetShowMinQuantity(const Value: Boolean);
    procedure SetShowMinQuantityMarks(const Value: Boolean);

    procedure ShowFilterParams;
    procedure MoveVIM(AForward: Boolean);
    procedure SetChartSeriesVisibleStatus(const fl: Boolean);

    function GetQuantityLeftAxisTitle(const Rounder: Integer; const RounderName, MeasureAbr: string): string;
    function GetPriceLeftAxisTitle: string;

    procedure SetQuantityPrintChartTitle(Title: TStrings);
    procedure SetPricePrintChartTitle(Title: TStrings);

    procedure UpdateRegisterDataSet;
    procedure SetGridCaptions;

    procedure MyDrawLine(AChart: TDBChart; VisibleRect: TRect; FromX, FromY, ToX, ToY: Integer; AColor: TColor; AWidth: Integer);
    procedure DrawMarkPoint(AChart: TDBChart; AFill, ABorder: TColor; X, Y: Integer);

    procedure UpdateAllSeriesAndMarksVisibleStatus;
    procedure UpdateGridColumnsVisibleStatus;
    procedure ForceUpdateGridColumnsVisibleStatus;
    procedure ChosenProductsChange;
    procedure ChosenDeptsChange;
    procedure RefreshAxisLabelsData;
  protected
    class function CanUseDocs: Boolean; override;
    function GetOriginalFormCaption: string; override;
    procedure DoBeforeShow; override;
    procedure CloseDataSets; override;

    procedure SetChartsTitles;
    procedure UpdateVIM;

    procedure AdjustLeftAxis;
    function IsQuantityField(const AField: TAbmesFloatField): Boolean; override;
  public
    property ProductsHaveSameMeasure: Boolean read GetProductsHaveSameMeasure write SetProductsHaveSameMeasure;
    property IsWorkMeasure: Boolean read FIsWorkMeasure write SetMeasure;

    property ShowPassiveQuantity: Boolean read FShowPassiveQuantity write SetShowPassiveQuantity;
    property ShowPassiveQuantityMarks: Boolean read FShowPassiveQuantityMarks write SetShowPassiveQuantityMarks;

    property ShowQuantity: Boolean read FShowQuantity write SetShowQuantity;
    property ShowQuantityMarks: Boolean read FShowQuantityMarks write SetShowQuantityMarks;

    property ShowBalancedPrice: Boolean read FShowBalancedPrice write SetShowBalancedPrice;
    property ShowBalancedPriceMarks: Boolean read FShowBalancedPriceMarks write SetShowBalancedPriceMarks;

    property ShowMovements: Boolean read FShowMovements write SetShowMovements;
    property ShowMovementsMarks: Boolean read FShowMovementsMarks write SetShowMovementsMarks;

    property ShowDeficit: Boolean read FShowDeficit write SetShowDeficit;
    property ShowDeficitMarks: Boolean read FShowDeficitMarks write SetShowDeficitMarks;

    property ShowMinQuantity: Boolean read FShowMinQuantity write SetShowMinQuantity;
    property ShowMinQuantityMarks: Boolean read FShowMinQuantityMarks write SetShowMinQuantityMarks;

    function GetProductName: string;
    function GetDeptName: string;
    procedure SetChartPrintTitleAndPrint(AChart: TDBChart;
      ASetTitleProc: TSetChartTitle);
    procedure PrintRegister;
    procedure ShowOuterForm(AFormType: TFormType; StartDate, EndDate: Variant; IsTowardsReserve: Boolean);
    procedure ShowOuterFormByGraphIndex(AFormType: TFormType; AIndex: Integer; IsTowardsReserve: Boolean);

    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AFilterFormEnabled: Boolean = True;
      AOpenedFrom: Integer = 0;
      AProductClass: TProductClass = pcNone;
      ACanRefilter: Boolean = True): Boolean;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      AFilterFormEnabled: Boolean = True;
      AOpenedFrom: Integer = 0;
      AProductClass: TProductClass = pcNone;
      ACanRefilter: Boolean = True); reintroduce; virtual;

    procedure Initialize; override;
    function SupportsFilterForm: Boolean; override;
  end;

function ShowProductVIM(
  AdmDocClient: TdmDocClient;
  AProductCode: Integer;
  AStartPeriodDate: TDateTime;
  AIncludePlannedSecondLevel: Boolean;
  AOpenedFrom: Integer;
  AProductClass: TProductClass): Boolean; overload;

function ShowProductVIM(
  AdmDocClient: TdmDocClient;
  AProductCode: Integer;
  AStoreCode: Integer;
  AStartPeriodDate: TDateTime;
  AIncludePlannedSecondLevel: Boolean;
  AOpenedFrom: Integer;
  AProductClass: TProductClass): Boolean; overload;

function ShowProductVIM(
  AdmDocClient: TdmDocClient;
  AChosenProductsXML: string;
  AStartPeriodDate: TDateTime;
  AIncludePlannedSecondLevel: Boolean;
  AOpenedFrom: Integer;
  AProductClass: TProductClass): Boolean; overload;

function ShowProductVIM(
  AdmDocClient: TdmDocClient;
  AChosenProductsXML: string;
  AChosenDeptsXML: string;
  AStartPeriodDate: TDateTime;
  AIncludePlannedSecondLevel: Boolean;
  AOpenedFrom: Integer;
  AProductClass: TProductClass): Boolean; overload;

implementation

uses
  Variants, dMain, fVIMQuantityFilter, uClientUtils, uTreeNodes, Math,
  rVIMQuantity, uDealTypes, fStoreQuantities, fPlannedStoreDeals,
  fStoreDeals, fUncoveredPSDSingle, uOpenVIMConsts, JclDateTime,
  AbmesDialogs, Types, DateUtils, uExcelExport, uTreeClientUtils,
  fDataForm, uColorConsts, uClientConsts, uXMLUtils, uGraphUtils, TeCanvas,
  uProductClientUtils, uClientDateTime, uUserActivityConsts;

{$R *.DFM}

resourcestring
  SQuantity = 'Количество';
  SQuantityPrice = 'Цена на наличност';
  SProduct = 'Управляем Обект';
  SAllProducts = '< всички >';
  SAllDepts = '< всички >';
  SToDate = 'към дата: ';
  SSep = '-';
  SCapQuantity = 'Наличност /%s/';
  SCapPassiveQuantity = 'Пасивна наличност /%s/';
  SCapQuantityIn = 'Постъпления /%s/';
  SCapQuantityOut = 'Тегления /%s/';
  SCapQuantityDeficit = 'Дефицит /%s/';
  SCapQuantityTowardsReserve = 'Наличност спрямо задел /%s/';
  SCapPassiveQuantityTowardsReserve = 'Пас. нал. спрямо задел /%s/';
  SCapQuantityDeficitTowardsReserve = 'Дефицит спрямо задел /%s/';

  SInvalidPeriodItemError = 'Невалиден номер на период.';
  SConfirmPrint = 'Желаете ли печат на графиката ?';
  SMeasureOrPrice = 'Мерна единица: %s';

const
  col_reg_otch = $008CFF8C;
  col_reg_plan = $00CEFFFF;
  col_reg_sel_otch = clGreen;
  col_reg_sel_plan = clYellow;

  LeftAxisPercentUp = 0.2;
  LeftAxisPercentDown = 0.2;
  SerActiveNo = 0;
  SerZeroNo = 1;
  SerPlanInNo = 3;
  SerOtchInNo = 4;
  SerPlanOutNo = 5;
  SerOtchOutNo = 6;
  SerDeficitNo = 7;
  SerOtchQuantityNo = 8;
  SerPlanQuantityNo = 9;
  SerOtchQuantityReserveNo = 10;

const
  DefautIsWorkMeasure = True;

{ Routines }

function ShowProductVIM(
  AdmDocClient: TdmDocClient;
  AProductCode: Integer;
  AStartPeriodDate: TDateTime;
  AIncludePlannedSecondLevel: Boolean;
  AOpenedFrom: Integer;
  AProductClass: TProductClass): Boolean; 
begin
  Result:=
    ShowProductVIM(
      AdmDocClient,
      AProductCode,
      tnRootDeptCode,
      AStartPeriodDate,
      AIncludePlannedSecondLevel,
      AOpenedFrom,
      AProductClass);
end;

function ShowProductVIM(
  AdmDocClient: TdmDocClient;
  AProductCode: Integer;
  AStoreCode: Integer;
  AStartPeriodDate: TDateTime;
  AIncludePlannedSecondLevel: Boolean;
  AOpenedFrom: Integer;
  AProductClass: TProductClass): Boolean; 
var
  ChosenStore: string;
  ChosenProduct: string;
begin
  if (AStoreCode = tnRootDeptCode) then
    ChosenStore:= ''
  else
    ChosenStore:= ChosenNodeCodeToXML(AStoreCode);

  if (AProductCode = tnRootProductCode) then
    ChosenProduct:= ''
  else
    ChosenProduct:= ChosenNodeCodeToXML(AProductCode);

  Result:=
    ShowProductVIM(
      AdmDocClient,
      ChosenProduct,
      ChosenStore,
      AStartPeriodDate,
      AIncludePlannedSecondLevel,
      AOpenedFrom,
      AProductClass);
end;

function ShowProductVIM(
  AdmDocClient: TdmDocClient;
  AChosenProductsXML: string;
  AStartPeriodDate: TDateTime;
  AIncludePlannedSecondLevel: Boolean;
  AOpenedFrom: Integer;
  AProductClass: TProductClass): Boolean; 
begin
  Result:=
    ShowProductVIM(
      AdmDocClient,
      AChosenProductsXML,
      '',
      AStartPeriodDate,
      AIncludePlannedSecondLevel,
      AOpenedFrom,
      AProductClass);
end;

function ShowProductVIM(
  AdmDocClient: TdmDocClient;
  AChosenProductsXML: string;
  AChosenDeptsXML: string;
  AStartPeriodDate: TDateTime;
  AIncludePlannedSecondLevel: Boolean;
  AOpenedFrom: Integer;
  AProductClass: TProductClass): Boolean; 
var
  cdsVimParams: TCustomClientDataSet;
begin
  Result:= False;   // Kompilatora se burka i dava warning. Neshto ne useshta exception-ite

  cdsVimParams:= TCustomClientDataSet.Create(nil);
  try
    with cdsVimParams do
      begin
        FieldDefs.Add('CHOSEN_PRODUCTS', ftWideString, 4000);
        FieldDefs.Add('CHOSEN_DEPTS', ftWideString, 4000);
        FieldDefs.Add('BEGIN_DATE', ftTimeStamp);
        FieldDefs.Add('INCLUDE_PLANNED_SECOND_LEVEL', ftFloat);

        CreateDataSet;
        try
          Append;
          try
            FieldByName('CHOSEN_PRODUCTS').AsString:= AChosenProductsXML;
            FieldByName('CHOSEN_DEPTS').AsString:= AChosenDeptsXML;
            FieldByName('BEGIN_DATE').AsDateTime:= AStartPeriodDate;
            FieldByName('INCLUDE_PLANNED_SECOND_LEVEL').AsFloat:= Ord(AIncludePlannedSecondLevel);

            Post;
          except
            Cancel;
            raise;
          end;  { try }

          Result:= TfmVIMQuantity.ShowForm(AdmDocClient, cdsVimParams, emEdit, False, AOpenedFrom, AProductClass);
        finally
          Close;
        end;  { try }
      end;   { with }
  finally
    FreeAndNil(cdsVimParams);
  end;   { try }
end;

{ TfmVIMQuantity }

procedure TfmVIMQuantity.FormCreate(Sender: TObject);
begin
  inherited;
  ReportClass:= TrptVIMQuantity;

  cdsRounders.Open;
  cdsTempParams.CreateDataSet;

  FChartMinDate:= EncodeDate(1998,1,1);
  FChartMaxDate:= EncodeDate(2020,1,1);

  FProductsHaveSameMeasure:= exbNull;
  FIsWorkMeasure:= DefautIsWorkMeasure;
  FShowPassiveQuantity:= True;
  FShowPassiveQuantityMarks:= False;
  FShowQuantity:= True;
  FShowQuantityMarks:= True;
  FShowBalancedPrice:= False;
  FShowBalancedPriceMarks:= False;
  FShowMovements:= False;
  FShowMovementsMarks:= False;
  FShowDeficit:= False;
  FShowDeficitMarks:= False;

  FIsShowRegQuantity:= True;
  FOldIsShowRegQuantity:= False;

  actWorkMeasure.Checked:= DefautIsWorkMeasure;
  actAccountMeasure.Checked:= not DefautIsWorkMeasure;

  MaximizeStyle:= msVertical;

  FChartQuantitySeriesClickFixer:= TDBChartSeriesClickFixer.Create(ChartQuantity);
  FChartPriceSeriesClickFixer:= TDBChartSeriesClickFixer.Create(ChartPrice);
end;

procedure TfmVIMQuantity.UpdateVIM;
var
  SaveCursor: TCursor;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crSQLWait;
  try
    cdsRegister.Close;

    SetChartSeriesVisibleStatus(False);

    try
      with cdsVIM do
        begin
          Close;

          FIsSingleProduct:=
            IsSingleChosenNodeWithoutParams(Params.ParamByName('CHOSEN_PRODUCTS').AsString) and
            (not GetProductIsGroup(ChosenNodeXMLToNodeCode(Params.ParamByName('CHOSEN_PRODUCTS').AsString)));

          Open;

          AdjustLeftAxis;
          SetChartsTitles;
        end;
    finally
      SetChartSeriesVisibleStatus(True);
    end;
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmVIMQuantity.cdsVIMBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  FCurrentDate:= GetPeriodFirstDate(
    ContextDate,
    GetPeriodValue(cdsVIM.Params.ParamByName('TIME_UNIT_CODE').AsInteger)
  );

  FBeforeOpenTickCount:= GetTickCount;
end;

procedure TfmVIMQuantity.FormShow(Sender: TObject);
begin
  inherited;
  tsPrice.TabVisible:= IsLevelOneInvestedValueVisible;
  pcVIMQuantity.ActivePageIndex:= 0;
  ShowFilterParams;
  if not cdsVIM.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean then
    FReserveMode:= rmShowTowardsZero
  else
    FReserveMode:= rmShowBoth;
  FOldReserveMode:= rmShowBoth;
  FIsMadeChange:= False;
  UpdateVIM;
  actShowTowardsZero.Checked:= True;
end;

procedure TfmVIMQuantity.cdsVIMCalcFields(DataSet: TDataSet);
var
  RounderQuantity: Integer;
  RounderPrice: Integer;
  PeriodItemID: TPeriod;
  AccountPrefix: string;
begin
  inherited;

  RounderPrice:= pdsVIMROUNDER_PRICE.AsInteger;
  PeriodItemID:= GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger);

  if IsWorkMeasure then
    begin
      AccountPrefix:= '';
      RounderQuantity:= pdsVIMROUNDER_QUANTITY.AsInteger;
    end
  else
    begin
      AccountPrefix:= 'ACC_';
      RounderQuantity:= pdsVIMROUNDER_ACCOUNT_QUANTITY.AsInteger;
    end;

  // отчетна графика
  if (cdsVIMTHE_DATE.AsDateTime <= FCurrentDate) and
     (not cdsVIMIS_TODAY_SECOND_RECORD.AsBoolean) then
    begin
      cdsVIM_OTCH_QUANTITY.AsFloat:=
        RealRound(
          cdsVIM.FieldByName(AccountPrefix + 'QUANTITY_OTCH').AsFloat /
          RounderQuantity);

      cdsVIM_OTCH_PRICE.AsFloat:=
        RealRound(
          (cdsVIMQUANTITY_OTCH_PRICE.AsFloat) /
          RounderPrice);

      if FIsSingleProduct then
        begin
          cdsVIM_OTCH_QUANTITY_RESERVE.AsFloat:=
            RealRound(
              (cdsVIM.FieldByName(AccountPrefix + 'QUANTITY_OTCH_RESERVE').AsFloat + cdsVIM.FieldByName(AccountPrefix + 'NEGATIVE_QTY_OTCH_RESERVE').AsFloat)
              /
              RounderQuantity);

          cdsVIM_OTCH_PRICE_RESERVE.AsFloat:=
            RealRound(
              (cdsVIMQUANTITY_OTCH_PRICE_RESERVE.AsFloat + cdsVIMNEGATIVE_OTCH_PRICE_RESERVE.AsFloat) /
              RounderPrice);
        end
      else
        begin
          cdsVIM_OTCH_QUANTITY_RESERVE.AsFloat:=
            RealRound(
              cdsVIM.FieldByName(AccountPrefix + 'QUANTITY_OTCH_RESERVE').AsFloat /
              RounderQuantity);

          cdsVIM_OTCH_PRICE_RESERVE.AsFloat:=
            RealRound(
              (cdsVIMQUANTITY_OTCH_PRICE_RESERVE.AsFloat) /
              RounderPrice);
        end;

      if RealRound(cdsVIMQUANTITY_IN_OTCH.AsFloat) > 0 then
        begin
          cdsVIM_IN_OTCH_QUANTITY.AsFloat:=
            RealRound(
              cdsVIM.FieldByName(AccountPrefix + 'QUANTITY_IN_OTCH').AsFloat /
              RounderQuantity);
        end
      else
        cdsVIM_IN_OTCH_QUANTITY.Clear;

      if RealRound(cdsVIMQUANTITY_IN_OTCH_PRICE.AsFloat) > 0 then
        begin
          cdsVIM_IN_OTCH_PRICE.AsFloat:=
            RealRound(
              (cdsVIMQUANTITY_IN_OTCH_PRICE.AsFloat) /
              RounderPrice);
        end
      else
        cdsVIM_IN_OTCH_PRICE.Clear;

      if RealRound(cdsVIMQUANTITY_OUT_OTCH.AsFloat) > 0 then
        begin
          cdsVIM_OUT_OTCH_QUANTITY.AsFloat:=
            - RealRound(
                  cdsVIM.FieldByName(AccountPrefix + 'QUANTITY_OUT_OTCH').AsFloat /
                  RounderQuantity);
        end
      else
        cdsVIM_OUT_OTCH_QUANTITY.Clear;

      if RealRound(cdsVIMQUANTITY_OUT_OTCH_PRICE.AsFloat) > 0 then
        begin
          cdsVIM_OUT_OTCH_PRICE.AsFloat:=
            - RealRound(
                 (cdsVIMQUANTITY_OUT_OTCH_PRICE.AsFloat) /
                 RounderPrice);
        end
      else
        cdsVIM_OUT_OTCH_PRICE.Clear;

      cdsVIM_OTCH_NEGATIVE_QUANTITY_RESERVE.AsFloat:=
        RealRound(
          cdsVIM.FieldByName(AccountPrefix + 'NEGATIVE_QTY_OTCH_RESERVE').AsFloat /
          RounderQuantity);

      cdsVIM_OTCH_NEGATIVE_PRICE_RESERVE.AsFloat:=
        RealRound(
          (cdsVIMNEGATIVE_OTCH_PRICE_RESERVE.AsFloat) /
          RounderPrice);
    end
  else
    begin
      cdsVIM_OTCH_QUANTITY.Clear;
      cdsVIM_OTCH_PRICE.Clear;
      cdsVIM_OTCH_QUANTITY_RESERVE.Clear;
      cdsVIM_OTCH_PRICE_RESERVE.Clear;
      cdsVIM_IN_OTCH_QUANTITY.Clear;
      cdsVIM_IN_OTCH_PRICE.Clear;
      cdsVIM_OUT_OTCH_QUANTITY.Clear;
      cdsVIM_OUT_OTCH_PRICE.Clear;
      cdsVIM_OTCH_NEGATIVE_QUANTITY_RESERVE.Clear;
      cdsVIM_OTCH_NEGATIVE_PRICE_RESERVE.Clear;
    end;

  // планова графика
  if (cdsVIMTHE_DATE.AsDateTime >= FCurrentDate) then
    begin
      if FIsSingleProduct then
        cdsVIM_PLAN_QUANTITY.AsFloat:=
          RealRound(
            (cdsVIM.FieldByName(AccountPrefix + 'QUANTITY_PLAN').AsFloat + cdsVIM.FieldByName(AccountPrefix + 'NEGATIVE_QUANTITY').AsFloat)
            /
            RounderQuantity)
      else
        cdsVIM_PLAN_QUANTITY.AsFloat:=
          RealRound(
            cdsVIM.FieldByName(AccountPrefix + 'QUANTITY_PLAN').AsFloat /
            RounderQuantity);

      if FIsSingleProduct then
        cdsVIM_PLAN_PRICE.AsFloat:=
          RealRound(
            (cdsVIMQUANTITY_PLAN_PRICE.AsFloat + cdsVIMNEGATIVE_PRICE.AsFloat)/
            RounderPrice)
      else
        cdsVIM_PLAN_PRICE.AsFloat:=
          RealRound(
            cdsVIMQUANTITY_PLAN_PRICE.AsFloat /
            RounderPrice);

      cdsVIM_NEGATIVE_QUANTITY.AsFloat:=
        RealRound(
          cdsVIM.FieldByName(AccountPrefix + 'NEGATIVE_QUANTITY').AsFloat /
          RounderQuantity);

      cdsVIM_NEGATIVE_PRICE.AsFloat:=
        RealRound(
          cdsVIMNEGATIVE_PRICE.AsFloat /
          RounderPrice);

      cdsVIM_BALANCED_PRICE.AsFloat:= Max(cdsVIM_PLAN_PRICE.AsFloat, 0) + cdsVIM_NEGATIVE_PRICE.AsFloat;

      if FIsSingleProduct then
        cdsVIM_PLAN_QUANTITY_RESERVE.AsFloat:=
          RealRound(
            (cdsVIM.FieldByName(AccountPrefix + 'QUANTITY_PLAN_RESERVE').AsFloat + cdsVIM.FieldByName(AccountPrefix + 'NEGATIVE_QUANTITY_RESERVE').AsFloat)
            /
            RounderQuantity)
      else
        cdsVIM_PLAN_QUANTITY_RESERVE.AsFloat:=
          RealRound(
            cdsVIM.FieldByName(AccountPrefix + 'QUANTITY_PLAN_RESERVE').AsFloat /
            RounderQuantity);

      if FIsSingleProduct then
        cdsVIM_PLAN_PRICE_RESERVE.AsFloat:=
          RealRound(
            (cdsVIMQUANTITY_PLAN_PRICE_RESERVE.AsFloat + cdsVIMNEGATIVE_PRICE_RESERVE.AsFloat) /
            RounderPrice)
      else
        cdsVIM_PLAN_PRICE_RESERVE.AsFloat:=
          RealRound(
            cdsVIMQUANTITY_PLAN_PRICE_RESERVE.AsFloat /
            RounderPrice);

      cdsVIM_NEGATIVE_QUANTITY_RESERVE.AsFloat:=
        RealRound(
          cdsVIM.FieldByName(AccountPrefix + 'NEGATIVE_QUANTITY_RESERVE').AsFloat /
          RounderQuantity);

      cdsVIM_NEGATIVE_PRICE_RESERVE.AsFloat:=
        RealRound(
          cdsVIMNEGATIVE_PRICE_RESERVE.AsFloat /
          RounderPrice);

      cdsVIM_BALANCED_PRICE_RESERVE.AsFloat:=
        Max(cdsVIM_PLAN_PRICE_RESERVE.AsFloat, 0) + cdsVIM_NEGATIVE_PRICE_RESERVE.AsFloat;

      if RealRound(cdsVIMQUANTITY_IN_PLAN.AsFloat) > 0 then
        begin
          cdsVIM_IN_PLAN_QUANTITY.AsFloat:=
             RealRound(
                   cdsVIM.FieldByName(AccountPrefix + 'QUANTITY_IN_PLAN').AsFloat /
                   RounderQuantity);
        end
      else
        cdsVIM_IN_PLAN_QUANTITY.Clear;

      if RealRound(cdsVIMQUANTITY_IN_PLAN_PRICE.AsFloat) > 0 then
        begin
          cdsVIM_IN_PLAN_PRICE.AsFloat:=
             RealRound(
                   (cdsVIMQUANTITY_IN_PLAN_PRICE.AsFloat) /
                   RounderPrice);
        end
      else
        cdsVIM_IN_PLAN_PRICE.Clear;


      if RealRound(cdsVIMQUANTITY_OUT_PLAN.AsFloat) > 0 then
        begin
          cdsVIM_OUT_PLAN_QUANTITY.AsFloat:=
            - RealRound(
                    cdsVIM.FieldByName(AccountPrefix + 'QUANTITY_OUT_PLAN').AsFloat /
                    RounderQuantity);
        end
      else
        cdsVIM_OUT_PLAN_QUANTITY.Clear;

      if RealRound(cdsVIMQUANTITY_OUT_PLAN_PRICE.AsFloat) > 0 then
        begin
          cdsVIM_OUT_PLAN_PRICE.AsFloat:=
            - RealRound(
                    (cdsVIMQUANTITY_OUT_PLAN_PRICE.AsFloat) /
                    RounderPrice);
        end
      else
        cdsVIM_OUT_PLAN_PRICE.Clear;

      if (cdsVIMTHE_DATE.AsDateTime = FCurrentDate) and not cdsVIMIS_TODAY_SECOND_RECORD.AsBoolean then
        begin
          cdsVIM_PASSIVE_QUANTITY.Clear;
          cdsVIM_PASSIVE_QUANTITY_PRICE.Clear
        end
      else
        begin
          cdsVIM_PASSIVE_QUANTITY.AsFloat:=
            RealRound(cdsVIM.FieldByName(AccountPrefix + 'PASSIVE_QUANTITY').AsFloat / RounderQuantity);

          cdsVIM_PASSIVE_QUANTITY_PRICE.AsFloat:=
            RealRound(cdsVIMPASSIVE_QUANTITY_PRICE.AsFloat / RounderPrice);
        end;

      if (cdsVIMQUANTITY_PLAN.AsFloat = 0) then
        cdsVIM_PASSIVE_QUANTITY_PERCENT.Clear
      else
        cdsVIM_PASSIVE_QUANTITY_PERCENT.AsFloat:= cdsVIMPASSIVE_QUANTITY.AsFloat / cdsVIMQUANTITY_PLAN.AsFloat;

      if (cdsVIMACC_QUANTITY_PLAN.AsFloat = 0) then
        cdsVIM_A_PASSIVE_QUANTITY_PERCENT.Clear
      else
        cdsVIM_A_PASSIVE_QUANTITY_PERCENT.AsFloat:= cdsVIMACC_PASSIVE_QUANTITY.AsFloat / cdsVIMACC_QUANTITY_PLAN.AsFloat;

      if (cdsVIMQUANTITY_PLAN_PRICE.AsFloat = 0) then
        cdsVIM_PASSIVE_PRICE_PERCENT.Clear
      else
        cdsVIM_PASSIVE_PRICE_PERCENT.AsFloat:= cdsVIMPASSIVE_QUANTITY_PRICE.AsFloat / cdsVIMQUANTITY_PLAN_PRICE.AsFloat;

      // дефицит
      if RealRound(cdsVIMQUANTITY_DEFICIT.AsFloat) < 0 then
        cdsVIM_DEFICIT_QUANTITY.AsFloat:=
          RealRound(
            cdsVIM.FieldByName(AccountPrefix + 'QUANTITY_DEFICIT').AsFloat /
            RounderQuantity)
      else
        cdsVIM_DEFICIT_QUANTITY.Clear;

      if RealRound(cdsVIMQUANTITY_DEFICIT_RESERVE.AsFloat) < 0 then
        cdsVIM_DEFICIT_QUANTITY_RESERVE.AsFloat:=
          RealRound(
            cdsVIM.FieldByName(AccountPrefix + 'QUANTITY_DEFICIT_RESERVE').AsFloat /
            RounderQuantity)
      else
        cdsVIM_DEFICIT_QUANTITY_RESERVE.Clear;

      if RealRound(cdsVIMQUANTITY_DEFICIT_PRICE.AsFloat) < 0 then
        cdsVIM_DEFICIT_PRICE.AsFloat:=
          RealRound(
            (cdsVIMQUANTITY_DEFICIT_PRICE.AsFloat) /
            RounderPrice)
      else
        cdsVIM_DEFICIT_PRICE.Clear;

      if RealRound(cdsVIMQUANTITY_DEFICIT_PRICE_RESERVE.AsFloat) < 0 then
        cdsVIM_DEFICIT_QUANTITY_PRICE_RESERVE.AsFloat:=
          RealRound(
            (cdsVIMQUANTITY_DEFICIT_PRICE_RESERVE.AsFloat) /
            RounderPrice)
      else
        cdsVIM_DEFICIT_QUANTITY_PRICE_RESERVE.Clear;

    end
  else
    begin
      cdsVIM_PLAN_QUANTITY.Clear;
      cdsVIM_PLAN_PRICE.Clear;
      cdsVIM_NEGATIVE_QUANTITY.Clear;
      cdsVIM_NEGATIVE_PRICE.Clear;
      cdsVIM_OUT_PLAN_QUANTITY.Clear;
      cdsVIM_OUT_PLAN_PRICE.Clear;
      cdsVIM_IN_PLAN_QUANTITY.Clear;
      cdsVIM_IN_PLAN_PRICE.Clear;
      cdsVIM_PASSIVE_QUANTITY.Clear;
      cdsVIM_PASSIVE_QUANTITY_PRICE.Clear;
      cdsVIM_DEFICIT_QUANTITY.Clear;
      cdsVIM_DEFICIT_PRICE.Clear;

      cdsVIM_PLAN_QUANTITY_RESERVE.Clear;
      cdsVIM_PLAN_PRICE_RESERVE.Clear;
      cdsVIM_NEGATIVE_QUANTITY_RESERVE.Clear;
      cdsVIM_NEGATIVE_PRICE_RESERVE.Clear;
      cdsVIM_DEFICIT_QUANTITY_RESERVE.Clear;
      cdsVIM_DEFICIT_QUANTITY_PRICE_RESERVE.Clear;
    end;

  // min stuff
  cdsVIM_MIN_QUANTITY.AsFloat:=
    RealRound(cdsVIMMIN_QUANTITY.AsFloat / RounderQuantity);
  cdsVIM_MIN_PRICE.AsFloat:=
    RealRound(cdsVIMMIN_PRICE.AsFloat / RounderPrice);

  // label-и на времевите стъпки
  cdsVIM_LABEL.AsString:=
    GetPeriodLabelEx(
      cdsVIMTHE_DATE.AsDateTime,
      PeriodItemID,
      actTogglePeriodLabelsExtraInfo.Checked,
      cdsVIMIS_TODAY_SECOND_RECORD.AsBoolean);

  cdsVIM_LABEL_FOR_REGISTER.AsString:=
    GetPeriodLabelEx(
      cdsVIMTHE_DATE.AsDateTime,
      PeriodItemID,
      False,
      cdsVIMIS_TODAY_SECOND_RECORD.AsBoolean,
      True);

  cdsVIM_ZERO.AsInteger:= 0;
end;

procedure TfmVIMQuantity.actFilterDeptDocsExecute(Sender: TObject);
begin
  inherited;
  dmDocClient.OpenDeptDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl),
    pdsVIM_DEPT_CODE.AsInteger);
end;

procedure TfmVIMQuantity.actFilterDeptDocsUpdate(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= not pdsVIM_DEPT_CODE.IsNull;
      ImageIndex:= pdsVIM_DEPT_HAS_DOCUMENTATION.AsInteger;
    end;
end;

procedure TfmVIMQuantity.actFilterExecute(Sender: TObject);
begin
  inherited;

  if TfmVIMQuantityFilter.ShowForm(
       dmDocClient, 
       pdsVIM,
       emEdit,
       doNone,
       FProductClass) then
    begin
      ShowFilterParams;
      Application.ProcessMessages;

      UpdateVIM;
    end;
end;

procedure TfmVIMQuantity.DoBeforeShow;
var
  MsgParams: TStrings;
begin
  if (FFilterFormEnabled or FCanRefilter) and not pdsVIM.Active then
    pdsVIM.Open;

  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(LoginContext, FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  inherited;

  // OnCalcFields се извиква преди AfterOpen и тази инициализация се прави
  // само заради изчисленията в OnCalcFields
  FIsWorkMeasure:= DefautIsWorkMeasure;

  if FFilterFormEnabled then
    begin
      if not TfmVIMQuantityFilter.ShowForm(
        dmDocClient,
        pdsVIM,
        emEdit,
        doNone,
        FProductClass) then
        Abort
    end
  else
    if FOpenedFrom in [vofVIMOpenedFromSale, vofVIMOpenedFromModel, vofVIMOpenedFromDef] then      // vika se ot PP / OP ili MODEl
      begin
        with pdsVIM do
          begin
            if not Active then
              Open;

            Edit;
            try
              FieldByName('IS_AUTO_ROUNDER').AsBoolean:= True;
              Post;
            except
              Cancel;
              raise;
            end;  { try }
          end;  { with }
      end;  { if }
end;

procedure TfmVIMQuantity.CloseDataSets;
begin
  cdsRegister.Close;
  pdsVIM.Close;
  cdsVIM.Close;
  inherited;
end;

procedure TfmVIMQuantity.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FChartPriceSeriesClickFixer);
  FreeAndNil(FChartQuantitySeriesClickFixer);

  cdsTempParams.Close;
  cdsRounders.Close;

  inherited;
end;

procedure TfmVIMQuantity.ShowFilterParams;
var
  PeriodName: string;
  Period: TPeriod;
begin
  Period:= GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger);
  PeriodName:= GetPeriodTypeName(Period, True);

  pnlStartDate.Caption:=
    DateToStr(pdsVIMBEGIN_DATE.AsDateTime);
  pnlStartDateGSD.Caption:=
    JclDateTime.FormatDateTime('ww\e\iiii', pdsVIMBEGIN_DATE.AsDateTime);
  pnlEndDate.Caption:=
    DateToStr(pdsVIM_END_DATE.AsDateTime);
  pnlEndDateGSD.Caption:=
    JclDateTime.FormatDateTime('ww\e\iiii', pdsVIM_END_DATE.AsDateTime);

  lblChartPriceStartDate.Caption:= FormatPeriodDate(pdsVIMBEGIN_DATE.AsDateTime, Period);
  lblChartPriceEndDate.Caption:= FormatPeriodDate(pdsVIM_END_DATE.AsDateTime, Period);
  lblChartQuantityStartDate.Caption:= FormatPeriodDate(pdsVIMBEGIN_DATE.AsDateTime, Period);
  lblChartQuantityEndDate.Caption:= FormatPeriodDate(pdsVIM_END_DATE.AsDateTime, Period);
end;

procedure TfmVIMQuantity.cdsVIMAfterOpen(DataSet: TDataSet);
begin
  FIsShowRegQuantity:= ProductsHaveSameMeasure;
  UpdateRegisterDataSet;
  ForceUpdateGridColumnsVisibleStatus;
  UpdateGridColumnsVisibleStatus;
  ChartQuantity.RefreshData;
  ChartPrice.RefreshData;
  sbtnShowPrice.Down:= not tsQuantity.TabVisible;
  SetGridCaptions;

  FOpenTimeInSeconds:=
    RealRound(TickCountDiff(FBeforeOpenTickCount, GetTickCount) / 1000);

  RefreshAxisLabelsData;
end;

procedure TfmVIMQuantity.SetProductsHaveSameMeasure(const Value: Boolean);
var
  ExValue: TExBoolean;
begin
  ExValue:= BoolToExBool(Value);
  if (ExValue <> FProductsHaveSameMeasure) then
    begin
      FProductsHaveSameMeasure:= ExValue;

      // регулираме видимостта на графиката и регистъра с количеството
      tsQuantity.TabVisible:= Value;
      FIsShowRegQuantity:= Value;
      UpdateGridColumnsVisibleStatus;

      if not Value then
        actShowRegPrice.Checked:= True;

      // ако имаме количество слагаме по default работна мярка
      if Value then
        begin
          actWorkMeasure.Checked:= DefautIsWorkMeasure;
          IsWorkMeasure:= DefautIsWorkMeasure;
        end;
    end;
end;

function TfmVIMQuantity.GetProductsHaveSameMeasure: Boolean;
begin
  Result:= ExBoolToBool(FProductsHaveSameMeasure);
end;


procedure TfmVIMQuantity.SetMeasure(const Value: Boolean);
var
  OldValue: Boolean;
begin
  OldValue:= FIsWorkMeasure;

  FIsWorkMeasure:= Value;

  if FIsWorkMeasure then
    ChartQuantity.LeftAxis.Title.Caption:=
      GetQuantityLeftAxisTitle(pdsVIMROUNDER_QUANTITY.AsInteger, pdsVIM_ROUNDER_QUANTITY_NAME.AsString, FProductMeasureAbbrev)
  else
    ChartQuantity.LeftAxis.Title.Caption:=
      GetQuantityLeftAxisTitle(pdsVIMROUNDER_ACCOUNT_QUANTITY.AsInteger, pdsVIM_ROUNDER_ACC_QUANTITY_NAME.AsString, FProductAccountMeasureAbbrev);

  if (OldValue <> FIsWorkMeasure) then
    begin
      ChartQuantity.RefreshData;
      ForceUpdateGridColumnsVisibleStatus;
      UpdateGridColumnsVisibleStatus;
      ShowFilterParams;
    end;
end;

procedure TfmVIMQuantity.SetShowPassiveQuantity(const Value: Boolean);
begin
  if (Value <> FShowPassiveQuantity) then
    begin
      FShowPassiveQuantity:= Value;
      UpdateAllSeriesAndMarksVisibleStatus;
    end;
end;

procedure TfmVIMQuantity.actShowPassiveUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (pcVIMQuantity.ActivePage = tsQuantity) or
    (pcVIMQuantity.ActivePage = tsPrice);
  ShowPassiveQuantity:= sbtnPassive.Down;    
end;

procedure TfmVIMQuantity.MoveVIM(AForward: Boolean);
begin
  pdsVIM.Edit;
  pdsVIMBEGIN_DATE.AsDateTime:=
    IncDate(
      pdsVIMBEGIN_DATE.AsDateTime,
      GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger),
      IfThen(AForward, 1, -1) * RealRound(pdsVIMTIME_UNIT_COUNT.AsInteger / 2)
    );
  pdsVIM.Post;

  UpdateVIM;
end;

procedure TfmVIMQuantity.actPrevExecute(Sender: TObject);
begin
  inherited;
  MoveVIM(False);
end;

procedure TfmVIMQuantity.actNextExecute(Sender: TObject);
begin
  inherited;
  MoveVIM(True);
end;

procedure TfmVIMQuantity.actPrevUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Caption:=
    '   ' +
    IntToStr(RealRound(pdsVIMTIME_UNIT_COUNT.AsInteger / 2)) +
    '  ' +
    GetPeriodTypeName(GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger), True);

  (Sender as TAction).Enabled:=
    (pdsVIMBEGIN_DATE.AsDateTime >= FChartMinDate);
end;

procedure TfmVIMQuantity.actNextUpdate(Sender: TObject);
begin
  inherited;

  (Sender as TAction).Caption:=
    '   ' +
    IntToStr(RealRound(pdsVIMTIME_UNIT_COUNT.AsInteger / 2)) +
    '  ' +
    GetPeriodTypeName(GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger), True);

  (Sender as TAction).Enabled:=
    (pdsVIM_END_DATE.AsDateTime <= FChartMaxDate);
end;

procedure TfmVIMQuantity.SetChartSeriesVisibleStatus(const fl: Boolean);
var
  i: Integer;
begin
  if fl then
    UpdateAllSeriesAndMarksVisibleStatus
  else
    begin
      with ChartQuantity do
        begin
          for i:= 0 to SeriesCount-1 do
            Series[i].Active:= False;
          Refresh;
        end;

      with ChartPrice do
        begin
          for i:= 0 to SeriesCount-1 do
            Series[i].Active:= False;
          Refresh;
        end;
    end;
end;

procedure TfmVIMQuantity.ChartQuantityGetLegendRect(Sender: TCustomChart;
  var Rect: TRect);
begin
  inherited;

  // ще центрираме хоризонтално Legend-а на количеството
  with Rect do
    begin
      FQuantityLegendCorr:= ((ChartQuantity.Width - (Right-Left)) div 2) - Left;
      Inc(Left, FQuantityLegendCorr);
      Inc(Right, FQuantityLegendCorr);
    end;
end;

procedure TfmVIMQuantity.ChartQuantityGetLegendPos(Sender: TCustomChart;
  Index: Integer; var X, Y, XColor: Integer);
begin
  inherited;
  Inc(X, FQuantityLegendCorr);
end;

procedure TfmVIMQuantity.ChartPriceGetLegendPos(Sender: TCustomChart;
  Index: Integer; var X, Y, XColor: Integer);
begin
  inherited;
  Inc(X, FPriceLegendCorr);
end;

procedure TfmVIMQuantity.ChartPriceGetLegendRect(Sender: TCustomChart;
  var Rect: TRect);
begin
  inherited;

  // ще центрираме хоризонтално Legend-а на цената
  with Rect do
    begin
      FPriceLegendCorr:= ((ChartQuantity.Width - (Right-Left)) div 2) - Left;
      Inc(Left, FPriceLegendCorr);
      Inc(Right, FPriceLegendCorr);
    end;
end;

procedure TfmVIMQuantity.AdjustLeftAxis;
begin
  if FMinQuantity < 0 then
    FMinQuantity:= FMinQuantity + Min(FMinQuantity * LeftAxisPercentDown, -FMaxQuantity/10);

  if FMinPrice < 0 then
    FMinPrice:= FMinPrice + Min(FMinPrice * LeftAxisPercentDown, -FMaxPrice/10);

  if FMaxQuantity > 0 then
    FMaxQuantity:= FMaxQuantity + Max(FMaxQuantity * LeftAxisPercentUp, -FMinQuantity/10)
  else
    FMaxQuantity:= Abs(FMinQuantity * LeftAxisPercentUp);

  if FMaxPrice > 0 then
    FMaxPrice:= FMaxPrice + Max(FMaxPrice * LeftAxisPercentUp, -FMinPrice/10)
  else
    FMaxPrice:= Abs(FMinPrice * LeftAxisPercentUp);

  //ChartQuantity.LeftAxis.SetMinMax(FMinQuantity, FMaxQuantity);
  //ChartPrice.LeftAxis.SetMinMax(FMinPrice, FMaxPrice);
  ChartQuantity.LeftAxis.Automatic:= True;
  ChartPrice.LeftAxis.Automatic:= True;
end;

procedure TfmVIMQuantity.SetChartsTitles;
begin
  if ProductsHaveSameMeasure then
    with ChartQuantity do
      begin
        if IsWorkMeasure then
          LeftAxis.Title.Caption:=
            GetQuantityLeftAxisTitle(pdsVIMROUNDER_QUANTITY.AsInteger, pdsVIM_ROUNDER_QUANTITY_NAME.AsString, FProductMeasureAbbrev)
        else
          LeftAxis.Title.Caption:=
            GetQuantityLeftAxisTitle(pdsVIMROUNDER_ACCOUNT_QUANTITY.AsInteger, pdsVIM_ROUNDER_ACC_QUANTITY_NAME.AsString, FProductAccountMeasureAbbrev);
            
        lblToDateOnChartQuantity.Caption:= SToDate + DateToStr(FCurrentDate);
      end;

  with ChartPrice do
    begin
      LeftAxis.Title.Caption:= GetPriceLeftAxisTitle;
      lblToDateOnChartPrice.Caption:= SToDate + DateToStr(FCurrentDate);
    end;
end;

procedure TfmVIMQuantity.SetShowPassiveQuantityMarks(const Value: Boolean);
begin
  if (Value <> FShowPassiveQuantityMarks) then
    begin
      FShowPassiveQuantityMarks:= Value;
      UpdateAllSeriesAndMarksVisibleStatus;
    end;
end;

procedure TfmVIMQuantity.actShowPassiveMarksUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= actShowPassive.Enabled and ShowPassiveQuantity;
  ShowPassiveQuantityMarks:= sbtnPassiveMarks.Down;  
end;

function TfmVIMQuantity.GetProductName: string;
begin
  Result:= pdsVIM_PRODUCT_NAME.DisplayText;
end;

function TfmVIMQuantity.GetDeptName: string;
begin
  Result:= pdsVIM_DEPT_NAME.DisplayText;
end;

function TfmVIMQuantity.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

function TfmVIMQuantity.GetQuantityLeftAxisTitle(
  const Rounder: Integer; const RounderName, MeasureAbr: string): string;
begin
  if (Rounder = 1) then
    Result:= MeasureAbr
  else
    Result:= RounderName + ' ' + MeasureAbr;
end;

function TfmVIMQuantity.GetPriceLeftAxisTitle: string;
begin
  if (pdsVIMROUNDER_PRICE.AsInteger = 1) then
    Result:= LoginContext.SecondaryCurrencyAbbrev
  else
    Result:=
      pdsVIM_ROUNDER_PRICE_NAME.AsString +
      ' ' +
      LoginContext.SecondaryCurrencyAbbrev;
end;

procedure TfmVIMQuantity.SetQuantityPrintChartTitle(Title: TStrings);
begin
  with Title do
    begin
      Clear;

      Add(SQuantity);
      Add(SProduct + ':  ' + GetProductName);
      Add(SDept + ':  ' + GetDeptName);
      Add(SToDate + DateToStr(FCurrentDate));
      Add(' ');
    end;
end;

procedure TfmVIMQuantity.SetPricePrintChartTitle(Title: TStrings);
begin
  with Title do
    begin
      Clear;

      Add(SQuantityPrice);
      Add(SProduct + ':  ' + GetProductName);
      Add(SDept + ':  ' + GetDeptName);
      Add(SToDate + DateToStr(FCurrentDate));
      Add(' ');
    end;
end;


procedure TfmVIMQuantity.SetChartPrintTitleAndPrint(AChart: TDBChart;
  ASetTitleProc: TSetChartTitle);
var
  s: TStringList;
begin
  s:= TStringList.Create;
  try
    ASetTitleProc(s);
    PrintChart(AChart, s);
  finally
    FreeAndNil(s);
  end;
end;


procedure TfmVIMQuantity.UpdateRegisterDataSet;
var
  SaveCursor: TCursor;
  OtchQuantityReserve, AOtchQuantityReserve, OtchPriceReserve: Real;
  PlanQuantity, APlanQuantity, PlanQuantityReserve, APlanQuantityReserve: Real;
  PlanPrice, PlanPriceReserve: Real;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;

  try
    cdsRegister.Close;
    Application.ProcessMessages;

    cdsRegister.CreateDataSet;

    cdsVIM.First;
    while not cdsVIM.Eof do
      begin
        if FIsSingleProduct then
          begin
            OtchQuantityReserve:=
              cdsVIMQUANTITY_OTCH_RESERVE.AsFloat + cdsVIMNEGATIVE_QTY_OTCH_RESERVE.AsFloat;
            AOtchQuantityReserve:=
              cdsVIMACC_QUANTITY_OTCH_RESERVE.AsFloat + cdsVIMACC_NEGATIVE_QTY_OTCH_RESERVE.AsFloat;
            OtchPriceReserve:=
              cdsVIMQUANTITY_OTCH_PRICE_RESERVE.AsFloat + cdsVIMNEGATIVE_OTCH_PRICE_RESERVE.AsFloat;
            PlanQuantity:=
              cdsVIMQUANTITY_PLAN.AsFloat + cdsVIMNEGATIVE_QUANTITY.AsFloat;
            APlanQuantity:=
              cdsVIMACC_QUANTITY_PLAN.AsFloat + cdsVIMACC_NEGATIVE_QUANTITY.AsFloat;
            PlanPrice:=
              cdsVIMQUANTITY_PLAN_PRICE.AsFloat + cdsVIMNEGATIVE_PRICE.AsFloat;
            PlanQuantityReserve:=
              cdsVIMQUANTITY_PLAN_RESERVE.AsFloat + cdsVIMNEGATIVE_QUANTITY_RESERVE.AsFloat;
            APlanQuantityReserve:=
              cdsVIMACC_QUANTITY_PLAN_RESERVE.AsFloat + cdsVIMACC_NEGATIVE_QUANTITY_RESERVE.AsFloat;
            PlanPriceReserve:=
              cdsVIMQUANTITY_PLAN_PRICE_RESERVE.AsFloat + cdsVIMNEGATIVE_PRICE_RESERVE.AsFloat;
          end
        else
          begin
            OtchQuantityReserve:= cdsVIMQUANTITY_OTCH_RESERVE.AsFloat;
            AOtchQuantityReserve:= cdsVIMACC_QUANTITY_OTCH_RESERVE.AsFloat;
            OtchPriceReserve:= cdsVIMQUANTITY_OTCH_PRICE_RESERVE.AsFloat;
            PlanQuantity:= cdsVIMQUANTITY_PLAN.AsFloat;
            APlanQuantity:= cdsVIMACC_QUANTITY_PLAN.AsFloat;
            PlanPrice:= cdsVIMQUANTITY_PLAN_PRICE.AsFloat;
            PlanQuantityReserve:= cdsVIMQUANTITY_PLAN_RESERVE.AsFloat;
            APlanQuantityReserve:= cdsVIMACC_QUANTITY_PLAN_RESERVE.AsFloat;
            PlanPriceReserve:= cdsVIMQUANTITY_PLAN_PRICE_RESERVE.AsFloat;
          end;

        if (cdsVIMTHE_DATE.AsDateTime <= FCurrentDate) and
           (not cdsVIMIS_TODAY_SECOND_RECORD.AsBoolean) then
          cdsRegister.AppendRecord([
            cdsVIMTHE_DATE.AsDateTime,
            cdsVIMWORKDAYS.AsInteger,
            cdsVIMQUANTITY_OTCH.AsFloat,
            OtchQuantityReserve,
            cdsVIMQUANTITY_OTCH_PRICE.AsFloat,
            OtchPriceReserve,
            cdsVIMQUANTITY_IN_OTCH.AsFloat,
            cdsVIMQUANTITY_IN_OTCH_PRICE.AsFloat,
            cdsVIMQUANTITY_OUT_OTCH.AsFloat,
            cdsVIMQUANTITY_OUT_OTCH_PRICE.AsFloat,
            cdsVIMQUANTITY_DEFICIT.AsFloat,
            cdsVIMQUANTITY_DEFICIT_RESERVE.AsFloat,
            cdsVIMQUANTITY_DEFICIT_PRICE.AsFloat,
            cdsVIMQUANTITY_DEFICIT_PRICE_RESERVE.AsFloat,
            Null,
            Null,
            cdsVIM_LABEL_FOR_REGISTER.AsString,
            col_reg_otch,
            col_reg_sel_otch,
            False,
            cdsVIMACC_QUANTITY_OTCH.AsFloat,
            AOtchQuantityReserve,
            cdsVIMACC_QUANTITY_IN_OTCH.AsFloat,
            cdsVIMACC_QUANTITY_OUT_OTCH.AsFloat,
            cdsVIMACC_QUANTITY_DEFICIT.AsFloat,
            cdsVIMACC_QUANTITY_DEFICIT_RESERVE.AsFloat,
            Null
            ]);

        if (cdsVIMTHE_DATE.AsDateTime > FCurrentDate) or
           ((cdsVIMTHE_DATE.AsDateTime =  FCurrentDate) and
            (cdsVIMIS_TODAY_SECOND_RECORD.AsBoolean)) then
          cdsRegister.AppendRecord([
            cdsVIMTHE_DATE.AsDateTime,
            cdsVIMWORKDAYS.AsInteger,
            PlanQuantity,
            PlanQuantityReserve,
            PlanPrice,
            PlanPriceReserve,
            cdsVIMQUANTITY_IN_PLAN.AsFloat,
            cdsVIMQUANTITY_IN_PLAN_PRICE.AsFloat,
            cdsVIMQUANTITY_OUT_PLAN.AsFloat,
            cdsVIMQUANTITY_OUT_PLAN_PRICE.AsFloat,
            cdsVIMQUANTITY_DEFICIT.AsFloat,
            cdsVIMQUANTITY_DEFICIT_RESERVE.AsFloat,
            cdsVIMQUANTITY_DEFICIT_PRICE.AsFloat,
            cdsVIMQUANTITY_DEFICIT_PRICE_RESERVE.AsFloat,
            cdsVIM_PASSIVE_QUANTITY_PERCENT.AsFloat,
            cdsVIM_PASSIVE_PRICE_PERCENT.AsFloat,
            cdsVIM_LABEL_FOR_REGISTER.AsString,
            col_reg_plan,
            col_reg_sel_plan,
            True,
            APlanQuantity,
            APlanQuantityReserve,
            cdsVIMACC_QUANTITY_IN_PLAN.AsFloat,
            cdsVIMACC_QUANTITY_OUT_PLAN.AsFloat,
            cdsVIMACC_QUANTITY_DEFICIT.AsFloat,
            cdsVIMACC_QUANTITY_DEFICIT_RESERVE.AsFloat,
            cdsVIM_A_PASSIVE_QUANTITY_PERCENT.AsFloat
            ]);

        cdsVIM.Next;
      end;

    cdsRegister.First;

  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmVIMQuantity.PrintRegister;
var
  MeasureAbbrev: string;
begin
  if IsWorkMeasure then
    MeasureAbbrev:= FProductMeasureAbbrev
  else
    MeasureAbbrev:= FProductAccountMeasureAbbrev;

  TrptVIMQuantity.PrintReport(
    cdsRegister,
    pdsVIM,
    sbtnShowQuantity.Down,
    MeasureAbbrev);
end;

procedure TfmVIMQuantity.SetGridCaptions;
begin
  grdMaster.Columns[0].Title.Caption:= GetPeriodTypeName(GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger));
end;

procedure TfmVIMQuantity.actWorkMeasureUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    FProductsHaveSameAccountMeasure and
    (
      (pcVIMQuantity.ActivePage = tsQuantity) or
      ((tsQuantity.TabVisible) and
       (pcVIMQuantity.ActivePage = tsRegister) and
       FIsShowRegQuantity)
    );
  IsWorkMeasure:= sbtnWorkMeasure.Down;
end;

procedure TfmVIMQuantity.grdMasterGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  Highlight: Boolean;
  Field: TField;
begin
  Highlight:= (gdSelected in State);
  Field:= Column.Field;

  if Field.FieldName = 'DATE_LABEL' then
    begin
      if (cdsRegisterWORKDAYS.AsInteger = 0) then
        AFont.Color:= clRed
      else
        begin
          if (GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger) = perDay) and (DayOfTheWeek(cdsRegisterTHE_DATE.AsDateTime) = 1) then
            AFont.Color:= clBlue
          else
            AFont.Color:= clBlack;
        end;
        
      if not Highlight then
        Background:= Field.DataSet.FieldByName('COLOR').AsInteger
      else
        Background:= Field.DataSet.FieldByName('COLOR_SELECTED').AsInteger;
    end
  else
    inherited;
end;

procedure TfmVIMQuantity.Initialize;
begin
  inherited Initialize;

  FOriginalFormCaption:= actForm.Caption;
end;

function TfmVIMQuantity.IsQuantityField(
  const AField: TAbmesFloatField): Boolean;
begin
  Result:= False;
end;

procedure TfmVIMQuantity.cdsVIMAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
var
  NewRounderQuantity, NewRounderAccQuantity, NewRounderPrice: Double;
  NewRounderQuantityName, NewRounderAccQuantityName, NewRounderQuantityAbbrev: string;
  NewRounderPriceName, NewRounderAccQuantityAbbrev, NewRounderPriceAbbrev: string;
begin
  inherited;

  FMinQuantity:= OwnerData[0][0];
  FMaxQuantity:= OwnerData[0][1];
  FMinAccQuantity:= OwnerData[0][2];
  FMaxAccQuantity:= OwnerData[0][3];
  FMinPrice:= OwnerData[0][4];
  FMaxPrice:= OwnerData[0][5];
  FFirstTodayOrderNo:= OwnerData[0][6];

  if pdsVIMIS_AUTO_ROUNDER.AsBoolean then
    begin
      dmMain.SvrVIM.GetRounder(FMaxQuantity - FMinQuantity, NewRounderQuantity, NewRounderQuantityName, NewRounderQuantityAbbrev);
      dmMain.SvrVIM.GetRounder(FMaxAccQuantity - FMinAccQuantity, NewRounderAccQuantity, NewRounderAccQuantityName, NewRounderAccQuantityAbbrev);
      dmMain.SvrVIM.GetRounder(FMaxPrice - FMinPrice, NewRounderPrice, NewRounderPriceName, NewRounderPriceAbbrev);
    end
  else
    begin
      NewRounderQuantity:= pdsVIMROUNDER_QUANTITY.AsFloat;
      NewRounderQuantityAbbrev:= pdsVIM_ROUNDER_QUANTITY_ABBREV.AsString;
      NewRounderAccQuantity:= pdsVIMROUNDER_ACCOUNT_QUANTITY.AsFloat;
      NewRounderAccQuantityAbbrev:= pdsVIM_ROUNDER_ACC_QUANTITY_ABBREV.AsString;
      NewRounderPrice:= pdsVIMROUNDER_PRICE.AsFloat;
      NewRounderPriceAbbrev:= pdsVIM_ROUNDER_PRICE_ABBREV.AsString;
    end;

  if NewRounderQuantity > 0 then
    begin
      FMinQuantity:= FMinQuantity/NewRounderQuantity;
      FMaxQuantity:= FMaxQuantity/NewRounderQuantity;
    end;
  if NewRounderAccQuantity > 0 then
    begin
      FMinAccQuantity:= FMinAccQuantity/NewRounderAccQuantity;
      FMaxAccQuantity:= FMaxAccQuantity/NewRounderAccQuantity;
    end;
  if NewRounderPrice > 0 then
    begin
      FMinPrice:= FMinPrice/NewRounderPrice;
      FMaxPrice:= FMaxPrice/NewRounderPrice;
    end;

  if pdsVIM.Active then
    pdsVIM.SafeEdit/
      procedure begin
        if not pdsVIMROUNDER_QUANTITY.ReadOnly then
          pdsVIMROUNDER_QUANTITY.AsFloat:= NewRounderQuantity;

        if not pdsVIMROUNDER_ACCOUNT_QUANTITY.ReadOnly then
          pdsVIMROUNDER_ACCOUNT_QUANTITY.AsFloat:= NewRounderAccQuantity;

        if not pdsVIMROUNDER_PRICE.ReadOnly then
          pdsVIMROUNDER_PRICE.AsFloat:= NewRounderPrice;
      end;

  ShowFilterParams;

  ProductsHaveSameMeasure:= OwnerData[1][0];
  FProductsHaveSameAccountMeasure:= OwnerData[1][1];
  FProductMeasureAbbrev:= OwnerData[1][2];
  FProductAccountMeasureAbbrev:= OwnerData[1][3];
end;

procedure TfmVIMQuantity.SetShowBalancedPrice(const Value: Boolean);
begin
  if (Value <> FShowBalancedPrice) then
    begin
      FShowBalancedPrice:= Value;
      UpdateAllSeriesAndMarksVisibleStatus;
    end;  { if }
end;

procedure TfmVIMQuantity.SetShowBalancedPriceMarks(const Value: Boolean);
begin
  if (Value <> FShowBalancedPriceMarks) then
    begin
      FShowBalancedPriceMarks:= Value;
      UpdateAllSeriesAndMarksVisibleStatus;
    end;  { if }
end;

procedure TfmVIMQuantity.SetShowDeficit(const Value: Boolean);
begin
  if (Value <> FShowDeficit) then
    begin
      FShowDeficit:= Value;
      UpdateAllSeriesAndMarksVisibleStatus;
    end;
end;

procedure TfmVIMQuantity.SetShowDeficitMarks(const Value: Boolean);
begin
  if (Value <> FShowDeficitMarks) then
    begin
      FShowDeficitMarks:= Value;
      UpdateAllSeriesAndMarksVisibleStatus;
    end;
end;

procedure TfmVIMQuantity.SetShowMovements(const Value: Boolean);
begin
  if (Value <> FShowMovements) then
    begin
      FShowMovements:= Value;
      UpdateAllSeriesAndMarksVisibleStatus;
    end;
end;

procedure TfmVIMQuantity.SetShowMovementsMarks(const Value: Boolean);
begin
  if (Value <> FShowMovementsMarks) then
    begin
      FShowMovementsMarks:= Value;
      UpdateAllSeriesAndMarksVisibleStatus;
    end;
end;

procedure TfmVIMQuantity.SetShowQuantity(const Value: Boolean);
begin
  if (Value <> FShowQuantity) then
    begin
      FShowQuantity:= Value;
      UpdateAllSeriesAndMarksVisibleStatus;
    end;
end;

procedure TfmVIMQuantity.SetShowQuantityMarks(const Value: Boolean);
begin
  if (Value <> FShowQuantityMarks) then
    begin
      FShowQuantityMarks:= Value;
      UpdateAllSeriesAndMarksVisibleStatus;
    end;
end;

procedure TfmVIMQuantity.actShowQuantityUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (pcVIMQuantity.ActivePage = tsQuantity) or
    (pcVIMQuantity.ActivePage = tsPrice);
  ShowQuantity:= sbtnQuantity.Down;
end;

procedure TfmVIMQuantity.actShowMovementsUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (pcVIMQuantity.ActivePage = tsQuantity) or
    (pcVIMQuantity.ActivePage = tsPrice);
  ShowMovements:= sbtnMovements.Down;    
end;

procedure TfmVIMQuantity.actShowDeficitUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (pcVIMQuantity.ActivePage = tsQuantity) or
    (pcVIMQuantity.ActivePage = tsPrice);
  ShowDeficit:= sbtnDeficit.Down;    
end;

procedure TfmVIMQuantity.actShowQuantityMarksUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= actShowQuantity.Enabled and ShowQuantity;
  ShowQuantityMarks:= sbtnQuantityMarks.Down;
end;

procedure TfmVIMQuantity.actShowMovementsMarksUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= actShowMovements.Enabled and ShowMovements;
  ShowMovementsMarks:= sbtnMovementsMarks.Down;
end;

procedure TfmVIMQuantity.actShowBalancedPriceMarksUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= actShowBalancedPrice.Enabled and ShowBalancedPrice;
  ShowBalancedPriceMarks:= sbtnBalancedPriceMarks.Down;
end;

procedure TfmVIMQuantity.actShowBalancedPriceUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (pcVIMQuantity.ActivePage = tsPrice);
  ShowBalancedPrice:= sbtnBalancedPrice.Down;
end;

procedure TfmVIMQuantity.actShowDeficitMarksUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= actShowDeficit.Enabled and ShowDeficit;
  ShowDeficitMarks:= sbtnDeficitMarks.Down;
end;

procedure TfmVIMQuantity.actShowRegQuantityUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= tsQuantity.TabVisible;
  FIsShowRegQuantity:= sbtnShowQuantity.Down;
  UpdateGridColumnsVisibleStatus;
end;

procedure TfmVIMQuantity.cdsVIMDetailBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= PackageParams(cdsVIM.Params);
end;

procedure TfmVIMQuantity.ShowOuterForm(AFormType: TFormType; StartDate,
  EndDate: Variant; IsTowardsReserve: Boolean);
begin
  with cdsTempParams do
    begin
      Edit;
      ClearFields;

      FieldByName('TIME_UNIT_COUNT').AsFloat:= 1;
      FieldByName('TIME_UNIT_CODE').AsFloat:= pdsVIMTIME_UNIT_CODE.AsFloat;

      if VarIsNull(StartDate) then
        begin
          FieldByname('START_DATE').Clear;
          FieldByname('START_PERIOD_DATE').Clear;
          FieldByName('BEGIN_DATE').AsDateTime:=
            GetPeriodFirstDate(ContextDate(), GetPeriodValue(FieldByName('TIME_UNIT_CODE').AsInteger));
        end
      else
        begin
          FieldByName('START_DATE').AsDateTime:= StartDate;
          FieldByName('START_PERIOD_DATE').AsDateTime:= StartDate;
          FieldByName('BEGIN_DATE').AsDateTime:= StartDate;
        end;

      if VarIsNull(EndDate) then
        begin
          FieldByname('END_DATE').Clear;
          FieldByname('END_PERIOD_DATE').Clear;
          FieldByname('STORE_DEAL_DATE').Clear;
         end
      else
        begin
          FieldByName('END_DATE').AsDateTime:= EndDate;
          FieldByName('END_PERIOD_DATE').AsDateTime:= EndDate;
          FieldByName('STORE_DEAL_DATE').AsDateTime:= EndDate;
         end;

      FieldByName('CHOSEN_PRODUCTS').AsString:= pdsVIMCHOSEN_PRODUCTS.AsString;
      FieldByName('CHOSEN_DEPTS').AsString:= pdsVIMCHOSEN_DEPTS.AsString;

      FieldByName('DATE_UNIT_CODE').AsFloat:= pdsVIMTIME_UNIT_CODE.AsFloat;
      FieldByName('INCLUDE_PL_SECOND_LEVEL').AsFloat:=
        pdsVIM.FieldByName('INCLUDE_PLANNED_SECOND_LEVEL').AsFloat;

      if pdsVIM.FieldByName('INCLUDE_PLANNED_SECOND_LEVEL').AsBoolean then
        FieldByName('PLANNED_STORE_DEAL_TYPE_CODE').Clear
      else
        FieldByName('PLANNED_STORE_DEAL_TYPE_CODE').AsInteger:= psdtNormal;

      FieldByName('IS_ANNULED').AsFloat:= 0;
      FieldByName('IS_NOT_ANNULED').AsFloat:= 1;
      FieldByName('IS_CLOSED').AsFloat:= 0;
      FieldByName('IS_NOT_CLOSED').AsFloat:= 1;
      FieldByName('IS_STORNO').AsFloat:= 0;
      FieldByName('IS_NOT_STORNO').AsFloat:= 1;
      FieldByName('IS_WASTE_BOUND').AsFloat:= 1;
      FieldByName('IS_NOT_WASTE_BOUND').AsFloat:= 1;
      FieldByName('SHOW_INACTIVE').AsFloat:= 2;

      FieldByName('IS_GROUPED_BY_STORE').AsBoolean:= not (ShiftIsPressed or ControlIsPressed);
      FieldByName('IS_TOWARDS_RESERVE').AsBoolean:= IsTowardsReserve;

      case AFormType of
        ftQuantity:
          begin
            Post;
            TfmStoreQuantities.ShowForm(dmDocClient, cdsTempParams, EditMode, doNone, False, FProductClass);
          end;
        ftDeficit:
          begin
            Post;
            FIsMadeChange:= TfmUncoveredPSDSingle.ShowForm(dmDocClient, cdsTempParams, EditMode, doNone, False, FProductClass);
          end;
        ftPlanOut:
          begin
            FieldByName('IN_P').AsFloat:= 0;
            FieldByName('OUT_P').AsFloat:= 1;
            Post;
            FIsMadeChange:= TfmPlannedStoreDeals.ShowForm(dmDocClient, cdsTempParams, EditMode, doNone, False, FProductClass);
          end;
        ftPlanIn:
          begin
            FieldByName('IN_P').AsFloat:= 1;
            FieldByName('OUT_P').AsFloat:= 0;
            Post;
            TfmPlannedStoreDeals.ShowForm(dmDocClient, cdsTempParams, EditMode, doNone, False, FProductClass);
          end;
        ftOtchOut:
          begin
            FieldByName('IS_IN').AsFloat:= 0;
            FieldByName('IS_OUT').AsFloat:= 1;
            Post;
            TfmStoreDeals.ShowForm(dmDocClient, cdsTempParams, EditMode, doNone, False, FProductClass);
          end;
        ftOtchIn:
          begin
            FieldByName('IS_IN').AsFloat:= 1;
            FieldByName('IS_OUT').AsFloat:= 0;
            Post;
            TfmStoreDeals.ShowForm(dmDocClient, cdsTempParams, EditMode, doNone, False, FProductClass);
          end;
      end;
    end;
end;

procedure TfmVIMQuantity.grdMasterDblClick(Sender: TObject);
var
  StartDate, EndDate: Variant;
  IsPlan: Boolean;
begin
  inherited;
  IsPlan:= cdsRegister_INCLUDE_PLANS.AsBoolean;
  StartDate:= cdsRegisterTHE_DATE.AsDateTime;
  EndDate:= GetPeriodLastDate(StartDate, GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger));

  case grdMaster.Col - 1 of
    3, 4, 10, 11:
      ShowOuterForm(ftQuantity, StartDate, EndDate, False);

    5, 12:
      ShowOuterForm(ftQuantity, StartDate, EndDate, True);

    1, 8:
      if IsPlan then
        begin
          if cdsRegisterTHE_DATE.AsDateTime =
             GetPeriodFirstDate(ContextDate(), GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger)) then
            StartDate:= Null;
          ShowOuterForm(ftPlanIn, StartDate, EndDate, False);
        end
      else
        ShowOuterForm(ftOtchIn, StartDate, EndDate, False);

    2, 9:
      if IsPlan then
        begin
          if cdsRegisterTHE_DATE.AsDateTime =
             GetPeriodFirstDate(ContextDate(), GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger)) then
            StartDate:= Null;
          ShowOuterForm(ftPlanOut, StartDate, EndDate, False);
        end
      else
        ShowOuterForm(ftOtchOut, StartDate, EndDate, False);

    6, 13:
      ShowOuterForm(ftDeficit, StartDate, EndDate, False);

    7, 14:
      ShowOuterForm(ftDeficit, StartDate, EndDate, True);
  end;
end;

procedure TfmVIMQuantity.serOtchQuantityDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftQuantity, ValueIndex, False);
end;

procedure TfmVIMQuantity.serOtchPriceDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftQuantity, ValueIndex, False);
end;

procedure TfmVIMQuantity.serPlanPriceDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftQuantity, ValueIndex, False);
end;

procedure TfmVIMQuantity.serPlanQuantityDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftQuantity, ValueIndex, False);
end;

procedure TfmVIMQuantity.serDeficitPriceDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftDeficit, ValueIndex, False);
end;

procedure TfmVIMQuantity.serDeficitQuantityDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftDeficit, ValueIndex, False);
end;

procedure TfmVIMQuantity.serOtchOutPriceDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftOtchOut, ValueIndex, False);
end;

procedure TfmVIMQuantity.serOtchInQuantityDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftOtchIn, ValueIndex, False);
end;

procedure TfmVIMQuantity.serOtchInPriceDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftOtchIn, ValueIndex, False);
end;

procedure TfmVIMQuantity.serOtchOutQuantityDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftOtchOut, ValueIndex, False);
end;

procedure TfmVIMQuantity.serPlanInPriceDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftPlanIn, ValueIndex, False);
end;

procedure TfmVIMQuantity.serPlanInQuantityDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftPlanIn, ValueIndex, False);
end;

procedure TfmVIMQuantity.serPlanOutPriceDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftPlanOut, ValueIndex, False);
end;

procedure TfmVIMQuantity.serPlanOutQuantityDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftPlanOut, ValueIndex, False);
end;

class function TfmVIMQuantity.ShowForm(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  AFilterFormEnabled: Boolean;
  AOpenedFrom: Integer;
  AProductClass: TProductClass;
  ACanRefilter: Boolean): Boolean;
var
  f: TfmVIMQuantity;
begin
  dmMain.LoginContext.CheckUserActivity(
    IfThen((AProductClass = pcFinancial), uaFinVIMQuantity, uaVIMQuantity));

  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AFilterFormEnabled, AOpenedFrom, AProductClass, ACanRefilter);
    f.InternalShowForm;
    Result:= f.IsDataModified or f.FIsMadeChange;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmVIMQuantity.SetDataParams(
  AdmDocClient: TdmDocClient;
  ADataSet: TDataSet;
  AEditMode: TEditMode;
  AFilterFormEnabled: Boolean;
  AOpenedFrom: Integer;
  AProductClass: TProductClass;
  ACanRefilter: Boolean);
const
  ModifyFilterUserActivity: array[TProductClass] of Integer =
    (0, uaVIMQuantityModifyFilter, uaFinVIMQuantityModifyFilter, 0);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);

  FFilterFormEnabled:= AFilterFormEnabled;
  FOpenedFrom:= AOpenedFrom;
  FProductClass:= AProductClass;
  FCanRefilter:=
    ACanRefilter and
    (LoginContext.HasUserActivity(ModifyFilterUserActivity[AProductClass]) or
     LoginContext.HasUserActivity(uaSaveFilterVariants));

  if Assigned(ADataSet) and
     (AEditMode in [emEdit, emReadOnly]) then
    SetParams(cdsVIM.Params, ADataSet);
end;

procedure TfmVIMQuantity.grdMasterDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmVIMQuantity.serNegativePriceDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftQuantity, ValueIndex, False);
end;

procedure TfmVIMQuantity.serNegativeQuantityDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftQuantity, ValueIndex, False);
end;

procedure TfmVIMQuantity.LineSeriesAfterDrawValues(Sender: TObject);
var
  ZeroY, ZeroX: Integer;
  X, Y: Integer;
  Axis: TRect;
  NextX, NextY: Integer;
  i: Integer;
  TheChart: TDBChart;
  NegativeColor: TColor;
begin
  inherited;

  if (Pos('QUANTITY', UpperCase((Sender as TLineSeries).Name)) <> 0) then
    TheChart:= ChartQuantity
  else
  if (Pos('PRICE', UpperCase((Sender as TLineSeries).Name)) <> 0) then
    TheChart:= ChartPrice
  else
    raise Exception.Create('internal error: LineSeriesAfterDrawValues> cannot determine chart to render');

  with TheChart do
    begin
      ZeroY:= LeftAxis.CalcPosValue(0);
      Axis.Left:= BottomAxis.CalcPosValue(BottomAxis.Minimum);
      Axis.Right:= BottomAxis.CalcPosValue(BottomAxis.Maximum);
      Axis.Bottom:= LeftAxis.CalcPosValue(LeftAxis.Minimum);
      Axis.Top:= LeftAxis.CalcPosValue(LeftAxis.Maximum);
    end;

  if ( ((Sender as TLineSeries) = serOtchQuantityReserve) or
       ((Sender as TLineSeries) = serOtchPriceReserve)) then
    NegativeColor:= serOtchNegativeQuantityReserve.SeriesColor
  else
    NegativeColor:= serNegativeQuantity.SeriesColor;

  for i:= 0 to (Sender as TLineSeries).Count - 2 do
    begin
      if ( ((Sender as TLineSeries) = serPlanQuantity) or
           ((Sender as TLineSeries) = serPlanQuantityReserve) or
           ((Sender as TLineSeries) = serPlanPrice) or
           ((Sender as TLineSeries) = serPlanPriceReserve)) and
           ((Sender as TLineSeries).XValue[i] < FFirstTodayOrderNo) then
        Continue;

      if ( ((Sender as TLineSeries) = serOtchQuantity) or
           ((Sender as TLineSeries) = serOtchQuantityReserve) or
           ((Sender as TLineSeries) = serOtchPrice) or
           ((Sender as TLineSeries) = serOtchPriceReserve)) and
         ( ((Sender as TLineSeries).XValue[i] >= FFirstTodayOrderNo) and
           (FFirstTodayOrderNo <> -1) ) then
        Continue;

      X:= (Sender as TLineSeries).CalcXPos(i);
      Y:= (Sender as TLineSeries).CalcYPos(i);
      NextX:= (Sender as TLineSeries).CalcXPos(i + 1);
      NextY:= (Sender as TLineSeries).CalcYPos(i + 1);

      //    -\-   takova presichane na Ox
      if (Y <= ZeroY) and (NextY > ZeroY) then
        begin
          ZeroX:= RealRound(NextX - (NextX - X) * (NextY - ZeroY) / (NextY - Y));
          MyDrawLine(TheChart, Axis, ZeroX, ZeroY, NextX, NextY, NegativeColor, 4);
          DrawMarkPoint(TheChart, NegativeColor, clBlack, NextX, NextY);
        end
      else
      //    -/-   takova presichane na Ox
      if (Y >= ZeroY) and (NextY < ZeroY) then
        begin
          ZeroX:= RealRound(X + (NextX - X) * (Y - ZeroY) / (Y - NextY));
          MyDrawLine(TheChart, Axis, X, Y, ZeroX, ZeroY, NegativeColor, 4);
          DrawMarkPoint(TheChart, NegativeColor, clBlack, X, Y);
        end
      else
      //    i 2te tochki sa pod nulata
      if (Y > ZeroY) and (NextY > ZeroY) then
        begin
          MyDrawLine(TheChart, Axis, X, Y, NextX, NextY, NegativeColor, 4);
          DrawMarkPoint(TheChart, NegativeColor, clBlack, X, Y);
          DrawMarkPoint(TheChart, NegativeColor, clBlack, NextX, NextY);
        end;
    end;
end;

procedure TfmVIMQuantity.MyDrawLine(AChart: TDBChart; VisibleRect: TRect;
  FromX, FromY, ToX, ToY: Integer; AColor: TColor; AWidth: Integer);
begin
  with AChart.Canvas do
    begin
      ClipRectangle(VisibleRect);
      try
        with Pen do
          begin
            Color:= AColor;
            Width:= AWidth;
          end;
        MoveTo(FromX, FromY);
        LineTo(ToX, ToY);

      finally
        UnClipRectangle;
      end;
    end;
end;

procedure TfmVIMQuantity.DrawMarkPoint(AChart: TDBChart; AFill, ABorder: TColor; X, Y: Integer);
var
  A,B,C,D: TPoint;
begin
  with AChart.Canvas do
    begin
      with Pen do
        begin
          Color:= ABorder;
          Width:= 1;
        end;
      Brush.Color:= AFill;
      A.x:= X - 4;
      A.y:= Y;
      B.x:= X;
      B.y:= Y - 4;
      C.x:= X + 4;
      C.y:= Y;
      D.x:= X;
      D.y:= Y + 4;
      Polygon([A,B,C,D]);
    end;
end;

procedure TfmVIMQuantity.ChartQuantityBeforeDrawSeries(Sender: TObject);
var
  NowDateRect: TRect;
  AxisRect: TRect;
begin
  inherited;
  if FFirstTodayOrderNo > 0 then
    with ChartQuantity do
      begin
        with BottomAxis do
          begin
            NowDateRect.Left:= CalcPosValue(FFirstTodayOrderNo) + 1;
            NowDateRect.Right:= CalcPosValue(FFirstTodayOrderNo + 1);
            AxisRect.Left:= CalcPosValue(Minimum);
            AxisRect.Right:= CalcPosValue(Maximum);
          end;
        with LeftAxis do
          begin
            NowDateRect.Top:= CalcPosValue(Maximum) + 1;
            NowDateRect.Bottom:= CalcPosValue(Minimum) - 1;
            AxisRect.Bottom:= CalcPosValue(Minimum);
            AxisRect.Top:= CalcPosValue(Maximum);
          end;

        with Canvas do
          begin
            Brush.Color:= ccChartTodayAreaBackground;
            try
              ClipRectangle(ChartRect);
              FillRect(NowDateRect);

            finally
              UnClipRectangle;
            end;
          end;
      end;
end;

procedure TfmVIMQuantity.serZeroQuantityLineAfterDrawValues(
  Sender: TObject);
var
  NowDateRect: TRect;
  AxisRect: TRect;
begin
  inherited;
  if FFirstTodayOrderNo > 0 then
    with ChartQuantity do
      begin
        with BottomAxis do
          begin
            NowDateRect.Left:= CalcPosValue(FFirstTodayOrderNo) + 1;
            NowDateRect.Right:= CalcPosValue(FFirstTodayOrderNo + 1);
            AxisRect.Left:= CalcPosValue(Minimum);
            AxisRect.Right:= CalcPosValue(Maximum);
          end;
        with LeftAxis do
          begin
            NowDateRect.Top:= CalcPosValue(0) + 1;
            NowDateRect.Bottom:= CalcPosValue(Minimum) - 1;
            AxisRect.Bottom:= CalcPosValue(Minimum);
            AxisRect.Top:= CalcPosValue(Maximum) + 1;
          end;

        with Canvas do
          begin
            Brush.Color:= ccChartTodayAreaBackground;
            try
              ClipRectangle(ChartRect);
              FillRect(NowDateRect);

            finally
              UnClipRectangle;
            end;
          end;
      end;
end;

procedure TfmVIMQuantity.ChartPriceBeforeDrawSeries(Sender: TObject);
var
  NowDateRect: TRect;
  AxisRect: TRect;
begin
  inherited;
  if FFirstTodayOrderNo > 0 then
    with ChartPrice do
      begin
        with BottomAxis do
          begin
            NowDateRect.Left:= CalcPosValue(FFirstTodayOrderNo) + 1;
            NowDateRect.Right:= CalcPosValue(FFirstTodayOrderNo + 1);
            AxisRect.Left:= CalcPosValue(Minimum);
            AxisRect.Right:= CalcPosValue(Maximum);
          end;
        with LeftAxis do
          begin
            NowDateRect.Top:= CalcPosValue(Maximum) + 1;
            NowDateRect.Bottom:= CalcPosValue(Minimum) - 1;
            AxisRect.Bottom:= CalcPosValue(Minimum);
            AxisRect.Top:= CalcPosValue(Maximum);
          end;

        with Canvas do
          begin
            Brush.Color:= ccChartTodayAreaBackground;
            try
              ClipRectangle(ChartRect);
              FillRect(NowDateRect);

            finally
              UnClipRectangle;
            end;
          end;
      end;
end;

procedure TfmVIMQuantity.serZeroPriceLineAfterDrawValues(Sender: TObject);
var
  NowDateRect: TRect;
  AxisRect: TRect;
begin
  inherited;
  if FFirstTodayOrderNo > 0 then
    with ChartPrice do
      begin
        with BottomAxis do
          begin
            NowDateRect.Left:= CalcPosValue(FFirstTodayOrderNo) + 1;
            NowDateRect.Right:= CalcPosValue(FFirstTodayOrderNo + 1);
            AxisRect.Left:= CalcPosValue(Minimum);
            AxisRect.Right:= CalcPosValue(Maximum);
          end;
        with LeftAxis do
          begin
            NowDateRect.Top:= CalcPosValue(0) + 1;
            NowDateRect.Bottom:= CalcPosValue(Minimum) - 1;
            AxisRect.Bottom:= CalcPosValue(Minimum);
            AxisRect.Top:= CalcPosValue(Maximum) + 1;
          end;

        with Canvas do
          begin
            Brush.Color:= ccChartTodayAreaBackground;
            try
              ClipRectangle(ChartRect);
              FillRect(NowDateRect);

            finally
              UnClipRectangle;
            end;
          end;
      end;
end;

procedure TfmVIMQuantity.actAccountMeasureUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= actWorkMeasure.Enabled;
end;

procedure TfmVIMQuantity.actShowRegPriceUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= IsLevelOneInvestedValueVisible;
end;

procedure TfmVIMQuantity.RefreshAxisLabelsData;
begin
  SetLength(FAxisLabelsData, cdsVIM.RecordCount);
  cdsVIM.PreserveBookmark/
    cdsVIM.ForEach/
      procedure begin
        FAxisLabelsData[cdsVIM.RecNo - 1]:=
          TAxisLabelData.Create(
            cdsVIM_LABEL.AsString,
            cdsVIMWORKDAYS.AsInteger,
            cdsVIMTHE_DATE.AsDateTime);
      end;
end;

procedure TfmVIMQuantity.actTogglePeriodLabelsExtraInfoExecute(
  Sender: TObject);
var
  b: TBookmark;
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;

  b:= cdsVim.Bookmark;
  cdsVim.First;
  try
    cdsVim.Last;
  finally
    cdsVim.Bookmark:= b;
  end;   { try }

  RefreshAxisLabelsData;
  ChartQuantity.RefreshData;
  ChartPrice.RefreshData;
end;

procedure TfmVIMQuantity.actTogglePeriodLabelsExtraInfoUpdate(Sender: TObject);
begin
  inherited;
  btnTogglePeriodLabelsExtraInfo.Down:= (Sender as TAction).Checked;
  btnTogglePeriodLabelsExtraInfo2.Down:= (Sender as TAction).Checked;
end;

procedure TfmVIMQuantity.ChartPriceAfterDraw(Sender: TObject);
begin
  inherited;

  with ChartPrice do
    lblChartPriceStartDate.Top:= LeftAxis.CalcYPosValue(LeftAxis.Minimum) + 5;

  lblChartPriceEndDate.Top:= lblChartPriceStartDate.Top + lblChartPriceStartDate.Height + 3;
end;

procedure TfmVIMQuantity.ChartQuantityAfterDraw(Sender: TObject);
begin
  inherited;

  with ChartQuantity do
    lblChartQuantityStartDate.Top:= LeftAxis.CalcYPosValue(LeftAxis.Minimum) + 5;

  lblChartQuantityEndDate.Top:= lblChartQuantityStartDate.Top + lblChartQuantityStartDate.Height + 3;
end;

procedure TfmVIMQuantity.ChartsGetAxisLabel(Sender: TChartAxis;
  Series: TChartSeries; ValueIndex: Integer; var LabelText: String);
begin
  inherited;
  if (Sender = ChartQuantity.BottomAxis) or (Sender = ChartPrice.BottomAxis) then
    if InRange(ValueIndex, Low(FAxisLabelsData), High(FAxisLabelsData)) then
      begin
        LabelText:= FAxisLabelsData[ValueIndex].LabelText;

        if (FAxisLabelsData[ValueIndex].Workdays = 0) then
          LabelText:= MarkDateStringAsDayOff(LabelText);
      end;
end;

procedure TfmVIMQuantity.actDealsInExecute(Sender: TObject);
var
  StartDate, EndDate: Variant;
  IsPlan: Boolean;
begin
  inherited;
  IsPlan:= cdsRegister_INCLUDE_PLANS.AsBoolean;
  StartDate:= cdsRegisterTHE_DATE.AsDateTime;
  EndDate:= GetPeriodLastDate(StartDate, GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger));
  if IsPlan then
    begin
      if cdsRegisterTHE_DATE.AsDateTime =
         GetPeriodFirstDate(ContextDate(), GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger)) then
        StartDate:= Null;
      ShowOuterForm(ftPlanIn, StartDate, EndDate, False);
    end
  else
    ShowOuterForm(ftOtchIn, StartDate, EndDate, False);
end;

procedure TfmVIMQuantity.actDealsOutExecute(Sender: TObject);
var
  StartDate, EndDate: Variant;
  IsPlan: Boolean;
begin
  inherited;
  IsPlan:= cdsRegister_INCLUDE_PLANS.AsBoolean;
  StartDate:= cdsRegisterTHE_DATE.AsDateTime;
  EndDate:= GetPeriodLastDate(StartDate, GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger));
  if IsPlan then
    begin
      if cdsRegisterTHE_DATE.AsDateTime =
         GetPeriodFirstDate(ContextDate(), GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger)) then
        StartDate:= Null;
      ShowOuterForm(ftPlanOut, StartDate, EndDate, False);
    end
  else
    ShowOuterForm(ftOtchOut, StartDate, EndDate, False);
end;

procedure TfmVIMQuantity.actQuantityExecute(Sender: TObject);
var
  StartDate, EndDate: Variant;
begin
  inherited;
  StartDate:= cdsRegisterTHE_DATE.AsDateTime;
  EndDate:= GetPeriodLastDate(StartDate, GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger));
  ShowOuterForm(ftQuantity, StartDate, EndDate, cdsVIM.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean);
end;

procedure TfmVIMQuantity.actDeficitExecute(Sender: TObject);
var
  StartDate, EndDate: Variant;
begin
  inherited;
  StartDate:= cdsRegisterTHE_DATE.AsDateTime;
  EndDate:= GetPeriodLastDate(StartDate, GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger));
  ShowOuterForm(ftDeficit, StartDate, EndDate, False);
end;

procedure TfmVIMQuantity.actExcelExportUpdate(Sender: TObject);
begin
  inherited;
  inherited;
  (Sender as TAction).Enabled:=
    cdsRegister.Active and
    (cdsRegister.RecordCount > 0);
end;

procedure TfmVIMQuantity.actExcelExportExecute(Sender: TObject);
begin
  inherited;
  GridExcelExport(grdMaster);
end;

procedure TfmVIMQuantity.ShowOuterFormByGraphIndex(AFormType: TFormType; AIndex: Integer; IsTowardsReserve: Boolean);
var
  StartDate, EndDate: Variant;
begin
  StartDate:= pdsVIMBEGIN_DATE.AsDateTime;
  StartDate:= IncDate(StartDate, GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger), AIndex);

  // is_today_second_record?
  if (StartDate > ContextDate) and (pdsVIMBEGIN_DATE.AsDateTime < ContextDate) then
    StartDate:= IncDate(StartDate, GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger), -1);

  EndDate:= GetPeriodLastDate(StartDate, GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger));

  if (StartDate = GetPeriodFirstDate(ContextDate(), GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger))) and
     ((AFormType = ftPlanIn) or (AFormType = ftPlanOut)) then
    StartDate:= Null;

  ShowOuterForm(AFormType, StartDate, EndDate, IsTowardsReserve);
end;

function TfmVIMQuantity.SupportsFilterForm: Boolean;
begin
  Result:= True;
end;

class function TfmVIMQuantity.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmVIMQuantity.actShowTowardsReserveExecute(Sender: TObject);
begin
  inherited;

  cdsVIM.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean:= not cdsVIM.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;

  if not cdsVIM.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean then
    FReserveMode:= rmShowTowardsZero
  else
    FReserveMode:= rmShowBoth;

  UpdateAllSeriesAndMarksVisibleStatus;
  UpdateGridColumnsVisibleStatus;
end;

procedure TfmVIMQuantity.UpdateAllSeriesAndMarksVisibleStatus;
begin
  // redyt e sravnitelno vajen
  serPassiveQuantity.Active:= FShowPassiveQuantity and (FReserveMode in [rmShowTowardsZero, rmShowBoth]);
  serPassivePrice.Active:= FShowPassiveQuantity and (FReserveMode in [rmShowTowardsZero, rmShowBoth]);

  serZeroArea.Active:= True;
  serZeroPriceArea.Active:= True;
  serZeroQuantityLine.Active:= True;
  serZeroPriceLine.Active:= True;

  serOtchQuantity.Active:= FShowQuantity and (FReserveMode in [rmShowTowardsZero, rmShowBoth]);
  serOtchPrice.Active:= FShowQuantity and (FReserveMode in [rmShowTowardsZero, rmShowBoth]);
  serPlanQuantity.Active:= FShowQuantity and (FReserveMode in [rmShowTowardsZero, rmShowBoth]);
  serPlanPrice.Active:= FShowQuantity and (FReserveMode in [rmShowTowardsZero, rmShowBoth]);
  serBalancedPrice.Active:= FShowBalancedPrice and (FReserveMode in [rmShowTowardsZero, rmShowBoth]);
  serNegativeQuantity.Active:= (not FIsSingleProduct) and FShowQuantity and (FReserveMode in [rmShowTowardsZero, rmShowBoth]);
  serNegativePrice.Active:= (not FIsSingleProduct) and FShowQuantity and (FReserveMode in [rmShowTowardsZero, rmShowBoth]);
  serDeficitQuantity.Active:= FShowDeficit and (FReserveMode in [rmShowTowardsZero, rmShowBoth]);
  serDeficitPrice.Active:= FShowDeficit and (FReserveMode in [rmShowTowardsZero, rmShowBoth]);

  serOtchInQuantity.Active:= FShowMovements;
  serOtchInPrice.Active:= FShowMovements;
  serOtchOutQuantity.Active:= FShowMovements;
  serOtchOutPrice.Active:= FShowMovements;
  serPlanInQuantity.Active:= FShowMovements;
  serPlanInPrice.Active:= FShowMovements;
  serPlanOutQuantity.Active:= FShowMovements;
  serPlanOutPrice.Active:= FShowMovements;

  serOtchQuantityReserve.Active:= FShowQuantity and (FReserveMode in [rmShowTowardsReserve, rmShowBoth]);
  serOtchPriceReserve.Active:= FShowQuantity and (FReserveMode in [rmShowTowardsReserve, rmShowBoth]);

  serOtchNegativeQuantityReserve.Active:= (not FIsSingleProduct) and FShowQuantity and (FReserveMode in [rmShowTowardsReserve, rmShowBoth]);
  serOtchNegativePriceReserve.Active:= (not FIsSingleProduct) and FShowQuantity and (FReserveMode in [rmShowTowardsReserve, rmShowBoth]);
  serPlanQuantityReserve.Active:= FShowQuantity and (FReserveMode in [rmShowTowardsReserve, rmShowBoth]);
  serPlanPriceReserve.Active:= FShowQuantity and (FReserveMode in [rmShowTowardsReserve, rmShowBoth]);
  serBalancedPriceReserve.Active:= FShowBalancedPrice and (FReserveMode in [rmShowTowardsReserve, rmShowBoth]);
  serNegativeQuantityReserve.Active:= (not FIsSingleProduct) and FShowQuantity and (FReserveMode in [rmShowTowardsReserve, rmShowBoth]);
  serNegativePriceReserve.Active:= (not FIsSingleProduct) and FShowQuantity and (FReserveMode in [rmShowTowardsReserve, rmShowBoth]);
  serDeficitQuantityReserve.Active:= FShowDeficit and (FReserveMode in [rmShowTowardsReserve, rmShowBoth]);
  serDeficitPriceReserve.Active:= FShowDeficit and (FReserveMode in [rmShowTowardsReserve, rmShowBoth]);

  serMinQuantity.Active:= FShowMinQuantity and (FReserveMode in [rmShowTowardsZero, rmShowBoth]);
  serMinPrice.Active:= FShowMinQuantity and (FReserveMode in [rmShowTowardsZero, rmShowBoth]);

  serOtchQuantity.Pointer.Visible:= FShowQuantityMarks;
  serOtchQuantity.Marks.Visible:= FShowQuantityMarks;
  serPlanQuantity.Pointer.Visible:= FShowQuantityMarks;
  serPlanQuantity.Marks.Visible:= FShowQuantityMarks;
  serOtchPrice.Pointer.Visible:= FShowQuantityMarks;
  serOtchPrice.Marks.Visible:= FShowQuantityMarks;
  serPlanPrice.Pointer.Visible:= FShowQuantityMarks;
  serPlanPrice.Marks.Visible:= FShowQuantityMarks;
  serBalancedPrice.Pointer.Visible:= FShowBalancedPriceMarks;
  serBalancedPrice.Marks.Visible:= FShowBalancedPriceMarks;
  serNegativeQuantity.Pointer.Visible:= FShowQuantityMarks;
  serNegativeQuantity.Marks.Visible:= FShowQuantityMarks;
  serNegativePrice.Pointer.Visible:= FShowQuantityMarks;
  serNegativePrice.Marks.Visible:= FShowQuantityMarks;
  serPassiveQuantity.Pointer.Visible:= FShowPassiveQuantityMarks;
  serPassiveQuantity.Marks.Visible:= FShowPassiveQuantityMarks;
  serPassivePrice.Pointer.Visible:= FShowPassiveQuantityMarks;
  serPassivePrice.Marks.Visible:= FShowPassiveQuantityMarks;
  serDeficitQuantity.Marks.Visible:= FShowDeficitMarks;
  serDeficitPrice.Marks.Visible:= FShowDeficitMarks;

  serOtchInQuantity.Marks.Visible:= FShowMovementsMarks;
  serOtchInPrice.Marks.Visible:= FShowMovementsMarks;
  serOtchOutQuantity.Marks.Visible:= FShowMovementsMarks;
  serOtchOutPrice.Marks.Visible:= FShowMovementsMarks;
  serPlanInQuantity.Marks.Visible:= FShowMovementsMarks;
  serPlanInPrice.Marks.Visible:= FShowMovementsMarks;
  serPlanOutQuantity.Marks.Visible:= FShowMovementsMarks;
  serPlanOutPrice.Marks.Visible:= FShowMovementsMarks;

  serOtchQuantityReserve.Pointer.Visible:= FShowQuantityMarks;
  serOtchQuantityReserve.Marks.Visible:= FShowQuantityMarks;
  serOtchPriceReserve.Pointer.Visible:= FShowQuantityMarks;
  serOtchPriceReserve.Marks.Visible:= FShowQuantityMarks;
  serPlanQuantityReserve.Pointer.Visible:= FShowQuantityMarks;
  serPlanQuantityReserve.Marks.Visible:= FShowQuantityMarks;
  serPlanPriceReserve.Pointer.Visible:= FShowQuantityMarks;
  serPlanPriceReserve.Marks.Visible:= FShowQuantityMarks;
  serBalancedPriceReserve.Pointer.Visible:= FShowBalancedPriceMarks;
  serBalancedPriceReserve.Marks.Visible:= FShowBalancedPriceMarks;
  serNegativeQuantityReserve.Pointer.Visible:= FShowQuantityMarks;
  serNegativeQuantityReserve.Marks.Visible:= FShowQuantityMarks;
  serNegativePriceReserve.Pointer.Visible:= FShowQuantityMarks;
  serNegativePriceReserve.Marks.Visible:= FShowQuantityMarks;
  serDeficitQuantityReserve.Marks.Visible:= FShowDeficitMarks;
  serDeficitPriceReserve.Marks.Visible:= FShowDeficitMarks;

  serMinQuantity.Pointer.Visible:= FShowMinQuantityMarks;
  serMinQuantity.Marks.Visible:= FShowMinQuantityMarks;
  serMinPrice.Pointer.Visible:= FShowMinQuantityMarks;
  serMinPrice.Marks.Visible:= FShowMinQuantityMarks;
end;

procedure TfmVIMQuantity.UpdateGridColumnsVisibleStatus;
begin
  if (FOldIsShowRegQuantity <> FIsShowRegQuantity) then
    ForceUpdateGridColumnsVisibleStatus;

  if FIsShowRegQuantity then
    begin
      if FIsWorkMeasure then
       lblMeasure.Caption:= Format(SMeasureOrPrice, [FProductMeasureAbbrev])
      else
       lblMeasure.Caption:= Format(SMeasureOrPrice, [FProductAccountMeasureAbbrev]);
    end
  else
    lblMeasure.Caption:= Format(SMeasureOrPrice, [LoginContext.SecondaryCurrencyAbbrev]);
end;

procedure TfmVIMQuantity.actPrintQuantityChartExecute(Sender: TObject);
begin
  inherited;
  SetChartPrintTitleAndPrint(
    ChartQuantity,
    SetQuantityPrintChartTitle);
end;

procedure TfmVIMQuantity.actPrintPriceChartExecute(Sender: TObject);
begin
  inherited;
  SetChartPrintTitleAndPrint(
    ChartPrice,
    SetPricePrintChartTitle);
end;

procedure TfmVIMQuantity.actPrintExecute(Sender: TObject);
begin
  // do not call inherited;
  PrintRegister;
end;

procedure TfmVIMQuantity.serNegativePriceReserveDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftQuantity, ValueIndex, True);
end;

procedure TfmVIMQuantity.serDeficitPriceReserveDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftDeficit, ValueIndex, False);
end;

procedure TfmVIMQuantity.serDeficitQuantityReserveDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftDeficit, ValueIndex, False);
end;

procedure TfmVIMQuantity.serNegativeQuantityReserveDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftQuantity, ValueIndex, True);
end;

procedure TfmVIMQuantity.serOtchNegativePriceReserveDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftQuantity, ValueIndex, True);
end;

procedure TfmVIMQuantity.serOtchNegativeQuantityReserveDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftQuantity, ValueIndex, True);
end;

procedure TfmVIMQuantity.serOtchPriceReserveDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftQuantity, ValueIndex, True);
end;

procedure TfmVIMQuantity.serOtchQuantityReserveDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftQuantity, ValueIndex, True);
end;

procedure TfmVIMQuantity.serPlanPriceReserveDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftQuantity, ValueIndex, True);
end;

procedure TfmVIMQuantity.serPlanQuantityReserveDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowOuterFormByGraphIndex(ftQuantity, ValueIndex, True);
end;

procedure TfmVIMQuantity.actRefreshExecute(Sender: TObject);
begin
  inherited;
  RefreshDataSet(cdsVim);
end;

procedure TfmVIMQuantity.actRefreshUpdate(Sender: TObject);
begin
  inherited;
  actRefresh.Enabled:= cdsVim.Active;
end;

procedure TfmVIMQuantity.actFilterUpdate(Sender: TObject);
var
  s: string;
begin
  inherited;

  (Sender as TAction).Enabled:= FFilterFormEnabled or FCanRefilter;

  s:= SFilter;
  if cdsVIM.Active then
    s:= s + Format(SRows, [Int(cdsVIM.RecordCount), FOpenTimeInSeconds]);

  (Sender as TAction).Hint:= s;
end;

procedure TfmVIMQuantity.SetShowMinQuantity(const Value: Boolean);
begin
  if (Value <> FShowMinQuantity) then
    begin
      FShowMinQuantity:= Value;
      UpdateAllSeriesAndMarksVisibleStatus;
    end;
end;

procedure TfmVIMQuantity.SetShowMinQuantityMarks(const Value: Boolean);
begin
  if (Value <> FShowMinQuantityMarks) then
    begin
      FShowMinQuantityMarks:= Value;
      UpdateAllSeriesAndMarksVisibleStatus;
    end;
end;

procedure TfmVIMQuantity.actShowMinQuantityUpdate(Sender: TObject);
begin
  inherited;
  {
  (Sender as TAction).Enabled:=
    ( (pcVIMQuantity.ActivePage = tsQuantity) or
      (pcVIMQuantity.ActivePage = tsPrice) ) and
    (FReserveMode in [rmShowTowardsZero, rmShowBoth]);
  ShowMinQuantity:= btnShowMinQuantity.Down;
  }
  ShowMinQuantity:= False;
end;

procedure TfmVIMQuantity.actShowMinQuantityMarksUpdate(Sender: TObject);
begin
  inherited;
  {
  (Sender as TAction).Enabled:= actShowMinQuantity.Enabled and ShowMinQuantity;
  ShowMinQuantityMarks:= btnShowMinQuantityMarks.Down;
  }
  ShowMinQuantityMarks:= False;
end;

procedure TfmVIMQuantity.cdsRegisterA_PASSIVE_QUANTITY_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmVIMQuantity.cdsRegisterPASSIVE_PRICE_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmVIMQuantity.cdsRegisterQuantityFieldsGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmVIMQuantity.cdsRegisterPriceFieldsGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (Sender.AsFloat = 0) then
    Text:= ''
  else
    Text:= FormatFloat((Sender as TAbmesFloatField).DisplayFormat, Sender.AsFloat);
end;

procedure TfmVIMQuantity.pdsVIMCalcFields(DataSet: TDataSet);
var
  PeriodName: string;
  Period: TPeriod;
begin
  inherited;

  if pdsVIMTIME_UNIT_CODE.IsNull or pdsVIMBEGIN_DATE.IsNull or pdsVIMTIME_UNIT_COUNT.IsNull then
    begin
      pdsVIM_TIME_UNITS.Clear;
      pdsVIM_END_DATE.Clear;
      pdsVIM_TIME_UNIT_NAME.Clear;
    end
  else
    begin
      Period:= GetPeriodValue(pdsVIMTIME_UNIT_CODE.AsInteger);
      PeriodName:= GetPeriodTypeName(Period, True);
      pdsVIM_TIME_UNITS.AsString:= IntToStr(pdsVIMTIME_UNIT_COUNT.AsInteger) + ' * ' + PeriodName;
      pdsVIM_END_DATE.AsDateTime:= IncDate(pdsVIMBEGIN_DATE.AsDateTime, Period, pdsVIMTIME_UNIT_COUNT.AsInteger);
      pdsVIM_TIME_UNIT_NAME.AsString:= GetPeriodTypeName(Period);
    end;

  pdsVIM_PRODUCT_CLASS_CODE.AsInteger:= ProductClassToInt(FProductClass);
end;

procedure TfmVIMQuantity.pdsVIMAfterOpen(DataSet: TDataSet);
var
  Period: TPeriod;
  DeptCode: Integer;
begin
  inherited;
  Period:= GetPeriodValue(LoginContext.DefaultDateUnitCode);
  CheckEditMode(pdsVIM);
  pdsVIMBEGIN_DATE.AsDateTime:= IncDate(GetPeriodFirstDate(ContextDate, Period), Period, RealRound((-pdsVIMTIME_UNIT_COUNT.AsInteger+1) / 2));
  pdsVIMTIME_UNIT_CODE.AsInteger:= LoginContext.DefaultDateUnitCode;
  pdsVIMIS_AUTO_ROUNDER.AsBoolean:= True;

  ChosenProductsChange;
  ChosenDeptsChange;

  if pdsVIMCHOSEN_DEPTS.IsNull and not pdsVIM_PRODUCT_CODE.IsNull then
    begin
      DeptCode:= dmMain.SvrProductsTree.GetProductDeptOptionsTopDeptCode(pdsVIM_PRODUCT_CODE.AsInteger);

      if (DeptCode > 0) then
        pdsVIMCHOSEN_DEPTS.AsString:= ChosenNodeCodeToXML(DeptCode);
    end;

  pdsVIM.Post;
end;

procedure TfmVIMQuantity.actShowTowardsReserveUpdate(Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    begin
      Enabled:=
        (pcVIMQuantity.ActivePage = tsQuantity) or
        (pcVIMQuantity.ActivePage = tsPrice);
      if Enabled then
        Checked:= cdsVIM.Params.ParamByName('IS_TOWARDS_RESERVE').AsBoolean;
    end;
end;

procedure TfmVIMQuantity.pdsVIMCHOSEN_PRODUCTSChange(Sender: TField);
begin
  inherited;
  ChosenProductsChange;
end;

procedure TfmVIMQuantity.ChosenProductsChange;
begin
  pdsVIM_PRODUCT_CODE.Clear;
  pdsVIM_PRODUCT_NO.Clear;
  pdsVIM_PRODUCT_NAME.Clear;

  if HasChosenNodesOrParams(pdsVIMCHOSEN_PRODUCTS.AsString) then
    if IsSingleChosenNodeWithoutParams(pdsVIMCHOSEN_PRODUCTS.AsString) then
      begin
        pdsVIM_PRODUCT_CODE.AsInteger:= ChosenNodeXMLToNodeCode(pdsVIMCHOSEN_PRODUCTS.AsString);
        DoProductFieldChanged(pdsVIM_PRODUCT_CODE, pdsVIM_PRODUCT_NAME, pdsVIM_PRODUCT_NO);
      end
    else
      pdsVIM_PRODUCT_NAME.AsString:= SProductsSet[FProductClass];
end;

procedure TfmVIMQuantity.pdsVIMCHOSEN_DEPTSChange(Sender: TField);
begin
  inherited;
  ChosenDeptsChange;
end;

procedure TfmVIMQuantity.ChosenDeptsChange;
begin
  pdsVIM_DEPT_CODE.Clear;
  pdsVIM_DEPT_NO.Clear;
  pdsVIM_DEPT_NAME.Clear;

  if HasChosenNodesOrParams(pdsVIMCHOSEN_DEPTS.AsString) then
    if IsSingleChosenNodeWithoutParams(pdsVIMCHOSEN_DEPTS.AsString) then
      begin
        pdsVIM_DEPT_CODE.AsInteger:= ChosenNodeXMLToNodeCode(pdsVIMCHOSEN_DEPTS.AsString);
        DoDeptFieldChanged(pdsVIM_DEPT_CODE, pdsVIM_DEPT_NAME, pdsVIM_DEPT_NO, nil, nil, nil, nil, nil, nil, nil, pdsVIM_DEPT_HAS_DOCUMENTATION);
      end
    else
      pdsVIM_DEPT_NAME.AsString:= SDeptsSet;
end;

procedure TfmVIMQuantity.pdsVIM_PRODUCT_NAMEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= SAllProducts
  else
    Text:= Sender.AsString;
end;

procedure TfmVIMQuantity.pdsVIM_ROUNDER_QUANTITY_NAMEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if IsWorkMeasure then
    Text:= Sender.AsString
  else
    Text:= pdsVIM_ROUNDER_ACC_QUANTITY_NAME.AsString;
end;

procedure TfmVIMQuantity.pdsVIM_DEPT_NAMEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text:= SAllDepts
  else
    Text:= Sender.AsString;
end;

procedure TfmVIMQuantity.pdsVIMBeforePost(DataSet: TDataSet);
begin
  inherited;
  if pdsVIMCHOSEN_PRODUCTS.Required and
     (not HasChosenNodesOrParams(pdsVIMCHOSEN_PRODUCTS.AsString)) then
    raise Exception.Create(SProductsRequired[FProductClass]);
end;

procedure TfmVIMQuantity.ForceUpdateGridColumnsVisibleStatus;
var
  i: Integer;
begin
  for i:= 1 to 7 do
    grdMaster.Columns[i].Visible:= FIsShowRegQuantity and IsWorkMeasure;

  for i:= 8 to 14 do
    grdMaster.Columns[i].Visible:= FIsShowRegQuantity and not IsWorkMeasure;

  for i:= 15 to 21 do
    grdMaster.Columns[i].Visible:= not FIsShowRegQuantity;

  FOldIsShowRegQuantity:= FIsShowRegQuantity;
end;

procedure TfmVIMQuantity.cdsRegisterPASSIVE_QUANTITY_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

{ TAxisLabelData }

constructor TAxisLabelData.Create(const ALabelText: string; AWorkdays: Integer; ATheDate: TDateTime);
begin
  FLabelText:= ALabelText;
  FWorkdays:= AWorkdays;
  FTheDate:= ATheDate;
end;

end.
