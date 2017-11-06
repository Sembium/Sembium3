unit uYearParts;

interface

type
  TYearPart = (ypNone, ypDay, ypMonth, ypQuarter, ypHalf, ypYear);

function IntToYearPart(Value: Integer): TYearPart;
function YearPartToInt(Value: TYearPart): Integer;

procedure CheckDatePeriodYearParts(ABeginDate, AEndDate: TDateTime; AYearPart: TYearPart); overload;
procedure CheckDatePeriodYearParts(ABeginDate, AEndDate: TDateTime; AYearPartCode: Integer); overload;

implementation

uses
  SysUtils, DateUtils, JclDateTime;

resourcestring
  SIncorrectDatePeriodYearParts = 'Некоректна Кратност на Времеви Интервал!';

function IntToYearPart(Value: Integer): TYearPart;
begin
  case Value of
    0: Result:= ypNone;
    1: Result:= ypDay;
    2: Result:= ypMonth;
    3: Result:= ypQuarter;
    4: Result:= ypHalf;
    5: Result:= ypYear;
  else
    raise Exception.Create('uYearParts: unknown year part code');
  end;  { case }
end;

function YearPartToInt(Value: TYearPart): Integer;
begin
  Result:= Ord(Value);
end;

procedure CheckDatePeriodYearParts(ABeginDate, AEndDate: TDateTime; AYearPart: TYearPart);
const
  YearPartMonths: array[TYearPart] of Integer = (0, 0, 1, 3, 6, 12);
begin
  Assert(AYearPart <> ypNone);
  Assert(ABeginDate <= AEndDate);

  if (AYearPart <> ypDay) and
     ( (DayOfTheMonth(ABeginDate) <> 1) or
       (DayOfTheMonth(AEndDate + 1) <> 1) or
       ( ( ( (YearOf(AEndDate + 1) * 12 + MonthOf(AEndDate + 1)) -
             (YearOf(ABeginDate) * 12 + MonthOf(ABeginDate))
           ) mod YearPartMonths[AYearPart] <> 0) ) or
       ( (AYearPart in [ypQuarter, ypHalf, ypYear]) and
         (MonthOf(ABeginDate) mod YearPartMonths[AYearPart] <> 1) )
       ) then
    raise Exception.Create(SIncorrectDatePeriodYearParts);
end;

procedure CheckDatePeriodYearParts(ABeginDate, AEndDate: TDateTime; AYearPartCode: Integer);
begin
  CheckDatePeriodYearParts(ABeginDate, AEndDate, IntToYearPart(AYearPartCode));
end;

end.
