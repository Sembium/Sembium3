unit rShiftRegimeCalendar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rDBDataReport, DB, QRCtrls, QuickRpt, ExtCtrls,
  QRExport, AbmesFields, uShiftRegimeCalendarUtils, uUtils, AbmesQRDBCell,
  DBClient, AbmesClientDataSet;

type
  TrptShiftRegimeCalendar = class(TDBDataReport)
    mdsCalendar: TAbmesClientDataSet;
    bndTitle: TQRBand;
    mdsMonthShiftTimedRegimes: TAbmesClientDataSet;
    bndCalendar: TQRSubDetail;
    GroupHeaderBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    bndInterval: TQRSubDetail;
    bndShiftCycles: TQRSubDetail;
    GroupHeaderBand3: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape9: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    mdsShiftRegimeCalendar: TAbmesClientDataSet;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    lblTitle: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape10: TQRShape;
    QRDBText22: TQRDBText;
    QRLabel5: TQRLabel;
    QRShape11: TQRShape;
    QRDBText23: TQRDBText;
    QRShape12: TQRShape;
    QRLabel6: TQRLabel;
    QRShape13: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape14: TQRShape;
    QRLabel9: TQRLabel;
    QRShape15: TQRShape;
    QRLabel10: TQRLabel;
    QRShape16: TQRShape;
    QRLabel11: TQRLabel;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRLabel12: TQRLabel;
    QRShape20: TQRShape;
    QRLabel13: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape23: TQRShape;
    QRLabel24: TQRLabel;
    QRShape24: TQRShape;
    QRLabel25: TQRLabel;
    QRShape25: TQRShape;
    QRLabel26: TQRLabel;
    QRShape26: TQRShape;
    QRLabel27: TQRLabel;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    AbmesQRDBCell1: TAbmesQRDBCell;
    AbmesQRDBCell8: TAbmesQRDBCell;
    AbmesQRDBCell2: TAbmesQRDBCell;
    AbmesQRDBCell3: TAbmesQRDBCell;
    AbmesQRDBCell4: TAbmesQRDBCell;
    AbmesQRDBCell5: TAbmesQRDBCell;
    AbmesQRDBCell6: TAbmesQRDBCell;
    AbmesQRDBCell7: TAbmesQRDBCell;
    bndIntervals: TQRSubDetail;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape18: TQRShape;
    QRDBText2: TQRDBText;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape36: TQRShape;
    QRDBText3: TQRDBText;
    procedure AbmesQRDBCellPrintCell(Rect: TRect; Field: TField; var DrawCell: Boolean);
    procedure lblTitlePrint(sender: TObject; var Value: string);
    procedure bndIntervalBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    FCalendarDataSet: TDataSet;
    FMonthShiftTimedRegimesDataSet: TDataSet;
    FShiftRegimeCalendarDataSet: TDataSet;
    FDatesDataSet: TDataSet;
    FMonthBeginDate: TDateTime;
  protected
    function GetCorespondingDataSet(ADataSet: TDataSet): TDataSet; override;
    procedure InternalPrintReport; override;
    property CalendarDataSet: TDataSet read FCalendarDataSet;
    property MonthShiftTimedRegimesDataSet: TDataSet read FMonthShiftTimedRegimesDataSet;
    property ShiftRegimeCalendarDataSet: TDataSet read FShiftRegimeCalendarDataSet;
    property DatesDataSet: TDataSet read FDatesDataSet;
  public
    procedure SetDataParams(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil;
      ACalendarDataSet: TDataSet = nil; AMonthShiftTimedRegimesDataSet: TDataSet = nil;
      AShiftRegimeCalendarDataSet: TDataSet = nil; ADatesDataSet: TDataSet = nil;
      AMonthBeginDate: TDateTime = MinDate); reintroduce; virtual;
    class procedure PrintReport(AReportDataSet: TDataSet = nil; AParamsDataSet: TDataSet = nil;
      ACalendarDataSet: TDataSet = nil; AMonthShiftTimedRegimesDataSet: TDataSet = nil;
      AShiftRegimeCalendarDataSet: TDataSet = nil; ADatesDataSet: TDataSet = nil;
      AMonthBeginDate: TDateTime = MinDate);
  end;

implementation

uses
  fReportParent, DateUtils, Math;

{$R *.dfm}

resourcestring
  STitle = 'Календар на Режим на Сменност за %s %dг.';

{ TrptShiftRegimeCalendar }

function TrptShiftRegimeCalendar.GetCorespondingDataSet(ADataSet: TDataSet): TDataSet;
begin
  if (ADataSet = mdsCalendar) and Assigned(CalendarDataSet) then
    Result:= CalendarDataSet
  else
    if (ADataSet = mdsMonthShiftTimedRegimes) and Assigned(MonthShiftTimedRegimesDataSet) then
      Result:= MonthShiftTimedRegimesDataSet
    else
      if (ADataSet = mdsShiftRegimeCalendar) and Assigned(ShiftRegimeCalendarDataSet) then
        Result:= ShiftRegimeCalendarDataSet
      else
        Result:= inherited GetCorespondingDataSet(ADataSet);
end;

class procedure TrptShiftRegimeCalendar.PrintReport(AReportDataSet,
  AParamsDataSet, ACalendarDataSet, AMonthShiftTimedRegimesDataSet,
  AShiftRegimeCalendarDataSet, ADatesDataSet: TDataSet; AMonthBeginDate: TDateTime);
