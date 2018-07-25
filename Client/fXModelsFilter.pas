unit fXModelsFilter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, ImgList, ActnList, StdCtrls, Mask,
  JvToolEdit, JvDBControls, Buttons, ExtCtrls, DBCtrls, JvDBLookup, JvDBCombobox,
  fBaseFrame, fDBFrame, fFieldEditFrame, 
  AbmesClientDataSet, AbmesDBCheckBox, Menus, JvButtons,
  fBevelFilterForm, AbmesFields, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fProductFieldEditFrame, fFilterForm,
  fEmployeeFieldEditFrame, fTreeNodeFilter, fProductFilter,
  fParamProductFilter, DBCtrlsEh, fPriorityIntervalEditFrame,
  fDateIntervalFrame, fPartnerFieldEditFrame, fEmployeeFieldEditFrameBald,
  fPartnerFieldEditFrameBald, JvComponent, JvCaptionButton, JvExControls,
  JvExStdCtrls, JvExExtCtrls, JvDBRadioPanel, JvComponentBase, JvCombobox,
  fFilterFrame, fTreeNodeGridFilter, System.Actions;

type
  TfmXModelsFilter = class(TFilterForm)
    gbSpecState: TGroupBox;
    gbMinProductNeed: TGroupBox;
    gbEnterResultStore: TGroupBox;
    frMainDept: TfrDeptFieldEditFrame;
    frIncludeDept: TfrDeptFieldEditFrame;
    frIncludeDetail: TfrProductFieldEditFrame;
    frIncludeProduct: TfrProductFieldEditFrame;
    frParamProductFilter: TfrParamProductFilter;
    gbRequestedChanges: TGroupBox;
    Bevel1: TBevel;
    chkHasRequestedChanges: TDBCheckBox;
    chkHasNotRequestedChanges: TDBCheckBox;
    chkHasRequestedMyChanges: TDBCheckBox;
    chkHasNotRequestedMyChanges: TDBCheckBox;
    gbRejectedChanges: TGroupBox;
    Bevel3: TBevel;
    chkHasRejectedChanges: TDBCheckBox;
    chkHasNotRejectedChanges: TDBCheckBox;
    chkHasRejectedMyChanges: TDBCheckBox;
    chkHasNotRejectedMyChanges: TDBCheckBox;
    cbMinSpecState: TDBComboBoxEh;
    cbMaxSpecState: TDBComboBoxEh;
    frProductNeedDateInterval: TfrDateIntervalFrame;
    frEnterResultStoreDateInterval: TfrDateIntervalFrame;
    gbProductionOrderIdentification: TGroupBox;
    lblProductionOrderType: TLabel;
    lblBranch: TLabel;
    lblNo: TLabel;
    lblType: TLabel;
    lblPriorityInterval: TLabel;
    cbProductionOrderType: TJvDBLookupCombo;
    cbBranch: TJvDBLookupCombo;
    edtNo: TDBEdit;
    cbType: TJvDBLookupCombo;
    frPriorityInterval: TfrPriorityIntervalEditFrame;
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
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    dsSaleTypes: TDataSource;
    gbSaleIdentification: TGroupBox;
    pnlOwnerEmployeeOrCompany: TPanel;
    pnlOwnerEmployee: TPanel;
    lblOwnerEmployee: TLabel;
    frOwnerEmployee: TfrEmployeeFieldEditFrameBald;
    pnlOwnerCompany: TPanel;
    lblPartner: TLabel;
    lblSaleExpDateInterval: TLabel;
    frOwnerCompany: TfrPartnerFieldEditFrameBald;
    frSaleExpDateInterval: TfrDateIntervalFrame;
    cbSaleState: TJvDBComboBox;
    rgHasWasteStatus: TDBRadioGroup;
    gbEngineering: TGroupBox;
    lblOkidu: TLabel;
    frOkidu: TfrEmployeeFieldEditFrameBald;
    lblDash1: TLabel;
    gbMlState: TGroupBox;
    cbMinMlState: TDBComboBoxEh;
    cbMaxMlState: TDBComboBoxEh;
    lblDash2: TLabel;
    rgIsWasteCompensatorStatus: TDBRadioGroup;
    gbActivationDays: TGroupBox;
    edtMinLimitingDateDiff: TDBEdit;
    edtMaxLimitingDateDiff: TDBEdit;
    lblDash3: TLabel;
    lblModelDevelopmentType: TLabel;
    cbModelDevelopmentType: TJvDBLookupCombo;
    frToolDetail: TfrProductFieldEditFrame;
    procedure FormCreate(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure cbSaleStateChange(Sender: TObject);
    procedure cdsProductionOrderTypesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actFormUpdate(Sender: TObject);
  private
    FProductionOrderBaseTypeCode: Integer;
  protected
    class function CanUseDocs: Boolean; override;
    function GetFilterFormVariantCode: Integer; override;
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure UpdateBoundObjectPanel;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uProcesses, uSaleOrderTypes, uUtils, uModelUtils, uCompanyKinds,
  uProductionOrderTypes, uComboBoxUtils;

{$R *.DFM}

resourcestring
  SXModelsFilter = 'Филтър на Регистър на Реализационни Инженерни Разработки по ОПВ %s';

{ TfmXModelsFilter }

procedure TfmXModelsFilter.FormCreate(Sender: TObject);
begin
  inherited;

  frOkidu.FieldNames:= 'ENGINEER_EMPLOYEE_CODE';
  frOkidu.SpecialProffesionEmployee:= speOkidu;
  frOkidu.DocButtonVisible:= False;
  frOwnerEmployee.FieldNames:= 'OWNER_EMPLOYEE_CODE';
  frOwnerEmployee.EmployeeTypeName:= lblOwnerEmployee.Caption;
  frOwnerCompany.FieldNames:= 'OWNER_COMPANY_CODE';
  frOwnerCompany.ShowCurrentEmployee:= True;
  frOwnerCompany.FilterCompanyKind:= ckClient;
  frSaleExpDateInterval.FieldNames:= 'SALE_SHIPMENT_BEGIN_DATE; SALE_SHIPMENT_END_DATE';
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frIncludeDetail.FieldNames:= 'INCLUDE_DETAIL_CODE';
  frIncludeProduct.FieldNames:= 'INCLUDE_PRODUCT_CODE';
  frMainDept.FieldNames:= 'MAIN_DEPT_CODE';
  frIncludeDept.FieldNames:= 'INCLUDE_DEPT_CODE';
  frProductNeedDateInterval.FieldNames:= 'MIN_PRODUCT_NEED_BEGIN_BEGIN_DATE;MIN_PRODUCT_NEED_BEGIN_END_DATE';
  frEnterResultStoreDateInterval.FieldNames:= 'ENTER_RESULT_STORE_END_BEGIN_DATE;ENTER_RESULT_STORE_END_END_DATE';
  frToolDetail.FieldNames:= 'TOOL_DETAIL_CODE';

  InitializeComboBoxWithMLStates(cbMinMLState, True);
  InitializeComboBoxWithMLStates(cbMaxMLState, True);

  InitializeComboBoxWithSpecStates(cbMinSpecState);
  InitializeComboBoxWithSpecStates(cbMaxSpecState);
end;

function TfmXModelsFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger;
end;

procedure TfmXModelsFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  gbSaleIdentification.Visible:= (IntToProdOrderBaseType(FProductionOrderBaseTypeCode) in SaleBoundProdOrderBaseTypes);
  ReplacedDBComboBox(cbSaleState).Visible:= gbSaleIdentification.Visible;
end;

class function TfmXModelsFilter.CanUseDocs: Boolean;
begin
  Result:= True;
end;

procedure TfmXModelsFilter.OpenDataSets;
begin
  inherited;
  cdsSaleTypes.Open;
  cdsProductionOrderTypes.Open;
end;

procedure TfmXModelsFilter.CloseDataSets;
begin
  cdsProductionOrderTypes.Close;
  cdsSaleTypes.Close;
  inherited;
end;

procedure TfmXModelsFilter.dsDataDataChange(Sender: TObject;
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

procedure TfmXModelsFilter.UpdateBoundObjectPanel;
var
  i: Integer;
begin
  with ReplacedDBComboBox(cbSaleState) do
    i:= StrToInt(XValues[XItemIndex]);

  pnlOwnerCompany.Visible:= (i = 1);
  pnlOwnerEmployee.Visible:= (i = 2);
end;

procedure TfmXModelsFilter.FormShow(Sender: TObject);
begin
  inherited;
  UpdateBoundObjectPanel;
end;

procedure TfmXModelsFilter.cbSaleStateChange(Sender: TObject);
begin
  inherited;
  UpdateBoundObjectPanel;
end;

procedure TfmXModelsFilter.Initialize;
begin
  inherited;
  FProductionOrderBaseTypeCode:= dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger;
  Caption:= Format(SXModelsFilter, [ProductionOrderBaseTypes[FProductionOrderBaseTypeCode].CoveringAbbrevPlural]);
end;

procedure TfmXModelsFilter.cdsProductionOrderTypesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));
  Accept:=
    (dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger = 0) or
    (cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE.AsInteger = dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger);
end;

end.
