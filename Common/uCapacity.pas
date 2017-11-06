unit uCapacity;

interface

uses
  DB;

type
  TCapacityFieldType = (
    cftUnknown,
    cftDeptLevelLimitHours,
    cftOccupationLevelLimitHoursDiff,
    cftOccupationLevelLimitHours,
    cftOccupationAssignmentLevelLimitHoursDiff,
    cftOccupationAssignmentLevelLimitHours,
    cftEmployeeAvailabilityLevelLimitHoursDiff,
    cftEmployeeAvailabilityLevelLimitHours,
    cftLimitHours,
    cftLogisticsHours,
    cftExploitationHours,
    cftFreeHours,
    cftExcessHours);

type
  TCapacityFieldTypes = set of TCapacityFieldType;

const
  AllLevelsLimitHoursFieldTypes: TCapacityFieldTypes = [
    cftDeptLevelLimitHours,
    cftOccupationLevelLimitHoursDiff,
    cftOccupationLevelLimitHours,
    cftOccupationAssignmentLevelLimitHoursDiff,
    cftOccupationAssignmentLevelLimitHours,
    cftEmployeeAvailabilityLevelLimitHoursDiff,
    cftEmployeeAvailabilityLevelLimitHours];

procedure ToggleSetElement(var ASet: TCapacityFieldTypes; AElement: TCapacityFieldType); overload;

function GetCapacityFieldTypeName(ACapacityFieldType: TCapacityFieldType): string;

function GetCapacityStateParamName(ACapacityFieldType: TCapacityFieldType): string;

function GetCapacityDateFieldName(
  ADateNo: Integer; AIsPlan: Boolean; ACapacityFieldType: TCapacityFieldType): string;

function GetCapacityFieldIsPlan(AField: TField): Boolean;

function GetCapacityFieldType(AField: TField): TCapacityFieldType;

implementation

uses
  SysUtils;

procedure ToggleSetElement(var ASet: TCapacityFieldTypes; AElement: TCapacityFieldType); overload;
begin
  if (AElement in ASet) then
    Exclude(ASet, AElement)
  else
    Include(ASet, AElement);
end;

function GetCapacityFieldTypeName(ACapacityFieldType: TCapacityFieldType): string;
const
  CapacityFieldTypeNames: array[TCapacityFieldType] of string = (
    'UNKNOWN',
    'DEPT_LIMIT_HOURS',
    'OCC_LIMIT_HOURS_D',
    'OCC_LIMIT_HOURS',
    'OCC_ASS_LIMIT_HOURS_D',
    'OCC_ASS_LIMIT_HOURS',
    'EMP_AVAIL_LIMIT_HOURS_D',
    'EMP_AVAIL_LIMIT_HOURS',
    'LIMIT_HOURS',
    'LOGISTICS_HOURS',
    'EXPLOITATION_HOURS',
    'FREE_HOURS',
    'EXCESS_HOURS'
  );
begin
  Result:= CapacityFieldTypeNames[ACapacityFieldType];
end;

function GetCapacityStateParamName(ACapacityFieldType: TCapacityFieldType): string;
begin
  Result:= GetCapacityFieldTypeName(ACapacityFieldType) + '_STATE';
end;

function GetCapacityDateFieldName(
  ADateNo: Integer; AIsPlan: Boolean; ACapacityFieldType: TCapacityFieldType): string;
const
  IsPlanWords: array[Boolean] of string = ('R', 'P');
begin
  Result:=
    Format(
      'D_%.2d_%s_%s',
      [ ADateNo,
        IsPlanWords[AIsPlan],
        GetCapacityFieldTypeName(ACapacityFieldType)]);
end;

function GetCapacityFieldIsPlan(AField: TField): Boolean;
begin
  Assert(Assigned(AField));
  Result:=
    (Pos('_P_', AField.FieldName) > 0) or (Pos('_PLAN_', AField.FieldName) > 0);
end;

function GetCapacityFieldType(AField: TField): TCapacityFieldType;
var
  i: TCapacityFieldType;
begin
  Result:= cftUnknown;
  if Assigned(AField) then
    for i:= Low(TCapacityFieldType) to High(TCapacityFieldType) do
      if (Pos(GetCapacityFieldTypeName(i), AField.FieldName) > 0) then
        begin
          Result:= i;
          Exit;
        end;  { if }
end;

end.
