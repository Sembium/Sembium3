unit fEstQuantitiesGraph;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, ToolWin, DBCtrls,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ColorNavigator, Buttons, Mask,
  StdCtrls, ExtCtrls, TeeProcs, TeEngine, Chart, DbChart, Series, TeeFunci,
  uProducts, uClientTypes, dDocClient, Menus, DBGridEhGrouping,
  uDBChartSeriesClickFixer, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  VclTee.TeeGDIPlus, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmEstQuantitiesGraph = class(TGridForm)
    pcMain: TPageControl;
    tsQuantity: TTabSheet;
    tsPrice: TTabSheet;
    tsRegister: TTabSheet;
    cdsGridDataDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField;
    cdsGridDataIN_SALE_COVER_QUANTITY: TAbmesFloatField;
    cdsGridDataIN_ENV_COVER_QUANTITY: TAbmesFloatField;
    cdsGridDataIN_CONSIGN_QUANTITY: TAbmesFloatField;
    cdsGridDataTOTAL_QUANTITY: TAbmesFloatField;
    cdsGridDataDEFICIT_QUANTITY: TAbmesFloatField;
    cdsGridDataPASSIVE_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_IN_SALE_COVER_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_IN_ENV_COVER_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_IN_CONSIGN_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_TOTAL_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_DEFICIT_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_PASSIVE_QUANTITY: TAbmesFloatField;
    cdsGridDataIN_SALE_COVER_PRICE: TAbmesFloatField;
    cdsGridDataIN_ENV_COVER_PRICE: TAbmesFloatField;
    cdsGridDataIN_CONSIGN_PRICE: TAbmesFloatField;
    cdsGridDataTOTAL_PRICE: TAbmesFloatField;
    cdsGridDataDEFICIT_PRICE: TAbmesFloatField;
    cdsGridDataPASSIVE_PRICE: TAbmesFloatField;
    cdsGridDataSAME_MEASURE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsDATE_UNIT_CODE: TAbmesFloatField;
    pdsGridDataParamsDATE_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParams_PRODUCT_NO: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    pnlRegisterTop: TPanel;
    grdRegister: TAbmesDBGrid;
    navRegister: TDBColorNavigator;
    cdsGridData_GRAPH_IN_SALE_COVER_QUANTITY: TAbmesFloatField;
    cdsGridData_GRAPH_IN_ENV_COVER_QUANTITY: TAbmesFloatField;
    cdsGridData_GRAPH_IN_CONSIGN_QUANTITY: TAbmesFloatField;
    cdsGridData_GRAPH_OUT_SALE_ACQUIRE_QUANTITY: TAbmesFloatField;
    cdsGridData_GRAPH_OUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField;
    cdsGridData_GRAPH_TOTAL_QUANTITY: TAbmesFloatField;
    cdsGridData_GRAPH_DEFICIT_QUANTITY: TAbmesFloatField;
    cdsGridData_GRAPH_PASSIVE_QUANTITY: TAbmesFloatField;
    actWorkMeasure: TAction;
    actAccountMeasure: TAction;
    cdsGridData_DATE_UNIT_SHOW_NAME: TAbmesWideStringField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_GRAPH_IN_SALE_COVER_PRICE: TAbmesFloatField;
    cdsGridData_GRAPH_IN_ENV_COVER_PRICE: TAbmesFloatField;
    cdsGridData_GRAPH_IN_CONSIGN_PRICE: TAbmesFloatField;
    cdsGridData_GRAPH_OUT_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    cdsGridData_GRAPH_OUT_SPEC_ACQUIRE_PRICE: TAbmesFloatField;
    cdsGridData_GRAPH_TOTAL_PRICE: TAbmesFloatField;
    cdsGridData_GRAPH_DEFICIT_PRICE: TAbmesFloatField;
    cdsGridData_GRAPH_PASSIVE_PRICE: TAbmesFloatField;
    actRegisterQuantities: TAction;
    actRegisterPrices: TAction;
    tlbRegister: TToolBar;
    sepExcelExport2: TToolButton;
    btnExcelExport2: TToolButton;
    sepRegisterQuantities: TToolButton;
    btnRegisterQuantities: TSpeedButton;
    btnRegisterPrices: TSpeedButton;
    lblMeasureAbbrev: TLabel;
    pnlTopSeparator: TPanel;
    pnlFilter: TPanel;
    cdsGridData_SUM_IN_SALE_COVER_QUANTITY: TAggregateField;
    cdsGridData_SUM_IN_ENV_COVER_QUANTITY: TAggregateField;
    cdsGridData_SUM_IN_CONSIGN_QUANTITY: TAggregateField;
    cdsGridData_SUM_ACC_IN_SALE_COVER_QUANTITY: TAggregateField;
    cdsGridData_SUM_ACC_IN_ENV_COVER_QUANTITY: TAggregateField;
    cdsGridData_SUM_ACC_IN_CONSIGN_QUANTITY: TAggregateField;
    cdsGridData_SUM_IN_SALE_COVER_PRICE: TAggregateField;
    cdsGridData_SUM_IN_ENV_COVER_PRICE: TAggregateField;
    cdsGridData_SUM_IN_CONSIGN_PRICE: TAggregateField;
    actPrior: TAction;
    actNext: TAction;
    cdsTimeUnits: TAbmesClientDataSet;
    cdsTimeUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsTimeUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsTimeUnitsTABLE_NAME: TAbmesWideStringField;
    cdsTimeUnitsKEY_FIELD_NAME: TAbmesWideStringField;
    cdsTimeUnitsYEAR_UNIT_NO_NAME: TAbmesWideStringField;
    cdsTimeUnitsDEFAULT_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsMIN_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsMAX_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsTHE_DATE_UNIT_NAME_PLURAL: TAbmesWideStringField;
    pnlTime: TPanel;
    btnPrior: TBitBtn;
    btnNext: TBitBtn;
    pnlBeginDate: TPanel;
    pnlEndDate: TPanel;
    pnlBeginDateWeekFormat: TPanel;
    pnlEndDateWeekFormat: TPanel;
    cdsRounders: TAbmesClientDataSet;
    cdsRoundersROUNDER: TAbmesFloatField;
    cdsRoundersROUNDER_NAME: TAbmesWideStringField;
    cdsRoundersROUNDER_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsQUANTITY_ROUNDER: TAbmesFloatField;
    pdsGridDataParamsACCOUNT_QUANTITY_ROUNDER: TAbmesFloatField;
    pdsGridDataParamsPRICE_ROUNDER: TAbmesFloatField;
    pdsGridDataParams_QUANTITY_ROUNDER_NAME: TAbmesWideStringField;
    pdsGridDataParams_ACCOUNT_QUANTITY_ROUNDER_NAME: TAbmesWideStringField;
    pdsGridDataParams_PRICE_ROUNDER_NAME: TAbmesWideStringField;
    edtMeasureAbbrev: TDBText;
    pdsGridDataParamsDEFAULT_QUANTITY_ROUNDER: TAbmesFloatField;
    pdsGridDataParamsDEFAULT_ACCOUNT_QUANTITY_ROUNDER: TAbmesFloatField;
    pdsGridDataParamsDEFAULT_PRICE_ROUNDER: TAbmesFloatField;
    pdsGridDataParams_DEFAULT_QUANTITY_ROUNDER_NAME: TAbmesWideStringField;
    pdsGridDataParams_DEFAULT_ACCOUNT_QUANTITY_ROUNDER_NAME: TAbmesWideStringField;
    pdsGridDataParams_DEFAULT_PRICE_ROUNDER_NAME: TAbmesWideStringField;
    pdsGridDataParamsUSE_DEFAULT_ROUNDERS: TAbmesFloatField;
    pdsGridDataParams_REAL_QUANTITY_ROUNDER: TAbmesFloatField;
    pdsGridDataParams_REAL_ACCOUNT_QUANTITY_ROUNDER: TAbmesFloatField;
    pdsGridDataParams_REAL_PRICE_ROUNDER: TAbmesFloatField;
    pdsGridDataParams_REAL_QUANTITY_ROUNDER_NAME: TAbmesWideStringField;
    pdsGridDataParams_REAL_ACCOUNT_QUANTITY_ROUNDER_NAME: TAbmesWideStringField;
    pdsGridDataParams_REAL_PRICE_ROUNDER_NAME: TAbmesWideStringField;
    lblProduct: TLabel;
    lblRounderQuantity: TLabel;
    btnFilter2: TBitBtn;
    edtProductName: TDBEdit;
    edtProductNo: TDBEdit;
    lblPeriod: TLabel;
    lblRounderPrice: TLabel;
    tlbFilterProductDocs: TToolBar;
    btnFilterProductDocs: TToolButton;
    actFilterProductDocs: TAction;
    pdsGridDataParams_DATE_UNITS: TAbmesWideStringField;
    ChartQuantity: TDBChart;
    lblChartQuantityStartDate: TLabel;
    lblChartQuantityEndDate: TLabel;
    btnPrintQuantityChart: TSpeedButton;
    lblToDateOnChartQuantity: TLabel;
    pnlChartQuantityLegend: TPanel;
    shpLegend: TShape;
    lblInSaleCoverQuantity: TLabel;
    lblInConsignQuantity: TLabel;
    shpInSaleCoverQuantity: TShape;
    shpInConsignQuantity: TShape;
    shpPassiveQuantity2: TShape;
    lblPassiveQuantity: TLabel;
    shpPassiveQuantity: TShape;
    actTogglePeriodLabelsExtraInfo: TAction;
    serInSaleCoverQuantity: TBarSeries;
    serInEnvCoverQuantity: TBarSeries;
    serInConsignQuantity: TBarSeries;
    serOutSpecAcquireQuantity: TBarSeries;
    serOutSpecConsignQuantity: TBarSeries;
    cdsGridDataWORKDAYS: TAbmesFloatField;
    cdsGridDataDATE_UNIT_NO: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_IN_CONSIGN_QUANTITY: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_IN_ENV_COVER_QUANTITY: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_OUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField;
    serDeficitQuantity: TBarSeries;
    pdsGridDataParams_PRODUCT_CODE: TAbmesFloatField;
    serPassiveQuantity: TAreaSeries;
    serQuantityZeroLine: TLineSeries;
    TeeFunction1: TMultiplyTeeFunction;
    cdsGridData_ZERO: TAbmesFloatField;
    serQuantityZeroArea: TAreaSeries;
    cdsGridData_DATE_UNIT_SHOW_NAME_EX: TAbmesWideStringField;
    serTotalQuantity: TLineSeries;
    actMovements: TAction;
    actMovementMarks: TAction;
    actTotal: TAction;
    actTotalMarks: TAction;
    actDeficit: TAction;
    actDeficitMarks: TAction;
    actPassive: TAction;
    actPassiveMarks: TAction;
    pnlTogglesToolbar: TPanel;
    tlbToggles: TToolBar;
    btnWorkMeasure: TToolButton;
    btnAccountMeasure: TToolButton;
    btnTotal: TToolButton;
    btnTotalMarks: TToolButton;
    sepTotal: TToolButton;
    sepMovements: TToolButton;
    btnMovements: TToolButton;
    btnMovementMarks: TToolButton;
    sepDeficit: TToolButton;
    btnDeficit: TToolButton;
    btnDeficitMarks: TToolButton;
    sepPassive: TToolButton;
    btnPassive: TToolButton;
    btnPassiveMarks: TToolButton;
    shpInEnvCoverQuantity: TShape;
    lblInEnvCoverQuantity: TLabel;
    shpInModelQuantity: TShape;
    lblInModelQuantity: TLabel;
    shpDeficitQuantity: TShape;
    lblDeficitQuantity: TLabel;
    shpQuantity: TLabel;
    shpTotalQuantity2: TShape;
    shpTotalQuantity: TShape;
    shpLegend2: TShape;
    shpNegativeQuantity2: TShape;
    shpNegativeQuantity: TShape;
    ChartPrice: TDBChart;
    lblChartPriceStartDate: TLabel;
    lblChartPriceEndDate: TLabel;
    btnPrintPriceChart: TSpeedButton;
    lblToDateOnChartPrice: TLabel;
    serPassivePrice: TAreaSeries;
    serPriceZeroArea: TAreaSeries;
    serInSaleCoverPrice: TBarSeries;
    serInConsignPrice: TBarSeries;
    serInEnvCoverPrice: TBarSeries;
    serOutSaleConsignPrice: TBarSeries;
    serOutSaleAcquirePrice: TBarSeries;
    serDeficitPrice: TBarSeries;
    serPriceZeroLine: TLineSeries;
    MultiplyTeeFunction1: TMultiplyTeeFunction;
    serTotalPrice: TLineSeries;
    cdsGridData_STACKED_GRAPH_IN_CONSIGN_PRICE: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_IN_ENV_COVER_PRICE: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_OUT_SALE_CONSIGN_PRICE: TAbmesFloatField;
    cdsEstQuantitiesTableParams: TAbmesClientDataSet;
    cdsEstQuantitiesTableParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsEstQuantitiesTableParamsDATE_UNIT_CODE: TAbmesFloatField;
    cdsEstQuantitiesTableParamsDATE_UNIT_COUNT: TAbmesFloatField;
    cdsEstQuantitiesTableParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    actPrintQuantityChart: TAction;
    actPrintPriceChart: TAction;
    actEstQuantitiesTable: TAction;
    pnlGridButtons: TPanel;
    btnEstQuantitiesTable: TBitBtn;
    cdsGridDataNEGATIVE_QUANTITY: TAbmesFloatField;
    cdsGridDataPOSITIVE_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_NEGATIVE_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_POSITIVE_QUANTITY: TAbmesFloatField;
    cdsGridDataNEGATIVE_PRICE: TAbmesFloatField;
    cdsGridDataPOSITIVE_PRICE: TAbmesFloatField;
    cdsGridDataSINGLE_PRODUCT: TAbmesFloatField;
    serNegativeQuantity: TLineSeries;
    serPositiveQuantity: TLineSeries;
    cdsGridData_GRAPH_NEGATIVE_QUANTITY: TAbmesFloatField;
    cdsGridData_GRAPH_POSITIVE_QUANTITY: TAbmesFloatField;
    cdsGridData_GRAPH_NEGATIVE_PRICE: TAbmesFloatField;
    cdsGridData_GRAPH_POSITIVE_PRICE: TAbmesFloatField;
    serNegativePrice: TLineSeries;
    serPositivePrice: TLineSeries;
    cdsGridDataDATE_UNIT_LAST_DATE: TAbmesSQLTimeStampField;
    cdsGridDataIN_MODEL_QUANTITY: TAbmesFloatField;
    cdsGridDataOUT_SALE_ACQUIRE_QUANTITY: TAbmesFloatField;
    cdsGridDataOUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField;
    cdsGridDataOUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField;
    cdsGridDataOUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_IN_MODEL_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_OUT_SALE_ACQUIRE_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_OUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_OUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField;
    cdsGridDataACC_OUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField;
    cdsGridDataIN_MODEL_PRICE: TAbmesFloatField;
    cdsGridDataOUT_SALE_ACQUIRE_PRICE: TAbmesFloatField;
    cdsGridDataOUT_SALE_CONSIGN_PRICE: TAbmesFloatField;
    cdsGridDataOUT_SPEC_ACQUIRE_PRICE: TAbmesFloatField;
    cdsGridDataOUT_SPEC_CONSIGN_PRICE: TAbmesFloatField;
    cdsGridData_GRAPH_IN_MODEL_QUANTITY: TAbmesFloatField;
    cdsGridData_GRAPH_OUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField;
    cdsGridData_GRAPH_OUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField;
    cdsGridData_GRAPH_IN_MODEL_PRICE: TAbmesFloatField;
    cdsGridData_GRAPH_OUT_SALE_CONSIGN_PRICE: TAbmesFloatField;
    cdsGridData_GRAPH_OUT_SPEC_CONSIGN_PRICE: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_IN_MODEL_QUANTITY: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_IN_MODEL_PRICE: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_OUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_OUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_OUT_SPEC_ACQUIRE_PRICE: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_OUT_SPEC_CONSIGN_PRICE: TAbmesFloatField;
    serInModelQuantity: TBarSeries;
    serOutSaleAcquireQuantity: TBarSeries;
    serOutSaleConsignQuantity: TBarSeries;
    cdsGridData_SUM_OUT_SALE_ACQUIRE_QUANTITY: TAggregateField;
    cdsGridData_SUM_OUT_SALE_CONSIGN_QUANTITY: TAggregateField;
    cdsGridData_SUM_OUT_SPEC_ACQUIRE_QUANTITY: TAggregateField;
    cdsGridData_SUM_OUT_SPEC_CONSIGN_QUANTITY: TAggregateField;
    cdsGridData_SUM_ACC_OUT_SALE_ACQUIRE_QUANTITY: TAggregateField;
    cdsGridData_SUM_ACC_OUT_SALE_CONSIGN_QUANTITY: TAggregateField;
    cdsGridData_SUM_ACC_OUT_SPEC_ACQUIRE_QUANTITY: TAggregateField;
    cdsGridData_SUM_ACC_OUT_SPEC_CONSIGN_QUANTITY: TAggregateField;
    cdsGridData_SUM_OUT_SPEC_CONSIGN_PRICE: TAggregateField;
    cdsGridData_SUM_OUT_SPEC_ACQUIRE_PRICE: TAggregateField;
    cdsGridData_SUM_OUT_SALE_CONSIGN_PRICE: TAggregateField;
    cdsGridData_SUM_OUT_SALE_ACQUIRE_PRICE: TAggregateField;
    cdsGridData_SUM_IN_MODEL_QUANTITY: TAggregateField;
    cdsGridData_SUM_ACC_IN_MODEL_QUANTITY: TAggregateField;
    cdsGridData_SUM_IN_MODEL_PRICE: TAggregateField;
    serInModelPrice: TBarSeries;
    serOutSpecConsignPrice: TBarSeries;
    serOutSpecAcquirePrice: TBarSeries;
    shpOutSaleAcquireQuantity: TShape;
    lblOutSaleAcquireQuantity: TLabel;
    shpOutSaleConsignQuantity: TShape;
    lblOutSaleConsignQuantity: TLabel;
    shpOutSpecAcquireQuantity: TShape;
    lblOutSpecAcquireQuantity: TLabel;
    shpOutSpecConsignQuantity: TShape;
    lblOutSpecConsignQuantity: TLabel;
    edtTimeUnits: TDBEdit;
    edtRoundeQuantity: TDBEdit;
    edtRounderPrice: TDBEdit;
    pnlLegend: TPanel;
    shpLegend3: TShape;
    shpLegend4: TShape;
    lblInSaleCoverPrice: TLabel;
    lblInConsignPrice: TLabel;
    shpInSaleCoverPrice: TShape;
    shpInConsignPrice: TShape;
    shpPassivePrice2: TShape;
    lblPassivePrice: TLabel;
    shpPassivePrice: TShape;
    shpInEnvCoverPrice: TShape;
    lblInEnvCoverPrice: TLabel;
    shpInModelPrice: TShape;
    lblInModelPrice: TLabel;
    shpDeficitPrice: TShape;
    lblDeficitPrice: TLabel;
    lblPrice: TLabel;
    shpTotalPrice2: TShape;
    shpTotalPrice: TShape;
    shpNegativePrice2: TShape;
    shpNegativePrice: TShape;
    shpOutSaleAcquirePrice: TShape;
    lblOutSaleAcquirePrice: TLabel;
    shpOutSaleConsignPrice: TShape;
    lblOutSaleConsignPrice: TLabel;
    shpOutSPecAcquirePrice: TShape;
    lblOutSPecAcquirePrice: TLabel;
    shpOutSpecConsignPrice: TShape;
    lblOutSpecConsignPrice: TLabel;
    pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    pdsGridDataParamsBASE_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsINCLUDE_PROJECT_QUANTITIES: TAbmesFloatField;
    cdsGridData_DATE_UNIT_SHOW_NAME_FOR_REG: TAbmesWideStringField;
    pnlTogglePeriodLabelsExtraInfo: TPanel;
    btnTogglePeriodLabelsExtraInfo: TSpeedButton;
    pnlTogglePeriodLabelsExtraInfo2: TPanel;
    btnTogglePeriodLabelsExtraInfo2: TSpeedButton;
    procedure pdsGridDataParamsCHOSEN_PRODUCTSChange(Sender: TField);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure MeasureAbbrevGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actWorkMeasureExecute(Sender: TObject);
    procedure actAccountMeasureExecute(Sender: TObject);
    procedure actRegisterQuantitiesExecute(Sender: TObject);
    procedure actRegisterPricesExecute(Sender: TObject);
    procedure actExcelExportExecute(Sender: TObject);
    procedure grdRegisterGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actPriorUpdate(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
    procedure actPriorExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure cdsGridDataAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure actFilterProductDocsUpdate(Sender: TObject);
    procedure actFilterProductDocsExecute(Sender: TObject);
    procedure ChartGetAxisLabel(Sender: TChartAxis;
      Series: TChartSeries; ValueIndex: Integer; var LabelText: string);
    procedure actTogglePeriodLabelsExtraInfoExecute(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure LineSeriesAfterDrawValues(Sender: TObject);
    procedure actMovementsExecute(Sender: TObject);
    procedure actMovementMarksUpdate(Sender: TObject);
    procedure actMovementMarksExecute(Sender: TObject);
    procedure actTotalExecute(Sender: TObject);
    procedure actTotalMarksUpdate(Sender: TObject);
    procedure actTotalMarksExecute(Sender: TObject);
    procedure actDeficitExecute(Sender: TObject);
    procedure actDeficitMarksUpdate(Sender: TObject);
    procedure actDeficitMarksExecute(Sender: TObject);
    procedure actPassiveExecute(Sender: TObject);
    procedure actPassiveMarksUpdate(Sender: TObject);
    procedure actPassiveMarksExecute(Sender: TObject);
    procedure ShowHideSeriesActionUpdate(Sender: TObject);
    procedure BarSeriesDblClick(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure LineSeriesDblClick(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure actPrintQuantityChartExecute(Sender: TObject);
    procedure actPrintPriceChartExecute(Sender: TObject);
    procedure actEstQuantitiesTableUpdate(Sender: TObject);
    procedure actEstQuantitiesTableExecute(Sender: TObject);
    procedure grdRegisterDblClick(Sender: TObject);
    procedure actRegisterQuantitiesUpdate(Sender: TObject);
    procedure actTogglePeriodLabelsExtraInfoUpdate(Sender: TObject);
    procedure actRegisterPricesUpdate(Sender: TObject);
    procedure pdsGridDataParamsBEGIN_DATEChange(Sender: TField);
    procedure FormDestroy(Sender: TObject);
  private
    FProductClass: TProductClass;
    FCurrentPeriodDate: TDateTime;
    FCurrentDateUnitNo: Integer;
    FShowHideSeriesActions: array of TAction;
    FOriginalFormCaption: string;
    FChartQuantitySeriesClickFixer: TDBChartSeriesClickFixer;
    FChartPriceSeriesClickFixer: TDBChartSeriesClickFixer;
    procedure ChosenProductsChange;
    procedure SetRegisterVisibleColumns;
    procedure RefreshQuantityChart;
    procedure RefreshPriceChart;
    function QuantityChartLeftAxisCaption: string;
    function PriceChartLeftAxisCaption: string;
    procedure MyDrawLine(AChart: TDBChart; VisibleRect: TRect;
      FromX, FromY, ToX, ToY: Integer; AColor: TColor; AWidth: Integer);
    procedure DrawMarkPoint(AChart: TDBChart; AFill, ABorder: TColor; X, Y: Integer);
    procedure InitalizeShowHideSeriesActionsArray;
    function ShowHideSeriesActionEnabled(Action: TAction): Boolean;
    procedure SetVisibleSeriesAndMarks(FromActions: Boolean = True; AVisible: Boolean = False);
    procedure ShowEstQuantitiesTable(ADateUnitNo: Integer);
    procedure PrintChart(AChart: TDBChart);
    function SingleProduct: Boolean;
  protected
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function ShowFilterForm: Boolean; override;
    function GetOriginalFormCaption: string; override;
    function IsQuantityField(const AField: TAbmesFloatField): Boolean; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
      AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
      AProductClass: TProductClass): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
      AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
      AProductClass: TProductClass); reintroduce; virtual;

    procedure Initialize; override;
  end;

implementation

uses
  dMain, uXMLUtils, uTreeClientUtils, uClientUtils, uPeriods, AbmesDialogs,
  fEstQuantitiesGraphFilter, StrUtils, uClientPeriods, Math, uExcelExport,
  uUtils, JclDateTime, DateUtils, uUserActivityConsts, fEstQuantitiesTable,
  JclStrings, fEstQuantitiesFilterAbstract, uProductClientUtils, uGraphUtils,
  uClientDateTime, fChangeCurrentPrinter, uDependantField, TeCanvas;

{$R *.dfm}

resourcestring
  SDiffrentMeasures = 'разл.';

const
  DefaultDateUnitCount = 5;
  GraphMarginPart = 0.05;
  NegativeColor = clRed;

  PrintLabelsFontSize = 6;
  PrintTitleFontSize = 8;
  PrintMarksFontSize = 4;

{ TfmEstQuantitiesGraph }

procedure TfmEstQuantitiesGraph.actAccountMeasureExecute(Sender: TObject);
begin
  inherited;
  SetRegisterVisibleColumns;
end;

procedure TfmEstQuantitiesGraph.actDeficitExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleSeriesAndMarks;
end;

procedure TfmEstQuantitiesGraph.actDeficitMarksExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleSeriesAndMarks;
end;

procedure TfmEstQuantitiesGraph.actDeficitMarksUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (pcMain.TabIndex in [0, 1]) and
    actDeficit.Checked;
end;

procedure TfmEstQuantitiesGraph.actEstQuantitiesTableExecute(
  Sender: TObject);
begin
  inherited;
  ShowEstQuantitiesTable(cdsGridDataDATE_UNIT_NO.AsInteger);
end;

procedure TfmEstQuantitiesGraph.actEstQuantitiesTableUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsGridData.IsEmpty;
end;

procedure TfmEstQuantitiesGraph.actExcelExportExecute(Sender: TObject);
begin
//  inherited;
  GridExcelExport(grdRegister);
end;

procedure TfmEstQuantitiesGraph.actFilterProductDocsExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl),
    pdsGridDataParams_PRODUCT_CODE.AsInteger);
