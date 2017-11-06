unit fCapacityGraph;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvButtons, DB, AbmesFields, ParamDataSet,
  ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid,
  ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fBaseFrame, fDBFrame, fFieldEditFrame, dDocClient, TeEngine, Series, TeeProcs,
  Chart, DbChart, JvComponentBase, JvCaptionButton, uPeriods, uAspectTypes,
  uClientTypes, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, Mask, fDateIntervalFrame, TeeFunci, Menus,
  DBGridEhGrouping;

type
  TfmCapacityGraph = class(TGridForm)
    pcMain: TPageControl;
    pnlFilter: TPanel;
    tsGraph: TTabSheet;
    tsGrid: TTabSheet;
    pnlTopSpace: TPanel;
    lblTimeUnit: TLabel;
    chartCapacity: TDBChart;
    btnParams: TBitBtn;
    pnlGridNavigator: TPanel;
    navVG: TDBColorNavigator;
    tlbTopGridButtons2: TToolBar;
    btnExcelExport2: TToolButton;
    grdCapacity: TAbmesDBGrid;
    pnlBottomGridButtons: TPanel;
    pdsGridDataParamsTIME_UNIT_CODE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsTIME_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField;
    pdsGridDataParamsCHOSEN_DEPT_PRODUCTS: TAbmesWideStringField;
    cdsTimeUnits: TAbmesClientDataSet;
    cdsTimeUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField;
    cdsTimeUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField;
    cdsTimeUnitsTABLE_NAME: TAbmesWideStringField;
    cdsTimeUnitsKEY_FIELD_NAME: TAbmesWideStringField;
    cdsTimeUnitsYEAR_UNIT_NO_NAME: TAbmesWideStringField;
    cdsTimeUnitsDEFAULT_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsMIN_UNIT_COUNT: TAbmesFloatField;
    cdsTimeUnitsMAX_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParams_TIME_UNIT_NAME: TAbmesWideStringField;
    pdsGridDataParams_TIME_UNIT_DEFAULT_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParams_TIME_UNIT_MIN_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParams_TIME_UNIT_MAX_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParams_END_DATE: TAbmesSQLTimeStampField;
    serRealCreatingHours: TBarSeries;
    serPlanCreatingHours: TBarSeries;
    serRealExcessHours: TBarSeries;
    serRealFreeHours: TBarSeries;
    serPlanSupportingHours: TBarSeries;
    serRealSupportingHours: TBarSeries;
    serPlanFreeHours: TBarSeries;
    serPlanExcessHours: TBarSeries;
    cdsGridData_PLAN_EXCESS_HOURS: TAbmesFloatField;
    lblStartDate: TLabel;
    lblEndDate: TLabel;
    actPrintChart: TAction;
    cdsGridData_LABEL: TAbmesWideStringField;
    actTogglePeriodLabelsExtraInfo: TAction;
    cdsGridData_THE_DATE_AS_STRING: TAbmesWideStringField;
    btnPrintPriceChart: TSpeedButton;
    pnlTime: TPanel;
    btnPrev: TBitBtn;
    btnNext: TBitBtn;
    pnlBeginDate: TPanel;
    pnlEndDate: TPanel;
    pnlBeginDateWeekFormat: TPanel;
    pnlEndDateWeekFormat: TPanel;
    actPrev: TAction;
    actNext: TAction;
    imgMovementDate: TImage;
    cdsGridData_REAL_FREE_HOURS: TAbmesFloatField;
    serRealLimitPercent: TBarSeries;
    serPlanLimitPercent: TBarSeries;
    btnShowLimitPercent: TSpeedButton;
    cdsGridDataTHE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataWORKDAYS: TAbmesFloatField;
    cdsGridDataLIMIT_HOURS: TAbmesFloatField;
    cdsGridDataREAL_FREE_HOURS: TAbmesFloatField;
    cdsGridDataREAL_EXCESS_HOURS: TAbmesFloatField;
    cdsGridDataPLAN_FREE_HOURS: TAbmesFloatField;
    cdsGridDataPLAN_EXCESS_HOURS: TAbmesFloatField;
    cdsGridData_REAL_LIMIT_PERCENT: TAbmesFloatField;
    cdsGridData_PLAN_LIMIT_PERCENT: TAbmesFloatField;
    cdsGridData_PLAN_FREE_HOURS: TAbmesFloatField;
    cdsTimeUnitsTHE_DATE_UNIT_NAME_PLURAL: TAbmesWideStringField;
    cdsGridData_MAX_LIMIT_HOURS: TAggregateField;
    cdsGridData_MAX_PLAN_EXCESS_HOURS: TAggregateField;
    cdsOuterFormParams: TAbmesClientDataSet;
    cdsOuterFormParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsOuterFormParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsOuterFormParams_IN_SPECIAL_CONTROL_TASKS_MODE: TAbmesFloatField;
    cdsOuterFormParamsOM_BEGIN_DATE: TAbmesSQLTimeStampField;
    cdsOuterFormParamsOM_END_DATE: TAbmesSQLTimeStampField;
    cdsOuterFormParamsCHOSEN_DEPTS: TAbmesWideStringField;
    cdsGridDataREAL_LOGISTICS_HOURS: TAbmesFloatField;
    cdsGridDataREAL_EXPLOITATION_HOURS: TAbmesFloatField;
    cdsGridDataPLAN_LOGISTICS_HOURS: TAbmesFloatField;
    cdsGridDataPLAN_EXPLOITATION_HOURS: TAbmesFloatField;
    sepBeforeExcelExport2: TToolButton;
    btnPrintGrid: TToolButton;
    pdsGridDataParamsASPECT_TYPE: TAbmesFloatField;
    actShowCapacityTable: TAction;
    cdsCapacityTableParams: TAbmesClientDataSet;
    cdsCapacityTableParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsCapacityTableParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsCapacityTableParamsTIME_UNIT_CODE: TAbmesFloatField;
    cdsCapacityTableParamsASPECT_TYPE: TAbmesFloatField;
    cdsCapacityTableParamsTIME_UNIT_COUNT: TAbmesFloatField;
    cdsCapacityTableParamsCHOSEN_DEPTS: TAbmesWideStringField;
    cdsCapacityTableParamsCHOSEN_DEPT_PRODUCTS: TAbmesWideStringField;
    btnShowCapacityTable: TBitBtn;
    pdsGridDataParams_DEPT_NAME: TAbmesWideStringField;
    pdsGridDataParams_DEPT_CODE: TAbmesFloatField;
    lblDateInterval: TLabel;
    lblDeptName: TLabel;
    pnlTimeUnitCountAndName: TDBEdit;
    pdsGridDataParams_DEPT_NO: TAbmesWideStringField;
    edtDeptName: TDBEdit;
    edtDeptNo: TDBEdit;
    edtDateInterval: TDBEdit;
    pdsGridDataParams_DATE_INTERVAL: TAbmesWideStringField;
    pdsGridDataParams_DATE_UNITS: TAbmesWideStringField;
    pdsGridDataParamsCAPACITY_LIMIT_LEVEL: TAbmesFloatField;
    pdsGridDataParamsCALC_ALL_LIMIT_LEVELS: TAbmesFloatField;
    cdsGridDataOCC_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField;
    cdsGridDataOCC_ASS_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField;
    cdsGridDataEMP_AVAIL_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField;
    serOccAssLvlLimitHoursDiff: TBarSeries;
    serOccLvlLimitHoursDiff: TBarSeries;
    serEmpAvailLvlLimitHoursDiff: TBarSeries;
    cdsGridData_ABOVE_LIMIT_HOURS: TAbmesFloatField;
    cdsGridDataDEPT_LVL_LIMIT_HOURS: TAbmesFloatField;
    cdsGridDataOCC_LVL_LIMIT_HOURS: TAbmesFloatField;
    cdsGridDataOCC_ASS_LVL_LIMIT_HOURS: TAbmesFloatField;
    cdsGridDataEMP_AVAIL_LVL_LIMIT_HOURS: TAbmesFloatField;
    tlbButtons: TToolBar;
    btnToggleLimitLevelColumnsVisible: TToolButton;
    cdsGridData_OCC_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField;
    cdsGridData_OCC_ASS_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField;
    cdsGridData_EMP_AVAIL_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField;
    cdsGridData_REAL_EXCESS_HOURS: TAbmesFloatField;
    cdsGridData_MAX_REAL_EXCESS_HOURS: TAggregateField;
    serZeroLine: TLineSeries;
    TeeFunction1: TMultiplyTeeFunction;
    cdsGridData_ZERO: TAbmesFloatField;
    cdsCapacityTableParamsCAPACITY_LIMIT_LEVEL: TAbmesFloatField;
    cdsCapacityTableParamsCALC_ALL_LIMIT_LEVELS: TAbmesFloatField;
    cdsGridData_SUM_REAL_EXCESS_HOURS: TAggregateField;
    cdsGridData_SUM_REAL_FREE_HOURS: TAggregateField;
    cdsGridData_SUM_PLAN_FREE_HOURS: TAggregateField;
    cdsGridData_SUM_PLAN_EXCESS_HOURS: TAggregateField;
    cdsGridData_SUM_LIMIT_HOURS: TAggregateField;
    cdsGridData_SUM_REAL_LOGISTICS_HOURS: TAggregateField;
    cdsGridData_SUM_REAL_EXPLOITATION_HOURS: TAggregateField;
    cdsGridData_SUM_PLAN_LOGISTICS_HOURS: TAggregateField;
    cdsGridData_SUM_PLAN_EXPLOITATION_HOURS: TAggregateField;
    cdsGridData_TOTAL_REAL_LIMIT_PERCENT: TAggregateField;
    cdsGridData_TOTAL_PLAN_LIMIT_PERCENT: TAggregateField;
    pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    cdsCapacityTableParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField;
    cdsCapacityTableParamsPARTNER_COMMON_LEVEL: TAbmesFloatField;
    pnlTogglePeriodLabelsExtraInfo: TPanel;
    btnTogglePeriodLabelsExtraInfo: TSpeedButton;
    procedure actExcelExportExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure cdsTimeUnitsAfterOpen(DataSet: TDataSet);
    procedure grdCapacityGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure HoursFieldsGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure ChartCapacityGetAxisLabel(Sender: TChartAxis;
      Series: TChartSeries; ValueIndex: Integer; var LabelText: String);
    procedure chartCapacityAfterDraw(Sender: TObject);
    procedure actTogglePeriodLabelsExtraInfoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chartCapacityBeforeDrawAxes(Sender: TObject);
    procedure chartCapacityBeforeDrawSeries(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure actPrintChartUpdate(Sender: TObject);
    procedure actPrintChartExecute(Sender: TObject);
    procedure cdsGridDataTHE_DATEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actPrevUpdate(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
    procedure actPrevExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure chartCapacityMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure chartCapacityMouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure serPlanExcessHoursGetMarkText(Sender: TChartSeries; ValueIndex: Integer;
      var MarkText: String);
    procedure cdsGridData_REAL_LIMIT_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_PLAN_LIMIT_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure serPlanFreeHoursGetMarkText(Sender: TChartSeries;
      ValueIndex: Integer; var MarkText: String);
    procedure btnShowLimitPercentClick(Sender: TObject);
    procedure serRealFreeHoursGetMarkText(Sender: TChartSeries;
      ValueIndex: Integer; var MarkText: String);
    procedure serRealExcessHoursGetMarkText(Sender: TChartSeries;
      ValueIndex: Integer; var MarkText: String);
    procedure serPlanCreatingHoursDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serPlanExcessHoursDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serPlanFreeHoursDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serPlanLimitPercentDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serPlanSupportingHoursDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serRealCreatingHoursDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serRealExcessHoursDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serRealFreeHoursDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serRealLimitPercentDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serRealSupportingHoursDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure actPrintUpdate(Sender: TObject);
    procedure actShowCapacityTableExecute(Sender: TObject);
    procedure actShowCapacityTableUpdate(Sender: TObject);
    procedure grdCapacityDblClick(Sender: TObject);
    procedure pdsGridDataParamsCHOSEN_DEPTSChange(Sender: TField);
    procedure cdsGridData_TOTAL_REAL_LIMIT_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsGridData_TOTAL_PLAN_LIMIT_PERCENTGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actTogglePeriodLabelsExtraInfoUpdate(Sender: TObject);
  private
    FChartNeedsUpdate: Boolean;
    FOriginalFormCaption: string;
    FAspectType: TAspectType;
    procedure RefreshMarks;
    procedure ShowCapacityTable(ADate: TDateTime); overload;
    procedure ShowCapacityTable(ADateUnitNo: Integer); overload;
    procedure ChosenDeptsChange;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetOriginalFormCaption: string; override;
    function ShowFilterForm: Boolean; override;
  public
    class procedure ShowGraph(AdmDocClient: TdmDocClient; AAspectType: TAspectType; ADeptCode: Integer; ABeginDate: TDateTime;
      ATimeUnit: TPeriod = perDay; ATimeUnitCount: Integer = 15);

    class function ShowForm(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AFilterFormEnabled: Boolean;
      AAspectType: TAspectType): Boolean;

    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      ADefaultsOrigin: TDefaultsOrigin;
      AFilterFormEnabled: Boolean;
      AAspectType: TAspectType); reintroduce; virtual;

    procedure Initialize; override;
  end;

implementation

uses
  dMain, fCapacityGraphFilter, uColorConsts, uClientUtils, DateUtils,
  uUtils, JCLDateTime, uGraphUtils, rCapacityGraph, uXMLUtils, uExcelExport,
  uClientPeriods, fOperationalTasks, fBaseForm, uUserActivityConsts,
  uCapacityClient, fCapacityAbstractFilter, fCapacityTable, uTreeClientUtils, Math,
  uClientDateTime;

{$R *.dfm}

resourcestring
  SCannotShowOuterFormOnChosenDeptProductsFilter = 'Не можете да извикате Операционни Задания, когато е зададен филтър по "ОпМ като УОб"';
  SDeptsLabel = 'ТП';

  CapacityLimitLevelNameAccountable = 'Разчетен';
  CapacityLimitLevelNameNormative = 'Нормативен';
  CapacityLimitLevelNameOrganizational = 'Организационен';
  CapacityLimitLevelNamePresence = 'Присъствен';

const
  CapacityLimitLevelNames: array[1..4] of string = (
    CapacityLimitLevelNameAccountable,
    CapacityLimitLevelNameNormative,
    CapacityLimitLevelNameOrganizational,
    CapacityLimitLevelNamePresence);

{ TfmCapacityGraph }

procedure TfmCapacityGraph.ChosenDeptsChange;
begin
  pdsGridDataParams_DEPT_NAME.Clear;

  if HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_DEPTS.AsString) then
    if IsSingleChosenNodeWithoutParams(pdsGridDataParamsCHOSEN_DEPTS.AsString) then
      begin
        pdsGridDataParams_DEPT_CODE.AsInteger:=
          ChosenNodeXMLToNodeCode(pdsGridDataParamsCHOSEN_DEPTS.AsString);

        DoDeptFieldChanged(
          pdsGridDataParams_DEPT_CODE,
          pdsGridDataParams_DEPT_NAME,
          pdsGridDataParams_DEPT_NO);
      end
    else
      begin
        pdsGridDataParams_DEPT_NAME.AsString:= SDeptsSet;
        pdsGridDataParams_DEPT_NO.Clear;
      end;
