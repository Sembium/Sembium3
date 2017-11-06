unit fEstPricesCompareGraph;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, TeEngine, TeeFunci, Series,
  TeeProcs, Chart, DbChart, Mask, dDocClient, uClientTypes, uBorderRelTypes,
  uParRelProducts, Grids, DBGrids, uProductionOrderTypes, uProducts, Menus,
  DBGridEhGrouping, uDBChartSeriesClickFixer, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, VclTee.TeeGDIPlus, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmEstPricesCompareGraph = class(TGridForm)
    pnlFilter: TPanel;
    lblProduct: TLabel;
    lblPeriod: TLabel;
    lblRounder: TLabel;
    btnFilter2: TBitBtn;
    edtProductName: TDBEdit;
    edtProductNo: TDBEdit;
    tlbFilterProductDocs: TToolBar;
    btnFilterProductDocs: TToolButton;
    pnlTopSeparator: TPanel;
    pcMain: TPageControl;
    tsPrice: TTabSheet;
    tsRegister: TTabSheet;
    pnlRegisterTop: TPanel;
    navRegister: TDBColorNavigator;
    tlbRegister: TToolBar;
    sepExcelExport2: TToolButton;
    btnExcelExport2: TToolButton;
    grdRegister: TAbmesDBGrid;
    pnlTime: TPanel;
    btnPrior: TBitBtn;
    btnNext: TBitBtn;
    pnlBeginDate: TPanel;
    pnlEndDate: TPanel;
    pnlBeginDateWeekFormat: TPanel;
    pnlEndDateWeekFormat: TPanel;
    ChartPrice: TDBChart;
    btnPrintChart: TSpeedButton;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDATE_UNIT_CODE: TAbmesFloatField;
    pdsGridDataParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsBORDER_PROD_ORDER_BASE_TYPE: TAbmesFloatField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsBORDER_REL_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    pdsGridDataParamsDATE_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParamsUSE_DEFAULT_ROUNDER: TAbmesFloatField;
    pdsGridDataParamsROUNDER: TAbmesFloatField;
    pdsGridDataParamsDEFAULT_ROUNDER: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParams_PRODUCT_NO: TAbmesFloatField;
    pdsGridDataParams_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
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
    cdsRounders: TAbmesClientDataSet;
    cdsRoundersROUNDER: TAbmesFloatField;
    cdsRoundersROUNDER_NAME: TAbmesWideStringField;
    cdsRoundersROUNDER_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_ROUNDER_NAME: TAbmesWideStringField;
    pdsGridDataParams_DEFAULT_ROUNDER_NAME: TAbmesWideStringField;
    pdsGridDataParams_USE_ROUNDER: TAbmesFloatField;
    pdsGridDataParams_USE_ROUNDER_NAME: TAbmesWideStringField;
    actPrior: TAction;
    actNext: TAction;
    lblStartDate: TLabel;
    lblEndDate: TLabel;
    actTogglePeriodLabelsExtraInfo: TAction;
    cdsGridDataPAST_EST_ACQUIRE_VA: TAbmesFloatField;
    cdsGridDataFUTURE_EST_ACQUIRE_VA: TAbmesFloatField;
    cdsGridDataPAST_REAL_ACQUIRE_VA: TAbmesFloatField;
    cdsGridDataFUTURE_REAL_ACQUIRE_VA: TAbmesFloatField;
    cdsGridDataPAST_PLAN_REM_ACQUIRE_VG: TAbmesFloatField;
    cdsGridDataPAST_PLAN_REM_LEASE_VG: TAbmesFloatField;
    cdsGridDataPAST_PLAN_REM_ACQUIRE_IV: TAbmesFloatField;
    cdsGridDataFUTURE_PLAN_REM_ACQUIRE_VG: TAbmesFloatField;
    cdsGridDataFUTURE_PLAN_REM_LEASE_VG: TAbmesFloatField;
    cdsGridDataFUTURE_PLAN_REM_ACQUIRE_IV: TAbmesFloatField;
    cdsGridDataDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDATE_UNIT_LAST_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDATE_UNIT_NO: TAbmesFloatField;
    cdsGridDataDATE_UNIT_WORKDAYS: TAbmesFloatField;
    cdsGridDataPAST_EST_ACQUIRE_VG: TAbmesFloatField;
    cdsGridDataPAST_EST_LEASE_VG: TAbmesFloatField;
    cdsGridDataPAST_EST_ACQUIRE_IV: TAbmesFloatField;
    cdsGridDataFUTURE_EST_ACQUIRE_VG: TAbmesFloatField;
    cdsGridDataFUTURE_EST_LEASE_VG: TAbmesFloatField;
    cdsGridDataFUTURE_EST_ACQUIRE_IV: TAbmesFloatField;
    cdsGridDataPAST_REAL_ACQUIRE_VG: TAbmesFloatField;
    cdsGridDataPAST_REAL_LEASE_VG: TAbmesFloatField;
    cdsGridDataPAST_REAL_ACQUIRE_IV: TAbmesFloatField;
    cdsGridDataFUTURE_REAL_ACQUIRE_VG: TAbmesFloatField;
    cdsGridDataFUTURE_REAL_LEASE_VG: TAbmesFloatField;
    cdsGridDataFUTURE_REAL_ACQUIRE_IV: TAbmesFloatField;
    pdsGridDataParams_OBTAINMENT_TYPE_NAME: TAbmesWideStringField;
    cdsProductionOrderBaseTypes: TAbmesClientDataSet;
    cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField;
    cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NAME: TAbmesWideStringField;
    cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_BORDER_PROD_ORDER_BASE_TYPE_ABBREV: TAbmesWideStringField;
    cdsGridData_DATE_UNIT_SHOW_NAME: TAbmesWideStringField;
    cdsGridData_DATE_UNIT_SHOW_NAME_EX: TAbmesWideStringField;
    cdsGridData_ZERO: TAbmesFloatField;
    cdsGridData_GRAPH_PAST_EST_ACQUIRE_VG: TAbmesFloatField;
    cdsGridData_GRAPH_PAST_EST_LEASE_VG: TAbmesFloatField;
    cdsGridData_GRAPH_PAST_EST_ACQUIRE_IV: TAbmesFloatField;
    cdsGridData_GRAPH_PAST_EST_ACQUIRE_VA: TAbmesFloatField;
    cdsGridData_GRAPH_FUTURE_EST_ACQUIRE_VG: TAbmesFloatField;
    cdsGridData_GRAPH_FUTURE_EST_LEASE_VG: TAbmesFloatField;
    cdsGridData_GRAPH_FUTURE_EST_ACQUIRE_IV: TAbmesFloatField;
    cdsGridData_GRAPH_FUTURE_EST_ACQUIRE_VA: TAbmesFloatField;
    cdsGridData_GRAPH_PAST_REAL_ACQUIRE_VG: TAbmesFloatField;
    cdsGridData_GRAPH_PAST_REAL_LEASE_VG: TAbmesFloatField;
    cdsGridData_GRAPH_PAST_REAL_ACQUIRE_IV: TAbmesFloatField;
    cdsGridData_GRAPH_PAST_REAL_ACQUIRE_VA: TAbmesFloatField;
    cdsGridData_GRAPH_FUTURE_REAL_ACQUIRE_VG: TAbmesFloatField;
    cdsGridData_GRAPH_FUTURE_REAL_LEASE_VG: TAbmesFloatField;
    cdsGridData_GRAPH_FUTURE_REAL_ACQUIRE_IV: TAbmesFloatField;
    cdsGridData_GRAPH_FUTURE_REAL_ACQUIRE_VA: TAbmesFloatField;
    cdsGridData_GRAPH_PAST_PLAN_REM_ACQUIRE_VG: TAbmesFloatField;
    cdsGridData_GRAPH_PAST_PLAN_REM_LEASE_VG: TAbmesFloatField;
    cdsGridData_GRAPH_PAST_PLAN_REM_ACQUIRE_IV: TAbmesFloatField;
    cdsGridData_GRAPH_FUTURE_PLAN_REM_ACQUIRE_VG: TAbmesFloatField;
    cdsGridData_GRAPH_FUTURE_PLAN_REM_LEASE_VG: TAbmesFloatField;
    cdsGridData_GRAPH_FUTURE_PLAN_REM_ACQUIRE_IV: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_PAST_EST_ACQUIRE_VA: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_PAST_EST_ACQUIRE_IV: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_FUTURE_EST_ACQUIRE_VA: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_FUTURE_EST_LEASE_VG: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_FUTURE_EST_ACQUIRE_IV: TAbmesFloatField;
    serFutureEstAcquireIV: TBarSeries;
    serFutureEstLeaseVG: TBarSeries;
    serFutureEstAcquireVA: TBarSeries;
    serPastEstAcquireIV: TBarSeries;
    serPastEstLeaseVG: TBarSeries;
    serPastEstAcquireVA: TBarSeries;
    serZeroLine: TLineSeries;
    cdsGridData_STACKED_GRAPH_PAST_REAL_ACQUIRE_VA: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_PAST_PLAN_REM_ACQUIRE_VA: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_PAST_PLAN_REM_LEASE_VG: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_PAST_REAL_ACQUIRE_IV: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_PAST_PLAN_REM_ACQUIRE_IV: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_FUTURE_REAL_LEASE_VG: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_FUTURE_PLAN_REM_ACQUIRE_VA: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_FUTURE_PLAN_REM_LEASE_VG: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_FUTURE_REAL_ACQUIRE_IV: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_FUTURE_PLAN_REM_ACQUIRE_IV: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_FUTURE_REAL_ACQUIRE_VA: TAbmesFloatField;
    cdsGridDataPAST_PLAN_REM_ACQUIRE_VA: TAbmesFloatField;
    cdsGridDataFUTURE_PLAN_REM_ACQUIRE_VA: TAbmesFloatField;
    cdsGridData_GRAPH_PAST_PLAN_REM_ACQUIRE_VA: TAbmesFloatField;
    cdsGridData_GRAPH_FUTURE_PLAN_REM_ACQUIRE_VA: TAbmesFloatField;
    actFilterProductDocs: TAction;
    TeeFunction1: TMultiplyTeeFunction;
    serFuturePlanRemAcquireIV: TBarSeries;
    serFutureRealAcquireIV: TBarSeries;
    serFuturePlanRemLeaseVG: TBarSeries;
    serFuturePlanRemAcquireVA: TBarSeries;
    serFutureRealLeaseVG: TBarSeries;
    serFutureRealAcquireVA: TBarSeries;
    serPastPlanRemAcquireIV: TBarSeries;
    serPastRealAcquireIV: TBarSeries;
    serPastPlanRemLeaseVG: TBarSeries;
    serPastPlanRemAcquireVA: TBarSeries;
    serPastRealLeaseVG: TBarSeries;
    serPastRealAcquireVA: TBarSeries;
    pdsGridDataParams_DATE_UNITS: TAbmesWideStringField;
    actLatePlan: TAction;
    pnlButtons: TPanel;
    btnLatePlan: TSpeedButton;
    pdsGridDataParamsVALUES_ORIGIN: TAbmesFloatField;
    actPrintChart: TAction;
    cdsGridData_REGISTER_EST_ACQUIRE_VG: TAbmesFloatField;
    cdsGridData_REGISTER_EST_LEASE_VG: TAbmesFloatField;
    cdsGridData_REGISTER_EST_ACQUIRE_IV: TAbmesFloatField;
    cdsGridData_REGISTER_EST_ACQUIRE_VA: TAbmesFloatField;
    cdsGridData_REGISTER_PLAN_REM_ACQUIRE_VG: TAbmesFloatField;
    cdsGridData_REGISTER_PLAN_REM_LEASE_VG: TAbmesFloatField;
    cdsGridData_REGISTER_PLAN_REM_ACQUIRE_IV: TAbmesFloatField;
    cdsGridData_REGISTER_PLAN_REM_ACQUIRE_VA: TAbmesFloatField;
    cdsGridData_REGISTER_REAL_ACQUIRE_VG: TAbmesFloatField;
    cdsGridData_REGISTER_REAL_LEASE_VG: TAbmesFloatField;
    cdsGridData_REGISTER_REAL_ACQUIRE_IV: TAbmesFloatField;
    cdsGridData_REGISTER_REAL_ACQUIRE_VA: TAbmesFloatField;
    cdsSaleExpGroupsParams: TAbmesClientDataSet;
    cdsSaleExpGroupsParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsSaleExpGroupsParamsMIN_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField;
    cdsSaleExpGroupsParamsMAX_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField;
    cdsSaleExpGroupsParamsBEGIN_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsSaleExpGroupsParamsEND_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    lblBaseCurrencyValues: TLabel;
    cdsParRelProductsParams: TAbmesClientDataSet;
    cdsParRelProductsParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsParRelProductsParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsParRelProductsParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsParRelProductsParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsParRelProductsParamsMATERIAL_CODE: TAbmesFloatField;
    cdsDeliveriesParams: TAbmesClientDataSet;
    cdsDeliveriesParamsBEGIN_DELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsDeliveriesParamsEND_DELIVERY_DATE: TAbmesSQLTimeStampField;
    cdsDeliveriesParamsMIN_STATUS_CODE: TAbmesFloatField;
    cdsDeliveriesParamsMAX_STATUS_CODE: TAbmesFloatField;
    cdsDeliveriesParamsCHOSEN_PRODUCTS: TAbmesWideStringField;
    cdsGridDataPLAN_REM_BUDGET_PRICE: TAbmesFloatField;
    cdsGridDataPLAN_BUDGET_PRICE: TAbmesFloatField;
    cdsGridDataREAL_BUDGET_PRICE: TAbmesFloatField;
    serValueAddedDensity: TLineSeries;
    cdsGridData__GRAPH_VALUE_ADDED: TAbmesFloatField;
    serDensityWithoutLatePlan: TLineSeries;
    cdsGridDataYEAR_DATE_UNIT_NO: TAbmesFloatField;
    cdsGridDataDENSITY_WITH_LATE_PLAN: TAbmesFloatField;
    cdsGridDataDENSITY_WITHOUT_LATE_PLAN: TAbmesFloatField;
    serDensityWithLatePlan: TLineSeries;
    cdsGridData_GRAPH_DENSITY_WITH_LATE_PLAN: TAbmesFloatField;
    cdsGridData_GRAPH_DENSITY_WITHOUT_LATE_PLAN: TAbmesFloatField;
    cdsGridDataTOTAL_EST_ACQUIRE_VG: TAbmesFloatField;
    cdsGridDataTOTAL_EST_LEASE_VG: TAbmesFloatField;
    cdsGridDataTOTAL_EST_ACQUIRE_IV: TAbmesFloatField;
    cdsGridDataTOTAL_EST_ACQUIRE_VA: TAbmesFloatField;
    cdsGridDataTOTAL_PLAN_REM_ACQUIRE_VG: TAbmesFloatField;
    cdsGridDataTOTAL_PLAN_REM_LEASE_VG: TAbmesFloatField;
    cdsGridDataTOTAL_PLAN_REM_ACQUIRE_IV: TAbmesFloatField;
    cdsGridDataTOTAL_PLAN_REM_ACQUIRE_VA: TAbmesFloatField;
    cdsGridDataTOTAL_REAL_ACQUIRE_VG: TAbmesFloatField;
    cdsGridDataTOTAL_REAL_LEASE_VG: TAbmesFloatField;
    cdsGridDataTOTAL_REAL_ACQUIRE_IV: TAbmesFloatField;
    cdsGridDataTOTAL_REAL_ACQUIRE_VA: TAbmesFloatField;
    actInvestedValuePercent: TAction;
    btnInvestedValuePercent: TSpeedButton;
    cdsGridData_REGISTER_EST_ACQUIRE_IV_PART: TAbmesFloatField;
    cdsGridData_REGISTER_PLAN_REM_ACQUIRE_IV_PART: TAbmesFloatField;
    cdsGridData_REGISTER_REAL_ACQUIRE_IV_PART: TAbmesFloatField;
    cdsGridData__GRAPH_PLAN_AND_REAL_LABEL: TAbmesWideStringField;
    cdsGridData__GRAPH_EST_LABEL: TAbmesWideStringField;
    pdsGridDataParams_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParams_COMPANY_SHORT_NAME: TAbmesWideStringField;
    pdsGridDataParams_COMPANY_NO: TAbmesFloatField;
    lblPartner: TLabel;
    edtPartnerShortName: TDBEdit;
    edtPartnerNo: TDBEdit;
    cdsBorderDealTypes: TAbmesClientDataSet;
    cdsBorderDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsBorderDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    cdsSaleExpGroupsParamsSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveriesParamsDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField;
    edtRounder: TDBEdit;
    pnlTimeUnitCountAndName: TDBEdit;
    pdsGridDataParamsPRODUCT_CLASS_CODE: TAbmesFloatField;
    cdsBorderDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField;
    cdsGridData_VALUE_ADDED: TAbmesFloatField;
    cdsGridDataVALUE_ADDED_DENSITY: TAbmesFloatField;
    cdsGridData_GRAPH_VALUE_ADDED_DENSITY: TAbmesFloatField;
    cdsParRelProductsParamsMIN_PRP_STATUS_CODE: TAbmesFloatField;
    cdsParRelProductsParamsMAX_PRP_STATUS_CODE: TAbmesFloatField;
    cdsSaleExpGroupsParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    cdsDeliveriesParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    cdsParRelProductsParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    cdsParRelProductsParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    cdsGridData_DATE_UNIT_SHOW_NAME_FOR_REG: TAbmesWideStringField;
    pnlTogglePeriodLabelsExtraInfo: TPanel;
    btnTogglePeriodLabelsExtraInfo: TSpeedButton;
    pdsGridDataParamsBRANCH_CODE: TAbmesFloatField;
    cdsSaleExpGroupsParamsBRANCH_CODE: TAbmesFloatField;
    procedure pdsGridDataParamsCHOSEN_PRODUCTSChange(Sender: TField);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure actPriorUpdate(Sender: TObject);
    procedure actPriorExecute(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure actTogglePeriodLabelsExtraInfoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsProductionOrderBaseTypesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure pdsGridDataParams_BORDER_PROD_ORDER_BASE_TYPE_ABBREVGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure pdsGridDataParams_OBTAINMENT_TYPE_NAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure actFilterProductDocsUpdate(Sender: TObject);
    procedure actFilterProductDocsExecute(Sender: TObject);
    procedure ChartPriceGetAxisLabel(Sender: TChartAxis;
      Series: TChartSeries; ValueIndex: Integer; var LabelText: string);
    procedure actLatePlanExecute(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure actPrintChartExecute(Sender: TObject);
    procedure BarSeriesDblClick(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grdRegisterGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actInvestedValuePercentExecute(Sender: TObject);
    procedure actExcelExportExecute(Sender: TObject);
    procedure BarSeriesGetMarkText(Sender: TChartSeries;
      ValueIndex: Integer; var MarkText: string);
    procedure LineSeriesClick(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure LineSeriesGetMarkText(Sender: TChartSeries;
      ValueIndex: Integer; var MarkText: string);
    procedure pdsGridDataParamsCHOSEN_COMPANIESChange(Sender: TField);
    procedure ChartPriceAfterDraw(Sender: TObject);
    procedure actInvestedValuePercentUpdate(Sender: TObject);
    procedure grdRegisterDblClick(Sender: TObject);
    procedure cdsBorderDealTypesBeforeOpen(DataSet: TDataSet);
    procedure cdsBorderDealTypesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure LineSeriesAfterDrawValues(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure cdsGridDataFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure actTogglePeriodLabelsExtraInfoUpdate(Sender: TObject);
    procedure PercentFieldsGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    FProductClass: TProductClass;
    FBorderRelType: TBorderRelType;
    FBorderProdOrderBaseType: TBorderProdOrderBaseType;
    FOriginalFormCaption: string;
    FShowInvestedValues: Boolean;
    FserValueAddedVisibleMarks: array of Boolean;
    FserDensityVisibleMarks: array of Boolean;
    FCurrentDateUnitNo: Integer;
    FChartPriceSeriesClickFixer: TDBChartSeriesClickFixer;
    procedure ChosenProductsChange;
    procedure ChosenCompaniesChange;
    procedure RefreshChart;
    function ChartLeftAxisCaption: string;
    procedure ShowSaleExpGroups(ADateUnitNo: Integer; IsPlan: Boolean;
      AObtainmentType: TObtainmentType);
    procedure ShowDeliveries(ADateUnitNo: Integer; IsPlan: Boolean;
      AObtainmentType: TObtainmentType);
    procedure ShowPlanOrReal(ADateUnitNo: Integer; IsPlan: Boolean;
      AObtainmentType: TObtainmentType);
    procedure SetRegisterColumns;
    procedure ShowParRelProducts(ADateUnitNo: Integer;
      AParRelProductsOrientation: TParRelProductsOrientation;
      AObtainmentType: TObtainmentType);
    procedure SetSeries;
    procedure ColumnOrBarDblClick(AFieldName: string; ADateUnitNo: Integer);
    procedure CalcValueAddedDensity;
    procedure CalcAggregates;
  protected
    class function CanUseDocs: Boolean; override;
    function GetOriginalFormCaption: string; override;
    procedure DoBeforeShow; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
      AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
      AProductClass: TProductClass;
      ABorderRelType: TBorderRelType;
      ABorderProdOrderBaseType: TBorderProdOrderBaseType): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient; ADataSet: TDataSet;
      AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
      AProductClass: TProductClass;
      ABorderRelType: TBorderRelType;
      ABorderProdOrderBaseType: TBorderProdOrderBaseType); reintroduce; virtual;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, uXMLUtils, uTreeClientUtils, uClientUtils, uPeriods, uUtils,
  JclDateTime, uClientPeriods, fEstPricesCompareGraphFilter,
  DateUtils, StrUtils, Math, AbmesDialogs, JclStrings, fSaleExpGroups,
  uCompanyClientUtils, fParRelProducts, fDeliveries, uUserActivityConsts,
  uExcelExport, uSaleDealTypes, uDeliveryDealTypes, uGraphUtils, uClientDateTime;

{$R *.dfm}

const
  DefaultPeriod: TPeriod = perMonth;
  DefaultDateUnitCount = 12;
  GraphTopMarginPart = 0.08;
  GraphBottomMarginPart = 0.05;
  BarOffsetPercent = 60;
  CompareBarWidthPercent = 40;
  SingleBarWidthPercent = 70;

  PrintLabelsFontSize = 6;
  PrintTitleFontSize = 8;
  PrintMarksFontSize = 4;

resourcestring
  SEstimationPrefix = 'Перспектива';
  SInvestedValueAbbrev = 'ВС1';
  SValueAddedAbbrev = 'ИР1';
  SValueGainedAbbrev = 'ПС';

{ TfmEstPricesCompareGraph }

procedure TfmEstPricesCompareGraph.OpenDataSets;
begin
  cdsTimeUnits.Open;
  cdsRounders.Open;
  cdsBorderDealTypes.Open;
  cdsProductionOrderBaseTypes.Open;
  inherited;
end;

procedure TfmEstPricesCompareGraph.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;

  pdsGridDataParams.Edit;
  try
    pdsGridDataParamsDATE_UNIT_CODE.AsInteger:= GetPeriodConst(DefaultPeriod);
    pdsGridDataParamsDATE_UNIT_COUNT.AsInteger:= DefaultDateUnitCount;
    pdsGridDataParamsBEGIN_DATE.AsDateTime:=
      IncDate(GetPeriodFirstDate(ContextDate, DefaultPeriod), DefaultPeriod, -(DefaultDateUnitCount div 2));
    pdsGridDataParamsUSE_DEFAULT_ROUNDER.AsBoolean:= True;

    ChosenProductsChange;
    ChosenCompaniesChange;

    pdsGridDataParams.Post;
  except
    pdsGridDataParams.Cancel;
    raise;
  end;
end;

procedure TfmEstPricesCompareGraph.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;

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

  if (pdsGridDataParamsVALUES_ORIGIN.AsInteger <> epcgPlanAndReal) then
    pdsGridDataParamsBRANCH_CODE.Clear;
end;

procedure TfmEstPricesCompareGraph.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if pdsGridDataParamsUSE_DEFAULT_ROUNDER.AsBoolean then
    begin
      pdsGridDataParams_USE_ROUNDER.AsVariant:= pdsGridDataParamsDEFAULT_ROUNDER.AsVariant;
      pdsGridDataParams_USE_ROUNDER_NAME.AsVariant:= pdsGridDataParams_DEFAULT_ROUNDER_NAME.AsVariant;
    end
  else
    begin
      pdsGridDataParams_USE_ROUNDER.AsVariant:= pdsGridDataParamsROUNDER.AsVariant;
      pdsGridDataParams_USE_ROUNDER_NAME.AsVariant:= pdsGridDataParams_ROUNDER_NAME.AsVariant;
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

procedure TfmEstPricesCompareGraph.pdsGridDataParamsCHOSEN_COMPANIESChange(
  Sender: TField);
begin
  inherited;
  ChosenCompaniesChange;
end;

procedure TfmEstPricesCompareGraph.pdsGridDataParamsCHOSEN_PRODUCTSChange(
  Sender: TField);
begin
  inherited;
  ChosenProductsChange;
end;

procedure TfmEstPricesCompareGraph.pdsGridDataParams_BORDER_PROD_ORDER_BASE_TYPE_ABBREVGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

procedure TfmEstPricesCompareGraph.pdsGridDataParams_OBTAINMENT_TYPE_NAMEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  AllWhenNullGetText(Sender, Text, DisplayText);
end;

function TfmEstPricesCompareGraph.ChartLeftAxisCaption: string;
begin
  Result:= LoginContext.BaseCurrencyAbbrev;

  if (pdsGridDataParams_USE_ROUNDER.AsFloat <> 1) then
    Result:= pdsGridDataParams_USE_ROUNDER_NAME.AsString + ' ' + Result;
end;

procedure TfmEstPricesCompareGraph.ChartPriceAfterDraw(Sender: TObject);
begin
  inherited;

  with ChartPrice do
    lblStartDate.Top:= LeftAxis.CalcYPosValue(LeftAxis.Minimum) + 5;

  lblEndDate.Top:= lblStartDate.Top + lblStartDate.Height + 3;
end;

procedure TfmEstPricesCompareGraph.ChartPriceGetAxisLabel(
  Sender: TChartAxis; Series: TChartSeries; ValueIndex: Integer;
  var LabelText: string);
var
  SavedLabelText: string;
begin
  inherited;
  SavedLabelText:= LabelText;
  if (Sender = ChartPrice.BottomAxis) then
    LabelText:=
      cdsGridData.PreserveBookmark/
        function: string begin
          if (SavedLabelText <> '') and
             cdsGridData.Locate('DATE_UNIT_NO', SavedLabelText, []) then
            begin
              if actTogglePeriodLabelsExtraInfo.Checked then
                Result:= cdsGridData_DATE_UNIT_SHOW_NAME_EX.AsString
              else
                Result:= cdsGridData_DATE_UNIT_SHOW_NAME.AsString;

              if (cdsGridDataDATE_UNIT_WORKDAYS.AsInteger = 0) then
                Result:= MarkDateStringAsDayOff(Result);
            end
          else
            Result:= ' ';
        end;
end;

procedure TfmEstPricesCompareGraph.RefreshChart;
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
      serZeroLine.Clear;
      for i:= 0 to pdsGridDataParamsDATE_UNIT_COUNT.AsInteger + 1 do
        serZeroLine.Add(0);

      ChartPrice.LeftAxis.Title.Caption:= ChartLeftAxisCaption;

      Period:= GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger);

      ChartPrice.Foot.Text.Text:= SToDate + DateToStr(ContextDate) + '     .';
      lblStartDate.Caption:= FormatPeriodDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, Period);
      lblEndDate.Caption:= FormatPeriodDate(pdsGridDataParamsEND_DATE.AsDateTime, Period);

      SetSeries;

      if not cdsGridData.IsEmpty then
        begin
          MinLeftAxisValue:= 0;
          MaxLeftAxisValue:= 0;

          cdsGridData.First;
          while not cdsGridData.Eof do
            begin
              for i:= 0 to ChartPrice.SeriesList.Count - 1 do
                if ChartPrice.SeriesList[i].Active and
                   (ChartPrice.SeriesList[i].DataSource = cdsGridData) and
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
          ChartPrice.LeftAxis.Minimum:= MinLeftAxisValue - (Delta * GraphBottomMarginPart);
          ChartPrice.LeftAxis.Maximum:= MaxLeftAxisValue + (Delta * GraphTopMarginPart);
        end
      else
        ChartPrice.LeftAxis.Automatic:= True;

      ChartPrice.BottomAxis.Automatic:= (pdsGridDataParamsDATE_UNIT_COUNT.AsInteger = 1);
      ChartPrice.BottomAxis.Minimum:= 0;
      ChartPrice.BottomAxis.Maximum:= pdsGridDataParamsDATE_UNIT_COUNT.AsInteger + 1;

      ChartPrice.RefreshData;
    finally
      cdsGridData.Bookmark:= b;
    end;
  finally
    cdsGridData.EnableControls;
  end;
end;

procedure TfmEstPricesCompareGraph.BarSeriesGetMarkText(
  Sender: TChartSeries; ValueIndex: Integer; var MarkText: string);
var
  HasHigherSeries: Boolean;
  i: Integer;
  b: TBookmark;
begin
  inherited;

  if VarIsNullOrEmpty((Sender as TBarSeries).YValue[ValueIndex]) then
    HasHigherSeries:= True
  else
    begin
      HasHigherSeries:= False;

      for i:= 0 to ChartPrice.SeriesCount - 1 do
        if (ChartPrice.Series[i] is TBarSeries) and
           ((ChartPrice.Series[i] as TBarSeries).OffsetPercent = (Sender as TBarSeries).OffsetPercent) and
           (not VarIsNullOrEmpty((ChartPrice.Series[i] as TBarSeries).YValue[ValueIndex])) and
           ((ChartPrice.Series[i] as TBarSeries).YValue[ValueIndex] > (Sender as TBarSeries).YValue[ValueIndex]) then
          begin
            HasHigherSeries:= True;
            Break;
          end;
    end;

  MarkText:= '';

  if not HasHigherSeries then
    begin
      b:= cdsGridData.Bookmark;
      try
        cdsGridData.First;
        if cdsGridData.Locate('DATE_UNIT_NO', (Sender as TBarSeries).XValue[ValueIndex], []) then
          begin
            if (Pos('_EST_', Sender.YValues.ValueSource) > 0) then
              MarkText:= cdsGridData__GRAPH_EST_LABEL.DisplayText;

            if (Pos('_PLAN_', Sender.YValues.ValueSource) > 0) or
               (Pos('_REAL_', Sender.YValues.ValueSource) > 0) then
              MarkText:= cdsGridData__GRAPH_PLAN_AND_REAL_LABEL.DisplayText;
          end;
      finally
        cdsGridData.Bookmark:= b;
      end;
    end;
end;

procedure TfmEstPricesCompareGraph.SetDataParams(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
  AProductClass: TProductClass;
  ABorderRelType: TBorderRelType;
  ABorderProdOrderBaseType: TBorderProdOrderBaseType);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode,
    ADefaultsOrigin, AFilterFormEnabled);

  FProductClass:= AProductClass;
  FBorderRelType:= ABorderRelType;

  if (ABorderRelType = brtClient) then
    FBorderProdOrderBaseType:= pobtSaleCover
  else
    FBorderProdOrderBaseType:= ABorderProdOrderBaseType;

  cdsGridData.Params.ParamByName('PRODUCT_CLASS_CODE').AsInteger:=
    ProductClassToInt(FProductClass);
  cdsGridData.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:=
    BorderRelTypeToInt(FBorderRelType);
  cdsGridData.Params.ParamByName('BORDER_PROD_ORDER_BASE_TYPE').AsInteger:=
    ProdOrderBaseTypeToInt(FBorderProdOrderBaseType);
