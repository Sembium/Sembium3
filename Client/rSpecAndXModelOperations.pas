unit rSpecAndXModelOperations;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rBaseOperationsReport, DB, QRExport, QuickRpt, QRCtrls,
  ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptSpecAndXModelOperations = class(TBaseOperationsReport)
    QRShape35: TQRShape;
    QRLabel17: TQRLabel;
    QRShape36: TQRShape;
    QRLabel18: TQRLabel;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRLabel20: TQRLabel;
    QRShape39: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape40: TQRShape;
    QRLabel22: TQRLabel;
    QRShape41: TQRShape;
    QRLabel23: TQRLabel;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    txtStageNo: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRShape46: TQRShape;
    QRLabel24: TQRLabel;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape49: TQRShape;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRShape50: TQRShape;
    QRLabel27: TQRLabel;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel32: TQRLabel;
    QRShape53: TQRShape;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    procedure SubDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    FExcludeStageNo: Integer;
  public
    procedure SetDataParams(AReportDataSet: TCustomClientDataSet;
      AParamsDataSet: TDataSet; ASubDetailDataSet: TCustomClientDataSet;
      AOnlyCurrentMasterRecord: Boolean; AExcludeStageNo: Integer); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TCustomClientDataSet = nil;
      AParamsDataSet: TDataSet = nil; ASubDetailDataSet: TCustomClientDataSet = nil;
      AOnlyCurrentMasterRecord: Boolean = False; AExcludeStageNo: Integer = -1);
  end;

implementation

uses fReportParent;

{$R *.dfm}

{ TrptSpecAndXModelOperations }

class procedure TrptSpecAndXModelOperations.PrintReport(
  AReportDataSet: TCustomClientDataSet; AParamsDataSet: TDataSet;
  ASubDetailDataSet: TCustomClientDataSet;
  AOnlyCurrentMasterRecord: Boolean; AExcludeStageNo: Integer);
var
  r: TrptSpecAndXModelOperations;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, ASubDetailDataSet,
      AOnlyCurrentMasterRecord, AExcludeStageNo);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptSpecAndXModelOperations.SetDataParams(
  AReportDataSet: TCustomClientDataSet; AParamsDataSet: TDataSet;
  ASubDetailDataSet: TCustomClientDataSet;
  AOnlyCurrentMasterRecord: Boolean; AExcludeStageNo: Integer);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet, ASubDetailDataSet,
    AOnlyCurrentMasterRecord);
  FExcludeStageNo:= AExcludeStageNo;
end;

procedure TrptSpecAndXModelOperations.SubDetailBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  PrintBand:=
    (not Assigned(DataSet)) or
    ( (txtStageNo.DataSet.FieldByName(txtStageNo.DataField).AsInteger <> 0) and
      (txtStageNo.DataSet.FieldByName(txtStageNo.DataField).AsInteger <> FExcludeStageNo) );
end;

end.
