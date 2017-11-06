unit fDaysOff;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fEditForm, Db, DBClient, AbmesClientDataSet, ImgList, ActnList, StdCtrls,
  Buttons, ExtCtrls, GridsEh, DBGridEh, AbmesDBGrid, Mask, DBCtrls,
  ParamDataSet, AbmesFields, JvDBCombobox, ComCtrls, Menus, JvButtons,
  JvComponent, JvCaptionButton, JvComponentBase, ToolWin, DBGridEhGrouping;

type
  TfmDaysOff = class(TEditForm)
    pnlGrid: TPanel;
    cdsDataTHE_DATE: TAbmesSQLTimeStampField;
    cdsDataDAYS_OFF: TAbmesFloatField;
    grdCalendar: TAbmesDBGrid;
    cdsCalendar: TAbmesClientDataSet;
    dsCalendar: TDataSource;
    cdsCalendarWEEK_DAY_1: TAbmesSQLTimeStampField;
    cdsCalendarWEEK_DAY_2: TAbmesSQLTimeStampField;
    cdsCalendarWEEK_DAY_3: TAbmesSQLTimeStampField;
    cdsCalendarWEEK_DAY_4: TAbmesSQLTimeStampField;
    cdsCalendarWEEK_DAY_5: TAbmesSQLTimeStampField;
    cdsCalendarWEEK_DAY_6: TAbmesSQLTimeStampField;
    cdsCalendarWEEK_DAY_7: TAbmesSQLTimeStampField;
    cdsCalendarIS_WEEK_DAY_1_DAY_OFF: TBooleanField;
    cdsCalendarIS_WEEK_DAY_2_DAY_OFF: TBooleanField;
    cdsCalendarIS_WEEK_DAY_3_DAY_OFF: TBooleanField;
    cdsCalendarIS_WEEK_DAY_4_DAY_OFF: TBooleanField;
    cdsCalendarIS_WEEK_DAY_5_DAY_OFF: TBooleanField;
    cdsCalendarIS_WEEK_DAY_6_DAY_OFF: TBooleanField;
    cdsCalendarIS_WEEK_DAY_7_DAY_OFF: TBooleanField;
    cdsCalendarOFFICIAL_WEEK_DAY_1: TAbmesSQLTimeStampField;
    cdsCalendarOFFICIAL_WEEK_DAY_2: TAbmesSQLTimeStampField;
    cdsCalendarOFFICIAL_WEEK_DAY_3: TAbmesSQLTimeStampField;
    cdsCalendarOFFICIAL_WEEK_DAY_4: TAbmesSQLTimeStampField;
    cdsCalendarOFFICIAL_WEEK_DAY_5: TAbmesSQLTimeStampField;
    cdsCalendarOFFICIAL_WEEK_DAY_6: TAbmesSQLTimeStampField;
    cdsCalendarOFFICIAL_WEEK_DAY_7: TAbmesSQLTimeStampField;
    cdsCalendarIS_OFFICIAL_WEEK_DAY_1_DAY_OFF: TBooleanField;
    cdsCalendarIS_OFFICIAL_WEEK_DAY_2_DAY_OFF: TBooleanField;
    cdsCalendarIS_OFFICIAL_WEEK_DAY_3_DAY_OFF: TBooleanField;
    cdsCalendarIS_OFFICIAL_WEEK_DAY_4_DAY_OFF: TBooleanField;
    cdsCalendarIS_OFFICIAL_WEEK_DAY_5_DAY_OFF: TBooleanField;
    cdsCalendarIS_OFFICIAL_WEEK_DAY_6_DAY_OFF: TBooleanField;
    cdsCalendarIS_OFFICIAL_WEEK_DAY_7_DAY_OFF: TBooleanField;
    lblYear: TLabel;
    edtYear: TEdit;
    lblMonth: TLabel;
    cbMonth: TComboBox;
    udYear: TUpDown;
    cdsDataOFFICIAL_DAYS_OFF: TAbmesFloatField;
    actToggleWorkCalendar: TAction;
    actToggleOfficialCalendar: TAction;
    tlbType: TToolBar;
    btnToggleWorkCalendar: TSpeedButton;
    btnToggleOfficialCalendar: TSpeedButton;
    actToggleDayOff: TAction;
    cdsCalendarWEEK: TAbmesFloatField;
    procedure FormCreate(Sender: TObject);
    procedure WeekFieldsGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure grdCalendarGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure ParamsChange(Sender: TObject);
    procedure grdCalendarKeyPress(Sender: TObject; var Key: Char);
    procedure actToggleWorkCalendarExecute(Sender: TObject);
    procedure actToggleOfficialCalendarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actToggleDayOffUpdate(Sender: TObject);
    procedure actToggleDayOffExecute(Sender: TObject);
    procedure grdCalendarDblClick(Sender: TObject);
  private
    FFirstWeekDate: TDateTime;
    FFirstMonthDate: TDateTime;
    FLastMonthDate: TDateTime;
    FCalendarModified: Boolean;
    procedure SetColumns;
    procedure CalcFirstWeekDate(ADate: TDateTime);
    procedure CalcCalendarDataSet;
  public
    procedure OpenDataSets; override;
    procedure CloseDataSets; override;
    procedure Initialize; override;
  end;