end;

procedure TfmCapacityGraph.CloseDataSets;
begin
  inherited;
  cdsTimeUnits.Close;
end;

procedure TfmCapacityGraph.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmCapacityGraphFilter;
  ReportClass:= TrptCapacityGraph;
  RegisterDateFields(cdsGridData);
end;

procedure TfmCapacityGraph.OpenDataSets;
begin
  cdsTimeUnits.Open;
  inherited;
end;

procedure TfmCapacityGraph.pdsGridDataParamsCalcFields(DataSet: TDataSet);
begin
  inherited;

  if not pdsGridDataParamsBEGIN_DATE.IsNull and
     not pdsGridDataParamsTIME_UNIT_CODE.IsNull and
     not pdsGridDataParamsTIME_UNIT_COUNT.IsNull then
    begin
      pdsGridDataParams_END_DATE.AsDateTime:=
        CalcEndDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger), pdsGridDataParamsTIME_UNIT_COUNT.AsInteger);

      pdsGridDataParams_DATE_UNITS.AsString:=
        IntToStr(pdsGridDataParamsTIME_UNIT_COUNT.AsInteger) + ' * ' + pdsGridDataParams_TIME_UNIT_NAME.AsString;

      pdsGridDataParams_DATE_INTERVAL.AsString:=
        dmMain.GetDateIntervalAsString(pdsGridDataParamsBEGIN_DATE.AsDateTime, pdsGridDataParams_END_DATE.AsDateTime);
    end
  else
    begin
      pdsGridDataParams_END_DATE.Clear;
      pdsGridDataParams_DATE_UNITS.Clear;
      pdsGridDataParams_DATE_INTERVAL.Clear;
    end;
