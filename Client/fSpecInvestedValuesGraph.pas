unit fSpecInvestedValuesGraph;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponentBase, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls,
  ColorNavigator, Buttons, StdCtrls, ExtCtrls, dDocClient, uClientTypes,
  fBaseFrame, fDBFrame, fFieldEditFrame, fPartnerFieldEditFrame,
  fPartnerExFieldEditFrame, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fProductExFieldEditFrame, Mask, TeeProcs,
  TeEngine, Chart, DbChart, Series, uSplitInvestedValue, Menus;

const
  MaxInvestedValueLevel = 5;

type
  TCalcModelVariantInvestedValues =
    procedure(ACurrencyCode: Integer; ADate: TDateTime;
      ARootLineStageIncludeLevel, ANonRootLineStageIncludeLevel: Integer;
      out AInvestedValueIsIncomplete: Boolean) of object;

type
  TSpecModelDeptVariantInvestedValues = record
    MinTechQuantity: Real;
    MaxTechQuantity: Real;
    SplitInvestedValues: array[1..MaxInvestedValueLevel] of TSplitInvestedValue;

    procedure Clear;
    function InvestedValue(InvestedValueLevel: Integer; Quantity: Real): Real;
    function FullInvestedValue(InvestedValueLevel: Integer; Quantity: Real): Real;
  end;