end;

procedure TfmEstPricesCompareGraph.SetRegisterColumns;
var
  i: Integer;
  v: Boolean;
begin
  grdRegister.Columns.BeginUpdate;
  try
    for i:= 0 to grdRegister.Columns.Count - 1 do
      begin
        v:= True;

        if (Pos('_PLAN_REM_', grdRegister.Columns[i].FieldName) > 0) then
          v:=
            v and
            ( Sign(Pos('FUTURE', grdRegister.Columns[i].Footer.FieldName)) =
              Ord(not actLatePlan.Checked));

        if (Pos('_LEASE_', grdRegister.Columns[i].FieldName) > 0) then
          v:= v and (FProductClass = pcNormal);

        if EndsStr('_IV', grdRegister.Columns[i].FieldName) then
          v:= v and not actInvestedValuePercent.Checked;

        if EndsStr('_IV_PART', grdRegister.Columns[i].FieldName) then
          v:= v and actInvestedValuePercent.Checked;

        if (i > 0) then
          begin
            if (grdRegister.Columns[i].Width < 100) then
              v:= v and (FBorderRelType = brtClient)
            else
              v:= v and (FBorderRelType = brtVendor);
          end;

        grdRegister.Columns[i].Visible:= v;
      end;
  finally
    grdRegister.Columns.EndUpdate;
  end;
