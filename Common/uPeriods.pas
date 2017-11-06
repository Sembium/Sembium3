unit uPeriods;

interface

type
  TPeriod = (perDay, perWeek, perMonth, perQuarter, perYear);

// time unit positions
const
  tupBegin = 1;
  tupExact = 2;
  tupEnd = 3;

function GetPeriodConst(APeriod: TPeriod): Integer;
function GetPeriodValue(AValue: Integer): TPeriod;

// увеличава датата ADate с ADelta на брой периоди APerItem (месеци,седмици,..)
function IncDate(ADate: TDateTime; APerItem: TPeriod;
  ADelta: Integer): TDateTime;

// връща първата дата на периода APerItem, в който е датата ADate
function GetPeriodFirstDate(ADate: TDateTime; APerItem: TPeriod): TDateTime;

// връща последната дата на периода APerItem, в който е датата ADate
function GetPeriodLastDate(ADate: TDateTime; APerItem: TPeriod): TDateTime;

// връща броя времеви стъпки, имащи сечение с периода AStartDate..AEndDate
function GetTimeUnitCount(AStartDate,AEndDate: TDateTime;
  APerItem: TPeriod): Integer;

// връща броя времеви стъпки в периода AStartDate..AEndDate
function GetExactTimeUnitCount(AStartDate,AEndDate: TDateTime;
  APerItem: TPeriod): Real;


implementation

uses
  SysUtils, JCLDateTime, uServerMessageIds;

{ Routines }

function GetPeriodConst(APeriod: TPeriod): Integer;
begin
  case APeriod of
    perDay:
      Result:= 1;
    perWeek:
      Result:= 2;
    perMonth:
      Result:= 3;
    perQuarter:
      Result:= 4;
    perYear:
      Result:= 5;
  else
    raise Exception.Create(SGetPeriodConstInvalidArgumentId);
  end;
end;

function GetPeriodValue(AValue: Integer): TPeriod;
begin
  case AValue of
    1: Result:= perDay;
    2: Result:= perWeek;
    3: Result:= perMonth;
    4: Result:= perQuarter;
    5: Result:= perYear;
  else
    raise Exception.Create(SGetPeriodValueInvalidArgumentId);
  end;
end;

function IncDate(ADate: TDateTime; APerItem: TPeriod;
  ADelta: Integer): TDateTime;
var
  y, m, d: Word;
begin
  case APerItem of
    perDay:
      Result:= ADate + ADelta;

    perWeek:
      Result:= ADate + 7*ADelta;

    perMonth:
      Result:= IncMonth(ADate, ADelta);

    perQuarter:
      Result:= IncMonth(ADate, ADelta*3);

    perYear:
      begin
        DecodeDate(ADate, y, m, d);
        // workaround ?!?!? inc-a poniakoga ne shte ADelta da e otricatelna
        if (ADelta < 0) then
          Dec(y, -ADelta)
        else
          Inc(y, ADelta);
        if (m = 2) and (d = 29) and (not IsLeapYear(y)) then
          m:= 28;
        Result:= EncodeDate(y, m, d);
      end;
  else
    raise Exception.Create(SIncDateInvalidPeriodId);
  end;
end;

function GetPeriodFirstDate(ADate: TDateTime; APerItem: TPeriod): TDateTime;
var
 dow: Integer;
 y, m, d: Word;
begin
  case APerItem of
    perDay:
      Result:= ADate;

    perWeek:
      begin
        dow:= DayOfWeek(ADate);
        Dec(dow);
        if (dow = 0) then dow:= 7;
        Result:= ADate - dow + 1;
      end;

    perMonth:
      begin
        DecodeDate(ADate, y, m, d);
        d:= 1;
        Result:= EncodeDate(y, m, d);
      end;

    perQuarter:
      begin
        DecodeDate(ADate, y, m, d);
        d:= 1;
        m:= ((m-1) div 3)*3 + 1;
        Result:= EncodeDate(y, m, d);
      end;

    perYear:
      begin
        DecodeDate(ADate, y, m, d);
        d:= 1;
        m:= 1;
        Result:= EncodeDate(y, m, d);
      end;
  else
    raise Exception.Create(SGetPeriodFirstDateInvalidPeriodId);
  end;
end;

function GetPeriodLastDate(ADate: TDateTime; APerItem: TPeriod): TDateTime;
begin
  Result:= IncDate(GetPeriodFirstDate(ADate, APerItem), APerItem, 1) - 1;
end;

function GetTimeUnitCount(AStartDate,AEndDate: TDateTime;
  APerItem: TPeriod): Integer;
var
  SDate, EDate: TDateTime;
  PlusMinus: Integer;
begin
  if (AStartDate <= AEndDate) then
    begin
      PlusMinus:= 1;
      SDate:= GetPeriodFirstDate(AStartDate, APerItem);
      EDate:= GetPeriodFirstDate(AEndDate, APerItem);
    end
  else
    begin
      PlusMinus:= -1;
      SDate:= GetPeriodFirstDate(AEndDate, APerItem);
      EDate:= GetPeriodFirstDate(AStartDate, APerItem);
    end;

  Result:= 0;
  while (SDate < EDate) do
    begin
      Inc(Result);
      SDate:= IncDate(SDate, APerItem, 1);
    end;  { while }

  Result:= Result * PlusMinus;
end;

function GetExactTimeUnitCount(AStartDate, AEndDate: TDateTime;
  APerItem: TPeriod): Real;
var
  ExtStartDate, ExtEndDate: TDateTime;
begin
  Assert(AStartDate <= AEndDate);

  ExtStartDate:= GetPeriodFirstDate(AStartDate, APerItem);
  ExtEndDate:= GetPeriodLastDate(AEndDate, APerItem);
  Result:=
    GetTimeUnitCount(ExtStartDate, ExtEndDate + 1, APerItem) -
    ( (AStartDate - ExtStartDate) / (GetPeriodLastDate(AStartDate, APerItem) - ExtStartDate + 1) ) -
    ( (ExtEndDate - AEndDate) / (ExtEndDate - GetPeriodFirstDate(AEndDate, APerItem) + 1) );
end;


end.
