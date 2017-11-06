unit rSpecification;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rMasterDetailReport, Db, ExtCtrls, QuickRpt, Qrctrls,
  rDBDataReport, QRExport, DBClient, AbmesClientDataSet, QrAngLbl;

type
  TrptSpecification = class(TDBDataReport)
    bndTitle: TQRBand;
    QRLabel1: TQRLabel;
    QRShape10: TQRShape;
    QRLabel16: TQRLabel;
    QRShape12: TQRShape;
    QRLabel18: TQRLabel;
    QRShape13: TQRShape;
    lblInvestedValueCurrencyAbbrev: TQRLabel;
    QRBand1: TQRBand;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel21: TQRLabel;
    QRShape20: TQRShape;
    QRLabel22: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel24: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape28: TQRShape;
    QRLabel30: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel32: TQRLabel;
    QRShape31: TQRShape;
    QRLabel33: TQRLabel;
    QRShape32: TQRShape;
    QRLabel34: TQRLabel;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    lblSinglePrice: TQRLabel;
    lblTotalPrice: TQRLabel;
    QRLabel39: TQRLabel;
    QRBand2: TQRBand;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape55: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRBand4: TQRBand;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape64: TQRShape;
    QRDBText38: TQRDBText;
    QRShape65: TQRShape;
    QRDBText39: TQRDBText;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape66: TQRShape;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape67: TQRShape;
    QRDBText42: TQRDBText;
    QRLabel52: TQRLabel;
    QRShape68: TQRShape;
    QRDBText43: TQRDBText;
    QRLabel53: TQRLabel;
    QRDBText44: TQRDBText;
    QRShape69: TQRShape;
    QRDBText45: TQRDBText;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape70: TQRShape;
    QRDBText46: TQRDBText;
    QRLabel56: TQRLabel;
    QRShape71: TQRShape;
    QRDBText47: TQRDBText;
    QRLabel57: TQRLabel;
    QRDBText48: TQRDBText;
    QRShape72: TQRShape;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText52: TQRDBText;
    QRLabel58: TQRLabel;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRLabel20: TQRLabel;
    QRDBText56: TQRDBText;
    bndProductNos: TQRChildBand;
    QRLabel44: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape60: TQRShape;
    QRDBText35: TQRDBText;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRDBText34: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRLabel41: TQRLabel;
    lblInvestedValueType: TQRLabel;
    lblTotalInvestedValue: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape11: TQRShape;
    lblInvestedValueResultProductTechQuantity: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel59: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape26: TQRShape;
    QRDBText12: TQRDBText;
    bndNotes: TQRChildBand;
    QRShape78: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText133: TQRDBText;
    QRShape44: TQRShape;
    QRDBText144: TQRDBText;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRLabel37: TQRLabel;
    QRShape59: TQRShape;
    QRDBText13: TQRDBText;
    QRShape73: TQRShape;
    lblInvestedValueDate: TQRLabel;
    QRLabel62: TQRLabel;
    QRAngledLabel1: TQRAngledLabel;
    QRAngledLabel2: TQRAngledLabel;
    QRShape14: TQRShape;
    lblPrice: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel12: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape4: TQRShape;
    lblStructureCoef: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape7: TQRShape;
    QRDBText9: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    QRDBText10: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape6: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape27: TQRShape;
    QRDBText5: TQRDBText;
    QRLabel17: TQRLabel;
    QRShape15: TQRShape;
    QRDBText14: TQRDBText;
    QRLabel5: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FLarge: Boolean;
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet;
      ALarge, APrintProductNos, APrintNotes: Boolean;
      AStructureCoef, AInvestedValueResultProductTechQuantity,
      AInvestedValueType, ATotalInvestedValue, AInvestedValueCurrencyAbbrev,
      AInvestedValueDate: string); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil;
      ALarge: Boolean = False; APrintProductNos: Boolean = False; APrintNotes: Boolean = False;
      AStructureCoef: string = ''; AInvestedValueResultProductTechQuantity: string = '';
      AInvestedValueType: string = ''; ATotalInvestedValue: string = '';
      AInvestedValueCurrencyAbbrev: string = ''; AInvestedValueDate: string = '');
  end;

implementation

uses
  fReportParent, QrPrntr, Printers;

{$R *.DFM}

procedure TrptSpecification.SetDataParams(AReportDataSet,
  AParamsDataSet: TDataSet; ALarge, APrintProductNos, APrintNotes: Boolean;
  AStructureCoef, AInvestedValueResultProductTechQuantity,
  AInvestedValueType, ATotalInvestedValue, AInvestedValueCurrencyAbbrev,
  AInvestedValueDate: string);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);

  FLarge:= ALarge;

  bndProductNos.Enabled:= APrintProductNos;
  bndNotes.Enabled:= APrintNotes;

  lblStructureCoef.Caption:= AStructureCoef;
  lblInvestedValueResultProductTechQuantity.Caption:= AInvestedValueResultProductTechQuantity;
  lblInvestedValueType.Caption:= AInvestedValueType;
  lblTotalInvestedValue.Caption:= ATotalInvestedValue;
  lblInvestedValueCurrencyAbbrev.Caption:= AInvestedValueCurrencyAbbrev;
  lblInvestedValueDate.Caption:= AInvestedValueDate;
end;

class procedure TrptSpecification.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; ALarge, APrintProductNos, APrintNotes: Boolean;
  AStructureCoef, AInvestedValueResultProductTechQuantity,
  AInvestedValueType, ATotalInvestedValue, AInvestedValueCurrencyAbbrev,
  AInvestedValueDate: string);
var
  r: TrptSpecification;
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

procedure TrptSpecification.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;

  if FLarge then
    begin
      Page.PaperSize:= A3;
      Page.Orientation:= poPortrait;
    end;   { if }

  lblPrice.Caption:=
    Format(lblSinglePrice.Caption, [LoginContext.SecondaryCurrencyAbbrev]);
end;

end.
