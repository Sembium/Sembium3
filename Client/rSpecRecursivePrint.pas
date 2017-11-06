unit rSpecRecursivePrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rSpecAndXModelRecursivePrintAbstract, DB, QRCtrls,
  QuickRpt, ExtCtrls, QRExport, DBClient, AbmesClientDataSet, QrAngLbl;

type
  TrptSpecRecursivePrint = class(TrptSpecAndXModelRecursivePrintAbstract)
    QRLabel3: TQRLabel;
    QRShape13: TQRShape;
    QRLabel24: TQRLabel;
    QRShape17: TQRShape;
    QRDBText14: TQRDBText;
    QRShape10: TQRShape;
    QRLabel16: TQRLabel;
    QRShape12: TQRShape;
    QRLabel18: TQRLabel;
    QRShape2: TQRShape;
    lblInvestedValueCurrencyAbbrev: TQRLabel;
    lblInvestedValueType: TQRLabel;
    lblTotalInvestedValue: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape11: TQRShape;
    lblInvestedValueResultProductTechQuantity: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel59: TQRLabel;
    QRShape73: TQRShape;
    lblInvestedValueDate: TQRLabel;
    QRLabel62: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel12: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape14: TQRShape;
    QRLabel7: TQRLabel;
    QRShape15: TQRShape;
    QRDBText10: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape18: TQRShape;
    QRDBText12: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape22: TQRShape;
    QRDBText13: TQRDBText;
    QRLabel6: TQRLabel;
    QRShape27: TQRShape;
    QRDBText15: TQRDBText;
    QRLabel17: TQRLabel;
    QRShape24: TQRShape;
    QRDBText16: TQRDBText;
    QRLabel10: TQRLabel;
  private
    { Private declarations }
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet;
      ALarge, APrintProductNos, APrintNotes: Boolean; AStructureCoef,
      AInvestedValueResultProductTechQuantity, AInvestedValueType,
      ATotalInvestedValue, AInvestedValueCurrencyAbbrev,
      AInvestedValueDate: string); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil;
      ALarge: Boolean = False; APrintProductNos: Boolean = False; APrintNotes: Boolean = False;
      AStructureCoef: string = ''; AInvestedValueResultProductTechQuantity: string = '';
      AInvestedValueType: string = ''; ATotalInvestedValue: string = '';
      AInvestedValueCurrencyAbbrev: string = ''; AInvestedValueDate: string = '');
  end;

implementation

uses
  fReportParent;

{$R *.dfm}

{ TrptSpecRecursivePrint }

class procedure TrptSpecRecursivePrint.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; ALarge, APrintProductNos, APrintNotes: Boolean;
  AStructureCoef, AInvestedValueResultProductTechQuantity, AInvestedValueType,
  ATotalInvestedValue, AInvestedValueCurrencyAbbrev,
  AInvestedValueDate: string);
var
  r: TrptSpecRecursivePrint;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, ALarge, APrintProductNos, APrintNotes,
        AStructureCoef, AInvestedValueResultProductTechQuantity, AInvestedValueType,
        ATotalInvestedValue, AInvestedValueCurrencyAbbrev, AInvestedValueDate);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptSpecRecursivePrint.SetDataParams(AReportDataSet,
  AParamsDataSet: TDataSet; ALarge, APrintProductNos, APrintNotes: Boolean;
  AStructureCoef, AInvestedValueResultProductTechQuantity, AInvestedValueType,
  ATotalInvestedValue, AInvestedValueCurrencyAbbrev,
  AInvestedValueDate: string);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet,
    ALarge, APrintProductNos, APrintNotes, AStructureCoef);

  lblInvestedValueResultProductTechQuantity.Caption:= AInvestedValueResultProductTechQuantity;
  lblInvestedValueType.Caption:= AInvestedValueType;
  lblTotalInvestedValue.Caption:= ATotalInvestedValue;
  lblInvestedValueCurrencyAbbrev.Caption:= AInvestedValueCurrencyAbbrev;
  lblInvestedValueDate.Caption:= AInvestedValueDate;
end;

end.
