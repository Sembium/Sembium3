unit rBaseOperationsReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rMasterDetailReport, DB, QRExport, QRCtrls, QuickRpt,
  ExtCtrls, rDBDataReport, DBClient, AbmesClientDataSet;

type
  TBaseOperationsReport = class(TMasterDetailReport)
    TitleBand: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel8: TQRLabel;
    QRShape9: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape10: TQRShape;
    QRLabel11: TQRLabel;
    QRShape11: TQRShape;
    QRLabel12: TQRLabel;
    QRShape12: TQRShape;
    QRLabel13: TQRLabel;
    QRShape13: TQRShape;
    QRLabel14: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRDBText1: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRDBText2: TQRDBText;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape21: TQRShape;
    QRDBText3: TQRDBText;
    QRShape22: TQRShape;
    QRDBText4: TQRDBText;
    QRShape23: TQRShape;
    QRDBText5: TQRDBText;
    QRShape24: TQRShape;
    QRDBText6: TQRDBText;
    QRShape25: TQRShape;
    QRDBText7: TQRDBText;
    QRShape26: TQRShape;
    QRDBText8: TQRDBText;
    QRShape27: TQRShape;
    QRDBText9: TQRDBText;
    QRShape28: TQRShape;
    QRDBText10: TQRDBText;
    QRShape29: TQRShape;
    QRDBText11: TQRDBText;
    QRShape30: TQRShape;
    QRDBText12: TQRDBText;
    QRShape31: TQRShape;
    QRDBText13: TQRDBText;
    QRShape32: TQRShape;
    QRDBText14: TQRDBText;
    QRShape33: TQRShape;
    QRDBText15: TQRDBText;
    QRShape34: TQRShape;
    QRDBText16: TQRDBText;
    TitleChildBand: TQRChildBand;
    QRShape59: TQRShape;
    QRLabel38: TQRLabel;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRDBText32: TQRDBText;
  private
    { Private declarations }
  public
    procedure SetDataParams(AReportDataSet: TCustomClientDataSet;
      AParamsDataSet: TDataSet; ASubDetailDataSet: TCustomClientDataSet;
      AOnlyCurrentMasterRecord: Boolean); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TCustomClientDataSet = nil;
      AParamsDataSet: TDataSet = nil; ASubDetailDataSet: TCustomClientDataSet = nil;
      AOnlyCurrentMasterRecord: Boolean = False);
  end;

implementation

uses fReportParent;

{$R *.dfm}

{ TBaseOperationsReport }

class procedure TBaseOperationsReport.PrintReport(
  AReportDataSet: TCustomClientDataSet; AParamsDataSet: TDataSet;
  ASubDetailDataSet: TCustomClientDataSet;
  AOnlyCurrentMasterRecord: Boolean);
var
  r: TBaseOperationsReport;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, ASubDetailDataSet,
      AOnlyCurrentMasterRecord);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TBaseOperationsReport.SetDataParams(
  AReportDataSet: TCustomClientDataSet; AParamsDataSet: TDataSet;
  ASubDetailDataSet: TCustomClientDataSet;
  AOnlyCurrentMasterRecord: Boolean);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet, ASubDetailDataSet);

  if AOnlyCurrentMasterRecord then
    DataSet:= nil;
end;

end.
