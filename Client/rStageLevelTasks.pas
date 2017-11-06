unit rStageLevelTasks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QRCtrls, QuickRpt,
  ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptStageLevelTasks = class(TDBDataReport)
    QRBand1: TQRBand;
    bndColumnHeader: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
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
    QRShape12: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape14: TQRShape;
    QRLabel15: TQRLabel;
    QRShape15: TQRShape;
    QRLabel16: TQRLabel;
    QRShape16: TQRShape;
    QRLabel17: TQRLabel;
    QRShape17: TQRShape;
    QRLabel18: TQRLabel;
    QRShape18: TQRShape;
    QRLabel19: TQRLabel;
    QRShape19: TQRShape;
    QRLabel20: TQRLabel;
    QRShape20: TQRShape;
    QRLabel21: TQRLabel;
    QRShape21: TQRShape;
    QRLabel22: TQRLabel;
    QRShape13: TQRShape;
    QRShape22: TQRShape;
    QRLabel23: TQRLabel;
    bndDetail: TQRBand;
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
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRDBText1: TQRDBText;
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
    QRShape40: TQRShape;
    QRLabel24: TQRLabel;
    QRShape41: TQRShape;
    QRDBText18: TQRDBText;
    QRShape42: TQRShape;
    QRLabel25: TQRLabel;
    QRShape43: TQRShape;
    QRDBText19: TQRDBText;
    QRLabel1: TQRDBText;
    QRLabel31: TQRLabel;
    QRShape44: TQRShape;
    QRDBText20: TQRDBText;
    QRShape45: TQRShape;
    QRDBText31: TQRDBText;
    QRLabel26: TQRLabel;
    QRShape46: TQRShape;
    QRDBText32: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FClientProductData: Boolean;
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet; AClientProductData: Boolean); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil; AClientProductData: Boolean = False);
  end;

implementation

uses fReportParent;

{$R *.dfm}

class procedure TrptStageLevelTasks.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; AClientProductData: Boolean);
var
  r: TrptStageLevelTasks;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, AClientProductData);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptStageLevelTasks.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
const
  ColumnHeaderHeight = 71;
  DetailHeight = 20;
  Delta = 63;
var
  i: Integer;

begin
  inherited;

  for i:= 0 to ComponentCount - 1 do
    if (Components[i] is TQRPrintable) then
      with (Components[i] as TQRPrintable) do
        case Tag of
          1:
            Enabled:= not FClientProductData;

          2:
            begin
              Top:= Top - Delta;
              Enabled:= FClientProductData;
            end;
        end;

  bndColumnHeader.Height:= ColumnHeaderHeight;
  bndDetail.Height:= DetailHeight;
end;

procedure TrptStageLevelTasks.SetDataParams(AReportDataSet,
  AParamsDataSet: TDataSet; AClientProductData: Boolean);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);
  FClientProductData:= AClientProductData;
end;

end.
