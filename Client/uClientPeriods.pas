unit uClientPeriods;

interface

uses
  uPeriods;

type
  TDateIntervalFormat = (didsBeginDateEndDate, didsBeginDateDays, didsBeginDateWorkdays);
  TDateFormat = (diMonth, diWeek);

function DateIntervalFormatToInteger(const ADateIntervalFormat: TDateIntervalFormat): Integer;

function IntegerToDateIntervalFormat(const ADateIntervalFormat: Integer): TDateIntervalFormat;

// връща името на периода (ден, седмица, ...)
function GetPeriodTypeName(APeriod: TPeriod; APlural: Boolean = False): string;

// връща идентификатор на периода APerItem, в който е датата ADate
function GetPeriodLabel(ADate: TDateTime; APerItem: TPeriod; AShowDateWhenDayPeriod: Boolean = False): string;

// kato gornoto, ama zalepia i 2ri red s denia ot sedmicata pri sedmichen format i dr. polezna info
function GetPeriodLabelEx(ADate: TDateTime; APerItem: TPeriod; IncludeExtraInfo, IsTodaySecondRecord: Boolean; AShowDateWhenDayPeriod: Boolean = False): string;

function MarkDateStringAsDayOff(const ADateString: string): string;

function FormatPeriodDate(ADate: TDateTime; APerItem: TPeriod): string;

function GetPeriodAsShortString(ABeginDate, AEndDate: TDateTime; ADateFormat: string; AWorkdays: Boolean; AShowBothDates: Boolean = False): string;

resourcestring
  SDayOne = 'Ден';
  SWeekOne = 'Седмица';
  SMonthOne = 'Месец';
  SQuarterOne = 'Тримесечие';
  SYearOne = 'Година';

  SDays = 'Дни';
  SWeeks = 'Седмици';
  SMonths = 'Месеци';
  SQuarters = 'Тримесечия';
  SYears = 'Години';

  SDaysBr = 'Дни';
  SWeeksBr = 'Седмици';
  SMonthsBr = 'Месеца';
  SQuartersBr = 'Тримесечия';
  SYearsBr = 'Години';

  SWeekAbbrev = 'с';
  SMonthAbbrev = 'м';
  SQuarterAbbrev = 'тр';
  SYearAbbrev = 'г';

  SEmptyDateLabel = '.....';
  STodaySecondRecordAbbrev = 'п';

implementation

uses
  uServerMessageIds, SysUtils, DateUtils, JCLDateTime, dMain, uUtils,
  JclStrings;

resourcestring
  SWorkdaysAbbrev = 'р.д.';
  SDaysAbbrev = 'к.д.';

const
  Infinity: string = '…';

function GetPeriodTypeName(APeriod: TPeriod; APlural: Boolean = False): string;
begin
  if APlural then
    case APeriod of
      perDay:
        Result:= SDays;
      perWeek:
        Result:= SWeeks;
      perMonth:
        Result:= SMonths;
      perQuarter:
        Result:= SQuarters;
      perYear:
        Result:= SYears;
    else
      raise Exception.Create(SGetPeriodTypeNameInvalidPeriodId);
    end
  else
    case APeriod of
      perDay:
        Result:= SDayOne;
      perWeek:
        Result:= SWeekOne;
      perMonth:
        Result:= SMonthOne;
      perQuarter:
        Result:= SQuarterOne;
      perYear:
        Result:= SYearOne;
    else
      raise Exception.Create(SGetPeriodTypeNameInvalidPeriodId);
    end;
end;

function GetPeriodLabel(ADate: TDateTime; APerItem: TPeriod; AShowDateWhenDayPeriod: Boolean): string;
var
  PeriodFirstDate: TDateTime;
  Year, Month, Day: Word;
  No: Integer;
begin
  if ADate = 0 then
    begin
      Result:= SEmptyDateLabel;
      Exit;
    end;

  PeriodFirstDate:= GetPeriodFirstDate(ADate, APerItem);

  DecodeDate(PeriodFirstDate, Year, Month, Day);
  case APerItem of
    perDay:
      begin
        if AShowDateWhenDayPeriod then
          Result:= FormatDateTime(dmMain.DateFormatString, ADate)
        else
          if (DayOfTheWeek(ADate) = 1) then
            Result:= IntToStr(ISOWeekNumber(ADate)) + SWeekAbbrev
          else
            Result:= IntToStr(DayOfTheWeek(ADate));

        if (Month = 1) and (Day = 1) then
          Result:= '*' + Result;
      end;
    perWeek:
      begin
        No:= ISOWeekNumber(ADate);
        if (No = 1) then
          Result:= '*' + IntToStr(No)
        else
          Result:= IntToStr(No);
      end;
    perMonth:
      begin
        No:= MonthOf(ADate);
        if (No = 1) then
          Result:= '*' + IntToStr(No)
        else
          Result:= IntToStr(No);
      end;
    perQuarter:
      begin
        No:= ((MonthOf(ADate)-1) div 3) + 1;

        if (No = 1) then
          Result:= '*' + IntToStr(No) + ' ' + SQuarterAbbrev
        else
          Result:=
            IntToStr(No) + ' ' + SQuarterAbbrev;
      end;
    perYear:
      Result:= IntToStr(Year) + ' ' + SYearAbbrev;
  else
    raise Exception.Create(SGetPeriodLabelInvalidPeriodId);
  end;