end;

procedure TfmEstQuantitiesGraph.actFilterProductDocsUpdate(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= not pdsGridDataParams_PRODUCT_CODE.IsNull;
      ImageIndex:= pdsGridDataParams_PRODUCT_HAS_DOC_ITEMS.AsInteger;
    end;
end;

procedure TfmEstQuantitiesGraph.actMovementMarksExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleSeriesAndMarks;
end;

procedure TfmEstQuantitiesGraph.actMovementMarksUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (pcMain.TabIndex in [0, 1]) and
    actMovements.Checked;
end;

procedure TfmEstQuantitiesGraph.actMovementsExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleSeriesAndMarks;
end;

procedure TfmEstQuantitiesGraph.actNextExecute(Sender: TObject);
begin
  inherited;

  CheckEditMode(pdsGridDataParams);

  pdsGridDataParamsBEGIN_DATE.AsDateTime:=
    IncDate(
      pdsGridDataParamsBEGIN_DATE.AsDateTime,
      GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger),
      Max(1, pdsGridDataParamsDATE_UNIT_COUNT.AsInteger div 2)
    );

  pdsGridDataParams.Post;

  RefreshDataSet(cdsGridData);
end;

procedure TfmEstQuantitiesGraph.actNextUpdate(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      Enabled:= cdsGridData.Active;
      Caption:=
        Format(' %d %s ', [
          Max(1, pdsGridDataParamsDATE_UNIT_COUNT.AsInteger div 2),
          cdsTimeUnits.Lookup('THE_DATE_UNIT_CODE', pdsGridDataParamsDATE_UNIT_CODE.AsInteger, 'THE_DATE_UNIT_NAME_PLURAL')
        ]);
    end;  { with }
end;

procedure TfmEstQuantitiesGraph.actPassiveExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleSeriesAndMarks;
end;

procedure TfmEstQuantitiesGraph.actPassiveMarksExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleSeriesAndMarks;
end;

procedure TfmEstQuantitiesGraph.actPassiveMarksUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (pcMain.TabIndex in [0, 1]) and
    actPassive.Checked;
end;

procedure TfmEstQuantitiesGraph.actPrintPriceChartExecute(Sender: TObject);
begin
  inherited;
  PrintChart(ChartPrice);
end;

procedure TfmEstQuantitiesGraph.actPrintQuantityChartExecute(
  Sender: TObject);
begin
  inherited;
  PrintChart(ChartQuantity);
end;

procedure TfmEstQuantitiesGraph.actPriorExecute(Sender: TObject);
begin
  inherited;

  CheckEditMode(pdsGridDataParams);

  pdsGridDataParamsBEGIN_DATE.AsDateTime:=
    IncDate(
      pdsGridDataParamsBEGIN_DATE.AsDateTime,
      GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger),
      -Max(1, pdsGridDataParamsDATE_UNIT_COUNT.AsInteger div 2)
    );

  pdsGridDataParams.Post;

  RefreshDataSet(cdsGridData);
