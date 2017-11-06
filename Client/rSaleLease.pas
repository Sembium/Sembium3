unit rSaleLease;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rSale, DB, DBClient, AbmesClientDataSet, QRExport, QRCtrls, QuickRpt,
  ExtCtrls;

type
  TrptSaleLease = class(TrptSale)
    QRShape79: TQRShape;
    QRDBText65: TQRDBText;
    QRLabel77: TQRLabel;
    QRShape294: TQRShape;
    QRDBText174: TQRDBText;
    QRLabel204: TQRLabel;
    QRLabel205: TQRLabel;
    QRLabel206: TQRLabel;
    QRShape295: TQRShape;
    QRDBText175: TQRDBText;
    QRShape296: TQRShape;
    QRDBText176: TQRDBText;
    QRLabel207: TQRLabel;
    QRLabel208: TQRLabel;
    QRShape297: TQRShape;
    QRDBText177: TQRDBText;
    QRLabel209: TQRLabel;
    QRDBText178: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