type
  TfmSpecInvestedValuesGraph = class(TGridForm)
    cdsGridDataDUMMY: TAbmesFloatField;
    pdsGridDataParamsMAIN_DEPT_CODE: TAbmesFloatField;
    pdsGridDataParams_MAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsCurrencies: TAbmesClientDataSet;
    cdsCurrenciesCURRENCY_CODE: TAbmesFloatField;
    cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsCURRENCY_CODE: TAbmesFloatField;
    pdsGridDataParams_CURRENCY_ABBREV: TAbmesWideStringField;
    pdsGridDataParamsTHE_DATE: TAbmesSQLTimeStampField;
    pdsGridDataParamsMEASURE_TYPE_CODE: TAbmesFloatField;
    pdsGridDataParamsMAX_QUANTITY: TAbmesFloatField;
    pnlTop: TPanel;
    frProduct: TfrProductExFieldEditFrame;
    pnlClient: TPanel;
    pnlInnerClient: TPanel;
    pnlGraphTop: TPanel;
    pnlInvestedValues: TPanel;
    pnlInvestedValuesTop: TPanel;
    gbInvestedValues: TGroupBox;
    pnlInvestmentValuesCaption: TPanel;
    edtQuantity: TDBEdit;
    txtMeasureAbbrev: TDBText;
    ChartInvestedValues: TDBChart;
    pdsGridDataParamsMEASURE_CODE: TAbmesFloatField;
    pdsGridDataParamsMEASURE_COEF: TAbmesFloatField;
    cdsMeasures: TAbmesClientDataSet;
    cdsMeasuresMEASURE_CODE: TAbmesFloatField;
    cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField;
    cdsMeasuresMEASURE_NAME: TAbmesWideStringField;
    cdsMeasureTypes: TAbmesClientDataSet;
    cdsMeasureTypesMEASURE_TYPE_CODE: TAbmesFloatField;
    cdsMeasureTypesMEASURE_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_MEASURE_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_MEASURE_ABBREV: TAbmesWideStringField;
    pdsGridDataParams_MEASURE_NAME: TAbmesWideStringField;
    SeriesInvestedLevel1: TLineSeries;
    SeriesFullInvestedLevel5: TLineSeries;
    cdsGraph: TAbmesClientDataSet;
    cdsGraphQUANTITY: TAbmesFloatField;
    cdsGraphSINGLE_INVESTED_VALUE_1: TAbmesFloatField;
    cdsGraphSINGLE_FULL_INVESTED_VALUE: TAbmesFloatField;
    pdsGridDataParamsQUANTITY_STEP: TAbmesFloatField;
    cdsInvestedValueDetails: TAbmesClientDataSet;
    cdsInvestedValueDetailsINVESTED_VALUE_1: TAbmesFloatField;
    cdsInvestedValueDetailsINVESTED_VALUE_2: TAbmesFloatField;
    cdsInvestedValueDetailsINVESTED_VALUE_3: TAbmesFloatField;
    cdsInvestedValueDetailsINVESTED_VALUE_4: TAbmesFloatField;
    cdsInvestedValueDetailsINVESTED_VALUE_5: TAbmesFloatField;
    cdsInvestedValueDetailsFULL_INVESTED_VALUE_1: TAbmesFloatField;
    cdsInvestedValueDetailsFULL_INVESTED_VALUE_2: TAbmesFloatField;
    cdsInvestedValueDetailsFULL_INVESTED_VALUE_3: TAbmesFloatField;
    cdsInvestedValueDetailsFULL_INVESTED_VALUE_4: TAbmesFloatField;
    cdsInvestedValueDetailsFULL_INVESTED_VALUE_5: TAbmesFloatField;
    cdsInvestedValueDetailsAGGR_INVESTED_VALUE_2: TAbmesFloatField;
    cdsInvestedValueDetailsAGGR_INVESTED_VALUE_3: TAbmesFloatField;
    cdsInvestedValueDetailsAGGR_INVESTED_VALUE_4: TAbmesFloatField;
    cdsInvestedValueDetailsAGGR_INVESTED_VALUE_5: TAbmesFloatField;
    dsInvestedValueDetails: TDataSource;
    cdsInvestedValueDetailsQUANTITY: TAbmesFloatField;
    pnlInvestedValuesDetail: TPanel;
    pnlInvestmentLevel5: TPanel;
    lblInvestmentLevel5: TLabel;
    lblInvestmentLevel5Desc: TLabel;
    pnlInvestmentLevel5Controls: TPanel;
    txtInvestmentValueLeve5MeasureAbbrev: TDBText;
    edtInvestmentLevel5Value: TDBEdit;
    pnlInvestmentLevel4: TPanel;
    lblInvestmentLevel4: TLabel;
    lblInvestmentLevel4Desc: TLabel;
    pnlInvestmentLevel4Controls: TPanel;
    txtInvestmentValueLeve4MeasureAbbrev: TDBText;
    edtInvestmentLevel4Value: TDBEdit;
    pnlInvestmentLevel3: TPanel;
    lblInvestmentLevel3: TLabel;
    lblInvestmentLevel3Desc: TLabel;
    pnlInvestmentLevel3Controls: TPanel;
    txtInvestmentValueLeve3MeasureAbbrev: TDBText;
    edtInvestmentLevel3Value: TDBEdit;
    pnlInvestmentLevel2: TPanel;
    lblInvestmentLevel2: TLabel;
    lblInvestmentLevel2Desc: TLabel;
    pnlInvestmentLevel2Controls: TPanel;
    txtInvestmentValueLeve2MeasureAbbrev: TDBText;
    edtInvestmentLevel2Value: TDBEdit;
    pnlInvestmentLevel1: TPanel;
    lblInvestmentLevel1: TLabel;
    lblInvestmentLevel1Desc: TLabel;
    pnlInvestmentLevel1Controls: TPanel;
    txtInvestmentValueLeve1MeasureAbbrev: TDBText;
    edtInvestmentLevel1Value: TDBEdit;
    pnlAggregatedInvestmentValues: TPanel;
    txtAggrInvestmentValueMeasureAbbrev: TDBText;
    lblAggregatedInvestmentValues: TLabel;
    edtAggrInvestmentLevel2Value: TDBEdit;
    edtAggrInvestmentLevel3Value: TDBEdit;
    edtAggrInvestmentLevel4Value: TDBEdit;
    edtAggrInvestmentLevel5Value: TDBEdit;
    pnlFullInvestmentValues: TPanel;
    txtFullInvestmentValueMeasureAbbrev: TDBText;
    lblFullInvestmentValues: TLabel;
    edtFullInvestmentLevel1Value: TDBEdit;
    edtFullInvestmentLevel2Value: TDBEdit;
    edtFullInvestmentLevel3Value: TDBEdit;
    edtFullInvestmentLevel4Value: TDBEdit;
    edtFullInvestmentLevel5Value: TDBEdit;
    pnlInvestedValuesLeftMargin: TPanel;
    lblBaseCurrency5: TDBText;
    lblBaseCurrency4: TDBText;
    lblBaseCurrency3: TDBText;
    lblBaseCurrency2: TDBText;
    lblBaseCurrency1: TDBText;
    lblBaseCurrency20: TDBText;
    lblBaseCurrency30: TDBText;
    lblSlash: TLabel;
    lblSlash2: TLabel;
    lblSlash3: TLabel;
    lblSlash5: TLabel;
    lblSlash6: TLabel;
    lblSlash7: TLabel;
    lblSlash8: TLabel;
    btnPrint: TSpeedButton;
    btnFilter2: TSpeedButton;
    lblMeasureType: TLabel;
    edtMeasureType: TDBEdit;
    edtMeasureAbbrev: TDBEdit;
    lblMaxQuantity: TLabel;
    edtMaxQuantity: TDBEdit;
    txtMeasureAbbrev2: TDBText;
    lblQuantityStep: TLabel;
    edtQuantityStep: TDBEdit;
    txtMeasureAbbrev3: TDBText;
    pdsGridDataParams_SHOW_MEASURE_TYPE_NAME: TAbmesWideStringField;
    pdsGridDataParams_SHOW_MAX_QUANTITY: TAbmesFloatField;
    pdsGridDataParams_SHOW_QUANTITY_STEP: TAbmesFloatField;
    lblIncompleteInvestedValue: TLabel;
    lblUnauthorizedModels: TLabel;
    cdsGraph_MAX_SINGLE_INVESTED_VALUE_1: TAggregateField;
    cdsGraph_MAX_SINGLE_FULL_INVESTED_VALUE: TAggregateField;
    pdsGridDataParamsROOT_LINE_STAGE_INCLUDE_LEVEL: TAbmesFloatField;
    pdsGridDataParamsNON_ROOT_LINE_STAGE_INCLUDE_LEVEL: TAbmesFloatField;
    cdsSpecInvestedValueLevelsGraphParams: TAbmesClientDataSet;
    cdsSpecInvestedValueLevelsGraphParamsBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsSpecInvestedValueLevelsGraphParamsDATE_UNIT_CODE: TAbmesFloatField;
    cdsSpecInvestedValueLevelsGraphParamsDATE_UNIT_COUNT: TAbmesFloatField;
    cdsSpecInvestedValueLevelsGraphParamsTECH_QUANTITY: TAbmesFloatField;
    cdsSpecInvestedValueLevelsGraphParamsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecInvestedValueLevelsGraphParamsCURRENCY_CODE: TAbmesFloatField;
    cdsSpecInvestedValueLevelsGraphParamsMAIN_DEPT_CODE: TAbmesFloatField;
    cdsSpecInvestedValueLevelsGraphParamsMEASURE_TYPE_CODE: TAbmesFloatField;
    cdsSpecInvestedValueLevelsGraphParamsROOT_LINE_STAGE_INCLUDE_LEVEL: TAbmesFloatField;
    cdsSpecInvestedValueLevelsGraphParamsNON_ROOT_LINE_STAGE_INCLUDE_LEVEL: TAbmesFloatField;
    actSpecInvestedValueLevelsGraph: TAction;
    btnSpecInvestedValueLevelsGraph: TBitBtn;
    cdsSpecInvestedValuesLevel1Params: TAbmesClientDataSet;
    cdsSpecInvestedValuesLevel1ParamsSPEC_PRODUCT_CODE: TAbmesFloatField;
    cdsSpecInvestedValuesLevel1ParamsTHE_DATE: TAbmesSQLTimeStampField;
    cdsSpecInvestedValuesLevel1ParamsRESULT_PRODUCT_TECH_QUANTITY: TAbmesFloatField;
    actSpecInvestedValues1Level: TAction;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure pdsGridDataParamsBeforePost(DataSet: TDataSet);
    procedure pdsGridDataParamsMEASURE_TYPE_CODEChange(Sender: TField);
    procedure pdsGridDataParamsAfterOpen(DataSet: TDataSet);
    procedure actPrintUpdate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure pdsGridDataParamsCalcFields(DataSet: TDataSet);
    procedure ChartInvestedValuesMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ChartInvestedValuesMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure actSpecInvestedValueLevelsGraphExecute(Sender: TObject);
    procedure actSpecInvestedValues1LevelExecute(Sender: TObject);
  private
    FcdsModelVariantInvestedValues: TDataSet;
    FCalcModelVariantInvestedValues: TCalcModelVariantInvestedValues;
    FSpecModelDeptVariantsInvestedValues: array of TSpecModelDeptVariantInvestedValues;
    FInGridDataParamsAfterOpen: Boolean;
    FMouseDownTickCount: Cardinal;
    FMouseDownPoint: TPoint;
    procedure RefreshGraph;
    procedure FillMeasureTypes;
    procedure GenerateInvestedValuesArrays(out ModelsAuthorized: Boolean);
    procedure FillGraphDataSet;
    function SpecModelDeptVariantsInvestedValuesIndexFor(ATechQuantity: Real): Integer;
    procedure CalcInvestedValueDetailsFor(AQuantity: Real);
    function GetPrintTitle: string;
    procedure UpdateStatusQuantity;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function ShowFilterForm: Boolean; override;
  public
    class function ShowForm(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AModelVariantInvestedValues: TClientDataSet = nil;
      ACalcModelVariantInvestedValues: TCalcModelVariantInvestedValues = nil): Boolean;
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil; ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone; AFilterFormEnabled: Boolean = True;
      AModelVariantInvestedValues: TClientDataSet = nil;
      ACalcModelVariantInvestedValues: TCalcModelVariantInvestedValues = nil); reintroduce; virtual;
    procedure Initialize; override;
  end;