end;

procedure TfmEstQuantitiesGraph.actPriorUpdate(Sender: TObject);
begin
  inherited;

  with Sender as TAction do
    begin
      Enabled:= cdsGridData.Active;
      Caption:=
        Format(' %d %s ', [
          Max(1, pdsGridDataParamsDATE_UNIT_COUNT.AsInteger div 2),
          cdsTimeUnits.Lookup('THE_DATE_UNIT_CODE', pdsGridDataParamsDATE_UNIT_CODE.AsInteger, 'THE_DATE_UNIT_NAME_PLURAL')
        ]);
    end;  { with }
end;

procedure TfmEstQuantitiesGraph.actRegisterPricesExecute(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  btnRegisterPrices.Down:= True;
  SetRegisterVisibleColumns;
end;

procedure TfmEstQuantitiesGraph.actRegisterPricesUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= IsLevelOneInvestedValueVisible;
end;

procedure TfmEstQuantitiesGraph.actRegisterQuantitiesExecute(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked:= True;
  btnRegisterQuantities.Down:= True;
  SetRegisterVisibleColumns;
end;

procedure TfmEstQuantitiesGraph.actRegisterQuantitiesUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    cdsGridDataSAME_MEASURE.AsBoolean;
end;

procedure TfmEstQuantitiesGraph.actTogglePeriodLabelsExtraInfoExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  RefreshQuantityChart;
  RefreshPriceChart;
end;

procedure TfmEstQuantitiesGraph.actTogglePeriodLabelsExtraInfoUpdate(
  Sender: TObject);
begin
  inherited;
  btnTogglePeriodLabelsExtraInfo.Down:= (Sender as TAction).Checked;
  btnTogglePeriodLabelsExtraInfo2.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstQuantitiesGraph.actTotalExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleSeriesAndMarks;
end;

procedure TfmEstQuantitiesGraph.actTotalMarksExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetVisibleSeriesAndMarks;
end;

procedure TfmEstQuantitiesGraph.actTotalMarksUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (pcMain.TabIndex in [0, 1]) and
    actTotal.Checked;
end;

procedure TfmEstQuantitiesGraph.actWorkMeasureExecute(Sender: TObject);
begin
  inherited;
  SetRegisterVisibleColumns;
end;

procedure TfmEstQuantitiesGraph.BarSeriesDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowEstQuantitiesTable(ValueIndex + 1);
end;

class function TfmEstQuantitiesGraph.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmEstQuantitiesGraph.cdsGridDataAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  CheckEditMode(pdsGridDataParams);

  pdsGridDataParamsDEFAULT_QUANTITY_ROUNDER.AsFloat:= Max(VarToFloat(OwnerData[0]), 1);
  pdsGridDataParamsDEFAULT_ACCOUNT_QUANTITY_ROUNDER.AsFloat:= Max(VarToFloat(OwnerData[1]), 1);
  pdsGridDataParamsDEFAULT_PRICE_ROUNDER.AsFloat:= Max(VarToFloat(OwnerData[2]), 1);

  pdsGridDataParams.Post;

  Assert(pdsGridDataParams_REAL_QUANTITY_ROUNDER.AsFloat <> 0);
  Assert(pdsGridDataParams_REAL_ACCOUNT_QUANTITY_ROUNDER.AsFloat <> 0);
  Assert(pdsGridDataParams_REAL_PRICE_ROUNDER.AsFloat <> 0);
end;

procedure TfmEstQuantitiesGraph.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  grdRegister.Columns[0].Title.Caption:=
    GetPeriodTypeName(GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger));

  SetRegisterVisibleColumns;

  pnlBeginDate.Caption:=
    DateToStr(pdsGridDataParamsBEGIN_DATE.AsDateTime);
  pnlBeginDateWeekFormat.Caption:=
    JclDateTime.FormatDateTime('ww\e\iiii', pdsGridDataParamsBEGIN_DATE.AsDateTime);

  pnlEndDate.Caption:=
    DateToStr(pdsGridDataParamsEND_DATE.AsDateTime);
  pnlEndDateWeekFormat.Caption:=
    JclDateTime.FormatDateTime('ww\e\iiii', pdsGridDataParamsEND_DATE.AsDateTime);

  RefreshQuantityChart;
  RefreshPriceChart;

  if (not cdsGridDataSAME_MEASURE.AsBoolean) and (pcMain.ActivePage = tsQuantity) then
    if IsLevelOneInvestedValueVisible then
      pcMain.ActivePage:= tsPrice
    else
      pcMain.ActivePage:= tsRegister;
  tsQuantity.TabVisible:= cdsGridDataSAME_MEASURE.AsBoolean;
  tsPrice.TabVisible:= IsLevelOneInvestedValueVisible;

  if not cdsGridDataSAME_MEASURE.AsBoolean then
    actRegisterPrices.Execute;
end;

procedure TfmEstQuantitiesGraph.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  FCurrentPeriodDate:=
    GetPeriodFirstDate(ContextDate, GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger));
  FCurrentDateUnitNo:=
    GetTimeUnitCount(pdsGridDataParamsBEGIN_DATE.AsDateTime, FCurrentPeriodDate,
      GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger)) + 1;
