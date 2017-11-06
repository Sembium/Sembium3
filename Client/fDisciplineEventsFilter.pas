unit fDisciplineEventsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponentBase, JvCaptionButton, ActnList, JvExControls, JvComponent,
  JvDBLookup, Buttons, StdCtrls, ExtCtrls, JvExStdCtrls, JvDBCombobox,
  fBaseFrame, fDBFrame, fFieldEditFrame, fDateFieldEditFrame,
  fDateIntervalFrame, fEmployeeFieldEditFrame,
  fEmployeeFieldEditFrameLabeled, fTreeNodeFieldEditFrame,
  fDeptFieldEditFrame, fDeptFieldEditFrameLabeled,
  fEmployeeFieldEditFrameBald, fTreeOnlyNodeFieldEditFrame,
  fDiscEventTypeFieldEditFrame, AbmesDBCheckBox;

type
  TfmDisciplineEventsFilter = class(TFilterForm)
    gbStatus: TGroupBox;
    cbMinStatus: TJvDBComboBox;
    cbMaxStatus: TJvDBComboBox;
    lblStatusHyphen: TLabel;
    gbTheDate: TGroupBox;
    frTheDate: TfrDateFieldEditFrame;
    frEmployee: TfrEmployeeFieldEditFrameLabeled;
    gbDisciplineEventDate: TGroupBox;
    frDisciplineEventDateInterval: TfrDateIntervalFrame;
    frMainOccupationDept: TfrDeptFieldEditFrameLabeled;
    frAuthorizeEmployee: TfrEmployeeFieldEditFrameLabeled;
    gbCreateData: TGroupBox;
    frCreateDateInterval: TfrDateIntervalFrame;
    frCreateEmployee: TfrEmployeeFieldEditFrameBald;
    lblCreateDateInterval: TLabel;
    lblCreateEmployeeNo: TLabel;
    lblCreateEmployeeName: TLabel;
    gbStornoData: TGroupBox;
    lblStornoDateInterval: TLabel;
    lblStornoEmployeeNo: TLabel;
    lblStornoEmployeeName: TLabel;
    frStornoDateInterval: TfrDateIntervalFrame;
    frStornoEmployee: TfrEmployeeFieldEditFrameBald;
    cdsEmployeeFrameAllEmployees: TAbmesClientDataSet;
    frDiscEventType: TfrDiscEventTypeFieldEditFrame;
    pnlChosenMainOccupationDeptOnly: TPanel;
    chbChosenMainOccupationDeptOnly: TAbmesDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure actFormUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfmDisciplineEventsFilter.actFormUpdate(Sender: TObject);
begin
  inherited;

  chbChosenMainOccupationDeptOnly.Enabled:=
    dsData.DataSet.Active and
    not dsData.DataSet.FieldByName('MAIN_OCCUPATION_DEPT_CODE').IsNull;
end;

procedure TfmDisciplineEventsFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frTheDate.FieldNames:= 'THE_DATE';
  frDiscEventType.FieldNames:= 'DISC_EVENT_TYPE_CODE';
  frDisciplineEventDateInterval.FieldNames:= 'DISCIPLINE_EVENT_BEGIN_DATE; DISCIPLINE_EVENT_END_DATE';
  frEmployee.FieldNames:= 'EMPLOYEE_CODE';
  frEmployee.DocButtonVisible:= False;
  frEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;
  frMainOccupationDept.FieldNames:= 'MAIN_OCCUPATION_DEPT_CODE';
  frMainOccupationDept.DocButtonVisible:= False;
  frAuthorizeEmployee.FieldNames:= 'AUTHORIZE_EMPLOYEE_CODE';
  frAuthorizeEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;
  frAuthorizeEmployee.DocButtonVisible:= False;
  frCreateDateInterval.FieldNames:= 'CREATE_BEGIN_DATE; CREATE_END_DATE';
  frCreateEmployee.FieldNames:= 'CREATE_EMPLOYEE_CODE';
  frCreateEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;
  frCreateEmployee.DocButtonVisible:= False;
  frStornoDateInterval.FieldNames:= 'STORNO_BEGIN_DATE; STORNO_END_DATE';
  frStornoEmployee.FieldNames:= 'STORNO_EMPLOYEE_CODE';
  frStornoEmployee.OuterAllEmployeesDataSet:= cdsEmployeeFrameAllEmployees;
  frStornoEmployee.DocButtonVisible:= False;
end;

end.
