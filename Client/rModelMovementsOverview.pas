unit rModelMovementsOverview;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rDBDataReport, Db, Qrctrls, QuickRpt, ExtCtrls, AbmesFields,
  QRExport, DBClient, AbmesClientDataSet;

type
  TrptModelMovementsOverview = class(TDBDataReport)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand4: TQRBand;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape11: TQRShape;
    QRShape7: TQRShape;
    QRShape5: TQRShape;
    QRShape10: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape15: TQRShape;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    mdsReportMM_BRANCH_CODE: TAbmesFloatField;
    mdsReportMM_CODE: TAbmesFloatField;
    mdsReportMM_IDENTIFIER: TAbmesWideStringField;
    mdsReportMODEL_MOVEMENT_TYPE_ABBREV: TAbmesWideStringField;
    mdsReportMM_DATE: TAbmesSQLTimeStampField;
    mdsReportPROCESS_OBJECT_CLASS_ABBREV: TAbmesWideStringField;
    mdsReportPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    mdsReportDETAIL_NAME: TAbmesWideStringField;
    mdsReportDETAIL_CUSTOM_CODE: TAbmesFloatField;
    mdsReportFROM_STAGE_NO: TAbmesFloatField;
    mdsReportFROM_DEPT_NAME: TAbmesWideStringField;
    mdsReportTO_STAGE_NO: TAbmesFloatField;
    mdsReportTO_DEPT_NAME: TAbmesWideStringField;
    mdsReportDETAIL_TECH_QUANTITY: TAbmesFloatField;
    mdsReportMEASURE_ABBREV: TAbmesWideStringField;
    mdsReportTOTAL_PRICE: TAbmesFloatField;
    mdsReportIS_STORNO: TAbmesFloatField;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    txtProductName: TQRDBText;
    txtProductNo: TQRDBText;
    txtQuantity: TQRDBText;
    txtMeasureAbbrev: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    lblProduct: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape40: TQRShape;
    lblQuantityMeasure: TQRLabel;
    QRBand5: TQRBand;
    QRShape41: TQRShape;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape42: TQRShape;
    lblComment: TQRLabel;
    QRShape43: TQRShape;
    QRLabel15: TQRLabel;
    QRShape44: TQRShape;
    QRDBText13: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel1: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FShowAccountData: Boolean;
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet; AShowAccountData: Boolean = False); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil; AShowAccountData: Boolean = False);
  end;

implementation

uses
  fReportParent;

{$R *.DFM}

resourcestring
  SProduct = 'Крайна Структурна Част';
  SDetail = 'Начална Структурна Част';
  SAccount = 'Счетоводно';
  STechnological = 'Технологично';
  SPricesIn = '/%s/';

{ TrptModelMovementsOverview }

procedure TrptModelMovementsOverview.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  lblComment.Caption:= Format(SPricesIn, [LoginContext.BaseCurrencyAbbrev]);
  if FShowAccountData then
    begin
      lblProduct.Caption:= SDetail;
      lblQuantityMeasure.Caption:= SAccount;
      txtProductName.DataField:= 'PRODUCT_NAME';
      txtProductNo.DataField:= 'PRODUCT_CUSTOM_CODE';
      txtQuantity.DataField:= 'ACCOUNT_PRODUCT_QUANTITY';
      txtMeasureAbbrev.DataField:= 'ACCOUNT_MEASURE_ABBREV';
    end
  else
    begin
      lblProduct.Caption:= SProduct;
      lblQuantityMeasure.Caption:= STechnological;
      txtProductName.DataField:= 'DETAIL_NAME';
      txtProductNo.DataField:= 'DETAIL_CUSTOM_CODE';
      txtQuantity.DataField:= 'DETAIL_TECH_QUANTITY';
      txtMeasureAbbrev.DataField:= 'MEASURE_ABBREV';
    end;
end;

class procedure TrptModelMovementsOverview.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; AShowAccountData: Boolean);
var
  r: TrptModelMovementsOverview;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, AShowAccountData);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptModelMovementsOverview.SetDataParams(AReportDataSet,
  AParamsDataSet: TDataSet; AShowAccountData: Boolean);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);
  FShowAccountData:= AShowAccountData;
end;

end.

