unit rDeptDetailFlowDetails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rMasterDetailReport, DB, QRExport, QRCtrls, QuickRpt,
  ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptDeptDetailFlowDetails = class(TMasterDetailReport)
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
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand3: TQRBand;
    bndSubdetailColumnHeader: TQRBand;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel14: TQRLabel;
    QRShape31: TQRShape;
    QRLabel15: TQRLabel;
    QRShape32: TQRShape;
    QRLabel16: TQRLabel;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    lblOperationCount3: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape49: TQRShape;
    QRLabel26: TQRLabel;
    QRShape50: TQRShape;
    QRDBText22: TQRDBText;
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
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape51: TQRShape;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRShape6: TQRShape;
    QRLabel13: TQRLabel;
    QRShape11: TQRShape;
    QRDBText10: TQRDBText;
    QRShape20: TQRShape;
    QRLabel6: TQRLabel;
    QRShape52: TQRShape;
    QRDBText20: TQRDBText;
    QRShape53: TQRShape;
    QRLabel28: TQRLabel;
    QRShape54: TQRShape;
    QRDBText24: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FOperationCountLabelCaption: string;
  protected
    class function DisableControlsOnPrint: Boolean; override;
  public
    procedure SetDataParams(AReportDataSet: TCustomClientDataSet; AParamsDataSet: TDataSet; ASubDetailDataSet: TCustomClientDataSet; AOperationCountLabelCaption: string); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TCustomClientDataSet = nil; AParamsDataSet: TDataSet = nil; ASubDetailDataSet: TCustomClientDataSet = nil; AOperationCountLabelCaption: string = '');
  end;

implementation

uses
  fReportParent;

{$R *.dfm}

{ TrptDeptDetailFlowDetails }

class procedure TrptDeptDetailFlowDetails.PrintReport(
  AReportDataSet: TCustomClientDataSet; AParamsDataSet: TDataSet;
  ASubDetailDataSet: TCustomClientDataSet;
  AOperationCountLabelCaption: string);
var
  r: TrptDeptDetailFlowDetails;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, ASubDetailDataSet, AOperationCountLabelCaption);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptDeptDetailFlowDetails.SetDataParams(
  AReportDataSet: TCustomClientDataSet; AParamsDataSet: TDataSet;
  ASubDetailDataSet: TCustomClientDataSet;
  AOperationCountLabelCaption: string);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet, ASubDetailDataSet);
  FOperationCountLabelCaption:= AOperationCountLabelCaption;
end;

procedure TrptDeptDetailFlowDetails.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  lblOperationCount.Caption:= FOperationCountLabelCaption;
  lblOperationCount2.Caption:= FOperationCountLabelCaption;
  lblOperationCount3.Caption:= FOperationCountLabelCaption;
end;

class function TrptDeptDetailFlowDetails.DisableControlsOnPrint: Boolean;
begin
  Result:= False;
end;

end.