end;

procedure TfmEstPricesCompareGraph.SetSeries;

  procedure SetBarSeriesWidthAndOffset(ASeries: TBarSeries; AOffsetSign: Integer);
  begin
    if (pdsGridDataParamsVALUES_ORIGIN.AsInteger = epcgCompare) then
      begin
        ASeries.BarWidthPercent:= CompareBarWidthPercent;
        ASeries.OffsetPercent:= AOffsetSign * BarOffsetPercent;
      end
    else
      begin
        ASeries.BarWidthPercent:= SingleBarWidthPercent;
        ASeries.OffsetPercent:= 0;
      end;
  end;  { SetBarSeriesWidthAndOffset }

const
  abbrevs: array[1..3] of string =
    (SInvestedValueAbbrev, SValueAddedAbbrev, SValueGainedAbbrev);

var
  i: Integer;
  ser: TBarSeries;
  a: Boolean;
  t, abbr: string;
  p: Integer;
begin
  for i:= 0 to ChartPrice.SeriesList.Count - 1 do
    if ChartPrice.SeriesList[i] is TBarSeries then
      begin
        ser:= ChartPrice.SeriesList[i] as TBarSeries;

        a:= True;

        if (Pos('_EST_', ser.YValues.ValueSource) > 0) then
          begin
            a:= a and (pdsGridDataParamsVALUES_ORIGIN.AsInteger in [epcgCompare, epcgEstimations]);
            SetBarSeriesWidthAndOffset(ser, -1);
          end;

        if (Pos('_PLAN_', ser.YValues.ValueSource) > 0) or
           (Pos('_REAL_', ser.YValues.ValueSource) > 0) then
          begin
            a:= a and (pdsGridDataParamsVALUES_ORIGIN.AsInteger in [epcgCompare, epcgPlanAndReal]);
            SetBarSeriesWidthAndOffset(ser, +1);
          end;

        if (Pos('_LEASE_', ser.YValues.ValueSource) > 0) then
          a:= a and (FProductClass = pcNormal);

        if EndsStr('_IV', ser.YValues.ValueSource) then
          a:= a and (FBorderRelType = brtClient);

        ser.Active:= a;

        if (FBorderRelType = brtVendor) then
          begin
            t:= ser.Title;

            for abbr in abbrevs do
              begin
                p:= Pos(' ' + abbr, t);
                if (p > 0) then
                  System.Delete(t, p, Length(' ' + abbr));
              end;

            ser.Title:= t;
          end;
      end;  { if }

  serValueAddedDensity.Active:=
    (FBorderRelType = brtClient) and
    (pdsGridDataParamsVALUES_ORIGIN.AsInteger in [epcgCompare, epcgPlanAndReal]) and
    FShowInvestedValues;

  serDensityWithoutLatePlan.Active:=
    (FBorderRelType = brtClient) and
    (pdsGridDataParamsVALUES_ORIGIN.AsInteger in [epcgCompare, epcgPlanAndReal]) and
    (not actLatePlan.Checked);

  serDensityWithLatePlan.Active:=
    (FBorderRelType = brtClient) and
    (pdsGridDataParamsVALUES_ORIGIN.AsInteger in [epcgCompare, epcgPlanAndReal]) and
    actLatePlan.Checked;
