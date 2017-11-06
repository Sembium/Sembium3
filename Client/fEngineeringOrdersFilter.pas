unit fEngineeringOrdersFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponent, JvCaptionButton, ActnList, JvExControls, JvDBLookup,
  Buttons, StdCtrls, ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fPriorityIntervalEditFrame, DBCtrls, Mask, DBCtrlsEh,
  fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald, fTreeNodeFilter,
  fDeptFilter, fDateIntervalFrame, fProductFilter, fParamProductFilter,
  JvExStdCtrls, JvDBCombobox, fTreeNodeFieldEditFrame,
  fProductFieldEditFrame, fProductFieldEditFrameBald, JvComponentBase,
  JvExExtCtrls, JvExtComponent, JvDBRadioPanel;

type
  TfmEngineeringOrdersFilter = class(TFilterForm)
    gbEOState: TGroupBox;
    lblState: TLabel;
    cbMinEoState: TDBComboBoxEh;
    cbMaxEoState: TDBComboBoxEh;
    gbEngineeringOrderIdentification: TGroupBox;
    lblBranch: TLabel;
    lblNo: TLabel;
    lblType: TLabel;
    lblPriorityInterval: TLabel;
    cbBranch: TJvDBLookupCombo;
    edtNo: TDBEdit;
    cbType: TJvDBLookupCombo;
    frPriorityInterval: TfrPriorityIntervalEditFrame;
    frOrderDeptFilter: TfrDeptFilter;
    gbEngineeringStart: TGroupBox;
    gbEngineering: TGroupBox;
    frEngineeringDeptFilter: TfrDeptFilter;
    gbEngineeringFinal: TGroupBox;
    frEngineeringEmployee: TfrEmployeeFieldEditFrameBald;
    lblEngineeringEmployee: TLabel;
    frPlanBeginDateInterval: TfrDateIntervalFrame;
    lblPlanBeginDateInterval: TLabel;
    edtBeginEngineeringStartDateDiff: TDBEdit;
    lblEngineeringStartDateDiff: TLabel;
    lblEngineeringStartDateDiffDash: TLabel;
    edtEndEngineeringStartDateDiff: TDBEdit;
    edtEngineeringRealWorkdaysDash: TLabel;
    lblEngineeringRealWorkdays: TLabel;
    edtEngineeringRealWorkdaysDays: TLabel;
    lblEngineeringWorkdaysDiffDash: TLabel;
    lblEngineeringWorkdaysDiffPercent: TLabel;
    lblEngineeringWorkdaysDiffPercentPercent: TLabel;
    edtBeginEngineeringRealWorkdays: TDBEdit;
    edtEndEngineeringRealWorkdays: TDBEdit;
    edtBeginEngineeringWorkdaysDiffPercent: TDBEdit;
    edtEndEngineeringWorkdaysDiffPercent: TDBEdit;
    frParamProductFilter: TfrParamProductFilter;
    lblDash: TLabel;
    lblStatus: TLabel;
    cbMinSpecState: TDBComboBoxEh;
    cbMaxSpecState: TDBComboBoxEh;
    frPlanEndDateInterval: TfrDateIntervalFrame;
    lblPlanEndDateInterval: TLabel;
    edtBeginEngineeringFinalDateDiff: TDBEdit;
    lblEngineeringFinalDateDiff: TLabel;
    lblEngineeringFinalDateDiffDash: TLabel;
    edtEndEngineeringFinalDateDiff: TDBEdit;
    cdsBranches: TAbmesClientDataSet;
    cdsBranchesBRANCH_CODE: TAbmesFloatField;
    cdsBranchesBRANCH_NO: TAbmesFloatField;
    cdsBranchesNAME: TAbmesWideStringField;
    cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField;
    cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField;
    dsBranches: TDataSource;
    cdsEngineeringOrderTypes: TAbmesClientDataSet;
    dsEngineeringOrderTypes: TDataSource;
    cdsEngineeringOrderTypesENGINEERING_ORDER_TYPE_CODE: TAbmesFloatField;
    cdsEngineeringOrderTypesENGINEERING_ORDER_TYPE_NAME: TAbmesWideStringField;
    cdsEngineeringOrderTypesENGINEERING_ORDER_TYPE_ABBREV: TAbmesWideStringField;
    frThoroughlyEngineeredProduct: TfrProductFieldEditFrameBald;
    lblTreeNode: TLabel;
    lblTreeNodeName: TLabel;
    frCommonProduct: TfrProductFieldEditFrameBald;
    gbHasParentEngineeringOrder: TGroupBox;
    lblParentEngineeringOrderBranch: TLabel;
    lblParentEngineeringOrderNo: TLabel;
    cbParentEngineeringOrderBranch: TJvDBLookupCombo;
    edtParentEngineeringOrderNo: TDBEdit;
    rgHasParentEngineeringOrder: TJvDBRadioPanel;
    lblParentEngineeringOrder: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  uModelUtils, uClientUtils;

{$R *.dfm}

{ TfmEngineeringOrdersFilter }

procedure TfmEngineeringOrdersFilter.FormCreate(Sender: TObject);
begin
  inherited;

  frOrderDeptFilter.FieldNames:= 'CHOSEN_ORDER_DEPTS';
  frPlanBeginDateInterval.FieldNames:= 'ENG_PLAN_BEGIN_DATE_BEGIN;ENG_PLAN_BEGIN_DATE_END';
  frEngineeringDeptFilter.FieldNames:= 'CHOSEN_ENGINEERING_DEPTS';
  frEngineeringEmployee.FieldNames:= 'ENGINEERING_EMPLOYEE_CODE';
  frEngineeringEmployee.SpecialProffesionEmployee:= speOkidu;
  frEngineeringEmployee.DocButtonVisible:= False;
  frParamProductFilter.FieldNames:= 'CHOSEN_PRODUCTS';
  frPlanEndDateInterval.FieldNames:= 'ENG_PLAN_END_DATE_BEGIN; ENG_PLAN_END_DATE_END';
  frThoroughlyEngineeredProduct.FieldNames:= 'THOROUGHLY_ENG_PRODUCT_CODE';
  frCommonProduct.FieldNames:= 'COMMON_PRODUCT_CODE';

  InitializeComboBoxWithEOStates(cbMinEOState, True);
  InitializeComboBoxWithEOStates(cbMaxEOState, True);
  InitializeComboBoxWithSpecStates(cbMinSpecState);
  InitializeComboBoxWithSpecStates(cbMaxSpecState);
end;

function TfmEngineeringOrdersFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if ((AWinControl = cbParentEngineeringOrderBranch) or (AWinControl = edtParentEngineeringOrderNo)) and
     not rgHasParentEngineeringOrder.Buttons[2].Checked then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

procedure TfmEngineeringOrdersFilter.OpenDataSets;
begin
  cdsEngineeringOrderTypes.Open;
  cdsBranches.Open;
  inherited;
end;

procedure TfmEngineeringOrdersFilter.CloseDataSets;
begin
  inherited;
  cdsBranches.Open;
  cdsEngineeringOrderTypes.Open;
end;

end.
