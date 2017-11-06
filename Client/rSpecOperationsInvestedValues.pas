unit rSpecOperationsInvestedValues;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rSpecAndXModelOperationsInvestedValues, DB, DBClient,
  AbmesClientDataSet, QRExport, QRCtrls, QuickRpt, ExtCtrls,
  fSpecificationAndXModelAbstract;

type
  TrptSpecOperationsInvestedValues = class(TrptSpecAndXModelOperationsInvestedValues)
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
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet;
      ALinesDataSet: TCustomClientDataSet = nil;
      AInvestedValuesTitle: string = ''; AInvestedValueFilter: TInvestedValueFilter = nil;
      AResultProductTechMeasureAbbrev: string = '';
      AVariantDataSet: TCustomClientDataSet = nil); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil;
      ALinesDataSet: TCustomClientDataSet = nil;
      AInvestedValuesTitle: string = ''; AInvestedValueFilter: TInvestedValueFilter = nil;
      AResultProductTechMeasureAbbrev: string = '';
      AVariantDataSet: TCustomClientDataSet = nil);
  end;

implementation

uses
  fReportParent;

{$R *.dfm}

{ TrptSpecOperationsInvestedValues }

function TrptSpecOperationsInvestedValues.GetCorespondingDataSet(
  ADataSet: TDataSet): TDataSet;
begin
  if (ADataSet = mdsVariant) then
    Result:= VariantDataSet
  else
    Result:= inherited GetCorespondingDataSet(ADataSet);
end;

class procedure TrptSpecOperationsInvestedValues.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; ALinesDataSet: TCustomClientDataSet;
  AInvestedValuesTitle: string; AInvestedValueFilter: TInvestedValueFilter;
  AResultProductTechMeasureAbbrev: string;
  AVariantDataSet: TCustomClientDataSet);
var
  r: TrptSpecOperationsInvestedValues;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, ALinesDataSet,
      AInvestedValuesTitle, AInvestedValueFilter, AResultProductTechMeasureAbbrev, AVariantDataSet);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptSpecOperationsInvestedValues.SetDataParams(AReportDataSet,
  AParamsDataSet: TDataSet; ALinesDataSet: TCustomClientDataSet;
  AInvestedValuesTitle: string; AInvestedValueFilter: TInvestedValueFilter;
  AResultProductTechMeasureAbbrev: string;
  AVariantDataSet: TCustomClientDataSet);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet, ALinesDataSet,
    AInvestedValuesTitle, AInvestedValueFilter, AResultProductTechMeasureAbbrev);
  FVariantDataSet:= AVariantDataSet;
end;

end.
