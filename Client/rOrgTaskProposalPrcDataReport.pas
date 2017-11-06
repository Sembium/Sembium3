unit rOrgTaskProposalPrcDataReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rPrcDataReport, DB, DBClient, AbmesClientDataSet, QRExport, QRCtrls,
  QuickRpt, ExtCtrls;

type
  TrptOrgTaskProposalPrcDataReport = class(TPrcDataReport)
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape8: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape9: TQRShape;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape10: TQRShape;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRShape11: TQRShape;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
