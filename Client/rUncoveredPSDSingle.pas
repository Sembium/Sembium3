unit rUncoveredPSDSingle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rDBDataReport, Db, Qrctrls, QuickRpt, ExtCtrls, AbmesFields,
  QRExport, DBClient, AbmesClientDataSet;

type
  TrptUncoveredPSDSingle = class(TDBDataReport)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    lblTitle: TQRLabel;
    lblProduct: TQRLabel;
    lblDept: TQRLabel;
    lblTimeUnit: TQRLabel;
    lblStartDate: TQRLabel;
    txtProduct: TQRDBText;
    txtDept: TQRDBText;
    txtTimeUnit: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    txtCOMPLETED_QUANTITY: TQRDBText;
    txtMEASURE_ABBREV: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    txtINCOMPLETED_QUANTITY: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape18: TQRShape;
    QRDBText4: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FIsWorkMeasure: Boolean;
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet; IsWorkMeasure: Boolean = True); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil; IsWorkMeasure: Boolean = True);
  end;

implementation

uses
  fReportParent, uProductClientUtils, uProducts, uClientUtils;

{$R *.DFM}

resourcestring
  SDifferentMeasurements = 'разл. м.ед.';

class procedure TrptUncoveredPSDSingle.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; IsWorkMeasure: Boolean);
var
  r: TrptUncoveredPSDSingle;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, IsWorkMeasure);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptUncoveredPSDSingle.SetDataParams(AReportDataSet,
  AParamsDataSet: TDataSet; IsWorkMeasure: Boolean);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);
  FIsWorkMeasure:= IsWorkMeasure;
end;

procedure TrptUncoveredPSDSingle.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
var
  MsgParams: TStrings;
begin
  inherited;

  if FIsWorkMeasure then
    begin
      txtINCOMPLETED_QUANTITY.DataField:= 'INCOMPLETED_QUANTITY';
      txtCOMPLETED_QUANTITY.DataField:= 'COMPLETED_QUANTITY';
      txtMEASURE_ABBREV.DataField:= 'MEASURE_ABBREV';
    end
  else
    begin
      txtINCOMPLETED_QUANTITY.DataField:= 'INCOMPLETED_ACCOUNT_QUANTITY';
      txtCOMPLETED_QUANTITY.DataField:= 'COMPLETED_ACCOUNT_QUANTITY';
      txtMEASURE_ABBREV.DataField:= 'ACCOUNT_MEASURE_ABBREV';
    end;

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext,
    IntToProductClass(ParamsDataSet.FieldByName('_PRODUCT_CLASS_CODE').AsInteger));
    
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;
end;

end.

