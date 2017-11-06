unit rBOIProductOrdersDetailReal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rBOIProductOrdersDetail, DB, QRExport, QRCtrls,
  QuickRpt, ExtCtrls;

type
  TrptBOIProductOrdersDetailReal = class(TrptBOIProductOrdersDetail)
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
 
