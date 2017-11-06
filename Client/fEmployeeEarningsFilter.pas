unit fEmployeeEarningsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBevelFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvButtons, ActnList, JvDBLookup, Buttons, StdCtrls, ExtCtrls, Mask,
  DBCtrls, fBaseFrame, fDBFrame, fFieldEditFrame, 
  JvToolEdit, JvDBControls, fTreeNodeFilter, fDeptFilter,
  fTreeNodeFieldEditFrame, fDeptFieldEditFrame, fDateIntervalFrame,
  JvComponent, JvCaptionButton, JvExControls, fFilterForm,
  fEmployeeFieldEditFrame, fEmployeeFieldEditFrameBald, JvComponentBase;

type
  TfmEmployeeEarningsFilter = class(TFilterForm)
    frDeptFilter: TfrDeptFilter;
    rgHasOccupation: TDBRadioGroup;
    frDept: TfrDeptFieldEditFrame;
    gbDateInterval: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    gbTeamAndEmployee: TGroupBox;
    lblBaseTeam: TLabel;
    edtTeamNo: TDBEdit;
    cbTeamName: TJvDBLookupCombo;
    lblEmployee: TLabel;
    frEmployee: TfrEmployeeFieldEditFrameBald;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  protected
    class function CanUseDocs: Boolean; override;
    function GetDBFrameReadOnly(AFrame: TDBFrame): Boolean; override;
    function GetControlReadOnly(AWinControl: TWinControl): Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  uClientUtils;

{$R *.dfm}

{ TfmEmployeeEarningsFilter }

procedure TfmEmployeeEarningsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frDeptFilter.FieldNames:= 'CHOSEN_OCCUPATION_WORK_DEPTS';
  frDateInterval.FieldNames:= 'BEGIN_DATE;END_DATE';
  frEmployee.FieldNames:= 'EMPLOYEE_CODE';
end;

function TfmEmployeeEarningsFilter.GetControlReadOnly(
  AWinControl: TWinControl): Boolean;
begin
  if ((AWinControl = edtTeamNo) or (AWinControl = cbTeamName)) and
     not dsData.DataSet.FieldByName('EMPLOYEE_CODE').IsNull then
    Exit(True);

  Result:= inherited GetControlReadOnly(AWinControl);
end;

function TfmEmployeeEarningsFilter.GetDBFrameReadOnly(AFrame: TDBFrame): Boolean;
begin
  if (AFrame = frEmployee) and
     not dsData.DataSet.FieldByName('TEAM_CODE').IsNull then
    Exit(True);

  Result:= inherited GetDBFrameReadOnly(AFrame);
end;

procedure TfmEmployeeEarningsFilter.actFormUpdate(Sender: TObject);
begin
  inherited;
  Assert(Assigned(dsData.DataSet));

  frDept.Enabled:= (rgHasOccupation.ItemIndex = 1); // update-va mnogo kysno poleto
  frDeptFilter.Enabled:= (rgHasOccupation.ItemIndex = 1); // update-va mnogo kysno poleto
end;

class function TfmEmployeeEarningsFilter.CanUseDocs: Boolean;
begin
  Result:= True;
end;

end.
