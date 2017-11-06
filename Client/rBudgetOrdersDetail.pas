unit rBudgetOrdersDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QRCtrls, QuickRpt,
  ExtCtrls, DBClient, AbmesClientDataSet, uBudgetReportUtils;

type
  TrptBudgetOrdersDetail = class(TDBDataReport)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
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
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRShape10: TQRShape;
    QRLabel11: TQRLabel;
    QRShape11: TQRShape;
    QRLabel12: TQRLabel;
    QRShape14: TQRShape;
    QRLabel15: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRShape18: TQRShape;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape20: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape21: TQRShape;
    QRLabel26: TQRLabel;
    QRShape35: TQRShape;
    QRDBText20: TQRDBText;
    QRShape36: TQRShape;
    QRLabel27: TQRLabel;
    QRShape37: TQRShape;
    QRDBText21: TQRDBText;
    QRLabel28: TQRLabel;
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
    shpBOIBaseTypeName: TQRShape;
    lblBOIBaseTypeName: TQRLabel;
    QRShape60: TQRShape;
    QRLabel33: TQRLabel;
    QRShape61: TQRShape;
    QRDBText30: TQRDBText;
    QRShape62: TQRShape;
    QRLabel34: TQRLabel;
    QRDBText31: TQRDBText;
    QRShape63: TQRShape;
    QRShape4: TQRShape;
    dbtBOIOPlan: TQRDBText;
    QRShape5: TQRShape;
    lblBOIOPlan: TQRLabel;
    QRShape7: TQRShape;
    dbtAccount: TQRDBText;
    QRShape8: TQRShape;
    lblAccount: TQRLabel;
    QRShape12: TQRShape;
    QRDBText10: TQRDBText;
    QRShape13: TQRShape;
    QRLabel8: TQRLabel;
    QRShape24: TQRShape;
    QRDBText11: TQRDBText;
    QRShape25: TQRShape;
    QRLabel13: TQRLabel;
    dbtBOIOPlanToPlanDev: TQRDBText;
    lblBOIOPlanToPlanDev: TQRLabel;
    dbtBOIOPlanToPlanDevPercent: TQRDBText;
    lblBOIOPlanToPlanDevPercent: TQRLabel;
    dbtAccountToPlanDev: TQRDBText;
    lblAccountToPlanDev: TQRLabel;
    dbtAccountToPlanDevPercent: TQRDBText;
    lblAccountToPlanDevPercent: TQRLabel;
    dbtAccountToBOIOPlanDev: TQRDBText;
    lblAccountToBOIOPlanDev: TQRLabel;
    dbtAccountToBOIOPlanDevPercent: TQRDBText;
    lblAccountToBOIOPlanDevPercent: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    function BOIOPlanColumnType: TBOIOPlanColumnType;
    function RealColumnType: TRealColumnType;
  public
    { Public declarations }
  end;

implementation

uses
  uClientUtils, uBudgetClientUtils, uBudgetUtils;

{$R *.dfm}

function TrptBudgetOrdersDetail.BOIOPlanColumnType: TBOIOPlanColumnType;
begin
  Result:= IntToBOIOPlanColumnType(ParamsDataSet.FieldByName('_BOIO_PLAN_COLUMN_TYPE_CODE').AsInteger);
end;

function TrptBudgetOrdersDetail.RealColumnType: TRealColumnType;
begin
  Result:= IntToRealColumnType(ParamsDataSet.FieldByName('_ACCOUNT_COLUMN_TYPE_CODE').AsInteger);
end;

procedure TrptBudgetOrdersDetail.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
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

  SetColumnEnabled((BOIOPlanColumnType = boiopctBOIOPlanPrice), lblBOIOPlan, dbtBOIOPlan);
  SetColumnEnabled((BOIOPlanColumnType = boiopctBOIOPlanToPlanDev), lblBOIOPlanToPlanDev, dbtBOIOPlanToPlanDev);
  SetColumnEnabled((BOIOPlanColumnType = boiopctBOIOPlanToPlanDevPercent), lblBOIOPlanToPlanDevPercent, dbtBOIOPlanToPlanDevPercent);

  SetColumnEnabled((RealColumnType = rctRealPrice), lblAccount, dbtAccount);
  SetColumnEnabled((RealColumnType = rctRealToPlanDev), lblAccountToPlanDev, dbtAccountToPlanDev);
  SetColumnEnabled((RealColumnType = rctRealToPlanDevPercent), lblAccountToPlanDevPercent, dbtAccountToPlanDevPercent);
  SetColumnEnabled((RealColumnType = rctRealToBOIOPlanDev), lblAccountToBOIOPlanDev, dbtAccountToBOIOPlanDev);
  SetColumnEnabled((RealColumnType = rctRealToBOIOPlanDevPercent), lblAccountToBOIOPlanDevPercent, dbtAccountToBOIOPlanDevPercent);
end;

end.
 
