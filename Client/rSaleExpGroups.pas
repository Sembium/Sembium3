unit rSaleExpGroups;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rMasterDetailReport, Db, ExtCtrls, QuickRpt, Qrctrls,
  AbmesFields, QRExport, DBClient, AbmesClientDataSet;

type
  TrptSaleExpGroups = class(TMasterDetailReport)
    qrbTitle: TQRBand;
    qrbDetailHeader: TQRBand;
    qrbMasterHeader: TQRBand;
    qrbMaster: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    txtStartDate: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
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
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    mdsReportIS_OTCH: TAbmesFloatField;
    mdsReportSHIPMENT_DATE: TAbmesSQLTimeStampField;
    mdsReportCLIENT_COMPANY_CODE: TAbmesFloatField;
    mdsReportRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    mdsReportGROUP_TYPE: TAbmesFloatField;
    mdsReportCLENT_COMPANY_NAME: TAbmesWideStringField;
    mdsReportOFFICE_NAME: TAbmesWideStringField;
    mdsReportPLAN_VALUE_GAINED: TAbmesFloatField;
    mdsReportPLAN_VALUE_INVESTED: TAbmesFloatField;
    mdsReportOTCH_VALUE_GAINED: TAbmesFloatField;
    mdsReportOTCH_VALUE_INVESTED: TAbmesFloatField;
    mdsReportAVG_TIME_DEV: TAbmesFloatField;
    mdsReportMAX_TIME_DEV: TAbmesFloatField;
    mdsReport_PLAN_VALUE_ADDED: TAbmesFloatField;
    mdsReport_PLAN_PERCENT: TAbmesFloatField;
    mdsReport_OTCH_VALUE_ADDED: TAbmesFloatField;
    mdsReport_OTCH_PERCENT: TAbmesFloatField;
    mdsReport_DEV_TIME: TAbmesFloatField;
    mdsReport_DEV_TIME_DISP: TAbmesFloatField;
    mdsReport_DEV_VALUE_GAINED: TAbmesFloatField;
    mdsReport_DEV_VALUE_ADDED: TAbmesFloatField;
    mdsReport_GROUP_TYPE_NAME: TAbmesWideStringField;
    mdsReportUNCOVERED_LINES: TAbmesFloatField;
    mdsParamsCOMPANY_CODE: TAbmesFloatField;
    mdsParamsIS_FINISHED: TAbmesFloatField;
    mdsParamsIS_LATE: TAbmesFloatField;
    mdsParamsIS_ACTUAL_LATE: TAbmesFloatField;
    mdsParamsIS_ACTUAL_FUTURE: TAbmesFloatField;
    mdsParamsIS_FUTURE: TAbmesFloatField;
    mdsParamsSTART_PERIOD_DATE: TAbmesSQLTimeStampField;
    mdsParamsEND_PERIOD_DATE: TAbmesSQLTimeStampField;
    mdsParamsBRANCH_CODE: TAbmesFloatField;
    mdsParamsPRODUCT_NO: TAbmesFloatField;
    mdsParams_COMPANY_NAME: TAbmesWideStringField;
    mdsParamsPRODUCT_CODE: TAbmesFloatField;
    mdsParams_BRANCH_CODE_AND_NAME: TAbmesWideStringField;
    mdsParamsPRODUCT_NAME: TAbmesWideStringField;
    QRDBText3: TQRDBText;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
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
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape55: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape56: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    mdsSubDetailIS_OTCH: TAbmesFloatField;
    mdsSubDetailSHIPMENT_DATE: TAbmesSQLTimeStampField;
    mdsSubDetailCLIENT_COMPANY_CODE: TAbmesFloatField;
    mdsSubDetailRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    mdsSubDetailSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    mdsSubDetailSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    mdsSubDetailSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    mdsSubDetailSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    mdsSubDetailSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    mdsSubDetailSALE_OBJECT_CODE: TAbmesFloatField;
    mdsSubDetailSALE_SHIPMENT_NO: TAbmesFloatField;
    mdsSubDetailREQUEST_BRANCH_CODE: TAbmesFloatField;
    mdsSubDetailREQUEST_NO: TAbmesFloatField;
    mdsSubDetailREQUEST_LINE_NO: TAbmesFloatField;
    mdsSubDetailSALE_ID: TAbmesWideStringField;
    mdsSubDetailSALE_TYPE: TAbmesWideStringField;
    mdsSubDetailPRODUCT_NAME: TAbmesWideStringField;
    mdsSubDetailMEASURE_ABBREV: TAbmesWideStringField;
    mdsSubDetailPLAN_QUANTITY: TAbmesFloatField;
    mdsSubDetailPLAN_VALUE_GAINED: TAbmesFloatField;
    mdsSubDetailPLAN_VALUE_INVESTED: TAbmesFloatField;
    mdsSubDetailOTCH_QUANTITY: TAbmesFloatField;
    mdsSubDetailOTCH_VALUE_GAINED: TAbmesFloatField;
    mdsSubDetailOTCH_VALUE_INVESTED: TAbmesFloatField;
    mdsSubDetailIS_ANNULED: TAbmesFloatField;
    mdsSubDetail_PLAN_VALUE_ADDED: TAbmesFloatField;
    mdsSubDetail_PLAN_PERCENT: TAbmesFloatField;
    mdsSubDetail_OTCH_VALUE_ADDED: TAbmesFloatField;
    mdsSubDetail_OTCH_PERCENT: TAbmesFloatField;
    mdsSubDetail_DEV_QUANTITY: TAbmesFloatField;
    mdsSubDetail_DEV_VALUE_GAINED: TAbmesFloatField;
    mdsSubDetail_DEV_VALUE_ADDED: TAbmesFloatField;
    mdsSubDetailUNCOVERED_LINES: TAbmesFloatField;
    lblComment: TQRLabel;
    QRShape17: TQRShape;
    QRLabel4: TQRLabel;
    QRShape18: TQRShape;
    QRDBText1: TQRDBText;
    QRShape32: TQRShape;
    QRLabel5: TQRLabel;
    QRShape33: TQRShape;
    QRDBText16: TQRDBText;
    QRShape36: TQRShape;
    QRLabel6: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  protected
    class function DisableControlsOnPrint: Boolean; override;  
  public
    { Public declarations }
  end;

implementation

uses
  uProductClientUtils, uProducts, uClientUtils;

{$R *.DFM}

resourcestring
  SComment = '* - стойностите са в %s    ПС - Придобивана Стойност   ИР1 - Индустриален Резултат от 1-ви ред';

{ TrptSaleExpGroups }

class function TrptSaleExpGroups.DisableControlsOnPrint: Boolean;
begin
  Result:= False;
end;

procedure TrptSaleExpGroups.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
