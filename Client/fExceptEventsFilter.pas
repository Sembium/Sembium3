unit fExceptEventsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvComponent,
  JvDBLookup, Buttons, StdCtrls, ExtCtrls, fTreeNodeFilter, fProductFilter,
  fParamProductFilter, DBCtrlsEh, Mask, DBCtrls, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateIntervalFrame, JvExStdCtrls, JvDBCombobox,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fTreeOnlyNodeFieldEditFrame,
  fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald, fDeptFieldEditFrameBald,
  AbmesDBCheckBox, fProductFieldEditFrame, fProductFieldEditFrameBald,
  fProcessObjectFrame, fSaleShipmentProcessObject, fMLLProcessObject, fDeliveryProcessObject,
  fPriorityIntervalEditFrame, fPartnerFieldEditFrame, fPartnerFieldEditFrameBald,
  JvExExtCtrls, JvExtComponent, JvDBRadioPanel, fProcessConcreteOperationFieldEditFrame,
  fProcessConcreteOperationFieldEditFrameBald, JvCombobox, fFilterFrame, fTreeNodeGridFilter, fExceptEventTypeFieldEditFrame,
  fExceptEventTypeFieldEditFrameBald;

type
  TfmExceptEventsFilter = class(TFilterForm)
    gbExceptEventIdentification: TGroupBox;
    frCreateDateInterval: TfrDateIntervalFrame;
    lblCrateDateInterval: TLabel;
    edtNo: TDBEdit;
    lblNo: TLabel;
    cbMaxExceptEventState: TDBComboBoxEh;
    lblBetweenExceptEventState: TLabel;
    cbMinExceptEventState: TDBComboBoxEh;
    lblExceptEventState: TLabel;
    frExceptEventProduct: TfrParamProductFilter;
    lblExceptEventType: TLabel;
    lblLevel: TLabel;
    gbDetection: TGroupBox;
    frDetectDept: TfrDeptFieldEditFrameBald;
    lblDetectDept: TLabel;
    gbExceptEventControl: TGroupBox;
    frCtrlDept: TfrDeptFieldEditFrameBald;
    lblCtrlDept: TLabel;
    lblCtrlMainEmployee: TLabel;
    frCtrlMainEmployee: TfrEmployeeFieldEditFrameBald;
    gbExceptEventDamages: TGroupBox;
    gbExceptEventTasks: TGroupBox;
    cbDamagesNormalizedState: TJvDBComboBox;
    lblDamagesNormalizedState: TLabel;
    pnlDamagesNormalizationConfirmation: TPanel;
    cbDamagesNormalizationConfirmation: TJvDBComboBox;
    lblDamagesNormalizationConfirmation: TLabel;
    frDamageResolvePlanInterval: TfrDateIntervalFrame;
    lblDamageResolvePlanInterval: TLabel;
    lblDamageResolveWorkdaysLeft: TLabel;
    edtMinDamageResolveWorkdaysLeft: TDBEdit;
    edtMaxDamageResolveWorkdaysLeft: TDBEdit;
    lblBetweenMinMaxDamageResolveWorkdaysLeft: TLabel;
    frDamageResolveDateInterval: TfrDateIntervalFrame;
    lblDamageResolveDate: TLabel;
    gbExceptEventDamageExistance: TGroupBox;
    pnlFilterByDamageExistance: TPanel;
    chbFilterByDamageExistance: TAbmesDBCheckBox;
    cbTasksResolvedState: TJvDBComboBox;
    lblTasksResolvedState: TLabel;
    pnlTasksResolveConfirmation: TPanel;
    cbTasksResolveConfirmation: TJvDBComboBox;
    lblTasksResolveConfirmation: TLabel;
    frResolvePlanInterval: TfrDateIntervalFrame;
    lblResolvePlanInterval: TLabel;
    edtMinResolveWorkdaysLeft: TDBEdit;
    edtMaxResolveWorkdaysLeft: TDBEdit;
    lblResolveWorkdaysLeft: TLabel;
    lblBetweenMinMaxResolveWorkdaysLeft: TLabel;
    frResolveDateInterval: TfrDateIntervalFrame;
    lblResolveDate: TLabel;
    pnlFilterByTaskExistance: TPanel;
    chbFilterByTaskExistance: TAbmesDBCheckBox;
    gbExceptEventTaskExistance: TGroupBox;
    cbMinExceptEventTaskState: TDBComboBoxEh;
    lblBetweenExceptEventTaskState: TLabel;
    cbMaxExceptEventTaskState: TDBComboBoxEh;
    lblExceptEventTaskState: TLabel;
    frExceptEventTaskPlanDateInterval: TfrDateIntervalFrame;
    lblExceptEventTaskPlanDateInterval: TLabel;
    edtMaxTaskWorkdaysLeft: TDBEdit;
    lblTaskWorkdaysLeft: TLabel;
    edtMinTaskWorkdaysLeft: TDBEdit;
    lblBetweenMinMaxTaskWorkdaysLeft: TLabel;
    frExceptEventTaskDept: TfrDeptFieldEditFrameBald;
    lblExceptEventTaskDept: TLabel;
    frExceptEventTaskEmployee: TfrEmployeeFieldEditFrameBald;
    lblExceptEventTaskEmployee: TLabel;
    cbExceptEventDamageProcessType: TJvDBLookupCombo;
    gbExceptEventDamageProcess: TGroupBox;
    pnlSaleShipment: TPanel;
    pnlDelivery: TPanel;
    pnlMaterialListLine: TPanel;
    lblExceptEventTaskProblems: TLabel;
    cbExceptEventTaskProblems: TJvDBComboBox;
    pnlEEDamageProcessTypeProduct: TPanel;
    frEEDamageProcessTypeProduct: TfrProductFieldEditFrameBald;
    lblEEDamageProcessTypeProduct: TLabel;
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
    cdsSaleDealTypes: TAbmesClientDataSet;
    dsSaleDealTypes: TDataSource;
    cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeliveryDealTypes: TAbmesClientDataSet;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField;
    cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField;
    cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField;
    cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField;
    dsDeliveryDealTypes: TDataSource;
    cbShipmentSaleDealType: TJvDBLookupCombo;
    lblShipmentSaleDealType: TLabel;
    cbShipmentSaleBranchCode: TJvDBLookupCombo;
    lblShipmentSaleBranchCode: TLabel;
    edtShipmentSaleNo: TDBEdit;
    lblShipmentSaleNo: TLabel;
    cbShipmentSaleType: TJvDBLookupCombo;
    lblShipmentSaleType: TLabel;
    edtShipmentSaleShipmentNo: TDBEdit;
    lblShipmentSaleShipmentNo: TLabel;
    cbDeliveryDealType: TJvDBLookupCombo;
    lblDeliveryDealType: TLabel;
    edtDeliveryDCDBranch: TJvDBLookupCombo;
    lblDeliveryDCDBranch: TLabel;
    edtDeliveryDCDCode: TDBEdit;
    lblDeliveryDCDCode: TLabel;
    edtDeliveryProjectCode: TDBEdit;
    lblDeliveryProjectCode: TLabel;
    cbMLLOwnerProductionOrderType: TJvDBLookupCombo;
    lblMLLProductionOrderType: TLabel;
    cbMLLProductionOrderBranch: TJvDBLookupCombo;
    lblMLLProductionOrderBranch: TLabel;
    lblMLLProductionOrderNo: TLabel;
    edtMLLProductionOrderNo: TDBEdit;
    lblMLLSaleTypeAbbrev: TLabel;
    cbMLLSaleTypeAbbrev: TJvDBLookupCombo;
    cbExceptEventLevel: TJvDBLookupCombo;
    gbExceptEventGeneration: TGroupBox;
    frExceptEventDept: TfrDeptFieldEditFrameBald;
    lblExceptEventDept: TLabel;
    lblProcessConcreteOperation: TLabel;
    gbSaleGenerator: TGroupBox;
    gbDeliveryGenerator: TGroupBox;
    gbOMGenerator: TGroupBox;
    pnlOMGenFilter: TPanel;
    gbOMGenProductionOrder: TGroupBox;
    lblOMGenProductionOrderPriority: TLabel;
    lblOMGenSaleTypeAbbrev: TLabel;
    lblOMGenProductionOrderNo: TLabel;
    lblOMGenProductionOrderBranch: TLabel;
    lblOMGenProductionOrderType: TLabel;
    frOMGenPriorityInterval: TfrPriorityIntervalEditFrame;
    cbOMGenSaleTypeAbbrev: TJvDBLookupCombo;
    edtOMGenProductionOrderNo: TDBEdit;
    cbOMGenProductionOrderBranch: TJvDBLookupCombo;
    cbOMGenProductionOrderType: TJvDBLookupCombo;
    gbOMGenMovementIdentification: TGroupBox;
    lblOMGenOperationMovementBranch: TLabel;
    lblOMGenOperationMovementNo: TLabel;
    cbOMGenOperationMovementBranch: TJvDBLookupCombo;
    edtOMGenOperationMovementNo: TDBEdit;
    pnlDeliveryGenFilter: TPanel;
    edtDeliveryGenDeliveryProjectCode: TDBEdit;
    lblDeliveryGenDeliveryProjectCode: TLabel;
    edtDeliveryGenDCDCode: TDBEdit;
    lblDeliveryGenDCDCode: TLabel;
    cbDeliveryGenDCDBranch: TJvDBLookupCombo;
    lblDeliveryGenDCDBranch: TLabel;
    pnlSaleGenFilter: TPanel;
    edtSaleGenRequestLineNo: TDBEdit;
    lblSaleGenRequestLineNo: TLabel;
    edtSaleGenRequestNo: TDBEdit;
    lblSaleGenRequestNo: TLabel;
    cbSaleGenRequestBranch: TJvDBLookupCombo;
    lblSaleGenRequestBranch: TLabel;
    frDamageDeliveryPartner: TfrPartnerFieldEditFrameBald;
    lblDamageDeliveryPartner: TLabel;
    gbOrgTaskProposal: TGroupBox;
    lblOrgTaskProposalNo: TLabel;
    edtOrgTaskProposalNo: TDBEdit;
    frOTPCreateDateInterval: TfrDateIntervalFrame;
    lblOTPCreateDate: TLabel;
    pnlExceptEventDamageProcessType: TPanel;
    cbGenerator: TJvDBComboBox;
    pnlDeliveryGeneratorGroupBoxLabel: TPanel;
    lblDeliveryGeneratorGroupBoxLabel: TLabel;
    pnlSaleGeneratorGroupBoxLabel: TPanel;
    lblSaleGeneratorGroupBoxLabel: TLabel;
    pnlOMGeneratorGroupBoxLabel: TPanel;
    lblOMGeneratorGroupBoxLabel: TLabel;
    gbExceptEventPosition: TGroupBox;
    lblCausedExceptEventNo: TLabel;
    edtCausedExceptEventNo: TDBEdit;
    lblCausedExceptEvent: TLabel;
    edtCauseExceptEventNo: TDBEdit;
    lblCauseExceptEventNo: TLabel;
    lblCauseExceptEvent: TLabel;
    frProcessConcreteOperation: TfrProcessConcreteOperationFieldEditFrameBald;
    cbExceptEventIsCause: TJvDBComboBox;
    lblExceptEventIsCause: TLabel;
    cbExceptEventIsCaused: TJvDBComboBox;
    lblExceptEventIsCaused: TLabel;
    frExceptEventType: TfrExceptEventTypeFieldEditFrameBald;
    frDetectEmployee: TfrEmployeeFieldEditFrameBald;
    lblDetectEmployee: TLabel;
    frCreateEmployee: TfrEmployeeFieldEditFrameBald;
    lblCreateEmployee: TLabel;
    lblIsSingleResolvable: TLabel;
    cbIsSingleResolvable: TDBComboBoxEh;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    FExceptEventIsCauseField: TField;
    FExceptEventIsCausedField: TField;
  protected
    procedure CloseDataSets; override;
    procedure OpenDataSets; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    procedure Initialize; override;
  end;