implementation

uses
  dMain, fSpecInvestedValuesGraphFilter, uUtils, Math, uLoginContext,
  AbmesDialogs, uClientConsts, fSpecInvestedValueLevelsGraph, uPeriods,
  uClientDateTime, fSpecInvestedValuesLevel1, fChangeCurrentPrinter,
  uUserActivityConsts, Types;

const
  GraphMarginPart = 0.05;

{$R *.dfm}

resourcestring
  SInvestedValueCaption = 'Стойност  (%s)';
  SQuantityCaption = 'Количество (%s)';
  SPrintTitle = '%s на %s';

{ TSpecModelDeptVariantInvestedValues }

procedure TSpecModelDeptVariantInvestedValues.Clear;
var
  InvestedValueLevel: Integer;
begin
  MinTechQuantity:= 0;
  MaxTechQuantity:= 0;

  for InvestedValueLevel:= Low(SplitInvestedValues) to High(SplitInvestedValues) do
    SplitInvestedValues[InvestedValueLevel].Clear;
end;

function TSpecModelDeptVariantInvestedValues.InvestedValue(
  InvestedValueLevel: Integer; Quantity: Real): Real;
begin
  Assert(InRange(InvestedValueLevel, Low(SplitInvestedValues), High(SplitInvestedValues)));

  Result:=
    SplitInvestedValues[InvestedValueLevel].FixedValue +
    SplitInvestedValues[InvestedValueLevel].SingleValue * Quantity;
