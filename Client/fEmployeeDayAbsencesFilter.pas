unit fEmployeeDayAbsencesFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponent, JvCaptionButton, ActnList, JvExControls, JvDBLookup,
  Buttons, StdCtrls, ExtCtrls, fDateIntervalFrame, fBaseFrame, fDBFrame,
  fFieldEditFrame, fEmployeeFieldEditFrame;

type
  TfmEmployeeDayAbsencesFilter = class(TFilterForm)
    frEmployee: TfrEmployeeFieldEditFrame;
    gbDates: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    grpReason: TGroupBox;
    cdsEmpDayAbsenceReasons: TAbmesClientDataSet;
    cdsEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    cdsEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField;
    cdsEmpDayAbsenceReasonsqryEmpDayAbsenceDocTypes: TDataSetField;
    JvDBLookupCombo1: TJvDBLookupCombo;
    dsEmpDayAbsenceReasons: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    function GetDBFrameReadOnly(AFrame: TDBFrame): Boolean; override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TfmEmployeeDayAbsencesFilter }

procedure TfmEmployeeDayAbsencesFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frEmployee.FieldNames:= 'EMPLOYEE_CODE';
end;

procedure TfmEmployeeDayAbsencesFilter.OpenDataSets;
begin
  inherited;
  cdsEmpDayAbsenceReasons.Open;
end;

procedure TfmEmployeeDayAbsencesFilter.CloseDataSets;
begin
  cdsEmpDayAbsenceReasons.Close;
  inherited;
end;

function TfmEmployeeDayAbsencesFilter.GetDBFrameReadOnly(
  AFrame: TDBFrame): Boolean;
begin
  if (AFrame = frEmployee) and
     (frEmployee.FieldCount > 0) and
     frEmployee.Fields[0].ReadOnly then
    Exit(True);

  Result:= inherited GetDBFrameReadOnly(AFrame);
end;

end.
