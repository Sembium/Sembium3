unit rNeedsAbstract;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QuickRpt, QRCtrls, ExtCtrls,
  QRExport, uAspectTypes, uNeeds;

type
  TrptNeedsAbstract = class(TDBDataReport)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    QRDBText3: TQRDBText;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
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

  TrptNeedsAbstractClass = class of TrptNeedsAbstract;

implementation

uses
  fReportParent, uClientUtils;

{$R *.dfm}

{ TrptNeedsAbstract }

class procedure TrptNeedsAbstract.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; AAspectType: TAspectType;
  AStructurePartKind: TStructurePartKind);
var
  r: TrptNeedsAbstract;
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

procedure TrptNeedsAbstract.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
end;

procedure TrptNeedsAbstract.SetDataParams(AReportDataSet,
  AParamsDataSet: TDataSet; AAspectType: TAspectType;
  AStructurePartKind: TStructurePartKind);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);
  FAspectType:= AAspectType;
  FStructurePartKind:= AStructurePartKind;
end;

end.
