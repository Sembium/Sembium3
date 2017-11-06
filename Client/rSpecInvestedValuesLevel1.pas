unit rSpecInvestedValuesLevel1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, DBClient, AbmesClientDataSet, QRExport, QRCtrls,
  QuickRpt, ExtCtrls;

type
  TrptSpecInvestedValuesLevel1 = class(TDBDataReport)
    bndTitle: TQRBand;
    QRLabel1: TQRLabel;
    bndColumnHeader: TQRBand;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape16: TQRShape;
    QRLabel11: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape19: TQRShape;
    QRLabel14: TQRLabel;
    bndDetail: TQRBand;
    QRShape28: TQRShape;
    QRDBText6: TQRDBText;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRShape5: TQRShape;
    QRDBText2: TQRDBText;
    QRShape6: TQRShape;
    QRLabel5: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape9: TQRShape;
    lblBaseCurrency: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape12: TQRShape;
    QRDBText3: TQRDBText;
    QRShape13: TQRShape;
    QRDBText4: TQRDBText;
    QRShape14: TQRShape;
    QRDBText5: TQRDBText;
    QRShape15: TQRShape;
    QRDBText7: TQRDBText;
    QRShape20: TQRShape;
    QRDBText8: TQRDBText;
    QRShape21: TQRShape;
    QRDBText9: TQRDBText;
    QRShape22: TQRShape;
    QRDBText10: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText15: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  dMain;

{$R *.dfm}

procedure TrptSpecInvestedValuesLevel1.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  lblBaseCurrency.Caption:=
    FormatBaseCurrencyAbbrevString(lblBaseCurrency.Caption);
end;

end.
