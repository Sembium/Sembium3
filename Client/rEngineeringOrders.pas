unit rEngineeringOrders; 

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QRCtrls, QuickRpt,
  ExtCtrls, QrAngLbl, DBClient, AbmesClientDataSet;

type
  TrptEngineeringOrders = class(TDBDataReport)
    bndTitle: TQRBand;
    QRLabel1: TQRDBText;
    bndColumnHeader: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape10: TQRShape;
    QRLabel11: TQRLabel;
    QRShape12: TQRShape;
    QRLabel13: TQRLabel;
    QRShape13: TQRShape;
    QRLabel14: TQRLabel;
    QRShape14: TQRShape;
    QRShape20: TQRShape;
    QRLabel21: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel23: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape11: TQRShape;
    QRLabel6: TQRLabel;
    QRShape23: TQRShape;
    QRLabel12: TQRLabel;
    QRShape24: TQRShape;
    QRLabel22: TQRLabel;
    QRShape30: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape48: TQRShape;
    QRLabel28: TQRLabel;
    QRShape15: TQRShape;
    QRLabel16: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    QRLabel15: TQRLabel;
    QRShape7: TQRShape;
    QRLabel17: TQRLabel;
    QRShape16: TQRShape;
    QRLabel18: TQRLabel;
    bndDetail: TQRBand;
    QRShape26: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape35: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape28: TQRShape;
    QRDBText3: TQRDBText;
    QRShape17: TQRShape;
    QRDBText9: TQRDBText;
    QRShape44: TQRShape;
    QRDBText4: TQRDBText;
    QRShape45: TQRShape;
    QRDBText19: TQRDBText;
    QRShape47: TQRShape;
    QRDBText21: TQRDBText;
    QRShape49: TQRShape;
    QRDBText22: TQRDBText;
    QRShape31: TQRShape;
    QRDBText5: TQRDBText;
    QRShape18: TQRShape;
    QRDBText2: TQRDBText;
    QRShape19: TQRShape;
    QRShape25: TQRShape;
    QRDBText6: TQRDBText;
    QRAngledLabel1: TQRAngledLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