end;

procedure TfmEstQuantitiesGraph.cdsGridDataCalcFields(DataSet: TDataSet);

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

  procedure StackFields(Fields: array of TField);
  var
    i: Integer;
    StackedValue: Real;
  begin
    Assert(Length(Fields) > 2);
    Assert(not Odd(Length(Fields)));

    i:= 2;
    StackedValue:= Fields[0].AsFloat;
    while (i < Length(Fields)) do
      begin
        if (Fields[i+1].AsFloat = 0) then
          Fields[i].Clear
        else
          begin
            StackedValue:= StackedValue + Fields[i+1].AsFloat;
            Fields[i].AsVariant:= FloatToVar(StackedValue);
          end;

        Inc(i, 2);
      end;  { while }
  end;  { StackFields }

const
  GraphPrefix = '_GRAPH_';
var
  AccountPrefix: string;
  i: Integer;
  QuantityRounder: Real;
  PriceRounder: Real;
  Period: TPeriod;
begin
  inherited;

  Period:= GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger);

  if actWorkMeasure.Checked then
    begin
      AccountPrefix:= '';
      QuantityRounder:= pdsGridDataParams_REAL_QUANTITY_ROUNDER.AsFloat;
    end
  else
    begin
      AccountPrefix:= 'ACC_';
      QuantityRounder:= pdsGridDataParams_REAL_ACCOUNT_QUANTITY_ROUNDER.AsFloat;
    end;

  PriceRounder:= pdsGridDataParams_REAL_PRICE_ROUNDER.AsFloat;

  for i:= 0 to cdsGridData.FieldCount - 1 do
    if StartsStr(GraphPrefix, cdsGridData.Fields[i].FieldName) and
       EndsStr('_QUANTITY', cdsGridData.Fields[i].FieldName) then
      begin
        cdsGridData.Fields[i].AsVariant:=
          FloatToVar(
            RealRound(
              cdsGridData.FieldByName(StringReplace(cdsGridData.Fields[i].FieldName, GraphPrefix, AccountPrefix, [])).AsFloat /
              QuantityRounder
            )
          );

        if (Pos('OUT_', cdsGridData.Fields[i].FieldName) > 0) and
           (cdsGridData.Fields[i].AsFloat <> 0) then
          cdsGridData.Fields[i].AsFloat:= -cdsGridData.Fields[i].AsFloat;

        if ( (cdsGridData.Fields[i] = cdsGridData_GRAPH_TOTAL_QUANTITY) or
             (cdsGridData.Fields[i] = cdsGridData_GRAPH_NEGATIVE_QUANTITY) or
             (cdsGridData.Fields[i] = cdsGridData_GRAPH_POSITIVE_QUANTITY) ) and
           cdsGridData.Fields[i].IsNull then
          cdsGridData.Fields[i].AsFloat:= 0;
      end;

  for i:= 0 to cdsGridData.FieldCount - 1 do
    if StartsStr(GraphPrefix, cdsGridData.Fields[i].FieldName) and
       EndsStr('_PRICE', cdsGridData.Fields[i].FieldName) then
      begin
        cdsGridData.Fields[i].AsVariant:=
          FloatToVar(
            RealRound(
              cdsGridData.FieldByName(StringReplace(cdsGridData.Fields[i].FieldName, GraphPrefix, '', [])).AsFloat /
              PriceRounder
            )
          );

        if (Pos('OUT_', cdsGridData.Fields[i].FieldName) > 0) and
           (cdsGridData.Fields[i].AsFloat <> 0) then
          cdsGridData.Fields[i].AsFloat:= -cdsGridData.Fields[i].AsFloat;

        if ( (cdsGridData.Fields[i] = cdsGridData_GRAPH_TOTAL_PRICE) or
             (cdsGridData.Fields[i] = cdsGridData_GRAPH_NEGATIVE_PRICE) or
             (cdsGridData.Fields[i] = cdsGridData_GRAPH_POSITIVE_PRICE) ) and
           cdsGridData.Fields[i].IsNull then
          cdsGridData.Fields[i].AsFloat:= 0;
      end;

  if (cdsGridDataDATE_UNIT_FIRST_DATE.AsDateTime < FCurrentPeriodDate) then
    begin
      cdsGridData_GRAPH_TOTAL_QUANTITY.AsVariant:= Null;
      cdsGridData_GRAPH_TOTAL_PRICE.AsVariant:= Null;
    end;

  StackFields([
    cdsGridData_GRAPH_IN_SALE_COVER_QUANTITY, nil,
    cdsGridData_STACKED_GRAPH_IN_CONSIGN_QUANTITY, cdsGridData_GRAPH_IN_CONSIGN_QUANTITY,
    cdsGridData_STACKED_GRAPH_IN_ENV_COVER_QUANTITY, cdsGridData_GRAPH_IN_ENV_COVER_QUANTITY,
    cdsGridData_STACKED_GRAPH_IN_MODEL_QUANTITY, cdsGridData_GRAPH_IN_MODEL_QUANTITY
  ]);

  StackFields([
    cdsGridData_GRAPH_OUT_SALE_ACQUIRE_QUANTITY, nil,
    cdsGridData_STACKED_GRAPH_OUT_SALE_CONSIGN_QUANTITY, cdsGridData_GRAPH_OUT_SALE_CONSIGN_QUANTITY,
    cdsGridData_STACKED_GRAPH_OUT_SPEC_ACQUIRE_QUANTITY, cdsGridData_GRAPH_OUT_SPEC_ACQUIRE_QUANTITY,
    cdsGridData_STACKED_GRAPH_OUT_SPEC_CONSIGN_QUANTITY, cdsGridData_GRAPH_OUT_SPEC_CONSIGN_QUANTITY
  ]);

  StackFields([
    cdsGridData_GRAPH_IN_SALE_COVER_PRICE, nil,
    cdsGridData_STACKED_GRAPH_IN_CONSIGN_PRICE, cdsGridData_GRAPH_IN_CONSIGN_PRICE,
    cdsGridData_STACKED_GRAPH_IN_ENV_COVER_PRICE, cdsGridData_GRAPH_IN_ENV_COVER_PRICE,
    cdsGridData_STACKED_GRAPH_IN_MODEL_PRICE, cdsGridData_GRAPH_IN_MODEL_PRICE
  ]);

  StackFields([
    cdsGridData_GRAPH_OUT_SALE_ACQUIRE_PRICE, nil,
    cdsGridData_STACKED_GRAPH_OUT_SALE_CONSIGN_PRICE, cdsGridData_GRAPH_OUT_SALE_CONSIGN_PRICE,
    cdsGridData_STACKED_GRAPH_OUT_SPEC_ACQUIRE_PRICE, cdsGridData_GRAPH_OUT_SPEC_ACQUIRE_PRICE,
    cdsGridData_STACKED_GRAPH_OUT_SPEC_CONSIGN_PRICE, cdsGridData_GRAPH_OUT_SPEC_CONSIGN_PRICE
  ]);

  cdsGridData_ZERO.AsFloat:= 0;

  cdsGridData_DATE_UNIT_SHOW_NAME.AsString:=
    GetPeriodLabel(
      cdsGridDataDATE_UNIT_FIRST_DATE.AsDateTime,
      Period);

  cdsGridData_DATE_UNIT_SHOW_NAME_EX.AsString:=
    cdsGridData_DATE_UNIT_SHOW_NAME.AsString + #13 +
    GetPeriodLabelExtraInfo(cdsGridDataDATE_UNIT_FIRST_DATE.AsDateTime, Period);

  cdsGridData_DATE_UNIT_SHOW_NAME_FOR_REG.AsString:=
    GetPeriodLabel(
      cdsGridDataDATE_UNIT_FIRST_DATE.AsDateTime,
      Period,
      True);
