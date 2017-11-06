unit rBaseOperationMovementReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QRCtrls, QuickRpt,
  ExtCtrls, DBClient, AbmesClientDataSet;

type
  TBaseOperationMovementReport = class(TDBDataReport)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRShape3: TQRShape;
    QRDBText3: TQRDBText;
    QRShape4: TQRShape;
    QRDBText4: TQRDBText;
    QRShape5: TQRShape;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRShape6: TQRShape;
    QRDBText6: TQRDBText;
    QRShape7: TQRShape;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape11: TQRShape;
    QRLabel11: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape12: TQRShape;
    QRDBText15: TQRDBText;
    QRShape13: TQRShape;
    QRDBText16: TQRDBText;
    QRShape14: TQRShape;
    QRDBText17: TQRDBText;
    QRShape15: TQRShape;
    QRDBText18: TQRDBText;
    QRLabel9: TQRLabel;
    QRShape16: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRShape17: TQRShape;
    QRLabel13: TQRLabel;
    QRShape18: TQRShape;
    QRDBText23: TQRDBText;
    QRShape19: TQRShape;
    QRDBText24: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel17: TQRLabel;
    txtMovementLevel: TQRLabel;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRDBText45: TQRDBText;
    QRShape9: TQRShape;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    lblStorno: TQRLabel;
    QRShape201: TQRShape;
    QRDBText301: TQRDBText;
    QRDBText303: TQRDBText;
    QRLabel181: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

resourcestring
  SStageLevel = 'Етапно Операционно';
  SOperationLevel = 'Операционно';

implementation

{$R *.dfm}

{ TBaseOperationMovementReport }

procedure TBaseOperationMovementReport.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;

  if (not ParamsDataSet.FieldByName('TO_MLMS_OBJECT_CODE').IsNull) and
     ( (ParamsDataSet.FieldByName('FROM_MLMS_OBJECT_BRANCH_CODE').AsInteger <> ParamsDataSet.FieldByName('TO_MLMS_OBJECT_BRANCH_CODE').AsInteger) or
       (ParamsDataSet.FieldByName('FROM_MLMS_OBJECT_CODE').AsInteger <> ParamsDataSet.FieldByName('TO_MLMS_OBJECT_CODE').AsInteger) ) then
    txtMovementLevel.Caption:= SStageLevel
  else
    txtMovementLevel.Caption:= SOperationLevel;

  lblStorno.Enabled:=
    not ReportDataSet.FieldByName('STORNO_EMPLOYEE_CODE').IsNull;

  Page.BottomMargin:= 170;
end;

end.
