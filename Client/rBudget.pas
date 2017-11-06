unit rBudget;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QRCtrls, QuickRpt, ExtCtrls, DBClient,
  AbmesClientDataSet, uBudgetReportUtils, rDBTreeDataReport;

type
  TrptBudget = class(TDBTreeDataReport)
    QRBand1: TQRBand;
    QRLabel1: TQRDBText;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    lblPlan: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    lblBOIOPlan: TQRLabel;
    lblReal: TQRLabel;
    lblBOIOPlanToPlanDev: TQRLabel;
    lblBOIOPlanToPlanDevPercent: TQRLabel;
    lblRealToPlanDev: TQRLabel;
    lblRealToBOIOPlanDev: TQRLabel;
    lblRealToPlanDevPercent: TQRLabel;
    lblRealToBOIOPlanDevPercent: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape7: TQRShape;
    QRDBText3: TQRDBText;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel2: TQRLabel;
    QRShape8: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    dbtPlan: TQRDBText;
    QRShape12: TQRShape;
    dbtBOIOPlanToPlanDevPercent: TQRDBText;
    QRShape13: TQRShape;
    dbtRealToBOIOPlanDevPercent: TQRDBText;
    dbtBOIOPlanToPlanDev: TQRDBText;
    dbtRealToBOIOPlanDev: TQRDBText;
    dbtBOIOPlan: TQRDBText;
    dbtRealToPlanDevPercent: TQRDBText;
    dbtRealToPlanDev: TQRDBText;
    dbtReal: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    function BOIOPlanColumnType: TBOIOPlanColumnType;
    function RealColumnType: TRealColumnType;
  protected
    function ImageIndexFieldName: string; override;
    function HasChildrenFieldName: string; override;
    function LevelFieldName: string; override;
    function GetImageList: TImageList; override;
  public
    { Public declarations }
  end;

implementation

uses uClientUtils, uBudgetClientUtils, dMain;

{$R *.dfm}

function TrptBudget.GetImageList: TImageList;
begin
  Result:= dmMain.ilBudgetClassesTreeIcons;
end;

function TrptBudget.ImageIndexFieldName: string;
begin
  Result:= '_BUDGET_CLASS_TREE_ICON';
end;

function TrptBudget.HasChildrenFieldName: string;
begin
  Result:= 'HAS_CHILDREN';
end;

function TrptBudget.LevelFieldName: string;
begin
  Result:= 'BUDGET_PRODUCT_LEVEL';
end;

function TrptBudget.BOIOPlanColumnType: TBOIOPlanColumnType;
begin
  Result:= IntToBOIOPlanColumnType(ParamsDataSet.FieldByName('_BOIO_PLAN_COLUMN_TYPE_CODE').AsInteger);
end;

function TrptBudget.RealColumnType: TRealColumnType;
begin
  Result:= IntToRealColumnType(ParamsDataSet.FieldByName('_REAL_COLUMN_TYPE_CODE').AsInteger);
end;

procedure TrptBudget.QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  RecursivelyFormatCaptions(
    Self,
    CreateCommonMsgParams(
      LoginContext,
      IntToBudgetMode(ReportDataSet.FieldByName('_BUDGET_MODE').AsInteger)
    )
  );

  SetColumnEnabled((BOIOPlanColumnType = boiopctBOIOPlanPrice), lblBOIOPlan, dbtBOIOPlan);
  SetColumnEnabled((BOIOPlanColumnType = boiopctBOIOPlanToPlanDev), lblBOIOPlanToPlanDev, dbtBOIOPlanToPlanDev);
  SetColumnEnabled((BOIOPlanColumnType = boiopctBOIOPlanToPlanDevPercent), lblBOIOPlanToPlanDevPercent, dbtBOIOPlanToPlanDevPercent);

  SetColumnEnabled((RealColumnType = rctRealPrice), lblReal, dbtReal);
  SetColumnEnabled((RealColumnType = rctRealToPlanDev), lblRealToPlanDev, dbtRealToPlanDev);
  SetColumnEnabled((RealColumnType = rctRealToPlanDevPercent), lblRealToPlanDevPercent, dbtRealToPlanDevPercent);
  SetColumnEnabled((RealColumnType = rctRealToBOIOPlanDev), lblRealToBOIOPlanDev, dbtRealToBOIOPlanDev);
  SetColumnEnabled((RealColumnType = rctRealToBOIOPlanDevPercent), lblRealToBOIOPlanDevPercent, dbtRealToBOIOPlanDevPercent);
end;

end.
