unit rProcessFunctionPrcDataReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rPrcDataReport, DB, DBClient, AbmesClientDataSet, QRExport, QRCtrls,
  QuickRpt, ExtCtrls;

type
  TrptProcessFunctionPrcDataReport = class(TPrcDataReport)
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRShape6: TQRShape;
    QRLabel5: TQRLabel;
    QRShape7: TQRShape;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRShape8: TQRShape;
    QRDBText1: TQRDBText;
    QRShape9: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape10: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel8: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
