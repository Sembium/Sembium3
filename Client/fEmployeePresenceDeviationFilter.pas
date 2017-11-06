unit fEmployeePresenceDeviationFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fFilterForm, DB, AbmesFields, DBClient, AbmesClientDataSet,
  JvComponent, JvCaptionButton, ActnList, JvExControls, JvDBLookup,
  Buttons, StdCtrls, ExtCtrls, fBaseFrame, fDBFrame, fFieldEditFrame,
  fEmployeeFieldEditFrame, fDateIntervalFrame, AbmesDBCheckBox;

type
  TfmEmployeePresenceDeviationFilter = class(TFilterForm)
    frEmployee: TfrEmployeeFieldEditFrame;
    gbDates: TGroupBox;
    frDateInterval: TfrDateIntervalFrame;
    gbDeviationTypes: TGroupBox;
    chkIsNegativeDeviation: TAbmesDBCheckBox;
    chkIsPositiveDeviation: TAbmesDBCheckBox;
    chkIsApprovedExtraWorkDeviation: TAbmesDBCheckBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetDBFrameReadOnly(AFrame: TDBFrame): Boolean; override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfmEmployeePresenceDeviationFilter.FormCreate(Sender: TObject);
begin
  inherited;
  frEmployee.FieldNames:= 'EMPLOYEE_CODE';
end;

function TfmEmployeePresenceDeviationFilter.GetDBFrameReadOnly(
  AFrame: TDBFrame): Boolean;
begin
  if (AFrame = frEmployee) and
     (frEmployee.FieldCount > 0) and
     frEmployee.Fields[0].ReadOnly then
    Exit(True);

  Result:= inherited GetDBFrameReadOnly(AFrame);
end;

end.

