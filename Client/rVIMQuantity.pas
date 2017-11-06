unit rVIMQuantity;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rDBDataReport, Db, QuickRpt, Qrctrls, ExtCtrls, QRExport, DBClient,
  AbmesClientDataSet;

type
  TrptVIMQuantity = class(TDBDataReport)
    bTitle: TQRBand;
    lblTitle: TQRLabel;
    lblTo: TQRLabel;
    QRSysDateTime: TQRSysData;
    lblProduct: TQRLabel;
    tProduct: TQRDBText;
    rectProduct: TQRShape;
    lblDept: TQRLabel;
    tDept: TQRDBText;
    rectDept: TQRShape;
    lblPeriod: TQRLabel;
    rectPeriod: TQRShape;
    lblUnitNum: TQRLabel;
    rectUnitNum: TQRShape;
    lblFromDate: TQRLabel;
    tFromDate: TQRDBText;
    rectFromDate: TQRShape;
    lblToDate: TQRLabel;
    tToDate: TQRDBText;
    rectToDate: TQRShape;
    rectParams: TQRShape;
    bndColumnHeader: TQRBand;
    bndDetail: TQRBand;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape15: TQRShape;
    QRShape20: TQRShape;
    lblIn: TQRLabel;
    lblOut: TQRLabel;
    lblQuantity: TQRLabel;
    lblActiveQuantity: TQRLabel;
    lblDeficit: TQRLabel;
    lblNegativeQuantity: TQRLabel;
    QRShape2: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    dbtIn: TQRDBText;
    dbtOut: TQRDBText;
    dbtQuantity: TQRDBText;
    dbtQuantityReserve: TQRDBText;
    dbtActiveQuantity: TQRDBText;
    dbtActiveQuantityReserve: TQRDBText;
    dbtDeficit: TQRDBText;
    dbtDeficitReserve: TQRDBText;
    dbtNegativeQuantity: TQRDBText;
    dbtNegativeQuantityReserve: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FShowQuantity: Boolean;
    FMeasureAbbrev: string;
    procedure InitializeDBLabelsField;
    procedure InitializeLabelsCaption;
  protected
    procedure InternalPrintReport; override;
  public
    procedure SetDataParams(AReportDataSet: TDataSet;
      AParamsDataSet: TDataSet; AShowQuantity: Boolean;
      AMeasureAbbrev: string); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet;
      AParamsDataSet: TDataSet; AShowQuantity: Boolean;
      AMeasureAbbrev: string);
  end;

implementation

uses
  fReportParent, uProductClientUtils, uProducts, uClientUtils;

{$R *.DFM}

resourcestring
  SQuantity = 'Наличност %s';
  SActive = 'Активна наличност %s';
  SIn = 'Постъпления %s';
  SOut = 'Тегления %s';
  SDeficit = 'Дефицит %s';
  SNegativeQuantity = 'Сумарен дефицит %s';

class procedure TrptVIMQuantity.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; AShowQuantity: Boolean;
  AMeasureAbbrev: string);
var
  r: TrptVIMQuantity;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(
      AReportDataSet, AParamsDataSet, AShowQuantity, AMeasureAbbrev);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptVIMQuantity.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  MsgParams: TStrings;
begin
  inherited;

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext,
    IntToProductClass(ParamsDataSet.FieldByName('_PRODUCT_CLASS_CODE').AsInteger));
    
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;
end;

procedure TrptVIMQuantity.SetDataParams(AReportDataSet,
  AParamsDataSet: TDataSet; AShowQuantity: Boolean;
  AMeasureAbbrev: string);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);

  FShowQuantity:= AShowQuantity;
  FMeasureAbbrev:= AMeasureAbbrev;
end;

procedure TrptVIMQuantity.InitializeDBLabelsField;
type
  TMy2DArray = array[1..10, 1..2] of string;
const
  QuantityAssociasions: TMy2DArray = (
    ('dbtIn', 'QUANTITY_IN'),
    ('dbtOut', 'QUANTITY_OUT'),
    ('dbtQuantity', 'QUANTITY'),
    ('dbtQuantityReserve', 'QUANTITY_RESERVE'),
    ('dbtActiveQuantity', 'ACTIVE_QUANTITY'),
    ('dbtActiveQuantityReserve', 'ACTIVE_QUANTITY_RESERVE'),
    ('dbtDeficit', 'QUANTITY_DEFICIT'),
    ('dbtDeficitReserve', 'QUANTITY_DEFICIT_RESERVE'),
    ('dbtNegativeQuantity', 'NEGATIVE_QUANTITY'),
    ('dbtNegativeQuantityReserve', 'NEGATIVE_QUANTITY_RESERVE')
  );
  PriceAssociasions: TMy2DArray = (
    ('dbtIn', 'QUANTITY_IN_PRICE'),
    ('dbtOut', 'QUANTITY_OUT_PRICE'),
    ('dbtQuantity', 'QUANTITY_PRICE'),
    ('dbtQuantityReserve', 'QUANTITY_PRICE_RESERVE'),
    ('dbtActiveQuantity', 'ACTIVE_QUANTITY_PRICE'),
    ('dbtActiveQuantityReserve', 'ACTIVE_QUANTITY_PRICE_RESERVE'),
    ('dbtDeficit', 'QUANTITY_DEFICIT_PRICE'),
    ('dbtDeficitReserve', 'QUANTITY_DEFICIT_PRICE_RESERVE'),
    ('dbtNegativeQuantity', 'NEGATIVE_PRICE'),
    ('dbtNegativeQuantityReserve', 'NEGATIVE_PRICE_RESERVE')
  );
var
  i: Integer;
  InitArray: TMy2DArray;
begin
  if FShowQuantity then
    InitArray:= QuantityAssociasions
  else
    InitArray:= PriceAssociasions;

  for i:= Low(InitArray) to High(InitArray) do
    (FindComponent(InitArray[i, 1]) as TQRDBText).DataField:= InitArray[i, 2];
end;

procedure TrptVIMQuantity.InternalPrintReport;
begin
  InitializeDBLabelsField;
  InitializeLabelsCaption;
  inherited;
end;

procedure TrptVIMQuantity.InitializeLabelsCaption;
var
  MeasureOrCurrency: string;
begin

  {
  with FPeriodInfo do
    begin
      lblPeriodValue.Caption:= PeriodNameOne;
      lblUnitNumValue.Caption:= IntToStr(UnitNum);
      lblTimeMoment.Caption:= PeriodNameOne;
    end;
  }
  if FShowQuantity then
    begin
      if (FMeasureAbbrev = '') then
        MeasureOrCurrency:= ''
      else
        MeasureOrCurrency:= '/' + FMeasureAbbrev + '/';
    end
  else
    MeasureOrCurrency:= '/' + LoginContext.SecondaryCurrencyAbbrev + '/';

  lblQuantity.Caption:= Format(SQuantity, [MeasureOrCurrency]);
  lblIn.Caption:= Format(SIn, [MeasureOrCurrency]);
  lblOut.Caption:= Format(SOut, [MeasureOrCurrency]);
  lblActiveQuantity.Caption:= Format(SActive, [MeasureOrCurrency]);
  lblDeficit.Caption:= Format(SDeficit, [MeasureOrCurrency]);
  lblNegativeQuantity.Caption:= Format(SNegativeQuantity, [MeasureOrCurrency]);
end;

end.
