unit rUncoveredModels;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rMasterDetailReport, Db, ExtCtrls, QuickRpt, AbmesFields,
  Qrctrls, QRExport, DBClient, AbmesClientDataSet;

type
  TrptUncoveredModels = class(TMasterDetailReport)
    qrbTitle: TQRBand;
    qrbColumnHeaderMaster: TQRBand;
    qrbMaster: TQRBand;
    qrbColumnHeaderDetail: TQRBand;
    mdsParamsPRODUCT_NO: TAbmesFloatField;
    mdsParamsSTORE_CODE: TAbmesFloatField;
    mdsParamsDEPT_NO: TAbmesFloatField;
    mdsParamsSTART_PERIOD_DATE: TAbmesSQLTimeStampField;
    mdsParamsEND_PERIOD_DATE: TAbmesSQLTimeStampField;
    mdsParamsIS_LIMITING: TAbmesFloatField;
    mdsParamsPROCESS_OBJECT_CLASS_CODE: TAbmesFloatField;
    mdsParamsSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    mdsParamsSALE_CLIENT_COMPANY_CODE: TAbmesFloatField;
    mdsParamsSALE_BRANCH_CODE: TAbmesFloatField;
    mdsParamsSALE_NO: TAbmesFloatField;
    mdsParamsSALE_MANAGER_EMPLOYEE_CODE: TAbmesFloatField;
    mdsParamsSG_CLIENT_COMPANY_CODE: TAbmesFloatField;
    mdsParamsSG_RECEIVE_DATE: TAbmesSQLTimeStampField;
    mdsParamsSG_RECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField;
    mdsParamsSALE_GROUP_NO: TAbmesFloatField;
    mdsParamsPRODUCT_CODE: TAbmesFloatField;
    mdsParamsPRODUCT_NAME: TAbmesWideStringField;
    mdsParams_STORE_NAME: TAbmesWideStringField;
    mdsParamsDEPT_CODE: TAbmesFloatField;
    mdsParamsDEPT_NAME: TAbmesWideStringField;
    mdsParams_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField;
    mdsParams_SALE_CLIENT_COMPANY: TAbmesWideStringField;
    mdsParams_SALE_MANAGER_EMPLOYEE: TAbmesWideStringField;
    mdsParams_SG_CLIENT_COMPANY: TAbmesWideStringField;
    mdsParams_SG_RECEIVE_PLACE_COMPANY: TAbmesWideStringField;
    mdsParams_SG_RECEIVE_PLACE_OFFICE: TAbmesWideStringField;
    cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataML_OBJECT_CODE: TAbmesFloatField;
    mdsReportIS_LIMITING: TAbmesFloatField;
    mdsReportMAIN_DEPT_NAME: TAbmesWideStringField;
    mdsReportPROCESS_OBJECT_CLASS_ABBREV: TAbmesWideStringField;
    mdsReportPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    mdsReportPRODUCT_NAME: TAbmesWideStringField;
    mdsReportQUANTITY: TAbmesFloatField;
    mdsReportMEASURE_ABBREV: TAbmesWideStringField;
    mdsReportRESULT_STORE: TAbmesWideStringField;
    mdsReportENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField;
    mdsReportENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField;
    mdsReportUNCOVERED_LINES: TAbmesFloatField;
    mdsSubDetailML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    mdsSubDetailML_OBJECT_CODE: TAbmesFloatField;
    mdsSubDetailNO_AS_TEXT: TAbmesFloatField;
    mdsSubDetailFORK_NO: TAbmesFloatField;
    mdsSubDetailDETAIL_NAME: TAbmesWideStringField;
    mdsSubDetailTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField;
    mdsSubDetailDETAIL_MEASURE: TAbmesWideStringField;
    mdsSubDetailPRODUCT_NAME: TAbmesWideStringField;
    mdsSubDetailTOTAL_PRODUCT_QUANTITY: TAbmesFloatField;
    mdsSubDetailPRODUCT_MEASURE: TAbmesWideStringField;
    mdsSubDetailSTORE_NAME: TAbmesWideStringField;
    mdsSubDetailPRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    mdsSubDetailPRODUCT_NEED_END_DATE: TAbmesSQLTimeStampField;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape10: TQRShape;
    QRLabel11: TQRLabel;
    QRShape14: TQRShape;
    QRLabel15: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape25: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel16: TQRLabel;
    QRShape35: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape36: TQRShape;
    QRLabel27: TQRLabel;
    QRShape37: TQRShape;
    QRLabel28: TQRLabel;
    QRShape38: TQRShape;
    QRLabel29: TQRLabel;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape44: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    mdsSubDetail_PRODUCT_NAME_FOR_REPORT: TAbmesWideStringField;
    mdsSubDetail_PRODUCT_MEASURE_FOR_REPORT: TAbmesWideStringField;
    mdsSubDetail_PRODUCT_QUANTITY_FOR_REPORT: TAbmesFloatField;
    mdsSubDetail_PRODUCT_LABEL_FOR_REPORT: TAbmesWideStringField;
    QRDBText12: TQRDBText;
    QRShape39: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRDBText13: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRShape28: TQRShape;
    QRLabel19: TQRLabel;
    QRShape29: TQRShape;
    QRDBText14: TQRDBText;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRDBText3: TQRDBText;
    QRShape17: TQRShape;
    QRLabel6: TQRLabel;
    QRShape30: TQRShape;
    QRDBText15: TQRDBText;
    QRShape11: TQRShape;
    QRLabel12: TQRLabel;
    QRShape12: TQRShape;
    QRLabel13: TQRLabel;
    QRShape13: TQRShape;
    QRShape22: TQRShape;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape23: TQRShape;
    QRLabel14: TQRLabel;
    QRShape24: TQRShape;
    QRDBText10: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText17: TQRDBText;
    procedure lblProductPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  protected
    class function DisableControlsOnPrint: Boolean; override;  
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

{ TrptUncoveredModels }

class function TrptUncoveredModels.DisableControlsOnPrint: Boolean;
begin
  Result:= False;
end;

procedure TrptUncoveredModels.lblProductPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= mdsSubDetail.FieldByName('_PRODUCT_LABEL_FOR_REPORT').AsString;
end;

end.
