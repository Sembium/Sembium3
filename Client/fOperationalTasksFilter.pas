unit fOperationalTasksFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, DBClient, AbmesClientDataSet, JvButtons,
  ActnList, StdCtrls, Buttons, ExtCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, JvToolEdit, JvDBControls, Mask,
  DBCtrls, AbmesFields, JvDBLookup, AbmesDBCheckBox, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fPriorityIntervalEditFrame, fTreeNodeFilter,
  fDeptFilter, fDateIntervalFrame, JvComponent, JvCaptionButton,
  JvExControls, JvComponentBase, JvExStdCtrls, JvDBCombobox, JvCombobox,
  fFilterFrame, fTreeNodeGridFilter, System.Actions, fPartnerFieldEditFrame,
  fPartnerFieldEditFrameBald, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald;

type
  TfmOperationalTasksFilter = class(TFilterForm)
    grpPeriod: TGroupBox;
    actClearBeginDate: TAction;
    actClearEndDate: TAction;
    rgOperationStatus: TDBRadioGroup;
    rgHasSpecialControl: TDBRadioGroup;
    grpOperationType: TGroupBox;
    chkIsBeginOrgOperation: TAbmesDBCheckBox;
    chkIsNormalOperation: TAbmesDBCheckBox;
    chkIsEndOrgOperation: TAbmesDBCheckBox;
    grpSetup: TGroupBox;
    chkNoSetup: TAbmesDBCheckBox;
    chkSetupNotDone: TAbmesDBCheckBox;
    chkSetupDone: TAbmesDBCheckBox;
    rgVariantAvailableQuantityStatus: TDBRadioGroup;
    frDeptFilter: TfrDeptFilter;
    frDateInterval: TfrDateIntervalFrame;
    gbMaterialListLineNo: TGroupBox;
    lblMllNoAsText: TLabel;
    lblForkNo: TLabel;
    edtMllNoAsText: TDBEdit;
    edtForkNo: TDBEdit;
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
    gbModelActiveState: TGroupBox;
    cbModelActiveState: TJvDBComboBox;
    grpStageType: TGroupBox;
    chkIsBeginStoreStage: TAbmesDBCheckBox;
    chkIsNormalStage: TAbmesDBCheckBox;
    chkIsEndStoreStage: TAbmesDBCheckBox;
    gbVariantActiveState: TGroupBox;
    cbVariantActiveState: TJvDBComboBox;
    rgOperationAvailableQuantityStatus: TDBRadioGroup;
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
    procedure actFormUpdate(Sender: TObject);
    procedure cdsProductionOrderTypesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cbSaleStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsDataDataChange(Sender: TObject; Field: TField);
  private
    procedure UpdateBoundObjectPanel;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetFilterFormVariantCode: Integer; override;
    function GetFormCaption: string; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uClientConsts, dMain, uUtils, uProductionOrderTypes, uComboBoxUtils,
  uCompanyKinds;

{$R *.dfm}

resourcestring
  SOperationAvailableQuantity = 'Налично количество по Операция';

{ TfmOperationalTasksFilter }

procedure TfmOperationalTasksFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDeptFilter.FieldNames:= 'CHOSEN_DEPTS';
  frOwnerEmployee.FieldNames:= 'OWNER_EMPLOYEE_CODE';
  frOwnerEmployee.EmployeeTypeName:= lblOwnerEmployee.Caption;
  frOwnerCompany.FieldNames:= 'OWNER_COMPANY_CODE';
  frOwnerCompany.ShowCurrentEmployee:= True;
  frOwnerCompany.FilterCompanyKind:= ckClient;

  if not LoginContext.FeatureFlagOperationsLoading then
    rgVariantAvailableQuantityStatus.Caption:= SOperationAvailableQuantity;
end;

procedure TfmOperationalTasksFilter.FormShow(Sender: TObject);
begin
  inherited;
  UpdateBoundObjectPanel;
end;

procedure TfmOperationalTasksFilter.OpenDataSets;
begin
  inherited;
  cdsProductionOrderTypes.Open;
end;

procedure TfmOperationalTasksFilter.UpdateBoundObjectPanel;
var
  i: Integer;
begin
  with ReplacedDBComboBox(cbSaleState) do
    i:= StrToInt(XValues[XItemIndex]);

  pnlOwnerCompany.Visible:= (i = 1);
  pnlOwnerEmployee.Visible:= (i = 2);
end;

procedure TfmOperationalTasksFilter.cbSaleStateChange(Sender: TObject);
begin
  inherited;
  UpdateBoundObjectPanel;
end;

procedure TfmOperationalTasksFilter.cdsProductionOrderTypesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));
  Accept:=
    (dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger = 0) or
    (cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE.AsInteger = dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger);
end;

procedure TfmOperationalTasksFilter.CloseDataSets;
begin
  cdsProductionOrderTypes.Close;
  inherited;
end;

procedure TfmOperationalTasksFilter.dsDataDataChange(Sender: TObject;
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

procedure TfmOperationalTasksFilter.actFormUpdate(Sender: TObject);
var
  InSpecialControlTasksMode: Boolean;
begin
  inherited;
  InSpecialControlTasksMode:=
    Assigned(dsData.DataSet) and
    dsData.DataSet.FieldByName('_IN_SPECIAL_CONTROL_TASKS_MODE').AsBoolean;

  rgHasSpecialControl.Enabled:= not InSpecialControlTasksMode;

  gbVariantActiveState.Visible:= LoginContext.FeatureFlagOperationsLoading;
  rgOperationAvailableQuantityStatus.Visible:= LoginContext.FeatureFlagOperationsLoading;
end;

function TfmOperationalTasksFilter.GetFilterFormVariantCode: Integer;
begin
  Result:=
    (100 * Ord(dsData.DataSet.FieldByName('_IN_SPECIAL_CONTROL_TASKS_MODE').AsBoolean)) +
    dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger;
end;

function TfmOperationalTasksFilter.GetFormCaption: string;
var
  InSpecialControlTasksMode: Boolean;
  ProductionOrderBaseTypeCode: Integer;
begin
  ProductionOrderBaseTypeCode:= dsData.DataSet.FieldByName('PRODUCTION_ORDER_BASE_TYPE_CODE').AsInteger;

  InSpecialControlTasksMode:=
    Assigned(dsData.DataSet) and
    dsData.DataSet.FieldByName('_IN_SPECIAL_CONTROL_TASKS_MODE').AsBoolean;

  Result:=
    SFilter + ' ' + SOf + ' ' + OperationalTasksCaptions[InSpecialControlTasksMode] + ' %s';
  Result:= Format(Result, [ProductionOrderBaseTypes[ProductionOrderBaseTypeCode].CoveringAbbrevPlural]);
end;

procedure TfmOperationalTasksFilter.Initialize;
begin
  inherited;
//  Caption:= GetFormCaption;
end;

end.
