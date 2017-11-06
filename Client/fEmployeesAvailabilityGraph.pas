unit fEmployeesAvailabilityGraph;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponent, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls, Mask, fBaseFrame, fDBFrame, fFieldEditFrame,
  fDateIntervalFrame, fTreeNodeFieldEditFrame, fDeptFieldEditFrame,
  fDeptFieldEditFrameBald, TeeProcs, TeEngine, Chart, DbChart, Series,
  JvComponentBase, Menus, DBGridEhGrouping;

type
  TfmEmployeesAvailabilityGraph = class(TGridForm)
    pnlTop: TPanel;
    pcMain: TPageControl;
    tsGrid: TTabSheet;
    tsChart: TTabSheet;
    grdData2: TAbmesDBGrid;
    pnlGridTop: TPanel;
    navGrid: TDBColorNavigator;
    tlbTopGridButtons2: TToolBar;
    sepBeforeExcelExport2: TToolButton;
    tbExcelExport2: TToolButton;
    btnPrintGrid: TToolButton;
    lblIncludeDeptDescendants: TLabel;
    lblOccupationDept: TLabel;
    lblShift: TLabel;
    edtIncludeDeptDescendants: TDBEdit;
    edtShift: TDBEdit;
    cdsShifts: TAbmesClientDataSet;
    cdsShiftsSHIFT_CODE: TAbmesFloatField;
    cdsShiftsSHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataTHE_DATE: TAbmesSQLTimeStampField;
    cdsGridDataNESSESARY_PRESENCE_DAYS: TAbmesFloatField;
    cdsGridDataPRESENCE_DAYS: TAbmesFloatField;
    cdsGridDataSELF_ABSENCE_DAYS: TAbmesFloatField;
    cdsGridDataVACATION_DAYS: TAbmesFloatField;
    cdsGridDataMATERNITY_DAYS: TAbmesFloatField;
    cdsGridDataSICKNESS_DAYS: TAbmesFloatField;
    cdsGridDataSTATE_DAYS: TAbmesFloatField;
    cdsGridDataADMINISTRATIVE_DAYS: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsTIME_UNIT_CODE: TAbmesFloatField;
    pdsGridDataParamsTIME_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParamsOCCUPATION_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsINCLUDE_DEPT_DESCENDANTS: TAbmesFloatField;
    pdsGridDataParamsSHIFT_CODE: TAbmesFloatField;
    pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField;
    pdsGridDataParamsIS_EXTERNAL: TAbmesFloatField;
    pdsGridDataParams_SHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsGridData_PRESENCE_DAYS_P: TAbmesFloatField;
    cdsGridData_SELF_ABSENCE_DAYS_P: TAbmesFloatField;
    cdsGridData_VACATION_DAYS_P: TAbmesFloatField;
    cdsGridData_MATERNITY_DAYS_P: TAbmesFloatField;
    cdsGridData_SICKNESS_DAYS_P: TAbmesFloatField;
    cdsGridData_STATE_DAYS_P: TAbmesFloatField;
    cdsGridData_ADMINISTRATIVE_DAYS_P: TAbmesFloatField;
    chartMain: TDBChart;
    cdsGridData_OK_ABSENCE_DAYS: TAbmesFloatField;
    serAbsence: TBarSeries;
    serPresence: TBarSeries;
    serSelfAbsence: TBarSeries;
    lblStartDate: TLabel;
    lblEndDate: TLabel;
    pdsGridDataParams_END_DATE: TAbmesSQLTimeStampField;
    cdsGridData_LABEL: TAbmesWideStringField;
    cdsGridDataWORKDAYS: TAbmesFloatField;
    actTogglePeriodLabelsExtraInfo: TAction;
    cdsGridDataPLAN_PRESENCE_DAYS: TAbmesFloatField;
    serPlannedPresence: TBarSeries;
    cdsGridData_PLAN_PLUS_REAL_PRESENCE_DAYS: TAbmesFloatField;
    cdsGridData_MAX_DAYS: TAggregateField;
    lblTimeUnits: TLabel;
    btnFilter2: TBitBtn;
    pdsGridDataParams_INCLUDE_DEPT_DESCENDANTS: TAbmesWideStringField;
    pnlTime: TPanel;
    btnPrev: TBitBtn;
    btnNext: TBitBtn;
    pnlBeginDate: TPanel;
    pnlEndDate: TPanel;
    pnlBeginDateWeekFormat: TPanel;
    pnlEndDateWeekFormat: TPanel;
    actPrev: TAction;
    actNext: TAction;
    actShowSelfAbsencePercent: TAction;
    actShowAbsencePercent: TAction;
    actShowPresencePercent: TAction;
    cdsGridData_OK_ABSENCE_DAYS_P: TAbmesFloatField;
    cdsEmployeesAvailabilityParams: TAbmesClientDataSet;
    cdsEmployeesAvailabilityParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsEmployeesAvailabilityParamsEND_DATE: TAbmesSQLTimeStampField;
    cdsEmployeesAvailabilityParamsOCCUPATION_DEPT_CODE: TAbmesFloatField;
    cdsEmployeesAvailabilityParamsINCLUDE_DEPT_DESCENDANTS: TAbmesFloatField;
    cdsEmployeesAvailabilityParamsSHIFT_CODE: TAbmesFloatField;
    cdsEmployeesAvailabilityParamsIS_EXTERNAL: TAbmesFloatField;
    actEmployeesAvailability: TAction;
    actPrintChart: TAction;
    btnPrintChart: TSpeedButton;
    pdsGridDataParams_TIME_UNIT_NAME: TAbmesWideStringField;
    pnlTopFill: TPanel;
    btnEmployeesAvailability: TSpeedButton;
    actShowPlanPresencePercent: TAction;
    pnlShowSelfAbsencePercent: TPanel;
    btnShowSelfAbsencePercent: TSpeedButton;
    pnlShowAbsencePercent: TPanel;
    btnShowAbsencePercent: TSpeedButton;
    pnlShowPresencePercent: TPanel;
    btnShowPresencePercent: TSpeedButton;
    pnlShowPlanPresencePercent: TPanel;
    btnShowPlanPresencePercent: TSpeedButton;
    cdsGridData_ALWAYS_ZERO: TAbmesFloatField;
    serAlwaysZero: TBarSeries;
    cdsGridData_PLAN_PRESENCE_DAYS_P: TAbmesFloatField;
    cdsGridData_PLAN_PLUS_REAL_PRESENCE_DAYS_P: TAbmesFloatField;
    pdsGridDataParams_OCCUPATION_DEPT_NO: TAbmesWideStringField;
    pdsGridDataParams_TIME_UNITS: TAbmesWideStringField;
    edtTimeUnits: TDBEdit;
    edtOccupationDeptName: TDBEdit;
    edtOccupationDeptNo: TDBEdit;
    pdsGridDataParams_OCCUPATION_DEPT_NAME: TAbmesWideStringField;
    btnTogglePeriodLabelsExtraInfo: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataTHE_DATEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsGridDataNESSESARY_PRESENCE_DAYSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataPRESENCE_DAYSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataSELF_ABSENCE_DAYSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataVACATION_DAYSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataMATERNITY_DAYSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataSICKNESS_DAYSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataSTATE_DAYSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataADMINISTRATIVE_DAYSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_PRESENCE_DAYS_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_SELF_ABSENCE_DAYS_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_VACATION_DAYS_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_MATERNITY_DAYS_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_SICKNESS_DAYS_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_STATE_DAYS_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_ADMINISTRATIVE_DAYS_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure chartMainBeforeDrawAxes(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure ChartMainGetAxisLabel(Sender: TChartAxis;
      Series: TChartSeries; ValueIndex: Integer; var LabelText: String);
    procedure actTogglePeriodLabelsExtraInfoExecute(Sender: TObject);
    procedure chartMainBeforeDrawSeries(Sender: TObject);
    procedure grdData2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure actPrevExecute(Sender: TObject);
    procedure actPrevUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
    procedure actShowSelfAbsencePercentExecute(Sender: TObject);
    procedure actShowAbsencePercentExecute(Sender: TObject);
    procedure actShowPresencePercentExecute(Sender: TObject);
    procedure cdsGridData_OK_ABSENCE_DAYS_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure actEmployeesAvailabilityUpdate(Sender: TObject);
    procedure actEmployeesAvailabilityExecute(Sender: TObject);
    procedure actPrintChartExecute(Sender: TObject);
    procedure grdDataDblClick(Sender: TObject);
    procedure serAbsenceDblClick(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure serPlannedPresenceDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serPresenceDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure serSelfAbsenceDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure actShowPlanPresencePercentExecute(Sender: TObject);
    procedure cdsGridDataPLAN_PRESENCE_DAYSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure serAlwaysZeroGetMarkText(Sender: TChartSeries;
      ValueIndex: Integer; var MarkText: String);
    procedure cdsGridData_PLAN_PRESENCE_DAYS_PGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsGridData_PLAN_PLUS_REAL_PRESENCE_DAYS_PGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure pdsGridDataParamsOCCUPATION_DEPT_CODEChange(Sender: TField);
    procedure actTogglePeriodLabelsExtraInfoUpdate(Sender: TObject);
  private
    procedure UpdateMarks;
    procedure ShowEmployeesAvailability(ValueIndex: Integer);
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, fEmployeesAvailabilityGraphFilter, uPeriods, uUtils, Math,
  uClientPeriods, uClientUtils, uGraphUtils, DateUtils, uColorConsts,
  fEmployeesAvailability, uUserActivityConsts, JCLDateTime, uClientTypes,
  rEmployeesAvailabilityGraph, uTreeClientUtils, uClientDateTime;

resourcestring
  SOccupationDeptRequired = 'Трябва да зададете ''%s''';
  SAssignedEmployeesInDept = 'Служители на Длъжности от избрани ОрЧ БЕЗ структурни части';
  SAssignedEmployeesInDeptAndDescendants = 'Служители на Длъжности от избрани ОрЧ СЪС структурни части';
  SNotAssignedEmployees = 'Служители НЕназначени на Длъжност';

{$R *.dfm}

procedure TfmEmployeesAvailabilityGraph.CloseDataSets;
begin
  cdsShifts.Close;
  inherited;
end;

procedure TfmEmployeesAvailabilityGraph.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmEmployeesAvailabilityGraphFilter;
  ReportClass:= TrptEmployeesAvailabilityGraph;
end;

procedure TfmEmployeesAvailabilityGraph.OpenDataSets;
begin
  inherited;
  cdsShifts.Open;
end;

procedure TfmEmployeesAvailabilityGraph.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
var
  Period: TPeriod;
  e: TDataSetNotifyEvent;
begin
  inherited;
  Period:= perDay;
  CheckEditMode(pdsGridDataParams);
  pdsGridDataParamsBEGIN_DATE.AsDateTime:=
    IncDate(GetPeriodFirstDate(ContextDate, Period), Period, RealRound((-pdsGridDataParamsTIME_UNIT_COUNT.AsInteger + 1) / 2));
  pdsGridDataParamsTIME_UNIT_CODE.AsInteger:= GetPeriodConst(Period);
  // vremenno izkliuchvane na proverkata za korektnost na parametri
  e:= pdsGridDataParams.BeforePost;
  pdsGridDataParams.BeforePost:= nil;
  try
    pdsGridDataParams.Post;

  finally
    pdsGridDataParams.BeforePost:= e;
  end;
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridDataAfterOpen(
  DataSet: TDataSet);
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

  grdData2.Columns[0].Title.Caption:=
    GetPeriodTypeName(GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger));

  pnlBeginDate.Caption:=
    DateToStr(pdsGridDataParamsBEGIN_DATE.AsDateTime);
  pnlBeginDateWeekFormat.Caption:=
    JclDateTime.FormatDateTime('ww\e\iiii', pdsGridDataParamsBEGIN_DATE.AsDateTime);

  pnlEndDate.Caption:=
    DateToStr(pdsGridDataParams_END_DATE.AsDateTime);
  pnlEndDateWeekFormat.Caption:=
    JclDateTime.FormatDateTime('ww\e\iiii', pdsGridDataParams_END_DATE.AsDateTime);

  chartMain.LeftAxis.SetMinMax(0, VarToFloat(cdsGridData_MAX_DAYS.Value) * 1.2);
  chartMain.RefreshData;
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridDataTHE_DATEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:= GetPeriodLabel(cdsGridDataTHE_DATE.AsDateTime, GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger))
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridDataNESSESARY_PRESENCE_DAYSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridDataPRESENCE_DAYSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridDataSELF_ABSENCE_DAYSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridDataVACATION_DAYSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridDataMATERNITY_DAYSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridDataSICKNESS_DAYSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridDataSTATE_DAYSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridDataADMINISTRATIVE_DAYSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridData_PRESENCE_DAYS_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridData_SELF_ABSENCE_DAYS_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridData_VACATION_DAYS_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridData_MATERNITY_DAYS_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridData_SICKNESS_DAYS_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridData_STATE_DAYS_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridData_ADMINISTRATIVE_DAYS_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridDataCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  cdsGridData_ALWAYS_ZERO.AsInteger:= 0;

  cdsGridData_LABEL.AsString:=
    GetPeriodLabelEx(
      cdsGridDataTHE_DATE.AsDateTime,
      GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger),
      actTogglePeriodLabelsExtraInfo.Checked,
      False);

  cdsGridData_PLAN_PLUS_REAL_PRESENCE_DAYS.AsFloat:=
    cdsGridDataPRESENCE_DAYS.AsFloat + cdsGridDataPLAN_PRESENCE_DAYS.AsFloat;

  cdsGridData_OK_ABSENCE_DAYS.AsInteger:=
    cdsGridDataVACATION_DAYS.AsInteger +
    cdsGridDataMATERNITY_DAYS.AsInteger +
    cdsGridDataSICKNESS_DAYS.AsInteger +
    cdsGridDataSTATE_DAYS.AsInteger +
    cdsGridDataADMINISTRATIVE_DAYS.AsInteger;


  if (cdsGridDataNESSESARY_PRESENCE_DAYS.AsInteger = 0) then
    begin
      cdsGridData_OK_ABSENCE_DAYS_P.Clear;
      cdsGridData_PRESENCE_DAYS_P.Clear;
      cdsGridData_PLAN_PRESENCE_DAYS_P.Clear;
      cdsGridData_PLAN_PLUS_REAL_PRESENCE_DAYS_P.Clear;
      cdsGridData_SELF_ABSENCE_DAYS_P.Clear;
      cdsGridData_VACATION_DAYS_P.Clear;
      cdsGridData_MATERNITY_DAYS_P.Clear;
      cdsGridData_SICKNESS_DAYS_P.Clear;
      cdsGridData_STATE_DAYS_P.Clear;
      cdsGridData_ADMINISTRATIVE_DAYS_P.Clear;
    end
  else
    begin
      cdsGridData_OK_ABSENCE_DAYS_P.AsFloat:= cdsGridData_OK_ABSENCE_DAYS.AsInteger / cdsGridDataNESSESARY_PRESENCE_DAYS.AsInteger;
      cdsGridData_PRESENCE_DAYS_P.AsFloat:= cdsGridDataPRESENCE_DAYS.AsInteger / cdsGridDataNESSESARY_PRESENCE_DAYS.AsInteger;
      cdsGridData_PLAN_PRESENCE_DAYS_P.AsFloat:= cdsGridDataPLAN_PRESENCE_DAYS.AsInteger / cdsGridDataNESSESARY_PRESENCE_DAYS.AsInteger;
      cdsGridData_PLAN_PLUS_REAL_PRESENCE_DAYS_P.AsFloat:= cdsGridData_PLAN_PLUS_REAL_PRESENCE_DAYS.AsInteger / cdsGridDataNESSESARY_PRESENCE_DAYS.AsInteger;
      cdsGridData_SELF_ABSENCE_DAYS_P.AsFloat:= cdsGridDataSELF_ABSENCE_DAYS.AsInteger / cdsGridDataNESSESARY_PRESENCE_DAYS.AsInteger;
      cdsGridData_VACATION_DAYS_P.AsFloat:= cdsGridDataVACATION_DAYS.AsInteger / cdsGridDataNESSESARY_PRESENCE_DAYS.AsInteger;
      cdsGridData_MATERNITY_DAYS_P.AsFloat:= cdsGridDataMATERNITY_DAYS.AsInteger / cdsGridDataNESSESARY_PRESENCE_DAYS.AsInteger;
      cdsGridData_SICKNESS_DAYS_P.AsFloat:= cdsGridDataSICKNESS_DAYS.AsInteger / cdsGridDataNESSESARY_PRESENCE_DAYS.AsInteger;
      cdsGridData_STATE_DAYS_P.AsFloat:= cdsGridDataSTATE_DAYS.AsInteger / cdsGridDataNESSESARY_PRESENCE_DAYS.AsInteger;
      cdsGridData_ADMINISTRATIVE_DAYS_P.AsFloat:= cdsGridDataADMINISTRATIVE_DAYS.AsInteger / cdsGridDataNESSESARY_PRESENCE_DAYS.AsInteger;
    end;
