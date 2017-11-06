unit fFinancialRelationsGraph;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls,
  ExtCtrls, TeEngine, TeeFunci, Series, TeeProcs, Chart, DBChart, Mask, Menus, DBGridEhGrouping,
  uDBChartSeriesClickFixer, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  VclTee.TeeGDIPlus, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmFinancialRelationsGraph = class(TGridForm)
    pnlFilter: TPanel;
    lblPeriod: TLabel;
    lblRounder: TLabel;
    lblPartner: TLabel;
    btnFilter2: TBitBtn;
    edtPartnerShortName: TDBEdit;
    edtPartnerNo: TDBEdit;
    edtRounder: TDBEdit;
    pnlTimeUnitCountAndName: TDBEdit;
    pnlTopSeparator: TPanel;
    pcMain: TPageControl;
    tsPrice: TTabSheet;
    ChartTension: TDBChart;
    btnPrintChart: TSpeedButton;
    lblStartDate: TLabel;
    lblEndDate: TLabel;
    serOurPlanPotentialTension: TBarSeries;
    serOurPlanRealTension: TBarSeries;
    serPartnerPlanPotentialTension: TBarSeries;
    serPartnerPlanRealTension: TBarSeries;
    serZeroLine: TLineSeries;
    TeeFunction1: TMultiplyTeeFunction;
    serOtchTension: TLineSeries;
    tsRegister: TTabSheet;
    pnlRegisterTop: TPanel;
    lblBaseCurrencyValues: TLabel;
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
    cdsRounders: TAbmesClientDataSet;
    cdsRoundersROUNDER: TAbmesFloatField;
    cdsRoundersROUNDER_NAME: TAbmesWideStringField;
    cdsRoundersROUNDER_ABBREV: TAbmesWideStringField;
    actTogglePeriodLabelsExtraInfo: TAction;
    cdsGridDataDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDATE_UNIT_LAST_DATE: TAbmesSQLTimeStampField;
    cdsGridDataYEAR_DATE_UNIT_NO: TAbmesFloatField;
    cdsGridDataDATE_UNIT_WORKDAYS: TAbmesFloatField;
    cdsGridDataDATE_UNIT_NO: TAbmesFloatField;
    cdsGridDataOTCH_TENSION: TAbmesFloatField;
    cdsGridDataPLAN_TENSION: TAbmesFloatField;
    cdsGridDataPARTNER_OTCH_TENSION: TAbmesFloatField;
    cdsGridDataOUR_OTCH_TENSION: TAbmesFloatField;
    cdsGridDataPARTNER_PLAN_REAL_TENSION: TAbmesFloatField;
    cdsGridDataOUR_PLAN_REAL_TENSION: TAbmesFloatField;
    cdsGridDataPARTNER_PLAN_POTENTIAL_TENSION: TAbmesFloatField;
    cdsGridDataOUR_PLAN_POTENTIAL_TENSION: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDATE_UNIT_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField;
    pdsGridDataParamsFIN_PROCESS_CODE: TAbmesFloatField;
    pdsGridDataParamsHAS_DOCUMENT_IDENTIFIER: TAbmesFloatField;
    pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField;
    pdsGridDataParamsDATE_UNIT_COUNT: TAbmesFloatField;
    pdsGridDataParams_DATE_UNITS: TAbmesWideStringField;
    pdsGridDataParamsUSE_DEFAULT_ROUNDER: TAbmesFloatField;
    pdsGridDataParamsROUNDER: TAbmesFloatField;
    pdsGridDataParamsDEFAULT_ROUNDER: TAbmesFloatField;
    pdsGridDataParams_ROUNDER_NAME: TAbmesWideStringField;
    pdsGridDataParams_DEFAULT_ROUNDER_NAME: TAbmesWideStringField;
    pdsGridDataParams_USE_ROUNDER: TAbmesFloatField;
    pdsGridDataParams_USE_ROUNDER_NAME: TAbmesWideStringField;
    pdsGridDataParams_COMPANY_CODE: TAbmesFloatField;
    pdsGridDataParams_COMPANY_SHORT_NAME: TAbmesWideStringField;
    pdsGridDataParams_COMPANY_NO: TAbmesFloatField;
    cdsFinProcesses: TAbmesClientDataSet;
    cdsFinProcessesPROCESS_CODE: TAbmesFloatField;
    cdsFinProcessesPROCESS_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_FIN_PROCESS_ABBREV: TAbmesWideStringField;
    serPlanTension: TLineSeries;
    serOurOtchTension: TBarSeries;
    serPartnerOtchTension: TBarSeries;
    cdsGridData_ZERO: TAbmesFloatField;
    cdsGridData_DATE_UNIT_SHOW_NAME: TAbmesWideStringField;
    cdsGridData_DATE_UNIT_SHOW_NAME_EX: TAbmesWideStringField;
    cdsGridData_GRAPH_OTCH_TENSION: TAbmesFloatField;
    cdsGridData_GRAPH_PLAN_TENSION: TAbmesFloatField;
    cdsGridData_GRAPH_PARTNER_OTCH_TENSION: TAbmesFloatField;
    cdsGridData_GRAPH_OUR_OTCH_TENSION: TAbmesFloatField;
    cdsGridData_GRAPH_PARTNER_PLAN_REAL_TENSION: TAbmesFloatField;
    cdsGridData_GRAPH_OUR_PLAN_REAL_TENSION: TAbmesFloatField;
    cdsGridData_GRAPH_PARTNER_PLAN_POTENTIAL_TENSION: TAbmesFloatField;
    cdsGridData_GRAPH_OUR_PLAN_POTENTIAL_TENSION: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_PARTNER_PLAN_POTENTIAL_TENSION: TAbmesFloatField;
    cdsGridData_STACKED_GRAPH_OUR_PLAN_POTENTIAL_TENSION: TAbmesFloatField;
    cdsGridDataDATE_UNIT_STATUS: TAbmesFloatField;
    pnlTogglePeriodLabelsExtraInfo: TPanel;
    btnTogglePeriodLabelsExtraInfo: TSpeedButton;
    cdsFinProcessesPROCESS_NAME: TAbmesWideStringField;
    procedure actExcelExportExecute(Sender: TObject);
    procedure actPriorUpdate(Sender: TObject);
    procedure actPriorExecute(Sender: TObject);
    procedure actNextUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure pdsGridDataParamsCHOSEN_COMPANIESChange(Sender: TField);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure grdRegisterGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure ChartTensionGetAxisLabel(Sender: TChartAxis; Series: TChartSeries;
      ValueIndex: Integer; var LabelText: string);
    procedure ChartTensionAfterDraw(Sender: TObject);
    procedure actTogglePeriodLabelsExtraInfoExecute(Sender: TObject);
    procedure btnPrintChartClick(Sender: TObject);
    procedure LineSeriesClick(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure LineSeriesGetMarkText(Sender: TChartSeries; ValueIndex: Integer;
      var MarkText: string);
    procedure LineSeriesAfterDrawValues(Sender: TObject);
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actTogglePeriodLabelsExtraInfoUpdate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FserOtchTensionVisibleMarks: array of Boolean;
    FserPlanTensionVisibleMarks: array of Boolean;
    FCurrentDateUnitNo: Integer;
    FChartTensionClickFixer: TDBChartSeriesClickFixer;
    procedure ChosenCompaniesChange;
    procedure RefreshChart;
    procedure SetSeries;
    function ChartLeftAxisCaption: string;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  end;

implementation

uses
  fFinancialRelationsGraphFilter, uExcelExport, uUtils, dMain, uPeriods,
  uClientPeriods, uCompanyClientUtils, uClientUtils, JclDateTime, DateUtils,
  StrUtils, uGraphUtils, Math, uClientDateTime;

{$R *.dfm}

const
  DefaultPeriod: TPeriod = perMonth;
  DefaultDateUnitCount = 12;
  GraphTopMarginPart = 0.08;
  GraphBottomMarginPart = 0.05;

{ TfmFinancialRelationsGraph }

procedure TfmFinancialRelationsGraph.actExcelExportExecute(Sender: TObject);
begin
//  inherited;
  GridExcelExport(grdRegister);
end;

procedure TfmFinancialRelationsGraph.actNextExecute(Sender: TObject);
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

procedure TfmFinancialRelationsGraph.actNextUpdate(Sender: TObject);
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

procedure TfmFinancialRelationsGraph.actPriorExecute(Sender: TObject);
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

procedure TfmFinancialRelationsGraph.actPriorUpdate(Sender: TObject);
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

procedure TfmFinancialRelationsGraph.actTogglePeriodLabelsExtraInfoExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  RefreshChart;
end;

procedure TfmFinancialRelationsGraph.actTogglePeriodLabelsExtraInfoUpdate(
  Sender: TObject);
begin
  inherited;
  btnTogglePeriodLabelsExtraInfo.Down:= (Sender as TAction).Checked;
end;

procedure TfmFinancialRelationsGraph.btnPrintChartClick(Sender: TObject);
var
  s: TStringList;
begin
  inherited;

  s:= TStringList.Create;
  try
    s.Add(Caption);
    s.Add(lblPartner.Caption + ': ' + pdsGridDataParams_COMPANY_SHORT_NAME.DisplayText + '    ' + pdsGridDataParams_COMPANY_NO.DisplayText);
    s.Add(lblPeriod.Caption + ': ' + pdsGridDataParams_DATE_UNITS.DisplayText);

    PrintChart(ChartTension, s);
  finally
    FreeAndNil(s);
  end;
end;

procedure TfmFinancialRelationsGraph.cdsGridDataAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  CheckEditMode(pdsGridDataParams);
  pdsGridDataParamsDEFAULT_ROUNDER.AsFloat:= Max(VarToFloat(OwnerData), 1);
  pdsGridDataParams.Post;

  Assert(pdsGridDataParams_USE_ROUNDER.AsFloat <> 0);
end;

procedure TfmFinancialRelationsGraph.cdsGridDataAfterOpen(DataSet: TDataSet);
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

  SetLength(FserOtchTensionVisibleMarks, 0);
  SetLength(FserPlanTensionVisibleMarks, 0);

  RefreshChart;
end;

procedure TfmFinancialRelationsGraph.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;

  FCurrentDateUnitNo:=
    GetTimeUnitCount(
      pdsGridDataParamsBEGIN_DATE.AsDateTime,
      GetPeriodFirstDate(ContextDate, GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger)),
      GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger)
    ) + 1;
