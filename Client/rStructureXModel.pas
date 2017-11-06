unit rStructureXModel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, DBClient, AbmesClientDataSet,
  QRExport, QRCtrls, QuickRpt, ExtCtrls, QrAngLbl;

type
  TrptStructureXModel = class(TDBDataReport)
    QRBand1: TQRBand;
    QRShape21: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel21: TQRLabel;
    QRShape20: TQRShape;
    QRLabel22: TQRLabel;
    QRShape22: TQRShape;
    QRLabel24: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape76: TQRShape;
    QRLabel58: TQRLabel;
    QRLabel20: TQRLabel;
    shpNotesCaption: TQRShape;
    lblNotes: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
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
    QRShape77: TQRShape;
    QRDBText52: TQRDBText;
    QRDBText56: TQRDBText;
    shpNotes: TQRShape;
    txtNotes: TQRDBText;
    QRShape10: TQRShape;
    QRDBText5: TQRDBText;
    bndTitle: TQRBand;
    QRLabel1: TQRLabel;
    QRAngledLabel1: TQRAngledLabel;
    QRShape17: TQRShape;
    QRShape16: TQRShape;
    QRShape13: TQRShape;
    QRLabel12: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    shplStructCoef: TQRShape;
    QRDBText11: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel15: TQRLabel;
    lblStructCoef: TQRLabel;
    QRShape7: TQRShape;
    QRShape6: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
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
    QRLabel18: TQRLabel;
    QRShape27: TQRShape;
    QRDBText24: TQRDBText;
    QRLabel19: TQRLabel;
    QRShape28: TQRShape;
    QRDBText25: TQRDBText;
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
  fReportParent, Printers;

{$R *.dfm}

{ TrptStructureXModel }

class procedure TrptStructureXModel.PrintReport(AReportDataSet,
  AParamsDataSet, AAggregatesDataSet: TDataSet; APrintNotes: Boolean;
  AStructCoef: string);
var
  r: TrptStructureXModel;
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

procedure TrptStructureXModel.QuickRepBeforePrint(Sender: TCustomQuickRep;
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

procedure TrptStructureXModel.SetDataParams(AReportDataSet, AParamsDataSet,
  AAggregatesDataSet: TDataSet; APrintNotes: Boolean; AStructCoef: string);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);

  FAggregatesDataSet:= AAggregatesDataSet;

  FPrintNotes:= APrintNotes;

  lblStructCoef.Caption:= AStructCoef;
end;

end.