end;

class function TfmEstPricesCompareGraph.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
  AProductClass: TProductClass;
  ABorderRelType: TBorderRelType;
  ABorderProdOrderBaseType: TBorderProdOrderBaseType): Boolean;
var
  f: TfmEstPricesCompareGraph;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled,
      AProductClass, ABorderRelType, ABorderProdOrderBaseType);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmEstPricesCompareGraph.ShowParRelProducts(
  ADateUnitNo: Integer;
  AParRelProductsOrientation: TParRelProductsOrientation;
  AObtainmentType: TObtainmentType);
var
  FieldName: string;
  BeginDate: TDateTime;
  EndDate: TDateTime;
begin
  FieldName:= grdData.Columns[grdData.Col-1].FieldName;

  BeginDate:=
    IncDate(
      pdsGridDataParamsBEGIN_DATE.AsDateTime,
      GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger),
      ADateUnitNo - 1
    );
  EndDate:= IncDate(BeginDate, GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger), 1) - 1;

  cdsParRelProductsParams.CreateDataSet;
  try
    cdsParRelProductsParams.Append;
    try
      cdsParRelProductsParamsCHOSEN_PRODUCTS.AsVariant:= pdsGridDataParamsCHOSEN_PRODUCTS.AsVariant;
      cdsParRelProductsParamsOBTAINMENT_TYPE_CODE.AsInteger:= ObtainmentTypeToInt(AObtainmentType);
      cdsParRelProductsParamsBEGIN_DATE.AsDateTime:= BeginDate;
      cdsParRelProductsParamsEND_DATE.AsDateTime:= EndDate;
      cdsParRelProductsParamsPRODUCT_COMMON_LEVEL.AsVariant:= pdsGridDataParamsPRODUCT_COMMON_LEVEL.AsVariant;
      cdsParRelProductsParamsPARTNER_COMMON_LEVEL.AsVariant:= pdsGridDataParamsPARTNER_COMMON_LEVEL.AsVariant;
      cdsParRelProductsParamsMIN_PRP_STATUS_CODE.AsVariant:= pdsGridDataParamsMIN_PRP_STATUS_CODE.AsVariant;
      cdsParRelProductsParamsMAX_PRP_STATUS_CODE.AsVariant:= pdsGridDataParamsMAX_PRP_STATUS_CODE.AsVariant;

      cdsParRelProductsParams.Post;
    except
      cdsParRelProductsParams.Cancel;
      raise;
    end;

    TfmParRelProducts.ShowForm(
      dmDocClient,
      cdsParRelProductsParams,
      emReadOnly,
      doNone,
      False,
      FProductClass,
      FBorderRelType,
      FBorderProdOrderBaseType,
      AParRelProductsOrientation,
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False
    );
  finally
    cdsParRelProductsParams.Close;
  end;
