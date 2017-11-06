unit rProductPartnerPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBTreeDataReport, DB, DBClient, AbmesClientDataSet, QRExport,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TrptProductPartnerPrice = class(TDBTreeDataReport)
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape8: TQRShape;
    QRLabel8: TQRLabel;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    shpPriceModifierName: TQRShape;
    dbtPriceModifierName: TQRDBText;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    shpPriceItemValue: TQRShape;
    QRDBText1: TQRDBText;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    shpCurrency: TQRShape;
    QRDBText2: TQRDBText;
    QRShape18: TQRShape;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRShape14: TQRShape;
    QRDBText4: TQRDBText;
    QRShape15: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape16: TQRShape;
    QRDBText7: TQRDBText;
    QRShape17: TQRShape;
    QRDBText8: TQRDBText;
    QRLabel6: TQRLabel;
    QRShape19: TQRShape;
    QRDBText9: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText10: TQRDBText;
    dbtTitle: TQRDBText;
    QRShape6: TQRShape;
    QRDBText12: TQRDBText;
    QRLabel4: TQRLabel;
    shpDateUnitNameHeader: TQRShape;
    lblDateUnitName: TQRLabel;
    QRShape13: TQRShape;
    QRShape20: TQRShape;
    shpDateUnitNameField: TQRShape;
    dbtDateUnitName: TQRDBText;
    procedure bndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uParRelProducts, Printers;

{$R *.dfm}

procedure TrptProductPartnerPrice.bndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  Background: TColor;
begin
  inherited;

  if not ReportDataSet.FieldByName('FONT_COLOR').IsNull then
    bndDetail.Font.Color:= ReportDataSet.FieldByName('FONT_COLOR').AsInteger
  else
    bndDetail.Font.Color:= clBlack;

  if not ReportDataSet.FieldByName('BACKGROUND_COLOR').IsNull then
    Background:= ReportDataSet.FieldByName('BACKGROUND_COLOR').AsInteger
  else
    Background:= clWhite;

  shpNodeIdentifier.Brush.Color:= Background;
  shpPriceModifierName.Brush.Color:= Background;
  shpPriceItemValue.Brush.Color:= Background;
  shpCurrency.Brush.Color:= Background;
end;

procedure TrptProductPartnerPrice.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;

  if (IntToObtainmentType(ParamsDataSet.FieldByName('OBTAINMENT_TYPE_CODE').AsInteger) = otLease) then
    begin
      Page.Orientation:= poLandscape;
      qrsPageNum.Left:= 768;
      dbtTitle.Width:= 830;

      shpDateUnitNameHeader.Enabled:= True;
      lblDateUnitName.Enabled:= True;
      shpDateUnitNameField.Enabled:= True;
      dbtDateUnitName.Enabled:= True;
    end
  else
    Page.Orientation:= poPortrait;
end;

end.
