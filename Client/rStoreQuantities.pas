unit rStoreQuantities;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rDBDataReport, Db, JvMemoryDataset, Qrctrls, QuickRpt, ExtCtrls, QRExport,
  DBClient, AbmesClientDataSet;

type
  TrptStoreQuantities = class(TDBDataReport)
    bndTitle: TQRBand;
    lblTitle: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape64: TQRShape;
    QRShape2: TQRShape;
    bndDetail: TQRBand;
    shpDetailProductName: TQRShape;
    shpDetailProductNo: TQRShape;
    shpDetailStore: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    lblDetailProductName: TQRDBText;
    lblDetailProductNo: TQRDBText;
    lblDetailStore: TQRDBText;
    QRShape23: TQRShape;
    bndTotals: TQRBand;
    QRShape1: TQRShape;
    bndColumnHeader: TQRBand;
    shpProductName: TQRShape;
    shpProductNo: TQRShape;
    lblProductName: TQRLabel;
    lblProductNo: TQRLabel;
    shpStore: TQRShape;
    lblStore: TQRLabel;
    lblComment: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    lblQuantity: TQRDBText;
    lblTotalPrice: TQRDBText;
    lblTotalMarketPrice: TQRDBText;
    lblPlanQuantity: TQRDBText;
    lblPlanTotalPrice: TQRDBText;
    lblPlanTotalMarketPrice: TQRDBText;
    lblMeasure: TQRDBText;
    lblMeasure2: TQRDBText;
    lblSumQuantity: TQRDBText;
    lblTotalMeasure: TQRDBText;
    lblSumTotalPrice: TQRDBText;
    lblSumTotalMarketPrice: TQRDBText;
    lblSumPlanQuantity: TQRDBText;
    lblTotalMeasure2: TQRDBText;
    lblSumPlanTotalPrice: TQRDBText;
    lblSumPlanTotalMarketPrice: TQRDBText;
    QRDBText23: TQRDBText;
    shpProduct: TQRShape;
    lblProduct: TQRLabel;
    QRShape4: TQRShape;
    QRDBText22: TQRDBText;
    QRShape31: TQRShape;
    QRDBText24: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FIsGroupedByStore: Boolean;
    FIsAccountMeasure: Boolean;
  protected
    procedure InternalPrintReport; override;
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet; AIsGroupedByStore: Boolean; AIsAccountMeasure: Boolean); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil; AIsGroupedByStore: Boolean = False; AIsAccountMeasure: Boolean = False);
  end;

implementation

uses fReportParent, uUtils, uProductClientUtils, uProducts, uClientUtils;

{$R *.DFM}

resourcestring
  SWorkMeasureComment = 'Количествата са в работни м. ед., цените са в %s';
  SAccountMeasureComment = 'Количествата са в счетоводни м. ед., цените са в %s';

{ TrptStoreQuantitiesByStore }

procedure TrptStoreQuantities.SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet; AIsGroupedByStore: Boolean; AIsAccountMeasure: Boolean);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);
  FIsGroupedByStore:= AIsGroupedByStore;
  FIsAccountMeasure:= AIsAccountMeasure;
end;