end;

procedure TfmEstPricesCompareGraph.ShowPlanOrReal(ADateUnitNo: Integer;
  IsPlan: Boolean; AObtainmentType: TObtainmentType);
begin
  case FBorderRelType of
    brtClient:
      ShowSaleExpGroups(ADateUnitNo, IsPlan, AObtainmentType);
    brtVendor:
      ShowDeliveries(ADateUnitNo, IsPlan, AObtainmentType);
  else
    raise Exception.Create('ShowPlanOrReal: Unsupported BorderRelType');
  end;
end;

procedure TfmEstPricesCompareGraph.ShowSaleExpGroups(
  ADateUnitNo: Integer; IsPlan: Boolean;
  AObtainmentType: TObtainmentType);
begin
  cdsSaleExpGroupsParams.CreateDataSet;
  try
    cdsSaleExpGroupsParams.Append;
    try
      cdsSaleExpGroupsParamsSALE_DEAL_TYPE_CODE.AsVariant:=
        IntToVar(ObtainmentTypeToSaleDealType(AObtainmentType));

      cdsSaleExpGroupsParamsCHOSEN_COMPANIES.AsVariant:=
        pdsGridDataParamsCHOSEN_COMPANIES.AsVariant;

      cdsSaleExpGroupsParamsCHOSEN_PRODUCTS.AsVariant:=
        pdsGridDataParamsCHOSEN_PRODUCTS.AsVariant;

      cdsSaleExpGroupsParamsMIN_SALE_SHIPMENT_STATE_CODE.AsFloat:= 1;
      if IsPlan then
        cdsSaleExpGroupsParamsMAX_SALE_SHIPMENT_STATE_CODE.AsFloat:= 8
      else
        cdsSaleExpGroupsParamsMAX_SALE_SHIPMENT_STATE_CODE.AsFloat:= 9;

      cdsSaleExpGroupsParamsBEGIN_SHIPMENT_DATE.AsDateTime:=
        IncDate(
          pdsGridDataParamsBEGIN_DATE.AsDateTime,
          GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger),
          ADateUnitNo - 1
        );

      cdsSaleExpGroupsParamsEND_SHIPMENT_DATE.AsDateTime:=
        IncDate(
          cdsSaleExpGroupsParamsBEGIN_SHIPMENT_DATE.AsDateTime,
          GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger),
          1
        ) - 1;

      cdsSaleExpGroupsParamsBRANCH_CODE.Assign(pdsGridDataParamsBRANCH_CODE);

      cdsSaleExpGroupsParams.Post;
    except
      cdsSaleExpGroupsParams.Cancel;
      raise;
    end;  { try }

    TfmSaleExpGroups.ShowForm(dmDocClient, cdsSaleExpGroupsParams, EditMode, False, FProductClass);
  finally
    cdsSaleExpGroupsParams.Close;
  end;
end;

procedure TfmEstPricesCompareGraph.ShowDeliveries(ADateUnitNo: Integer;
  IsPlan: Boolean; AObtainmentType: TObtainmentType);
begin
  cdsDeliveriesParams.CreateDataSet;
  try
    cdsDeliveriesParams.Append;
    try
      cdsDeliveriesParamsDELIVERY_DEAL_TYPE_CODE.AsVariant:=
        IntToVar(ObtainmentAndBpobTypeToDeliveryDealType(AObtainmentType, FBorderProdOrderBaseType));

      cdsDeliveriesParamsCHOSEN_COMPANIES.AsVariant:=
        pdsGridDataParamsCHOSEN_COMPANIES.AsVariant;

      cdsDeliveriesParamsCHOSEN_PRODUCTS.AsVariant:=
        pdsGridDataParamsCHOSEN_PRODUCTS.AsVariant;

      cdsDeliveriesParamsMIN_STATUS_CODE.AsFloat:= 1;
      if IsPlan then
        cdsDeliveriesParamsMAX_STATUS_CODE.AsFloat:= 5
      else
        cdsDeliveriesParamsMAX_STATUS_CODE.AsFloat:= 6;

      cdsDeliveriesParamsBEGIN_DELIVERY_DATE.AsDateTime:=
        IncDate(
          pdsGridDataParamsBEGIN_DATE.AsDateTime,
          GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger),
          ADateUnitNo - 1
        );

      cdsDeliveriesParamsEND_DELIVERY_DATE.AsDateTime:=
        IncDate(
          cdsDeliveriesParamsBEGIN_DELIVERY_DATE.AsDateTime,
          GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger),
          1
        ) - 1;

      cdsDeliveriesParams.Post;
    except
      cdsDeliveriesParams.Cancel;
      raise;
    end;  { try }

    TfmDeliveries.ShowForm(dmDocClient, cdsDeliveriesParams, EditMode, doNone, FBorderProdOrderBaseType, False, False, FProductClass);
  finally
    cdsDeliveriesParams.Close;
  end;
end;

procedure TfmEstPricesCompareGraph.actExcelExportExecute(Sender: TObject);
begin
//  inherited;
  GridExcelExport(grdRegister);
end;

procedure TfmEstPricesCompareGraph.actFilterProductDocsExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl),
    pdsGridDataParams_PRODUCT_CODE.AsInteger);
end;

procedure TfmEstPricesCompareGraph.actFilterProductDocsUpdate(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= not pdsGridDataParams_PRODUCT_CODE.IsNull;
      ImageIndex:= pdsGridDataParams_PRODUCT_HAS_DOC_ITEMS.AsInteger;
    end;
end;

procedure TfmEstPricesCompareGraph.actFormUpdate(Sender: TObject);
begin
  inherited;
  btnLatePlan.Visible:=
    (pdsGridDataParamsVALUES_ORIGIN.AsInteger in [epcgCompare, epcgPlanAndReal]);
end;

procedure TfmEstPricesCompareGraph.actInvestedValuePercentExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetRegisterColumns;
  RefreshChart;
  CalcAggregates;
end;

procedure TfmEstPricesCompareGraph.actInvestedValuePercentUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= (FBorderRelType = brtClient);
end;

procedure TfmEstPricesCompareGraph.actLatePlanExecute(Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  SetRegisterColumns;
  RefreshChart;
  CalcAggregates;
end;

procedure TfmEstPricesCompareGraph.actNextExecute(Sender: TObject);
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

procedure TfmEstPricesCompareGraph.actNextUpdate(Sender: TObject);
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

procedure TfmEstPricesCompareGraph.actPrintChartExecute(Sender: TObject);
var
  s: TStringList;
begin
  inherited;
  s:= TStringList.Create;
  try
    s.Add(Caption);
    s.Add(lblProduct.Caption + ': ' + pdsGridDataParams_PRODUCT_NAME.DisplayText + '    ' + pdsGridDataParams_PRODUCT_NO.DisplayText);
    s.Add(lblPartner.Caption + ': ' + pdsGridDataParams_COMPANY_SHORT_NAME.DisplayText + '    ' + pdsGridDataParams_COMPANY_NO.DisplayText);
    s.Add(lblPeriod.Caption + ': ' + pdsGridDataParams_DATE_UNITS.DisplayText);
    PrintChart(ChartPrice, s);
  finally
    FreeAndNil(s);
  end;
end;

procedure TfmEstPricesCompareGraph.actPriorExecute(Sender: TObject);
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

procedure TfmEstPricesCompareGraph.actPriorUpdate(Sender: TObject);
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

procedure TfmEstPricesCompareGraph.actTogglePeriodLabelsExtraInfoExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  RefreshChart;
end;

procedure TfmEstPricesCompareGraph.actTogglePeriodLabelsExtraInfoUpdate(
  Sender: TObject);
begin
  inherited;
  btnTogglePeriodLabelsExtraInfo.Down:= (Sender as TAction).Checked;
end;

procedure TfmEstPricesCompareGraph.BarSeriesDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ColumnOrBarDblClick(Sender.YValues.ValueSource, ValueIndex + 1);
end;

procedure TfmEstPricesCompareGraph.CalcValueAddedDensity;
var
  SaveFiltered: Boolean;
  YearValueAdded: Real;
begin
  cdsGridData.DisableControls;
  try
    SaveFiltered:= cdsGridData.Filtered;
    cdsGridData.Filtered:= False;
    try
      cdsGridData.First;

      Assert(cdsGridData.IsEmpty or (cdsGridDataYEAR_DATE_UNIT_NO.AsInteger = 1));

      YearValueAdded:= 0;
      while not cdsGridData.Eof do
        begin
          if (cdsGridDataYEAR_DATE_UNIT_NO.AsInteger = 1) then
            YearValueAdded:= 0;

          YearValueAdded:= YearValueAdded + cdsGridData_VALUE_ADDED.AsFloat;

          cdsGridData.Edit;
          try
            cdsGridDataVALUE_ADDED_DENSITY.AsFloat:=
              YearValueAdded / cdsGridDataYEAR_DATE_UNIT_NO.AsInteger;

            cdsGridData.Post;
          except
            cdsGridData.Cancel;
            raise;
          end;

          cdsGridData.Next;
        end;
    finally
      cdsGridData.Filtered:= SaveFiltered;
    end;
  finally
    cdsGridData.EnableControls;
  end;
end;

class function TfmEstPricesCompareGraph.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmEstPricesCompareGraph.cdsBorderDealTypesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsBorderDealTypes.Params.ParamByName('BORDER_REL_TYPE_CODE').AsInteger:=
    BorderRelTypeToInt(FBorderRelType);
  cdsBorderDealTypes.Params.ParamByName('PROD_ORDER_BASE_TYPE_CODE').AsInteger:=
    ProdOrderBaseTypeToInt(FBorderProdOrderBaseType);
end;

procedure TfmEstPricesCompareGraph.cdsBorderDealTypesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (IntToObtainmentType(cdsBorderDealTypesOBTAINMENT_TYPE_CODE.AsInteger) in
     [otAcquire, otLease]);
end;

procedure TfmEstPricesCompareGraph.cdsGridDataAfterGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;

  CheckEditMode(pdsGridDataParams);
  pdsGridDataParamsDEFAULT_ROUNDER.AsFloat:= Max(VarToFloat(OwnerData), 1);
  pdsGridDataParams.Post;

  Assert(pdsGridDataParams_USE_ROUNDER.AsFloat <> 0);
end;

procedure TfmEstPricesCompareGraph.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  grdRegister.Columns[0].Title.Caption:=
    GetPeriodTypeName(GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger));

  pnlBeginDate.Caption:=
    DateToStr(pdsGridDataParamsBEGIN_DATE.AsDateTime);
  pnlBeginDateWeekFormat.Caption:=
    JclDateTime.FormatDateTime('ww\e\iiii', pdsGridDataParamsBEGIN_DATE.AsDateTime);

  pnlEndDate.Caption:=
    DateToStr(pdsGridDataParamsEND_DATE.AsDateTime);
  pnlEndDateWeekFormat.Caption:=
    JclDateTime.FormatDateTime('ww\e\iiii', pdsGridDataParamsEND_DATE.AsDateTime);

  SetLength(FserValueAddedVisibleMarks, 0);
  SetLength(FserDensityVisibleMarks, 0);

  CalcValueAddedDensity;
  RefreshChart;
  CalcAggregates;
end;

procedure TfmEstPricesCompareGraph.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  FCurrentDateUnitNo:=
    GetTimeUnitCount(
      pdsGridDataParamsBEGIN_DATE.AsDateTime,
      GetPeriodFirstDate(ContextDate, GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger)),
      GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger)
    ) + 1;
