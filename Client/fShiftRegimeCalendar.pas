unit fShiftRegimeCalendar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fEditForm, DB, DBClient, AbmesClientDataSet, JvComponent,
  JvCaptionButton, ActnList, StdCtrls, Buttons, ExtCtrls, dDocClient,
  uClientTypes, Mask, DBCtrls, AbmesFields, ComCtrls, GridsEh, DBGrids,
  DBGridEh, AbmesDBGrid, uShiftRegimeCalendarUtils, JvComponentBase, ToolWin,
  ColorNavigator, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, DBAxisGridsEh, System.Actions;

type

  TfmShiftRegimeCalendar = class(TEditForm)
    lblShiftRegimeNo: TLabel;
    lblShiftRegimeName: TLabel;
    edtShiftRegimeNo: TDBEdit;
    edtShiftRegimeName: TDBEdit;
    cdsDataSHIFT_REGIME_CODE: TAbmesFloatField;
    cdsDataSHIFT_REGIME_NO: TAbmesFloatField;
    cdsDataSHIFT_REGIME_NAME: TAbmesWideStringField;
    cdsDataqryShiftTimedRegime: TDataSetField;
    cdsShiftRegimeCalendar: TAbmesClientDataSet;
    edtYear: TEdit;
    lblYear: TLabel;
    udYear: TUpDown;
    cbMonth: TComboBox;
    lblMonth: TLabel;
    cdsMonthShiftTimedRegimes: TAbmesClientDataSet;
    cdsDates: TAbmesClientDataSet;
    cdsDatesTHE_DATE: TAbmesSQLTimeStampField;
    cdsDatesDAYS_OFF: TAbmesFloatField;
    cdsDatesSHIFTS: TAbmesWideStringField;
    grdCalendar: TAbmesDBGrid;
    cdsCalendar: TAbmesClientDataSet;
    cdsCalendarWEEK_NO: TAbmesFloatField;
    cdsCalendarWEEK_DAY_1: TAbmesSQLTimeStampField;
    cdsCalendarWEEK_DAY_2: TAbmesSQLTimeStampField;
    cdsCalendarWEEK_DAY_3: TAbmesSQLTimeStampField;
    cdsCalendarWEEK_DAY_4: TAbmesSQLTimeStampField;
    cdsCalendarWEEK_DAY_5: TAbmesSQLTimeStampField;
    cdsCalendarWEEK_DAY_6: TAbmesSQLTimeStampField;
    cdsCalendarWEEK_DAY_7: TAbmesSQLTimeStampField;
    cdsCalendarWEEK_DAY_1_IS_DAY_OFF: TAbmesFloatField;
    dsCalendar: TDataSource;
    cdsCalendarIS_WEEK_DAY_2_DAY_OFF: TAbmesFloatField;
    cdsCalendarIS_WEEK_DAY_3_DAY_OFF: TAbmesFloatField;
    cdsCalendarIS_WEEK_DAY_4_DAY_OFF: TAbmesFloatField;
    cdsCalendarIS_WEEK_DAY_5_DAY_OFF: TAbmesFloatField;
    cdsCalendarIS_WEEK_DAY_6_DAY_OFF: TAbmesFloatField;
    cdsCalendarIS_WEEK_DAY_7_DAY_OFF: TAbmesFloatField;
    cdsCalendarWEEK_DAY_1_SHIFTS: TAbmesWideStringField;
    cdsCalendarWEEK_DAY_2_SHIFTS: TAbmesWideStringField;
    cdsCalendarWEEK_DAY_3_SHIFTS: TAbmesWideStringField;
    cdsCalendarWEEK_DAY_4_SHIFTS: TAbmesWideStringField;
    cdsCalendarWEEK_DAY_5_SHIFTS: TAbmesWideStringField;
    cdsCalendarWEEK_DAY_6_SHIFTS: TAbmesWideStringField;
    cdsCalendarWEEK_DAY_7_SHIFTS: TAbmesWideStringField;
    dsDates: TDataSource;
    dsShiftRegimeMonthCalendarData: TDataSource;
    cdsShiftRegimeCalendarTHE_DATE: TAbmesSQLTimeStampField;
    cdsShiftRegimeCalendarSHIFT_CYCLE_NO: TAbmesFloatField;
    cdsShiftRegimeCalendarCYCLE_DURATION_DAYS: TAbmesFloatField;
    cdsShiftRegimeCalendarWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField;
    cdsShiftRegimeCalendarWORKDAY_END_TIME: TAbmesSQLTimeStampField;
    cdsShiftRegimeCalendarWORKDAY_DURATION_HOURS: TAbmesFloatField;
    cdsShiftRegimeCalendarWORKDAY_DENSITY_PERCENT: TAbmesFloatField;
    cdsShiftRegimeCalendarSHIFT_ABBREV: TAbmesWideStringField;
    gbShiftTimedRegime: TGroupBox;
    lblTimedRegimeBeginDate: TLabel;
    edtTimedRegimeBeginDate: TDBEdit;
    lblTimedRegimeEndDate: TLabel;
    edtTimedRegimeEndDate: TDBEdit;
    edtTimedRegimeDays: TDBEdit;
    lblTimedRegimeDays: TLabel;
    edtTimedRegimeWorkdays: TDBEdit;
    lblTimedRegimeWorkdays: TLabel;
    edtTimedRegimeFollowsDaysOff: TDBEdit;
    lblTimedRegimeFollowsDaysOff: TLabel;
    edtTimedRegimeIsOvertime: TDBEdit;
    lblTimedRegimeIsOvertime: TLabel;
    lblShiftCycles: TLabel;
    grdShiftCycles: TAbmesDBGrid;
    dsMonthShiftTimedRegimes: TDataSource;
    cdsMonthShiftTimedRegimesBEGIN_DATE: TAbmesSQLTimeStampField;
    cdsMonthShiftTimedRegimesEND_DATE: TAbmesSQLTimeStampField;
    cdsMonthShiftTimedRegimesCALENDAR_DAYS: TAbmesFloatField;
    cdsMonthShiftTimedRegimesFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField;
    cdsMonthShiftTimedRegimesIS_OVERTIME: TAbmesFloatField;
    btnShowOneInterval: TSpeedButton;
    cdsShiftRegimeCalendarIS_WORK_CYCLE: TAbmesFloatField;
    cdsShiftRegimeCalendarFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField;
    cdsDatesIS_COVERED: TAbmesFloatField;
    cdsCalendarIS_WEEK_DAY_1_COVERED: TAbmesFloatField;
    cdsCalendarIS_WEEK_DAY_2_COVERED: TAbmesFloatField;
    cdsCalendarIS_WEEK_DAY_3_COVERED: TAbmesFloatField;
    cdsCalendarIS_WEEK_DAY_4_COVERED: TAbmesFloatField;
    cdsCalendarIS_WEEK_DAY_5_COVERED: TAbmesFloatField;
    cdsCalendarIS_WEEK_DAY_6_COVERED: TAbmesFloatField;
    cdsCalendarIS_WEEK_DAY_7_COVERED: TAbmesFloatField;
    cdsMonthShiftTimedRegimesWORKDAYS: TAbmesFloatField;
    btnMonthIncrease: TBitBtn;
    actMonthIncrease: TAction;
    actMonthDecrease: TAction;
    actShowOneInterval: TAction;
    btnMonthDecrease: TBitBtn;
    cdsShiftRegimeCalendarIS_DAY_OFF: TAbmesFloatField;
    cdsShiftRegimeCalendarSHIFT_TIMED_REGIME_CODE: TAbmesFloatField;
    cdsMonthShiftTimedRegimesSHIFT_TIMED_REGIME_CODE: TAbmesFloatField;
    cdsDatesSHIFT_TIMED_REGIME_CODE: TAbmesFloatField;
    actPrintCalendar: TAction;
    btnPrintCalendar: TBitBtn;
    lblCycleDurationDays: TLabel;
    cdsMonthShiftTimedRegimesCYCLE_DURATION_DAYS: TAbmesFloatField;
    edtCycleDurationDays: TDBEdit;
    cdsShiftRegimeCalendarIS_OFFICIAL_DAY_OFF: TAbmesFloatField;
    cdsSortedShiftRegimeCalendar: TAbmesClientDataSet;
    cdsSortedShiftRegimeCalendarTHE_DATE: TAbmesSQLTimeStampField;
    cdsSortedShiftRegimeCalendarIS_DAY_OFF: TAbmesFloatField;
    cdsSortedShiftRegimeCalendarFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField;
    cdsSortedShiftRegimeCalendarSHIFT_CYCLE_NO: TAbmesFloatField;
    cdsSortedShiftRegimeCalendarSHIFT_TIMED_REGIME_CODE: TAbmesFloatField;
    cdsSortedShiftRegimeCalendarCYCLE_DURATION_DAYS: TAbmesFloatField;
    cdsSortedShiftRegimeCalendarIS_WORK_CYCLE: TAbmesFloatField;
    cdsSortedShiftRegimeCalendarWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField;
    cdsSortedShiftRegimeCalendarWORKDAY_END_TIME: TAbmesSQLTimeStampField;
    cdsSortedShiftRegimeCalendarWORKDAY_DURATION_HOURS: TAbmesFloatField;
    cdsSortedShiftRegimeCalendarWORKDAY_DENSITY_PERCENT: TAbmesFloatField;
    cdsSortedShiftRegimeCalendarSHIFT_ABBREV: TAbmesWideStringField;
    cdsSortedShiftRegimeCalendarIS_OFFICIAL_DAY_OFF: TAbmesFloatField;
    actSwitchFilteredShiftCycles: TAction;
    pnlNavigator: TPanel;
    navShiftCycles: TDBColorNavigator;
    tlbShiftCycles: TToolBar;
    btnSwitchFilteredShiftCycles: TToolButton;
    sepSwitchFilteredShiftCycles: TToolButton;
    cdsShiftRegimeCalendarIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField;
    cdsMonthShiftTimedRegimesIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField;
    dbtIsCycleOnWorkdaysOnly: TDBText;
    procedure cdsShiftRegimeCalendarBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsMonthShiftTimedRegimesBeforeOpen(DataSet: TDataSet);
    procedure grdCalendarDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure cdsShiftRegimeCalendarWORKDAY_DENSITY_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsCalendarAfterScroll(DataSet: TDataSet);
    procedure grdCalendarColEnter(Sender: TObject);
    procedure grdShiftCyclesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure actShowOneIntervalExecute(Sender: TObject);
    procedure actMonthDecreaseExecute(Sender: TObject);
    procedure actMonthIncreaseExecute(Sender: TObject);
    procedure actShowOneIntervalUpdate(Sender: TObject);
    procedure cbMonthSelect(Sender: TObject);
    procedure edtYearChange(Sender: TObject);
    procedure actPrintCalendarExecute(Sender: TObject);
    procedure cdsMonthShiftTimedRegimesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsSortedShiftRegimeCalendarWORKDAY_DENSITY_PERCENTGetText(
      Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actSwitchFilteredShiftCyclesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FFormInitialized: Boolean;
    FFillingParamControls: Boolean;
    FMonthBeginDateParam: TDateTime;
    FMonthBeginDate: TDateTime;
    FCalendarMode: TCalendarMode;
    procedure SetMonthBeginDate(const Value: TDateTime);
    procedure FillDatesDataSet;
    procedure FillCalendarDataSet;
    procedure CurrentCellChanged;
    procedure FillDataSets;
    property MonthBeginDate: TDateTime read FMonthBeginDate write SetMonthBeginDate;
    procedure RefreshData;
    procedure ParamsChange;
  protected
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
  public
    procedure Initialize; override;
    procedure SetDataParams(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TeditMode;
      AShiftRegimeCode: Integer;
      AMonthBeginDate: TDate); reintroduce; virtual;
    class function ShowForm(
      AdmDocClient: TdmDocClient;
      ADataSet: TDataSet;
      AEditMode: TEditMode;
      AShiftRegimeCode: Integer;
      AMonthBeginDate: TDate): Boolean;
  end;

implementation

uses
  dMain, uClientUtils, DateUtils, JclStrings, StrUtils, JclDateTime,
  fBaseForm, Math, fDBDataForm, uUtils, fDataForm, rShiftRegimeCalendar,
  uClientDateTime, uScalingUtils;

{$R *.dfm}

{ TfmShiftRegimeCalendar }

procedure TfmShiftRegimeCalendar.SetDataParams(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode; AShiftRegimeCode: Integer;
  AMonthBeginDate: TDate);
begin
  inherited SetDataParams(AdmDocClient, ADataSet, AEditMode);

  cdsData.Params.ParamByName('SHIFT_REGIME_CODE').Value:= AShiftRegimeCode;
  cdsShiftRegimeCalendar.Params.ParamByName('SHIFT_REGIME_CODE').Value:= AShiftRegimeCode;
  FMonthBeginDateParam:= AMonthBeginDate;
end;

class function TfmShiftRegimeCalendar.ShowForm(AdmDocClient: TdmDocClient;
  ADataSet: TDataSet; AEditMode: TEditMode;AShiftRegimeCode: Integer;
  AMonthBeginDate: TDate): Boolean;
var
  f: TfmShiftRegimeCalendar;
begin
  f:= TfmShiftRegimeCalendar.Create(Application);
  try
    f.ReportClass:= TrptShiftRegimeCalendar;
    f.SetDataParams(AdmDocClient, ADataSet, AEditMode, AShiftRegimeCode, AMonthBeginDate);
    f.InternalShowForm;
    Result:= f.IsDataModified;
  finally
    f.ReleaseForm;
  end;  { try }
end;

procedure TfmShiftRegimeCalendar.cdsShiftRegimeCalendarBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsShiftRegimeCalendar.Params.ParamByName('MONTH_BEGIN_DATE').Value:=
    MonthBeginDate;
end;

procedure TfmShiftRegimeCalendar.cdsMonthShiftTimedRegimesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsMonthShiftTimedRegimes.Params.AssignValues(
    cdsShiftRegimeCalendar.Params);
end;

procedure TfmShiftRegimeCalendar.OpenDataSets;
begin
  inherited;
  cdsMonthShiftTimedRegimes.Open;
  cdsShiftRegimeCalendar.Open;
  cdsDates.CreateDataSet;
  cdsCalendar.CreateDataSet;
end;

procedure TfmShiftRegimeCalendar.CloseDataSets;
begin
  cdsCalendar.Close;
  cdsDates.Close;
  cdsShiftRegimeCalendar.Close;
  cdsMonthShiftTimedRegimes.Close;
  inherited;
end;

procedure TfmShiftRegimeCalendar.SetMonthBeginDate(const Value: TDateTime);
var
  y, m, d: Word;
begin
  if not FFillingParamControls then
    if (FMonthBeginDate <> Value) then
      begin
        FMonthBeginDate:= Value;

        FFillingParamControls:= True;
        try
          DecodeDate(FMonthBeginDate, y, m, d);
          edtYear.Text:= IntToStr(y);
          cbMonth.ItemIndex:= m - 1;

          RefreshData;
        finally
          FFillingParamControls:= False;
        end;  { try }
      end;  { if }
end;

procedure TfmShiftRegimeCalendar.RefreshData;
begin
  RefreshDataSet(cdsShiftRegimeCalendar);
  RefreshDataSet(cdsMonthShiftTimedRegimes);
  FillDataSets;
  CurrentCellChanged;
end;

procedure TfmShiftRegimeCalendar.Initialize;
var
  CurrentDate: TDateTime;
begin
  inherited;
  MonthBeginDate:= FMonthBeginDateParam;

  // za da pokazwa tekushtata data w nachaloto
  // reda e waven zashtoto Locate izwikwa CurrentCellChanged, a Col ne
  CurrentDate:= ContextDate;
  grdCalendar.Col:= DayOfTheWeek(CurrentDate);
  cdsCalendar.Locate('WEEK_NO', ISOWeekNumber(CurrentDate), []);

  FFormInitialized:= True;
end;

procedure TfmShiftRegimeCalendar.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  RegisterDateFields(cdsMonthShiftTimedRegimes);

  udYear.Min:= YearOf(MinDate);
  udYear.Max:= YearOf(MaxDate);

  for i:= 1 to 12 do
    cbMonth.Items[i-1]:= FormatSettings.LongMonthNames[i];

  for i:= 1 to 7 do
    cdsCalendar.FieldByName('WEEK_DAY_' + IntToStr(i)).DisplayLabel:=
      FormatSettings.LongDayNames[i mod 7 + 1];
end;

procedure TfmShiftRegimeCalendar.FormShow(Sender: TObject);
begin
  inherited;
  grdCalendar.RowHeight:= ScalePixels(40);
end;

procedure TfmShiftRegimeCalendar.ParamsChange;
begin
  if FFormInitialized then
    MonthBeginDate:= EncodeDate(StrToInt(edtYear.Text), cbMonth.ItemIndex + 1, 1);
end;

procedure TfmShiftRegimeCalendar.cbMonthSelect(Sender: TObject);
begin
  inherited;
  ParamsChange;
end;

procedure TfmShiftRegimeCalendar.edtYearChange(Sender: TObject);
begin
  inherited;
  ParamsChange;
end;

procedure TfmShiftRegimeCalendar.FillDataSets;
begin
  FillDatesDataSet;
  FillCalendarDataSet;
end;

procedure TfmShiftRegimeCalendar.FillDatesDataSet;
var
  Shifts: string;
  ShiftAbbrev: string;
  IsFollowedDayOff: Boolean;
  IsDateCovered: Boolean;
  SavedFiltered: Boolean;
begin
  inherited;
  cdsShiftRegimeCalendar.DisableControls;
  try
    cdsShiftRegimeCalendar.MasterSource:= nil;
    cdsShiftRegimeCalendar.MasterFields:= '';

    SavedFiltered:= cdsShiftRegimeCalendar.Filtered;
    cdsShiftRegimeCalendar.Filtered:= False;
    try
      cdsMonthShiftTimedRegimes.MasterSource:= nil;
      cdsMonthShiftTimedRegimes.MasterFields:= '';

      cdsDates.EmptyDataSet;

      cdsSortedShiftRegimeCalendar.CreateDataSet;
      try
        cdsShiftRegimeCalendar.First;
        while not cdsShiftRegimeCalendar.Eof do
          begin
            cdsSortedShiftRegimeCalendar.Append;
            try
              cdsSortedShiftRegimeCalendar.AssignFields(cdsShiftRegimeCalendar);
              cdsSortedShiftRegimeCalendar.Post;
            except
              cdsSortedShiftRegimeCalendar.Cancel;
              raise;
            end;  { try }

            cdsShiftRegimeCalendar.Next;
          end;  { while }

        Shifts:= '';
        cdsSortedShiftRegimeCalendar.First;
        while not cdsSortedShiftRegimeCalendar.Eof do
          begin
            IsFollowedDayOff:=
              cdsSortedShiftRegimeCalendarIS_DAY_OFF.AsBoolean and
              cdsSortedShiftRegimeCalendarFOLLOWS_CALENDAR_OFFDAYS.AsBoolean;

            IsDateCovered:= not cdsSortedShiftRegimeCalendarSHIFT_CYCLE_NO.IsNull;

            if (not IsFollowedDayOff) and
               IsDateCovered and
               not cdsSortedShiftRegimeCalendarSHIFT_ABBREV.IsNull then
              begin
                ShiftAbbrev:= cdsSortedShiftRegimeCalendarSHIFT_ABBREV.AsString;

                if not cdsSortedShiftRegimeCalendarIS_WORK_CYCLE.AsBoolean then
                  ShiftAbbrev:= NotWorkingShiftCycleChar + ShiftAbbrev + NotWorkingShiftCycleChar;

                if (Shifts = '') then
                  Shifts:= ShiftAbbrev
                else
                  Shifts:= Shifts + ', ' + ShiftAbbrev;
              end;  { if }

            if (gbLast in cdsSortedShiftRegimeCalendar.GetGroupState(1)) then
              begin
                cdsDates.AppendRecord(
                  [cdsSortedShiftRegimeCalendarTHE_DATE.AsVariant,
                  cdsSortedShiftRegimeCalendarIS_OFFICIAL_DAY_OFF.AsVariant,
                  Shifts,
                  IsDateCovered,
                  cdsSortedShiftRegimeCalendarSHIFT_TIMED_REGIME_CODE.AsVariant]);

                Shifts:= '';
              end;  { if }

            cdsSortedShiftRegimeCalendar.Next;
          end;  { while }
      finally
        cdsSortedShiftRegimeCalendar.Close;
      end;  { try }

      cdsMonthShiftTimedRegimes.MasterSource:= dsDates;
      cdsMonthShiftTimedRegimes.MasterFields:= 'SHIFT_TIMED_REGIME_CODE';
    finally
      cdsShiftRegimeCalendar.Filtered:= SavedFiltered;
    end;  { try }

    cdsShiftRegimeCalendar.MasterSource:= dsDates;
    cdsShiftRegimeCalendar.MasterFields:= 'THE_DATE';
  finally
    cdsShiftRegimeCalendar.EnableControls;
  end;  { try }
end;

procedure TfmShiftRegimeCalendar.FillCalendarDataSet;
var
  wn: Integer;
  SaveRecNo: Integer;
begin
  cdsCalendar.DisableControls;
  try
    SaveRecNo:= cdsCalendar.RecNo;
    try
      cdsCalendar.EmptyDataSet;
      cdsDates.First;
      while not cdsDates.Eof do
        begin
          wn:= ISOWeekNumber(cdsDatesTHE_DATE.AsDateTime);

          cdsCalendar.Append;
          try
            cdsCalendarWEEK_NO.AsInteger:= wn;

            while not cdsDates.Eof and
                  (ISOWeekNumber(cdsDatesTHE_DATE.AsDateTime) = wn) do
              begin
                cdsCalendar.FieldByName(Format('WEEK_DAY_%d', [ISODayOfWeek(cdsDatesTHE_DATE.AsDateTime)])).Value:=
                  cdsDatesTHE_DATE.AsVariant;

                cdsDates.Next;
              end;  { while }

            cdsCalendar.Post;
          except
            cdsCalendar.Cancel;
            raise;
          end;  { try }
        end;  { while }
    finally
      if (SaveRecNo = 0) then
        cdsCalendar.First
      else
        cdsCalendar.RecNo:= SaveRecNo;
    end;  { try }
  finally
    cdsCalendar.EnableControls;
  end;  { try }
end;

procedure TfmShiftRegimeCalendar.grdCalendarDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
var
  g: TAbmesDBGrid;
  IsSelected: Boolean;
  IsDateCovered: Boolean;
  IsInCurrentInterval: Boolean;
  MasterInterval: TMasterInterval;
  MasterMonth: TMasterMonth;
  DateOffState: TDateOffState;
  Shifts: string;
begin
  inherited;
  g:= Sender as TAbmesDBGrid;
  IsSelected:= (gdSelected in State);

  if (Column.Index = 0) then
    DrawCalendarCell(g.Canvas, Rect, cdsCalendarWEEK_NO.AsInteger, '', IsSelected,
      FCalendarMode, miNone, mmCurrent, dosWorkday)
  else
    begin
      IsDateCovered:= cdsCalendar.FieldByName(Format('IS_%s_COVERED', [Column.FieldName])).AsBoolean;

      IsInCurrentInterval:=
        ((cdsMonthShiftTimedRegimesBEGIN_DATE.AsDateTime <= Column.Field.AsDateTime) and
         (Column.Field.AsDateTime <= cdsMonthShiftTimedRegimesEND_DATE.AsDateTime));

      MasterInterval:= GetMasterInterval(IsDateCovered, IsInCurrentInterval);

      if (MonthOf(Column.Field.AsDateTime) = MonthOf(MonthBeginDate)) then
        MasterMonth:= mmCurrent
      else
        MasterMonth:= mmOther;

      if cdsCalendar.FieldByName(Format('IS_%s_DAY_OFF', [Column.FieldName])).AsBoolean then
        DateOffState:= dosDayOff
      else
        DateOffState:= dosWorkday;

      if (FCalendarMode = cmShowCurrentInterval) and (MasterInterval = miOther) then
        Shifts:= HiddenShifts
      else
        Shifts:= cdsCalendar.FieldByName(Format('%s_SHIFTS', [Column.FieldName])).AsString;

      DrawCalendarCell(g.Canvas, Rect, DayOfTheMonth(Column.Field.AsDateTime), Shifts,
        IsSelected, FCalendarMode, MasterInterval, MasterMonth, DateOffState);
    end;
end;

procedure TfmShiftRegimeCalendar.cdsShiftRegimeCalendarWORKDAY_DENSITY_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmShiftRegimeCalendar.cdsSortedShiftRegimeCalendarWORKDAY_DENSITY_PERCENTGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  PercentFieldGetText(Sender, Text, DisplayText);
end;

procedure TfmShiftRegimeCalendar.CurrentCellChanged;
begin
  if (grdCalendar.Col = 0) then
    cdsDates.Locate('THE_DATE', cdsCalendarWEEK_DAY_1.AsVariant, [])
  else
    cdsDates.Locate('THE_DATE', grdCalendar.SelectedField.AsVariant, []);

  grdCalendar.Repaint;
end;

procedure TfmShiftRegimeCalendar.cdsCalendarAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not cdsCalendar.ControlsDisabled then
    CurrentCellChanged;
end;

procedure TfmShiftRegimeCalendar.grdCalendarColEnter(Sender: TObject);
begin
  inherited;
  if not cdsCalendar.ControlsDisabled then
    CurrentCellChanged;
end;

procedure TfmShiftRegimeCalendar.grdShiftCyclesDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TfmShiftRegimeCalendar.actSwitchFilteredShiftCyclesExecute(Sender: TObject);
begin
  inherited;
  cdsShiftRegimeCalendar.Filtered:= btnSwitchFilteredShiftCycles.Down;
end;

procedure TfmShiftRegimeCalendar.actMonthDecreaseExecute(Sender: TObject);
begin
  inherited;
  MonthBeginDate:= IncMonth(MonthBeginDate, -1);
end;

procedure TfmShiftRegimeCalendar.actMonthIncreaseExecute(Sender: TObject);
begin
  inherited;
  MonthBeginDate:= IncMonth(MonthBeginDate);
end;

procedure TfmShiftRegimeCalendar.actShowOneIntervalUpdate(Sender: TObject);
begin
  inherited;
  actShowOneInterval.Checked:= (FCalendarMode = cmShowCurrentInterval);
end;

procedure TfmShiftRegimeCalendar.actShowOneIntervalExecute(Sender: TObject);
begin
  inherited;
  case FCalendarMode of
    cmShowAllIntervals:
      FCalendarMode:= cmShowCurrentInterval;
    cmShowCurrentInterval:
      FCalendarMode:= cmShowAllIntervals;
    else
      raise Exception.Create(SNotSupportedMode);
  end;  { case }

  grdCalendar.Repaint;
end;

procedure TfmShiftRegimeCalendar.actPrintCalendarExecute(Sender: TObject);
begin
  inherited;
  cdsMonthShiftTimedRegimes.MasterFields:= '';
  cdsMonthShiftTimedRegimes.MasterSource:= nil;
  try
    cdsMonthShiftTimedRegimes.Filtered:= True;
    try
      TrptShiftRegimeCalendar.PrintReport(
        cdsData,
        nil,
        cdsCalendar,
        cdsMonthShiftTimedRegimes,
        cdsShiftRegimeCalendar,
        cdsDates,
        MonthBeginDate);
    finally
      cdsMonthShiftTimedRegimes.Filtered:= False;
    end;  { try }
  finally
    cdsMonthShiftTimedRegimes.MasterSource:= dsDates;
    cdsMonthShiftTimedRegimes.MasterFields:= 'SHIFT_TIMED_REGIME_CODE';
  end;  { try }
end;

procedure TfmShiftRegimeCalendar.cdsMonthShiftTimedRegimesFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=
    (MonthBeginDate <= cdsMonthShiftTimedRegimesEND_DATE.AsDateTime) and
    (cdsMonthShiftTimedRegimesBEGIN_DATE.AsDateTime < IncMonth(MonthBeginDate));
end;

end.