end;

procedure TfmFinancialRelationsGraph.cdsGridDataCalcFields(DataSet: TDataSet);

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
  Period: TPeriod;
  i: Integer;
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

  for i:= 0 to cdsGridData.FieldCount - 1 do
    if StartsStr(GraphPrefix, cdsGridData.Fields[i].FieldName) then
      cdsGridData.Fields[i].AsVariant:=
        FloatToVar(
          RealRound(
            cdsGridData.FieldByName(StringReplace(cdsGridData.Fields[i].FieldName, GraphPrefix, '', [])).AsFloat /
            pdsGridDataParams_USE_ROUNDER.AsFloat
          )
        );

  if InRange(cdsGridDataDATE_UNIT_STATUS.AsInteger, -1, 0) then
    cdsGridData_GRAPH_OTCH_TENSION.AsFloat:=
      VarToFloat(cdsGridData_GRAPH_OTCH_TENSION.AsVariant);

  if InRange(cdsGridDataDATE_UNIT_STATUS.AsInteger, 0, 1) then
    cdsGridData_GRAPH_PLAN_TENSION.AsFloat:=
      VarToFloat(cdsGridData_GRAPH_PLAN_TENSION.AsVariant);

  StackFields([
    cdsGridData_GRAPH_PARTNER_PLAN_REAL_TENSION, nil,
    cdsGridData_STACKED_GRAPH_PARTNER_PLAN_POTENTIAL_TENSION, cdsGridData_GRAPH_PARTNER_PLAN_POTENTIAL_TENSION
  ]);
  StackFields([
    cdsGridData_GRAPH_OUR_PLAN_REAL_TENSION, nil,
    cdsGridData_STACKED_GRAPH_OUR_PLAN_POTENTIAL_TENSION, cdsGridData_GRAPH_OUR_PLAN_POTENTIAL_TENSION
  ]);
