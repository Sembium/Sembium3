unit rGroupSale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rDBDataReport, Db, ExtCtrls, QuickRpt, Qrctrls, AbmesFields,
  QRExport, DBClient, AbmesClientDataSet;

type
  TrptGroupSale = class(TDBDataReport)
    mdsReportSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    mdsReportSALE_OBJECT_CODE: TAbmesFloatField;
    mdsReportSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    mdsReportSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    mdsReportSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    mdsReportREQUEST_BRANCH_CODE: TAbmesFloatField;
    mdsReportREQUEST_NO: TAbmesFloatField;
    mdsReportREQUEST_LINE_NO: TAbmesFloatField;
    mdsReportCLIENT_COMPANY_CODE: TAbmesFloatField;
    mdsReportREQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    mdsReportREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    mdsReportPRODUCT_CODE: TAbmesFloatField;
    mdsReportPRODUCT_NAME: TAbmesWideStringField;
    mdsReportPRODUCT_NO: TAbmesFloatField;
    mdsReportPRODUCT_MEASURE_CODE: TAbmesFloatField;
    mdsReportPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField;
    mdsReportPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField;
    mdsReportPRODUCT_ESTIMATED_SECONDARY_PRI: TAbmesFloatField;
    mdsReportQUANTITY: TAbmesFloatField;
    mdsReportQUANTITY_CHG: TAbmesSQLTimeStampField;
    mdsReportCL_OFFER_QUANTITY: TAbmesFloatField;
    mdsReportCL_OFFER_QUANTITY_CHG: TAbmesSQLTimeStampField;
    mdsReportCURRENCY_CODE: TAbmesFloatField;
    mdsReportSINGLE_PRICE: TAbmesFloatField;
    mdsReportMARKET_SINGLE_PRICE: TAbmesFloatField;
    mdsReportDISCOUNT_PERCENT: TAbmesFloatField;
    mdsReportRECEIVE_DATE: TAbmesSQLTimeStampField;
    mdsReportRECEIVE_DATE_CHG: TAbmesSQLTimeStampField;
    mdsReportCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    mdsReportCL_OFFER_RECEIVE_DATE_CHG: TAbmesSQLTimeStampField;
    mdsReportSALE_BRANCH_CODE: TAbmesFloatField;
    mdsReportSALE_NO: TAbmesFloatField;
    mdsReportSALE_TYPE_CODE: TAbmesFloatField;
    mdsReportSHIPMENT_DATE: TAbmesSQLTimeStampField;
    mdsReportSHIPMENT_STORE_CODE: TAbmesFloatField;
    mdsReportANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    mdsReportANNUL_DATE: TAbmesSQLTimeStampField;
    mdsReportANNUL_TIME: TAbmesSQLTimeStampField;
    mdsReportFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    mdsReportFINISH_DATE: TAbmesSQLTimeStampField;
    mdsReportFINISH_TIME: TAbmesSQLTimeStampField;
    mdsReportCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    mdsReportCREATE_DATE: TAbmesSQLTimeStampField;
    mdsReportCREATE_TIME: TAbmesSQLTimeStampField;
    mdsReportCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    mdsReportCHANGE_DATE: TAbmesSQLTimeStampField;
    mdsReportCHANGE_TIME: TAbmesSQLTimeStampField;
    mdsReportSSH_SHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField;
    mdsReportSSH_SHIPMENT_OBJECT_CODE: TAbmesFloatField;
    mdsReportSSH_SALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    mdsReportSSH_SALE_OBJECT_CODE: TAbmesFloatField;
    mdsReportSSH_PLAN_QUANTITY: TAbmesFloatField;
    mdsReportSSH_QUANTITY: TAbmesFloatField;
    mdsReportSSH_SHIPMENT_PLAN_DATE: TAbmesSQLTimeStampField;
    mdsReportSSH_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    mdsReportSSH_INVOICE_NO: TAbmesFloatField;
    mdsReportSSH_INVOICE_DATE: TAbmesSQLTimeStampField;
    mdsReportSSH_INVOICE_CURRENCY_CODE: TAbmesFloatField;
    mdsReportSSH_INVOICE_SINGLE_PRICE: TAbmesFloatField;
    mdsReportPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    mdsReportTOTAL_PRICE: TAbmesFloatField;
    mdsReportTOTAL_PRICE_X: TAbmesFloatField;
    mdsReportQUANTITY_CHG_X: TAbmesSQLTimeStampField;
    mdsReportCL_OFFER_QUANTITY_CHG_X: TAbmesSQLTimeStampField;
    mdsReportCREATE_SALE: TAbmesFloatField;
    mdsReportRECORD_CHANGED: TAbmesFloatField;
    mdsParamsREQUEST_BRANCH_CODE: TAbmesFloatField;
    mdsParamsREQUEST_NO: TAbmesFloatField;
    mdsParamsSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    mdsParamsSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField;
    mdsParamsSALE_GROUP_OBJECT_CODE: TAbmesFloatField;
    mdsParamsANNUL_EMPLOYEE_CODE: TAbmesFloatField;
    mdsParamsANNUL_DATE: TAbmesSQLTimeStampField;
    mdsParamsANNUL_TIME: TAbmesSQLTimeStampField;
    mdsParamsFINISH_EMPLOYEE_CODE: TAbmesFloatField;
    mdsParamsFINISH_DATE: TAbmesSQLTimeStampField;
    mdsParamsFINISH_TIME: TAbmesSQLTimeStampField;
    mdsParamsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    mdsParamsCREATE_DATE: TAbmesSQLTimeStampField;
    mdsParamsCREATE_TIME: TAbmesSQLTimeStampField;
    mdsParamsCHANGE_EMPLOYEE_CODE: TAbmesFloatField;
    mdsParamsCHANGE_DATE: TAbmesSQLTimeStampField;
    mdsParamsCHANGE_TIME: TAbmesSQLTimeStampField;
    mdsParamsSG_PRIORITY_CODE: TAbmesFloatField;
    mdsParamsSG_SALE_ORDER_TYPE_CODE: TAbmesFloatField;
    mdsParamsSG_CLIENT_COMPANY_CODE: TAbmesFloatField;
    mdsParamsSG_RECEIVE_DATE: TAbmesSQLTimeStampField;
    mdsParamsSG_SALE_GROUP_NO: TAbmesFloatField;
    mdsParamsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField;
    mdsParamsSTORE_REQUEST_CODE: TAbmesFloatField;
    mdsParamsS_SALE_TYPE_CODE: TAbmesFloatField;
    mdsParamsS_CLIENT_COMPANY_CODE: TAbmesFloatField;
    mdsParamsS_REQUEST_SEND_DATE: TAbmesSQLTimeStampField;
    mdsParamsS_REQUEST_REGISTER_DATE: TAbmesSQLTimeStampField;
    mdsParamsS_RECEIVE_DATE: TAbmesSQLTimeStampField;
    mdsParamsS_RECEIVE_DATE_CHG: TAbmesSQLTimeStampField;
    mdsParamsS_CL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField;
    mdsParamsS_CL_OFFER_RECEIVE_DATE_C: TAbmesSQLTimeStampField;
    mdsParamsS_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    mdsParamsS_CURRENCY_CODE: TAbmesFloatField;
    mdsParamsSSH_SHIPMENT_PLAN_DATE: TAbmesSQLTimeStampField;
    mdsParamsSSH_SHIPMENT_DATE: TAbmesSQLTimeStampField;
    mdsParamsSSH_INVOICE_NO: TAbmesFloatField;
    mdsParamsSSH_INVOICE_DATE: TAbmesSQLTimeStampField;
    mdsParamsSSH_INVOICE_CURRENCY_CODE: TAbmesFloatField;
    mdsParamsCREATE_SALE_GROUP: TAbmesFloatField;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    dbtSaleType: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape11: TQRShape;
    QRLabel27: TQRLabel;
    QRShape12: TQRShape;
    QRLabel28: TQRLabel;
    QRShape13: TQRShape;
    QRLabel29: TQRLabel;
    QRShape14: TQRShape;
    QRLabel30: TQRLabel;
    QRShape15: TQRShape;
    QRLabel31: TQRLabel;
    QRShape16: TQRShape;
    QRLabel32: TQRLabel;
    QRShape17: TQRShape;
    QRLabel33: TQRLabel;
    QRShape18: TQRShape;
    QRLabel34: TQRLabel;
    QRShape19: TQRShape;
    QRLabel35: TQRLabel;
    QRShape21: TQRShape;
    QRLabel36: TQRLabel;
    QRShape22: TQRShape;
    QRLabel37: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
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
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRDBText31: TQRDBText;
    QRLabel38: TQRLabel;
    QRShape40: TQRShape;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRLabel11: TQRLabel;
    QRShape4: TQRShape;
    QRLabel12: TQRLabel;
    QRShape5: TQRShape;
    QRLabel13: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    shpCurrentQuantity: TQRShape;
    shpFutureQuantity: TQRShape;
    QRLabel19: TQRLabel;
    QRShape42: TQRShape;
    QRLabel20: TQRLabel;
    QRShape43: TQRShape;
    QRLabel21: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape38: TQRShape;
    QRLabel22: TQRLabel;
    QRShape39: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRShape46: TQRShape;
    QRLabel42: TQRLabel;
    QRShape47: TQRShape;
    QRLabel43: TQRLabel;
    QRShape48: TQRShape;
    QRLabel44: TQRLabel;
    QRShape49: TQRShape;
    QRLabel46: TQRLabel;
    QRShape51: TQRShape;
    QRLabel47: TQRLabel;
    QRShape52: TQRShape;
    QRLabel48: TQRLabel;
    QRShape53: TQRShape;
    QRLabel49: TQRLabel;
    QRShape54: TQRShape;
    QRLabel50: TQRLabel;
    QRShape55: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape20: TQRShape;
    QRLabel3: TQRLabel;
    QRShape41: TQRShape;
    QRDBText13: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape50: TQRShape;
    QRLabel5: TQRLabel;
    QRShape56: TQRShape;
    QRDBText15: TQRDBText;
    QRLabel6: TQRLabel;
    QRShape57: TQRShape;
    QRLabel8: TQRLabel;
    QRShape58: TQRShape;
    QRDBText32: TQRDBText;
    QRLabel15: TQRLabel;
    QRShape59: TQRShape;
    QRDBText33: TQRDBText;
    QRLabel16: TQRLabel;
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uSaleOrderTypes;

{$R *.DFM}

resourcestring
  SProductSaleQuery = 'Пакет Диалози с Клиент за Продажба на УОб по Наличност';
  SProductSale = 'Ордер за Процес Продажби';

procedure TrptGroupSale.QRLabel1Print(sender: TObject; var Value: String);
begin
  inherited;
  if DataSet.FieldByName('SALE_GROUP_OBJECT_CODE').IsNull then
    Value:= SProductSaleQuery
  else
    Value:= SProductSale;
end;

procedure TrptGroupSale.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  shpCurrentQuantity.Enabled:= (ParamsDataSet.FieldByName('SALE_ORDER_TYPE_CODE').AsInteger = sotCurrentQuantity);
  shpFutureQuantity.Enabled:= (ParamsDataSet.FieldByName('SALE_ORDER_TYPE_CODE').AsInteger = sotFutureQuantity);
end;

end.