end;

procedure TfmEstPricesCompareGraph.cdsGridDataCalcFields(
  DataSet: TDataSet);

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

  procedure CalcInvestedValuePart(PartField, InvestedValue, ValueGainedField: TField);
  begin
    if (not FShowInvestedValues) and (ValueGainedField.AsFloat > 0) then
      PartField.AsFloat:= 0
    else
      begin
        if (ValueGainedField.AsFloat = 0) then
          PartField.Clear
        else
          PartField.AsFloat:= InvestedValue.AsFloat / ValueGainedField.AsFloat;
      end;
  end;  { CalcInvestedValuePart }

  function PercentMarkText(APercentText: string): string;
  begin
    if (APercentText = SNotAvailable) then
      Result:= APercentText
    else
      Result:= APercentText + '%';
  end;

const
  GraphPrefix = '_GRAPH_';
  RegisterPrefix = '_REGISTER_';
var
  Period: TPeriod;
  i: Integer;
  PastField: TField;
  FutureField: TField;
  Budget: Real;
  LastUnderscorePos: Integer;
  RegisterEstValueGained: Real;
  RegisterPlanRemValueGained: Real;
  RegisterRealValueGained: Real;
  s: string;
begin
  inherited;

  Period:= GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger);

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

  for i:= 0 to cdsGridData.FieldCount - 1 do
    if StartsStr(GraphPrefix, cdsGridData.Fields[i].FieldName) then
      cdsGridData.Fields[i].AsVariant:=
        FloatToVar(
          RealRound(
            cdsGridData.FieldByName(StringReplace(cdsGridData.Fields[i].FieldName, GraphPrefix, '', [])).AsFloat /
            pdsGridDataParams_USE_ROUNDER.AsFloat
          )
        );

  for i:= 0 to cdsGridData.FieldCount - 1 do
    if StartsStr(RegisterPrefix, cdsGridData.Fields[i].FieldName) and
       not EndsStr('_IV_PART', cdsGridData.Fields[i].FieldName) then
      begin
        PastField:=
          cdsGridData.FieldByName(StringReplace(cdsGridData.Fields[i].FieldName, RegisterPrefix, 'PAST_', []));
        FutureField:=
          cdsGridData.FieldByName(StringReplace(cdsGridData.Fields[i].FieldName, RegisterPrefix, 'FUTURE_', []));

        Budget:= 0;
        if (cdsGridData.Fields[i] = cdsGridData_REGISTER_PLAN_REM_ACQUIRE_VA) then
          Budget:= cdsGridDataPLAN_REM_BUDGET_PRICE.AsFloat;
        if (cdsGridData.Fields[i] = cdsGridData_REGISTER_REAL_ACQUIRE_VA) then
          Budget:= cdsGridDataREAL_BUDGET_PRICE.AsFloat;

        if (Pos('_PLAN_REM_', cdsGridData.Fields[i].FieldName) > 0) and
           (not actLatePlan.Checked) then
          cdsGridData.Fields[i].AsVariant:= FloatToVar(FutureField.AsFloat - Budget)
        else
          cdsGridData.Fields[i].AsVariant:= FloatToVar(PastField.AsFloat + FutureField.AsFloat - Budget);

        if (not FShowInvestedValues) and
           (EndsStr('_IV', cdsGridData.Fields[i].FieldName) or
            EndsStr('_VA', cdsGridData.Fields[i].FieldName)) then
           begin
             LastUnderscorePos:= CharLastPos(cdsGridData.Fields[i].FieldName, '_');
             if not cdsGridData.FieldByName(LeftStr(cdsGridData.Fields[i].FieldName, LastUnderscorePos) + 'VG').IsNull then
               cdsGridData.Fields[i].AsFloat:= 0;
           end;
      end;


  CalcInvestedValuePart(
    cdsGridData_REGISTER_EST_ACQUIRE_IV_PART,
    cdsGridData_REGISTER_EST_ACQUIRE_IV,
    cdsGridData_REGISTER_EST_ACQUIRE_VG
   );

  CalcInvestedValuePart(
    cdsGridData_REGISTER_PLAN_REM_ACQUIRE_IV_PART,
    cdsGridData_REGISTER_PLAN_REM_ACQUIRE_IV,
    cdsGridData_REGISTER_PLAN_REM_ACQUIRE_VG
   );

  CalcInvestedValuePart(
    cdsGridData_REGISTER_REAL_ACQUIRE_IV_PART,
    cdsGridData_REGISTER_REAL_ACQUIRE_IV,
    cdsGridData_REGISTER_REAL_ACQUIRE_VG
   );

  if (cdsGridData_REGISTER_REAL_ACQUIRE_VG.AsFloat = 0) then
    cdsGridData_REGISTER_REAL_ACQUIRE_IV_PART.Clear
  else
    cdsGridData_REGISTER_REAL_ACQUIRE_IV_PART.AsFloat:=
      cdsGridData_REGISTER_REAL_ACQUIRE_IV.AsFloat /
      cdsGridData_REGISTER_REAL_ACQUIRE_VG.AsFloat;

  cdsGridData_VALUE_ADDED.AsFloat:=
    cdsGridData_REGISTER_PLAN_REM_ACQUIRE_VA.AsFloat +
    cdsGridData_REGISTER_REAL_ACQUIRE_VA.AsFloat +
    cdsGridData_REGISTER_PLAN_REM_LEASE_VG.AsFloat +
    cdsGridData_REGISTER_REAL_LEASE_VG.AsFloat;

  cdsGridData__GRAPH_VALUE_ADDED.AsVariant:=
    FloatToVar(
      RealRound(
        cdsGridData_VALUE_ADDED.AsFloat /
        pdsGridDataParams_USE_ROUNDER.AsFloat
      )
    );

  StackFields([
    cdsGridData_GRAPH_PAST_EST_LEASE_VG, nil,
    cdsGridData_STACKED_GRAPH_PAST_EST_ACQUIRE_VA, cdsGridData_GRAPH_PAST_EST_ACQUIRE_VA,
    cdsGridData_STACKED_GRAPH_PAST_EST_ACQUIRE_IV, cdsGridData_GRAPH_PAST_EST_ACQUIRE_IV,
    cdsGridData_STACKED_GRAPH_FUTURE_EST_LEASE_VG, cdsGridData_GRAPH_FUTURE_EST_LEASE_VG,
    cdsGridData_STACKED_GRAPH_FUTURE_EST_ACQUIRE_VA, cdsGridData_GRAPH_FUTURE_EST_ACQUIRE_VA,
    cdsGridData_STACKED_GRAPH_FUTURE_EST_ACQUIRE_IV, cdsGridData_GRAPH_FUTURE_EST_ACQUIRE_IV
  ]);

  if actLatePlan.Checked then
    begin
      StackFields([
        cdsGridData_GRAPH_PAST_REAL_LEASE_VG, nil,
        cdsGridData_STACKED_GRAPH_PAST_REAL_ACQUIRE_VA, cdsGridData_GRAPH_PAST_REAL_ACQUIRE_VA,
        cdsGridData_STACKED_GRAPH_PAST_PLAN_REM_LEASE_VG, cdsGridData_GRAPH_PAST_PLAN_REM_LEASE_VG,
        cdsGridData_STACKED_GRAPH_PAST_PLAN_REM_ACQUIRE_VA, cdsGridData_GRAPH_PAST_PLAN_REM_ACQUIRE_VA,
        cdsGridData_STACKED_GRAPH_PAST_REAL_ACQUIRE_IV, cdsGridData_GRAPH_PAST_REAL_ACQUIRE_IV,
        cdsGridData_STACKED_GRAPH_PAST_PLAN_REM_ACQUIRE_IV, cdsGridData_GRAPH_PAST_PLAN_REM_ACQUIRE_IV,
        cdsGridData_STACKED_GRAPH_FUTURE_REAL_LEASE_VG, cdsGridData_GRAPH_FUTURE_REAL_LEASE_VG,
        cdsGridData_STACKED_GRAPH_FUTURE_REAL_ACQUIRE_VA, cdsGridData_GRAPH_FUTURE_REAL_ACQUIRE_VA,
        cdsGridData_STACKED_GRAPH_FUTURE_PLAN_REM_LEASE_VG, cdsGridData_GRAPH_FUTURE_PLAN_REM_LEASE_VG,
        cdsGridData_STACKED_GRAPH_FUTURE_PLAN_REM_ACQUIRE_VA, cdsGridData_GRAPH_FUTURE_PLAN_REM_ACQUIRE_VA,
        cdsGridData_STACKED_GRAPH_FUTURE_REAL_ACQUIRE_IV, cdsGridData_GRAPH_FUTURE_REAL_ACQUIRE_IV,
        cdsGridData_STACKED_GRAPH_FUTURE_PLAN_REM_ACQUIRE_IV, cdsGridData_GRAPH_FUTURE_PLAN_REM_ACQUIRE_IV
      ]);
    end
  else
    begin
      cdsGridData_STACKED_GRAPH_PAST_PLAN_REM_LEASE_VG.Clear;
      cdsGridData_STACKED_GRAPH_PAST_PLAN_REM_ACQUIRE_VA.Clear;
      cdsGridData_STACKED_GRAPH_PAST_PLAN_REM_ACQUIRE_IV.Clear;

      StackFields([
        cdsGridData_GRAPH_PAST_REAL_LEASE_VG, nil,
        cdsGridData_STACKED_GRAPH_PAST_REAL_ACQUIRE_VA, cdsGridData_GRAPH_PAST_REAL_ACQUIRE_VA,
        cdsGridData_STACKED_GRAPH_PAST_REAL_ACQUIRE_IV, cdsGridData_GRAPH_PAST_REAL_ACQUIRE_IV,
        cdsGridData_STACKED_GRAPH_FUTURE_REAL_LEASE_VG, cdsGridData_GRAPH_FUTURE_REAL_LEASE_VG,
        cdsGridData_STACKED_GRAPH_FUTURE_REAL_ACQUIRE_VA, cdsGridData_GRAPH_FUTURE_REAL_ACQUIRE_VA,
        cdsGridData_STACKED_GRAPH_FUTURE_PLAN_REM_LEASE_VG, cdsGridData_GRAPH_FUTURE_PLAN_REM_LEASE_VG,
        cdsGridData_STACKED_GRAPH_FUTURE_PLAN_REM_ACQUIRE_VA, cdsGridData_GRAPH_FUTURE_PLAN_REM_ACQUIRE_VA,
        cdsGridData_STACKED_GRAPH_FUTURE_REAL_ACQUIRE_IV, cdsGridData_GRAPH_FUTURE_REAL_ACQUIRE_IV,
        cdsGridData_STACKED_GRAPH_FUTURE_PLAN_REM_ACQUIRE_IV, cdsGridData_GRAPH_FUTURE_PLAN_REM_ACQUIRE_IV
      ]);
    end;  { if }


  // estimation graph marks
  RegisterEstValueGained:=
    cdsGridData_REGISTER_EST_ACQUIRE_VG.AsFloat +
    cdsGridData_REGISTER_EST_LEASE_VG.AsFloat;

  if (RegisterEstValueGained > 0) then
    cdsGridData__GRAPH_EST_LABEL.AsString:=
       FormatFloat(',0', RegisterEstValueGained / pdsGridDataParams_USE_ROUNDER.AsFloat)
  else
    cdsGridData__GRAPH_PLAN_AND_REAL_LABEL.Clear;

  if actInvestedValuePercent.Checked and
     (cdsGridData__GRAPH_EST_LABEL.AsString <> '') then
    cdsGridData__GRAPH_EST_LABEL.AsString:=
      cdsGridData__GRAPH_EST_LABEL.AsString + #13 +
      PercentMarkText(cdsGridData_REGISTER_EST_ACQUIRE_IV_PART.DisplayText);


  // plan and real graph marks
  RegisterRealValueGained:=
    cdsGridData_REGISTER_REAL_ACQUIRE_VG.AsFloat +
    cdsGridData_REGISTER_REAL_LEASE_VG.AsFloat;

  RegisterPlanRemValueGained:=
    cdsGridData_REGISTER_PLAN_REM_ACQUIRE_VG.AsFloat +
    cdsGridData_REGISTER_PLAN_REM_LEASE_VG.AsFloat;

  if (RegisterRealValueGained > 0) then
    cdsGridData__GRAPH_PLAN_AND_REAL_LABEL.AsString:=
       FormatFloat(',0', RegisterRealValueGained / pdsGridDataParams_USE_ROUNDER.AsFloat)
  else
    cdsGridData__GRAPH_PLAN_AND_REAL_LABEL.Clear;

  if (RegisterPlanRemValueGained > 0) then
    begin
      if (cdsGridData__GRAPH_PLAN_AND_REAL_LABEL.AsString <> '') then
        cdsGridData__GRAPH_PLAN_AND_REAL_LABEL.AsString:=
          cdsGridData__GRAPH_PLAN_AND_REAL_LABEL.AsString + ' / ';

      cdsGridData__GRAPH_PLAN_AND_REAL_LABEL.AsString:=
        cdsGridData__GRAPH_PLAN_AND_REAL_LABEL.AsString +
        FormatFloat(',0', RegisterPlanRemValueGained / pdsGridDataParams_USE_ROUNDER.AsFloat);
    end;

  if actInvestedValuePercent.Checked and
     (cdsGridData__GRAPH_PLAN_AND_REAL_LABEL.AsString <> '') then
    begin

      if (RegisterRealValueGained > 0) then
        s:= PercentMarkText(cdsGridData_REGISTER_REAL_ACQUIRE_IV_PART.DisplayText)
      else
        s:= '';

      if (RegisterPlanRemValueGained > 0) then
        begin
          if (s <> '') then
            s:= s + ' / ';

          s:= s + PercentMarkText(cdsGridData_REGISTER_PLAN_REM_ACQUIRE_IV_PART.DisplayText);
        end;  { if }

      if (s <> '') then
        cdsGridData__GRAPH_PLAN_AND_REAL_LABEL.AsString:=
          cdsGridData__GRAPH_PLAN_AND_REAL_LABEL.AsString + #13 + s;
    end;
