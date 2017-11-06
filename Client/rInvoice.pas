unit rInvoice;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rDBDataReport, Db, QuickRpt, Qrctrls, ExtCtrls, QRExport,
  DBClient, AbmesClientDataSet;

type
  TrptInvoice = class(TDBDataReport)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    bndDetail: TQRBand;
    bndSummary: TQRBand;
    lblProform: TQRDBText;
    lblOriginal: TQRDBText;
    QRDBText38: TQRDBText;
    mdsReportFixedRowCount: TAbmesClientDataSet;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    qrsItemNameHeader: TQRShape;
    lblItemName: TQRLabel;
    qrsQuantityHeader: TQRShape;
    lblQuantity: TQRLabel;
    qrsMeasureHeader: TQRShape;
    lblMeasure: TQRLabel;
    qrsSinglePriceHeader: TQRShape;
    lblSinglePrice: TQRLabel;
    qrsPriceHeader: TQRShape;
    lblPrice: TQRLabel;
    qrsPrice: TQRShape;
    qrsSinglePrice: TQRShape;
    qrsMeasure: TQRShape;
    qrsQuantity: TQRShape;
    qrsItemName: TQRShape;
    dbtItemName: TQRDBText;
    dbtQuantity: TQRDBText;
    dbtMeasure: TQRDBText;
    dbtSinglePrice: TQRDBText;
    dbtPrice: TQRDBText;
    QRLabel27: TQRLabel;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRDBText24: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText28: TQRDBText;
    dbtDiscountPercent: TQRDBText;
    qrsDiscountPercent: TQRShape;
    lblDiscountPercent: TQRLabel;
    qrsDiscountPercentHeader: TQRShape;
    dbtCurrency: TQRDBText;
    qrsCurrencyHeader: TQRShape;
    qrsCurrency: TQRShape;
    lblCurrency: TQRLabel;
    QRShape4: TQRShape;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText12: TQRDBText;
    QRShape2: TQRShape;
    QRLabel24: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText35: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText17: TQRDBText;
    QRShape3: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel19: TQRLabel;
    bndSummaryCurrencyVAT: TQRChildBand;
    btnSummaryFooter: TQRChildBand;
    lblSellerPersonEmptyName: TQRLabel;
    lblBuyerPersonEmptyName: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    dbtSellerPersonName: TQRDBText;
    dbtBuyerPersonName: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel38: TQRLabel;
    QRShape21: TQRShape;
    QRDBText25: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText39: TQRDBText;
    QRLabel20: TQRLabel;
    dbtNotes: TQRDBText;
    QRShape15: TQRShape;
    QRLabel21: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText32: TQRDBText;
    QRShape160: TQRShape;
    QRLabel50: TQRLabel;
    QRDBText33: TQRDBText;
    QRDBText19: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FIsDiscountPercentShown: Boolean;
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet; AIsDiscountPercentShown: Boolean); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil; AIsDiscountPercentShown: Boolean = False);
  end;

implementation

uses uUtils, fReportParent;

{$R *.DFM}

class procedure TrptInvoice.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; AIsDiscountPercentShown: Boolean);
var
  r: TrptInvoice;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, AIsDiscountPercentShown);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptInvoice.QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;

  Utils.IfThen(FIsDiscountPercentShown, qrsDiscountPercentHeader, qrsCurrencyHeader).Enabled:= True;
  Utils.IfThen(FIsDiscountPercentShown, lblDiscountPercent, lblCurrency).Enabled:= True;
  Utils.IfThen(FIsDiscountPercentShown, qrsDiscountPercent, qrsCurrency).Enabled:= True;
  Utils.IfThen(FIsDiscountPercentShown, dbtDiscountPercent, dbtCurrency).Enabled:= True;

  dbtBuyerPersonName.Enabled:= not ParamsDataSet.FieldByName('BUYER_PERSON_NAME').IsNull;
  lblBuyerPersonEmptyName.Enabled:= ParamsDataSet.FieldByName('BUYER_PERSON_NAME').IsNull;

  dbtSellerPersonName.Enabled:= not ParamsDataSet.FieldByName('SELLER_PERSON_NAME').IsNull;
  lblSellerPersonEmptyName.Enabled:= ParamsDataSet.FieldByName('SELLER_PERSON_NAME').IsNull;

  bndSummaryCurrencyVAT.Enabled:=
    (ParamsDataSet.FieldByName('CURRENCY_CODE').AsInteger <> LoginContext.BaseCurrencyCode);
end;

procedure TrptInvoice.SetDataParams(AReportDataSet, AParamsDataSet: TDataSet; AIsDiscountPercentShown: Boolean);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);
  FIsDiscountPercentShown:= AIsDiscountPercentShown;
end;

end.

