unit rEmployeeEarnings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QuickRpt, QRCtrls,
  ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptEmployeeEarnings = class(TDBDataReport)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    lblEarning: TQRLabel;
    QRShape9: TQRShape;
    QRLabel11: TQRLabel;
    QRShape10: TQRShape;
    QRLabel12: TQRLabel;
    QRShape11: TQRShape;
    QRLabel13: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape12: TQRShape;
    QRLabel9: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel15: TQRLabel;
    QRShape16: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRShape20: TQRShape;
    QRDBText17: TQRDBText;
    QRShape21: TQRShape;
    QRLabel17: TQRLabel;
    QRShape23: TQRShape;
    QRLabel19: TQRLabel;
    QRShape24: TQRShape;
    QRLabel20: TQRLabel;
    QRShape25: TQRShape;
    QRLabel21: TQRLabel;
    QRShape26: TQRShape;
    QRDBText15: TQRDBText;
    QRShape27: TQRShape;
    QRDBText18: TQRDBText;
    QRShape28: TQRShape;
    QRDBText19: TQRDBText;
    QRShape29: TQRShape;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

resourcestring
  SEarning = 'Оценка на Труда (%s)';

{ TrptEmployeeEarnings }

procedure TrptEmployeeEarnings.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  lblEarning.Caption:= Format(SEarning, [LoginContext.BaseCurrencyAbbrev]);
end;

end.
