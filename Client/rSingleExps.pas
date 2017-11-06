unit rSingleExps;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rDBDataReport, Db, Qrctrls, QuickRpt, ExtCtrls, AbmesFields,
  QRExport, DBClient, AbmesClientDataSet;

type
  TrptSingleExps = class(TDBDataReport)
    qrbTitle: TQRBand;
    qrbColumnHeader: TQRBand;
    qrbDetail: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    txtStartDate: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape79: TQRShape;
    lblFuture: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape35: TQRShape;
    QRLabel31: TQRLabel;
    QRShape34: TQRShape;
    QRLabel32: TQRLabel;
    QRShape38: TQRShape;
    QRLabel38: TQRLabel;
    QRShape45: TQRShape;
    QRLabel39: TQRLabel;
    QRShape44: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape41: TQRShape;
    QRLabel43: TQRLabel;
    QRShape46: TQRShape;
    QRShape39: TQRShape;
    QRLabel34: TQRLabel;
    QRShape40: TQRShape;
    QRLabel44: TQRLabel;
    QRShape47: TQRShape;
    QRShape50: TQRShape;
    QRLabel35: TQRLabel;
    QRShape55: TQRShape;
    QRLabel48: TQRLabel;
    QRShape51: TQRShape;
    QRLabel10: TQRLabel;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    QRShape3: TQRShape;
    QRLabel13: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRDBText22: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    mdsReportSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    mdsReportSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    mdsReportSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    mdsReportSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    mdsReportSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    mdsReportSALE_OBJECT_CODE: TAbmesFloatField;
    mdsReportSALE_SHIPMENT_NO: TAbmesFloatField;
    mdsReportREQUEST_BRANCH_CODE: TAbmesFloatField;
    mdsReportREQUEST_NO: TAbmesFloatField;
    mdsReportREQUEST_LINE_NO: TAbmesFloatField;
    mdsReportSALE_ID: TAbmesWideStringField;
    mdsReportSALE_TYPE: TAbmesWideStringField;
    mdsReportSHIPMENT_DATE: TAbmesSQLTimeStampField;
    mdsReportCLIENT_NAME: TAbmesWideStringField;
    mdsReportPRODUCT_NAME: TAbmesWideStringField;
    mdsReportMEASURE_ABBREV: TAbmesWideStringField;
    mdsReportPLAN_QUANTITY: TAbmesFloatField;
    mdsReportPLAN_VALUE_GAINED: TAbmesFloatField;
    mdsReportPLAN_VALUE_INVESTED: TAbmesFloatField;
    mdsReportOTCH_QUANTITY: TAbmesFloatField;
    mdsReportOTCH_VALUE_GAINED: TAbmesFloatField;
    mdsReportOTCH_VALUE_INVESTED: TAbmesFloatField;
    mdsReportIS_ANNULED: TAbmesFloatField;
    mdsReportIS_OTCH: TAbmesFloatField;
    mdsReportSHIPMENT_TYPE: TAbmesFloatField;
    mdsReport_DEV_TIME: TAbmesFloatField;
    mdsReport_DEV_QUANTITY: TAbmesFloatField;
    mdsReport_DEV_VALUE_GAINED: TAbmesFloatField;
    mdsReport_SHIPMENT_TYPE_NAME: TAbmesWideStringField;
    mdsReportDEV_TIME: TAbmesFloatField;
    mdsReportUNCOVERED_LINES: TAbmesFloatField;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    lblComment: TQRLabel;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRShape17: TQRShape;
    QRDBText14: TQRDBText;
    QRShape6: TQRShape;
    QRLabel5: TQRLabel;
    QRShape18: TQRShape;
    QRLabel6: TQRLabel;
    QRShape19: TQRShape;
    QRDBText3: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uProductClientUtils, uProducts, uClientUtils;

{$R *.DFM}

resourcestring
  SComment = '* - стойностите са в %s    ПС - Придобивана Стойност   ИР1 - Индустриален Резултат от 1-ви ред';

{ TrptSingleExps }

procedure TrptSingleExps.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  MsgParams: TStrings;
begin
  inherited;
    
  lblComment.Caption:= Format(SComment, [LoginContext.SecondaryCurrencyAbbrev]);

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext,
    IntToProductClass(ParamsDataSet.FieldByName('_PRODUCT_CLASS_CODE').AsInteger));
    
  try
    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;
end;

end.
