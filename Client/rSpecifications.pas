unit rSpecifications;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rDBDataReport, Db, QuickRpt, Qrctrls, ExtCtrls, QRExport, DBClient,
  AbmesClientDataSet;

type
  TrptSpecifications = class(TDBDataReport)
    bndTitle: TQRBand;
    bndDetail: TQRBand;
    bndColumnHeader: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape8: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape20: TQRShape;
    QRDBText8: TQRDBText;
    QRShape10: TQRShape;
    QRShape22: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape23: TQRShape;
    QRLabel14: TQRLabel;
    QRShape24: TQRShape;
    QRDBText11: TQRDBText;
    QRShape25: TQRShape;
    QRLabel15: TQRLabel;
    QRShape26: TQRShape;
    QRLabel16: TQRLabel;
    QRShape27: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape21: TQRShape;
    QRLabel11: TQRLabel;
    QRShape19: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
