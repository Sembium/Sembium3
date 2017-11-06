unit fStageLevelTasksFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponent, JvCaptionButton, ActnList, JvExControls, JvDBLookup,
  Buttons, StdCtrls, ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fPriorityIntervalEditFrame, Mask, DBCtrls, fDateIntervalFrame,
  fTreeNodeFilter, fDeptFilter, fProductFilter, fParamProductFilter,
  JvComponentBase;

type
  TfmStageLevelTasksFilter = class(TFilterForm)
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
    lblProductionOrderBranch: TLabel;
    lblProductionOrderNo: TLabel;
    lblPriority: TLabel;
    lblProductionOrderType: TLabel;
    lblSaleTypeAbbrev: TLabel;
    cbProductionOrderBranch: TJvDBLookupCombo;
    edtProductionOrderNo: TDBEdit;
    frPriorityInterval: TfrPriorityIntervalEditFrame;
    cbProductionOrderType: TJvDBLookupCombo;
    cbSaleTypeAbbrev: TJvDBLookupCombo;
    gbMaterialListLineNo: TGroupBox;
    lblMllNoAsText: TLabel;
    lblForkNo: TLabel;
    edtMllNoAsText: TDBEdit;
    edtForkNo: TDBEdit;
    frDeptFilter: TfrDeptFilter;
    grpPeriod: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    rgAvailableQuantityStatus: TDBRadioGroup;
    rgOperationStatus: TDBRadioGroup;
    frResultProduct: TfrParamProductFilter;
    frDetail: TfrParamProductFilter;
    procedure FormCreate(Sender: TObject);
    procedure cdsProductionOrderTypesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetFilterFormVariantCode: Integer; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uProductionOrderTypes;

{$R *.dfm}

resourcestring
  SStageLevelTasksFilter = 'Филтър на Етапни Задания по ОПВ %s';

{ TfmStageLevelTasksFilter }

procedure TfmStageLevelTasksFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frResultProduct.FieldNames:= 'RESULT_PRODUCT_CHOSEN_PRODUCTS';
  frDetail.FieldNames:= 'DETAIL_CHOSEN_PRODUCTS';
  frDeptFilter.FieldNames:= 'CHOSEN_DEPTS';
end;

function TfmStageLevelTasksFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger;
end;

procedure TfmStageLevelTasksFilter.Initialize;
var
  ProductionOrderBaseTypeCode: Integer;
begin
  inherited;
  ProductionOrderBaseTypeCode:= dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger;
  Caption:= Format(SStageLevelTasksFilter, [ProductionOrderBaseTypes[ProductionOrderBaseTypeCode].CoveringAbbrevPlural]);
end;

procedure TfmStageLevelTasksFilter.OpenDataSets;
begin
  inherited;
  cdsProductionOrderTypes.Open;
end;

procedure TfmStageLevelTasksFilter.cdsProductionOrderTypesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));
  Accept:=
    (dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger = 0) or
    (cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE.AsInteger = dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger);
end;

procedure TfmStageLevelTasksFilter.CloseDataSets;
begin
  cdsProductionOrderTypes.Close;
  inherited;
end;

end.
