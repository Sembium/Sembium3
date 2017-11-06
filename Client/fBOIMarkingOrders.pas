unit fBOIMarkingOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBOIOrders, ExtCtrls, Menus, JvComponentBase, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet, StdCtrls,
  Mask, DBCtrls, GridsEh, DBGridEh, AbmesDBGrid, Buttons, ComCtrls, ToolWin,
  ColorNavigator, DBGridEhGrouping, fGridForm, fMasterDetailForm,
  fBOIMarkingOrdersFilter, fBOIMarkingOrder;

type
  [FilterFormClass(TfmBOIMarkingOrdersFilter)]
  [DetailEditFormClass(TfmBOIMarkingOrder)]
  TfmBOIMarkingOrders = class(TfmBOIOrders)
    sepDeliveryIdentifier: TToolButton;
    tlbShowDeliveryIdentifier: TToolBar;
    btnShowDeliveryIdentifier: TSpeedButton;
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetInsertDetailRecordEnabled: Boolean; override;
    class function GetFilterBudgetOrderItemTypeInt: Integer; override;
  public
    { Public declarations }
  end;

implementation

uses
  uBOIOrderTypes, uBudgetUtils, uClientUtils, uToolbarUtils, rBOIMarkingOrdersDetail,
  uUtils;

{$R *.dfm}

procedure TfmBOIMarkingOrders.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('BOI_ORDER_TYPE_CODE').AsInteger:= boiotMarking;
end;

procedure TfmBOIMarkingOrders.FormCreate(Sender: TObject);
begin
  inherited;
  DetailsReportClass:= TrptBOIMarkingOrdersDetail;
end;

class function TfmBOIMarkingOrders.GetFilterBudgetOrderItemTypeInt: Integer;
begin
  Result:= 2;  // Priwlichane w IP
end;

function TfmBOIMarkingOrders.GetInsertDetailRecordEnabled: Boolean;
begin
  Result:=
    inherited GetInsertDetailRecordEnabled and
    ( (IntToBudgetOrderItemType(cdsGridDataBUDGET_ORDER_ITEM_TYPE_CODE.AsInteger) <> boitDeliveriesIntroducing) or
      (cdsGridDataBOI_IS_CONFIRMED.AsBoolean)
    );
end;

procedure TfmBOIMarkingOrders.actFormUpdate(Sender: TObject);
begin
  inherited;
  UpdateColumnsVisibility(grdDetail, NormalizedToolbarToolbarsAndFlowPanels(tlbShowDeliveryIdentifier));
  AutoSizeColumn(grdDetail, 3);
end;

end.