implementation

uses
  uExceptEventClientUtils, uClientUtils, uComboBoxUtils;

{$R *.dfm}

{ TfmExceptEventsFilter }

procedure TfmExceptEventsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frCreateDateInterval.FieldNames:= 'CREATE_BEGIN_DATE; CREATE_END_DATE';
  frCreateEmployee.FieldNames:= 'CREATE_EMPLOYEE_CODE';
  frCreateEmployee.DocButtonVisible:= False;
  frExceptEventProduct.FieldNames:= 'CHOSEN_PRODUCTS';
  frDetectDept.FieldNames:= 'DETECT_DEPT_CODE';
  frDetectEmployee.FieldNames:= 'DETECT_EMPLOYEE_CODE';
  frDetectEmployee.DocButtonVisible:= False;
  frCtrlDept.FieldNames:= 'CTRL_DEPT_CODE';
  frCtrlMainEmployee.FieldNames:= 'CTRL_MAIN_EMPLOYEE_CODE';
  frDamageResolvePlanInterval.FieldNames:= 'DMG_RESOLVE_PLAN_BEGIN_DATE; DMG_RESOLVE_PLAN_END_DATE';
  frDamageResolveDateInterval.FieldNames:= 'DMG_RESOLVE_BEGIN_DATE; DMG_RESOLVE_END_DATE';
  frResolvePlanInterval.FieldNames:= 'RESOLVE_PLAN_BEGIN_DATE; RESOLVE_PLAN_END_DATE';
  frResolveDateInterval.FieldNames:= 'RESOLVE_BEGIN_DATE; RESOLVE_END_DATE';
  frExceptEventTaskPlanDateInterval.FieldNames:= 'TASK_PLAN_BEGIN_DATE; TASK_PLAN_END_DATE';
  frExceptEventTaskDept.FieldNames:= 'TASK_DEPT_CODE';
  frExceptEventTaskEmployee.FieldNames:= 'TASK_EMPLOYEE_CODE';
  frEEDamageProcessTypeProduct.FieldNames:= 'EE_DMG_PROCESS_PRODUCT_CODE';
  frOMGenPriorityInterval.FieldNames:= 'OMG_BEGIN_PRIORITY_CODE; OMG_END_PRIORITY_CODE';
  frOTPCreateDateInterval.FieldNames:= 'OTP_CREATE_BEGIN_DATE; OTP_CREATE_END_DATE';

  InitializeComboBoxWithExceptEventStates(cbMinExceptEventState, True);
  InitializeComboBoxWithExceptEventStates(cbMaxExceptEventState, True);

  InitializeComboBoxWithExceptEventTaskStates(cbMinExceptEventTaskState, True);
  InitializeComboBoxWithExceptEventTaskStates(cbMaxExceptEventTaskState, True);
