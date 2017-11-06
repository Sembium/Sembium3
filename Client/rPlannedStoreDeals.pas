unit rPlannedStoreDeals;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rDBDataReport, Db, QuickRpt, Qrctrls, ExtCtrls, QRExport,
  DBClient, AbmesClientDataSet;

type
  TrptPlannedStoreDeals = class(TDBDataReport)
    bndTitle: TQRBand;
    bndDetail: TQRBand;
    QRLabel1: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    bndSummary: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    bndColumnHeader: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRLabel3: TQRLabel;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRShape6: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape7: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape21: TQRShape;
    QRLabel23: TQRLabel;
    QRShape12: TQRShape;
    QRLabel13: TQRLabel;
    QRShape13: TQRShape;
    QRLabel14: TQRLabel;
    QRShape14: TQRShape;
    QRLabel16: TQRLabel;
    QRShape15: TQRShape;
    QRLabel17: TQRLabel;
    QRShape16: TQRShape;
    QRLabel18: TQRLabel;
    QRShape17: TQRShape;
    QRLabel19: TQRLabel;
    QRShape18: TQRShape;
    lblTotalPrice: TQRLabel;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRDBText15: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel20: TQRLabel;
    QRShape39: TQRShape;
    QRLabel32: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uProductClientUtils, uProducts, uClientUtils;

{$R *.DFM}

resourcestring
  STotalPrice = 'Цена %s';

procedure TrptPlannedStoreDeals.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
var
  MsgParams: TStrings;
begin
  inherited;

  lblTotalPrice.Caption:= Format(STotalPrice, [LoginContext.SecondaryCurrencyAbbrev]);

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext,
    IntToProductClass(ParamsDataSet.FieldByName('_PRODUCT_CLASS_CODE').AsInteger));

  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;
end;

end.