end;

procedure TfmEstQuantitiesGraph.ChartGetAxisLabel(
  Sender: TChartAxis; Series: TChartSeries; ValueIndex: Integer;
  var LabelText: string);
var
  SavedLabelText: string;
begin
  inherited;
  SavedLabelText:= LabelText;
  if (Sender = ChartQuantity.BottomAxis) or
     (Sender = ChartPrice.BottomAxis) then
    LabelText:=
      cdsGridData.PreserveBookmark/
        function: string begin
          cdsGridData.First;
          if (SavedLabelText <> '') and
             cdsGridData.Locate('DATE_UNIT_NO', SavedLabelText, []) then
            begin
              if actTogglePeriodLabelsExtraInfo.Checked then
                Result:= cdsGridData_DATE_UNIT_SHOW_NAME_EX.AsString
              else
                Result:= cdsGridData_DATE_UNIT_SHOW_NAME.AsString;

              if (cdsGridDataWORKDAYS.AsInteger = 0) then
                Result:= MarkDateStringAsDayOff(Result);
            end
          else
            Result:= ' ';
        end;
end;

procedure TfmEstQuantitiesGraph.ChosenProductsChange;
begin
  pdsGridDataParams_PRODUCT_CODE.Clear;
  pdsGridDataParams_PRODUCT_NO.Clear;
  pdsGridDataParams_PRODUCT_NAME.Clear;

  if HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
    if IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
      begin
        pdsGridDataParams_PRODUCT_CODE.AsInteger:=
          ChosenNodeXMLToNodeCode(pdsGridDataParamsCHOSEN_PRODUCTS.AsString);

        DoProductFieldChanged(
          pdsGridDataParams_PRODUCT_CODE,
          pdsGridDataParams_PRODUCT_NAME,
          pdsGridDataParams_PRODUCT_NO,
          nil, nil, nil, nil, nil, nil, nil, nil,
          pdsGridDataParams_PRODUCT_HAS_DOC_ITEMS);
      end
    else
      pdsGridDataParams_PRODUCT_NAME.AsString:= SProductsSet[FProductClass];
end;

procedure TfmEstQuantitiesGraph.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmEstQuantitiesGraphFilter;
  pcMain.TabIndex:= 0;
  InitalizeShowHideSeriesActionsArray;
  SetDependantFields(pdsGridDataParams, 'CHOSEN_PRODUCTS', ['_PRODUCT_CODE', '_PRODUCT_NAME', '_PRODUCT_NO', '_PRODUCT_HAS_DOC_ITEMS']);

  FChartQuantitySeriesClickFixer:= TDBChartSeriesClickFixer.Create(ChartQuantity);
  FChartPriceSeriesClickFixer:= TDBChartSeriesClickFixer.Create(ChartPrice);
end;

procedure TfmEstQuantitiesGraph.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FChartPriceSeriesClickFixer);
  FreeAndNil(FChartQuantitySeriesClickFixer);
