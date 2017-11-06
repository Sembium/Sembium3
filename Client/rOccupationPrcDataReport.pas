unit rOccupationPrcDataReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rPrcDataReport, DB, DBClient, AbmesClientDataSet, QRExport, QRCtrls,
  QuickRpt, ExtCtrls;

type
  TrptOccupationPrcDataReport = class(TPrcDataReport)
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRShape10: TQRShape;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRShape11: TQRShape;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRShape12: TQRShape;
    QRDBText5: TQRDBText;
    QRShape8: TQRShape;
    QRLabel8: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
