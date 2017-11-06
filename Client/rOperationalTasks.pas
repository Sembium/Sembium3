unit rOperationalTasks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, ExtCtrls, QuickRpt,
  QRCtrls, DBClient, AbmesClientDataSet;

type
  TrptOperationalTasks = class(TDBDataReport)
    bndTitle: TQRBand;
    bndColumnHeader: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape4: TQRShape;
    QRLabel3: TQRLabel;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRLabel7: TQRLabel;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRShape10: TQRShape;
    QRLabel11: TQRLabel;
    QRShape13: TQRShape;
    QRLabel13: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel14: TQRLabel;
    QRShape16: TQRShape;
    QRLabel15: TQRLabel;
    QRShape17: TQRShape;
    QRLabel16: TQRLabel;
    QRShape18: TQRShape;
    QRLabel17: TQRLabel;
    QRShape19: TQRShape;
    QRLabel18: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel19: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape26: TQRShape;
    QRLabel25: TQRLabel;
    QRShape27: TQRShape;
    QRLabel26: TQRLabel;
    QRShape28: TQRShape;
    QRLabel27: TQRLabel;
    QRShape29: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape32: TQRShape;
    bndDetail: TQRBand;
    QRShape36: TQRShape;
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
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
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
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText39: TQRDBText;
    QRShape59: TQRShape;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    txtAvailableDetailTechQuantity: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    bndSummary: TQRBand;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape12: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRDBText26: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText38: TQRDBText;
    QRShape62: TQRShape;
    shpKind: TQRShape;
    QRLabel39: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText55: TQRDBText;
    QRShape11: TQRShape;
    QRLabel12: TQRLabel;
    QRShape57: TQRShape;
    QRDBText51: TQRDBText;
    QRShape58: TQRShape;
    QRLabel40: TQRLabel;
    QRShape66: TQRShape;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRShape30: TQRShape;
    QRShape24: TQRShape;
    QRLabel4: TQRLabel;
    QRShape25: TQRShape;
    QRShape31: TQRShape;
    QRLabel23: TQRLabel;
    QRShape33: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape34: TQRShape;
    QRDBText31: TQRDBText;
    QRLabel24: TQRLabel;
    QRShape35: TQRShape;
    QRDBText32: TQRDBText;
    procedure bndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uClientConsts;

{$R *.dfm}

{ TrptOperationalTasks }

procedure TrptOperationalTasks.bndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if DataSet.FieldByName('MLMSO_IS_AUTO_MOVEMENT').AsBoolean then
    shpKind.Brush.Color:= $00E1E1E1
  else
    shpKind.Brush.Color:= clWhite;

  if DataSet.FieldByName('IS_AUTO_RECEIVING_OPERATION').AsBoolean then
    txtAvailableDetailTechQuantity.Font.Color:= clGray
  else
    txtAvailableDetailTechQuantity.Font.Color:= clWindowText;
end;

end.
