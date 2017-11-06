unit uEarningTypes;

interface

type
  TEarningType = (etMixed, etTeam, etPersonal);

function IntToEarningType(Value: Integer): TEarningType;
function EarningTypeToInt(Value: TEarningType): Integer;

implementation

uses
  SysUtils, uServerMessageIds;

function IntToEarningType(Value: Integer): TEarningType;
begin
  case Value of
    0: Result:= etMixed;
    1: Result:= etTeam;
    2: Result:= etPersonal;
  else
    raise Exception.Create(SUnknownEarningTypeId);
  end;  { case }
end;

function EarningTypeToInt(Value: TEarningType): Integer;
begin
  Result:= Ord(Value);
end;

end.
