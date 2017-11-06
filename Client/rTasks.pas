unit rTasks;

interface                  

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rDBDataReport, Db, Qrctrls, QuickRpt, ExtCtrls, QRExport, DBClient,
  AbmesClientDataSet;

type
  TrptTasks = class(TDBDataReport)
    qrbGroupHeaderChild: TQRChildBand;
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRShape13: TQRShape;
    QRLabel14: TQRLabel;
    QRShape14: TQRShape;
    QRLabel15: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape16: TQRShape;
    QRLabel17: TQRLabel;
    QRShape17: TQRShape;
    QRLabel18: TQRLabel;
    QRShape18: TQRShape;
    QRLabel19: TQRLabel;
    QRShape19: TQRShape;
    QRLabel20: TQRLabel;
    QRShape22: TQRShape;
    QRLabel23: TQRLabel;
    QRShape21: TQRShape;
    QRLabel22: TQRLabel;
    QRShape20: TQRShape;
    QRLabel21: TQRLabel;
    QRShape23: TQRShape;
    QRLabel24: TQRLabel;
    QRShape24: TQRShape;
    QRLabel33: TQRLabel;
    QRShape25: TQRShape;
    QRLabel25: TQRLabel;
    QRShape26: TQRShape;
    QRLabel26: TQRLabel;
    QRShape27: TQRShape;
    QRLabel27: TQRLabel;
    QRBand1: TQRBand;
    QRShape28: TQRShape;
    QRDBText2: TQRDBText;
    QRShape36: TQRShape;
    QRDBText10: TQRDBText;
    QRShape37: TQRShape;
    QRDBText11: TQRDBText;
    QRShape38: TQRShape;
    QRDBText12: TQRDBText;
    QRShape39: TQRShape;
    QRDBText13: TQRDBText;
    QRShape40: TQRShape;
    QRDBText14: TQRDBText;
    QRShape42: TQRShape;
    QRDBText16: TQRDBText;
    QRShape43: TQRShape;
    QRDBText17: TQRDBText;
    QRShape44: TQRShape;
    QRDBText18: TQRDBText;
    QRShape45: TQRShape;
    QRDBText19: TQRDBText;
    QRShape46: TQRShape;
    QRDBText20: TQRDBText;
    QRShape47: TQRShape;
    QRDBText21: TQRDBText;
    QRShape48: TQRShape;
    QRDBText22: TQRDBText;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRDBText25: TQRDBText;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRDBText26: TQRDBText;
    qrbGroupHeader: TQRGroup;
    QRLabel29: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText48: TQRDBText;
    QRShape58: TQRShape;
    QRLabel52: TQRLabel;
    QRShape60: TQRShape;
    QRDBText49: TQRDBText;
    chbNotes: TQRChildBand;
    QRShape63: TQRShape;
    QRDBText43DaGo: TQRDBText;
  private
    { Private declarations }
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet;
      APrintNotes: Boolean = False); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil;
      APrintNotes: Boolean = False);
  end;

  TrptTasksClass = class of TrptTasks;

implementation

uses fReportParent;

{$R *.DFM}

{ TrptTasks }

class procedure TrptTasks.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; APrintNotes: Boolean);
var
  r: TrptTasks;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, APrintNotes);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptTasks.SetDataParams(AReportDataSet, AParamsDataSet: TDataSet;
  APrintNotes: Boolean);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);
  chbNotes.Enabled:= APrintNotes;
end;

end.