end;

function TSpecModelDeptVariantInvestedValues.FullInvestedValue(
  InvestedValueLevel: Integer; Quantity: Real): Real;
var
  FullSplitInvestedValue: TSplitInvestedValue;
  ivl: Integer;
begin
  Assert(InRange(InvestedValueLevel, Low(SplitInvestedValues), High(SplitInvestedValues)));

  FullSplitInvestedValue.Clear;
  for ivl:= 1 to InvestedValueLevel do
    FullSplitInvestedValue:= FullSplitInvestedValue + SplitInvestedValues[ivl];

  Result:=
    FullSplitInvestedValue.FixedValue +
    FullSplitInvestedValue.SingleValue * Quantity;
end;

{ TfmSpecInvestedValuesGraph }

procedure TfmSpecInvestedValuesGraph.FillGraphDataSet;
var
  ToTechQuantityCoef: Real;
  Quantity: Real;
  TechQuantity: Real;
  idx: Integer;
  SingleInvestedValueLevel1: Real;
begin
  cdsGraph.DisableControls;
  try
    cdsGraph.Close;
    cdsGraph.CreateDataSet;

    if (Length(FSpecModelDeptVariantsInvestedValues) > 0) then
      begin
        ToTechQuantityCoef:=
          (1 / pdsGridDataParamsMEASURE_COEF.AsFloat) *
          OuterDataSet.FieldByName('TECH_MEASURE_COEF').AsFloat;

        SingleInvestedValueLevel1:=
          FSpecModelDeptVariantsInvestedValues[0].InvestedValue(1, ToTechQuantityCoef);

        Quantity:= pdsGridDataParamsQUANTITY_STEP.AsFloat;
        while (Quantity <= pdsGridDataParamsMAX_QUANTITY.AsFloat) do
          begin
            TechQuantity:= Quantity * ToTechQuantityCoef;
            idx:= SpecModelDeptVariantsInvestedValuesIndexFor(TechQuantity);

            if (idx < 0) then
              cdsGraph.AppendRecord([Quantity])
            else
              begin
                cdsGraph.Append;
                try
                  cdsGraphQUANTITY.AsFloat:= Quantity;
                  cdsGraphSINGLE_INVESTED_VALUE_1.AsFloat:= SingleInvestedValueLevel1;

                  cdsGraphSINGLE_FULL_INVESTED_VALUE.AsFloat:=
                    FSpecModelDeptVariantsInvestedValues[idx].FullInvestedValue(MaxInvestedValueLevel, TechQuantity) /
                    Quantity;

                  cdsGraph.Post;
                except
                  cdsGraph.Cancel;
                  raise;
                end;
              end;  { if }

            Quantity:= Quantity + pdsGridDataParamsQUANTITY_STEP.AsFloat;
          end;  { while }
      end;
  finally
    cdsGraph.EnableControls;
  end;
end;

procedure TfmSpecInvestedValuesGraph.actPrintExecute(Sender: TObject);
begin
//  inherited;
  if (TfmChangeCurrentPrinter.ShowForm = mrOk) then
    begin
      ChartInvestedValues.PrintMargins:= Rect(0, 0, 0, 0);

      ChartInvestedValues.UndoZoom;
      ChartInvestedValues.Title.Visible:= True;
      try
        ChartInvestedValues.Title.Text.Text:= GetPrintTitle + SLineBreak + ' ';
        ChartInvestedValues.PrintLandscape;
      finally
        ChartInvestedValues.Title.Visible:= False;
      end;
    end;
end;

procedure TfmSpecInvestedValuesGraph.actPrintUpdate(Sender: TObject);
begin
//  inherited;
  (Sender as TAction).Enabled:= True;
end;

procedure TfmSpecInvestedValuesGraph.actSpecInvestedValueLevelsGraphExecute(
  Sender: TObject);
