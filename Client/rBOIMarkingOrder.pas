unit rBOIMarkingOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rBOIOrderAbstract, DB, DBClient, AbmesClientDataSet, QRExport,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TrptBOIMarkingOrder = class(TrptBOIOrderAbstract)
    shpDescriptionGroup: TQRShape;
    shpDescription: TQRShape;
    dbtDescription: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape15: TQRShape;
    QRDBText16: TQRDBText;
    QRLabel24: TQRLabel;
    QRShape16: TQRShape;
    QRDBText18: TQRDBText;
    QRShape19: TQRShape;
    QRShape18: TQRShape;
    QRDBText19: TQRDBText;
    QRShape22: TQRShape;
    QRShape21: TQRShape;
    QRDBText22: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape20: TQRShape;
    QRDBText20: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    shpDeliveryGroup: TQRShape;
    lblDeliveryGroupCaption: TQRLabel;
    QRShape24: TQRShape;
    lblDeliveryDealType: TQRLabel;
    QRShape26: TQRShape;
    lblDeliveryBranch: TQRLabel;
    QRShape35: TQRShape;
    QRLabel31: TQRLabel;
    QRShape36: TQRShape;
    QRLabel32: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText27: TQRDBText;
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

procedure TrptBOIMarkingOrder.QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  if (IntToBudgetOrderItemType(ReportDataSet.FieldByName('BUDGET_ORDER_ITEM_TYPE_CODE').AsInteger) = boitDeliveriesIntroducing) then
    begin
      lblDeliveryGroupCaption.Enabled:= True;

      // narochno tuk pishe chisla shtoto ako se izwajda shirinata na shpDeliveryGroup se precakwa
      shpDescriptionGroup.Width:= 348;
      shpDescription.Width:= 331;
      dbtDescription.Width:= 327;
    end;  { if }
end;

end.