class procedure TrptStoreQuantities.PrintReport(AReportDataSet: TDataSet; AParamsDataSet: TDataSet; AIsGroupedByStore: Boolean; AIsAccountMeasure: Boolean);
var
  r: TrptStoreQuantities;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, AIsGroupedByStore, AIsAccountMeasure);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptStoreQuantities.QuickRepBeforePrint(Sender: TCustomQuickRep;
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

procedure TrptStoreQuantities.InternalPrintReport;

type
  TLabelAndField = record
    LabelName: string;
    FieldName: string;
  end;

const
  LabelFields: array [1..16] of TLabelAndField = (
    (LabelName: 'lblQuantity'; FieldName: 'QUANTITY'),
    (LabelName: 'lblMeasure'; FieldName: 'MEASURE_ABBREV'),
    (LabelName: 'lblTotalPrice'; FieldName: 'TOTAL_PRICE'),
    (LabelName: 'lblTotalMarketPrice'; FieldName: 'TOTAL_MARKET_PRICE'),
    (LabelName: 'lblPlanQuantity'; FieldName: 'PLAN_QUANTITY'),
    (LabelName: 'lblMeasure2'; FieldName: 'MEASURE_ABBREV'),
    (LabelName: 'lblPlanTotalPrice'; FieldName: 'PLAN_TOTAL_PRICE'),
    (LabelName: 'lblPlanTotalMarketPrice'; FieldName: 'PLAN_TOTAL_MARKET_PRICE'),
    (LabelName: 'lblSumQuantity'; FieldName: '_SUM_QUANTITY'),
    (LabelName: 'lblTotalMeasure'; FieldName: '_MEASURE_ABBREV'),
    (LabelName: 'lblSumTotalPrice'; FieldName: '_SUM_TOTAL_PRICE'),
    (LabelName: 'lblSumTotalMarketPrice'; FieldName: '_SUM_TOTAL_MARKET_PRICE'),
    (LabelName: 'lblSumPlanQuantity'; FieldName: '_SUM_PLAN_QUANTITY'),
    (LabelName: 'lblTotalMeasure2'; FieldName: '_MEASURE_ABBREV'),
    (LabelName: 'lblSumPlanTotalPrice'; FieldName: '_SUM_PLAN_TOTAL_PRICE'),
    (LabelName: 'lblSumPlanTotalMarketPrice'; FieldName: '_SUM_PLAN_TOTAL_MARKET_PRICE')
  );

  AccountLabelFields: array [1..16] of TLabelAndField = (
    (LabelName: 'lblQuantity'; FieldName: 'ACCOUNT_QUANTITY'),
    (LabelName: 'lblMeasure'; FieldName: 'ACCOUNT_MEASURE_ABBREV'),
    (LabelName: 'lblTotalPrice'; FieldName: 'TOTAL_PRICE'),
    (LabelName: 'lblTotalMarketPrice'; FieldName: 'TOTAL_MARKET_PRICE'),
    (LabelName: 'lblPlanQuantity'; FieldName: 'PLAN_ACCOUNT_QUANTITY'),
    (LabelName: 'lblMeasure2'; FieldName: 'ACCOUNT_MEASURE_ABBREV'),
    (LabelName: 'lblPlanTotalPrice'; FieldName: 'PLAN_TOTAL_PRICE'),
    (LabelName: 'lblPlanTotalMarketPrice'; FieldName: 'PLAN_TOTAL_MARKET_PRICE'),
    (LabelName: 'lblSumQuantity'; FieldName: '_SUM_ACCOUNT_QUANTITY'),
    (LabelName: 'lblTotalMeasure'; FieldName: '_ACCOUNT_MEASURE_ABBREV'),
    (LabelName: 'lblSumTotalPrice'; FieldName: '_SUM_TOTAL_PRICE'),
    (LabelName: 'lblSumTotalMarketPrice'; FieldName: '_SUM_TOTAL_MARKET_PRICE'),
    (LabelName: 'lblSumPlanQuantity'; FieldName: '_SUM_PLAN_ACCOUNT_QUANTITY'),
    (LabelName: 'lblTotalMeasure2'; FieldName: '_ACCOUNT_MEASURE_ABBREV'),
    (LabelName: 'lblSumPlanTotalPrice'; FieldName: '_SUM_PLAN_TOTAL_PRICE'),
    (LabelName: 'lblSumPlanTotalMarketPrice'; FieldName: '_SUM_PLAN_TOTAL_PRICE')
  );

var
  i: Integer;

begin
  if FIsAccountMeasure then
    lblComment.Caption:= Format(SAccountMeasureComment, [LoginContext.BaseCurrencyAbbrev])
  else
    lblComment.Caption:= Format(SWorkMeasureComment, [LoginContext.BaseCurrencyAbbrev]);

  shpStore.Enabled:= FIsGroupedByStore;
  lblStore.Enabled:= FIsGroupedByStore;
  shpDetailStore.Enabled:= FIsGroupedByStore;
  lblDetailStore.Enabled:= FIsGroupedByStore;

  if not FIsGroupedByStore then
    begin
      shpProduct.Width:= shpProduct.Width + shpStore.Width;
      shpProductName.Width:= shpProductName.Width + shpStore.Width;
      shpProductNo.Left:= shpProductNo.Left + shpStore.Width;
      lblProductNo.Left:= lblProductNo.Left + shpStore.Width;

      shpDetailProductName.Width:= shpDetailProductName.Width + shpStore.Width;
      lblDetailProductName.Width:= lblDetailProductName.Width + shpStore.Width;
      shpDetailProductNo.Left:= shpDetailProductNo.Left + shpStore.Width;
      lblDetailProductNo.Left:= lblDetailProductNo.Left + shpStore.Width;
    end;

  if FIsAccountMeasure then
    begin
      for i:= Low(AccountLabelFields) to High(AccountLabelFields) do
        with AccountLabelFields[i] do
          (FindComponent(LabelName) as TQRDBText).DataField:= FieldName;
    end
  else
    begin
      for i:= Low(LabelFields) to High(LabelFields) do
        with LabelFields[i] do
          (FindComponent(LabelName) as TQRDBText).DataField:= FieldName;
    end;

  inherited;
end;

end.