end;

function TfmEstQuantitiesGraph.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmEstQuantitiesGraph.grdRegisterDblClick(Sender: TObject);
begin
  inherited;
  actEstQuantitiesTable.Execute;
end;

procedure TfmEstQuantitiesGraph.grdRegisterGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
const
  clRegOtch = $008CFF8C;
  clRegPlan = $00CEFFFF;
  clRegSelOtch = clGreen;
  clRegSelPlan = clYellow;
const
  DateUnitBackgroundColor: array[Boolean, Boolean] of TColor =
    ((clRegOtch, clRegSelOtch), (clRegPlan, clRegSelPlan));
var
  Highlight: Boolean;
begin
  inherited;

  Highlight:= (gdSelected in State);

  if (Column.Field = cdsGridData_DATE_UNIT_SHOW_NAME) then
    begin
      if (cdsGridDataWORKDAYS.AsInteger = 0) then
        AFont.Color:= clRed;

      Background:= DateUnitBackgroundColor[(cdsGridDataDATE_UNIT_LAST_DATE.AsDateTime >= ContextDate), Highlight];
    end;
end;

procedure TfmEstQuantitiesGraph.InitalizeShowHideSeriesActionsArray;
begin
  SetLength(FShowHideSeriesActions, 4);
  FShowHideSeriesActions[0]:= actMovements;
  FShowHideSeriesActions[1]:= actTotal;
  FShowHideSeriesActions[2]:= actDeficit;
  FShowHideSeriesActions[3]:= actPassive;
end;

procedure TfmEstQuantitiesGraph.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  MsgParams:=
    uProductClientUtils.CreateCommonMsgParams(
      LoginContext,
      FProductClass);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

function TfmEstQuantitiesGraph.IsQuantityField(
  const AField: TAbmesFloatField): Boolean;
begin
  Result:= False;
end;

procedure TfmEstQuantitiesGraph.LineSeriesAfterDrawValues(Sender: TObject);
var
  ZeroY, ZeroX: Integer;
  X, Y: Integer;
  Axis: TRect;
  NextX, NextY: Integer;
  i: Integer;
  TheChart: TDBChart;
  LineWidth: Integer;
begin
  inherited;

  if (Pos('QUANTITY', UpperCase((Sender as TLineSeries).Name)) <> 0) then
    TheChart:= ChartQuantity
  else
    if (Pos('PRICE', UpperCase((Sender as TLineSeries).Name)) <> 0) then
      TheChart:= ChartPrice
    else
      raise Exception.Create('internal error: LineSeriesAfterDrawValues> cannot determine chart to render');

  LineWidth:= (Sender as TLineSeries).LinePen.Width;

  with TheChart do
    begin
      ZeroY:= LeftAxis.CalcPosValue(0);
      Axis.Left:= BottomAxis.CalcPosValue(BottomAxis.Minimum);
      Axis.Right:= BottomAxis.CalcPosValue(BottomAxis.Maximum);
      Axis.Bottom:= LeftAxis.CalcPosValue(LeftAxis.Minimum);
      Axis.Top:= LeftAxis.CalcPosValue(LeftAxis.Maximum);
    end;

  for i:= 0 to (Sender as TLineSeries).Count - 2 do
    if ((Sender as TLineSeries).XValue[i] >= FCurrentDateUnitNo) then

    begin
      X:= (Sender as TLineSeries).CalcXPos(i);
      Y:= (Sender as TLineSeries).CalcYPos(i);
      NextX:= (Sender as TLineSeries).CalcXPos(i + 1);
      NextY:= (Sender as TLineSeries).CalcYPos(i + 1);

      //    -\-   takova presichane na Ox
      if (Y <= ZeroY) and (NextY > ZeroY) then
        begin
          ZeroX:= RealRound(NextX - (NextX - X) * (NextY - ZeroY) / (NextY - Y));
          MyDrawLine(TheChart, Axis, ZeroX, ZeroY, NextX, NextY, NegativeColor, LineWidth);
          DrawMarkPoint(TheChart, NegativeColor, clBlack, NextX, NextY);
        end
      else
      //    -/-   takova presichane na Ox
      if (Y >= ZeroY) and (NextY < ZeroY) then
        begin
          ZeroX:= RealRound(X + (NextX - X) * (Y - ZeroY) / (Y - NextY));
          MyDrawLine(TheChart, Axis, X, Y, ZeroX, ZeroY, NegativeColor, LineWidth);
          DrawMarkPoint(TheChart, NegativeColor, clBlack, X, Y);
        end
      else
      //    i 2te tochki sa pod nulata
      if (Y > ZeroY) and (NextY > ZeroY) then
        begin
          MyDrawLine(TheChart, Axis, X, Y, NextX, NextY, NegativeColor, LineWidth);
          DrawMarkPoint(TheChart, NegativeColor, clBlack, X, Y);
          DrawMarkPoint(TheChart, NegativeColor, clBlack, NextX, NextY);
        end;
    end;
end;

procedure TfmEstQuantitiesGraph.LineSeriesDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowEstQuantitiesTable(ValueIndex + 1);
end;

procedure TfmEstQuantitiesGraph.MeasureAbbrevGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if cdsGridDataSAME_MEASURE.AsBoolean then
    Text:= Sender.AsString
  else
    Text:= SDiffrentMeasures;
end;

procedure TfmEstQuantitiesGraph.MyDrawLine(AChart: TDBChart;
  VisibleRect: TRect; FromX, FromY, ToX, ToY: Integer; AColor: TColor;
  AWidth: Integer);
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

procedure TfmEstQuantitiesGraph.OpenDataSets;
begin
  cdsTimeUnits.Open;
  cdsRounders.Open;
  inherited;
end;

procedure TfmEstQuantitiesGraph.CloseDataSets;
begin
  inherited;
  cdsRounders.Close;
  cdsTimeUnits.Close;
end;

procedure TfmEstQuantitiesGraph.DrawMarkPoint(AChart: TDBChart; AFill,
  ABorder: TColor; X, Y: Integer);
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

procedure TfmEstQuantitiesGraph.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;

  pdsGridDataParams.Edit;
  try
    pdsGridDataParamsBEGIN_DATE.AsDateTime:= ContextDate;
    pdsGridDataParamsDATE_UNIT_CODE.AsInteger:= GetPeriodConst(perMonth);
    pdsGridDataParamsDATE_UNIT_COUNT.AsInteger:= DefaultDateUnitCount;
    pdsGridDataParamsUSE_DEFAULT_ROUNDERS.AsBoolean:= True;

    ChosenProductsChange;

    pdsGridDataParamsBASE_DATE.AsDateTime:= pdsGridDataParamsBEGIN_DATE.AsDateTime - 1;

    pdsGridDataParams.Post;
  except
    pdsGridDataParams.Cancel;
    raise;
  end;
end;

procedure TfmEstQuantitiesGraph.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if pdsGridDataParamsCHOSEN_PRODUCTS.Required and
     not HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
    raise Exception.Create(SProductsRequired[FProductClass]);

  if pdsGridDataParamsBEGIN_DATE.IsNull or
     pdsGridDataParamsDATE_UNIT_CODE.IsNull or
     pdsGridDataParamsDATE_UNIT_COUNT.IsNull then
    pdsGridDataParamsEND_DATE.Clear
  else
    pdsGridDataParamsEND_DATE.AsDateTime:=
      IncDate(
        pdsGridDataParamsBEGIN_DATE.AsDateTime,
        GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger),
        pdsGridDataParamsDATE_UNIT_COUNT.AsInteger) - 1;

  if (pdsGridDataParamsBASE_DATE.AsDateTime >= pdsGridDataParamsBEGIN_DATE.AsDateTime) then
    raise Exception.Create(SInvalidBaseDate);
end;

procedure TfmEstQuantitiesGraph.pdsGridDataParamsBEGIN_DATEChange(
  Sender: TField);
begin
  inherited;

  if (pdsGridDataParamsBASE_DATE.AsDateTime >= pdsGridDataParamsBEGIN_DATE.AsDateTime) then
    pdsGridDataParamsBASE_DATE.AsDateTime:= pdsGridDataParamsBEGIN_DATE.AsDateTime - 1;
end;

procedure TfmEstQuantitiesGraph.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
const
  RealPrefix = '_REAL_';
var
  i: Integer;
  FieldName: string;
begin
  inherited;

  for i:= 0 to DataSet.Fields.Count - 1 do
    if StartsStr(RealPrefix, DataSet.Fields[i].FieldName) then
      begin
        FieldName:= StringReplace(DataSet.Fields[i].FieldName, RealPrefix, '', []);
        if pdsGridDataParamsUSE_DEFAULT_ROUNDERS.AsBoolean then
          FieldName:= 'DEFAULT_' + FieldName;
        if EndsStr('_NAME', FieldName) then
          FieldName:= '_' + FieldName;

        DataSet.Fields[i].AsVariant:= DataSet.FieldByName(FieldName).AsVariant;
      end;  { if }

  if pdsGridDataParamsDATE_UNIT_CODE.IsNull then
    pdsGridDataParams_DATE_UNITS.Clear
  else
    pdsGridDataParams_DATE_UNITS.AsString:= 
      Format('%d * %s', [
        pdsGridDataParamsDATE_UNIT_COUNT.AsInteger,
        GetPeriodTypeName(GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger), True)
      ]);
