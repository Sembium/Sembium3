unit fStageLevelTasksFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponent, JvCaptionButton, ActnList, JvExControls, JvDBLookup,
  Buttons, StdCtrls, ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fPriorityIntervalEditFrame, Mask, DBCtrls, fDateIntervalFrame,
  fTreeNodeFilter, fDeptFilter, fProductFilter, fParamProductFilter,
  JvComponentBase, fFilterFrame, fTreeNodeGridFilter, System.Actions,
  JvExStdCtrls, JvCombobox, JvDBCombobox, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameBald, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald;

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
    gbSaleIdentification: TGroupBox;
    pnlOwnerEmployeeOrCompany: TPanel;
    pnlOwnerEmployee: TPanel;
    lblOwnerEmployee: TLabel;
    frOwnerEmployee: TfrEmployeeFieldEditFrameBald;
    pnlOwnerCompany: TPanel;
    lblPartner: TLabel;
    frOwnerCompany: TfrPartnerFieldEditFrameBald;
    cbSaleState: TJvDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cdsProductionOrderTypesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cbSaleStateChange(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
  private
    procedure UpdateBoundObjectPanel;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetFilterFormVariantCode: Integer; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uProductionOrderTypes, uComboBoxUtils, uCompanyKinds;

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
  frOwnerEmployee.FieldNames:= 'OWNER_EMPLOYEE_CODE';
  frOwnerEmployee.EmployeeTypeName:= lblOwnerEmployee.Caption;
  frOwnerCompany.FieldNames:= 'OWNER_COMPANY_CODE';
  frOwnerCompany.ShowCurrentEmployee:= True;
  frOwnerCompany.FilterCompanyKind:= ckClient;
end;

procedure TfmStageLevelTasksFilter.FormShow(Sender: TObject);
begin
  inherited;
  UpdateBoundObjectPanel;
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

procedure TfmStageLevelTasksFilter.UpdateBoundObjectPanel;
var
  i: Integer;
begin
  with ReplacedDBComboBox(cbSaleState) do
    i:= StrToInt(XValues[XItemIndex]);

  pnlOwnerCompany.Visible:= (i = 1);
  pnlOwnerEmployee.Visible:= (i = 2);
end;

procedure TfmStageLevelTasksFilter.cbSaleStateChange(Sender: TObject);
begin
  inherited;
  UpdateBoundObjectPanel;
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

procedure TfmStageLevelTasksFilter.dsDataDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if Assigned(Field) and (Field.FieldName = 'IS_SALE_STATE') then
    case Field.AsInteger of
      0:
        begin
          dsData.DataSet.FieldByName('OWNER_EMPLOYEE_CODE').Clear;
          dsData.DataSet.FieldByName('OWNER_COMPANY_CODE').Clear;
        end;
      1:
        dsData.DataSet.FieldByName('OWNER_COMPANY_CODE').Clear;
      2:
        dsData.DataSet.FieldByName('OWNER_EMPLOYEE_CODE').Clear;
    end;
end;

end.