end;

function GetPeriodLabelEx(ADate: TDateTime;
  APerItem: TPeriod; IncludeExtraInfo, IsTodaySecondRecord: Boolean; AShowDateWhenDayPeriod: Boolean): string;
var
  Year, Month, Day: Word;
begin
  Result:= GetPeriodLabel(ADate, APerItem, AShowDateWhenDayPeriod);

  if IsTodaySecondRecord then
    Result:= Result + STodaySecondRecordAbbrev;

  if IncludeExtraInfo then
    begin
      DecodeDate(GetPeriodFirstDate(ADate, APerItem), Year, Month, Day);
      case APerItem of
        perDay:
          if (DayOfTheWeek(ADate) = 1) then
            Result:= Result + #13 + FormatDateTime('dd.mm', ADate);
        perWeek:
          Result:= Result + #13 + FormatDateTime('dd.mm', ADate);
        perMonth:
          Result:= Result + #13 +
            IntToStr(ISOWeekNumber(EncodeDate(Year, Month, 1))) + '-' +
            IntToStr(ISOWeekNumber(IncMonth(EncodeDate(Year, Month, 1)) - 1));
        perQuarter:
          if (((MonthOf(ADate)-1) div 3) = 0) then
            Result:= Result + #13 + IntToStr(Year) + ' ' + SYearAbbrev;
      end;
    end;
end;

function MarkDateStringAsDayOff(const ADateString: string): string;
begin
  Result:= Format('(%s)', [StrTrimCharRight(StrTrimCharLeft(ADateString, #13), #13)]);
end;

function FormatPeriodDate(ADate: TDateTime; APerItem: TPeriod): string;
begin
  case APerItem of
    perDay:
      Result:= FormatDateTime({ShortDateFormat}'mm.dd', ADate);
    perWeek:
      Result:= IntToStr(ISOWeekNumber(ADate)) + SWeekAbbrev + '.';// + FormatDateTime('yyyy', ADate);
    perMonth:
      Result:= FormatDateTime('m', ADate) + SMonthAbbrev + '.';// + FormatDateTime('yyyy', ADate);
    perQuarter:
      Result:= IntToStr((MonthOf(ADate) + 2) div 3) + SQuarterAbbrev + '.';// + FormatDateTime('yyyy', ADate);
    perYear:
      Result:= FormatDateTime('yyyy', ADate);
  else   { case }
    raise Exception.Create(SGetPeriodLabelInvalidPeriodId);
  end;   { case }
end;

function GetPeriodAsShortString(ABeginDate, AEndDate: TDateTime; ADateFormat: string; AWorkdays: Boolean; AShowBothDates: Boolean): string;
begin
  if (ABeginDate = 0) then
    begin
      if (AEndDate = 0) then
        Result:= ''
      else
        Result:= Infinity + ' - ' + JclDateTime.FormatDateTime(ADateFormat, AEndDate);
    end
  else
    begin
      if (AEndDate = 0) then
        Result:= JclDateTime.FormatDateTime(ADateFormat, ABeginDate) + ' - ' + Infinity
      else
        begin
          Assert(ABeginDate <= AEndDate);

          Result:= JclDateTime.FormatDateTime(ADateFormat, ABeginDate) + ' - ';

          if AShowBothDates then
            Result:= Result + JclDateTime.FormatDateTime(ADateFormat, AEndDate)
          else
            begin
              if AWorkdays then
                Result:= Result + IntToStr(dmMain.CountWorkdays(ABeginDate, AEndDate)) + ' ' + SWorkdaysAbbrev
              else
                Result:= Result + IntToStr(RealRound(AEndDate - ABeginDate + 1)) + ' ' + SDaysAbbrev;
            end;
        end;
    end;
end;

function DateIntervalFormatToInteger(const ADateIntervalFormat: TDateIntervalFormat): Integer;
begin
  Result:= Ord(ADateIntervalFormat) + 1;
end;

function IntegerToDateIntervalFormat(const ADateIntervalFormat: Integer): TDateIntervalFormat;
begin
  Assert(
    (ADateIntervalFormat >= (Ord(didsBeginDateEndDate) + 1)) and
    (ADateIntervalFormat <= (Ord(didsBeginDateWorkdays) + 1))
  );

  Result:= TDateIntervalFormat(ADateIntervalFormat - 1);
end;


end.
