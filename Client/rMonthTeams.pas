unit rMonthTeams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QuickRpt, QRCtrls,
  ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptMonthTeams = class(TDBDataReport)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRShape6: TQRShape;
    lblTeamEarnings: TQRLabel;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRShape10: TQRShape;
    QRLabel11: TQRLabel;
    QRShape11: TQRShape;
    QRLabel12: TQRLabel;
    QRShape12: TQRShape;
    QRLabel13: TQRLabel;
    QRShape13: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape14: TQRShape;
    QRBand3: TQRBand;
    QRShape15: TQRShape;
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
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRShape26: TQRShape;
    QRDBText12: TQRDBText;
    QRLabel5: TQRLabel;
    QRShape27: TQRShape;
    lblEffectiveTeamEarning: TQRLabel;
    QRShape28: TQRShape;
    QRDBText13: TQRDBText;
    QRShape29: TQRShape;
    QRLabel7: TQRLabel;
    QRShape30: TQRShape;
    QRDBText14: TQRDBText;
    QRShape31: TQRShape;
    QRLabel16: TQRLabel;
    QRShape32: TQRShape;
    QRDBText15: TQRDBText;
    QRLabel17: TQRLabel;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRDBText16: TQRDBText;
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
  STeamEarnings = 'Оценка на Труда по РИР (%s)';
  SEffectiveTeamEarning = 'Коригирана Оценка на Труда (%s)';
  
{ TrptMonthTeams }

procedure TrptMonthTeams.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  lblTeamEarnings.Caption:= Format(STeamEarnings, [LoginContext.BaseCurrencyAbbrev]);
  lblEffectiveTeamEarning.Caption:= Format(SEffectiveTeamEarning, [LoginContext.BaseCurrencyAbbrev]);
end;

end.