end;

function TfmExceptEventsFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if (AWinControl = edtCausedExceptEventNo) and
     (FExceptEventIsCauseField.AsExceptEventPositionFilter <> eepfYes) then
    Exit(True);

  if (AWinControl = edtCauseExceptEventNo) and
     (FExceptEventIsCausedField.AsExceptEventPositionFilter <> eepfYes) then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

procedure TfmExceptEventsFilter.Initialize;
begin
  inherited Initialize;
  if not dsData.DataSet.FieldByName('_EXCEPT_EVENT_GEN_TYPE_NAME').IsNull then
    Caption:= Caption + Format(' - %s', [dsData.DataSet.FieldByName('_EXCEPT_EVENT_GEN_TYPE_NAME').AsString]);

  FExceptEventIsCauseField:= dsData.DataSet.FieldByName('EXCEPT_EVENT_IS_CAUSE');
  FExceptEventIsCausedField:= dsData.DataSet.FieldByName('EXCEPT_EVENT_IS_CAUSED');
end;

procedure TfmExceptEventsFilter.actFormUpdate(Sender: TObject);
var
  ExceptEventDamageProcessType: TExceptEventDamageProcessType;
  ExceptEventGenType: TExceptEventGenType;
  HasGeneratorIsChosen: Boolean;
  FilterByExceptEventGenType: Boolean;
