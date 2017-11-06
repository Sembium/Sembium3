unit rOccupationAndEmployeePrcDataReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rPrcDataReport, DB, DBClient, AbmesClientDataSet, QRExport, QRCtrls,
  QuickRpt, ExtCtrls;

type
  TrptOccupationAndEmployeePrcDataReport = class(TPrcDataReport)
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRShape7: TQRShape;
    dbtOccupationStatusAbbrev: TQRDBText;
    QRShape10: TQRShape;
    dbtOccupationIsMain: TQRDBText;
    QRLabel9: TQRLabel;
    QRShape11: TQRShape;
    dbtOccupationName: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape8: TQRShape;
    QRLabel7: TQRLabel;
    QRShape9: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape12: TQRShape;
    QRDBText5: TQRDBText;
    QRShape13: TQRShape;
    QRLabel12: TQRLabel;
    QRShape14: TQRShape;
    QRLabel13: TQRLabel;
    QRShape15: TQRShape;
    QRLabel14: TQRLabel;
    QRShape16: TQRShape;
    QRLabel15: TQRLabel;
    QRShape17: TQRShape;
    QRDBText2: TQRDBText;
    QRShape18: TQRShape;
    QRDBText4: TQRDBText;
    QRShape19: TQRShape;
    QRDBText8: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape20: TQRShape;
    QRLabel16: TQRLabel;
    QRShape43: TQRShape;
    QRDBText15: TQRDBText;
    QRLabel31: TQRLabel;
    QRShape44: TQRShape;
    QRDBText16: TQRDBText;
    QRShape32: TQRShape;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel23: TQRLabel;
    QRShape45: TQRShape;
    QRDBText18: TQRDBText;
    QRLabel40: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    function ParamsParentDataSet: TDataSet;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

function TrptOccupationAndEmployeePrcDataReport.ParamsParentDataSet: TDataSet;
begin
  Result:= ParamsDataSet.DataSetField.DataSet;
end;

procedure TrptOccupationAndEmployeePrcDataReport.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  dbtOccupationStatusAbbrev.DataSet:= ParamsParentDataSet;
  dbtOccupationIsMain.DataSet:= ParamsParentDataSet;
  dbtOccupationName.DataSet:= ParamsParentDataSet;
end;

end.
