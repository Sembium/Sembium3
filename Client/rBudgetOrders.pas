unit rBudgetOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QRCtrls, QuickRpt,
  ExtCtrls, DBClient, AbmesClientDataSet, uBudgetReportUtils;

type
  TrptBudgetOrders = class(TDBDataReport)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
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
    QRBand3: TQRBand;
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
    QRBand4: TQRBand;
    QRShape9: TQRShape;
    QRShape18: TQRShape;
    dbtTotalBOIOPlan: TQRDBText;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel9: TQRLabel;
    dbtAccountToBOIOPlanDevPercent: TQRDBText;
    dbtAccountToBOIOPlanDev: TQRDBText;
    dbtAccountToPlanDevPercent: TQRDBText;
    dbtAccountToPlanDev: TQRDBText;
    dbtAccount: TQRDBText;
    QRShape7: TQRShape;
    dbtBOIOPlanToPlanDevPercent: TQRDBText;
    dbtBOIOPlanToPlanDev: TQRDBText;
    dbtBOIOPlan: TQRDBText;
    QRShape8: TQRShape;
    QRDBText10: TQRDBText;
    QRShape24: TQRShape;
    QRDBText11: TQRDBText;
    QRShape25: TQRShape;
    QRShape4: TQRShape;
    lblAccountToBOIOPlanDevPercent: TQRLabel;
    QRShape5: TQRShape;
    lblBOIOPlanToPlanDevPercent: TQRLabel;
    QRShape13: TQRShape;
    QRLabel8: TQRLabel;
    QRShape12: TQRShape;
    QRLabel13: TQRLabel;
    QRShape61: TQRShape;
    QRDBText30: TQRDBText;
    QRShape60: TQRShape;
    QRLabel33: TQRLabel;
    lblBOIOPlanToPlanDev: TQRLabel;
    lblBOIOPlan: TQRLabel;
    lblAccountToBOIOPlanDev: TQRLabel;
    lblAccountToPlanDevPercent: TQRLabel;
    lblAccountToPlanDev: TQRLabel;
    lblAccount: TQRLabel;
    dbtTotalBOIOPlanToPlanDev: TQRDBText;
    dbtTotalBOIOPlanToPlanDevPercent: TQRDBText;
    dbtTotalAccount: TQRDBText;
    dbtTotalAccountToPlanDev: TQRDBText;
    dbtTotalAccountToPlanDevPercent: TQRDBText;
    dbtTotalAccountToBOIOPlanDev: TQRDBText;
    dbtTotalAccountToBOIOPlanDevPercent: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    function BOIOPlanColumnType: TBOIOPlanColumnType;
    function RealColumnType: TRealColumnType;
  public
    { Public declarations }
  end;

implementation

uses uBudgetClientUtils, uClientUtils;


{$R *.dfm}

function TrptBudgetOrders.BOIOPlanColumnType: TBOIOPlanColumnType;
begin
  Result:= IntToBOIOPlanColumnType(ReportDataSet.FieldByName('_BOIO_PLAN_COLUMN_TYPE_CODE').AsInteger);
end;

function TrptBudgetOrders.RealColumnType: TRealColumnType;
begin
  Result:= IntToRealColumnType(ReportDataSet.FieldByName('_ACCOUNT_COLUMN_TYPE_CODE').AsInteger);
end;

procedure TrptBudgetOrders.QuickRepBeforePrint(Sender: TCustomQuickRep;
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

  SetColumnEnabled((BOIOPlanColumnType = boiopctBOIOPlanPrice), lblBOIOPlan, dbtBOIOPlan, dbtTotalBOIOPlan);
  SetColumnEnabled((BOIOPlanColumnType = boiopctBOIOPlanToPlanDev), lblBOIOPlanToPlanDev, dbtBOIOPlanToPlanDev, dbtTotalBOIOPlanToPlanDev);
  SetColumnEnabled((BOIOPlanColumnType = boiopctBOIOPlanToPlanDevPercent), lblBOIOPlanToPlanDevPercent, dbtBOIOPlanToPlanDevPercent, dbtTotalBOIOPlanToPlanDevPercent);

  SetColumnEnabled((RealColumnType = rctRealPrice), lblAccount, dbtAccount, dbtTotalAccount);
  SetColumnEnabled((RealColumnType = rctRealToPlanDev), lblAccountToPlanDev, dbtAccountToPlanDev, dbtTotalAccountToPlanDev);
  SetColumnEnabled((RealColumnType = rctRealToPlanDevPercent), lblAccountToPlanDevPercent, dbtAccountToPlanDevPercent, dbtTotalAccountToPlanDevPercent);
  SetColumnEnabled((RealColumnType = rctRealToBOIOPlanDev), lblAccountToBOIOPlanDev, dbtAccountToBOIOPlanDev, dbtTotalAccountToBOIOPlanDev);
  SetColumnEnabled((RealColumnType = rctRealToBOIOPlanDevPercent), lblAccountToBOIOPlanDevPercent, dbtAccountToBOIOPlanDevPercent, dbtTotalAccountToBOIOPlanDevPercent);
end;

end.

 