var
  r: TrptShiftRegimeCalendar;
begin
  r:= Create(Application);
  try
    r.Parent:= fmReportParent;
    r.SetDataParams(
      AReportDataSet,
      AParamsDataSet,
      ACalendarDataSet,
      AMonthShiftTimedRegimesDataSet,
      AShiftRegimeCalendarDataSet,
      ADatesDataSet,
      AMonthBeginDate);
    r.InternalPrintReport;
  finally
    FreeAndNil(r);
  end;
end;

procedure TrptShiftRegimeCalendar.SetDataParams(AReportDataSet,
  AParamsDataSet, ACalendarDataSet, AMonthShiftTimedRegimesDataSet,
  AShiftRegimeCalendarDataSet, ADatesDataSet: TDataSet; AMonthBeginDate: TDateTime);
begin
  inherited SetDataParams(AReportDataSet, AParamsDataSet);

  FCalendarDataSet:= ACalendarDataSet;
  FMonthShiftTimedRegimesDataSet:= AMonthShiftTimedRegimesDataSet;
  FShiftRegimeCalendarDataSet:= AShiftRegimeCalendarDataSet;
  FDatesDataSet:= ADatesDataSet;

  FMonthBeginDate:= AMonthBeginDate;
end;

procedure TrptShiftRegimeCalendar.AbmesQRDBCellPrintCell(Rect: TRect;
  Field: TField; var DrawCell: Boolean);
var
  IsDateCovered: Boolean;
  IsInCurrentInterval: Boolean;
  MasterInterval: TMasterInterval;
  MasterMonth: TMasterMonth;
  DateOffState: TDateOffState;
  Shifts: string;
begin
  if (Field.Index = 0) then
    DrawCalendarCell(QRPrinter.Canvas, Rect, Field.AsInteger, '', False, cmShowCurrentInterval,
      miNone, mmCurrent, dosWorkday)
  else
    begin
      IsDateCovered:= CalendarDataSet.FieldByName(Format('IS_%s_COVERED', [Field.FieldName])).AsBoolean;

      IsInCurrentInterval:=
        ((MonthShiftTimedRegimesDataSet.FieldByName('BEGIN_DATE').AsDateTime <= Field.AsDateTime) and
         (Field.AsDateTime <= MonthShiftTimedRegimesDataSet.FieldByName('END_DATE').AsDateTime));

      MasterInterval:= GetMasterInterval(IsDateCovered, IsInCurrentInterval);

      if (MonthOf(Field.AsDateTime) = MonthOf(FMonthBeginDate)) then
        MasterMonth:= mmCurrent
      else
        MasterMonth:= mmOther;

      if CalendarDataSet.FieldByName(Format('IS_%s_DAY_OFF', [Field.FieldName])).AsBoolean then
        DateOffState:= dosDayOff
      else
        DateOffState:= dosWorkday;

      if (MasterInterval = miOther) then
        Shifts:= HiddenShifts
      else
        Shifts:= CalendarDataSet.FieldByName(Format('%s_SHIFTS', [Field.FieldName])).AsString;

      DrawCalendarCell(QRPrinter.Canvas, Rect, DayOfTheMonth(Field.AsDateTime), Shifts,
        False, cmShowCurrentInterval, MasterInterval, MasterMonth, DateOffState);
    end;

  DrawCell:= False;
end;

procedure TrptShiftRegimeCalendar.InternalPrintReport;
var
  CalendarBookmark: TBookmark;
  MonthShiftTimedRegimesBookmark: TBookmark;
  ShiftRegimeCalendarBookmark: TBookmark;
  DatesBookmark: TBookmark;
begin
  CalendarDataSet.DisableControls;
  try
    MonthShiftTimedRegimesDataSet.DisableControls;
    try
      ShiftRegimeCalendarDataSet.DisableControls;
      try
        CalendarBookmark:= CalendarDataSet.Bookmark;
        try
          MonthShiftTimedRegimesBookmark:= MonthShiftTimedRegimesDataSet.Bookmark;
          try
            ShiftRegimeCalendarBookmark:= ShiftRegimeCalendarDataSet.Bookmark;
            try
              DatesBookmark:= DatesDataSet.Bookmark;
              try
                inherited;
              finally
                DatesDataSet.Bookmark:= DatesBookmark;
              end;  { try }
            finally
              ShiftRegimeCalendarDataSet.Bookmark:= ShiftRegimeCalendarBookmark;
            end;  { try }
          finally
            MonthShiftTimedRegimesDataSet.Bookmark:= MonthShiftTimedRegimesBookmark;
          end;  { try }
        finally
          CalendarDataSet.Bookmark:= CalendarBookmark;
        end;  { try }
      finally
        ShiftRegimeCalendarDataSet.EnableControls;
      end;  { try }
    finally
      MonthShiftTimedRegimesDataSet.EnableControls;
    end;  { try }
  finally
    CalendarDataSet.EnableControls;
  end;  { try }
end;

procedure TrptShiftRegimeCalendar.lblTitlePrint(sender: TObject;
  var Value: string);
begin
  inherited;
  Value:=
    Format(STitle, [FormatSettings.LongMonthNames[MonthOf(FMonthBeginDate)], YearOf(FMonthBeginDate)]);
end;

procedure TrptShiftRegimeCalendar.bndIntervalBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  DatesDataSet.Locate('THE_DATE', MonthShiftTimedRegimesDataSet.FieldByName('BEGIN_DATE').AsVariant, []);
end;

end.
