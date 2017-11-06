unit fProductionOrdersFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelFilterForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fParamProductFilter, JvToolEdit, JvDBControls, Mask, DBCtrls,
  JvDBLookup, AbmesDBCheckBox, JvDBCombobox, AbmesFields, 
  DBCtrlsEh, fFilterForm, fTreeNodeFilter, fProductFilter,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fEmployeeFieldEditFrame,
  fPriorityIntervalEditFrame, fDateIntervalFrame, fPartnerFieldEditFrame,
  fEmployeeFieldEditFrameBald, fPartnerFieldEditFrameBald, JvExStdCtrls,
  JvComponent, JvCaptionButton, JvExControls, JvExExtCtrls, JvDBRadioPanel,
  fDeptFilter, JvComponentBase, JvExtComponent, uProductionOrderTypes,
  JvCombobox;

type
  TfmProductionOrdersFilter = class(TFilterForm)
    gbSaleIdentification: TGroupBox;
    gbMLState: TGroupBox;
    lblMinMlState: TLabel;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    dsBranches: TDataSource;
    cdsSaleTypes: TAbmesClientDataSet;
    cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField;
    cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField;
    cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField;
    dsSaleTypes: TDataSource;
    gbFinal: TGroupBox;
    frParamProductFilter: TfrParamProductFilter;
    gbStart: TGroupBox;
    cbMinMlState: TDBComboBoxEh;
    cbMaxMlState: TDBComboBoxEh;
    pnlOwnerEmployeeOrCompany: TPanel;
    pnlOwnerEmployee: TPanel;
    lblOwnerEmployee: TLabel;
    pnlOwnerCompany: TPanel;
    lblPartner: TLabel;
    frOwnerEmployee: TfrEmployeeFieldEditFrameBald;
    frOwnerCompany: TfrPartnerFieldEditFrameBald;
    cdsProductionOrderTypes: TAbmesClientDataSet;
    dsProductionOrderTypes: TDataSource;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_NAME: TAbmesWideStringField;
    cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_TEXT: TAbmesWideStringField;
    cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField;
    cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_NO: TAbmesFloatField;
    cdsProductionOrderTypesIS_REVERSIBLE: TAbmesFloatField;
    gbWastingSale: TGroupBox;
    lblWastingSaleBranch: TLabel;
    cbWastingSaleBranch: TJvDBLookupCombo;
    edtWastingSaleNo: TDBEdit;
    lblWastingSaleNo: TLabel;
    gbProductionOrderIdentification: TGroupBox;
    lblProductionOrderType: TLabel;
    cbProductionOrderType: TJvDBLookupCombo;
    lblBranch: TLabel;
    cbBranch: TJvDBLookupCombo;
    lblNo: TLabel;
    edtNo: TDBEdit;
    lblType: TLabel;
    cbType: TJvDBLookupCombo;
    frPriorityInterval: TfrPriorityIntervalEditFrame;
    lblPriorityInterval: TLabel;
    cbSaleState: TJvDBComboBox;
    lblSaleExpDateInterval: TLabel;
    gbEngineering: TGroupBox;
    frOkidu: TfrEmployeeFieldEditFrameBald;
    lblOkidu: TLabel;
    rgIsWasteCompensatorStatus: TJvDBRadioPanel;
    rgHasWasteStatus: TDBRadioGroup;
    cbUncoveredLines: TJvDBComboBox;
    lblUncoveredLines: TLabel;
    frProdStartDateInterval: TfrDateIntervalFrame;
    lblProdStartDateInterval: TLabel;
    frSaleExpDateInterval: TfrDateIntervalFrame;
    gbRealization: TGroupBox;
    frProductionDeptFilter: TfrDeptFilter;
    frOperationDeptFilter: TfrDeptFilter;
    frShipmentStoreFilter: TfrDeptFilter;
    frConsumerDeptFilter: TfrDeptFilter;
    frEnterShipmentStoreDateInterval: TfrDateIntervalFrame;
    lblEnterShipmentStoreDateInterval: TLabel;
    edtBeginEnterShipmentStoreDateDiff: TDBEdit;
    edtEndEnterShipmentStoreDateDiff: TDBEdit;
    lblEnterShipmentStoreDateDiff: TLabel;
    lblEnterShipmentStoreDateDiffDash: TLabel;
    frConsumeDateInterval: TfrDateIntervalFrame;
    lblConsumeDateInterval: TLabel;
    edtEndProductionStartDateDiff: TDBEdit;
    edtBeginProductionStartDateDiff: TDBEdit;
    lblProductionStartDateDiff: TLabel;
    lblProductionStartDateDiffDash: TLabel;
    edtBeginProductionWorkdays: TDBEdit;
    lblProductionWorkdaysDash: TLabel;
    edtEndProductionWorkdays: TDBEdit;
    lblProductionWorkdays: TLabel;
    lblProductionWorkdaysDays: TLabel;
    edtBeginProductionWorkdaysPercent: TDBEdit;
    lblProductionWorkdaysPercentDash: TLabel;
    edtEndProductionWorkdaysPercent: TDBEdit;
    lblProductionWorkdaysPercent: TLabel;
    edtProductionWorkdaysPercentPercent: TLabel;
    edtBeginOperationDiff: TDBEdit;
    lblOperationDiffDash: TLabel;
    edtEndOperationDiff: TDBEdit;
    lblOperationDiff: TLabel;
    lblBeginOperationDiffDays: TLabel;
    edtConsumeDateDiff: TLabel;
    edtConsumeDateDiffDash: TLabel;
    edtMinConsumeDateDiff: TDBEdit;
    edtMaxConsumeDateDiff: TDBEdit;
    gbExceptEventDamages: TGroupBox;
    lblDamagesState: TLabel;
    cbDamagesState: TJvDBLookupCombo;
    cdsDamageStates: TAbmesClientDataSet;
    cdsDamageStatesSTATE_CODE: TAbmesFloatField;
    cdsDamageStatesSTATE_ABBREV: TAbmesWideStringField;
    cdsDamageStatesSTATE_NAME: TAbmesWideStringField;
    dsDamageStates: TDataSource;
    lblModelDevelopmentType: TLabel;
    cbModelDevelopmentType: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure btnStartDateClearClick(Sender: TObject);
    procedure btnEndDateClearClick(Sender: TObject);
    procedure btnClearProductionStartPlanBeginDateClick(Sender: TObject);
    procedure btnClearProductionStartPlanEndDateClick(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
    procedure cbSaleStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsProductionOrderTypesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure actFormUpdate(Sender: TObject);
  private
    FProdOrderBaseType: TProdOrderBaseType;
    procedure UpdateBoundObjectPanel;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetFilterFormVariantCode: Integer; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uModelUtils, uUtils, dMain, uCompanyKinds,
  uClientUtils, uExceptEventClientUtils, uComboBoxUtils;

{$R *.dfm}

resourcestring
  SProdOrdersAll = 'Филтър на Регистър на Ордери за Процес Вътрешен';
  SProdOrdersOfBaseType = 'Филтър на Регистър на Ордери за Процес Вътрешен %s';

{ TfmProductionOrdersFilter }

procedure TfmProductionOrdersFilter.CloseDataSets;
begin
  cdsDamageStates.Close;
  cdsProductionOrderTypes.Close;
  cdsSaleTypes.Close;
  cdsBranches.Close;
  inherited CloseDataSets;
end;

procedure TfmProductionOrdersFilter.FormCreate(Sender: TObject);
begin
  inherited;

  frOwnerEmployee.FieldNames:= 'OWNER_EMPLOYEE_CODE';
  frOwnerEmployee.EmployeeTypeName:= lblOwnerEmployee.Caption;
  frOwnerCompany.FieldNames:= 'OWNER_COMPANY_CODE';
  frOwnerCompany.ShowCurrentEmployee:= True;
  frOwnerCompany.FilterCompanyKind:= ckClient;

  frOkidu.FieldNames:= 'OKIDU_EMPLOYEE_CODE';
  frOkidu.SpecialProffesionEmployee:= speOkidu;
  frOkidu.DocButtonVisible:= False;

  frSaleExpDateInterval.FieldNames:= 'SALE_SHIPMENT_BEGIN_DATE; SALE_SHIPMENT_END_DATE';
  frProdStartDateInterval.FieldNames:= 'PROD_START_PLAN_BEGIN_DATE; PROD_START_PLAN_END_DATE';
  frEnterShipmentStoreDateInterval.FieldNames:= 'ENTER_SH_STORE_BEGIN_DATE; ENTER_SH_STORE_END_DATE';
  frConsumeDateInterval.FieldNames:= 'CONSUME_BEGIN_DATE; CONSUME_END_DATE';

  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';

  frProductionDeptFilter.FieldNames:= 'CHOSEN_PRODUCTION_DEPTS';
  frOperationDeptFilter.FieldNames:= 'CHOSEN_OPERATION_DEPTS';
  frShipmentStoreFilter.FieldNames:= 'CHOSEN_SHIPMENT_STORES';
  frConsumerDeptFilter.FieldNames:= 'CHOSEN_CONSUMER_DEPTS';

  InitializeComboBoxWithMLStates(cbMinMLState, True);
  InitializeComboBoxWithMLStates(cbMaxMLState, True);
end;

procedure TfmProductionOrdersFilter.OpenDataSets;
begin
  inherited OpenDataSets;
  cdsBranches.Open;
  cdsSaleTypes.Open;
  cdsProductionOrderTypes.Open;

  cdsDamageStates.CreateDataSet;
  FillDataSetWithProcessTypeDamagedStates(cdsDamageStates);
end;

procedure TfmProductionOrdersFilter.btnStartDateClearClick(
  Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('START_PERIOD_DATE').Clear;
end;

procedure TfmProductionOrdersFilter.btnEndDateClearClick(Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('END_PERIOD_DATE').Clear;
end;

procedure TfmProductionOrdersFilter.btnClearProductionStartPlanBeginDateClick(
  Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('PROD_START_PLAN_BEGIN_DATE').Clear;
end;

procedure TfmProductionOrdersFilter.btnClearProductionStartPlanEndDateClick(
  Sender: TObject);
begin
  inherited;
  CheckEditMode(dsData.DataSet);
  dsData.DataSet.FieldByName('PROD_START_PLAN_END_DATE').Clear;
end;

function TfmProductionOrdersFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if ((AWinControl = cbWastingSaleBranch) or (AWinControl = edtWastingSaleNo)) and
     not rgIsWasteCompensatorStatus.Buttons[2].Checked then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

function TfmProductionOrdersFilter.GetFilterFormVariantCode: Integer;
begin
  Result:= dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger;
end;

procedure TfmProductionOrdersFilter.dsDataDataChange(Sender: TObject;
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

procedure TfmProductionOrdersFilter.cbSaleStateChange(Sender: TObject);
begin
  inherited;
  UpdateBoundObjectPanel;
end;

procedure TfmProductionOrdersFilter.UpdateBoundObjectPanel;
var
  i: Integer;
begin
  with ReplacedDBComboBox(cbSaleState) do
    i:= StrToInt(XValues[XItemIndex]);

  pnlOwnerCompany.Visible:= (i = 1);
  pnlOwnerEmployee.Visible:= (i = 2);
end;

procedure TfmProductionOrdersFilter.FormShow(Sender: TObject);
begin
  inherited;
  UpdateBoundObjectPanel;
end;

procedure TfmProductionOrdersFilter.cdsProductionOrderTypesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));
  Accept:=
    (dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger = 0) or
    (cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE.AsInteger = dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger);
end;

procedure TfmProductionOrdersFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  gbSaleIdentification.Visible:= (FProdOrderBaseType in SaleBoundProdOrderBaseTypes);
  ReplacedDBComboBox(cbSaleState).Visible:= gbSaleIdentification.Visible;
end;

procedure TfmProductionOrdersFilter.Initialize;
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  FProdOrderBaseType:=
    IntToProdOrderBaseType(dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger);

  if (dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger = 0) then
    Caption:= SProdOrdersAll
  else
    Caption:=
      Format(SProdOrdersOfBaseType, [ProductionOrderBaseTypes[dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger].CoveringAbbrevPlural]);
end;

end.
