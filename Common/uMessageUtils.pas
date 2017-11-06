unit uMessageUtils;

interface

uses
  SysUtils;

const
  InternalFormatSettings: TFormatSettings = (
    CurrencyString: 'euro';
    CurrencyFormat: 1;
    CurrencyDecimals: 2;
    DateSeparator: '.';
    TimeSeparator: ':';
    ListSeparator: #0;
    ShortDateFormat: 'dd.mm.yyyy';
    LongDateFormat: 'dd.MMMM.yyyy';
    TimeAMString: 'AM';
    TimePMString: 'PM';
    ShortTimeFormat: 'hh:nn';
    LongTimeFormat: 'hh:nn:ss';
    ShortMonthNames: ('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec');
    LongMonthNames: ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
    ShortDayNames: ('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun');
    LongDayNames: ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');
    ThousandSeparator: ' ';
    DecimalSeparator: '.';
    TwoDigitYearCenturyWindow: 50;
    NegCurrFormat: 5);

function InternalDateToStr(ADate: TDateTime): string;
function InternalStrToDate(s: string): TDateTime;

function InternalTimeToString(ATime: TDateTime): string;
function InternalStrToTime(s: string): TDateTime;

function InternalFloatToStr(d: Real): string;
function InternalStrToFloat(s: string): Real;

function InternalIntToStr(i: Integer): string;
function InternalStrToInt(s: string): Integer;

function InternalEncodeString(s: string): string;
function InternalDecodeString(s: string): string;

implementation

function InternalDateToStr(ADate: TDateTime): string;
begin
  Result:= DateToStr(ADate, InternalFormatSettings);
end;

function InternalStrToDate(s: string): TDateTime;
begin
  Result:= StrToDate(s, InternalFormatSettings);
end;

function InternalTimeToString(ATime: TDateTime): string;
begin
  Result:= TimeToStr(ATime, InternalFormatSettings);
end;

function InternalStrToTime(s: string): TDateTime;
begin
  Result:= StrToTime(s, InternalFormatSettings);
end;

function InternalFloatToStr(d: Real): string;
begin
  Result:= FloatToStr(d, InternalFormatSettings);
end;

function InternalStrToFloat(s: string): Real;
begin
  Result:= StrToFloat(s, InternalFormatSettings);
end;

function InternalIntToStr(i: Integer): string;
begin
  Result:= IntToStr(i);
end;

function InternalStrToInt(s: string): Integer;
begin
  Result:= StrToInt(s);
end;

function DoubleChar(s: string; ch: Char): string;
begin
  Result:= StringReplace(s, ch, ch + ch, [rfReplaceAll, rfIgnoreCase]);
end;

function DeleteDoubledChar(s: string; ch: Char): string;
begin
  Result:= StringReplace(s, ch + ch , ch, [rfReplaceAll, rfIgnoreCase]);
end;

function InternalEncodeString(s: string): string;
begin
  Result:= s;
  Result:= DoubleChar(Result, '(');
  Result:= DoubleChar(Result, ')');
  Result:= DoubleChar(Result, ',');
end;

function InternalDecodeString(s: string): string;
begin
  Result:= s;
  Result:= DeleteDoubledChar(Result, '(');
  Result:= DeleteDoubledChar(Result, ')');
  Result:= DeleteDoubledChar(Result, ',');
end;

end.
