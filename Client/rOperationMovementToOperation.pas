unit rOperationMovementToOperation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rBaseOperationMovementReport, DB, QRExport, QRCtrls,
  QuickRpt, ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptOperationMovementToOperation = class(TBaseOperationMovementReport)
    QRShape20: TQRShape;
    QRDBText30: TQRDBText;
    QRShape21: TQRShape;
    QRDBText31: TQRDBText;
    QRShape22: TQRShape;
    QRDBText32: TQRDBText;
    QRShape23: TQRShape;
    QRDBText33: TQRDBText;
    QRLabel18: TQRLabel;
    QRShape24: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRLabel21: TQRLabel;
    QRShape25: TQRShape;                                  
    QRDBText38: TQRDBText;
    QRShape26: TQRShape;
    QRDBText39: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText44: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
