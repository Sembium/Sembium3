unit rFinOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, QRCtrls, DB, DBClient, AbmesClientDataSet, QRExport,
  QuickRpt, ExtCtrls, QrAngLbl;

type
  TrptFinOrders = class(TDBDataReport)
    Detail: TQRBand;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    qrbTitle: TQRBand;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRShape9: TQRShape;
    QRLabel1: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRDBText4: TQRDBText;
    QRShape6: TQRShape;
    QRLabel2: TQRLabel;
    QRShape19: TQRShape;
    QRLabel3: TQRLabel;
    QRShape20: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRDBText15: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape31: TQRShape;
    QRDBText16: TQRDBText;
    QRShape32: TQRShape;
    QRLabel9: TQRLabel;
    QRShape33: TQRShape;
    dbtWorkFinancialProduct: TQRDBText;
    QRShape34: TQRShape;
    QRShape7: TQRShape;
    QRLabel10: TQRLabel;
    QRShape11: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape15: TQRShape;
    QRLabel19: TQRLabel;
    QRShape35: TQRShape;
    QRLabel20: TQRLabel;
    QRShape36: TQRShape;
    QRLabel21: TQRLabel;
    QRShape37: TQRShape;
    QRLabel22: TQRLabel;
    QRShape38: TQRShape;
    QRLabel23: TQRLabel;
    QRShape39: TQRShape;
    QRShape21: TQRShape;
    QRLabel27: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel29: TQRLabel;
    QRShape43: TQRShape;
    QRLabel24: TQRLabel;
    QRShape44: TQRShape;
    QRAngledLabel1: TQRAngledLabel;
    QRLabel25: TQRLabel;
    bndTotals: TQRBand;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    lblInBaseCurrency: TQRLabel;
  private
    { Private declarations }
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet; APrintCurrentRecOnly: Boolean = False;
      AInBaseCurrency: Boolean = False); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil; APrintCurrentRecOnly: Boolean = False;
      AInBaseCurrency: Boolean = False);
  end;

implementation

uses
  fReportParent, uClientUtils, uUtils;

{$R *.dfm}

{ TrptFinOrders }

class procedure TrptFinOrders.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; APrintCurrentRecOnly, AInBaseCurrency: Boolean);
var
  r: TrptFinOrders;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, APrintCurrentRecOnly,
      AInBaseCurrency);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptFinOrders.SetDataParams(AReportDataSet, AParamsDataSet: TDataSet;
  APrintCurrentRecOnly, AInBaseCurrency: Boolean);
var
  dbt: TQRDBText;
  lbl: TQRLabel;
  FieldName: string;
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet, APrintCurrentRecOnly);

  if AInBaseCurrency then
    for dbt in AllComponents.OfType<TQRDBText> do
      dbt.DataField:= StringReplace(dbt.DataField, 'QTY', 'QTY_BC', [rfReplaceAll]);

  for lbl in AllComponents.OfType<TQRLabel> do
    if (lbl.Parent = bndTotals) then
      begin
        FieldName:= lbl.Caption;

        if AInBaseCurrency then
          FieldName:= StringReplace(FieldName, 'QTY', 'QTY_BC', [rfReplaceAll]);

        with AParamsDataSet.FieldByName(FieldName) do
          begin
            lbl.Caption:= DisplayText;
            lbl.Alignment:= Alignment;
          end;
      end;

  lblInBaseCurrency.Enabled:= AInBaseCurrency;

  if AInBaseCurrency then
    dbtWorkFinancialProduct.Font.Color:= clSilver;
end;

end.
