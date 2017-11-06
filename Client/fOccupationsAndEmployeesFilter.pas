unit fOccupationsAndEmployeesFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvButtons, ActnList, JvDBLookup, Buttons, StdCtrls, ExtCtrls, JvDBCombobox,
  JvToolEdit, JvDBControls, Mask, DBCtrls, AbmesDBCheckBox, fBaseFrame,
  fDBFrame, fFieldEditFrame, fTreeNodeFilter, fDeptFilter,
  fDateIntervalFrame, fDateFieldEditFrame, fBevelFilterForm,
  fProductFilter, fParamProductFilter, JvExStdCtrls, JvComponent,
  JvCaptionButton, JvExControls, JvComponentBase, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameBald, fTreeNodeFieldEditFrame,
  fTreeOnlyNodeFieldEditFrame, JvExMask, JvDBLookupComboEdit,
  fSysRoleFieldEditFrame, fSysRoleFieldEditFrameLabeled, uClientTypes,
  dDocClient, JvCombobox, fPrcDataFilterFrame, fDeptFieldEditFrame, fDeptFieldEditFrameBald,
  fFilterFrame, fTreeNodeGridFilter;

type
  TfmOccupationsAndEmployeesFilter = class(TFilterForm)
    gbOccupationLevel: TGroupBox;
    edtBeginOccupationLevel: TDBEdit;
    edtEndOccupationLevel: TDBEdit;
    edtOccupationLevelSeparator: TLabel;
    frProduct: TfrParamProductFilter;
    gbEmployee: TGroupBox;
    lblEmployee: TLabel;
    lblEmployeeEGN: TLabel;
    lblEmployeeMale: TLabel;
    lblEducation: TLabel;
    edtEmployeeEGN: TDBEdit;
    cbEmployeeMale: TJvDBComboBox;
    cbEducation: TJvDBLookupCombo;
    gbDisciplineStatus: TGroupBox;
    gbNegativeDisciplineEvents: TGroupBox;
    chbHasNegativeEvents: TAbmesDBCheckBox;
    chbHasNotNegativeEvents: TAbmesDBCheckBox;
    gbPositiveDisciplineEvents: TGroupBox;
    chbHasPositiveEvents: TAbmesDBCheckBox;
    chbHasNotPositiveEvents: TAbmesDBCheckBox;
    frDeptFilter: TfrDeptFilter;
    gbProfessions: TGroupBox;
    lblOccupationEmployeeProfession: TLabel;
    lblOccupationProfession: TLabel;
    cbOccupationEmployeeProfession: TJvDBLookupCombo;
    cbOccupationProfession: TJvDBLookupCombo;
    lblEmployeeProfession: TLabel;
    cbEmployeeProfession: TJvDBLookupCombo;
    lblProfessionStatus: TLabel;
    cbProfessionStatus: TJvDBComboBox;
    lblIsExternal: TLabel;
    gbCraft: TGroupBox;
    cbCraft: TJvDBLookupCombo;
    cbIsExternal: TJvDBComboBox;
    cbOERegime: TJvDBLookupCombo;
    lblOERegime: TLabel;
    frEmployeeDateInterval: TfrDateIntervalFrame;
    lblDateInterval: TLabel;
    gbStatus: TGroupBox;
    chbIsActive: TAbmesDBCheckBox;
    chbIsNotActive: TAbmesDBCheckBox;
    chbIsOccupied: TAbmesDBCheckBox;
    chbIsNotOccupied: TAbmesDBCheckBox;
    gbOccupationIsMain: TGroupBox;
    cbOccipationIsMain: TJvDBComboBox;
    gbPhase: TGroupBox;
    cbPhase: TJvDBLookupCombo;
    gbShift: TGroupBox;
    cbShift: TJvDBLookupCombo;
    gbOccupationDates: TGroupBox;
    frOccupationDateInterval: TfrDateIntervalFrame;
    edtMinEmployeeAge: TDBEdit;
    lblEmployeeAgeSeparator: TLabel;
    edtMaxEmployeeAge: TDBEdit;
    lblEmployeeAge: TLabel;
    lblEmployeeAgeMeasure: TLabel;
    lblOccupationDayDiff: TLabel;
    edtMinOccupationDayDiff: TDBEdit;
    lblOccupationDayDiffSeparator: TLabel;
    edtMaxOccupationDayDiff: TDBEdit;
    lblOccupationDayDiffMeasure: TLabel;
    lblOccupationDateInterval: TLabel;
    cbCraftType: TJvDBLookupCombo;
    lblCraftType: TLabel;
    lblCraft: TLabel;
    edtAssignmentDayDiff: TLabel;
    edtMinAssignmentDayDiff: TDBEdit;
    edtAssignmentDayDiffSeparator: TLabel;
    edtMaxAssignmentDayDiff: TDBEdit;
    edtAssignmentDayDiffMeasure: TLabel;
    gbStatusDate: TGroupBox;
    frStatusDate: TfrDateFieldEditFrame;
    frEmployee: TfrEmployeeFieldEditFrameBald;
    gbPrcData: TGroupBox;
    lblOccPrcActionsStatus: TLabel;
    cbOccPrcActionsStatus: TJvDBComboBox;
    frSysRole: TfrSysRoleFieldEditFrameLabeled;
    frPrcDataFilter: TfrPrcDataFilterFrame;
    gbWorkDept: TGroupBox;
    frWorkDept: TfrDeptFieldEditFrameBald;
    procedure FormCreate(Sender: TObject);
  private
    FShowFromSysRole: Boolean;
  protected
    function GetDBFrameReadOnly(AFrame: TDBFrame): Boolean; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    procedure SetDataParams(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AShowFromSysRole: Boolean = False); reintroduce; virtual;

    class function ShowForm(
      AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit;
      ADefaultsOrigin: TDefaultsOrigin = doNone;
      AShowFromSysRole: Boolean = False): Boolean;
  end;

implementation

uses
  uUtils, uClientUtils, uUserActivityConsts;

{$R *.dfm}

{ TfmOccupationsAndEmployeesFilter }

procedure TfmOccupationsAndEmployeesFilter.SetDataParams(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AShowFromSysRole: Boolean);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  FShowFromSysRole:= AShowFromSysRole;
end;

class function TfmOccupationsAndEmployeesFilter.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AShowFromSysRole: Boolean): Boolean;
var
  f: TfmOccupationsAndEmployeesFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin, AShowFromSysRole);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmOccupationsAndEmployeesFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frOccupationDateInterval.FieldNames:= 'OCCUPATION_BEGIN_DATE;OCCUPATION_END_DATE';
  frEmployeeDateInterval.FieldNames:= 'EMPLOYEE_BEGIN_DATE;EMPLOYEE_END_DATE';
  frStatusDate.FieldNames:= 'STATUS_DATE';
  frDeptFilter.FieldNames:= 'CHOSEN_DEPTS';
  frProduct.FieldNames:= 'CHOSEN_PRODUCTS';
  frEmployee.FieldNames:= 'EMPLOYEE_CODE';
  frWorkDept.FieldNames:= 'WORK_DEPT_CODE';
  frWorkDept.DocButtonVisible:= False;
end;

function TfmOccupationsAndEmployeesFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if (AWinControl = edtEmployeeEGN) and
     not IsEGNVisible then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

function TfmOccupationsAndEmployeesFilter.GetDBFrameReadOnly(AFrame: TDBFrame): Boolean;
begin
  if (AFrame = frSysRole) and FShowFromSysRole then
    Exit(True);

  Result:= inherited GetDBFrameReadOnly(AFrame);
end;

end.
