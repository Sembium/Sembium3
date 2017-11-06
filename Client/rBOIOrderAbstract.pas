unit rBOIOrderAbstract;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, QRCtrls, DB, DBClient, AbmesClientDataSet, QRExport,
  QuickRpt, ExtCtrls, uBudgetClientUtils, uClientUtils;

type
  TrptBOIOrderAbstract = class(TDBDataReport)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    QRLabel5: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape17: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape12: TQRShape;
    QRBand3: TQRBand;
    QRShape126: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabe1l26: TQRLabel;
    QRLabel223: TQRLabel;
    QRShape125: TQRShape;
    QRShape127: TQRShape;
    QRDBText118: TQRDBText;
    QRShape131: TQRShape;
    QRDBText122: TQRDBText;
    QRDBText115: TQRDBText;
    QRLabel118: TQRLabel;
    QRShape121: TQRShape;
    QRShape122: TQRShape;
    QRDBText116: TQRDBText;
    QRLabel119: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRShape115: TQRShape;
    QRDBText111: TQRDBText;
    QRShape116: TQRShape;
    QRDBText112: TQRDBText;
    QRShape118: TQRShape;
    QRLabel115: TQRLabel;
    QRShape119: TQRShape;
    QRDBText113: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel111: TQRLabel;
    QRBand2: TQRBand;
    QRShape33: TQRShape;
    QRShape32: TQRShape;
    QRShape34: TQRShape;
    QRShape25: TQRShape;
    QRShape31: TQRShape;
    QRShape27: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape248: TQRShape;
    QRLabel43: TQRLabel;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  
implementation

uses
  uBudgetUtils;

{$R *.dfm}

procedure TrptBOIOrderAbstract.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  BudgetMode: TBudgetMode;
  BOIOrderType: Integer;
  BudgetOrderItemType: TBudgetOrderItemType;
begin
  inherited;
  BudgetMode:= IntToBudgetMode(ReportDataSet.FieldByName('BUDGET_MODE').AsInteger);
  BOIOrderType:= ReportDataSet.FieldByName('BOI_ORDER_TYPE_CODE').AsInteger;
  BudgetOrderItemType:= IntToBudgetOrderItemType(ReportDataSet.FieldByName('BUDGET_ORDER_ITEM_TYPE_CODE').AsInteger);

  RecursivelyFormatCaptions(Self, CreateCommonMsgParams(LoginContext, BudgetMode, BudgetOrderItemType, BOIOrderType));
end;

end.
