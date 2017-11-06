unit rSpecAndXModelOperationsInvestedValues;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rBaseReport, DB, DBClient, AbmesClientDataSet, QRExport,
  QRCtrls, QuickRpt, ExtCtrls, rDBDataReport, fSpecificationAndXModelAbstract;

type
  TrptSpecAndXModelOperationsInvestedValues = class(TDBDataReport)
    TitleBand: TQRBand;
    QRShape46: TQRShape;
    QRLabel24: TQRLabel;
    QRShape47: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape48: TQRShape;
    QRDBText22: TQRDBText;
    QRShape49: TQRShape;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRShape50: TQRShape;
    QRLabel27: TQRLabel;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel32: TQRLabel;
    QRShape53: TQRShape;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRShape13: TQRShape;
    QRShape12: TQRShape;
    QRShape11: TQRShape;
    QRShape10: TQRShape;
    QRShape9: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRLabel4: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape7: TQRShape;
    QRLabel7: TQRLabel;
    QRShape8: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    lblCurrencyAbbrev: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape19: TQRShape;
    QRLabel19: TQRLabel;
    QRShape21: TQRShape;
    QRDBText3: TQRDBText;
    QRShape20: TQRShape;
    QRDBText1: TQRDBText;
    QRShape22: TQRShape;
    QRDBText2: TQRDBText;
    QRShape23: TQRShape;
    QRDBText4: TQRDBText;
    QRShape24: TQRShape;
    QRDBText5: TQRDBText;
    QRShape25: TQRShape;
    QRDBText6: TQRDBText;
    QRShape26: TQRShape;
    QRDBText7: TQRDBText;
    QRShape27: TQRShape;
    QRDBText8: TQRDBText;
    QRShape28: TQRShape;
    QRDBText9: TQRDBText;
    QRShape30: TQRShape;
    QRDBText10: TQRDBText;
    QRShape31: TQRShape;
    QRDBText11: TQRDBText;
    QRShape32: TQRShape;
    QRDBText12: TQRDBText;
    QRShape33: TQRShape;
    QRDBText13: TQRDBText;
    mdsLines: TAbmesClientDataSet;
    QRShape34: TQRShape;
    QRLabel20: TQRLabel;
    QRShape35: TQRShape;
    QRLabel22: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel23: TQRLabel;
    QRShape36: TQRShape;
    QRDBText15: TQRDBText;
    QRShape37: TQRShape;
    QRDBText16: TQRDBText;
    QRBand3: TQRBand;
    QRShape291: TQRShape;
    QRDBText171: TQRDBText;
    QRShape381: TQRShape;
    QRDBText181: TQRDBText;
    QRShape391: TQRShape;
    QRDBText191: TQRDBText;
    QRShape29: TQRShape;
    QRLabel16: TQRLabel;
    QRShape38: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRLabel39: TQRLabel;
    lblResultProductTechQuantity: TQRLabel;
    lblResultProductTechMeasureAbbrev: TQRLabel;
    lblInvestedValueType: TQRLabel;
    lblInvestedValueDate: TQRLabel;
  private
    FLinesDataSet: TDataSet;
  protected
    function GetCorespondingDataSet(ADataSet: TDataSet): TDataSet; override;
    property LinesDataSet: TDataSet read FLinesDataSet;
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet;
      ALinesDataSet: TCustomClientDataSet = nil;
      AInvestedValuesTitle: string = ''; AInvestedValueFilter: TInvestedValueFilter = nil;
      AResultProductTechMeasureAbbrev: string = ''); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil;
      ALinesDataSet: TCustomClientDataSet = nil;
      AInvestedValuesTitle: string = ''; AInvestedValueFilter: TInvestedValueFilter = nil;
      AResultProductTechMeasureAbbrev: string = '');
  end;

implementation

uses
  fReportParent, JclDateTime, dMain;

{$R *.dfm}

{ TrptSpecAndXModelOperationsInvestedValues }

function TrptSpecAndXModelOperationsInvestedValues.GetCorespondingDataSet(
  ADataSet: TDataSet): TDataSet;
begin
  if (ADataSet = mdsLines) then
    Result:= FLinesDataSet
  else
    Result:= inherited GetCorespondingDataSet(ADataSet);
end;

class procedure TrptSpecAndXModelOperationsInvestedValues.PrintReport(
  AReportDataSet, AParamsDataSet: TDataSet;
  ALinesDataSet: TCustomClientDataSet;
  AInvestedValuesTitle: string; AInvestedValueFilter: TInvestedValueFilter;
  AResultProductTechMeasureAbbrev: string);
var
  r: TrptSpecAndXModelOperationsInvestedValues;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, ALinesDataSet,
      AInvestedValuesTitle, AInvestedValueFilter, AResultProductTechMeasureAbbrev);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptSpecAndXModelOperationsInvestedValues.SetDataParams(
  AReportDataSet, AParamsDataSet: TDataSet;
  ALinesDataSet: TCustomClientDataSet;
  AInvestedValuesTitle: string; AInvestedValueFilter: TInvestedValueFilter;
  AResultProductTechMeasureAbbrev: string);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);
  FLinesDataSet:= ALinesDataSet;
  lblCurrencyAbbrev.Caption:= AInvestedValuesTitle;

  lblResultProductTechQuantity.Caption:=
    FormatFloat(',0.###', AInvestedValueFilter.ResultProductTechQuantity);
  lblResultProductTechMeasureAbbrev.Caption:=
    AResultProductTechMeasureAbbrev;
  lblInvestedValueType.Caption:= Format('%s / %s / %s',
    [AInvestedValueFilter.InvestedValueAbbrev,
     AInvestedValueFilter.AggregatedAbbrev,
     AInvestedValueFilter.InvestedValueSingleAbbrev]);
  lblInvestedValueDate.Caption:=
    JclDateTime.FormatDateTime(dmMain.GetDateDisplayFormat, AInvestedValueFilter.InvestedValueDate);
end;

end.
