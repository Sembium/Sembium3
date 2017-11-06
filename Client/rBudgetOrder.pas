unit rBudgetOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QRCtrls, QuickRpt,
  ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptBudgetOrder = class(TDBDataReport)
    QRBand2: TQRBand;
    QRShape26: TQRShape;
    QRLabel16: TQRLabel;
    QRShape27: TQRShape;
    QRLabel18: TQRLabel;
    QRShape28: TQRShape;
    QRLabel19: TQRLabel;
    QRShape29: TQRShape;
    QRLabel20: TQRLabel;
    QRShape30: TQRShape;
    QRLabel21: TQRLabel;
    QRShape31: TQRShape;
    QRLabel22: TQRLabel;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRLabel24: TQRLabel;
    QRShape34: TQRShape;
    QRLabel25: TQRLabel;
    QRShape38: TQRShape;
    lblTotalOrderItemPrice: TQRLabel;
    QRShape39: TQRShape;
    QRLabel30: TQRLabel;
    QRShape40: TQRShape;
    QRLabel31: TQRLabel;
    QRShape41: TQRShape;
    QRLabel32: TQRLabel;
    QRShape42: TQRShape;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRShape20: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape21: TQRShape;
    QRLabel26: TQRLabel;
    QRShape36: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRBand3: TQRBand;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRShape18: TQRShape;
    QRDBText6: TQRDBText;
    QRShape35: TQRShape;
    QRDBText20: TQRDBText;
    QRShape37: TQRShape;
    QRDBText21: TQRDBText;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape51: TQRShape;
    QRLabel29: TQRLabel;
    QRShape52: TQRShape;
    QRDBText26: TQRDBText;
    QRBand4: TQRBand;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRShape59: TQRShape;
    QRDBText29: TQRDBText;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel7: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape19: TQRShape;
    QRLabel35: TQRLabel;
    QRShape22: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape25: TQRShape;
    QRShape60: TQRShape;
    QRLabel40: TQRLabel;
    QRShape61: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRShape62: TQRShape;
    QRLabel41: TQRLabel;
    QRShape63: TQRShape;
    QRDBText37: TQRDBText;
    QRShape64: TQRShape;
    QRDBText38: TQRDBText;
    shpBOIBaseTypeName: TQRShape;
    lblBOIBaseTypeName: TQRLabel;
    QRShape65: TQRShape;
    QRLabel42: TQRLabel;
    QRShape66: TQRShape;
    QRDBText39: TQRDBText;
    QRShape67: TQRShape;
    QRDBText40: TQRDBText;
    QRLabel43: TQRLabel;
    QRShape68: TQRShape;
    QRLabel44: TQRLabel;
    QRShape69: TQRShape;
    QRDBText41: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uClientUtils, uBudgetClientUtils, uBudgetUtils;

{$R *.dfm}

procedure TrptBudgetOrder.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  BudgetMode: TBudgetMode;
  BudgetOrderItemBaseType: TBudgetOrderItemBaseType;
begin
  inherited;
  BudgetMode:= IntToBudgetMode(ReportDataSet.FieldByName('_BUDGET_MODE').AsInteger);
  BudgetOrderItemBaseType:=
    BudgetOrderItemTypeToBaseType(
      IntToBudgetOrderItemType(ReportDataSet.FieldByName('BUDGET_ORDER_ITEM_TYPE_CODE').AsInteger));

  RecursivelyFormatCaptions(Self, CreateCommonMsgParams(LoginContext, BudgetMode));

  lblBOIBaseTypeName.Caption:= BudgetOrderItemBaseTypePluralNames[BudgetOrderItemBaseType];

  lblBOIBaseTypeName.Enabled:= (BudgetMode = bmInvest);
  shpBOIBaseTypeName.Enabled:= (BudgetMode = bmInvest);
end;

end.