end;

procedure TfmCapacityGraph.pdsGridDataParamsCHOSEN_DEPTSChange(Sender: TField);
begin
  inherited;
  ChosenDeptsChange;
end;

procedure TfmCapacityGraph.cdsTimeUnitsAfterOpen(DataSet: TDataSet);
begin
  inherited;

  if not Assigned(OuterDataSet) then
    cdsGridData.Params.ParamByName('TIME_UNIT_COUNT').AsInteger:=
      cdsTimeUnits.Lookup(
        'THE_DATE_UNIT_CODE',
        cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger,
        'DEFAULT_UNIT_COUNT');
end;

procedure TfmCapacityGraph.grdCapacityDblClick(Sender: TObject);
begin
  inherited;
  actShowCapacityTable.Execute;
end;

procedure TfmCapacityGraph.grdCapacityGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
const
  Eps = 0.000001;
begin
  inherited;
  if (gdSelected in State) then
    Exit;

  if (Column.Field = cdsGridDataREAL_EXCESS_HOURS) and
     (Abs(cdsGridDataREAL_EXCESS_HOURS.AsFloat) > Eps) then
    Background:= ccCapacityGraphRealDeficitBackground;

  if (Column.Field = cdsGridDataPLAN_EXCESS_HOURS) and
     (Abs(cdsGridDataPLAN_EXCESS_HOURS.AsFloat) > Eps) then
    Background:= ccCapacityGraphPlanDeficitBackground;
