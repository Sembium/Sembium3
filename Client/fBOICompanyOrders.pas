unit fBOICompanyOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBOIOrders, ExtCtrls, JvComponent, JvCaptionButton,
  ParamDataSet, ActnList, DB, AbmesFields, DBClient,
  AbmesClientDataSet, StdCtrls, Mask, DBCtrls, Buttons, GridsEh, DBGridEh,
  AbmesDBGrid, ComCtrls, ToolWin, ColorNavigator, JvComponentBase, Menus;

type
  TfmBOICompanyOrders = class(TfmBOIOrders)
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

uses
  fBOICompanyOrdersFilter, fBOICompanyOrder, fMasterDetailForm, uBudgetClientUtils,
  rBOICompanyOrdersDetail, uBOIOrderTypes;

{$R *.dfm}

procedure TfmBOICompanyOrders.cdsGridDataBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGridData.Params.ParamByName('BOI_ORDER_TYPE_CODE').AsInteger:= boiotCompany;
end;

procedure TfmBOICompanyOrders.DoBeforeShow;
begin
  FilterFormClass:= TfmBOICompanyOrdersFilter;
  DetailEditFormClass:= TfmBOICompanyOrder;
  inherited;
end;

procedure TfmBOICompanyOrders.FormCreate(Sender: TObject);
begin
  inherited;
  DetailsReportClass:= TrptBOICompanyOrdersDetail;
end;

end.
