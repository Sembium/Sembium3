unit rStageInputOutput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QRCtrls, QuickRpt,
  ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptStageInputOutput = class(TDBDataReport)
    bndTitle: TQRBand;
    QRLabel1: TQRLabel;
    QRShape31: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape33: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRDBText16: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel32: TQRLabel;
    ChildBand1: TQRChildBand;
    origin1QRLabel2: TQRLabel;
    origin1QRShape1: TQRShape;
    origin1QRLabel3: TQRLabel;
    origin1QRShape2: TQRShape;
    origin1QRLabel4: TQRLabel;
    origin1QRShape3: TQRShape;
    origin1QRLabel5: TQRLabel;
    origin1QRShape4: TQRShape;
    origin1QRLabel6: TQRLabel;
    QRShape41: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape42: TQRShape;
    QRLabel27: TQRLabel;
    QRShape43: TQRShape;
    QRLabel28: TQRLabel;
    QRShape44: TQRShape;
    QRLabel29: TQRLabel;
    QRShape45: TQRShape;
    QRLabel30: TQRLabel;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRShape32: TQRShape;
    QRShape34: TQRShape;
    QRShape48: TQRShape;
    QRShape53: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    bndDetail: TQRBand;
    ChildBand2: TQRChildBand;
    origin2QRShape6: TQRShape;
    origin2QRShape7: TQRShape;
    origin2QRShape8: TQRShape;
    origin2QRShape10: TQRShape;
    origin2QRDBText1: TQRDBText;
    origin2QRDBText2: TQRDBText;
    origin2QRDBText3: TQRDBText;
    origin2QRDBText5: TQRDBText;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    ChildBand3: TQRChildBand;
    origin3QRLabel8: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel11: TQRLabel;
    QRShape15: TQRShape;
    QRLabel12: TQRLabel;
    QRShape16: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape17: TQRShape;
    QRLabel15: TQRLabel;
    QRShape18: TQRShape;
    QRLabel16: TQRLabel;
    QRShape19: TQRShape;
    QRLabel17: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRShape46: TQRShape;
    QRLabel31: TQRLabel;
    ChildBand4: TQRChildBand;
    QRShape21: TQRShape;
    QRDBText6: TQRDBText;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    shpInputOperationKind: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape47: TQRShape;
    QRDBText28: TQRDBText;
    QRLabel33: TQRLabel;
    QRShape30: TQRShape;
    QRDBText15: TQRDBText;
    QRLabel38: TQRLabel;
    QRShape57: TQRShape;
    QRDBText31: TQRDBText;
    procedure ChildBandsBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TrptStageInputOutput.ChildBandsBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand:= ((Sender as TQRChildBand).Tag = ReportDataSet.FieldByName('ORIGIN_INDEX').AsInteger);
end;

end.
