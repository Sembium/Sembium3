unit uSystemLocaleUtils;

interface

type
  TSystemLocale = (slNone, slBulgarian, slGBEnglish, slUSEnglish);

function SystemLocaleToInt(AValue: TSystemLocale): Integer;
function IntToSystemLocale(AValue: Integer): TSystemLocale;
function SystemLocaleToStr(AValue: TSystemLocale): string;
function StrToSystemLocale(AValue: string): TSystemLocale;

implementation

uses
  SysUtils, StrUtils;

const
  SystemLocaleIndeces: array[TSystemLocale] of Integer = (0, 1, 2, 3);
  SystemLocaleNames: array[TSystemLocale] of string = ('', 'bg-BG', 'en-GB', 'en-US');

function SystemLocaleToInt(AValue: TSystemLocale): Integer;
begin
  Result:= SystemLocaleIndeces[AValue];
end;

function IntToSystemLocale(AValue: Integer): TSystemLocale;
begin
  case AValue of
    0: Result:= slNone;
    1: Result:= slBulgarian;
    2: Result:= slGBEnglish;
    3: Result:= slUSEnglish;
  else
    raise Exception.Create('Invalid SystemLocale');
  end;
end;

function SystemLocaleToStr(AValue: TSystemLocale): string;
begin
  Result:= SystemLocaleNames[AValue];
end;

function StrToSystemLocale(AValue: string): TSystemLocale;
begin
  Result:= IntToSystemLocale(AnsiIndexText(AValue, SystemLocaleNames));
end;

end.
