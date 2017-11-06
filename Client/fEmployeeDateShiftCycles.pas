unit fEmployeeDateShiftCycles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fGridForm, JvComponent, JvCaptionButton, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  Buttons, StdCtrls, ExtCtrls;

type
  TfmEmployeeDateShiftCycles = class(TGridForm)
    cdsGridDataSHIFT_CYCLE_CODE: TAbmesFloatField;
    cdsGridDataWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField;
    cdsGridDataWORKDAY_END_TIME: TAbmesSQLTimeStampField;
    cdsGridDataWORKDAY_DURATION_HOURS: TAbmesFloatField;
    cdsGridDataAFFECTS_EMP_AVAILABILITY: TAbmesFloatField;
    cdsGridData_SHOW_HOURS: TAbmesWideStringField;
    cdsGridDataSHIFT_ABBREV: TAbmesWideStringField;
    cdsGridDataIS_OVERTIME: TAbmesFloatField;
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dMain;

{$R *.dfm}

procedure TfmEmployeeDateShiftCycles.cdsGridDataCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsGridData_SHOW_HOURS.AsString:=
    Format('%s - %s / %s', [
      cdsGridDataWORKDAY_BEGIN_TIME.DisplayText,
      cdsGridDataWORKDAY_END_TIME.DisplayText,
      cdsGridDataWORKDAY_DURATION_HOURS.DisplayText
    ]);
end;

end.
