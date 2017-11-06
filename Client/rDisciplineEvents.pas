unit rDisciplineEvents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rMasterDetailReport, DB, QRExport,
  QRCtrls, QuickRpt, ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptDisciplineEvents = class(TMasterDetailReport)
    qrbTitle: TQRBand;
    qrbDetail: TQRBand;
    qrbColumnHeader: TQRBand;
    qrbDetailHeader: TQRBand;
    QRShape15: TQRShape;
    QRShape18: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape29: TQRShape;
    QRDBText14: TQRDBText;
    QRShape5: TQRShape;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape6: TQRShape;
    QRLabel5: TQRLabel;
    QRShape7: TQRShape;
    QRLabel6: TQRLabel;
    QRShape8: TQRShape;
    QRLabel7: TQRLabel;
    QRShape9: TQRShape;
    QRLabel9: TQRLabel;
    QRShape10: TQRShape;
    QRLabel10: TQRLabel;
    QRShape11: TQRShape;
    QRLabel11: TQRLabel;
    QRShape12: TQRShape;
    QRLabel12: TQRLabel;
    QRShape13: TQRShape;
    QRLabel13: TQRLabel;
    QRShape14: TQRShape;
    QRLabel14: TQRLabel;
    QRShape16: TQRShape;
    QRDBText2: TQRDBText;
    QRShape17: TQRShape;
    QRDBText5: TQRDBText;
    QRShape19: TQRShape;
    QRDBText6: TQRDBText;
    QRShape20: TQRShape;
    QRDBText7: TQRDBText;
    QRShape21: TQRShape;
    QRDBText8: TQRDBText;
    QRShape22: TQRShape;
    QRDBText9: TQRDBText;
    QRShape23: TQRShape;
    QRDBText10: TQRDBText;
    QRShape24: TQRShape;
    QRDBText11: TQRDBText;
    lblEmployee: TQRLabel;
    lblDateInterval: TQRLabel;
    txtEmployeeNo: TQRDBText;
    txtEmployeeName: TQRDBText;
    txtDateInterval: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel17: TQRLabel;
    txtAuthorizeEmployeeNo: TQRDBText;
    txtAuthorizeEmployeeName: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText17: TQRDBText;
    qrbSummary: TQRBand;
    QRShape25: TQRShape;
    QRDBText15: TQRDBText;
    QRLabel19: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qrbTitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  protected
    class function DisableControlsOnPrint: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  UITypes;

{$R *.dfm}

procedure TrptDisciplineEvents.qrbTitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;

  if ParamsDataSet.FieldByName('EMPLOYEE_CODE').IsNull then
    txtEmployeeName.Left:= txtEmployeeNo.Left;

  if ParamsDataSet.FieldByName('AUTHORIZE_EMPLOYEE_CODE').IsNull then
    txtAuthorizeEmployeeName.Left:= txtAuthorizeEmployeeNo.Left;
end;

procedure TrptDisciplineEvents.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  if Assigned(SubDetailDataSet) then
    qrbDetail.Font.Style:= [fsBold]
  else
    qrbDetail.Font.Style:= [];
  qrbSummary.Font.Style:= qrbDetail.Font.Style;
end;

class function TrptDisciplineEvents.DisableControlsOnPrint: Boolean;
begin
  Result:= False;
end;

end.