end;

procedure TfmEmployeesAvailabilityGraph.chartMainBeforeDrawAxes(
  Sender: TObject);
begin
  inherited;
  DrawTodayArea(chartMain, GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger));
end;

procedure TfmEmployeesAvailabilityGraph.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
const
  IncludeDeptDescendants: array[0..2] of string = (
    SAssignedEmployeesInDept, SAssignedEmployeesInDeptAndDescendants, SNotAssignedEmployees);
begin
  inherited;

  if pdsGridDataParamsBEGIN_DATE.IsNull or
     pdsGridDataParamsTIME_UNIT_CODE.IsNull or
     pdsGridDataParamsTIME_UNIT_COUNT.IsNull then
    pdsGridDataParams_END_DATE.Clear
  else
    pdsGridDataParams_END_DATE.AsDateTime:=
      CalcEndDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger), pdsGridDataParamsTIME_UNIT_COUNT.AsInteger);

  pdsGridDataParams_INCLUDE_DEPT_DESCENDANTS.AsString:=
    IncludeDeptDescendants[pdsGridDataParamsINCLUDE_DEPT_DESCENDANTS.AsInteger];

  if pdsGridDataParamsTIME_UNIT_CODE.IsNull then
    pdsGridDataParams_TIME_UNIT_NAME.Clear
  else
    pdsGridDataParams_TIME_UNIT_NAME.AsString:= GetPeriodTypeName(GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger));

  if pdsGridDataParamsTIME_UNIT_CODE.IsNull then
    pdsGridDataParams_TIME_UNITS.Clear
  else
    pdsGridDataParams_TIME_UNITS.AsString:=
      IntToStr(pdsGridDataParamsTIME_UNIT_COUNT.AsInteger) + ' * ' +
      GetPeriodTypeName(GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger));
