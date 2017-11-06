unit rBOIOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rMasterDetailReport, DB, QRExport, QRCtrls,
  QuickRpt, ExtCtrls, rDBDataReport, QrAngLbl, DBClient, AbmesClientDataSet;

type
  TrptBOIOrders = class(TDBDataReport)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRLabel4: TQRLabel;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel7: TQRLabel;
    QRShape9: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape10: TQRShape;
    QRLabel10: TQRLabel;
    QRShape11: TQRShape;
    QRLabel11: TQRLabel;
    QRShape12: TQRShape;
    QRLabel12: TQRLabel;
    QRShape13: TQRShape;
    QRLabel13: TQRLabel;
    QRShape14: TQRShape;
    QRLabel14: TQRLabel;
    QRShape15: TQRShape;
    QRLabel15: TQRLabel;
    QRShape16: TQRShape;
    QRLabel17: TQRLabel;
    QRShape17: TQRShape;
    QRLabel18: TQRLabel;
    QRShape18: TQRShape;
    QRLabel19: TQRLabel;
    QRBand3: TQRBand;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
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
    QRDBText13: TQRDBText;
    QRBand4: TQRBand;
    QRShape40: TQRShape;
    QRDBText24: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape32: TQRShape;
    QRAngledLabel1: TQRAngledLabel;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRAngledLabel2: TQRAngledLabel;
    QRShape35: TQRShape;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRShape36: TQRShape;
    QRLabel1: TQRLabel;
    QRShape37: TQRShape;
    QRDBText17: TQRDBText;
    QRShape60: TQRShape;
    QRLabel33: TQRLabel;
    QRShape61: TQRShape;
    QRDBText30: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uClientUtils, uBudgetClientUtils;

{$R *.dfm}

procedure TrptBOIOrders.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  RecursivelyFormatCaptions(
    Self,
    CreateCommonMsgParams(
      LoginContext,
      IntToBudgetMode(ReportDataSet.FieldByName('_BUDGET_MODE').AsInteger)
    )
  );
end;

end.
