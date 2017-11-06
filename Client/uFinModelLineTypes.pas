unit uFinModelLineTypes;

interface

type
  TFinModelLineType = (fmltNone, fmltPrimary, fmltSecondary);

function IntToFinModelLineType(Value: Integer): TFinModelLineType;
function FinModelLineTypeToInt(Value: TFinModelLineType): Integer;

implementation

uses
  SysUtils, uServerMessageIds;

function IntToFinModelLineType(Value: Integer): TFinModelLineType;
begin
  case Value of
    0: Result:= fmltNone;
    1: Result:= fmltPrimary;
    2: Result:= fmltSecondary;
  else
    raise Exception.Create('uFinModelLineTypes: Unknown finance model line type code');
  end;  { case }
end;

function FinModelLineTypeToInt(Value: TFinModelLineType): Integer;
begin
  case Value of
    fmltNone: Result:= 0;
    fmltPrimary: Result:= 1;
    fmltSecondary: Result:= 2;
  else
    raise Exception.Create('uFinModelLineTypes: Unknown finance model line type');
  end;  { case }
end;

end.
