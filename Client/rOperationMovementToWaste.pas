unit rOperationMovementToWaste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rBaseOperationMovementReport, DB, QRExport, QRCtrls,
  QuickRpt, ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptOperationMovementToWaste = class(TBaseOperationMovementReport)
    QRShape20: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText30: TQRDBText;
    QRDBText33: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
