unit rDeptPrcDataReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rPrcDataReport, DB, DBClient, AbmesClientDataSet, QRExport, QRCtrls,
  QuickRpt, ExtCtrls;

type
  TrptDeptPrcDataReport = class(TPrcDataReport)
    TitleBand1: TQRBand;
    QRShape6: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape7: TQRShape;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRShape8: TQRShape;
    QRDBText1: TQRDBText;
    QRShape9: TQRShape;
    QRDBText2: TQRDBText;
    QRShape10: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape11: TQRShape;
    QRLabel8: TQRLabel;
    QRShape12: TQRShape;
    QRDBText5: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
