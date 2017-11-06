unit rGroupDeliveries;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rDBDataReport, Db, ExtCtrls, QuickRpt, Qrctrls, QRExport, DBClient,
  AbmesClientDataSet;

type
  TrptGroupDeliveries = class(TDBDataReport)
    qrbTitle: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel21: TQRLabel;
    qrbDetail: TQRBand;
    QRDBText7: TQRDBText;
    QRShape49: TQRShape;
    QRShape1: TQRShape;
    QRShape51: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRBand1: TQRBand;
    QRShape9: TQRShape;
    QRLabel9: TQRLabel;
    QRShape10: TQRShape;
    QRLabel10: TQRLabel;
    QRShape11: TQRShape;
    QRLabel11: TQRLabel;
    QRShape12: TQRShape;
    QRLabel12: TQRLabel;
    QRShape13: TQRShape;
    QRLabel13: TQRLabel;
    QRShape15: TQRShape;
    QRLabel15: TQRLabel;
    QRShape16: TQRShape;
    QRLabel16: TQRLabel;
    QRShape17: TQRShape;
    QRLabel17: TQRLabel;
    QRShape18: TQRShape;
    QRLabel18: TQRLabel;
    QRShape19: TQRShape;
    QRLabel19: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    lblComment: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}
resourcestring
  SComment = '* стойностите са в %s';

procedure TrptGroupDeliveries.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  lblComment.Caption:= Format(SComment, [LoginContext.SecondaryCurrencyAbbrev]);
end;

end.
