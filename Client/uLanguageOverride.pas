unit uLanguageOverride;

interface

function LanguageOverrideParamValue: string;

const
  SLanguageParamName = 'language';
  SLangParamName = 'lang';

implementation

// Do not use System.SysUtils. This unit should initialize before System.SysUtils

function ParamName(const Param: string): string;
var
  p: Integer;
begin
  Result:= '';

  if (Param <> '') and
     ( (Param[1] = '/') or
       (Param[1] = '-')
     ) then
    begin
      p:= Pos(':', Param);

      if (p > 0) then
        Result:= Copy(Param, 2, p-2)
      else
        Result:= Copy(Param, 2, Length(Param)-1);
    end;
end;

function ParamValue(const Param: string): string;
var
  p: Integer;
begin
  p:= Pos(':', Param);

  if (p > 0) then
    Result:= Copy(Param, p+1, Length(Param)-p)
  else
    Result:= '';
end;

function GetLanguageOverrideParamValue: string;
var
  i: Integer;
  s: string;
begin
  for i:= 1 to ParamCount do
    begin
      s:= ParamStr(i);

      if (ParamName(s) = SLangParamName) or
         (ParamName(s) = SLanguageParamName) then
        begin
          Exit(ParamValue(s));
        end;  { if }
    end;
end;

var
  FLanguageOverrideParamValue: string;

function LanguageOverrideParamValue: string;
begin
  Result:= FLanguageOverrideParamValue;
end;

procedure SetLanguageOverride;
var
  lang: string;
begin
  lang:= GetLanguageOverrideParamValue;

  FLanguageOverrideParamValue:= lang;

  if (lang = '') then
    lang := 'BG';

  SetLocaleOverride(lang);
end;

initialization
  SetLanguageOverride;
end.
