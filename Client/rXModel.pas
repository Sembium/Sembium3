unit rXModel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, DBClient, AbmesClientDataSet,
  QRExport, QRCtrls, QuickRpt, ExtCtrls, QrAngLbl;

type
  TrptXModel = class(TDBDataReport)
    bndTitle: TQRBand;
    QRShape17: TQRShape;
    QRShape16: TQRShape;
    QRShape13: TQRShape;
    QRShape7: TQRShape;
    QRShape6: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    shplStructCoef: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape27: TQRShape;
    QRDBText24: TQRDBText;
    QRLabel19: TQRLabel;
    QRShape28: TQRShape;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    lblStructCoef: TQRLabel;
    QRBand2: TQRBand;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape55: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText56: TQRDBText;
    QRShape77: TQRShape;
    QRDBText52: TQRDBText;
    bndProductNos: TQRChildBand;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRDBText133: TQRDBText;
    QRDBText144: TQRDBText;
    bndNotes: TQRChildBand;
    QRShape78: TQRShape;
    QRDBText37: TQRDBText;
    QRLabel40: TQRLabel;
    QRShape60: TQRShape;
    QRDBText38: TQRDBText;
    QRShape61: TQRShape;
    QRDBText39: TQRDBText;
    QRShape63: TQRShape;
    QRDBText40: TQRDBText;
    QRBand1: TQRBand;
    QRShape37: TQRShape;
    QRShape4: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel21: TQRLabel;
    QRShape20: TQRShape;
    QRLabel22: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel24: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape5: TQRShape;
    QRLabel3: TQRLabel;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRLabel32: TQRLabel;
    QRShape14: TQRShape;
    QRLabel33: TQRLabel;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape36: TQRShape;
    lblTotalPrice: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape76: TQRShape;
    QRLabel58: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape32: TQRShape;
    QRLabel34: TQRLabel;
    QRShape15: TQRShape;
    lblSinglePrice: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape38: TQRShape;
    QRLabel37: TQRLabel;
    QRAngledLabel1: TQRAngledLabel;
    QRAngledLabel2: TQRAngledLabel;
    QRShape39: TQRShape;
    lblPrice: TQRLabel;
    QRShape11: TQRShape;
    QRLabel16: TQRLabel;
    QRShape26: TQRShape;
    QRLabel10: TQRLabel;
    QRShape40: TQRShape;
    QRLabel13: TQRLabel;
    QRShape47: TQRShape;
    QRDBText5: TQRDBText;
    QRLabel59: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    FLarge: Boolean;
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet;
      ALarge, APrintProductNos, APrintNotes: Boolean;
      AStructureCoef: string); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil;
      ALarge: Boolean = False; APrintProductNos: Boolean = False; APrintNotes: Boolean = False;
      AStructureCoef: string = '');
  end;

implementation

uses
  fReportParent, Printers, qrprntr;

{$R *.dfm}

{ TrptXModel }

class procedure TrptXModel.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; ALarge, APrintProductNos, APrintNotes: Boolean;
  AStructureCoef: string);
var
  r: TrptXModel;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, ALarge, APrintProductNos, APrintNotes,
        AStructureCoef);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptXModel.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;

  if FLarge then
    begin
      Page.PaperSize:= A3;
      Page.Orientation:= poPortrait;
    end;   { if }

  lblPrice.Caption:=
    Format(lblSinglePrice.Caption, [LoginContext.SecondaryCurrencyAbbrev]);
end;

procedure TrptXModel.SetDataParams(AReportDataSet,
  AParamsDataSet: TDataSet; ALarge, APrintProductNos, APrintNotes: Boolean;
  AStructureCoef: string);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);

  FLarge:= ALarge;

  bndProductNos.Enabled:= APrintProductNos;
  bndNotes.Enabled:= APrintNotes;

  lblStructCoef.Caption:= AStructureCoef;
end;

end.