begin
  inherited;

  dmMain.LoginContext.CheckUserActivities([uaShowLevelOneInvestedValues, uaShowHighLevelInvestedValues]);

  cdsSpecInvestedValueLevelsGraphParams.CreateDataSet;
  try
    cdsSpecInvestedValueLevelsGraphParams.Append;
    try
      cdsSpecInvestedValueLevelsGraphParams.AssignFields(pdsGridDataParams);

      cdsSpecInvestedValueLevelsGraphParamsSPEC_PRODUCT_CODE.AsInteger:=
        OuterDataSet.FieldByName('SPEC_PRODUCT_CODE').AsInteger;

      cdsSpecInvestedValueLevelsGraphParamsTECH_QUANTITY.AsFloat:=
        cdsInvestedValueDetailsQUANTITY.AsFloat *
        (1 / pdsGridDataParamsMEASURE_COEF.AsFloat) *
        OuterDataSet.FieldByName('TECH_MEASURE_COEF').AsFloat;

      cdsSpecInvestedValueLevelsGraphParamsBEGIN_DATE.AsDateTime:=
        pdsGridDataParamsTHE_DATE.AsDateTime;
      cdsSpecInvestedValueLevelsGraphParamsDATE_UNIT_CODE.AsInteger:=
        GetPeriodConst(perDay);
      cdsSpecInvestedValueLevelsGraphParamsDATE_UNIT_COUNT.AsInteger:= 10;

      cdsSpecInvestedValueLevelsGraphParams.Post;
    except
      cdsSpecInvestedValueLevelsGraphParams.Cancel;
      raise;
    end;

    TfmSpecInvestedValueLevelsGraph.ShowForm(nil, cdsSpecInvestedValueLevelsGraphParams, emReadOnly);
  finally
    cdsSpecInvestedValueLevelsGraphParams.Close;
  end;
end;

procedure TfmSpecInvestedValuesGraph.actSpecInvestedValues1LevelExecute(
  Sender: TObject);
begin
  inherited;

  cdsSpecInvestedValuesLevel1Params.CreateDataSet;
  try
    cdsSpecInvestedValuesLevel1Params.SafeAppend /
      procedure begin
        cdsSpecInvestedValuesLevel1ParamsSPEC_PRODUCT_CODE.Assign(OuterDataSet.FieldByName('SPEC_PRODUCT_CODE'));
        cdsSpecInvestedValuesLevel1ParamsTHE_DATE.Assign(pdsGridDataParamsTHE_DATE);
        cdsSpecInvestedValuesLevel1ParamsRESULT_PRODUCT_TECH_QUANTITY.AsFloat:= 1;
      end;

    TfmSpecInvestedValuesLevel1.ShowForm(nil, cdsSpecInvestedValuesLevel1Params);
  finally
    cdsSpecInvestedValuesLevel1Params.Close;
  end;
end;

procedure TfmSpecInvestedValuesGraph.CalcInvestedValueDetailsFor(
  AQuantity: Real);
var
  ToTechQuantityCoef: Real;
  TechQuantity: Real;
  idx: Integer;
  InvestedValueLevel: Integer;
begin
  cdsInvestedValueDetails.DisableControls;
  try
    cdsInvestedValueDetails.Close;
    cdsInvestedValueDetails.CreateDataSet;

    ToTechQuantityCoef:=
      (1 / pdsGridDataParamsMEASURE_COEF.AsFloat) *
      OuterDataSet.FieldByName('TECH_MEASURE_COEF').AsFloat;

    TechQuantity:= AQuantity * ToTechQuantityCoef;

    idx:= SpecModelDeptVariantsInvestedValuesIndexFor(TechQuantity);

    if (idx < 0) then
      cdsInvestedValueDetails.AppendRecord([AQuantity])
    else
      begin
        cdsInvestedValueDetails.Append;
        try
          cdsInvestedValueDetailsQUANTITY.AsFloat:= AQuantity;

          for InvestedValueLevel:= 1 to MaxInvestedValueLevel do
            cdsInvestedValueDetails.FieldByName(Format('INVESTED_VALUE_%d', [InvestedValueLevel])).AsFloat:=
              FSpecModelDeptVariantsInvestedValues[idx].InvestedValue(InvestedValueLevel, AQuantity * ToTechQuantityCoef) /
              AQuantity;

          for InvestedValueLevel:= 1 to MaxInvestedValueLevel do
            cdsInvestedValueDetails.FieldByName(Format('FULL_INVESTED_VALUE_%d', [InvestedValueLevel])).AsFloat:=
              FSpecModelDeptVariantsInvestedValues[idx].FullInvestedValue(InvestedValueLevel, AQuantity * ToTechQuantityCoef) /
              AQuantity;

          for InvestedValueLevel:= 2 to MaxInvestedValueLevel do
            cdsInvestedValueDetails.FieldByName(Format('AGGR_INVESTED_VALUE_%d', [InvestedValueLevel])).AsFloat:=
              cdsInvestedValueDetails.FieldByName(Format('FULL_INVESTED_VALUE_%d', [InvestedValueLevel])).AsFloat -
              cdsInvestedValueDetailsINVESTED_VALUE_1.AsFloat;

          cdsInvestedValueDetails.Post;
        except
          cdsInvestedValueDetails.Cancel;
          raise;
        end;
      end;  { if }
  finally
    cdsInvestedValueDetails.EnableControls;
  end;
