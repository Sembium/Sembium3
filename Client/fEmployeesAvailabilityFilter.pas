unit fEmployeesAvailabilityFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponent, JvCaptionButton, ActnList, JvExControls, JvDBLookup,
  Buttons, StdCtrls, ExtCtrls, fFilterForm, DBCtrls,
  fEmployeeFieldEditFrame, fBaseFrame, fDBFrame, fFieldEditFrame,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDateIntervalFrame,
  JvExStdCtrls, JvDBCombobox, Mask, JvComponentBase, AbmesDBCheckBox,
  dDocClient, uClientTypes, JvCombobox;

type
  TfmEmployeesAvailabilityFilter = class(TFilterForm)
    rgIncludeDeptDescendants: TDBRadioGroup;
    gbOccupationAndEmployee: TGroupBox;
    frOccupationDept: TfrDeptFieldEditFrame;
    frEmployee: TfrEmployeeFieldEditFrame;
    gbShift: TGroupBox;
    cbShift: TJvDBLookupCombo;
    gbIsExternal: TGroupBox;
    cbIsExternal: TJvDBComboBox;
    gbDatePeriod: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    gbCraftType: TGroupBox;
    cbCraftType: TJvDBLookupCombo;
    gbCraft: TGroupBox;
    cbCraft: TJvDBLookupCombo;
    edtCraft: TDBEdit;
    gbEmpAvailModifiers: TGroupBox;
    cbFilterEmpAvailModifiers: TJvDBComboBox;
    pnlDayAbsenceModifiers: TPanel;
    pnlHourAbsenceModifiers: TPanel;
    cbEmpDayAbsenceReason: TJvDBLookupCombo;
    lblEmpDayAbsenceReason: TLabel;
    lblEmpHourAvailModifierReason: TLabel;
    cbEmpHourAvailModifierReason: TJvDBLookupCombo;
    lblEmpAvailModifierType: TLabel;
    cbEmpAvailModifierType: TJvDBLookupCombo;
    chIsEmpDayAbsenceConfirmed: TJvDBComboBox;
    lblIsEmpDayAbsenceConfirmed: TLabel;
    gbHasUnmatchedMovements: TGroupBox;
    cbHasUnmatchedMovements: TJvDBComboBox;
    lblHasUnmatchedMovements: TLabel;
    pnlShiftChangeModifier: TPanel;
    lblShiftChangeModifierReason: TLabel;
    cbShiftChangeModifierReason: TJvDBLookupCombo;
    cbOldShift: TJvDBLookupCombo;
    lblOldShift: TLabel;
    lblNewShift: TLabel;
    cbNewShift: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetDBFrameReadOnly(AFrame: TDBFrame): Boolean; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    procedure SetDataParams(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AEmployeeFrameAllEmployees: TDataSet = nil); reintroduce; virtual;
    class function ShowForm(AdmDocClient: TdmDocClient = nil;
      ADataSet: TDataSet = nil;
      AEditMode: TEditMode = emEdit; ADefaultsOrigin: TDefaultsOrigin = doNone;
      AEmployeeFrameAllEmployees: TDataSet = nil): Boolean;
  end;

implementation

uses
  uClientUtils, uComboBoxUtils;

{$R *.dfm}

procedure TfmEmployeesAvailabilityFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frOccupationDept.FieldNames:= 'OCCUPATION_DEPT_CODE';
  frEmployee.FieldNames:= 'EMPLOYEE_CODE';
end;

procedure TfmEmployeesAvailabilityFilter.SetDataParams(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin; AEmployeeFrameAllEmployees: TDataSet);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin);
  frEmployee.OuterAllEmployeesDataSet:= AEmployeeFrameAllEmployees;
end;

class function TfmEmployeesAvailabilityFilter.ShowForm(
  AdmDocClient: TdmDocClient; ADataSet: TDataSet; AEditMode: TEditMode;
  ADefaultsOrigin: TDefaultsOrigin;
  AEmployeeFrameAllEmployees: TDataSet): Boolean;
var
  f: TfmEmployeesAvailabilityFilter;
begin
  f:= CreateEx;
  try
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, ADefaultsOrigin,
      AEmployeeFrameAllEmployees);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;
end;

function TfmEmployeesAvailabilityFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if (AWinControl = cbShift) and
     (rgIncludeDeptDescendants.ItemIndex = 2) then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

function TfmEmployeesAvailabilityFilter.GetDBFrameReadOnly(
  AFrame: TDBFrame): Boolean;
begin
  if (AFrame = frOccupationDept) and
     (rgIncludeDeptDescendants.ItemIndex = 2) then
    Exit(True);

  Result:= inherited GetDBFrameReadOnly(AFrame);
end;

procedure TfmEmployeesAvailabilityFilter.actFormUpdate(Sender: TObject);
var
  cbFilterEmpAvailModifiersItemIndex: Integer;
begin
  inherited;

  cbFilterEmpAvailModifiersItemIndex:= ReplacedDBComboBox(cbFilterEmpAvailModifiers).XItemIndex;
  pnlDayAbsenceModifiers.Visible:= (cbFilterEmpAvailModifiersItemIndex = 1);
  pnlHourAbsenceModifiers.Visible:= (cbFilterEmpAvailModifiersItemIndex = 2);
  pnlShiftChangeModifier.Visible:= (cbFilterEmpAvailModifiersItemIndex = 3);
end;

end.