implementation

uses
  JclDateTime, dMain, uClientUtils, uUtils, DateUtils, uClientDateTime,
  uClientTypes, AbmesDialogs;

resourcestring
  SConfirmToggle =
    'Това е бавна операция и трябва да се изпълнява в ненатоварено време.' + SLineBreak +
    'Потвърдете продължение?';

{$R *.DFM}

{ TfmDaysOff }

procedure TfmDaysOff.CloseDataSets;
begin
  inherited;
  cdsCalendar.Close;
end;

procedure TfmDaysOff.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  if FCalendarModified then
    dmMain.LoadDateInfo;
end;

procedure TfmDaysOff.FormCreate(Sender: TObject);
var
  i: Integer;
  dow: Integer;
  y, w: Integer;
begin
  inherited;
  w:= JcldateTime.ISOWeekNumber(ContextDate(), y);
  dow:= DayOfWeek(JcldateTime.ISOWeekToDateTime(y, w, 1));

  for i:= 1 to 7 do
    begin
      cdsCalendar.FieldByName('WEEK_DAY_' + IntToStr(i)).DisplayLabel:=
        FormatSettings.ShortDayNames[(dow + i - 2) mod 7 + 1];
      cdsCalendar.FieldByName('OFFICIAL_WEEK_DAY_' + IntToStr(i)).DisplayLabel:=
        FormatSettings.ShortDayNames[(dow + i - 2) mod 7 + 1];
    end;

  for i:= 1 to 12 do
    cbMonth.Items[i-1]:= FormatSettings.LongMonthNames[i];
end;

procedure TfmDaysOff.OpenDataSets;
begin
  inherited;
  cdsCalendar.CreateDataSet;
end;

procedure TfmDaysOff.CalcFirstWeekDate(ADate: TDateTime);
var
  y, m, d: Word;
  wy, ww: Integer;
begin
  DecodeDate(ADate, y, m, d);
  ww:= JclDateTime.ISOWeekNumber(EncodeDate(y, m, 1), wy);
  FFirstWeekDate:= JclDateTime.ISOWeekToDateTime(wy, ww, 1);
end;

procedure TfmDaysOff.actToggleOfficialCalendarExecute(Sender: TObject);
begin
  inherited;
  SetColumns;
end;

procedure TfmDaysOff.actToggleWorkCalendarExecute(Sender: TObject);
begin
  inherited;
  SetColumns;
end;

procedure TfmDaysOff.CalcCalendarDataSet;
var
  i, j: Integer;
  wd: TDateTime;
begin
  FFirstMonthDate:= EncodeDate(StrToInt(edtYear.Text), cbMonth.ItemIndex+1, 1);
  FLastMonthDate:= IncMonth(FFirstMonthDate, 1) - 1;

  CalcFirstWeekDate(FFirstMonthDate);

  cdsCalendar.EmptyDataSet;
  for i:= 0 to 5 do
    begin
      wd:= FFirstWeekDate + i*7;

      with cdsCalendar do
        begin
          Append;
          try
            cdsCalendarWEEK.AsInteger:= WeekOf(wd);
            for j:= 0 to 6 do
              cdsCalendar.FieldByName('WEEK_DAY_' + IntToStr(j+1)).AsDateTime:= wd + j;
            for j:= 0 to 6 do
              cdsCalendar.FieldByName('OFFICIAL_WEEK_DAY_' + IntToStr(j+1)).AsDateTime:= wd + j;
            Post;
          except
            Cancel;
            raise;
          end;
        end; { with }
    end;
end;

procedure TfmDaysOff.WeekFieldsGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  y, m, d: Word;
begin
  inherited;

  Assert(Sender is TAbmesSQLTimeStampField);
  DecodeDate(Sender.AsDateTime, y, m, d);
  Text:= IntToStr(d);
end;