end;

procedure TfmSpecInvestedValuesGraph.ChartInvestedValuesMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  FMouseDownTickCount:= GetTickCount;
  FMouseDownPoint:= Point(X, Y);
end;

procedure TfmSpecInvestedValuesGraph.ChartInvestedValuesMouseUp(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  if (TickCountDiff(FMouseDownTickCount, GetTickCount) < 200) and
     (FMouseDownPoint.X = X) and (FMouseDownPoint.Y = Y) then
    UpdateStatusQuantity;
end;

procedure TfmSpecInvestedValuesGraph.FillMeasureTypes;
begin
  cdsMeasureTypes.Close;
  cdsMeasureTypes.CreateDataSet;

  cdsMeasureTypes.AppendRecord([1, SWorkMeasureTypeName]);
  cdsMeasureTypes.AppendRecord([2, SAccountMeasureTypeName]);
  cdsMeasureTypes.AppendRecord([3, STechMeasureTypeName]);
  cdsMeasureTypes.AppendRecord([4, STransportMeasureTypeName]);
end;

procedure TfmSpecInvestedValuesGraph.FormCreate(Sender: TObject);
begin
  inherited;

  FilterFormClass:= TfmSpecInvestedValuesGraphFilter;

  frProduct.DocButtonVisible:= True;
  frProduct.SpecStateVisible:= True;
  frProduct.PriorityVisible:= True;
  frProduct.MeasureVisible:= False;
  frProduct.CommonStatusVisible:= True;
  frProduct.ProductOriginVisible:= False;
  frProduct.PartnerProductNamesVisible:= False;
  frProduct.ProductPeriodsButtonVisible:= False;

  FillMeasureTypes;
end;

procedure TfmSpecInvestedValuesGraph.GenerateInvestedValuesArrays(
  out ModelsAuthorized: Boolean);
var
  SpecModelDeptVariantInvestedValues: TSpecModelDeptVariantInvestedValues;
  InvestedValueLevel: Integer;
begin
  with FcdsModelVariantInvestedValues do
    begin
      SetLength(FSpecModelDeptVariantsInvestedValues, 0);

      ModelsAuthorized:= True;
      First;
      if Locate('MAIN_DEPT_CODE', pdsGridDataParamsMAIN_DEPT_CODE.AsInteger, []) then
        while (not Eof) and
              (FieldByName('MAIN_DEPT_CODE').AsInteger = pdsGridDataParamsMAIN_DEPT_CODE.AsInteger) do
          begin
            SpecModelDeptVariantInvestedValues.Clear;
            SpecModelDeptVariantInvestedValues.MinTechQuantity:= FieldByName('MIN_TECH_QUANTITY').AsFloat;
            SpecModelDeptVariantInvestedValues.MaxTechQuantity:= FieldByName('MAX_TECH_QUANTITY').AsFloat;

            while (not Eof) and
                  (FieldByName('MAIN_DEPT_CODE').AsInteger = pdsGridDataParamsMAIN_DEPT_CODE.AsInteger) and
                  (SpecModelDeptVariantInvestedValues.MinTechQuantity = FieldByName('MIN_TECH_QUANTITY').AsFloat) and
                  (SpecModelDeptVariantInvestedValues.MaxTechQuantity = FieldByName('MAX_TECH_QUANTITY').AsFloat) do
              begin
                ModelsAuthorized:= ModelsAuthorized and
                  not FieldByName('AUTHORIZATION_EMPLOYEE_CODE').IsNull;

                InvestedValueLevel:= FieldByName('INVESTED_VALUE_LEVEL').AsInteger;

                Assert(
                  InRange(InvestedValueLevel,
                    Low(SpecModelDeptVariantInvestedValues.SplitInvestedValues),
                    High(SpecModelDeptVariantInvestedValues.SplitInvestedValues)));

                SpecModelDeptVariantInvestedValues.SplitInvestedValues[InvestedValueLevel].FixedValue:=
                  FieldByName('FIXED_INVESTED_VALUE').AsFloat;
                SpecModelDeptVariantInvestedValues.SplitInvestedValues[InvestedValueLevel].SingleValue:=
                  FieldByName('SINGLE_INVESTED_VALUE').AsFloat;

                Next;
              end;  { while }

            SetLength(FSpecModelDeptVariantsInvestedValues, Length(FSpecModelDeptVariantsInvestedValues)+1);
            FSpecModelDeptVariantsInvestedValues[Length(FSpecModelDeptVariantsInvestedValues)-1]:= SpecModelDeptVariantInvestedValues;
          end;  { while }
    end;  { with }
end;

function TfmSpecInvestedValuesGraph.GetPrintTitle: string;
begin
  Result:= Format(SPrintTitle, [Caption, frProduct.edtTreeNodeName.Text]);
end;

procedure TfmSpecInvestedValuesGraph.Initialize;
begin
  frProduct.FieldNames:= 'SPEC_PRODUCT_CODE';
  frProduct.SetDataSet(OuterDataSet);

  inherited;

  dsGridData.DataSet:= FcdsModelVariantInvestedValues;

  RefreshGraph;
end;

procedure TfmSpecInvestedValuesGraph.OpenDataSets;
begin
  cdsCurrencies.Open;
  cdsMeasures.Open;
  inherited;
end;

procedure TfmSpecInvestedValuesGraph.pdsGridDataParamsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;

  FInGridDataParamsAfterOpen:= True;
  try
    pdsGridDataParams.Edit;
    try
      pdsGridDataParamsCURRENCY_CODE.AsInteger:= LoginContext.BaseCurrencyCode;
      pdsGridDataParamsTHE_DATE.AsDateTime:= ContextDate;
      pdsGridDataParamsQUANTITY_STEP.AsFloat:= 1;
      pdsGridDataParamsROOT_LINE_STAGE_INCLUDE_LEVEL.AsFloat:= 2;
      pdsGridDataParamsNON_ROOT_LINE_STAGE_INCLUDE_LEVEL.AsFloat:= 1;
      pdsGridDataParams.Post;
    except
      pdsGridDataParams.Cancel;
      raise;
    end;
  finally
    FInGridDataParamsAfterOpen:= False;
  end;
end;

procedure TfmSpecInvestedValuesGraph.pdsGridDataParamsBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  if not FInGridDataParamsAfterOpen then
    CheckRequiredFields(DataSet,
      '_MAIN_DEPT_IDENTIFIER; _CURRENCY_ABBREV; THE_DATE; _MEASURE_TYPE_NAME; MAX_QUANTITY; QUANTITY_STEP');
end;

procedure TfmSpecInvestedValuesGraph.pdsGridDataParamsCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  pdsGridDataParams_SHOW_MEASURE_TYPE_NAME.AsVariant:=
    pdsGridDataParams_MEASURE_TYPE_NAME.AsVariant;
  pdsGridDataParams_SHOW_MAX_QUANTITY.AsVariant:=
    pdsGridDataParamsMAX_QUANTITY.AsVariant;
  pdsGridDataParams_SHOW_QUANTITY_STEP.AsVariant:=
    pdsGridDataParamsQUANTITY_STEP.AsVariant;
end;

procedure TfmSpecInvestedValuesGraph.pdsGridDataParamsMEASURE_TYPE_CODEChange(
  Sender: TField);
const
  MeasureFieldNamePrefixes: array[1..4] of string =
    ('', 'ACCOUNT_', 'TECH_', 'TRANSPORT_');
var
  Prefix: string;
begin
  inherited;

  if Sender.IsNull then
    begin
      pdsGridDataParamsMEASURE_CODE.Clear;
      pdsGridDataParamsMEASURE_COEF.Clear;
    end
  else
    begin
      Assert(InRange(Sender.AsInteger, Low(MeasureFieldNamePrefixes), High(MeasureFieldNamePrefixes)));

      Prefix:= MeasureFieldNamePrefixes[Sender.AsInteger];

      pdsGridDataParamsMEASURE_CODE.AsVariant:=
        OuterDataSet.FieldByName(Prefix + 'MEASURE_CODE').AsVariant;

      if (Prefix = '') then
        pdsGridDataParamsMEASURE_COEF.AsFloat:= 1
      else
        pdsGridDataParamsMEASURE_COEF.AsVariant:=
          OuterDataSet.FieldByName(Prefix + 'MEASURE_COEF').AsVariant;
    end;  { if }
end;

procedure TfmSpecInvestedValuesGraph.RefreshGraph;
var
  SaveCursor: TCursor;
  InvestedValueIsIncomplete: Boolean;
  ModelsAuthorized: Boolean;
begin
  SaveCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass;
  try
    FCalcModelVariantInvestedValues(
      pdsGridDataParamsCURRENCY_CODE.AsInteger,
      pdsGridDataParamsTHE_DATE.AsDateTime,
      pdsGridDataParamsROOT_LINE_STAGE_INCLUDE_LEVEL.AsInteger,
      pdsGridDataParamsNON_ROOT_LINE_STAGE_INCLUDE_LEVEL.AsInteger,
      InvestedValueIsIncomplete);

    GenerateInvestedValuesArrays(ModelsAuthorized);
    FillGraphDataSet;

    lblIncompleteInvestedValue.Visible:= InvestedValueIsIncomplete;
    lblUnauthorizedModels.Visible:= not ModelsAuthorized;

    ChartInvestedValues.UndoZoom;

    ChartInvestedValues.LeftAxis.Title.Caption:=
      Format(SInvestedValueCaption, [pdsGridDataParams_CURRENCY_ABBREV.AsString]);
    ChartInvestedValues.LeftAxis.Maximum:=
      Max(
        VarToFloat(cdsGraph_MAX_SINGLE_INVESTED_VALUE_1.AsVariant),
        VarToFloat(cdsGraph_MAX_SINGLE_FULL_INVESTED_VALUE.AsVariant)
      ) *
      (1 + GraphMarginPart);

    ChartInvestedValues.BottomAxis.Title.Caption:=
      Format(SQuantityCaption, [pdsGridDataParams_MEASURE_ABBREV.AsString]);
    ChartInvestedValues.BottomAxis.Maximum:= pdsGridDataParamsMAX_QUANTITY.AsFloat;

    ChartInvestedValues.RefreshData;
    CalcInvestedValueDetailsFor(pdsGridDataParamsQUANTITY_STEP.AsFloat);
  finally
    Screen.Cursor:= SaveCursor;
  end;
end;

procedure TfmSpecInvestedValuesGraph.CloseDataSets;
begin
  inherited;
  cdsMeasures.Close;
  cdsCurrencies.Close;
end;

procedure TfmSpecInvestedValuesGraph.SetDataParams(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
  AModelVariantInvestedValues: TClientDataSet;
  ACalcModelVariantInvestedValues: TCalcModelVariantInvestedValues);
begin
  Assert(Assigned(AModelVariantInvestedValues));
  Assert(Assigned(ACalcModelVariantInvestedValues));

  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled);
  
  pdsGridDataParams_MAIN_DEPT_IDENTIFIER.LookupDataSet:= ADataSet;
  FcdsModelVariantInvestedValues:= AModelVariantInvestedValues;
  FCalcModelVariantInvestedValues:= ACalcModelVariantInvestedValues;
