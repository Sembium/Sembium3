unit uDeptDetailFlow;

interface

type
  TToolType = (ttProgram, ttSpecific, ttTypical);

type
  TStructPartType = (sptResult, sptDetail, sptMaterial);

function ToolTypeToInt(AValue: TToolType): Integer;
function IntToToolType(AValue: Integer): TToolType;

function StructPartTypeToInt(AValue: TStructPartType): Integer;
function IntToStructPartType(AValue: Integer): TStructPartType;

implementation

function ToolTypeToInt(AValue: TToolType): Integer;
const
  Values: array[TToolType] of Integer = (
    0, // ttProgram
    1, // ttSpecific
    2  // ttTypical
  );
begin
  Assert(AValue >= Low(Values));
  Assert(AValue <= High(Values));
  Result:= Values[AValue];
end;

function IntToToolType(AValue: Integer): TToolType;
const
  Values: array[0..2] of TToolType = (
    ttProgram,  // 0
    ttSpecific, // 1
    ttTypical   // 2
  );
begin
  Assert(AValue >= Low(Values));
  Assert(AValue <= High(Values));
  Result:= Values[AValue];
end;

function StructPartTypeToInt(AValue: TStructPartType): Integer;
const
  Values: array[TStructPartType] of Integer = (
    0, // sptResult
    1, // sptDetail
    2  // sptMaterial
  );
begin
  Assert(AValue >= Low(Values));
  Assert(AValue <= High(Values));
  Result:= Values[AValue];
end;

function IntToStructPartType(AValue: Integer): TStructPartType;
const
  Values: array[0..2] of TStructPartType = (
    sptResult,  // 0
    sptDetail, // 1
    sptMaterial   // 2
  );
begin
  Assert(AValue >= Low(Values));
  Assert(AValue <= High(Values));
  Result:= Values[AValue];
end;

end.
