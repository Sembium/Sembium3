unit fSpecInvestedValueLevelsGraph;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons,
  StdCtrls, ExtCtrls, TeEngine, TeeFunci, Series, TeeProcs, Chart, DbChart,
  Mask, Menus, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  VclTee.TeeGDIPlus, System.Actions, EhLibVCL, DBAxisGridsEh;

type
  TfmSpecInvestedValueLevelsGraph = class(TGridForm)
    pnlFilter: TPanel;
    lblProduct: TLabel;
    lblPeriod: TLabel;
    btnFilter2: TBitBtn;
    edtProductName: TDBEdit;
    edtProductNo: TDBEdit;
    tlbFilterProductDocs: TToolBar;
    btnFilterProductDocs: TToolButton;
    pnlTimeUnitCountAndName: TDBEdit;
    pcMain: TPageControl;
    tsPrice: TTabSheet;
    ChartInvestementValues: TDBChart;
    btnPrintChart: TSpeedButton;
    lblStartDate: TLabel;
    lblEndDate: TLabel;
    tsRegister: TTabSheet;
    pnlRegisterTop: TPanel;
    lblInvestementValuesIn: TLabel;
    navRegister: TDBColorNavigator;
    tlbRegister: TToolBar;
    sepExcelExport2: TToolButton;
    btnExcelExport2: TToolButton;
    grdRegister: TAbmesDBGrid;
    pnlTopSeparator: TPanel;
    cdsGridDataDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDATE_UNIT_NO: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_1_INCOMPLETE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_2_INCOMPLETE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_3_INCOMPLETE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_4_INCOMPLETE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridDataINVESTMENT_LEVEL_5_INCOMPLETE: TAbmesFloatField;
    cdsGridDataFULL_INV_LEVEL_1_VALUE: TAbmesFloatField;
    cdsGridDataFULL_INV_LEVEL_1_INCOMPLETE: TAbmesFloatField;
    cdsGridDataFULL_INV_LEVEL_2_VALUE: TAbmesFloatField;
    cdsGridDataFULL_INV_LEVEL_2_INCOMPLETE: TAbmesFloatField;
    cdsGridDataFULL_INV_LEVEL_3_VALUE: TAbmesFloatField;
    cdsGridDataFULL_INV_LEVEL_3_INCOMPLETE: TAbmesFloatField;
    cdsGridDataFULL_INV_LEVEL_4_VALUE: TAbmesFloatField;
    cdsGridDataFULL_INV_LEVEL_4_INCOMPLETE: TAbmesFloatField;
    cdsGridDataFULL_INV_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridDataFULL_INV_LEVEL_5_INCOMPLETE: TAbmesFloatField;
    pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsDATE_UNIT_CODE: TAbmesFloatField;
    pdsGridDataParamsTECH_QUANTITY: TAbmesFloatField;
    pdsGridDataParamsSPEC_PRODUCT_CODE: TAbmesFloatField;
    pdsGridDataParamsCURRENCY_CODE: TAbmesFloatField;
    pdsGridDataParamsROOT_LINE_STAGE_INCLUDE_LEVEL: TAbmesFloatField;
    pdsGridDataParamsNON_ROOT_LINE_STAGE_INCLUDE_LEVEL: TAbmesFloatField;
    pdsGridDataParamsMAIN_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsSPEC_PRODUCT_NAME: TAbmesWideStringField;
    pdsGridDataParamsSPEC_PRODUCT_NO: TAbmesFloatField;
    pdsGridDataParamsSPEC_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField;
    actFilterProductDocs: TAction;
    pdsGridDataParams_DATE_UNITS: TAbmesWideStringField;
    pdsGridDataParamsDATE_UNIT_COUNT: TAbmesFloatField;
    actPrior: TAction;
    actNext: TAction;
    actTogglePeriodLabelsExtraInfo: TAction;
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
    cdsMeasures: TAbmesClientDataSet;
    cdsCurrencies: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsTECH_MEASURE_CODE: TAbmesFloatField;
    pdsGridDataParams_CURRENCY_ABBREV: TAbmesWideStringField;
    cdsGridData_DATE_UNIT_SHOW_NAME: TAbmesWideStringField;
    cdsGridDataDATE_UNIT_LAST_DATE: TAbmesSQLTimeStampField;
    cdsGridDataDATE_UNIT_WORKDAYS: TAbmesFloatField;
    cdsGridData_MAX_FULL_INV_LEVEL_5_VALUE: TAggregateField;
    cdsGridData_DATE_UNIT_SHOW_NAME_EX: TAbmesWideStringField;
    serFullInvestmentLevel5Value: TAreaSeries;
    serFullInvestmentLevel4Value: TAreaSeries;
    serFullInvestmentLevel3Value: TAreaSeries;
    serFullInvestmentLevel2Value: TAreaSeries;
    serFullInvestmentLevel1Value: TAreaSeries;
    actPrintChart: TAction;
    cdsMeasureTypes: TAbmesClientDataSet;
    cdsMeasureTypesMEASURE_TYPE_CODE: TAbmesFloatField;
    cdsMeasureTypesMEASURE_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParamsREAL_MEASURE_CODE: TAbmesFloatField;
    pdsGridDataParams_MEASURE_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParamsREAL_MEASURE_COEF: TAbmesFloatField;
    pdsGridDataParamsTECH_MEASURE_COEF: TAbmesFloatField;
    pdsGridDataParamsMEASURE_CODE: TAbmesFloatField;
    pdsGridDataParamsACCOUNT_MEASURE_CODE: TAbmesFloatField;
    pdsGridDataParamsACCOUNT_MEASURE_COEF: TAbmesFloatField;
    pdsGridDataParamsTRANSPORT_MEASURE_CODE: TAbmesFloatField;
    pdsGridDataParamsTRANSPORT_MEASURE_COEF: TAbmesFloatField;
    pdsGridDataParamsREAL_QUANTITY: TAbmesFloatField;
    pdsGridDataParamsMEASURE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParams_REAL_MEASURE_ABBREV: TAbmesWideStringField;
    cdsGridData_INVESTMENT_LEVEL_1_SHOW: TAbmesWideStringField;
    cdsGridData_INVESTMENT_LEVEL_2_SHOW: TAbmesWideStringField;
    cdsGridData_INVESTMENT_LEVEL_3_SHOW: TAbmesWideStringField;
    cdsGridData_INVESTMENT_LEVEL_4_SHOW: TAbmesWideStringField;
    cdsGridData_INVESTMENT_LEVEL_5_SHOW: TAbmesWideStringField;
    cdsSpecModelMainDepts: TAbmesClientDataSet;
    cdsSpecModelMainDeptsMAIN_DEPT_CODE: TAbmesFloatField;
    cdsSpecModelMainDeptsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    pdsGridDataParams_MAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataAGGR_INV_LEVEL_5_VALUE: TAbmesFloatField;
    cdsGridDataAGGR_INV_LEVEL_5_INCOMPLETE: TAbmesFloatField;
    pdsGridDataParamsINVESTMENT_VALUE_SINGLE: TAbmesFloatField;
    btnTogglePeriodLabelsExtraInfo: TSpeedButton;
    cdsSpecInvestedValuesLevel1Params: TAbmesClientDataSet;
    cdsSpecInvestedValuesLevel1ParamsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecInvestedValuesLevel1ParamsTHE_DATE: TAbmesSQLTimeStampField;
    cdsSpecInvestedValuesLevel1ParamsRESULT_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    tmrClick: TTimer;
    procedure pdsGridDataParamsSPEC_PRODUCT_CODEChange(Sender: TField);
    procedure actFilterProductDocsUpdate(Sender: TObject);
    procedure actFilterProductDocsExecute(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure actNextUpdate(Sender: TObject);
    procedure actPriorUpdate(Sender: TObject);
    procedure actPriorExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actTogglePeriodLabelsExtraInfoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure grdRegisterGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure actExcelExportExecute(Sender: TObject);
    procedure ChartInvestementValuesGetAxisLabel(Sender: TChartAxis;
      Series: TChartSeries; ValueIndex: Integer; var LabelText: string);
    procedure actPrintChartExecute(Sender: TObject);
    procedure pdsGridDataParamsMEASURE_TYPE_CODEChange(Sender: TField);
    procedure pdsGridDataParamsREAL_QUANTITYChange(Sender: TField);
    procedure cdsSpecModelMainDeptsBeforeOpen(DataSet: TDataSet);
    procedure actTogglePeriodLabelsExtraInfoUpdate(Sender: TObject);
    procedure SeriesClick(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure SeriesGetMarkText(Sender: TChartSeries; ValueIndex: Integer;
      var MarkText: string);
    procedure serFullInvestmentLevel1ValueDblClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure tmrClickTimer(Sender: TObject);
  private
    FInGridDataParamsAfterOpen: Boolean;
    FVisibleMarks: array[1..5] of array of Boolean;
    FClickInvestedValueLevel: Integer;
    FClickValueIndex: Integer;
    procedure RefreshChart;
    procedure SetRealMeasure;
    procedure SetTechQuantity;
    procedure FillMeasureTypes;
  protected
    class function CanUseDocs: Boolean; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    { Public declarations }
  end;

implementation

uses dMain, uTreeClientUtils, uClientTypes, uPeriods, uClientPeriods, uUtils,
  fSpecInvestedValueLevelsGraphFilter, JclDateTime, uExcelExport, Math,
  DateUtils, uGraphUtils, uClientConsts, uClientDateTime, StrUtils,
  fSpecInvestedValuesLevel1, uUserActivityConsts;

{$R *.dfm}

const
  DefaultPeriod: TPeriod = perMonth;
  DefaultDateUnitCount = 12;
  GraphTopMarginPart = 0.08;
  GraphBottomMarginPart = 0.05;
  TechMeasureTypeCode = 3;

resourcestring
  SInvestementValuesIn = 'Всички стойности са в %s';
  SToDate = 'към дата: ';

procedure TfmSpecInvestedValueLevelsGraph.actExcelExportExecute(
  Sender: TObject);
begin
//  inherited;
  GridExcelExport(grdRegister);
end;

procedure TfmSpecInvestedValueLevelsGraph.actFilterProductDocsExecute(
  Sender: TObject);
begin
  inherited;
  dmDocClient.OpenProductDoc(emReadOnly, ((Sender as TAction).ActionComponent as TControl),
    pdsGridDataParamsSPEC_PRODUCT_CODE.AsInteger);
end;

procedure TfmSpecInvestedValueLevelsGraph.actFilterProductDocsUpdate(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    begin
      Enabled:= not pdsGridDataParamsSPEC_PRODUCT_CODE.IsNull;
      ImageIndex:= pdsGridDataParamsSPEC_PRODUCT_HAS_DOC_ITEMS.AsInteger;
    end;
end;

procedure TfmSpecInvestedValueLevelsGraph.actNextExecute(Sender: TObject);
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

procedure TfmSpecInvestedValueLevelsGraph.actNextUpdate(Sender: TObject);
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

procedure TfmSpecInvestedValueLevelsGraph.actPrintChartExecute(
  Sender: TObject);
var
  s: TStringList;
begin
  inherited;

  s:= TStringList.Create;
  try
    s.Add(Caption);
    s.Add(lblProduct.Caption + ': ' + pdsGridDataParamsSPEC_PRODUCT_NAME.DisplayText);
    PrintChart(ChartInvestementValues, s);
  finally
    FreeAndNil(s);
  end;
end;

procedure TfmSpecInvestedValueLevelsGraph.actPriorExecute(Sender: TObject);
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

procedure TfmSpecInvestedValueLevelsGraph.actPriorUpdate(Sender: TObject);
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

procedure TfmSpecInvestedValueLevelsGraph.actTogglePeriodLabelsExtraInfoExecute(
  Sender: TObject);
begin
  inherited;
  with Sender as TAction do
    Checked:= not Checked;
  RefreshChart;
end;

procedure TfmSpecInvestedValueLevelsGraph.actTogglePeriodLabelsExtraInfoUpdate(
  Sender: TObject);
begin
  inherited;
  btnTogglePeriodLabelsExtraInfo.Down:= (Sender as TAction).Checked;
end;

class function TfmSpecInvestedValueLevelsGraph.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmSpecInvestedValueLevelsGraph.cdsGridDataAfterOpen(
  DataSet: TDataSet);
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

  lblInvestementValuesIn.Caption:=
    Format(SInvestementValuesIn, [pdsGridDataParams_CURRENCY_ABBREV.DisplayText]);

  RefreshChart;
end;

procedure TfmSpecInvestedValueLevelsGraph.cdsGridDataCalcFields(
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

  function InvestmentLevelShow(AValueField, AIncompleteField: TField): string;
  begin
    Result:= AValueField.DisplayText;
    if AIncompleteField.AsBoolean then
      Result:= '(' + Result + ')';
  end;  { InvestmentLevelShow }

var
  Period: TPeriod;
begin
  inherited;

  Period:= GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger);

  cdsGridData_DATE_UNIT_SHOW_NAME.AsString:=
    GetPeriodLabel(
      cdsGridDataDATE_UNIT_FIRST_DATE.AsDateTime,
      Period);

  cdsGridData_DATE_UNIT_SHOW_NAME_EX.AsString:=
    cdsGridData_DATE_UNIT_SHOW_NAME.AsString + #13 +
    GetPeriodLabelExtraInfo(cdsGridDataDATE_UNIT_FIRST_DATE.AsDateTime, Period);

  cdsGridData_INVESTMENT_LEVEL_1_SHOW.AsString:=
    InvestmentLevelShow(cdsGridDataINVESTMENT_LEVEL_1_VALUE, cdsGridDataINVESTMENT_LEVEL_1_INCOMPLETE);
  cdsGridData_INVESTMENT_LEVEL_2_SHOW.AsString:=
    InvestmentLevelShow(cdsGridDataINVESTMENT_LEVEL_2_VALUE, cdsGridDataINVESTMENT_LEVEL_2_INCOMPLETE);
  cdsGridData_INVESTMENT_LEVEL_3_SHOW.AsString:=
    InvestmentLevelShow(cdsGridDataINVESTMENT_LEVEL_3_VALUE, cdsGridDataINVESTMENT_LEVEL_3_INCOMPLETE);
  cdsGridData_INVESTMENT_LEVEL_4_SHOW.AsString:=
    InvestmentLevelShow(cdsGridDataINVESTMENT_LEVEL_4_VALUE, cdsGridDataINVESTMENT_LEVEL_4_INCOMPLETE);
  cdsGridData_INVESTMENT_LEVEL_5_SHOW.AsString:=
    InvestmentLevelShow(cdsGridDataINVESTMENT_LEVEL_5_VALUE, cdsGridDataINVESTMENT_LEVEL_5_INCOMPLETE);
end;

procedure TfmSpecInvestedValueLevelsGraph.cdsSpecModelMainDeptsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsSpecModelMainDepts.Params.ParamByName('SPEC_PRODUCT_CODE').Value:=
    pdsGridDataParamsSPEC_PRODUCT_CODE.AsVariant;                                                     
end;

procedure TfmSpecInvestedValueLevelsGraph.ChartInvestementValuesGetAxisLabel(
  Sender: TChartAxis; Series: TChartSeries; ValueIndex: Integer;
  var LabelText: string);
var
  b: TBookmark;
begin
  inherited;

  if (Sender = ChartInvestementValues.BottomAxis) then
    begin
        b:= cdsGridData.Bookmark;
        try
          cdsGridData.First;
          if (LabelText <> '') and
             cdsGridData.Locate('DATE_UNIT_NO', LabelText, []) then
            begin
              if actTogglePeriodLabelsExtraInfo.Checked then
                LabelText:= cdsGridData_DATE_UNIT_SHOW_NAME_EX.AsString
              else
                LabelText:= cdsGridData_DATE_UNIT_SHOW_NAME.AsString;

              if (cdsGridDataDATE_UNIT_WORKDAYS.AsInteger = 0) then
                Sender.ParentChart.Canvas.Font.Color:= clRed
              else
                begin
                  if (GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger) = perDay) and
                     (DayOfTheWeek(cdsGridDataDATE_UNIT_FIRST_DATE.AsDateTime) = 1) then
                    Sender.ParentChart.Canvas.Font.Color:= clBlue
                  else
                    Sender.ParentChart.Canvas.Font.Color:= clBlack;
                end;
            end
          else
            LabelText:= ' ';
        finally
          cdsGridData.Bookmark:= b;
        end;
    end;
end;

procedure TfmSpecInvestedValueLevelsGraph.CloseDataSets;
begin
  inherited;
  cdsCurrencies.Close;
  cdsMeasures.Close;
  cdsTimeUnits.Close;
  cdsMeasureTypes.Close;
end;

procedure TfmSpecInvestedValueLevelsGraph.FillMeasureTypes;
begin
  cdsMeasureTypes.Close;
  cdsMeasureTypes.CreateDataSet;

  cdsMeasureTypes.AppendRecord([1, SWorkMeasureTypeName]);
  cdsMeasureTypes.AppendRecord([2, SAccountMeasureTypeName]);
  cdsMeasureTypes.AppendRecord([TechMeasureTypeCode, STechMeasureTypeName]);
  cdsMeasureTypes.AppendRecord([4, STransportMeasureTypeName]);
end;

procedure TfmSpecInvestedValueLevelsGraph.FormCreate(Sender: TObject);
begin
  inherited;
  FilterFormClass:= TfmSpecInvestedValueLevelsGraphFilter;
  pcMain.TabIndex:= 0;
  FillMeasureTypes;
end;

procedure TfmSpecInvestedValueLevelsGraph.grdRegisterGetCellParams(
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

  if (Column.Field = cdsGridData_DATE_UNIT_SHOW_NAME) then
    begin
      if (cdsGridDataDATE_UNIT_WORKDAYS.AsInteger = 0) then
        AFont.Color:= clRed;

      Background:= DateUnitBackgroundColor[(cdsGridDataDATE_UNIT_LAST_DATE.AsDateTime >= ContextDate), Highlight];
    end
  else
    begin
      if cdsGridData.Fields[Column.Field.Index + 1].AsBoolean then
        AFont.Color:= clRed;
    end;
end;

procedure TfmSpecInvestedValueLevelsGraph.OpenDataSets;
begin
  cdsTimeUnits.Open;
  cdsMeasures.Open;
  cdsCurrencies.Open;
  inherited;
end;

procedure TfmSpecInvestedValueLevelsGraph.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
var
  SaveProductCode: Variant;
  SaveTechQuantity: Variant;
begin
  inherited;

  FInGridDataParamsAfterOpen:= True;
  try
    pdsGridDataParams.Edit;
    try
      if pdsGridDataParamsDATE_UNIT_CODE.IsNull then
        pdsGridDataParamsDATE_UNIT_CODE.AsInteger:= GetPeriodConst(DefaultPeriod);

      if Assigned(OuterDataSet) and
         OuterDataSet.Active and
         Assigned(OuterDataSet.FindField('DATE_UNIT_COUNT')) then
        pdsGridDataParamsDATE_UNIT_COUNT.Assign(OuterDataSet.FindField('DATE_UNIT_COUNT'))
      else
        pdsGridDataParamsDATE_UNIT_COUNT.AsInteger:= DefaultDateUnitCount;

      if pdsGridDataParamsBEGIN_DATE.IsNull then
        pdsGridDataParamsBEGIN_DATE.AsDateTime:=
          IncDate(GetPeriodFirstDate(ContextDate, DefaultPeriod), DefaultPeriod, -(DefaultDateUnitCount div 2));

      SaveTechQuantity:= pdsGridDataParamsTECH_QUANTITY.AsVariant;

      SaveProductCode:= pdsGridDataParamsSPEC_PRODUCT_CODE.AsVariant;
      pdsGridDataParamsSPEC_PRODUCT_CODE.Clear;
      pdsGridDataParamsSPEC_PRODUCT_CODE.AsVariant:= SaveProductCode;  // trigger OnChange

      if Assigned(OuterDataSet) and
         OuterDataSet.Active and
         Assigned(OuterDataSet.FindField('MEASURE_TYPE_CODE')) then
        pdsGridDataParamsMEASURE_TYPE_CODE.Assign(OuterDataSet.FindField('MEASURE_TYPE_CODE'))
      else
        pdsGridDataParamsMEASURE_TYPE_CODE.AsFloat:= TechMeasureTypeCode;

      if (pdsGridDataParamsMEASURE_TYPE_CODE.AsFloat = TechMeasureTypeCode) then
        pdsGridDataParamsREAL_QUANTITY.AsVariant:= SaveTechQuantity
      else
        pdsGridDataParamsREAL_QUANTITY.AsVariant:=
          VarMult(
            VarDivide(SaveTechQuantity, pdsGridDataParamsTECH_MEASURE_COEF.AsVariant),
            pdsGridDataParamsREAL_MEASURE_COEF.AsVariant
          );

      if Assigned(OuterDataSet) and
         OuterDataSet.Active and
         Assigned(OuterDataSet.FindField('MAIN_DEPT_CODE')) then
        pdsGridDataParamsMAIN_DEPT_CODE.Assign(OuterDataSet.FindField('MAIN_DEPT_CODE'));

      pdsGridDataParams.Post;
    except
      pdsGridDataParams.Cancel;
      raise;
    end;
  finally
    FInGridDataParamsAfterOpen:= False;
  end;
end;

procedure TfmSpecInvestedValueLevelsGraph.pdsGridDataParamsBeforePost(
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

  if not FInGridDataParamsAfterOpen then
    CheckRequiredFields(DataSet,
      'SPEC_PRODUCT_CODE; TECH_QUANTITY; _CURRENCY_ABBREV');
end;

procedure TfmSpecInvestedValueLevelsGraph.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if pdsGridDataParamsDATE_UNIT_CODE.IsNull then
    pdsGridDataParams_DATE_UNITS.Clear
  else
    pdsGridDataParams_DATE_UNITS.AsString:=
      Format('%d * %s', [
        pdsGridDataParamsDATE_UNIT_COUNT.AsInteger,
        GetPeriodTypeName(GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger), True)
      ]);
end;

procedure TfmSpecInvestedValueLevelsGraph.pdsGridDataParamsMEASURE_TYPE_CODEChange(
  Sender: TField);
begin
  inherited;
  SetRealMeasure;
end;

procedure TfmSpecInvestedValueLevelsGraph.pdsGridDataParamsREAL_QUANTITYChange(
  Sender: TField);
begin
  inherited;
  SetTechQuantity;
end;

procedure TfmSpecInvestedValueLevelsGraph.pdsGridDataParamsSPEC_PRODUCT_CODEChange(
  Sender: TField);
var
  SaveRealQuantity: Variant;
begin
  inherited;

  DoProductFieldChanged(Sender,
    pdsGridDataParamsSPEC_PRODUCT_NAME,
    pdsGridDataParamsSPEC_PRODUCT_NO,
    pdsGridDataParamsMEASURE_CODE,
    pdsGridDataParamsACCOUNT_MEASURE_CODE,
    pdsGridDataParamsACCOUNT_MEASURE_COEF,
    pdsGridDataParamsTECH_MEASURE_CODE,
    pdsGridDataParamsTECH_MEASURE_COEF,
    nil, nil, nil,
    pdsGridDataParamsSPEC_PRODUCT_HAS_DOC_ITEMS,
    pdsGridDataParamsTRANSPORT_MEASURE_CODE,
    pdsGridDataParamsTRANSPORT_MEASURE_COEF
  );

  SaveRealQuantity:= pdsGridDataParamsREAL_QUANTITY.AsVariant;
  SetRealMeasure;
  pdsGridDataParamsREAL_QUANTITY.AsVariant:= SaveRealQuantity;

  pdsGridDataParamsMAIN_DEPT_CODE.Clear;
  cdsSpecModelMainDepts.Close;
  cdsSpecModelMainDepts.Open;
end;

procedure TfmSpecInvestedValueLevelsGraph.RefreshChart;
var
  Period: TPeriod;
  MaxFullInvestedLevel5Value: Real;
  i: Integer;
begin
  ChartInvestementValues.LeftAxis.Title.Caption:=
    pdsGridDataParams_CURRENCY_ABBREV.DisplayText;

  Period:= GetPeriodValue(pdsGridDataParamsDATE_UNIT_CODE.AsInteger);

  ChartInvestementValues.Foot.Text.Text:= SToDate + DateToStr(ContextDate) + '     .';
  lblStartDate.Caption:= FormatPeriodDate(pdsGridDataParamsBEGIN_DATE.AsDateTime, Period);
  lblEndDate.Caption:= FormatPeriodDate(pdsGridDataParamsEND_DATE.AsDateTime, Period);

  MaxFullInvestedLevel5Value:=
    VarToFloat(cdsGridData_MAX_FULL_INV_LEVEL_5_VALUE.AsVariant);

  ChartInvestementValues.LeftAxis.Maximum:=
    MaxFullInvestedLevel5Value * (1 + GraphTopMarginPart);

  for i:= 0 to ChartInvestementValues.SeriesCount - 1 do
    ChartInvestementValues.Series[i].Active:= (MaxFullInvestedLevel5Value <> 0);

  ChartInvestementValues.BottomAxis.Minimum:= 0;
  ChartInvestementValues.BottomAxis.Maximum:= pdsGridDataParamsDATE_UNIT_COUNT.AsInteger + 1;

  ChartInvestementValues.RefreshData;
end;

procedure TfmSpecInvestedValueLevelsGraph.serFullInvestmentLevel1ValueDblClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  LoginContext.CheckUserActivity(uaShowLevelOneInvestedValues);

  tmrClick.Enabled:= False;

  cdsSpecInvestedValuesLevel1Params.CreateDataSet;
  try
    cdsSpecInvestedValuesLevel1Params.SafeAppend /
      procedure begin
        cdsSpecInvestedValuesLevel1ParamsSPEC_PRODUCT_CODE.Assign(pdsGridDataParamsSPEC_PRODUCT_CODE);
        cdsSpecInvestedValuesLevel1ParamsTHE_DATE.AsDateTime:=
          cdsGridData.Lookup('DATE_UNIT_NO', (Sender as TAreaSeries).XValue[ValueIndex], 'DATE_UNIT_FIRST_DATE');
        cdsSpecInvestedValuesLevel1ParamsRESULT_PRODUCT_TECH_QUANTITY.AsFloat:=
          IfThen(pdsGridDataParamsINVESTMENT_VALUE_SINGLE.AsBoolean,
            1,
            pdsGridDataParamsREAL_QUANTITY.AsFloat /
            pdsGridDataParamsREAL_MEASURE_COEF.AsFloat *
            pdsGridDataParamsTECH_MEASURE_COEF.AsFloat
          );
      end;

    TfmSpecInvestedValuesLevel1.ShowForm(nil, cdsSpecInvestedValuesLevel1Params);
  finally
    cdsSpecInvestedValuesLevel1Params.Close;
  end;
end;

procedure TfmSpecInvestedValueLevelsGraph.SeriesClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  FClickInvestedValueLevel:= StrToInt(LeftStr(RightStr(Sender.Name, 6), 1));
  FClickValueIndex:= ValueIndex;

  tmrClick.Enabled:= True;
end;

procedure TfmSpecInvestedValueLevelsGraph.SeriesGetMarkText(
  Sender: TChartSeries; ValueIndex: Integer; var MarkText: string);
var
  InvestedValueLevel: Integer;
  LocalMarkText: string;
begin
  inherited;

  LocalMarkText:= '';

  InvestedValueLevel:= StrToInt(LeftStr(RightStr(Sender.Name, 6), 1));

  if ( (Length(FVisibleMarks[InvestedValueLevel]) > ValueIndex) and
        FVisibleMarks[InvestedValueLevel][ValueIndex] ) or
     ( (ValueIndex > 0) and
       (Length(FVisibleMarks[InvestedValueLevel]) > ValueIndex - 1) and
        FVisibleMarks[InvestedValueLevel][ValueIndex - 1] )  then
    cdsGridData.PreserveBookmark /
      procedure begin
        cdsGridData.First;
        if cdsGridData.Locate('DATE_UNIT_NO', (Sender as TAreaSeries).XValue[ValueIndex], []) then
          LocalMarkText:=
            cdsGridData.FieldByName(Format('_INVESTMENT_LEVEL_%d_SHOW', [InvestedValueLevel])).DisplayText;
      end;

  MarkText:= LocalMarkText;
end;

procedure TfmSpecInvestedValueLevelsGraph.SetRealMeasure;
const
  MeasureFieldNamePrefixes: array[1..4] of string =
    ('', 'ACCOUNT_', 'TECH_', 'TRANSPORT_');
var
  Prefix: string;
begin
  if pdsGridDataParamsMEASURE_TYPE_CODE.IsNull then
    begin
      pdsGridDataParamsREAL_MEASURE_CODE.Clear;
      pdsGridDataParamsREAL_MEASURE_COEF.Clear;
    end
  else
    begin
      Assert(InRange(pdsGridDataParamsMEASURE_TYPE_CODE.AsInteger,
        Low(MeasureFieldNamePrefixes), High(MeasureFieldNamePrefixes)));

      Prefix:= MeasureFieldNamePrefixes[pdsGridDataParamsMEASURE_TYPE_CODE.AsInteger];

      pdsGridDataParamsREAL_MEASURE_CODE.AsVariant:=
        pdsGridDataParams.FieldByName(Prefix + 'MEASURE_CODE').AsVariant;

      if (Prefix = '') then
        pdsGridDataParamsREAL_MEASURE_COEF.AsFloat:= 1
      else
        pdsGridDataParamsREAL_MEASURE_COEF.AsVariant:=
          pdsGridDataParams.FieldByName(Prefix + 'MEASURE_COEF').AsVariant;
    end;  { if }

  if (pdsGridDataParamsMEASURE_TYPE_CODE.AsFloat = TechMeasureTypeCode) then
    pdsGridDataParamsREAL_QUANTITY.Assign(pdsGridDataParamsTECH_QUANTITY)
  else
    pdsGridDataParamsREAL_QUANTITY.AsVariant:=
      VarMult(
        VarDivide(
          pdsGridDataParamsTECH_QUANTITY.AsVariant,
          pdsGridDataParamsTECH_MEASURE_COEF.AsVariant
        ),
        pdsGridDataParamsREAL_MEASURE_COEF.AsVariant
      );
end;

procedure TfmSpecInvestedValueLevelsGraph.SetTechQuantity;
begin
  if (pdsGridDataParamsMEASURE_TYPE_CODE.AsInteger = TechMeasureTypeCode) then
    pdsGridDataParamsTECH_QUANTITY.Assign(pdsGridDataParamsREAL_QUANTITY)
  else
    begin
      if pdsGridDataParamsREAL_QUANTITY.IsNull or
         (pdsGridDataParamsREAL_MEASURE_COEF.AsFloat = 0) or
         (pdsGridDataParamsTECH_MEASURE_COEF.AsFloat = 0) then
        pdsGridDataParamsTECH_QUANTITY.Clear
      else
        pdsGridDataParamsTECH_QUANTITY.AsFloat:=
          ( pdsGridDataParamsREAL_QUANTITY.AsFloat /
            pdsGridDataParamsREAL_MEASURE_COEF.AsFloat
          ) *
          pdsGridDataParamsTECH_MEASURE_COEF.AsFloat;
    end;
end;

procedure TfmSpecInvestedValueLevelsGraph.tmrClickTimer(Sender: TObject);
begin
  inherited;

  tmrClick.Enabled:= False;

  if (Length(FVisibleMarks[FClickInvestedValueLevel]) < FClickValueIndex + 1) then
    SetLength(FVisibleMarks[FClickInvestedValueLevel], FClickValueIndex + 1);

  FVisibleMarks[FClickInvestedValueLevel][FClickValueIndex]:=
    not FVisibleMarks[FClickInvestedValueLevel][FClickValueIndex];

  ChartInvestementValues.Repaint;
end;

end.
