unit fResultProductNeedsBySale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, Menus, JvButtons, ParamDataSet, ActnList,
  DB, DBClient, AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls,
  ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  AbmesFields, fBaseFrame, fDBFrame, fFieldEditFrame, fNeedsCommonHeader,
  JvComponent, JvCaptionButton, JvComponentBase;

type
  TfmResultProductNeedsBySale = class(TGridForm)
    cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField;
    cdsGridDataSALE_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsGridDataSALE_IDENTIFIER: TAbmesWideStringField;
    cdsGridDataCLIENT_COMPANY_CODE: TAbmesFloatField;
    cdsGridDataCLIENT_SHORT_NAME: TAbmesWideStringField;
    cdsGridDataSHIPMENT_DATE: TAbmesSQLTimeStampField;
    cdsGridDataQUANTITY: TAbmesFloatField;
    cdsGridDataPRODUCT_CODE: TAbmesFloatField;
    cdsGridDataPRODUCT_NO: TAbmesFloatField;
    cdsGridDataPRODUCT_NAME: TAbmesWideStringField;
    cdsGridDataMEASURE_ABBREV: TAbmesWideStringField;
    btnEditRecord: TBitBtn;
    frNeedsCommonHeader: TfrNeedsCommonHeader;
    cdsGridDataREQUEST_BRANCH_CODE: TAbmesFloatField;
    cdsGridDataREQUEST_NO: TAbmesFloatField;
    tbRightTop: TToolBar;
    btnToggleProductDisplay: TSpeedButton;
    cdsGridDataCLIENT_PRODUCT_NAME: TAbmesWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    class function CanUseDocs: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  dMain, uSalesClientUtils, rResultProductNeedsBySale;

{$R *.dfm}

{ TfmResultProductNeedsBySale }

class function TfmResultProductNeedsBySale.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmResultProductNeedsBySale.FormCreate(Sender: TObject);
begin
  inherited;
  RegisterDateFields(cdsGridData);
  ReportClass:= TrptResultProductNeedsBySale;
end;

procedure TfmResultProductNeedsBySale.FormShow(Sender: TObject);
begin
  inherited;
  frNeedsCommonHeader.dsData.DataSet:= dsData.DataSet;
end;

procedure TfmResultProductNeedsBySale.actFormUpdate(Sender: TObject);
begin
  inherited;

  EditFormClass:= GetSaleEditFormClass(cdsGridDataSALE_ORDER_TYPE_CODE.AsInteger);

  grdData.Columns[3].Visible:= not btnToggleProductDisplay.Down;
  grdData.Columns[4].Visible:= not btnToggleProductDisplay.Down;
  grdData.Columns[5].Visible:= btnToggleProductDisplay.Down;
end;

end.