begin
  inherited;

  with ReplacedDBComboBox(cbDamagesNormalizedState) do
    pnlDamagesNormalizationConfirmation.Visible:= (XItemIndex > 0) and (StrToInt(XValues[XItemIndex]) = 2);

  with ReplacedDBComboBox(cbTasksResolvedState) do
    pnlTasksResolveConfirmation.Visible:= (XItemIndex > 0) and (StrToInt(XValues[XItemIndex]) = 2);

  gbExceptEventDamageProcess.Visible:=
    not dsData.DataSet.FieldByName('EE_DAMAGE_PROCESS_TYPE_CODE').IsNull;

  gbExceptEventDamageExistance.Visible:= chbFilterByDamageExistance.Field.AsBoolean;
  gbExceptEventTaskExistance.Visible:= chbFilterByTaskExistance.Field.AsBoolean;

  ExceptEventDamageProcessType:=
    IntToExceptEventDamageProcessType(dsData.DataSet.FieldByName('EE_DAMAGE_PROCESS_TYPE_CODE').AsInteger);

  pnlMaterialListLine.Visible:= (ExceptEventDamageProcessType = eedptMaterialListLine);
  pnlDelivery.Visible:= (ExceptEventDamageProcessType = eedptDelivery);
  pnlSaleShipment.Visible:= (ExceptEventDamageProcessType = eedptSaleShipment);

  FilterByExceptEventGenType:= not dsData.DataSet.FieldByName('EXCEPT_EVENT_GEN_TYPE_CODE').IsNull;
  with ReplacedDBComboBox(cbGenerator) do
    if FilterByExceptEventGenType then
      begin
        ExceptEventGenType:= IntToExceptEventGenType(dsData.DataSet.FieldByName('EXCEPT_EVENT_GEN_TYPE_CODE').AsInteger);
        HasGeneratorIsChosen:= (XItemIndex > 0) and (StrToInt(XValues[XItemIndex]) = 3);
        Visible:= (ExceptEventGenType in [eegtEnvironment, eegtProduction, eegtSales, eegtDeliveries]);
      end
    else
      begin
        ExceptEventGenType:= eegtFinancial; // zashtoto tam nqma proces - generator
        HasGeneratorIsChosen:= False;
        Visible:= False;
      end;

  gbOMGenerator.Visible:= FilterByExceptEventGenType and (ExceptEventGenType in [eegtEnvironment, eegtProduction]);
  pnlOMGeneratorGroupBoxLabel.Visible:= FilterByExceptEventGenType and (ExceptEventGenType in [eegtEnvironment, eegtProduction]);

  gbSaleGenerator.Visible:= FilterByExceptEventGenType and (ExceptEventGenType = eegtSales);
  pnlSaleGeneratorGroupBoxLabel.Visible:= FilterByExceptEventGenType and (ExceptEventGenType = eegtSales);

  gbDeliveryGenerator.Visible:= FilterByExceptEventGenType and (ExceptEventGenType = eegtDeliveries);
  pnlDeliveryGeneratorGroupBoxLabel.Visible:= FilterByExceptEventGenType and (ExceptEventGenType = eegtDeliveries);

  pnlOMGenFilter.Visible:= FilterByExceptEventGenType and HasGeneratorIsChosen and (ExceptEventGenType in [eegtEnvironment, eegtProduction]);
  pnlSaleGenFilter.Visible:= FilterByExceptEventGenType and HasGeneratorIsChosen and (ExceptEventGenType = eegtSales);
  pnlDeliveryGenFilter.Visible:= FilterByExceptEventGenType and HasGeneratorIsChosen and (ExceptEventGenType = eegtDeliveries);
end;

procedure TfmExceptEventsFilter.OpenDataSets;
begin
  cdsProductionOrderTypes.Open;
  cdsSaleDealTypes.Open;
  cdsDeliveryDealTypes.Open;
  inherited;
end;

procedure TfmExceptEventsFilter.CloseDataSets;
begin
  inherited;
  cdsDeliveryDealTypes.Close;
  cdsSaleDealTypes.Close;
  cdsProductionOrderTypes.Close;
end;

end.
