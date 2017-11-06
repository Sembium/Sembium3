unit rXModels;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rDBDataReport, Db, Qrctrls, QuickRpt, ExtCtrls, AbmesFields,
  QRExport, DBClient, AbmesClientDataSet;

type
  TrptXModels = class(TDBDataReport)
    qrbTitle: TQRBand;
    mdsReportPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField;
    mdsReportPROCESS_OBJECT_CODE: TAbmesFloatField;
    mdsReportPROCESS_OBJECT_CLASS_CODE: TAbmesFloatField;
    mdsReportPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField;
    mdsReportSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    mdsReportSALE_OBJECT_CODE: TAbmesFloatField;
    mdsReportSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    mdsReportDECISION_DATE: TAbmesSQLTimeStampField;
    mdsReportDECISION_TO_ML_DATE_DIFF: TAbmesFloatField;
    mdsReportPRODUCT_CODE: TAbmesFloatField;
    mdsReportPRODUCT_NAME: TAbmesWideStringField;
    mdsReportPRODUCT_NO: TAbmesFloatField;
    mdsReportCONSUMER_NAME: TAbmesWideStringField;
    mdsReportENGINEER_EMPLOYEE_CODE: TAbmesFloatField;
    mdsReportENGINEER_EMPLOYEE_ABBREV: TAbmesWideStringField;
    mdsReportIS_ANNULED: TAbmesFloatField;
    mdsReportIS_FINISHED: TAbmesFloatField;
    mdsReportSPEC_PRODUCT_CODE: TAbmesFloatField;
    mdsReportSPEC_MODEL_VARIANT_NO: TAbmesFloatField;
    mdsReportML_OBJECT_BRANCH_CODE: TAbmesFloatField;
    mdsReportML_OBJECT_CODE: TAbmesFloatField;
    mdsReportMAIN_DEPT_CODE: TAbmesFloatField;
    mdsReportMAIN_DEPT_IDENTIFIER: TAbmesWideStringField;
    mdsReportENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField;
    mdsReportMIN_PRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField;
    mdsReportMANUFACTURE_DAYS: TAbmesFloatField;
    mdsReportIS_LIMITING: TAbmesFloatField;
    mdsReportIS_ARCHIVED: TAbmesFloatField;
    mdsReportCURRENT_TO_LIMITING_DATE_DIFF: TAbmesFloatField;
    mdsReportDEL_RECORD: TAbmesFloatField;
    mdsReport_PROCESS_OBJECT_TYPE_NAME: TAbmesWideStringField;
    mdsReport_SALE_STATUS: TAbmesWideStringField;
    QRBand1: TQRBand;
    QRShape51: TQRShape;
    QRLabel32: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRShape10: TQRShape;
    QRLabel11: TQRLabel;
    QRShape11: TQRShape;
    QRLabel12: TQRLabel;
    QRShape12: TQRShape;
    QRLabel13: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape16: TQRShape;
    QRLabel17: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape22: TQRShape;
    QRLabel22: TQRLabel;
    QRShape23: TQRShape;
    QRLabel23: TQRLabel;
    QRShape24: TQRShape;
    QRLabel24: TQRLabel;
    QRShape25: TQRShape;
    QRLabel25: TQRLabel;
    QRShape26: TQRShape;
    QRLabel26: TQRLabel;
    QRShape27: TQRShape;
    QRLabel27: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
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
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
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
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRShape20: TQRShape;
    QRLabel28: TQRLabel;
    QRShape48: TQRShape;
    QRDBText22: TQRDBText;
    QRLabel29: TQRLabel;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRDBText23: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
