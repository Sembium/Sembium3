unit uAspectTypes;

interface

type
  TAspectType = (atNone, atEstimation, atRealization);

function AspectTypeToInt(AValue: TAspectType): Integer;
function IntToAspectType(AValue: Integer): TAspectType;

implementation

uses
  SysUtils;

function AspectTypeToInt(AValue: TAspectType): Integer;
const
  Values: array[TAspectType] of Integer = (0, 1, 2);
begin
  Result:= Values[AValue];
end;

function IntToAspectType(AValue: Integer): TAspectType;
const
  Values: array[0..2] of TAspectType = (atNone, atEstimation, atRealization);
begin
  Assert(AValue >= Low(Values));
  Assert(AValue <= High(Values));

  Result:= Values[AValue];
end;

end.
