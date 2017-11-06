unit rResultProductNeeds;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QuickRpt, QRCtrls, ExtCtrls,
  QRExport, uAspectTypes, DBClient, AbmesClientDataSet;

type
  TrptResultProductNeeds = class(TDBDataReport)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRLabel8: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape9: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand4: TQRBand;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRDBText12: TQRDBText;
    QRLabel23: TQRLabel;
    QRShape22: TQRShape;
    QRLabel12: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape27: TQRShape;
    QRDBText15: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FAspectType: TAspectType;
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet; AAspectType: TAspectType); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet; AParamsDataSet: TDataSet; AAspectType: TAspectType);
  end;

  TrptResultProductNeedsClass = class of TrptResultProductNeeds;

implementation

uses
  fReportParent, uNeeds, uClientUtils;

{$R *.dfm}

{ TrptResultProductNeeds }

class procedure TrptResultProductNeeds.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; AAspectType: TAspectType);
var
  r: TrptResultProductNeeds;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, AAspectType);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;  { try }
end;

procedure TrptResultProductNeeds.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  MsgParams: TStrings;
begin
  inherited;

  MsgParams:= CreateCommonMsgParams(LoginContext, FAspectType, spkResultProduct);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }
end;

procedure TrptResultProductNeeds.SetDataParams(AReportDataSet,
  AParamsDataSet: TDataSet; AAspectType: TAspectType);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);
  FAspectType:= AAspectType;
end;

end.
