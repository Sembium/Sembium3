unit uCapacityClient;

interface

uses
  Classes, uLoginContext, uAspectTypes, Graphics, uCapacity, uPeriods;

const
  DefaultCapacityTimeUnits: array[TAspectType] of TPeriod = (perDay, perMonth, perDay);

function GetCapacityFieldTypeDisplayLabel(ACapacityFieldType: TCapacityFieldType; AIsPlan: Boolean): string;

function GetCapacityFieldTypeColor(ACapacityFieldType: TCapacityFieldType; AIsPlan, AHasValue: Boolean): TColor;

function CreateCommonMsgParams(
  ALoginContext: TLoginContext;
  AAspectType: TAspectType): TStrings;

implementation

uses
  SysUtils, uUtils, uColorConsts;

resourcestring
  SDeptLevelLimit = 'Нива Разполагаем Капацитет|Разчетен';
  SOccupationLevelLimitDiff = 'Нива Разполагаем Капацитет|Нрм - Рзч';
  SOccupationLevelLimit = 'Нива Разполагаем Капацитет|Норматив.';
  SOccupationAssignmentLevelLimitDiff = 'Нива Разполагаем Капацитет|Орг - Нрм';
  SOccupationAssignmentLevelLimit = 'Нива Разполагаем Капацитет|Организац.';
  SEmployeeAvailabilityLevelLimitDiff = 'Нива Разполагаем Капацитет|Прс - Орг';
  SEmployeeAvailabilityLevelLimit = 'Нива Разполагаем Капацитет|Присъств.';

  SLimit        = 'Разполаг.';
  SLogistics    = 'Обслуж.';
  SExploitation = 'Експлоат.';
  SFree         = 'Свободен';
  SPlanExcess   = 'Дефицит';
  SRealExcess   = 'Пренатов.';

  SEstCapacity = 'Перспективен Капацитет';
  SRealCapacity = 'Реализационен Капацитет';

  SEstHours = 'Перспективни часове';
  SPlanHours = 'Планови часове';

  SEst = 'Перспективен';
  SPlan = 'Планов';

const
  Capacity: array[TAspectType] of string = ('', SEstCapacity, SRealCapacity);
  PlanHours: array[TAspectType] of string = ('', SEstHours, SPlanHours);
  Plan: array[TAspectType] of string = ('', SEst, SPlan);

{ Routines }

function CreateCommonMsgParams(
  ALoginContext: TLoginContext;
  AAspectType: TAspectType): TStrings;
begin
  Result:= TStringList.Create;
  try
    Result.Clear;
    Result.ValuesEx['Capacity']:= Capacity[AAspectType];
    Result.ValuesEx['PlanHours']:= PlanHours[AAspectType];
    Result.ValuesEx['Plan']:= Plan[AAspectType];
  except
    FreeAndNil(Result);
    raise;
  end;  { try }
end;

function GetCapacityFieldTypeDisplayLabel(ACapacityFieldType: TCapacityFieldType; AIsPlan: Boolean): string;
const
  CapacityFieldTypeDisplayLabels: array[TCapacityFieldType] of string = (
    'UNKNOWN',
    SDeptLevelLimit,
    SOccupationLevelLimitDiff,
    SOccupationLevelLimit,
    SOccupationAssignmentLevelLimitDiff,
    SOccupationAssignmentLevelLimit,
    SEmployeeAvailabilityLevelLimitDiff,
    SEmployeeAvailabilityLevelLimit,
    SLimit,
    SLogistics,
    SExploitation,
    SFree,
    SPlanExcess
  );
begin
  if (ACapacityFieldType = cftExcessHours) and not AIsPlan then
    Result:= SRealExcess
  else
    Result:= CapacityFieldTypeDisplayLabels[ACapacityFieldType];
end;

function GetCapacityFieldTypeColor(ACapacityFieldType: TCapacityFieldType; AIsPlan, AHasValue: Boolean): TColor;
const
  CapacityFieldTypeColors: array[TCapacityFieldType, Boolean] of TColor = (
    (clRed, clRed),
    (clCream, clCream),
    (clWindow, clWindow),
    (clCream, clCream),
    (clWindow, clWindow),
    (clCream, clCream),
    (clWindow, clWindow),
    (clCream, clCream),
    ($00DAE8D9, $00DAE8D9),
    ($00CEE7FF, $00E1F0FF),
    ($00E8DDD2, $00F2ECE6),
    ($00D7FFD7, $00E8FFE8),
    (clWindow, clWindow)
  );
const
  ExcessColors: array[Boolean] of TColor = (
    ccCapacityGraphRealDeficitBackground,
    ccCapacityGraphPlanDeficitBackground
  );
begin
  if (ACapacityFieldType = cftExcessHours) and AHasValue then
    Result:= ExcessColors[AIsPlan]
  else
    Result:= CapacityFieldTypeColors[ACapacityFieldType, AIsPlan];
end;

end.