end;

procedure TfmEmployeesAvailabilityGraph.pdsGridDataParamsOCCUPATION_DEPT_CODEChange(
  Sender: TField);
begin
  inherited;
  DoDeptFieldChanged(pdsGridDataParamsOCCUPATION_DEPT_CODE, pdsGridDataParams_OCCUPATION_DEPT_NAME, pdsGridDataParams_OCCUPATION_DEPT_NO);
end;

procedure TfmEmployeesAvailabilityGraph.ChartMainGetAxisLabel(
  Sender: TChartAxis; Series: TChartSeries; ValueIndex: Integer;
  var LabelText: String);
begin
  inherited;
  if (Sender = chartMain.BottomAxis) then
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

procedure TfmEmployeesAvailabilityGraph.actTogglePeriodLabelsExtraInfoExecute(
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

  chartMain.RefreshData;
end;

procedure TfmEmployeesAvailabilityGraph.actTogglePeriodLabelsExtraInfoUpdate(
  Sender: TObject);
begin
  inherited;
  btnTogglePeriodLabelsExtraInfo.Down:= (Sender as TAction).Checked;
end;

procedure TfmEmployeesAvailabilityGraph.chartMainBeforeDrawSeries(
  Sender: TObject);
begin
  inherited;
  //SetClippingRectangle(chartMain);
end;

procedure TfmEmployeesAvailabilityGraph.grdData2GetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
const
  ccAbsence = $0082D8FD;
  ccSelfAbsence = $007777FF;
begin
  inherited;

  if (Column.Field = cdsGridDataTHE_DATE) or

     ( (Column.Field = cdsGridDataNESSESARY_PRESENCE_DAYS) and
       not cdsGridDataNESSESARY_PRESENCE_DAYS.IsNull ) or
       
     ( (Column.Field = cdsGridData_PLAN_PLUS_REAL_PRESENCE_DAYS_P) and
       not (cdsGridData_PLAN_PLUS_REAL_PRESENCE_DAYS_P.AsFloat = 0) ) then

    Background:=
      GridPastPresentFutureColors[
        Sign(cdsGridDataTHE_DATE.AsDateTime -
          GetPeriodFirstDate(ContextDate, GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger)))];

   if (Column.Field = cdsGridDataPRESENCE_DAYS) and
      not (cdsGridDataPRESENCE_DAYS.AsInteger = 0) then
     Background:= GridPastPresentFutureColors[-1];      

   if (Column.Field = cdsGridDataPLAN_PRESENCE_DAYS) and
      not (cdsGridDataPLAN_PRESENCE_DAYS.AsInteger = 0) then
     Background:= GridPastPresentFutureColors[1];

   if ( (Column.Field = cdsGridDataVACATION_DAYS) and
         not (cdsGridDataVACATION_DAYS.AsInteger = 0) ) or

      ( (Column.Field = cdsGridDataMATERNITY_DAYS) and
         not (cdsGridDataMATERNITY_DAYS.AsInteger = 0) ) or

      ( (Column.Field = cdsGridDataSICKNESS_DAYS) and
         not (cdsGridDataSICKNESS_DAYS.AsInteger = 0) ) or

      ( (Column.Field = cdsGridDataSTATE_DAYS) and
         not (cdsGridDataSTATE_DAYS.AsInteger = 0) ) or

      ( (Column.Field = cdsGridDataADMINISTRATIVE_DAYS) and
         not (cdsGridDataADMINISTRATIVE_DAYS.AsInteger = 0) ) or

      ( (Column.Field = cdsGridData_VACATION_DAYS_P) and
         not (cdsGridData_VACATION_DAYS_P.AsFloat = 0) ) or

      ( (Column.Field = cdsGridData_MATERNITY_DAYS_P) and
         not (cdsGridData_MATERNITY_DAYS_P.AsFloat = 0) ) or

      ( (Column.Field = cdsGridData_SICKNESS_DAYS_P) and
         not (cdsGridData_SICKNESS_DAYS_P.AsFloat = 0) ) or

      ( (Column.Field = cdsGridData_STATE_DAYS_P) and
         not (cdsGridData_STATE_DAYS_P.AsFloat = 0) ) or

      ( (Column.Field = cdsGridData_ADMINISTRATIVE_DAYS_P) and
         not (cdsGridData_ADMINISTRATIVE_DAYS_P.AsFloat = 0) ) then

     Background:= ccAbsence;

   if ( (Column.Field = cdsGridDataSELF_ABSENCE_DAYS) and
        not (cdsGridDataSELF_ABSENCE_DAYS.AsInteger = 0) ) or

      ( (Column.Field = cdsGridData_SELF_ABSENCE_DAYS_P) and
        not (cdsGridData_SELF_ABSENCE_DAYS_P.AsFloat = 0) ) then
        
     Background:= ccSelfAbsence;
