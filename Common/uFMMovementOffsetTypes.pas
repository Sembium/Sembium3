unit uFMMovementOffsetTypes;

interface

type
  TFMMovementOffsetType = (fmmotNone, fmmotBeginning, fmmotEnd);

function IntToFMMovementOffsetType(Value: Integer): TFMMovementOffsetType;
function FMMovementOffsetTypeToInt(Value: TFMMovementOffsetType): Integer;

implementation

uses
  SysUtils;

function IntToFMMovementOffsetType(Value: Integer): TFMMovementOffsetType;
begin
  case Value of
    0: Result:= fmmotNone;
    1: Result:= fmmotBeginning;
    2: Result:= fmmotEnd;
  else
    raise Exception.Create('Unknown FMModelMovementOffsetType');
  end;  { case }
end;

function FMMovementOffsetTypeToInt(Value: TFMMovementOffsetType): Integer;
begin
  Result:= Ord(Value);
end;

end.