end;

procedure TfmEstPricesCompareGraph.cdsGridDataFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=
    (cdsGridDataDATE_UNIT_FIRST_DATE.AsDateTime >= pdsGridDataParamsBEGIN_DATE.AsDateTime);
end;

procedure TfmEstPricesCompareGraph.PercentFieldsGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEstPricesCompareGraph.cdsProductionOrderBaseTypesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (not cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_CODE.IsNull) and
    (cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_CODE.AsInteger in
     [ProdOrderBaseTypeToInt(pobtSaleCover), ProdOrderBaseTypeToInt(pobtEnvCover)]);
end;

procedure TfmEstPricesCompareGraph.ChosenCompaniesChange;
begin
  pdsGridDataParams_COMPANY_CODE.Clear;
  pdsGridDataParams_COMPANY_SHORT_NAME.Clear;
  pdsGridDataParams_COMPANY_NO.Clear;

  if (pdsGridDataParamsCHOSEN_COMPANIES.AsString <> '') then
    begin
      if IsSingleChosenCompany(pdsGridDataParamsCHOSEN_COMPANIES.AsString) then
        begin
          pdsGridDataParams_COMPANY_CODE.AsInteger:=
            SingleChosenCompanyCode(pdsGridDataParamsCHOSEN_COMPANIES.AsString);

          GetCompanyInfo(
            pdsGridDataParams_COMPANY_CODE,
            nil, nil, nil, nil, nil, nil, nil,
            pdsGridDataParams_COMPANY_SHORT_NAME,
            nil, nil, nil, nil, nil, nil, nil,
            pdsGridDataParams_COMPANY_NO);
        end
      else
        pdsGridDataParams_COMPANY_SHORT_NAME.AsString:= CompaniesSet;
    end
  else
    pdsGridDataParams_COMPANY_SHORT_NAME.AsString:= SAllInBrackets;
end;

procedure TfmEstPricesCompareGraph.ChosenProductsChange;
begin
  pdsGridDataParams_PRODUCT_CODE.Clear;
  pdsGridDataParams_PRODUCT_NO.Clear;
  pdsGridDataParams_PRODUCT_NAME.Clear;

  if HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_PRODUCTS.AsString) then
    begin
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
    end
  else
    pdsGridDataParams_PRODUCT_NAME.AsString:= SAllInBrackets;
end;

procedure TfmEstPricesCompareGraph.CloseDataSets;
begin
  inherited;
  cdsBorderDealTypes.Close;
  cdsProductionOrderBaseTypes.Close;
  cdsRounders.Close;
  cdsTimeUnits.Close;
end;

procedure TfmEstPricesCompareGraph.ColumnOrBarDblClick(AFieldName: string;
  ADateUnitNo: Integer);
var
  ObtainmentType: TObtainmentType;
  ParRelProductsOrientation: TParRelProductsOrientation;
