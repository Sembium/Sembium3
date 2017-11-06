unit rProductionOrder;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Qrctrls, QuickRpt, ExtCtrls, QRExport, rDBDataReport,
  DBClient, AbmesClientDataSet;

type
  TrptProductionOrder = class(TDBDataReport)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRShape3: TQRShape;
    QRDBText2: TQRDBText;
    QRShape4: TQRShape;
    QRDBText3: TQRDBText;
    QRShape5: TQRShape;
    QRDBText4: TQRDBText;
    QRShape6: TQRShape;
    QRDBText5: TQRDBText;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    QRDBText6: TQRDBText;
    QRShape9: TQRShape;
    QRDBText7: TQRDBText;
    QRShape10: TQRShape;
    QRLabel9: TQRLabel;
    QRShape11: TQRShape;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    QRShape12: TQRShape;
    QRDBText9: TQRDBText;
    QRLabel11: TQRLabel;
    QRShape13: TQRShape;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRShape14: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape15: TQRShape;
    QRDBText11: TQRDBText;
    QRLabel15: TQRLabel;
    QRShape16: TQRShape;
    QRDBText12: TQRDBText;
    QRShape17: TQRShape;
    QRDBText13: TQRDBText;
    QRShape18: TQRShape;
    QRDBText14: TQRDBText;
    QRShape19: TQRShape;
    QRDBText15: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape20: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape21: TQRShape;
    QRDBText16: TQRDBText;
    QRShape22: TQRShape;
    QRDBText17: TQRDBText;
    QRLabel23: TQRLabel;
    QRShape23: TQRShape;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel24: TQRLabel;
    QRShape24: TQRShape;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel25: TQRLabel;
    QRShape25: TQRShape;
    QRDBText22: TQRDBText;
    QRLabel26: TQRLabel;
    QRShape26: TQRShape;
    QRDBText23: TQRDBText;
    QRShape27: TQRShape;
    QRDBText24: TQRDBText;
    QRLabel27: TQRLabel;
    QRShape28: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape29: TQRShape;
    QRDBText25: TQRDBText;
    QRLabel31: TQRLabel;
    QRShape30: TQRShape;
    QRDBText26: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape31: TQRShape;
    QRDBText27: TQRDBText;
    QRShape32: TQRShape;
    QRDBText28: TQRDBText;
    QRShape33: TQRShape;
    QRDBText29: TQRDBText;
    QRShape34: TQRShape;
    QRDBText30: TQRDBText;
    QRShape35: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape36: TQRShape;
    QRDBText31: TQRDBText;
    QRLabel37: TQRLabel;
    QRShape37: TQRShape;
    QRDBText32: TQRDBText;
    QRShape38: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape39: TQRShape;
    QRLabel40: TQRLabel;
    QRShape40: TQRShape;
    QRDBText33: TQRDBText;
    QRLabel41: TQRLabel;
    QRShape41: TQRShape;
    QRDBText34: TQRDBText;
    QRLabel42: TQRLabel;
    QRShape42: TQRShape;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRShape43: TQRShape;
    QRDBText37: TQRDBText;
    QRLabel43: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRDBText38: TQRDBText;
    lblWastingSale: TQRLabel;
    shpWastingSaleBranch: TQRShape;
    txtWastingSaleBranch: TQRDBText;
    shpWastingSaleNo: TQRShape;
    txtWastingSaleNo: TQRDBText;
    QRLabel45: TQRLabel;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRDBText41: TQRDBText;
    QRLabel46: TQRLabel;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRDBText42: TQRDBText;
    QRLabel47: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRDBText44: TQRDBText;
    QRLabel50: TQRLabel;
    QRShape55: TQRShape;
    QRDBText45: TQRDBText;
    QRLabel51: TQRLabel;
    QRShape56: TQRShape;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRShape46: TQRShape;
    QRDBText39: TQRDBText;
    QRLabel44: TQRLabel;
    QRShape47: TQRShape;
    QRLabel52: TQRLabel;
    QRDBText40: TQRDBText;
    QRShape57: TQRShape;
    QRDBText48: TQRDBText;
    QRLabel53: TQRLabel;
    QRShape58: TQRShape;
    QRDBText49: TQRDBText;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

procedure TrptProductionOrder.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  lblWastingSale.Enabled:= ReportDataSet.FieldByName('IS_WASTE_COMPENSATING_ORDER').AsBoolean;
  txtWastingSaleBranch.Enabled:= ReportDataSet.FieldByName('IS_WASTE_COMPENSATING_ORDER').AsBoolean;
  shpWastingSaleBranch.Enabled:= ReportDataSet.FieldByName('IS_WASTE_COMPENSATING_ORDER').AsBoolean;
  txtWastingSaleNo.Enabled:= ReportDataSet.FieldByName('IS_WASTE_COMPENSATING_ORDER').AsBoolean;
  shpWastingSaleNo.Enabled:= ReportDataSet.FieldByName('IS_WASTE_COMPENSATING_ORDER').AsBoolean;
end;

end.
