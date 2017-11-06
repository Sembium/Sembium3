unit rWorkHoursDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QRCtrls, QuickRpt,
  ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptWorkHoursDetail = class(TDBDataReport)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape10: TQRShape;
    QRLabel11: TQRLabel;
    QRShape11: TQRShape;
    QRLabel12: TQRLabel;
    QRShape12: TQRShape;
    QRLabel13: TQRLabel;
    QRShape13: TQRShape;
    QRLabel14: TQRLabel;
    QRShape14: TQRShape;
    QRLabel15: TQRLabel;
    QRShape15: TQRShape;
    lblTotalOperatorEarnings: TQRLabel;
    QRShape35: TQRShape;
    QRLabel16: TQRLabel;
    QRShape37: TQRShape;
    QRLabel18: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape36: TQRShape;
    QRDBText20: TQRDBText;
    QRBand2: TQRBand;
    QRShape28: TQRShape;
    QRLabel17: TQRLabel;
    QRShape29: TQRShape;
    QRLabel19: TQRLabel;
    QRShape30: TQRShape;
    QRLabel20: TQRLabel;
    QRShape31: TQRShape;
    QRLabel21: TQRLabel;
    QRShape33: TQRShape;
    QRLabel22: TQRLabel;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    lblInvestedPrice: TQRLabel;
    QRShape40: TQRShape;
    QRLabel26: TQRLabel;
    QRShape41: TQRShape;
    QRLabel27: TQRLabel;
    QRShape42: TQRShape;
    QRLabel28: TQRLabel;
    QRShape43: TQRShape;
    QRLabel29: TQRLabel;
    QRShape44: TQRShape;
    QRLabel30: TQRLabel;
    QRShape45: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRBand3: TQRBand;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
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
  STotalOperatorEarnings = 'Оценка на Труда по РИР (%s)';
  SInvestedPrice = 'Оценка на Труда по РИР (%s)';

{ TrptWorkHoursDetail }

procedure TrptWorkHoursDetail.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  lblTotalOperatorEarnings.Caption:= Format(STotalOperatorEarnings, [LoginContext.BaseCurrencyAbbrev]);
  lblInvestedPrice.Caption:= Format(SInvestedPrice, [LoginContext.BaseCurrencyAbbrev]);
end;

end.