begin
  inherited;

  if (Pos('LEASE_', AFieldName) > 0) then
    ObtainmentType:= otLease
  else
    ObtainmentType:= otAcquire;

  if (Pos('_EST_', AFieldName) > 0) then
    begin
      if ShiftIsPressed then
        ParRelProductsOrientation:= prpoPartner
      else
        ParRelProductsOrientation:= prpoProduct;

      ShowParRelProducts(ADateUnitNo, ParRelProductsOrientation, ObtainmentType);
    end
  else
    if (Pos('_PLAN_', AFieldName) > 0) then
      ShowPlanOrReal(ADateUnitNo, True, ObtainmentType)
    else
      if (Pos('_REAL_', AFieldName) > 0) then
        ShowPlanOrReal(ADateUnitNo, False, ObtainmentType);
end;

procedure TfmEstPricesCompareGraph.DoBeforeShow;
var
  MsgParams: TStrings;
begin
  actForm.Caption:= BorderRelTypeCaptions[FProductClass, FBorderRelType];

  MsgParams:=
    CreateCommonMsgParams(
      LoginContext,
      FProductClass,
      FBorderRelType,
      FBorderProdOrderBaseType,
      prpoProduct,
      prpkQuantity,
      prpspikNone,
      prpdikNone,
      False);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  inherited;
end;

procedure TfmEstPricesCompareGraph.FormCreate(Sender: TObject);
begin
  inherited;

  FilterFormClass:= TfmEstPricesCompareGraphFilter;

  pcMain.TabIndex:= 0;
  lblBaseCurrencyValues.Caption:=
    FormatBaseCurrencyAbbrevString(lblBaseCurrencyValues.Caption);

  FShowInvestedValues:= IsLevelOneInvestedValueVisible;

  cdsGridData.Params.ParamByName('SHOW_INVESTED_VALUES').AsInteger:=
    Ord(FShowInvestedValues);

  RegisterFieldsTextVisibility(
    IsLevelOneInvestedValueVisible,
    [ cdsGridData_REGISTER_EST_ACQUIRE_IV,
      cdsGridData_REGISTER_EST_ACQUIRE_IV_PART,
      cdsGridData_REGISTER_EST_ACQUIRE_VA,
      cdsGridData_REGISTER_PLAN_REM_ACQUIRE_IV,
      cdsGridData_REGISTER_PLAN_REM_ACQUIRE_IV_PART,
      cdsGridData_REGISTER_PLAN_REM_ACQUIRE_IV,
      cdsGridData_REGISTER_PLAN_REM_ACQUIRE_IV_PART,
      cdsGridData_REGISTER_PLAN_REM_ACQUIRE_VA,
      cdsGridData_REGISTER_REAL_ACQUIRE_IV,
      cdsGridData_REGISTER_REAL_ACQUIRE_IV_PART,
      cdsGridData_REGISTER_REAL_ACQUIRE_VA]);

  FChartPriceSeriesClickFixer:= TDBChartSeriesClickFixer.Create(ChartPrice);
end;

procedure TfmEstPricesCompareGraph.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FChartPriceSeriesClickFixer);
end;

function TfmEstPricesCompareGraph.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmEstPricesCompareGraph.grdRegisterDblClick(Sender: TObject);
begin
  inherited;
  
  if (not cdsGridData.IsEmpty) and (grdRegister.Col > 1) then
    ColumnOrBarDblClick(
      grdRegister.Columns[grdRegister.Col - 1].FieldName,
      cdsGridDataDATE_UNIT_NO.AsInteger
    );
end;

procedure TfmEstPricesCompareGraph.grdRegisterGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
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

  if (Column.Field = cdsGridData_DATE_UNIT_SHOW_NAME_FOR_REG) then
    begin
      if (cdsGridDataDATE_UNIT_WORKDAYS.AsInteger = 0) then
        AFont.Color:= clRed;

      Background:= DateUnitBackgroundColor[(cdsGridDataDATE_UNIT_LAST_DATE.AsDateTime >= ContextDate), Highlight];
    end;

  if EndsStr('_VA', Column.FieldName) and
     (Column.Field.AsFloat < 0) then
    AFont.Color:= clRed;
end;

procedure TfmEstPricesCompareGraph.Initialize;
begin
  inherited;

  FOriginalFormCaption:= actForm.Caption;

  SetRegisterColumns;
end;

procedure TfmEstPricesCompareGraph.LineSeriesClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;

  if (Sender = serValueAddedDensity) then
    begin
      if (Length(FserValueAddedVisibleMarks) < ValueIndex + 1) then
        SetLength(FserValueAddedVisibleMarks, ValueIndex + 1);
      FserValueAddedVisibleMarks[ValueIndex]:= not FserValueAddedVisibleMarks[ValueIndex];
    end;  { if }

  if (Sender = serDensityWithoutLatePlan) or
     (Sender = serDensityWithLatePlan) then
    begin
      if (Length(FserDensityVisibleMarks) < ValueIndex + 1) then
        SetLength(FserDensityVisibleMarks, ValueIndex + 1);
      FserDensityVisibleMarks[ValueIndex]:= not FserDensityVisibleMarks[ValueIndex];
    end;  { if }

  Sender.Repaint;
end;

procedure TfmEstPricesCompareGraph.LineSeriesGetMarkText(
  Sender: TChartSeries; ValueIndex: Integer; var MarkText: string);
var
  b: TBookmark;
begin
  inherited;

  MarkText:= '';

  if ( (Sender = serValueAddedDensity) and
       (Length(FserValueAddedVisibleMarks) > ValueIndex) and
       FserValueAddedVisibleMarks[ValueIndex] ) or
     ( (Sender = serDensityWithoutLatePlan) and
       (Length(FserDensityVisibleMarks) > ValueIndex) and
       FserDensityVisibleMarks[ValueIndex] ) or
     ( (Sender = serDensityWithLatePlan) and
       (Length(FserDensityVisibleMarks) > ValueIndex) and
       FserDensityVisibleMarks[ValueIndex] ) then
    begin
      b:= cdsGridData.Bookmark;
      try
        cdsGridData.First;
        if cdsGridData.Locate('DATE_UNIT_NO', (Sender as TLineSeries).XValue[ValueIndex], []) then
          begin
            if (Sender = serValueAddedDensity) then
              MarkText:= cdsGridData_GRAPH_VALUE_ADDED_DENSITY.DisplayText;

            if (Sender = serDensityWithoutLatePlan) then
              MarkText:= cdsGridData_GRAPH_DENSITY_WITHOUT_LATE_PLAN.DisplayText;

            if (Sender = serDensityWithLatePlan) then
              MarkText:= cdsGridData_GRAPH_DENSITY_WITH_LATE_PLAN.DisplayText;
          end;
      finally
        cdsGridData.Bookmark:= b;
      end;
    end;
end;

procedure TfmEstPricesCompareGraph.LineSeriesAfterDrawValues(Sender: TObject);

  procedure MyDrawLine(AChart: TDBChart; VisibleRect: TRect;
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

  procedure DrawMarkPoint(AChart: TDBChart; AFill, ABorder: TColor; X, Y: Integer);
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

var
  ZeroY, ZeroX: Integer;
  X, Y: Integer;
  Axis: TRect;
  NextX, NextY: Integer;
  i: Integer;
  TheChart: TDBChart;
  LineWidth: Integer;
  NegativeColor: TColor;
begin
  inherited;

  TheChart:= ChartPrice;

  NegativeColor:= $000000BF;

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

      //    ---\---   takova presichane na Ox
      if (Y <= ZeroY) and (NextY > ZeroY) then
        begin
          ZeroX:= RealRound(NextX - (NextX - X) * (NextY - ZeroY) / (NextY - Y));
          MyDrawLine(TheChart, Axis, ZeroX, ZeroY, NextX, NextY, NegativeColor, LineWidth);
          DrawMarkPoint(TheChart, NegativeColor, clBlack, NextX, NextY);
        end
      else
      //    ---/---   takova presichane na Ox
      if (Y > ZeroY) and (NextY < ZeroY) then
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

procedure TfmEstPricesCompareGraph.CalcAggregates;
var
  i: Integer;
  Sums: array of Real;
  Sum: Real;
  b: TBookmark;
begin
  cdsGridData.DisableControls;
  try
    grdRegister.DataSource:= nil;
    try
      SetLength(Sums, cdsGridData.FieldCount);

      for i := 0 to cdsGridData.FieldCount - 1 do
        Sums[i]:= 0;

      b:= cdsGridData.Bookmark;
      try
        cdsGridData.First;
        while not cdsGridData.Eof do
          begin
            for i := 0 to cdsGridData.FieldCount - 1 do
              if cdsGridData.Fields[i] is TNumericField then
                Sums[i]:= Sums[i] + cdsGridData.Fields[i].AsFloat;

            cdsGridData.Next;
          end;
      finally
        cdsGridData.Bookmark:= b;
      end;

      grdRegister.Columns.BeginUpdate;
      try
        for i:= 0 to grdRegister.Columns.Count - 1 do
          if (grdRegister.Columns[i].Tag = 1) then
            begin
              grdRegister.Columns[i].Footer.ValueType:= fvtStaticText;

              if cdsGridData.IsEmpty then
                grdRegister.Columns[i].Footer.Value:= ''
              else
                if not IsLevelOneInvestedValueVisible then
                  grdRegister.Columns[i].Footer.Value:= SNotAvailable
                else
                  begin
                    Sum:= Sums[cdsGridData.FieldByName(grdRegister.Columns[i].FieldName).Index];

                    if (Sum = 0) then
                      grdRegister.Columns[i].Footer.Value:= ''
                    else
                      grdRegister.Columns[i].Footer.Value:= FormatFloat(',0', Sum);
                  end;
            end;
      finally
        grdRegister.Columns.EndUpdate;
      end;  { try }
    finally
      grdRegister.DataSource:= dsGridData;
    end;  { try }
  finally
    cdsGridData.EnableControls;
  end;  { try }
end;

end.