end;

procedure TfmEstQuantitiesGraph.pdsGridDataParamsCHOSEN_PRODUCTSChange(
  Sender: TField);
begin
  inherited;
  ChosenProductsChange;
end;

function TfmEstQuantitiesGraph.QuantityChartLeftAxisCaption: string;
begin
  if actWorkMeasure.Checked then
    begin
      Result:= cdsGridDataMEASURE_ABBREV.AsString;

      if (pdsGridDataParams_REAL_QUANTITY_ROUNDER.AsFloat <> 1) then
        Result:= pdsGridDataParams_REAL_QUANTITY_ROUNDER_NAME.AsString + ' ' + Result;
    end
  else
    begin
      Result:= cdsGridDataACCOUNT_MEASURE_ABBREV.AsString;

      if (pdsGridDataParams_REAL_ACCOUNT_QUANTITY_ROUNDER.AsFloat <> 1) then
        Result:= pdsGridDataParams_REAL_ACCOUNT_QUANTITY_ROUNDER_NAME.AsString + ' ' + Result;
    end;
end;

function TfmEstQuantitiesGraph.PriceChartLeftAxisCaption: string;
begin
  Result:= LoginContext.BaseCurrencyAbbrev;

  if (pdsGridDataParams_REAL_PRICE_ROUNDER.AsFloat <> 1) then
    Result:= pdsGridDataParams_REAL_PRICE_ROUNDER_NAME.AsString + ' ' + Result;
end;

procedure TfmEstQuantitiesGraph.PrintChart(AChart: TDBChart);
var
  SaveTitleText: string;
  SaveLabelsFontSize: Integer;
  SaveTitleFontSize: Integer;
  i: Integer;
  SaveMarksFontSize: Integer;

  procedure SaveSettings;
  begin
    with AChart do
      begin
        SaveTitleText:= Title.Text.Text;
        SaveLabelsFontSize:= BottomAxis.LabelsFont.Size;
        SaveTitleFontSize:= Title.Font.Size;
        SaveMarksFontSize:= SeriesList[0].Marks.Font.Size;
      end;  { with }
  end;  { SaveSettings }

  procedure RestoreSettings;
  var
    i: Integer;
  begin
    with AChart do
      begin
        for i:= 0 to SeriesCount - 1 do
          SeriesList[i].Marks.Font.Size:= SaveMarksFontSize;

        BottomAxis.LabelsFont.Size:= SaveLabelsFontSize;
        LeftAxis.LabelsFont.Size:= SaveLabelsFontSize;
        Title.Font.Size:= SaveTitleFontSize;

        Title.Text.Text:= SaveTitleText;

        SetVisibleSeriesAndMarks;
      end;  { with }
  end;  { RestoreSettings }

begin
  inherited;

  if (TfmChangeCurrentPrinter.ShowForm = mrOk) then
    with AChart do
      begin
        PrintMargins:= Rect(0, 0, 0, 0);

        UndoZoom;
        SetVisibleSeriesAndMarks(False, True);

        SaveSettings;
        try
          Title.Text.Text:=
            StrTrimCharsRight(Title.Text.Text, [#10, #13, #32]) + SLineBreak +
            Format('%s: %s', [lblProduct.Caption, pdsGridDataParams_PRODUCT_NAME.DisplayText]) + SLineBreak;

          BottomAxis.LabelsFont.Size:= PrintLabelsFontSize;
          LeftAxis.LabelsFont.Size:= PrintLabelsFontSize;
          Title.Font.Size:= PrintTitleFontSize;

          for i:= 0 to SeriesCount - 1 do
            SeriesList[i].Marks.Font.Size:= PrintMarksFontSize;

          PrintLandscape;
        finally
          // dva puti zaradi workaround
          RestoreSettings;
          AChart.Refresh;
          RestoreSettings;
          AChart.Refresh;
        end;
      end;  { with }
end;

procedure TfmEstQuantitiesGraph.RefreshQuantityChart;
var
  b: TBookmark;
  i: Integer;
  Period: TPeriod;
  MinLeftAxisValue: Real;
  MaxLeftAxisValue: Real;
  Delta: Real;
begin
  cdsGridData.DisableControls;
  try
    b:= cdsGridData.Bookmark;
    try
      serQuantityZeroLine.Clear;
      for i:= 0 to pdsGridDataParamsDATE_UNIT_COUNT.AsInteger + 1 do
        serQuantityZeroLine.Add(0);

      ChartQuantity.LeftAxis.Title.Caption:= QuantityChartLeftAxisCaption;

      Period:= GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger);

      lblToDateOnChartQuantity.Caption:= SToDate + DateToStr(ContextDate);
      lblChartQuantityStartDate.Caption:= FormatPeriodDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, Period);
      lblChartQuantityEndDate.Caption:= FormatPeriodDate(pdsGridDataParamsEND_DATE.AsDateTime, Period);

      if not cdsGridData.IsEmpty then
        begin
          MinLeftAxisValue:= 0;
          MaxLeftAxisValue:= 0;

          cdsGridData.First;
          while not cdsGridData.Eof do
            begin
              for i:= 0 to ChartQuantity.SeriesList.Count - 1 do
                if (ChartQuantity.SeriesList[i].DataSource = cdsGridData) and
                   Assigned(cdsGridData.FindField(ChartQuantity.SeriesList[i].YValues.ValueSource)) then
                  with cdsGridData.FieldByName(ChartQuantity.SeriesList[i].YValues.ValueSource) do
                    if not IsNull then
                      begin
                        MinLeftAxisValue:= Min(MinLeftAxisValue, AsFloat);
                        MaxLeftAxisValue:= Max(MaxLeftAxisValue, AsFloat);
                      end;  { if }

              cdsGridData.Next;
            end;  { while }

          Delta:= MaxLeftAxisValue - MinLeftAxisValue;

          ChartQuantity.LeftAxis.Automatic:= False;
          ChartQuantity.LeftAxis.Minimum:= MinLeftAxisValue - (Delta * GraphMarginPart);
          ChartQuantity.LeftAxis.Maximum:= MaxLeftAxisValue + (Delta * GraphMarginPart);
        end
      else
        ChartQuantity.LeftAxis.Automatic:= True;

      ChartQuantity.BottomAxis.Minimum:= 0;
      ChartQuantity.BottomAxis.Maximum:= pdsGridDataParamsDATE_UNIT_COUNT.AsInteger + 1;

      SetVisibleSeriesAndMarks;

      ChartQuantity.RefreshData;
    finally
      cdsGridData.Bookmark:= b;
    end;
  finally
    cdsGridData.EnableControls;
  end;
end;

procedure TfmEstQuantitiesGraph.RefreshPriceChart;
var
  b: TBookmark;
  i: Integer;
  Period: TPeriod;
  MinLeftAxisValue: Real;
  MaxLeftAxisValue: Real;
  Delta: Real;
begin
  cdsGridData.DisableControls;
  try
    b:= cdsGridData.Bookmark;
    try
      serPriceZeroLine.Clear;
      for i:= 0 to pdsGridDataParamsDATE_UNIT_COUNT.AsInteger + 1 do
        serPriceZeroLine.Add(0);

      ChartPrice.LeftAxis.Title.Caption:= PriceChartLeftAxisCaption;

      Period:= GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger);

      lblToDateOnChartPrice.Caption:= SToDate + DateToStr(ContextDate);
      lblChartPriceStartDate.Caption:= FormatPeriodDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, Period);
      lblChartPriceEndDate.Caption:= FormatPeriodDate(pdsGridDataParamsEND_DATE.AsDateTime, Period);

      if not cdsGridData.IsEmpty then
        begin
          MinLeftAxisValue:= 0;
          MaxLeftAxisValue:= 0;

          cdsGridData.First;
          while not cdsGridData.Eof do
            begin
              for i:= 0 to ChartPrice.SeriesList.Count - 1 do
                if (ChartPrice.SeriesList[i].DataSource = cdsGridData) and
                   Assigned(cdsGridData.FindField(ChartPrice.SeriesList[i].YValues.ValueSource)) then
                  with cdsGridData.FieldByName(ChartPrice.SeriesList[i].YValues.ValueSource) do
                    if not IsNull then
                      begin
                        MinLeftAxisValue:= Min(MinLeftAxisValue, AsFloat);
                        MaxLeftAxisValue:= Max(MaxLeftAxisValue, AsFloat);
                      end;  { if }

              cdsGridData.Next;
            end;  { while }

          Delta:= MaxLeftAxisValue - MinLeftAxisValue;

          ChartPrice.LeftAxis.Automatic:= False;
          ChartPrice.LeftAxis.Minimum:= MinLeftAxisValue - (Delta * GraphMarginPart);
          ChartPrice.LeftAxis.Maximum:= MaxLeftAxisValue + (Delta * GraphMarginPart);
        end
      else
        ChartPrice.LeftAxis.Automatic:= True;

      ChartPrice.BottomAxis.Minimum:= 0;
      ChartPrice.BottomAxis.Maximum:= pdsGridDataParamsDATE_UNIT_COUNT.AsInteger + 1;

      SetVisibleSeriesAndMarks;

      ChartPrice.RefreshData;
    finally
      cdsGridData.Bookmark:= b;
    end;
  finally
    cdsGridData.EnableControls;
  end;