end;

function TfmFinancialRelationsGraph.ChartLeftAxisCaption: string;
begin
  Result:= LoginContext.BaseCurrencyAbbrev;

  if (pdsGridDataParams_USE_ROUNDER.AsFloat <> 1) then
    Result:= pdsGridDataParams_USE_ROUNDER_NAME.AsString + ' ' + Result;
end;

procedure TfmFinancialRelationsGraph.ChartTensionAfterDraw(Sender: TObject);
begin
  inherited;

  with ChartTension do
    lblStartDate.Top:= LeftAxis.CalcYPosValue(LeftAxis.Minimum) + 5;

  lblEndDate.Top:= lblStartDate.Top + lblStartDate.Height + 3;
end;

procedure TfmFinancialRelationsGraph.ChartTensionGetAxisLabel(Sender: TChartAxis;
  Series: TChartSeries; ValueIndex: Integer; var LabelText: string);
var
  SavedLabelText: string;
begin
  inherited;
  SavedLabelText:= LabelText;
  if (Sender = ChartTension.BottomAxis) then
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

procedure TfmFinancialRelationsGraph.ChosenCompaniesChange;
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

procedure TfmFinancialRelationsGraph.CloseDataSets;
begin
  inherited;
  cdsFinProcesses.Close;
  cdsRounders.Close;
  cdsTimeUnits.Close;
