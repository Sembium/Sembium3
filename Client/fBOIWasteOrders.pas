unit fBOIWasteOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBOIOrders, ExtCtrls, JvComponent, JvCaptionButton,
  ParamDataSet, ActnList, DB, AbmesFields, DBClient,
  AbmesClientDataSet, StdCtrls, Mask, DBCtrls, Buttons, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, ColorNavigator, JvComponentBase;

type
  TfmBOIWasteOrders = class(TfmBOIOrders)
    procedure cdsGridDataBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }                                          
  protected
    procedure DoBeforeShow; override;
  public
    { Public declarations }
  end;

implementation

uses uBudgetClientUtils, fBOIWasteOrder, fBOIWasteOrdersFilter,
  rBOIWasteOrdersDetail, uBOIOrderTypes;

{$R *.dfm}

procedure TfmBOIWasteOrders.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('BOI_ORDER_TYPE_CODE').AsInteger:= boiotWaste;
end;

procedure TfmBOIWasteOrders.DoBeforeShow;
begin
  FilterFormClass:= TfmBOIWasteOrdersFilter;
  DetailEditFormClass:= TfmBOIWasteOrder;
  inherited;
end;

procedure TfmBOIWasteOrders.FormCreate(Sender: TObject);
begin
  inherited;
  DetailsReportClass:= TrptBOIWasteOrdersDetail;
end;

end.
