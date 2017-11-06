unit rDeficitCoverDecisions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  rMasterDetailReport, Db, ExtCtrls, QuickRpt, Qrctrls, AbmesFields,
  QRExport, rDBDataReport, DBClient, AbmesClientDataSet;

type
  TrptDeficitCoverDecisions = class(TDBDataReport)
    qrbTitle: TQRBand;
    Detail: TQRBand;
    dbtTitle: TQRDBText;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
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
    QRLabel7: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel8: TQRLabel;
    QRShape10: TQRShape;
    QRLabel9: TQRLabel;
    QRShape11: TQRShape;
    QRLabel10: TQRLabel;
    QRShape12: TQRShape;
    QRLabel11: TQRLabel;
    QRShape13: TQRShape;
    QRLabel12: TQRLabel;
    QRShape14: TQRShape;
    QRLabel13: TQRLabel;
    QRShape15: TQRShape;
    QRLabel14: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
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
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uProducts, uProductClientUtils, uClientUtils, uProductionOrderTypes;

{$R *.DFM}

procedure TrptDeficitCoverDecisions.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  MsgParams: TStrings;
begin
  inherited;

  MsgParams:= uProductClientUtils.CreateCommonMsgParams(LoginContext,
    IntToProductClass(ParamsDataSet.FieldByName('_PRODUCT_CLASS_CODE').AsInteger));
  try
    if (IntToProdOrderBaseType(ParamsDataSet.FieldByName('_PROD_ORDER_BASE_TYPE_CODE').AsInteger) = pobtOccCover) then
      OccupationProductFixCommonMsgParams(MsgParams);

    RecursivelyFormatCaptions(Self, MsgParams);
  finally
    FreeAndNil(MsgParams);
  end;
end;

end.
