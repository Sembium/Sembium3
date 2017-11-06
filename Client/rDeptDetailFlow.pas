unit rDeptDetailFlow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QRCtrls, QuickRpt,
  ExtCtrls, DBClient;

type
  TrptDeptDetailFlow = class(TDBDataReport)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    lblOperationCount: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRBand2: TQRBand;
    QRShape12: TQRShape;
    QRLabel8: TQRLabel;
    QRShape13: TQRShape;
    QRLabel9: TQRLabel;
    QRShape14: TQRShape;
    QRLabel10: TQRLabel;
    QRShape15: TQRShape;
    QRLabel11: TQRLabel;
    QRShape16: TQRShape;
    lblOperationCount2: TQRLabel;
    QRShape17: TQRShape;
    QRBand3: TQRBand;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRDBText12: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRShape22: TQRShape;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRShape11: TQRShape;
    QRDBText10: TQRDBText;
    QRShape28: TQRShape;
    QRLabel13: TQRLabel;
    QRShape29: TQRShape;
    QRDBText11: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FOperationCountLabelCaption: string;
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet; AOperationCountLabelCaption: string); reintroduce; virtual;    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil; AOperationCountLabelCaption: string = '');
  end;

implementation

uses
  fReportParent;

{$R *.dfm}

{ TrptDeptDetailFlow }

class procedure TrptDeptDetailFlow.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; AOperationCountLabelCaption: string);
var
  r: TrptDeptDetailFlow;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, AOperationCountLabelCaption);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptDeptDetailFlow.SetDataParams(AReportDataSet,
  AParamsDataSet: TDataSet; AOperationCountLabelCaption: string);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);
  FOperationCountLabelCaption:= AOperationCountLabelCaption;
end;

procedure TrptDeptDetailFlow.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  lblOperationCount.Caption:= FOperationCountLabelCaption;
  lblOperationCount2.Caption:= FOperationCountLabelCaption;
end;

end.
