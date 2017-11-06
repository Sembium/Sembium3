unit fOrgWorkActivities;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, DBGridEhGrouping, Menus, DB, AbmesFields, ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls,
  fOrgWorkActivity;

type
  [EditFormClass(TfmOrgWorkActivity)]
  TfmOrgWorkActivities = class(TGridForm)
    cdsOrgWorkModes: TAbmesClientDataSet;
    cdsGridData_MAX_ORG_WORK_ACTIVITY_CODE: TAggregateField;
    cdsGridData_MAX_ORG_WORK_ACTIVITY_NO: TAggregateField;
    cdsGridDataORG_WORK_ACTIVITY_CODE: TAbmesFloatField;
    cdsGridDataORG_WORK_ACTIVITY_NO: TAbmesFloatField;
    cdsGridDataORG_WORK_ACTIVITY_NAME: TAbmesWideStringField;
    cdsGridDataORG_WORK_MODE_CODE: TAbmesFloatField;
    cdsOrgWorkModesORG_WORK_MODE_CODE: TAbmesFloatField;
    cdsOrgWorkModesORG_WORK_MODE_NO: TAbmesFloatField;
    cdsOrgWorkModesORG_WORK_MODE_NAME: TAbmesWideStringField;
    cdsOrgWorkModesORG_WORK_MODE_ABBREV: TAbmesWideStringField;
    cdsGridData_ORG_WORK_MODE_NAME: TAbmesWideStringField;
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uUtils;

{$R *.dfm}

procedure TfmOrgWorkActivities.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataORG_WORK_ACTIVITY_CODE.AsInteger:= cdsGridData_MAX_ORG_WORK_ACTIVITY_CODE.AsVarInteger + 1;
  cdsGridDataORG_WORK_ACTIVITY_NO.AsInteger:= cdsGridData_MAX_ORG_WORK_ACTIVITY_NO.AsVarInteger + 1;
end;

end.
