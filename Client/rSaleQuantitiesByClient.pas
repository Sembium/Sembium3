unit rSaleQuantitiesByClient;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rSaleQuantities, Db, Qrctrls, QuickRpt, ExtCtrls, QRExport;

type
  TrptSaleQuantitiesByClient = class(TrptSaleQuantities)
    QRLabel33: TQRLabel;
    QRShape50: TQRShape;
    QRShape2: TQRShape;
    QRDBText667: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
