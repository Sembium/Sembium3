unit rBOIWasteOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rBOIOrderAbstract, DB, DBClient, AbmesClientDataSet, QRExport,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TrptBOIWasteOrder = class(TrptBOIOrderAbstract)
    QRShape13: TQRShape;
    QRLabel15: TQRLabel;
    QRShape14: TQRShape;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRShape15: TQRShape;
    QRLabel16: TQRLabel;
    QRDBText18: TQRDBText;
    QRShape16: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText19: TQRDBText;
    QRShape18: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape19: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText20: TQRDBText;
    QRShape20: TQRShape;
    QRDBText22: TQRDBText;
    QRShape21: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape22: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
