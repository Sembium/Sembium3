unit fEmployeesAvailabilityGraphFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponent, JvCaptionButton, ActnList, JvExControls, JvDBLookup,
  Buttons, StdCtrls, ExtCtrls, DBCtrls, JvExStdCtrls, JvDBCombobox,
  fBaseFrame, fDBFrame, fFieldEditFrame, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDateUnitsIntervalEditFrame, JvComponentBase, JvCombobox;

type
  TfmEmployeesAvailabilityGraphFilter = class(TFilterForm)
    frOccupationDept: TfrDeptFieldEditFrame;
    gbShift: TGroupBox;
    cbShift: TJvDBLookupCombo;
    gbIsExternal: TGroupBox;
    cbIsExternal: TJvDBComboBox;
    frDateUnitsInterval: TfrDateUnitsIntervalEditFrame;
    rgIncludeDeptDescendants: TDBRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure frDateUnitsIntervalcdsTimeUnitsAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetDBFrameReadOnly(AFrame: TDBFrame): Boolean; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses uPeriods, uClientUtils;

{$R *.dfm}

procedure TfmEmployeesAvailabilityGraphFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frOccupationDept.FieldNames:= 'OCCUPATION_DEPT_CODE';
end;

procedure TfmEmployeesAvailabilityGraphFilter.frDateUnitsIntervalcdsTimeUnitsAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  
  // hack da ne mogat da se izbirat poveche ot 6 meseca
  if not frDateUnitsInterval.cdsTimeUnits.Locate('THE_DATE_UNIT_CODE', GetPeriodConst(perMonth), []) then
    raise Exception.Create('internal error: cannot locate month date unit');
  frDateUnitsInterval.cdsTimeUnits.Edit;
  frDateUnitsInterval.cdsTimeUnitsMAX_UNIT_COUNT.AsInteger:= 6;
  frDateUnitsInterval.cdsTimeUnits.Post;
  frDateUnitsInterval.cdsTimeUnits.First;
end;

function TfmEmployeesAvailabilityGraphFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if (AWinControl = cbShift) and
     (rgIncludeDeptDescendants.ItemIndex = 2) then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

function TfmEmployeesAvailabilityGraphFilter.GetDBFrameReadOnly(
  AFrame: TDBFrame): Boolean;
begin
  if (AFrame = frOccupationDept) and
     (rgIncludeDeptDescendants.ItemIndex = 2) then
    Exit(True);

  Result:= inherited GetDBFrameReadOnly(AFrame);
end;

procedure TfmEmployeesAvailabilityGraphFilter.FormShow(Sender: TObject);
begin
  inherited;
  frOccupationDept.ShowAllWhenEmpty:= False;
end;

end.
