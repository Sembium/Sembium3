unit fUnfinishedMfgFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, DBClient, AbmesClientDataSet, JvButtons,
  ImgList, ActnList, fBaseFrame, fDBFrame, fFieldEditFrame,
  StdCtrls, Buttons, ExtCtrls, DBCtrls,
  Mask, JvToolEdit, JvDBControls, fTreeNodeFilter, fDeptFilter,
  AbmesFields, JvDBLookup, fBevelFilterForm, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fDateFieldEditFrame, fProductFilter,
  fParamProductFilter, JvComponent, JvCaptionButton, JvExControls,
  fFilterForm, fPriorityIntervalEditFrame, JvComponentBase;

type
  TfmUnfinishedMfgFilter = class(TFilterForm)
    gbToDate: TGroupBox;
    frDeptFilter: TfrDeptFilter;
    frToDate: TfrDateFieldEditFrame;
    frChosenProducts: TfrParamProductFilter;
    cdsProductionOrderTypes: TAbmesClientDataSet;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_NAME: TAbmesWideStringField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_TEXT: TAbmesWideStringField;
    cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_NO: TAbmesFloatField;
    cdsProductionOrderTypesIS_REVERSIBLE: TAbmesFloatField;
    dsProductionOrderTypes: TDataSource;
    gbProductionOrder: TGroupBox;
    lblSaleBranch: TLabel;
    lblSaleNo: TLabel;
    lblSaleTypeAbbrev: TLabel;
    lblPriorityInterval: TLabel;
    lblProductionOrderType: TLabel;
    cbSaleBranch: TJvDBLookupCombo;
    edtSaleNo: TDBEdit;
    cbSaleTypeAbbrev: TJvDBLookupCombo;
    frPriorityInterval: TfrPriorityIntervalEditFrame;
    cbProductionOrderType: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

{ TfmUnfinishedMfgFilter }

procedure TfmUnfinishedMfgFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDeptFilter.FieldNames:= 'CHOSEN_DEPTS';
  frChosenProducts.FieldNames:= 'CHOSEN_PRODUCTS';
  frToDate.FieldNames:= 'UNFINISHED_TO_DATE';
end;

procedure TfmUnfinishedMfgFilter.OpenDataSets;
begin
  inherited;
  cdsProductionOrderTypes.Open;
end;

procedure TfmUnfinishedMfgFilter.CloseDataSets;
begin
  cdsProductionOrderTypes.Close;
  inherited;
end;

end.
