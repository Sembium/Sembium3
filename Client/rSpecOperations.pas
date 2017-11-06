unit rSpecOperations;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rSpecAndXModelOperations, DB, QRExport, QuickRpt,
  QRCtrls, ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptSpecOperations = class(TrptSpecAndXModelOperations)
    mdsVariant: TAbmesClientDataSet;
    QRShape54: TQRShape;
    QRLabel33: TQRLabel;
    QRShape55: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText29: TQRDBText;
    QRShape57: TQRShape;
    QRDBText31: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape56: TQRShape;
    QRDBText30: TQRDBText;
    QRShape58: TQRShape;
    QRDBText17: TQRDBText;
  private
    FVariantDataSet: TDataSet;
  protected
    function GetCorespondingDataSet(ADataSet: TDataSet): TDataSet; override;
    property VariantDataSet: TDataSet read FVariantDataSet;
  public
    procedure SetDataParams(AReportDataSet: TCustomClientDataSet;
      AParamsDataSet: TDataSet; ASubDetailDataSet: TCustomClientDataSet;
      AOnlyCurrentMasterRecord: Boolean; AExcludeStageNo: Integer;
      AVariantDataSet: TCustomClientDataSet); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TCustomClientDataSet = nil;
      AParamsDataSet: TDataSet = nil; ASubDetailDataSet: TCustomClientDataSet = nil;
      AOnlyCurrentMasterRecord: Boolean = False; AExcludeStageNo: Integer = -1;
      AVariantDataSet: TCustomClientDataSet = nil);
  end;

implementation

uses fReportParent;

{$R *.dfm}

{ TrptSpecOperations }

function TrptSpecOperations.GetCorespondingDataSet(
  ADataSet: TDataSet): TDataSet;
begin
  if (ADataSet = mdsVariant) then
    Result:= VariantDataSet
  else
    Result:= inherited GetCorespondingDataSet(ADataSet);
end;

class procedure TrptSpecOperations.PrintReport(
  AReportDataSet: TCustomClientDataSet; AParamsDataSet: TDataSet;
  ASubDetailDataSet: TCustomClientDataSet;
  AOnlyCurrentMasterRecord: Boolean;
  AExcludeStageNo: Integer;
  AVariantDataSet: TCustomClientDataSet);
var
  r: TrptSpecOperations;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, ASubDetailDataSet,
      AOnlyCurrentMasterRecord, AExcludeStageNo, AVariantDataSet);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptSpecOperations.SetDataParams(
  AReportDataSet: TCustomClientDataSet; AParamsDataSet: TDataSet;
  ASubDetailDataSet: TCustomClientDataSet;
  AOnlyCurrentMasterRecord: Boolean;
  AExcludeStageNo: Integer;
  AVariantDataSet: TCustomClientDataSet);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet, ASubDetailDataSet,
    AOnlyCurrentMasterRecord, AExcludeStageNo);
  FVariantDataSet:= AVariantDataSet;
end;

end.
