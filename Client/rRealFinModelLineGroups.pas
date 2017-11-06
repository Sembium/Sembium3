unit rRealFinModelLineGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rMasterDetailReport, DB, QRExport,
  QRCtrls, QuickRpt, ExtCtrls, DBClient, AbmesClientDataSet, QrAngLbl;

type
  TrptRealFinModelLineGroups = class(TMasterDetailReport)
    qrbTitle: TQRBand;
    qrbDetail: TQRBand;
    qrbColumnHeader: TQRBand;
    qrbDetailHeader: TQRBand;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    QRLabel20: TQRLabel;
    QRShape15: TQRShape;
    QRLabel21: TQRLabel;
    QRShape18: TQRShape;
    QRLabel22: TQRLabel;
    QRShape26: TQRShape;
    QRLabel23: TQRLabel;
    QRShape27: TQRShape;
    QRLabel24: TQRLabel;
    QRShape28: TQRShape;
    QRLabel25: TQRLabel;
    QRShape29: TQRShape;
    QRLabel26: TQRLabel;
    QRShape30: TQRShape;
    QRLabel27: TQRLabel;
    QRShape31: TQRShape;
    QRLabel28: TQRLabel;
    QRShape32: TQRShape;
    QRLabel29: TQRLabel;
    QRShape33: TQRShape;
    QRLabel30: TQRLabel;
    QRShape34: TQRShape;
    QRLabel31: TQRLabel;
    QRShape35: TQRShape;
    QRLabel32: TQRLabel;
    QRShape36: TQRShape;
    QRLabel33: TQRLabel;
    QRShape37: TQRShape;
    QRLabel34: TQRLabel;
    QRShape38: TQRShape;
    QRLabel35: TQRLabel;
    QRShape39: TQRShape;
    QRLabel36: TQRLabel;
    QRShape40: TQRShape;
    QRLabel37: TQRLabel;
    QRShape41: TQRShape;
    QRLabel38: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape16: TQRShape;
    QRDBText3: TQRDBText;
    QRShape17: TQRShape;
    QRDBText4: TQRDBText;
    QRShape19: TQRShape;
    QRDBText5: TQRDBText;
    QRShape20: TQRShape;
    QRDBText6: TQRDBText;
    QRShape21: TQRShape;
    QRDBText7: TQRDBText;
    QRShape22: TQRShape;
    QRDBText8: TQRDBText;
    QRShape23: TQRShape;
    QRDBText9: TQRDBText;
    QRShape24: TQRShape;
    QRDBText10: TQRDBText;
    QRShape42: TQRShape;
    QRDBText11: TQRDBText;
    QRShape43: TQRShape;
    QRDBText1: TQRDBText;
    QRShape44: TQRShape;
    QRDBText14: TQRDBText;
    QRShape45: TQRShape;
    QRDBText16: TQRDBText;
    QRShape46: TQRShape;
    QRDBText18: TQRDBText;
    QRShape47: TQRShape;
    QRDBText19: TQRDBText;
    QRShape48: TQRShape;
    QRDBText20: TQRDBText;
    QRShape49: TQRShape;
    QRDBText21: TQRDBText;
    QRShape50: TQRShape;
    QRDBText22: TQRDBText;
    QRShape51: TQRShape;
    QRDBText23: TQRDBText;
    QRShape52: TQRShape;
    dbtWorkFinancialProduct: TQRDBText;
    QRShape53: TQRShape;
    QRDBText25: TQRDBText;
    QRShape54: TQRShape;
    QRDBText26: TQRDBText;
    QRShape55: TQRShape;
    QRDBText27: TQRDBText;
    QRShape56: TQRShape;
    QRDBText28: TQRDBText;
    QRShape57: TQRShape;
    QRDBText29: TQRDBText;
    QRShape58: TQRShape;
    QRDBText30: TQRDBText;
    QRShape59: TQRShape;
    QRDBText31: TQRDBText;
    QRShape60: TQRShape;
    QRDBText32: TQRDBText;
    QRShape61: TQRShape;
    QRDBText33: TQRDBText;
    QRShape62: TQRShape;
    QRDBText34: TQRDBText;
    QRShape63: TQRShape;
    QRDBText35: TQRDBText;
    QRShape64: TQRShape;
    QRLabel5: TQRLabel;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRShape7: TQRShape;
    QRLabel7: TQRLabel;
    QRShape8: TQRShape;
    QRAngledLabel1: TQRAngledLabel;
    QRShape9: TQRShape;
    QRLabel9: TQRLabel;
    QRShape10: TQRShape;
    QRLabel10: TQRLabel;
    QRShape11: TQRShape;
    QRLabel11: TQRLabel;
    QRShape13: TQRShape;
    QRLabel12: TQRLabel;
    QRShape14: TQRShape;
    QRLabel13: TQRLabel;
    QRShape12: TQRShape;
    QRLabel14: TQRLabel;
    QRShape65: TQRShape;
    QRLabel39: TQRLabel;
    QRShape66: TQRShape;
    QRLabel40: TQRLabel;
    QRShape67: TQRShape;
    QRLabel41: TQRLabel;
    QRShape68: TQRShape;
    QRLabel42: TQRLabel;
    QRShape69: TQRShape;
    QRLabel43: TQRLabel;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape72: TQRShape;
    QRLabel46: TQRLabel;
    QRShape73: TQRShape;
    QRLabel47: TQRLabel;
    QRShape74: TQRShape;
    qrbDetailFooter: TQRBand;
    shpNotesGroupHeader: TQRShape;
    lblNotesGroupHeader: TQRLabel;
    shpNotesGroup: TQRShape;
    dbtNotesGroup: TQRDBText;
    shpNotesHeader: TQRShape;
    lblNotesHeader: TQRLabel;
    shpNotes: TQRShape;
    dbtNotes: TQRDBText;
    bndTotals: TQRBand;
    QRShape25: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    lblInBaseCurrency: TQRLabel;
  protected
    class function DisableControlsOnPrint: Boolean; override;
    procedure InternalPrintReport; override;
  public
    { Public declarations }
  end;

