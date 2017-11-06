unit rOperationalMovements;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QuickRpt, QRCtrls,
  ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptOperationalMovements = class(TDBDataReport)
    bndTitle: TQRBand;
    bndColumnHeader: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
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
    QRLabel12: TQRLabel;
    QRShape12: TQRShape;
    QRLabel13: TQRLabel;
    QRShape13: TQRShape;
    QRLabel14: TQRLabel;
    QRShape15: TQRShape;
    QRLabel16: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel17: TQRLabel;
    QRShape18: TQRShape;
    QRLabel18: TQRLabel;
    QRShape19: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    bndDetail: TQRBand;
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
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
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
    QRBand2: TQRBand;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape43: TQRShape;
    QRLabel28: TQRLabel;
    QRShape44: TQRShape;
    QRDBText26: TQRDBText;
    QRShape14: TQRShape;
    QRLabel15: TQRLabel;
    QRShape37: TQRShape;
    QRDBText16: TQRDBText;
    QRShape38: TQRShape;
    QRLabel26: TQRLabel;
    QRShape39: TQRShape;
    QRShape42: TQRShape;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRLabel1: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    FProductsDataVisible: Boolean;
  public
    procedure SetDataParams(AReportDataSet: TDataSet; AParamsDataSet: TDataSet; AProductsDataVisible: Boolean); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil; AProductsDataVisible: Boolean = False);
  end;

implementation

uses fReportParent;

{$R *.dfm}

class procedure TrptOperationalMovements.PrintReport(AReportDataSet,
  AParamsDataSet: TDataSet; AProductsDataVisible: Boolean);
var
  r: TrptOperationalMovements;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(AReportDataSet, AParamsDataSet, AProductsDataVisible);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptOperationalMovements.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);

const
  ColumnHeaderHeight = 39;
  DetailHeight = 19;
  Delta = 48;

var
  i: Integer;

begin
  inherited;

  for i:= 0 to ComponentCount - 1 do
    if (Components[i] is TQRPrintable) then
      with (Components[i] as TQRPrintable) do
        case Tag of
          1:
            Enabled:= not FProductsDataVisible;

          2:
            begin
              Top:= Top - Delta;
              Enabled:= FProductsDataVisible;
            end;
        end;

  bndColumnHeader.Height:= ColumnHeaderHeight;
  bndDetail.Height:= DetailHeight;
end;

procedure TrptOperationalMovements.SetDataParams(AReportDataSet,
  AParamsDataSet: TDataSet; AProductsDataVisible: Boolean);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);
  FProductsDataVisible:= AProductsDataVisible;
end;

end.
 