end;

procedure TfmCapacityGraph.HoursFieldsGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmCapacityGraph.Initialize;
var
  MsgParams: TStrings;
begin
  inherited Initialize;

  MsgParams:= CreateCommonMsgParams(LoginContext, FAspectType);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  FOriginalFormCaption:= actForm.Caption;
end;

procedure TfmCapacityGraph.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsGridDataPLAN_EXCESS_HOURS.IsNull then
    cdsGridData_PLAN_EXCESS_HOURS.Clear
  else
    cdsGridData_PLAN_EXCESS_HOURS.AsFloat:= -cdsGridDataPLAN_EXCESS_HOURS.AsFloat;

  if cdsGridDataREAL_EXCESS_HOURS.IsNull then
    cdsGridData_REAL_EXCESS_HOURS.Clear
  else
    cdsGridData_REAL_EXCESS_HOURS.AsFloat:= -cdsGridDataREAL_EXCESS_HOURS.AsFloat;

  if (GetPeriodFirstDate(ContextDate, GetPeriodValue(cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger)) <= cdsGridDataTHE_DATE.AsDateTime) then
    begin
      cdsGridData_PLAN_FREE_HOURS.AsVariant:= cdsGridDataPLAN_FREE_HOURS.AsVariant;
      cdsGridData_REAL_FREE_HOURS.Clear;
    end
  else
    begin
      cdsGridData_PLAN_FREE_HOURS.Clear;
      cdsGridData_REAL_FREE_HOURS.AsVariant:= cdsGridDataREAL_FREE_HOURS.AsVariant;;
    end;

  cdsGridData_LABEL.AsString:=
    GetPeriodLabelEx(
      cdsGridDataTHE_DATE.AsDateTime,
      GetPeriodValue(cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger),
      actTogglePeriodLabelsExtraInfo.Checked,
      False);

  cdsGridData_THE_DATE_AS_STRING.AsString:=
    DateToStr(cdsGridDataTHE_DATE.AsDateTime);

  if (cdsGridData.Params.ParamByName('CALC_ALL_LIMIT_LEVELS').AsInteger = 1) then
    cdsGridData_ABOVE_LIMIT_HOURS.AsFloat:=
      -cdsGridDataOCC_LVL_LIMIT_HOURS_DIFF.AsFloat +
      -cdsGridDataOCC_ASS_LVL_LIMIT_HOURS_DIFF.AsFloat +
      -cdsGridDataEMP_AVAIL_LVL_LIMIT_HOURS_DIFF.AsFloat
  else
    cdsGridData_ABOVE_LIMIT_HOURS.AsFloat:= 0;

  if cdsGridDataOCC_LVL_LIMIT_HOURS_DIFF.IsNull then
    cdsGridData_OCC_LVL_LIMIT_HOURS_DIFF.Clear
  else
    cdsGridData_OCC_LVL_LIMIT_HOURS_DIFF.AsFloat:= -cdsGridDataOCC_LVL_LIMIT_HOURS_DIFF.AsFloat;

  if cdsGridDataOCC_ASS_LVL_LIMIT_HOURS_DIFF.IsNull then
    cdsGridData_OCC_ASS_LVL_LIMIT_HOURS_DIFF.Clear
  else
    cdsGridData_OCC_ASS_LVL_LIMIT_HOURS_DIFF.AsFloat:= -cdsGridDataOCC_ASS_LVL_LIMIT_HOURS_DIFF.AsFloat;

  if cdsGridDataEMP_AVAIL_LVL_LIMIT_HOURS_DIFF.IsNull then
    cdsGridData_OCC_LVL_LIMIT_HOURS_DIFF.Clear
  else
    cdsGridData_OCC_LVL_LIMIT_HOURS_DIFF.AsFloat:= -cdsGridDataEMP_AVAIL_LVL_LIMIT_HOURS_DIFF.AsFloat;

  cdsGridData_ZERO.AsInteger:= 0;
