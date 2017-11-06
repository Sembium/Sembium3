unit fShiftCycleBreaks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fRightFlatButtonGridForm, JvComponent, JvCaptionButton, DB,
  AbmesFields, ParamDataSet, ActnList, DBClient,
  AbmesClientDataSet, GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin,
  DBCtrls, ColorNavigator, Buttons, StdCtrls, ExtCtrls, Vcl.Menus, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls;

type
  TfmShiftCycleBreaks = class(TRightFlatButtonGridForm)
    cdsGridDataSHIFT_CYCLE_BREAK_CODE: TAbmesFloatField;
    cdsGridDataSHIFT_CYCLE_CODE: TAbmesFloatField;
    cdsGridDataBREAK_BEGIN_TIME: TAbmesSQLTimeStampField;
    cdsGridDataBREAK_END_TIME: TAbmesSQLTimeStampField;
    cdsGridDataBREAK_DURATION_HOURS: TAbmesFloatField;
    cdsGridData_MAX_SHIFT_CYCLE_BREAK_CODE: TAggregateField;
    cdsGridData_TOTAL_BREAK_DURATION_HOURS: TAggregateField;
    cdsGridDataIS_WORKTIME: TAbmesFloatField;
    cdsGridData_WORKTIME_BREAK_DURATION_HOURS: TAggregateField;
    procedure FormCreate(Sender: TObject);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure actFormUpdate(Sender: TObject);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsGridDataAfterPost(DataSet: TDataSet);
    procedure cdsGridDataAfterDelete(DataSet: TDataSet);
  private
    function IsWorkCycle: Boolean;
    procedure UpdateShiftCycle;
  protected
    function GetInsertRecordEnabled: Boolean; override;
    function GetDelRecordEnabled: Boolean; override;
    function GetEditRecordEnabled: Boolean; override;
    function GetExcelExportEnabled: Boolean; override;
  public
    { Public declarations }
  end;

implementation

uses
  fShiftCycleBreak, uUtils, fGridForm, uClientUtils;

{$R *.dfm}

procedure TfmShiftCycleBreaks.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmShiftCycleBreak;
end;

procedure TfmShiftCycleBreaks.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGridDataSHIFT_CYCLE_BREAK_CODE.AsInteger:=
    VarToInt(cdsGridData_MAX_SHIFT_CYCLE_BREAK_CODE.AsVariant) + 1;
  cdsGridDataIS_WORKTIME.AsBoolean:= False;
end;

function TfmShiftCycleBreaks.IsWorkCycle: Boolean;
begin
  Result:=
    cdsGridData.DataSetField.DataSet.FieldByName('IS_WORK_CYCLE').AsBoolean;
end;

function TfmShiftCycleBreaks.GetDelRecordEnabled: Boolean;
begin
  Result:= inherited GetDelRecordEnabled and IsWorkCycle;
end;

function TfmShiftCycleBreaks.GetEditRecordEnabled: Boolean;
begin
  Result:= inherited GetEditRecordEnabled and IsWorkCycle;
end;

function TfmShiftCycleBreaks.GetInsertRecordEnabled: Boolean;
begin
  Result:= inherited GetInsertRecordEnabled and IsWorkCycle;
end;

function TfmShiftCycleBreaks.GetExcelExportEnabled: Boolean;
begin
  Result:= inherited GetEditRecordEnabled and IsWorkCycle;
end;

procedure TfmShiftCycleBreaks.UpdateShiftCycle;
var
  v: Variant;
begin
  if Assigned(cdsGridData.DataSetField) then
    begin
      CheckEditMode(cdsGridData.DataSetField.DataSet);

      if (cdsGridData.DataSetField.DataSet.FieldByName('WORKTIME_BREAK_DURATION_HOURS').AsFloat <> cdsGridData_WORKTIME_BREAK_DURATION_HOURS.AsVarFloat) then
        cdsGridData.DataSetField.DataSet.FieldByName('WORKTIME_BREAK_DURATION_HOURS').AsFloat:= cdsGridData_WORKTIME_BREAK_DURATION_HOURS.AsVarFloat;

      with cdsGridData.DataSetField.DataSet.FieldByName('WORKDAY_DURATION_HOURS') do
        begin
          v:= AsVariant;
          AsVariant:= Null;
          AsVariant:= v;
        end;
    end;
end;

procedure TfmShiftCycleBreaks.actFormUpdate(Sender: TObject);
begin
  inherited;

  grdData.Color:= ReadOnlyColors[not IsWorkCycle];

  if IsWorkCycle then
    grdData.DataSource:= dsGridData
  else
    grdData.DataSource:= nil;
  navData.DataSource:= grdData.DataSource;
end;

procedure TfmShiftCycleBreaks.cdsGridDataAfterDelete(DataSet: TDataSet);
begin
  inherited;
  UpdateShiftCycle;
end;

procedure TfmShiftCycleBreaks.cdsGridDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  UpdateShiftCycle;
end;

procedure TfmShiftCycleBreaks.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  CheckDatePeriod(cdsGridDataBREAK_BEGIN_TIME, cdsGridDataBREAK_END_TIME);

  if (LargeZero(
       (cdsGridDataBREAK_DURATION_HOURS.AsFloat / 24) -
       (cdsGridDataBREAK_END_TIME.AsDateTime - cdsGridDataBREAK_BEGIN_TIME.AsDateTime),
       0.000001
      ) > 0) then
    begin
      cdsGridDataBREAK_DURATION_HOURS.FocusControl;
      raise Exception.Create('Продължителността надвишава времето между Начало и Край!');
    end;
end;

end.
