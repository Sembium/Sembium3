unit rProductionOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QuickRpt, QRCtrls,
  ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptProductionOrders = class(TDBDataReport)
    bndTitle: TQRBand;
    bndColumnHeader: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRShape10: TQRShape;
    QRLabel11: TQRLabel;
    QRShape12: TQRShape;
    QRLabel13: TQRLabel;
    QRShape13: TQRShape;
    QRLabel14: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel16: TQRLabel;
    QRShape16: TQRShape;
    QRLabel17: TQRLabel;
    QRShape17: TQRShape;
    QRLabel18: TQRLabel;
    QRShape18: TQRShape;
    QRLabel19: TQRLabel;
    QRShape20: TQRShape;
    QRLabel21: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel23: TQRLabel;
    bndDetail: TQRBand;
    QRShape26: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    bndSummary: TQRBand;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel1: TQRDBText;
    QRShape4: TQRShape;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape5: TQRShape;
    QRDBText9: TQRDBText;
    QRShape11: TQRShape;
    QRLabel6: TQRLabel;
    QRShape23: TQRShape;
    QRLabel12: TQRLabel;
    QRShape24: TQRShape;
    QRLabel22: TQRLabel;
    QRShape25: TQRShape;
    QRLabel24: TQRLabel;
    QRShape30: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape34: TQRShape;
    QRLabel27: TQRLabel;
    QRShape44: TQRShape;
    QRDBText4: TQRDBText;
    QRShape45: TQRShape;
    QRDBText19: TQRDBText;
    QRShape46: TQRShape;
    QRDBText20: TQRDBText;
    QRShape47: TQRShape;
    QRDBText21: TQRDBText;
    QRShape48: TQRShape;
    QRLabel28: TQRLabel;
    QRShape49: TQRShape;
    QRDBText22: TQRDBText;
    QRDBText26: TQRDBText;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRShape31: TQRShape;
    QRShape29: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape19: TQRShape;
    QRLabel15: TQRLabel;
    QRShape41: TQRShape;
    QRDBText16: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