end;

procedure TfmCapacityGraph.cdsGridDataAfterOpen(DataSet: TDataSet);
begin
  inherited;

  lblStartDate.Caption:=
    FormatPeriodDate(
      pdsGridDataParamsBEGIN_DATE.AsDateTime,
      GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger));
  lblEndDate.Caption:=
    FormatPeriodDate(
      pdsGridDataParams_END_DATE.AsDateTime,
      GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger));

  try
    grdCapacity.Columns[0].Title.Caption:=
      GetPeriodTypeName(GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger));
  except
    // taia lainaria poniakoga gyrmi 'grid index out of range' inache pak si opravia caption-a.
    // i to v debug mode vsichko izglejda ok, pyk pri startirane vdiga exception
    // sorry za groznia workaround
    // exceptiona se dokarva po slednia nachin:
    // VIM na kapacitet - 1) izliza po default 2) otivam na stranicata s tablicata i shtrakam na 7-mi red i posle scrollvam s kolelceto na mishkata 3) vrushtam se na grafikata 4) rugam dva perioda nazad 5) filtur - zadavam po meseci i OK - "Grid index out of range."
  end;

  pnlBeginDate.Caption:=
    DateToStr(pdsGridDataParamsBEGIN_DATE.AsDateTime);
  pnlBeginDateWeekFormat.Caption:=
    JclDateTime.FormatDateTime('ww\e\iiii', pdsGridDataParamsBEGIN_DATE.AsDateTime);

  pnlEndDate.Caption:=
    DateToStr(pdsGridDataParams_END_DATE.AsDateTime);
  pnlEndDateWeekFormat.Caption:=
    JclDateTime.FormatDateTime('ww\e\iiii', pdsGridDataParams_END_DATE.AsDateTime);

  chartCapacity.LeftAxis.SetMinMax(
    Max(
      VarToFloat(cdsGridData_MAX_PLAN_EXCESS_HOURS.Value),
      VarToFloat(cdsGridData_MAX_REAL_EXCESS_HOURS.Value)
    ) * -1.2,
    VarToFloat(cdsGridData_MAX_LIMIT_HOURS.Value) * 1.2);
end;

procedure TfmCapacityGraph.ChartCapacityGetAxisLabel(Sender: TChartAxis;
  Series: TChartSeries; ValueIndex: Integer; var LabelText: String);
begin
  inherited;
  if (Sender = chartCapacity.BottomAxis) then
    LabelText:=
      cdsGridData.PreserveBookmark/
        function: string begin
          cdsGridData.First;
          cdsGridData.MoveBy(ValueIndex);
          Result:= cdsGridData_LABEL.AsString;
          if (cdsGridDataWORKDAYS.AsInteger = 0) then
            Result:= MarkDateStringAsDayOff(Result);
        end;
end;

procedure TfmCapacityGraph.chartCapacityAfterDraw(Sender: TObject);
begin
  inherited;

  with chartCapacity do
    lblStartDate.Top:= LeftAxis.CalcYPosValue(LeftAxis.Minimum) + 5;

  lblEndDate.Top:= lblStartDate.Top + lblStartDate.Height + 3;
end;

procedure TfmCapacityGraph.actTogglePeriodLabelsExtraInfoExecute(
  Sender: TObject);
var
  b: TBookmark;
begin
  inherited;

  with Sender as TAction do
    Checked:= not Checked;

  b:= cdsGridData.Bookmark;
  try
    cdsGridData.First;
    cdsGridData.Last;
  finally
    cdsGridData.Bookmark:= b;
  end;   { try }

  chartCapacity.RefreshData;
end;

procedure TfmCapacityGraph.actTogglePeriodLabelsExtraInfoUpdate(
  Sender: TObject);
begin
  inherited;
  btnTogglePeriodLabelsExtraInfo.Down:= (Sender as TAction).Checked;
end;