procedure TfmDaysOff.grdCalendarGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  inherited;

  if (gdFocused in State) then
    Background:= clGray
  else
    if (Column.FieldName = 'WEEK') then
      Background:= clBtnFace
    else
      Background:= clWindow;

  if (Column.FieldName <> 'WEEK') then
    with Column.Field do
      if (AsDateTime < FFirstMonthDate) or (AsDateTime > FLastMonthDate) then
        AFont.Color:= clSilver
      else
        begin
          if cdsCalendar.FieldByName(Format('IS_%s_DAY_OFF', [FieldName])).AsBoolean then
            AFont.Color:= clRed;
        end;
end;

procedure TfmDaysOff.FormShow(Sender: TObject);
var
  y, m, d: Word;
begin
  inherited;

  DecodeDate(ContextDate, y, m, d);
  udYear.Min:= YearOf(MinDate);
  udYear.Max:= YearOf(MaxDate);
  cbMonth.ItemIndex:= m - 1;
  edtYear.OnChange:= ParamsChange;
  cbMonth.OnChange:= ParamsChange;
  edtYear.Text:= IntToStr(y);
end;

procedure TfmDaysOff.grdCalendarDblClick(Sender: TObject);
begin
  inherited;
  if (grdCalendar.Col > 0) then
    actToggleDayOff.Execute;
end;

procedure TfmDaysOff.actToggleDayOffExecute(Sender: TObject);
var
  TheDate: TDateTime;
begin
  inherited;

  TheDate:= FFirstWeekDate + ((grdCalendar.Row - 1) * 7) + ((grdCalendar.Col - 1) mod (grdCalendar.Columns.Count div 2));

  if (TheDate >= FFirstMonthDate) and (TheDate <= FLastMonthDate) then
    begin
      if (MessageDlgEx(SConfirmToggle, mtWarning, mbOKCancel, 0) <> mrOk) then
        Abort;

      FCalendarModified:= True;

      cdsData.Locate('THE_DATE', TheDate, []);

      cdsData.Edit;
      try
        if (grdCalendar.Col <= grdCalendar.Columns.Count div 2) then
          cdsDataDAYS_OFF.AsBoolean:= not cdsDataDAYS_OFF.AsBoolean
        else
          cdsDataOFFICIAL_DAYS_OFF.AsBoolean:= not cdsDataOFFICIAL_DAYS_OFF.AsBoolean;

        cdsData.Post;
      except
        cdsData.Cancel;
        raise;
      end;  { try }

      try
        actApplyUpdates.Execute;
      finally
        RefreshDataSet(cdsData);
      end;

      cdsCalendar.TempDisableControls/
        cdsCalendar.PreserveBookmark/
          procedure begin
            CalcCalendarDataSet;
          end;
    end;  { if }
end;

procedure TfmDaysOff.actToggleDayOffUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled:= (EditMode = emEdit);
end;

procedure TfmDaysOff.ParamsChange(Sender: TObject);
begin
  inherited;

  cdsData.Params.ParamByName('THE_YEAR_DATE').Value:=
    EncodeDate(StrToInt(edtYear.Text), 1, 1);
  cdsData.Params.ParamByName('THE_MONTH_DATE').Value:=
    EncodeDate(StrToInt(edtYear.Text), cbMonth.ItemIndex + 1, 1);

  RefreshDataSet(cdsData);
  CalcCalendarDataSet;
end;

procedure TfmDaysOff.SetColumns;
var
  i: Integer;
  SaveCol: Integer;
  HalfColumnCount: Integer;
begin
  HalfColumnCount:= grdCalendar.Columns.Count div 2;
  SaveCol:= grdCalendar.Col;

  grdCalendar.Columns.BeginUpdate;
  try
    for i:= 1 to HalfColumnCount do
      grdCalendar.Columns[i].Visible:= actToggleWorkCalendar.Checked;
    for i:= HalfColumnCount + 1 to grdCalendar.Columns.Count - 1 do
      grdCalendar.Columns[i].Visible:= actToggleOfficialCalendar.Checked;
  finally
    grdCalendar.Columns.EndUpdate;
  end;

  if (SaveCol < HalfColumnCount) then
    grdCalendar.Col:= SaveCol + HalfColumnCount
  else
    grdCalendar.Col:= SaveCol - HalfColumnCount;
end;

procedure TfmDaysOff.grdCalendarKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (grdCalendar.Col > 0) and (Key = ' ') then
    actToggleDayOff.Execute;
end;

procedure TfmDaysOff.Initialize;
begin
  inherited;
  SetColumns;
end;

end.