end;

procedure TfmFinancialRelationsGraph.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmFinancialRelationsGraphFilter;
  pcMain.TabIndex:= 0;
  lblBaseCurrencyValues.Caption:=
    FormatBaseCurrencyAbbrevString(lblBaseCurrencyValues.Caption);

  FChartTensionClickFixer:= TDBChartSeriesClickFixer.Create(ChartTension);
end;

procedure TfmFinancialRelationsGraph.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FChartTensionClickFixer);
end;

procedure TfmFinancialRelationsGraph.grdRegisterGetCellParams(Sender: TObject;
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
      if (cdsGridDataDATE_UNIT_WORKDAYS.AsInteger = 0) then
        AFont.Color:= clRed;

      Background:= DateUnitBackgroundColor[(cdsGridDataDATE_UNIT_LAST_DATE.AsDateTime >= ContextDate), Highlight];
    end;
end;

procedure TfmFinancialRelationsGraph.LineSeriesAfterDrawValues(Sender: TObject);

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

  TheChart:= ChartTension;

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
    if ((Sender as TLineSeries).XValue[i] >= FCurrentDateUnitNo) or (Sender = serOtchTension) then
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

          if (i = 0) and (Sender = serOtchTension) then
            DrawMarkPoint(TheChart, NegativeColor, clBlack, X, Y);
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

procedure TfmFinancialRelationsGraph.LineSeriesClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  if (Sender = serOtchTension) then
    begin
      if (Length(FserOtchTensionVisibleMarks) < ValueIndex + 1) then
        SetLength(FserOtchTensionVisibleMarks, ValueIndex + 1);
      FserOtchTensionVisibleMarks[ValueIndex]:= not FserOtchTensionVisibleMarks[ValueIndex];
    end;  { if }

  if (Sender = serPlanTension) then
    begin
      if (Length(FserPlanTensionVisibleMarks) < ValueIndex + 1) then
        SetLength(FserPlanTensionVisibleMarks, ValueIndex + 1);
      FserPlanTensionVisibleMarks[ValueIndex]:= not FserPlanTensionVisibleMarks[ValueIndex];
    end;  { if }

  Sender.Repaint;
end;

procedure TfmFinancialRelationsGraph.LineSeriesGetMarkText(Sender: TChartSeries;
  ValueIndex: Integer; var MarkText: string);
var
  b: TBookmark;
begin
  inherited;

  MarkText:= '';

  if ( (Sender = serOtchTension) and
       (Length(FserOtchTensionVisibleMarks) > ValueIndex) and
       FserOtchTensionVisibleMarks[ValueIndex] ) or
     ( (Sender = serPlanTension) and
       (Length(FserPlanTensionVisibleMarks) > ValueIndex) and
       FserPlanTensionVisibleMarks[ValueIndex] ) then
    begin
      b:= cdsGridData.Bookmark;
      try
        cdsGridData.First;
        if cdsGridData.Locate('DATE_UNIT_NO', (Sender as TLineSeries).XValue[ValueIndex], []) then
          begin
            if (Sender = serOtchTension) then
              MarkText:= cdsGridData_GRAPH_OTCH_TENSION.DisplayText;

            if (Sender = serPlanTension) then
              MarkText:= cdsGridData_GRAPH_PLAN_TENSION.DisplayText;
          end;
      finally
        cdsGridData.Bookmark:= b;
      end;
    end;
end;

procedure TfmFinancialRelationsGraph.OpenDataSets;
begin
  cdsTimeUnits.Open;
  cdsRounders.Open;
  cdsFinProcesses.Open;
  inherited;
end;

procedure TfmFinancialRelationsGraph.pdsGridDataParamsAfterOpen(
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

    ChosenCompaniesChange;

    pdsGridDataParams.Post;
  except
    pdsGridDataParams.Cancel;
    raise;
  end;
end;

procedure TfmFinancialRelationsGraph.pdsGridDataParamsBeforePost(
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
end;

procedure TfmFinancialRelationsGraph.pdsGridDataParamsCalcFields(
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

procedure TfmFinancialRelationsGraph.pdsGridDataParamsCHOSEN_COMPANIESChange(
  Sender: TField);
begin
  inherited;
  ChosenCompaniesChange;
end;

procedure TfmFinancialRelationsGraph.RefreshChart;
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

      ChartTension.LeftAxis.Title.Caption:= ChartLeftAxisCaption;

      Period:= GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger);

      ChartTension.Foot.Text.Text:= SToDate + DateToStr(ContextDate) + '     .';
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
              for i:= 0 to ChartTension.SeriesList.Count - 1 do
                if ChartTension.SeriesList[i].Active and
                   (ChartTension.SeriesList[i].DataSource = cdsGridData) and
                   Assigned(cdsGridData.FindField(ChartTension.SeriesList[i].YValues.ValueSource)) then
                  with cdsGridData.FieldByName(ChartTension.SeriesList[i].YValues.ValueSource) do
                    if not IsNull then
                      begin
                        MinLeftAxisValue:= Min(MinLeftAxisValue, AsFloat);
                        MaxLeftAxisValue:= Max(MaxLeftAxisValue, AsFloat);
                      end;  { if }

              cdsGridData.Next;
            end;  { while }

          Delta:= MaxLeftAxisValue - MinLeftAxisValue;

          ChartTension.LeftAxis.Automatic:= False;
          ChartTension.LeftAxis.Minimum:= MinLeftAxisValue - (Delta * GraphBottomMarginPart);
          ChartTension.LeftAxis.Maximum:= MaxLeftAxisValue + (Delta * GraphTopMarginPart);
        end
      else
        ChartTension.LeftAxis.Automatic:= True;

      ChartTension.BottomAxis.Minimum:= 0;
      ChartTension.BottomAxis.Maximum:= pdsGridDataParamsDATE_UNIT_COUNT.AsInteger + 1;

      ChartTension.RefreshData;
    finally
      cdsGridData.Bookmark:= b;
    end;
  finally
    cdsGridData.EnableControls;
  end;
end;

procedure TfmFinancialRelationsGraph.SetSeries;
begin
// yet nothing to do
end;

end.