procedure TfmCapacityGraph.FormShow(Sender: TObject);
begin
  inherited;
  pcMain.ActivePage:= tsGraph;
end;

function TfmCapacityGraph.GetOriginalFormCaption: string;
begin
  Result:= FOriginalFormCaption;
end;

procedure TfmCapacityGraph.actShowCapacityTableExecute(Sender: TObject);
begin
  inherited;
  ShowCapacityTable(cdsGridDataTHE_DATE.AsDateTime);
end;

procedure TfmCapacityGraph.actShowCapacityTableUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    cdsGridData.Active and
    not cdsGridData.IsEmpty;
end;

procedure TfmCapacityGraph.chartCapacityBeforeDrawAxes(Sender: TObject);
begin
  inherited;
  DrawTodayArea(chartCapacity, GetPeriodValue(cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger));
end;

procedure TfmCapacityGraph.chartCapacityBeforeDrawSeries(Sender: TObject);
begin
  inherited;
//  SetClippingRectangle(chartCapacity);
end;

procedure TfmCapacityGraph.actExcelExportExecute(Sender: TObject);
begin
//  inherited;
  GridExcelExport(grdCapacity);
end;

procedure TfmCapacityGraph.actFormUpdate(Sender: TObject);
var
  i: Integer;
  CalcAllLimitLevels: Boolean;
begin
  inherited;

  CalcAllLimitLevels:= (cdsGridData.Params.ParamByName('CALC_ALL_LIMIT_LEVELS').AsInteger = 1);

  if FChartNeedsUpdate then
    begin
      FChartNeedsUpdate:= False;
      RefreshMarks;
    end;

  btnToggleLimitLevelColumnsVisible.Enabled:= CalcAllLimitLevels;

  if not btnToggleLimitLevelColumnsVisible.Enabled then
    btnToggleLimitLevelColumnsVisible.Down:= False;    

  for i in [2..6, 8] do
    grdCapacity.Columns[i].Visible:= (FAspectType = atRealization) and not btnToggleLimitLevelColumnsVisible.Down;

  for i in [7, 9..11] do
    grdCapacity.Columns[i].Visible:= not btnToggleLimitLevelColumnsVisible.Down;

  for i in [12..18] do
    grdCapacity.Columns[i].Visible:= btnToggleLimitLevelColumnsVisible.Down;

  serEmpAvailLvlLimitHoursDiff.Active:= CalcAllLimitLevels;
  serOccLvlLimitHoursDiff.Active:= CalcAllLimitLevels;
  serOccAssLvlLimitHoursDiff.Active:= CalcAllLimitLevels;

  serRealExcessHours.Active:= (FAspectType = atRealization);
  serRealFreeHours.Active:= (FAspectType = atRealization);
  serRealCreatingHours.Active:= (FAspectType = atRealization);
  serRealSupportingHours.Active:= (FAspectType = atRealization);
  serPlanSupportingHours.Active:= (FAspectType = atRealization);
end;

procedure TfmCapacityGraph.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  FChartNeedsUpdate:= True;
  cdsGridData.Params.ParamByName('ASPECT_TYPE').AsInteger:= AspectTypeToInt(FAspectType);
end;

procedure TfmCapacityGraph.pdsGridDataParamsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams.Edit;
  try
    if not Assigned(OuterDataSet) then
      begin
        pdsGridDataParamsBEGIN_DATE.AsDateTime:=
          IncDate(
            GetPeriodFirstDate(ContextDate, GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger)),
            GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger),
            -(pdsGridDataParamsTIME_UNIT_COUNT.AsInteger div 2));
      end
    else
      begin
        Assert(Assigned(OuterDataSet.FindField('BEGIN_DATE')));
        Assert(Assigned(OuterDataSet.FindField('TIME_UNIT_CODE')));
        Assert(Assigned(OuterDataSet.FindField('TIME_UNIT_COUNT')));
      end;

    ChosenDeptsChange;

    pdsGridDataParams.Post;
  except
    pdsGridDataParams.Cancel;
    raise;
  end;  { try }
end;

procedure TfmCapacityGraph.pdsGridDataParamsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if pdsGridDataParamsCHOSEN_DEPTS.Required and
     (not HasChosenNodesOrParams(pdsGridDataParamsCHOSEN_DEPTS.AsString)) then
    raise Exception.Create(SDeptsRequired);
end;

procedure TfmCapacityGraph.actPrintChartUpdate(Sender: TObject);
begin
  inherited;
  actPrintChart.Enabled:= cdsGridData.Active;
end;

procedure TfmCapacityGraph.actPrintUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Visible:= (FAspectType = atRealization);
end;

procedure TfmCapacityGraph.actPrintChartExecute(Sender: TObject);
begin
  inherited;
  Utils.Using(TStringList.Create)/
    procedure (sl: TStringList) begin
      sl.Add(Format('%s - %s', [chartCapacity.Title.Text[0], CapacityLimitLevelNames[pdsGridDataParamsCAPACITY_LIMIT_LEVEL.AsInteger]]));
      sl.Add(SDeptsLabel + ': ' + pdsGridDataParams_DEPT_NAME.DisplayText);
      sl.Add(lblTimeUnit.Caption + ': ' + pdsGridDataParams_DATE_UNITS.AsString);
      PrintChart(chartCapacity, sl);
    end;
end;