end;

procedure TfmEmployeesAvailabilityGraph.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if (pdsGridDataParamsINCLUDE_DEPT_DESCENDANTS.AsInteger <> 2) and
     pdsGridDataParamsOCCUPATION_DEPT_CODE.IsNull then
    raise Exception.CreateFmt(SOccupationDeptRequired,
            [pdsGridDataParamsOCCUPATION_DEPT_CODE.DisplayLabel]);

  if (pdsGridDataParamsINCLUDE_DEPT_DESCENDANTS.AsInteger = 2) then
    begin
      pdsGridDataParamsOCCUPATION_DEPT_CODE.Clear;
      pdsGridDataParamsSHIFT_CODE.Clear;
    end;  { if }
end;

procedure TfmEmployeesAvailabilityGraph.actPrevExecute(Sender: TObject);
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

procedure TfmEmployeesAvailabilityGraph.actPrevUpdate(Sender: TObject);
begin
  inherited;
  actPrev.Enabled:= cdsGridData.Active;
  actPrev.Caption:=
    Format(' %d %s ', [
      Max(1, cdsGridData.Params.ParamByName('TIME_UNIT_COUNT').AsInteger div 2),
      GetPeriodTypeName(GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger), True)
    ]);
end;

procedure TfmEmployeesAvailabilityGraph.actNextExecute(Sender: TObject);
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

