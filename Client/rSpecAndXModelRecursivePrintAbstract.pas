unit rSpecAndXModelRecursivePrintAbstract;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRCtrls, QuickRpt, ExtCtrls,
  QRExport, DBClient, AbmesClientDataSet, QrAngLbl;

type
  TrptSpecAndXModelRecursivePrintAbstract = class(TDBDataReport)
    QRGroup1: TQRGroup;
    QRLabel29: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    ChildBand1: TQRChildBand;
    QRShape19: TQRShape;
    QRLabel21: TQRLabel;
    QRShape76: TQRShape;
    QRLabel58: TQRLabel;
    QRShape20: TQRShape;
    QRLabel22: TQRLabel;
    QRShape21: TQRShape;
    QRShape23: TQRShape;
    QRLabel25: TQRLabel;
    QRShape25: TQRShape;
    QRLabel27: TQRLabel;
    QRShape28: TQRShape;
    QRLabel30: TQRLabel;
    QRShape29: TQRShape;
    QRShape33: TQRShape;
    QRLabel35: TQRLabel;
    QRShape35: TQRShape;
    QRLabel38: TQRLabel;
    QRShape16: TQRShape;
    lblSinglePrice: TQRLabel;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape55: TQRShape;
    QRShape41: TQRShape;
    QRShape43: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape50: TQRShape;
    QRShape53: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText32: TQRDBText;
    QRShape77: TQRShape;
    QRDBText52: TQRDBText;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    bndProductNos: TQRChildBand;
    QRShape57: TQRShape;
    QRShape44: TQRShape;
    QRDBText133: TQRDBText;
    QRDBText144: TQRDBText;
    bndNotes: TQRChildBand;
    QRShape78: TQRShape;
    QRDBText11: TQRDBText;
    lblStructCoef: TQRLabel;
    QRAngledLabel1: TQRAngledLabel;
    QRAngledLabel2: TQRAngledLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FLarge: Boolean;
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet;
      ALarge, APrintProductNos, APrintNotes: Boolean; AStructureCoef: string); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil;
      ALarge: Boolean = False; APrintProductNos: Boolean = False; APrintNotes: Boolean = False;
      AStructureCoef: string = '');
  end;

type
  TrptSpecAndXModelRecursivePrintAbstractClass = class of TrptSpecAndXModelRecursivePrintAbstract;

implementation

uses fReportParent, QrPrntr, Printers;

{$R *.dfm}

class procedure TrptSpecAndXModelRecursivePrintAbstract.PrintReport(
  AReportDataSet, AParamsDataSet: TDataSet; ALarge,
  APrintProductNos, APrintNotes: Boolean; AStructureCoef: string);
var
  r: TrptSpecAndXModelRecursivePrintAbstract;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, ALarge, APrintProductNos, APrintNotes, AStructureCoef);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptSpecAndXModelRecursivePrintAbstract.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;

  lblSinglePrice.Caption:=
    Format(lblSinglePrice.Caption, [LoginContext.SecondaryCurrencyAbbrev]);

  if FLarge then
    begin
      Page.PaperSize:= A3;
      Page.Orientation:= poPortrait;
    end;   { if }
end;

procedure TrptSpecAndXModelRecursivePrintAbstract.SetDataParams(
  AReportDataSet, AParamsDataSet: TDataSet; ALarge,
    APrintProductNos, APrintNotes: Boolean; AStructureCoef: string);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);

  FLarge:= ALarge;
  bndProductNos.Enabled:= APrintProductNos;
  bndNotes.Enabled:= APrintNotes;
  lblStructCoef.Caption:= AStructureCoef;
end;

end.
