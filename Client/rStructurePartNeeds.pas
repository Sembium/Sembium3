unit rStructurePartNeeds;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, ExtCtrls, QuickRpt, QRCtrls,
  QRExport, uAspectTypes, uNeeds, DBClient, AbmesClientDataSet;

type
  TrptStructurePartNeeds = class(TDBDataReport)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape12: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape13: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRBand3: TQRBand;
    QRShape8: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRBand4: TQRBand;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRDBText13: TQRDBText;
    QRLabel26: TQRLabel;
    QRShape26: TQRShape;
    QRLabel3: TQRLabel;
    QRShape27: TQRShape;
    QRDBText14: TQRDBText;
    shpSumFullQuantityPrice: TQRShape;
    dbtSumFullQuantityPrice: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FAspectType: TAspectType;
    FStructurePartKind: TStructurePartKind;
  public
    procedure SetDataParams(
      AReportDataSet: TDataSet;
      AParamsDataSet: TDataSet;
      AAspectType: TAspectType;
      AStructurePartKind: TStructurePartKind); reintroduce; virtual;
    class procedure PrintReport(
      AReportDataSet: TDataSet;
      AParamsDataSet: TDataSet;
      AAspectType: TAspectType;
      AStructurePartKind: TStructurePartKind);
  end;

  TrptStructurePartNeedsClass = class of TrptStructurePartNeeds;

implementation

uses
  fReportParent, uClientUtils;

{$R *.dfm}

{ TrptStructurePartNeeds }

class procedure TrptStructurePartNeeds.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; AAspectType: TAspectType;
  AStructurePartKind: TStructurePartKind);
var
  r: TrptStructurePartNeeds;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, AAspectType, AStructurePartKind);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;  { try }
end;

procedure TrptStructurePartNeeds.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  MsgParams: TStrings;
begin
  inherited;

  MsgParams:= CreateCommonMsgParams(LoginContext, FAspectType, FStructurePartKind);
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;  { try }

  shpSumFullQuantityPrice.Enabled:= (FStructurePartKind = spkMaterial);
  dbtSumFullQuantityPrice.Enabled:= (FStructurePartKind = spkMaterial);
end;

procedure TrptStructurePartNeeds.SetDataParams(AReportDataSet,
  AParamsDataSet: TDataSet; AAspectType: TAspectType;
  AStructurePartKind: TStructurePartKind);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);
  FAspectType:= AAspectType;
  FStructurePartKind:= AStructurePartKind;
end;

end.