procedure TfmEmployeesAvailabilityGraph.actNextUpdate(Sender: TObject);
begin
  inherited;
  actNext.Enabled:= cdsGridData.Active;
  actNext.Caption:=
    Format(' %d %s ', [
      Max(1, cdsGridData.Params.ParamByName('TIME_UNIT_COUNT').AsInteger div 2),
      GetPeriodTypeName(GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger), True)
    ]);
end;

procedure TfmEmployeesAvailabilityGraph.UpdateMarks;
const
  BackgroundColors: array [0..4] of TColor = (0, $00CACAFF, $0057CBFD, $00D7FFD7, clYellow);
begin
  serAlwaysZero.Marks.BackColor:=
    BackgroundColors[
      Ord(actShowSelfAbsencePercent.Checked) * 1 +
      Ord(actShowAbsencePercent.Checked) * 2 +
      Ord(actShowPresencePercent.Checked) * 3 +
      Ord(actShowPlanPresencePercent.Checked) * 4];
end;

procedure TfmEmployeesAvailabilityGraph.actShowSelfAbsencePercentExecute(
  Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    Checked:= not Checked;
  UpdateMarks;
end;

procedure TfmEmployeesAvailabilityGraph.actShowAbsencePercentExecute(
  Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    Checked:= not Checked;
  UpdateMarks;
end;

procedure TfmEmployeesAvailabilityGraph.actShowPresencePercentExecute(
  Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    Checked:= not Checked;
  UpdateMarks;
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridData_OK_ABSENCE_DAYS_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.FormShow(Sender: TObject);
begin
  inherited;
  UpdateMarks;
end;

procedure TfmEmployeesAvailabilityGraph.actEmployeesAvailabilityUpdate(
  Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= not cdsGridData.IsEmpty;
end;

procedure TfmEmployeesAvailabilityGraph.actEmployeesAvailabilityExecute(
  Sender: TObject);
begin
  inherited;

  LoginContext.CheckUserActivity(uaEmployeesAvailbility);

  cdsEmployeesAvailabilityParams.CreateDataSet;
  try
    CheckEditMode(cdsEmployeesAvailabilityParams);
    AssignFields(pdsGridDataParams, cdsEmployeesAvailabilityParams);
    cdsEmployeesAvailabilityParamsBEGIN_DATE.AsDateTime:= cdsGridDataTHE_DATE.AsDateTime;
    cdsEmployeesAvailabilityParamsEND_DATE.AsDateTime:=
      GetPeriodLastDate(cdsGridDataTHE_DATE.AsDateTime, GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger));
    cdsEmployeesAvailabilityParams.Post;
    TfmEmployeesAvailability.ShowForm(dmDocClient, cdsEmployeesAvailabilityParams, emReadOnly, doNone, False);

  finally
    cdsEmployeesAvailabilityParams.Close;
  end;

end;

procedure TfmEmployeesAvailabilityGraph.actPrintChartExecute(
  Sender: TObject);
  
var
  s: TStringList;

begin
  inherited;
  s:= TStringList.Create;
  try
    s.Add(chartMain.Title.Text.Text);
    s.Add(lblIncludeDeptDescendants.Caption + ': ' + pdsGridDataParams_INCLUDE_DEPT_DESCENDANTS.DisplayText);
    s.Add(lblOccupationDept.Caption + ': ' + pdsGridDataParams_OCCUPATION_DEPT_NO.DisplayText);
    s.Add(lblShift.Caption + ': ' + pdsGridDataParams_SHIFT_IDENTIFIER.DisplayText);
    s.Add(lblTimeUnits.Caption + ': ' + pdsGridDataParams_TIME_UNITS.DisplayText);
    PrintChart(chartMain, s);
  finally
    FreeAndNil(s);
  end;
end;

procedure TfmEmployeesAvailabilityGraph.grdDataDblClick(Sender: TObject);
begin
  inherited;
  actEmployeesAvailability.Execute;
end;

procedure TfmEmployeesAvailabilityGraph.serAbsenceDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowEmployeesAvailability(ValueIndex);
end;

procedure TfmEmployeesAvailabilityGraph.serPlannedPresenceDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowEmployeesAvailability(ValueIndex);
end;

procedure TfmEmployeesAvailabilityGraph.serPresenceDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowEmployeesAvailability(ValueIndex);
end;

procedure TfmEmployeesAvailabilityGraph.serSelfAbsenceDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowEmployeesAvailability(ValueIndex);
end;

procedure TfmEmployeesAvailabilityGraph.ShowEmployeesAvailability(
  ValueIndex: Integer);
var
  StartDate: Variant;
begin
  StartDate:= pdsGridDataParamsBEGIN_DATE.AsDateTime;
  StartDate:= IncDate(StartDate, GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger), ValueIndex);
  cdsGridData.Locate('THE_DATE', StartDate, []);
  actEmployeesAvailability.Execute;
end;

procedure TfmEmployeesAvailabilityGraph.actShowPlanPresencePercentExecute(
  Sender: TObject);
begin
  inherited;
  with (Sender as TAction) do
    Checked:= not Checked;
  UpdateMarks;
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridDataPLAN_PRESENCE_DAYSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  NumericFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.serAlwaysZeroGetMarkText(
  Sender: TChartSeries; ValueIndex: Integer; var MarkText: String);

  function ValueText: string;
  begin
    if actShowSelfAbsencePercent.Checked then
      Result:= cdsGridDataSELF_ABSENCE_DAYS.DisplayText
    else
    if actShowAbsencePercent.Checked then
      Result:= cdsGridData_OK_ABSENCE_DAYS.DisplayText
    else
    if actShowPresencePercent.Checked then
      Result:= cdsGridDataPRESENCE_DAYS.DisplayText
    else
    if actShowPlanPresencePercent.Checked then
      Result:= cdsGridDataPLAN_PRESENCE_DAYS.DisplayText
    else
      Result:= 'unknown';
      
    if (Result = '') then
      Result:= '0';
  end;

  function TotalValueText: string;
  begin
    Result:= cdsGridDataNESSESARY_PRESENCE_DAYS.DisplayText;

    if (Result = '') then
      Result:= '0';
  end;

  function PercentText: string;
  begin
    if actShowSelfAbsencePercent.Checked then
      Result:= cdsGridData_SELF_ABSENCE_DAYS_P.DisplayText
    else
    if actShowAbsencePercent.Checked then
      Result:= cdsGridData_OK_ABSENCE_DAYS_P.DisplayText
    else
    if actShowPresencePercent.Checked then
      Result:= cdsGridData_PRESENCE_DAYS_P.DisplayText
    else
    if actShowPlanPresencePercent.Checked  then
      Result:= cdsGridData_PLAN_PRESENCE_DAYS_P.DisplayText
    else
      Result:= 'unknown';

    if (Result = '') then
      Result:= '0';
  end;

var
  b: TBookmark;
  CurrentPeriod: TDateTime;

begin
  inherited;

  if not actShowSelfAbsencePercent.Checked and
     not actShowAbsencePercent.Checked and
     not actShowPresencePercent.Checked and
     not actShowPlanPresencePercent.Checked then
    MarkText:= ''
  else
    begin
      CurrentPeriod:= GetPeriodFirstDate(ContextDate, GetPeriodValue(pdsGridDataParamsTIME_UNIT_CODE.AsInteger));
      b:= cdsGridData.Bookmark;
      cdsGridData.First;
      try
        cdsGridData.MoveBy(ValueIndex);
        
        if ( actShowPresencePercent.Checked and
             (cdsGridDataTHE_DATE.AsDateTime > CurrentPeriod) ) or
           ( actShowPlanPresencePercent.Checked and
             (cdsGridDataTHE_DATE.AsDateTime < CurrentPeriod) ) then
          MarkText:= ''
        else
          MarkText:= ValueText + ' / ' + TotalValueText + #13' (' + PercentText + '%)';

      finally
        cdsGridData.Bookmark:= b;
      end;
    end;
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridData_PLAN_PRESENCE_DAYS_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmEmployeesAvailabilityGraph.cdsGridData_PLAN_PLUS_REAL_PRESENCE_DAYS_PGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

end.
