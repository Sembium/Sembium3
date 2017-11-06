unit fOrganisationTaskProposalsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvComponent,
  JvDBLookup, Buttons, StdCtrls, ExtCtrls, Mask, DBCtrlsEh, fBaseFrame,
  fDBFrame, fFieldEditFrame, fDateIntervalFrame, DBCtrls,
  fTreeNodeFieldEditFrame, fTreeOnlyNodeFieldEditFrame,
  fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald, fTreeNodeFilter, fProductFilter,
  fParamProductFilter, fDeptFieldEditFrame, JvExStdCtrls, JvDBCombobox, JvCombobox, fPrcDataFilterFrame, fFilterFrame,
  fTreeNodeGridFilter;

type
  TfmOrganisationTaskProposalsFilter = class(TFilterForm)
    gbOrgTaskProposal: TGroupBox;
    lblProposalStatus: TLabel;
    cbMinProposalState: TDBComboBoxEh;
    lblMinProposalState: TLabel;
    cbMaxProposalState: TDBComboBoxEh;
    lblNo: TLabel;
    edtNo: TDBEdit;
    lblCrateDateInterval: TLabel;
    frCreateDateInterval: TfrDateIntervalFrame;
    gbProposalPresentation: TGroupBox;
    frPlanProposalDateInterval: TfrDateIntervalFrame;
    lblPlanProposalDateInterval: TLabel;
    lblPlanProposalEmployee: TLabel;
    frPlanProposalEmployee: TfrEmployeeFieldEditFrameBald;
    frResultDateInterval: TfrDateIntervalFrame;
    lblResultType: TLabel;
    lblResultDateInterval: TLabel;
    cbResultType: TJvDBLookupCombo;
    edtCyclesFrom: TDBEdit;
    lblProposalCycles: TLabel;
    edtCyclesTo: TDBEdit;
    frProduct: TfrParamProductFilter;
    frDept: TfrDeptFieldEditFrame;
    gbEngineeringOrder: TGroupBox;
    gbProductionOrder: TGroupBox;
    cdsOrgTaskProposalResultTypes: TAbmesClientDataSet;
    dsOrgTaskProposalResultTypes: TDataSource;
    cdsOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_CODE: TAbmesFloatField;
    cdsOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_NAME: TAbmesWideStringField;
    cbHasEngineeringOrder: TJvDBComboBox;
    cbHasProductionOrder: TJvDBComboBox;
    gbEngineeringOrderState: TGroupBox;
    cbMinEngineeringOrderState: TDBComboBoxEh;
    lblBetweenEngineeringOrderState: TLabel;
    cbMaxEngineeringOrderState: TDBComboBoxEh;
    gbProductionOrderState: TGroupBox;
    cbMinProductionOrderState: TDBComboBoxEh;
    lblMinProductionOrderState: TLabel;
    cbMaxProductionOrderState: TDBComboBoxEh;
    cdsOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_ABBR: TAbmesWideStringField;
    lblBetweenCycles: TLabel;
    gbEngineeringPlanDateInterval: TGroupBox;
    gbProductionPlanDateInterval: TGroupBox;
    frEngineeringPlanDateInterval: TfrDateIntervalFrame;
    frProductionPlanDateInterval: TfrDateIntervalFrame;
    gbPrcData: TGroupBox;
    frPrcDataFilter: TfrPrcDataFilterFrame;
    frManagerEmployee: TfrEmployeeFieldEditFrame;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
    procedure cbHasProductionOrderChange(Sender: TObject);
    procedure cbHasEngineeringOrderChange(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    { Public declarations }
  end;

implementation

uses
  uModelUtils, fEditForm, uOrganisationTaskUtils, uOrganisationTaskClientUtils;

{$R *.dfm}

procedure TfmOrganisationTaskProposalsFilter.OpenDataSets;
begin
  inherited OpenDataSets;
  cdsOrgTaskProposalResultTypes.Open;
end;

procedure TfmOrganisationTaskProposalsFilter.CloseDataSets;
begin
  cdsOrgTaskProposalResultTypes.Close;
  inherited CloseDataSets;
end;

procedure TfmOrganisationTaskProposalsFilter.cbHasProductionOrderChange(
  Sender: TObject);
begin
  inherited;
  dsData.DataSet.UpdateRecord;
end;

procedure TfmOrganisationTaskProposalsFilter.cbHasEngineeringOrderChange(
  Sender: TObject);
begin
  inherited;
  dsData.DataSet.UpdateRecord;
end;

procedure TfmOrganisationTaskProposalsFilter.actFormUpdate(Sender: TObject);
begin
  inherited;

  gbEngineeringOrderState.Visible:=
    (dsData.DataSet.FieldByName('HAS_ENGINEERING_ORDER').AsInteger = 2);

  gbProductionOrderState.Visible:=
    (dsData.DataSet.FieldByName('HAS_PRODUCTION_ORDER').AsInteger = 2);
end;

procedure TfmOrganisationTaskProposalsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frCreateDateInterval.FieldNames:= 'CREATE_BEGIN_DATE; CREATE_END_DATE';
  frPlanProposalDateInterval.FieldNames:= 'PLAN_PROPOSAL_BEGIN_DATE; PLAN_PROPOSAL_END_DATE';
  frPlanProposalEmployee.FieldNames:= 'PLAN_PROPOSAL_EMPLOYEE_CODE';
  frPlanProposalEmployee.DocButtonVisible:= False;
  frManagerEmployee.FieldNames:= 'MANAGER_EMPLOYEE_CODE';
  frResultDateInterval.FieldNames:= 'RESULT_BEGIN_DATE; RESULT_END_DATE';
  frProduct.FieldNames:= 'CHOSEN_PRODUCTS';
  frDept.FieldNames:= 'DEPT_CODE';

  frEngineeringPlanDateInterval.FieldNames:= 'ENGINEERING_PLAN_BEGIN_DATE; ENGINEERING_PLAN_END_DATE';
  frProductionPlanDateInterval.FieldNames:= 'PRODUCTION_PLAN_BEGIN_DATE; PRODUCTION_PLAN_END_DATE';

  InitializeComboBoxWithMLStates(cbMinProductionOrderState, True);
  InitializeComboBoxWithMLStates(cbMaxProductionOrderState, True);

  InitializeComboBoxWithEOStates(cbMinEngineeringOrderState, True);
  InitializeComboBoxWithEOStates(cbMaxEngineeringOrderState, True);

  InitializeComboBoxWithOTPStates(cbMinProposalState, True);
  InitializeComboBoxWithOTPStates(cbMaxProposalState, True);
end;

end.
