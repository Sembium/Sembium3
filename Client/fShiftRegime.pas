unit fShiftRegime;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fMasterDetailForm, ExtCtrls, JvButtons, DB, AbmesFields,
  ParamDataSet, ActnList, DBClient, AbmesClientDataSet, Buttons,
  GridsEh, DBGridEh, AbmesDBGrid, ComCtrls, ToolWin, DBCtrls, ColorNavigator,
  StdCtrls, fBaseFrame, fDBFrame, fFieldEditFrame, fDateIntervalFrame, dDocClient,
  uClientTypes, JvComponent, JvCaptionButton, Mask,
  JvComponentBase, Vcl.Menus, System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh;

const
  Epsilon = 0.0000001;

type
  TfmShiftRegime = class(TMasterDetailForm)
    pnlTop: TPanel;
    lblShiftRegimeNo: TLabel;
    cdsShifts: TAbmesClientDataSet;
    cdsShiftsSHIFT_CODE: TAbmesFloatField;
    cdsShiftsSHIFT_NAME: TAbmesWideStringField;
    cdsShiftsSHIFT_ABBREV: TAbmesWideStringField;
    cdsShiftsSHIFT_IDENTIFIER: TAbmesWideStringField;
    cdsDetail_SHIFT_ABBREV: TAbmesWideStringField;
    cdsGridDataSHIFT_TIMED_REGIME_CODE: TAbmesFloatField;
    cdsGridDataSHIFT_REGIME_CODE: TAbmesFloatField;
    cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsGridDataEND_DATE: TAbmesSQLTimeStampField;
    cdsGridDataFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField;
    cdsGridDataCYCLE_DURATION_DAYS: TAbmesFloatField;
    cdsGridDataqryShiftCycle: TDataSetField;
    cdsDetailSHIFT_CYCLE_CODE: TAbmesFloatField;
    cdsDetailSHIFT_TIMED_REGIME_CODE: TAbmesFloatField;
    cdsDetailSHIFT_CYCLE_NO: TAbmesFloatField;
    cdsDetailSHIFT_CODE: TAbmesFloatField;
    cdsDetailIS_WORK_CYCLE: TAbmesFloatField;
    cdsDetailWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField;
    cdsDetailWORKDAY_END_TIME: TAbmesSQLTimeStampField;
    cdsDetailWORKDAY_DURATION_HOURS: TAbmesFloatField;
    cdsDetailWORKDAY_DENSITY_PERCENT: TAbmesFloatField;
    edtShiftRegimeNo: TDBEdit;
    cdsGridData_CALENDAR_DAYS: TAbmesFloatField;
    cdsGridData_WORK_DAYS: TAbmesFloatField;
    edtShiftRegimeName: TDBEdit;
    lblShiftRegimeName: TLabel;
    cdsGridData_MAX_SHIFT_TIMED_REGIME_CODE: TAggregateField;
    cdsDataSHIFT_REGIME_CODE: TAbmesFloatField;
    cdsDataSHIFT_REGIME_NO: TAbmesFloatField;
    cdsDataSHIFT_REGIME_NAME: TAbmesWideStringField;
    cdsDataqryShiftTimedRegime: TDataSetField;
    cdsDetail_CYCLE_DURATION_DAYS: TAbmesFloatField;
    lblShiftTimedRegimes: TLabel;
    lblShiftCycles: TLabel;
    cdsDetailqryShiftCycleBreak: TDataSetField;
    cdsGridDataIS_OVERTIME: TAbmesFloatField;
    btnShiftRegimeCalendar: TBitBtn;
    actShiftRegimeCalendar: TAction;
    cdsGridDataIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField;
    cdsDetail_IS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField;
    cdsDetail_WORKDAY_WORKTIME_HOURS: TAbmesFloatField;
    cdsDetailWORKTIME_BREAK_DURATION_HOURS: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsDataNewRecord(DataSet: TDataSet);
    procedure cdsGridDataNewRecord(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cdsDetailIS_WORK_CYCLEChange(Sender: TField);
    procedure cdsDetailWORKDAY_DENSITY_PERCENTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailWORKDAY_DENSITY_PERCENTSetText(Sender: TField;
      const Text: String);
    procedure cdsGridDataAfterOpen(DataSet: TDataSet);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cdsDetailCalcFields(DataSet: TDataSet);
    procedure cdsGridDataCalcFields(DataSet: TDataSet);
    procedure cdsGridDataBeforePost(DataSet: TDataSet);
    procedure cdsDetailBeforeDelete(DataSet: TDataSet);
    procedure actShiftRegimeCalendarExecute(Sender: TObject);
    procedure actShiftRegimeCalendarUpdate(Sender: TObject);
    procedure cdsGridDataIS_CYCLE_ON_WORKDAYS_ONLYChange(Sender: TField);
  private
    FMinShiftCycleCode: Integer;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure DoApplyUpdates; override;
    function ShowEditForm(AEditMode: TEditMode): Boolean; override;
    function ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean; override;
  public
    class function CanEditOuterDataSet: Boolean; override;
  end;

implementation

uses
  dMain, fShiftTimedRegime, fShiftCycle, uUtils, fGridForm, fDBDataForm,
  uUserActivityConsts, uClientUtils, fShiftRegimeCalendar, DateUtils,
  fEditForm, uClientDateTime, uServerMessageIds;

{$R *.dfm}

resourcestring
  SInvalidValue = 'Невалидна стойност';
  SInvalidDurationHours = 'Несъответстващи времеви интервали';
  SInvalidNo = 'Некоректен ред на номерацията';

{ TfmWorkPeriod }

class function TfmShiftRegime.CanEditOuterDataSet: Boolean;
begin
  Result:= False;
end;

procedure TfmShiftRegime.FormCreate(Sender: TObject);
begin
  inherited;
  EditFormClass:= TfmShiftTimedRegime;
  DetailEditFormClass:= TfmShiftCycle;
  RegisterDateFields(cdsGridData);
end;

procedure TfmShiftRegime.OpenDataSets;
begin
  inherited;
  cdsShifts.Open;
end;

procedure TfmShiftRegime.CloseDataSets;
begin
  inherited;
  cdsShifts.Close;
end;

procedure TfmShiftRegime.cdsDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDataSHIFT_REGIME_CODE.AsInteger:= -1;
end;

procedure TfmShiftRegime.cdsGridDataNewRecord(DataSet: TDataSet);
begin
  inherited;

  cdsGridDataSHIFT_TIMED_REGIME_CODE.AsInteger:= VarToInt(cdsGridData_MAX_SHIFT_TIMED_REGIME_CODE.Value)+1;

  cdsGridDataFOLLOWS_CALENDAR_OFFDAYS.AsBoolean:= True;
  cdsGridDataIS_CYCLE_ON_WORKDAYS_ONLY.AsBoolean:= False;
  cdsGridDataIS_OVERTIME.AsBoolean:= False;
end;

procedure TfmShiftRegime.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;

  Dec(FMinShiftCycleCode);
  cdsDetailSHIFT_CYCLE_CODE.AsInteger:= FMinShiftCycleCode;

  cdsDetailIS_WORK_CYCLE.AsBoolean:= True;
end;

procedure TfmShiftRegime.cdsDetailIS_WORK_CYCLEChange(Sender: TField);
begin
  inherited;
  if (not Sender.AsBoolean) then
    begin
      cdsDetailWORKDAY_BEGIN_TIME.Clear;
      cdsDetailWORKDAY_END_TIME.Clear;
      cdsDetailWORKDAY_DURATION_HOURS.Clear;
      cdsDetailWORKDAY_DENSITY_PERCENT.Clear;
    end;
end;

procedure TfmShiftRegime.cdsDetailBeforePost(DataSet: TDataSet);
var
  Duration: Real;
  Catch: Real;
begin
  inherited;
  CheckRequiredFields(DataSet);

  if (cdsDetailIS_WORK_CYCLE.AsBoolean) then
    begin
      CheckRequiredFields(
        [cdsDetailWORKDAY_BEGIN_TIME,
         cdsDetailWORKDAY_END_TIME,
         cdsDetailWORKDAY_DURATION_HOURS,
         cdsDetailWORKDAY_DENSITY_PERCENT]
      );

      Duration:= Frac(cdsDetailWORKDAY_END_TIME.AsDateTime) - Frac(cdsDetailWORKDAY_BEGIN_TIME.AsDateTime);
      if (Duration <= 0) then
        Duration:= 1 + Duration;

      Catch:= cdsDetailWORKDAY_DURATION_HOURS.AsFloat/24 - Duration;
      if (Abs(Catch) >= Epsilon) then
        if (Catch > 0) then
          raise Exception.Create(SInvalidDurationHours);
    end;  { if }
end;

procedure TfmShiftRegime.cdsDetailWORKDAY_DENSITY_PERCENTGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmShiftRegime.cdsDetailWORKDAY_DENSITY_PERCENTSetText(
  Sender: TField; const Text: String);
var
  d: Real;
begin
  inherited;
  if (Text = '') then
    Sender.Clear
  else
    begin
      try
        d:= StrToInt(Text) / 100;
      except
        raise Exception.Create(SInvalidValue);
      end;  { try }

      if (d < 0) or (d > 100) then
        raise Exception.Create(SInvalidValue);

      Sender.AsFloat:= d;
    end;
end;

procedure TfmShiftRegime.cdsGridDataAfterOpen(DataSet: TDataSet);
var
  Field: TField;
begin
  inherited;
  Field:= OuterDataSet.FindField('SHIFT_TIMED_REGIME_CODE');

  if Assigned(Field) then
    cdsGridData.Locate('SHIFT_TIMED_REGIME_CODE', Field.AsInteger, []);
end;

procedure TfmShiftRegime.cdsDetailCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsDetail_CYCLE_DURATION_DAYS.AsInteger:= cdsGridDataCYCLE_DURATION_DAYS.AsInteger;
  cdsDetail_IS_CYCLE_ON_WORKDAYS_ONLY.AsBoolean:= cdsGridDataIS_CYCLE_ON_WORKDAYS_ONLY.AsBoolean;

  if cdsDetailWORKDAY_DURATION_HOURS.IsNull then
    cdsDetail_WORKDAY_WORKTIME_HOURS.Clear
  else
    cdsDetail_WORKDAY_WORKTIME_HOURS.AsFloat:=
      cdsDetailWORKDAY_DURATION_HOURS.AsFloat - cdsDetailWORKTIME_BREAK_DURATION_HOURS.AsFloat;
end;

procedure TfmShiftRegime.DoApplyUpdates;
var
  GridBookmark: TBookmark;
  DetailBookmark: TBookmark;
  ExpectedNo: Integer;
begin
  cdsDetail.DisableControls;
  try
    cdsGridData.DisableControls;
    try
      DetailBookmark:= cdsDetail.Bookmark;
      try
        GridBookmark:= cdsGridData.Bookmark;
        try
          cdsGridData.First;
          while not cdsGridData.Eof do
            begin
              ExpectedNo:= 1;
              cdsDetail.First;
              while (not cdsDetail.Eof) do
                begin
                  if (ExpectedNo <> cdsDetailSHIFT_CYCLE_NO.AsInteger) then
                    begin
                      DetailBookmark:= cdsDetail.Bookmark;
                      GridBookmark:= cdsGridData.Bookmark;
                      raise Exception.Create(SInvalidNo);
                    end;  { if }

                  Inc(ExpectedNo);
                  cdsDetail.Next;
                end;  { while }

              cdsGridData.Next;
            end;  { while }
        finally
          cdsGridData.Bookmark:= GridBookmark;
        end;  { try }
      finally
        cdsDetail.Bookmark:= DetailBookmark;
      end;  { try }
    finally
      cdsGridData.EnableControls;
    end;  { try }
  finally
    cdsDetail.EnableControls;
  end;  { try }

  inherited;
end;

procedure TfmShiftRegime.cdsGridDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsGridDataBEGIN_DATE.IsNull or cdsGridDataEND_DATE.IsNull then
    cdsGridData_CALENDAR_DAYS.Clear
  else
    cdsGridData_CALENDAR_DAYS.AsInteger:=
      Trunc(cdsGridDataEND_DATE.AsDateTime) - Trunc(cdsGridDataBEGIN_DATE.AsDateTime) + 1;


  if cdsGridDataBEGIN_DATE.IsNull or cdsGridDataEND_DATE.IsNull then
    cdsGridData_WORK_DAYS.Clear
  else
    cdsGridData_WORK_DAYS.AsInteger:=
      dmMain.CountWorkdays(cdsGridDataBEGIN_DATE.AsDateTime, cdsGridDataEND_DATE.AsDateTime);
end;

procedure TfmShiftRegime.cdsGridDataIS_CYCLE_ON_WORKDAYS_ONLYChange(Sender: TField);
begin
  inherited;
  if Sender.AsBoolean then
    cdsGridDataFOLLOWS_CALENDAR_OFFDAYS.AsBoolean:= True;
end;

function TfmShiftRegime.ShowEditForm(AEditMode: TEditMode): Boolean;
begin
  if (AEditMode <> emReadOnly) and
     (cdsGridDataBEGIN_DATE.AsDateTime <= ContextDate) then
    LoginContext.CheckUserActivity(uaShiftRegimesActiveEdit);

  Result:= inherited ShowEditForm(AEditMode);
end;

function TfmShiftRegime.ShowDetailEditForm(AEditMode: TEditMode; ADefaultsOrigin: TDefaultsOrigin): Boolean;
begin
  if (AEditMode <> emReadOnly) and
     (cdsGridDataBEGIN_DATE.AsDateTime <= ContextDate) then
    LoginContext.CheckUserActivity(uaShiftRegimesActiveEdit);

  Result:= inherited ShowDetailEditForm(AEditMode, ADefaultsOrigin);
end;

procedure TfmShiftRegime.cdsGridDataBeforePost(DataSet: TDataSet);
begin
  CheckDatePeriod(cdsGridDataBEGIN_DATE, cdsGridDataEND_DATE);

  if (cdsGridDataBEGIN_DATE.AsDateTime < MinDate) or
     (cdsGridDataEND_DATE.AsDateTime > MaxDate) then
    begin
      cdsGridDataBEGIN_DATE.FocusControl;
      raise Exception.Create(SIncorrectDatePeriodId);
    end;

  if (cdsGridDataBEGIN_DATE.AsDateTime <= ContextDate) then
    LoginContext.CheckUserActivity(uaShiftRegimesActiveEdit);

  inherited;
end;

procedure TfmShiftRegime.cdsDetailBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with cdsDetailqryShiftCycleBreak.NestedDataSet do
    while not (Bof and Eof) do
      Delete;
end;

procedure TfmShiftRegime.actShiftRegimeCalendarExecute(Sender: TObject);
var
  CurrentDate: TDateTime;
begin
  inherited;
  CurrentDate:= ContextDate;

  TfmShiftRegimeCalendar.ShowForm(
    nil,
    nil,
    emReadOnly,
    cdsGridDataSHIFT_REGIME_CODE.AsInteger,
    EncodeDate(YearOf(CurrentDate), MonthOf(CurrentDate), 1));
end;

procedure TfmShiftRegime.actShiftRegimeCalendarUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:=
    (cdsData.State = dsBrowse) and
    (cdsData.ChangeCount = 0);
end;

end.
