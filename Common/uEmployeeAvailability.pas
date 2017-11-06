unit uEmployeeAvailability;

interface

const
  eamtcDayAbsence = 1;
  eamtcShiftChange = 7;

type
  TDayAbsenceReason = (
    darNoDayAbsence,
    darPlanSelfAbsence,
    darRealSelfAbsence,
    darVacation,
    darMaternity,
    darSickness,
    darState,
    darAdministrative
  );

type
  TTotalKind = (tkNone, tkOfficial, tkRealTotal, tkRealWorkday, tkRealDayOff);

const
  OfficialTotalFieldNamePrefix = 'OFFICIAL_';
  RealTTotalFieldNamePrefix = 'REAL_T_';
  RealWTotalFieldNamePrefix = 'REAL_W_';
  RealOTotalFieldNamePrefix = 'REAL_O_';

  ApprovedOvertimeHoursAfterSuffix = 'APP_OVERTIME_HOURS';
  UnapprovedOvertimeHoursAfterSuffix = 'UNAPP_OVERTIME_HOURS';
  OfftimePresenceHoursAfterSuffix = 'OFFTIME_PRESENCE_HRS';
  UnapprovedAbsenceHoursAfterSuffix = 'UNAPP_ABSENCE_HOURS';

  TotalFieldNamePreffixes: array[TTotalKind] of string =
    ('', OfficialTotalFieldNamePrefix, RealTTotalFieldNamePrefix,
     RealWTotalFieldNamePrefix, RealOTotalFieldNamePrefix);

  NoOccupationEmployee = '···';

type
  TAvailabilityStatus = (
    asNone,
    asOfftime,
    asShiftCycleBreak,
    asOfftimePresence,
    asUnapprovedOvertimePresence,
    asNormalPresence,
    asApprovedOvertimePresence,
    asApprovedAbsence,
    asUnapprovedFutureAbsence,
    asUnapprovedPastAbsence);

function DayAbsenceReasonToInt(AValue: TDayAbsenceReason): Integer;
function IntToDayAbsenceReason(AValue: Integer): TDayAbsenceReason;

function AvailabilityStatusToInt(Value: TAvailabilityStatus): Integer;
function IntToAvailabilityStatus(Value: Integer): TAvailabilityStatus;

implementation

function DayAbsenceReasonToInt(AValue: TDayAbsenceReason): Integer;
const
  Values: array[TDayAbsenceReason] of Integer = (
    0,  // darNoDayAbsence
    -1, // darPlanSelfAbsence
    1,  // darRealSelfAbsence
    2,  // darVacation
    3,  // darMaternity
    4,  // darSickness
    5,  // darState
    6   // darAdministrative
  );
begin
  Assert(AValue >= Low(Values));
  Assert(AValue <= High(Values));
  Result:= Values[AValue];
end;

function IntToDayAbsenceReason(AValue: Integer): TDayAbsenceReason;
const
  Values: array[-1..6] of TDayAbsenceReason = (
    darPlanSelfAbsence, // -1
    darNoDayAbsence,    // 0
    darRealSelfAbsence, // 1
    darVacation,        // 2
    darMaternity,       // 3
    darSickness,        // 4
    darState,           // 5
    darAdministrative   // 6
  );
begin
  Assert(AValue >= Low(Values));
  Assert(AValue <= High(Values));
  Result:= Values[AValue];
end;

function AvailabilityStatusToInt(Value: TAvailabilityStatus): Integer;
begin
  Result:= Ord(Value);
end;

function IntToAvailabilityStatus(Value: Integer): TAvailabilityStatus;
begin
  Result:= TAvailabilityStatus(Value);
end;

end.