implementation

uses
  fReportParent, uClientUtils, uUtils;

{$R *.dfm}

procedure TrptRealFinModelLineGroups.InternalPrintReport;
var
  PrintNotes: Boolean;
  InBaseCurrency: Boolean;
  dbt: TQRDBText;
  lbl: TQRLabel;
  FieldName: string;
begin
  if Assigned(SubDetailDataSet) then
    qrbDetail.Font.Style:= [fsBold]
  else
    qrbDetail.Font.Style:= [];

  PrintNotes:= (ReportDataSet.Tag = 1);

  shpNotesGroupHeader.Enabled:= PrintNotes;
  lblNotesGroupHeader.Enabled:= PrintNotes;
  shpNotesGroup.Enabled:= PrintNotes;
  dbtNotesGroup.Enabled:= PrintNotes;

  shpNotesHeader.Enabled:= PrintNotes;
  lblNotesHeader.Enabled:= PrintNotes;
  shpNotes.Enabled:= PrintNotes;
  dbtNotes.Enabled:= PrintNotes;

  InBaseCurrency:= (ParamsDataSet.FieldByName('IN_BASE_CURRENCY').AsInteger = 1);

  if InBaseCurrency then
    for dbt in AllComponents.OfType<TQRDBText> do
      dbt.DataField:= StringReplace(dbt.DataField, 'QTY', 'QTY_BC', [rfReplaceAll]);

  for lbl in AllComponents.OfType<TQRLabel> do
    if (lbl.Parent = bndTotals) then
      begin
        FieldName:= lbl.Caption;

        if InBaseCurrency then
          FieldName:= StringReplace(FieldName, 'QTY', 'QTY_BC', [rfReplaceAll]);

        with ParamsDataSet.FieldByName(FieldName) do
          begin
            lbl.Caption:= DisplayText;
            lbl.Alignment:= Alignment;
          end;
      end;

  lblInBaseCurrency.Enabled:= InBaseCurrency;

  if InBaseCurrency then
    dbtWorkFinancialProduct.Font.Color:= clSilver;

  inherited;
end;

class function TrptRealFinModelLineGroups.DisableControlsOnPrint: Boolean;
begin
  Result:= False;
end;

end.