procedure TfmCapacityGraph.cdsGridDataTHE_DATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= GetPeriodLabel(cdsGridDataTHE_DATE.AsDateTime, GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger))
end;

procedure TfmCapacityGraph.actPrevUpdate(Sender: TObject);
begin
  inherited;
  actPrev.Enabled:= cdsGridData.Active;
  actPrev.Caption:=
    Format(' %d %s ', [
      Max(1, cdsGridData.Params.ParamByName('TIME_UNIT_COUNT').AsInteger div 2),
      cdsTimeUnits.Lookup('THE_DATE_UNIT_CODE', cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger, 'THE_DATE_UNIT_NAME_PLURAL')
    ]); 
end;

procedure TfmCapacityGraph.actNextUpdate(Sender: TObject);
begin
  inherited;
  actNext.Enabled:= cdsGridData.Active;
  actNext.Caption:=
    Format(' %d %s ', [
      Max(1, cdsGridData.Params.ParamByName('TIME_UNIT_COUNT').AsInteger div 2),
      cdsTimeUnits.Lookup('THE_DATE_UNIT_CODE', cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger, 'THE_DATE_UNIT_NAME_PLURAL')
    ]);
end;

procedure TfmCapacityGraph.actPrevExecute(Sender: TObject);
begin
  inherited;

  CheckEditMode(pdsGridDataParams);

  pdsGridDataParamsBEGIN_DATE.AsDateTime:=
    IncDate(
      pdsGridDataParamsBEGIN_DATE.AsDateTime,
      GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger),
      -Max(1, pdsGridDataParamsTIME_UNIT_COUNT.AsInteger div 2)
    );

  pdsGridDataParams.Post;

  RefreshDataSet(cdsGridData);
end;

procedure TfmCapacityGraph.actNextExecute(Sender: TObject);
begin
  inherited;

  CheckEditMode(pdsGridDataParams);

  pdsGridDataParamsBEGIN_DATE.AsDateTime:=
    IncDate(
      pdsGridDataParamsBEGIN_DATE.AsDateTime,
      GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger),
      Max(1, pdsGridDataParamsTIME_UNIT_COUNT.AsInteger div 2)
    );

  pdsGridDataParams.Post;

  RefreshDataSet(cdsGridData);
end;

procedure TfmCapacityGraph.chartCapacityMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  Abort;  // disable mouse scroll
end;

procedure TfmCapacityGraph.chartCapacityMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Abort;  // disable mouse scroll
end;

procedure TfmCapacityGraph.serPlanExcessHoursGetMarkText(Sender: TChartSeries;
  ValueIndex: Integer; var MarkText: String);
begin
  inherited;
  MarkText:= FormatFloat(',0', Sender.YValues[ValueIndex]);
end;

procedure TfmCapacityGraph.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AAspectType: TAspectType);
begin
  FAspectType:= AAspectType;

  cdsGridData.Params.ParamByName('TIME_UNIT_CODE').AsInteger:=
    GetPeriodConst(DefaultCapacityTimeUnits[FAspectType]);

  case FAspectType of
    atEstimation:
      cdsGridData.Params.ParamByName('CAPACITY_LIMIT_LEVEL').AsInteger:= 1;
    atRealization:
      cdsGridData.Params.ParamByName('CAPACITY_LIMIT_LEVEL').AsInteger:= 4;
  end;  { case }

  // narochno inherited-a e nakraia - inache se precakva poluchavaneto na parametri otvun

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
end;

procedure TfmCapacityGraph.ShowCapacityTable(ADate: TDateTime);
begin
  cdsCapacityTableParams.CreateDataSet;
  try
    cdsCapacityTableParams.Append;
    try
      cdsCapacityTableParams.AssignFields(pdsGridDataParams);

      cdsCapacityTableParamsBEGIN_DATE.AsDateTime:= ADate;
      cdsCapacityTableParamsTIME_UNIT_COUNT.AsInteger:= 1;

      cdsCapacityTableParams.Post;
    except
      cdsCapacityTableParams.Cancel;
      raise;
    end;  { try }

    TfmCapacityTable.ShowForm(dmDocClient, cdsCapacityTableParams, emReadOnly, doNone, False, FAspectType);
  finally
    cdsCapacityTableParams.Close;
  end;  { try }
end;

procedure TfmCapacityGraph.ShowCapacityTable(ADateUnitNo: Integer);
begin
  ShowCapacityTable(
    IncDate(
      pdsGridDataParamsBEGIN_DATE.AsDateTime,
      GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger),
      ADateUnitNo - 1
    )
  );
end;

function TfmCapacityGraph.ShowFilterForm: Boolean;
begin
  if FilterFormClass.InheritsFrom(TfmCapacityAbstractFilter) then
    Result:=
      TfmCapacityAbstractFilterClass(FilterFormClass).ShowForm(
        dmDocClient,
        pdsGridDataParams,
        emEdit,
        doNone,
        FAspectType)
  else
    Result:= inherited ShowFilterForm;
end;

class function TfmCapacityGraph.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin;
  AFilterFormEnabled: Boolean; AAspectType: TAspectType): Boolean;
var
  f: TfmCapacityGraph;
begin
  f:= CreateEx;
  try
    f.SetDataParams(
      AdmDocClient,
      ADataSet,
      AEditMode,
      ADefaultsOrigin,
      AFilterFormEnabled,
      AAspectType);

    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