end;

procedure TfmEstQuantitiesGraph.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  FProductClass:= AProductClass;
end;

procedure TfmEstQuantitiesGraph.SetRegisterVisibleColumns;
var
  VisibleCol: Integer;
  i: Integer;
  VisibleCols: Integer;
  LSingleProduct: Boolean;
begin
  LSingleProduct:= SingleProduct;

  grdRegister.Columns.BeginUpdate;
  try
    VisibleCol:= 0;
    for i:= 1 to grdRegister.Col do
      Inc(VisibleCol, Ord(grdRegister.Columns[i-1].Visible));

    for i:= 0 to grdRegister.Columns.Count - 1 do
      begin
        if EndsStr('_QUANTITY', grdRegister.Columns[i].FieldName) then
          begin
            if StartsStr('ACC_', grdRegister.Columns[i].FieldName) then
              grdRegister.Columns[i].Visible:= actAccountMeasure.Checked
            else
              grdRegister.Columns[i].Visible:= actWorkMeasure.Checked;

            grdRegister.Columns[i].Visible:=
              grdRegister.Columns[i].Visible and
              actRegisterQuantities.Checked;
          end;

        if EndsStr('_PRICE', grdRegister.Columns[i].FieldName) then
          grdRegister.Columns[i].Visible:= actRegisterPrices.Checked;

        if (Pos('NEGATIVE_', grdRegister.Columns[i].FieldName) > 0) or
           (Pos('POSITIVE_', grdRegister.Columns[i].FieldName) > 0) then
          grdRegister.Columns[i].Visible:=
            grdRegister.Columns[i].Visible and not LSingleProduct;

        if (Pos('TOTAL_', grdRegister.Columns[i].FieldName) > 0) then
          grdRegister.Columns[i].Visible:=
            grdRegister.Columns[i].Visible and LSingleProduct;
      end;  { for }

    VisibleCols:= 0;
    i:= -1;
    while (VisibleCols < VisibleCol) do
      begin
        Inc(i);
        Inc(VisibleCols, Ord(grdRegister.Columns[i].Visible));
      end;
    grdRegister.Col:= i+1;
  finally
    grdRegister.Columns.EndUpdate;
  end;
end;

procedure TfmEstQuantitiesGraph.SetVisibleSeriesAndMarks(
  FromActions, AVisible: Boolean);
var
  LSingleProduct: Boolean;
begin
  LSingleProduct:= SingleProduct;

  serInSaleCoverQuantity.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serInEnvCoverQuantity.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serInConsignQuantity.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serInModelQuantity.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serOutSaleAcquireQuantity.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serOutSaleConsignQuantity.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serOutSpecAcquireQuantity.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serOutSpecConsignQuantity.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serTotalQuantity.Active:= IfThen(FromActions, actTotal.Checked, AVisible) and LSingleProduct;
  serNegativeQuantity.Active:= IfThen(FromActions, actTotal.Checked, AVisible) and not LSingleProduct;
  serPositiveQuantity.Active:= IfThen(FromActions, actTotal.Checked, AVisible) and not LSingleProduct;
  serDeficitQuantity.Active:= IfThen(FromActions, actDeficit.Checked, AVisible);
  serPassiveQuantity.Active:= IfThen(FromActions, actPassive.Checked, AVisible);

  serInSaleCoverQuantity.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serInEnvCoverQuantity.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serInConsignQuantity.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serInModelQuantity.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serOutSaleAcquireQuantity.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serOutSaleConsignQuantity.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serOutSpecAcquireQuantity.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serOutSpecConsignQuantity.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serTotalQuantity.Marks.Visible:= IfThen(FromActions, actTotalMarks.Checked, AVisible);
  serNegativeQuantity.Marks.Visible:= IfThen(FromActions, actTotalMarks.Checked, AVisible);
  serPositiveQuantity.Marks.Visible:= IfThen(FromActions, actTotalMarks.Checked, AVisible);
  serDeficitQuantity.Marks.Visible:= IfThen(FromActions, actDeficitMarks.Checked, AVisible);
  serPassiveQuantity.Marks.Visible:= IfThen(FromActions, actPassiveMarks.Checked, AVisible);

  serInSaleCoverPrice.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serInEnvCoverPrice.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serInConsignPrice.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serInModelPrice.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serOutSaleAcquirePrice.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serOutSaleConsignPrice.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serOutSpecAcquirePrice.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serOutSpecConsignPrice.Active:= IfThen(FromActions, actMovements.Checked, AVisible);
  serTotalPrice.Active:= IfThen(FromActions, actTotal.Checked, AVisible) and LSingleProduct;
  serNegativePrice.Active:= IfThen(FromActions, actTotal.Checked, AVisible) and not LSingleProduct;
  serPositivePrice.Active:= IfThen(FromActions, actTotal.Checked, AVisible) and not LSingleProduct;
  serDeficitPrice.Active:= IfThen(FromActions, actDeficit.Checked, AVisible);
  serPassivePrice.Active:= IfThen(FromActions, actPassive.Checked, AVisible);

  serInSaleCoverPrice.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serInEnvCoverPrice.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serInConsignPrice.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serInModelPrice.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serOutSaleAcquirePrice.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serOutSaleConsignPrice.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serOutSpecAcquirePrice.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serOutSpecConsignPrice.Marks.Visible:= IfThen(FromActions, actMovementMarks.Checked, AVisible);
  serTotalPrice.Marks.Visible:= IfThen(FromActions, actTotalMarks.Checked, AVisible);
  serNegativePrice.Marks.Visible:= IfThen(FromActions, actTotalMarks.Checked, AVisible);
  serPositivePrice.Marks.Visible:= IfThen(FromActions, actTotalMarks.Checked, AVisible);
  serDeficitPrice.Marks.Visible:= IfThen(FromActions, actDeficitMarks.Checked, AVisible);
  serPassivePrice.Marks.Visible:= IfThen(FromActions, actPassiveMarks.Checked, AVisible);
end;

procedure TfmEstQuantitiesGraph.ShowEstQuantitiesTable(
  ADateUnitNo: Integer);
begin
  cdsEstQuantitiesTableParams.CreateDataSet;
  try
    cdsEstQuantitiesTableParams.Append;
    try
      cdsEstQuantitiesTableParams.AssignFields(pdsGridDataParams);

      cdsEstQuantitiesTableParamsBEGIN_DATE.AsDateTime:=
        IncDate(
          pdsGridDataParamsBEGIN_DATE.AsDateTime,
          GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger),
          ADateUnitNo - 1
        );
      cdsEstQuantitiesTableParamsDATE_UNIT_COUNT.AsInteger:= 1;

      cdsEstQuantitiesTableParams.Post;
    except
      cdsEstQuantitiesTableParams.Cancel;
      raise;
    end;

    LoginContext.CheckUserActivity(uaEstQuantitiesTable);
    TfmEstQuantitiesTable.ShowForm(dmDocClient, cdsEstQuantitiesTableParams, emReadOnly, doNone, False, FProductClass);
  finally
    cdsEstQuantitiesTableParams.Close;
  end;
end;

function TfmEstQuantitiesGraph.ShowFilterForm: Boolean;
begin
  if FilterFormClass.InheritsFrom(TfmEstQuantitiesFilterAbstract) then
    Result:=
      TfmEstQuantitiesFilterAbstractClass(FilterFormClass).ShowForm(
        dmDocClient,
        pdsGridDataParams,
        emEdit,
        doNone,
        FProductClass)
  else
    Result:= inherited ShowFilterForm;
end;

class function TfmEstQuantitiesGraph.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AProductClass: TProductClass): Boolean;
var
  f: TfmEstQuantitiesGraph;
begin
  f:= CreateEx;
  try
    f.SetDataParams(
      AdmDocClient,
      ADataSet,
      AEditMode,
      ADefaultsOrigin,
      AFilterFormEnabled,
      AProductClass);

    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

function TfmEstQuantitiesGraph.ShowHideSeriesActionEnabled(
  Action: TAction): Boolean;
var
  act: TAction;
begin
  if not Action.Checked then
    Result:= True
  else
    begin
      Result:= True;

      for act in FShowHideSeriesActions do
        if (act <> Action) and act.Checked then
          Exit;

      Result:= False;
    end;  { if }
end;

procedure TfmEstQuantitiesGraph.ShowHideSeriesActionUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (pcMain.TabIndex in [0, 1]) and
    ShowHideSeriesActionEnabled(Sender as TAction);
end;

function TfmEstQuantitiesGraph.SingleProduct: Boolean;
begin
  Result:=
    cdsGridData.Active and cdsGridDataSINGLE_PRODUCT.AsBoolean;
end;

end.
