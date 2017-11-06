unit rStructureSpecification;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rMasterDetailReport, Db, ExtCtrls, QuickRpt, Qrctrls,
  rDBDataReport, QRExport, DBClient, AbmesClientDataSet, QrAngLbl;

type
  TrptStructureSpecification = class(TDBDataReport)
    bndTitle: TQRBand;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
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
    QRBand2: TQRBand;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape55: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText52: TQRDBText;
    QRLabel58: TQRLabel;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRLabel20: TQRLabel;
    QRDBText56: TQRDBText;
    shpNotes: TQRShape;
    txtNotes: TQRDBText;
    shpNotesCaption: TQRShape;
    lblNotes: TQRLabel;
    QRShape4: TQRShape;
    QRLabel3: TQRLabel;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRShape10: TQRShape;
    QRDBText5: TQRDBText;
    QRAngledLabel1: TQRAngledLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel12: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape6: TQRShape;
    lblStructCoef: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape7: TQRShape;
    QRDBText9: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape11: TQRShape;
    QRDBText10: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape12: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRShape27: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel17: TQRLabel;
    QRShape15: TQRShape;
    QRDBText14: TQRDBText;
    QRLabel6: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FAggregatesDataSet: TDataSet;
    FPrintNotes: Boolean;
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet;
      AAggregatesDataSet: TDataSet; APrintNotes: Boolean; AStructCoef: string = ''); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil;
      AAggregatesDataSet: TDataSet = nil; APrintNotes: Boolean = False; AStructCoef: string = '');
  end;

implementation

uses
  fReportParent, QrPrntr, Printers;

{$R *.DFM}

procedure TrptStructureSpecification.SetDataParams(AReportDataSet,
  AParamsDataSet, AAggregatesDataSet: TDataSet; APrintNotes: Boolean;
  AStructCoef: string);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);

  FAggregatesDataSet:= AAggregatesDataSet;

  FPrintNotes:= APrintNotes;

  lblStructCoef.Caption:= AStructCoef;
end;

class procedure TrptStructureSpecification.PrintReport(AReportDataSet,
  AParamsDataSet, AAggregatesDataSet: TDataSet; APrintNotes: Boolean;
  AStructCoef: string);
var
  r: TrptStructureSpecification;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, AAggregatesDataSet, APrintNotes, AStructCoef);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptStructureSpecification.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;

  if FPrintNotes then
    Page.Orientation:= poLandscape
  else
    begin
      Page.Orientation:= poPortrait;

      shpNotesCaption.Enabled:= False;
      lblNotes.Enabled:= False;
      shpNotes.Enabled:= False;
      txtNotes.Enabled:= False;
    end;
end;

end.