class procedure TfmCapacityGraph.ShowGraph(AdmDocClient: TdmDocClient;
  AAspectType: TAspectType;
  ADeptCode: Integer; ABeginDate: TDateTime;
  ATimeUnit: TPeriod; ATimeUnitCount: Integer);
var
  ds: TAbmesClientDataSet;
begin
  ds:= TAbmesClientDataSet.Create(nil);
  try
    with ds.FieldDefs do
      begin
        with AddFieldDef do
          begin
            Name:= 'CHOSEN_DEPTS';
            DataType:= ftWideString;
            Size:= 4000;
          end;
        with AddFieldDef do
          begin
            Name:= 'BEGIN_DATE';
            DataType:= ftTimeStamp;
          end;
        with AddFieldDef do
          begin
            Name:= 'TIME_UNIT_CODE';
            DataType:= ftFloat;
          end;
        with AddFieldDef do
          begin
            Name:= 'TIME_UNIT_COUNT';
            DataType:= ftFloat;
          end;
      end;

    with ds do
      begin
        CreateDataSet;
        Append;
        FieldByName('CHOSEN_DEPTS').AsString:=
          ChosenNodeCodeToXML(ADeptCode);
        FieldByName('BEGIN_DATE').AsDateTime:= ABeginDate;
        FieldByName('TIME_UNIT_CODE').AsFloat:= GetPeriodConst(ATimeUnit);
        FieldByName('TIME_UNIT_COUNT').AsFloat:= ATimeUnitCount;
        Post;                                                            
      end;

    TfmCapacityGraph.ShowForm(AdmDocClient, ds, emReadOnly, doNone, False, AAspectType);
  finally
    FreeAndNil(ds);
  end;
end;

procedure TfmCapacityGraph.cdsGridData_REAL_LIMIT_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmCapacityGraph.cdsGridData_TOTAL_PLAN_LIMIT_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmCapacityGraph.cdsGridData_TOTAL_REAL_LIMIT_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmCapacityGraph.cdsGridData_PLAN_LIMIT_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmCapacityGraph.serPlanFreeHoursGetMarkText(
  Sender: TChartSeries; ValueIndex: Integer; var MarkText: String);
begin
  inherited;

  if (Sender.YValues[ValueIndex] <> 0) then
    begin
      MarkText:= FormatFloat(',0', Sender.YValues[ValueIndex]);

      if btnShowLimitPercent.Down then
        MarkText:= MarkText + #13 + FormatFloat(',0.#', serPlanLimitPercent.YValues[ValueIndex] * 100) + '%';
    end
  else
    MarkText:= '';
end;

procedure TfmCapacityGraph.btnShowLimitPercentClick(Sender: TObject);
begin
  inherited;
  RefreshMarks;
end;

procedure TfmCapacityGraph.serRealFreeHoursGetMarkText(
  Sender: TChartSeries; ValueIndex: Integer; var MarkText: String);
begin
  inherited;

  if (Sender.YValues[ValueIndex] <> 0) then
    begin
      MarkText:= FormatFloat(',0', Sender.YValues[ValueIndex]);

      if btnShowLimitPercent.Down then
        MarkText:= MarkText + #13 + FormatFloat(',0.#', serRealLimitPercent.YValues[ValueIndex] * 100) + '%';
    end
  else
    MarkText:= '';
end;

procedure TfmCapacityGraph.RefreshMarks;
begin
  if btnShowLimitPercent.Down then
    begin
      serPlanFreeHours.Marks.ArrowLength:= -27;
      serRealFreeHours.Marks.ArrowLength:= -27;
    end
  else
    begin
      serPlanFreeHours.Marks.ArrowLength:= -15;
      serRealFreeHours.Marks.ArrowLength:= -15;
    end;

  chartCapacity.RefreshData;
end;

procedure TfmCapacityGraph.serRealExcessHoursGetMarkText(
  Sender: TChartSeries; ValueIndex: Integer; var MarkText: String);
begin
  inherited;
  MarkText:= FormatFloat(',0', Sender.YValues[ValueIndex]);
end;

procedure TfmCapacityGraph.serPlanCreatingHoursDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowCapacityTable(ValueIndex + 1);
end;

procedure TfmCapacityGraph.serPlanExcessHoursDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowCapacityTable(ValueIndex + 1);
end;

procedure TfmCapacityGraph.serPlanFreeHoursDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowCapacityTable(ValueIndex + 1);
end;

procedure TfmCapacityGraph.serPlanLimitPercentDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowCapacityTable(ValueIndex + 1);
end;

procedure TfmCapacityGraph.serPlanSupportingHoursDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowCapacityTable(ValueIndex + 1);
end;

procedure TfmCapacityGraph.serRealCreatingHoursDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowCapacityTable(ValueIndex + 1);
end;

procedure TfmCapacityGraph.serRealExcessHoursDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowCapacityTable(ValueIndex + 1);
end;

procedure TfmCapacityGraph.serRealFreeHoursDblClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  ShowCapacityTable(ValueIndex + 1);
end;

procedure TfmCapacityGraph.serRealLimitPercentDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowCapacityTable(ValueIndex + 1);
end;

procedure TfmCapacityGraph.serRealSupportingHoursDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowCapacityTable(ValueIndex + 1);
end;

end.


