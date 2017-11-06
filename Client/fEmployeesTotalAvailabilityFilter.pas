unit fEmployeesTotalAvailabilityFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponent, JvCaptionButton, ActnList, JvExControls, JvDBLookup,
  Buttons, StdCtrls, ExtCtrls, JvExStdCtrls, JvDBCombobox,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fBaseFrame, fDBFrame,
  fFieldEditFrame, fDateIntervalFrame, DBCtrls, JvComponentBase, JvCombobox;

type
  TfmEmployeesTotalAvailabilityFilter = class(TFilterForm)
    gbDatePeriod: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    frOccupationDept: TfrDeptFieldEditFrame;
    gbIsExternal: TGroupBox;
    cbIsExternal: TJvDBComboBox;
    gbShift: TGroupBox;
    cbShift: TJvDBLookupCombo;
    rgGroupingType: TDBRadioGroup;
    rgIncludeDeptDescendants: TDBRadioGroup;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetDBFrameReadOnly(AFrame: TDBFrame): Boolean; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  uClientUtils;

{$R *.dfm}

procedure TfmEmployeesTotalAvailabilityFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frOccupationDept.FieldNames:= 'OCCUPATION_DEPT_CODE';
end;

function TfmEmployeesTotalAvailabilityFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if (AWinControl = cbShift) and
     (rgIncludeDeptDescendants.ItemIndex = 2) then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

function TfmEmployeesTotalAvailabilityFilter.GetDBFrameReadOnly(
  AFrame: TDBFrame): Boolean;
begin
  if (AFrame = frOccupationDept) and
     (rgIncludeDeptDescendants.ItemIndex = 2) then
    Exit(True);

  Result:= inherited GetDBFrameReadOnly(AFrame);
end;

end.
