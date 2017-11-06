unit rBOIOrdersDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRExport, QRCtrls, QuickRpt,
  ExtCtrls, DBClient, AbmesClientDataSet;

type
  TrptBOIOrdersDetail = class(TDBDataReport)
    QRBand1: TQRBand;
    QRDBText14: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRLabel4: TQRLabel;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel7: TQRLabel;
    QRShape9: TQRShape;
    QRLabel8: TQRLabel;
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
    QRShape15: TQRShape;
    QRLabel15: TQRLabel;
    QRShape16: TQRShape;
    QRLabel17: TQRLabel;
    QRShape17: TQRShape;
    QRLabel18: TQRLabel;
    QRShape18: TQRShape;
    QRLabel19: TQRLabel;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
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
    QRLabel20: TQRLabel;
    bndColumnHeader: TQRBand;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRLabel1: TQRLabel;
    QRShape34: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape35: TQRShape;
    QRLabel23: TQRLabel;
    bndDetail: TQRBand;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    bndSummary: TQRBand;
    shpSummary: TQRShape;
    dbtSummary: TQRDBText;
    QRShape120: TQRShape;
    QRLabel120: TQRLabel;
    QRShape121: TQRShape;
    QRDBText121: TQRDBText;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRLabel40: TQRLabel;
    QRDBText34: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uBudgetClientUtils, uClientUtils;

{$R *.dfm}

procedure TrptBOIOrdersDetail.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  RecursivelyFormatCaptions(
    Self,
    CreateCommonMsgParams(
      LoginContext,
      IntToBudgetMode(ParamsDataSet.FieldByName('_BUDGET_MODE').AsInteger)
    )
  );
end;

end.
 