end;

function TfmSpecInvestedValuesGraph.ShowFilterForm: Boolean;
begin
  Result:= inherited ShowFilterForm;

  if Result and Visible then
    RefreshGraph;
end;

class function TfmSpecInvestedValuesGraph.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AFilterFormEnabled: Boolean;
  AModelVariantInvestedValues: TClientDataSet;
  ACalcModelVariantInvestedValues: TCalcModelVariantInvestedValues): Boolean;
var
  f: TfmSpecInvestedValuesGraph;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AFilterFormEnabled,
      AModelVariantInvestedValues, ACalcModelVariantInvestedValues);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

function TfmSpecInvestedValuesGraph.SpecModelDeptVariantsInvestedValuesIndexFor(
  ATechQuantity: Real): Integer;
var
  i: Integer;
begin
  Result:= -1;
  if (Length(FSpecModelDeptVariantsInvestedValues) > 0) then
    for i:= Low(FSpecModelDeptVariantsInvestedValues) to High(FSpecModelDeptVariantsInvestedValues) do
      if (FSpecModelDeptVariantsInvestedValues[i].MinTechQuantity < ATechQuantity) and
         (ATechQuantity <= FSpecModelDeptVariantsInvestedValues[i].MaxTechQuantity) then
        begin
          Result:= i;
          Exit;
        end;
end;

procedure TfmSpecInvestedValuesGraph.UpdateStatusQuantity;
var
  p: TPoint;
  Quantity: Real;
begin
  p:= ChartInvestedValues.ScreenToClient(Mouse.CursorPos);

  if InRange(SeriesInvestedLevel1.XScreenToValue(p.X), 0, SeriesInvestedLevel1.MaxXValue) and
     InRange(SeriesInvestedLevel1.YScreenToValue(p.Y), 0,
               Max(SeriesInvestedLevel1.MaxYValue, SeriesFullInvestedLevel5.MaxYValue)) then
    begin
      Quantity:= SeriesInvestedLevel1.XScreenToValue(p.X);

      Quantity:= Max(Quantity, pdsGridDataParamsQUANTITY_STEP.AsFloat);
      Quantity:= Min(Quantity, SeriesInvestedLevel1.MaxXValue);

      Quantity:=
        RealRound(Quantity / pdsGridDataParamsQUANTITY_STEP.AsFloat) *
        pdsGridDataParamsQUANTITY_STEP.AsFloat;

      CalcInvestedValueDetailsFor(Quantity);
    end;  { if }
end;

end.
