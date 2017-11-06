unit uSvrEmployeeAvailability;

interface

uses
  Generics.Collections, uEmployeeAvailability, uSimpleDictionaries;

type
  TTimeKind = (tkPast, tkFuture);
  TOfficialDayKind = (odkOfficialDayOff, odkOfficialWorkday);
  TOfficialDayKindSet = set of TOfficialDayKind;

const
  darDefault = darNoDayAbsence;

type
  TPresenceCountedAs = (
    pcaOfftimePresence,
    pcaOvertimeShiftCycleBreakPresence,
    pcaNormalShiftCycleBreakPresence,
    pcaUnapprovedRequiredOvertimeExtraPresence,
    pcaUnapprovedRequiredOvertimeShiftCyclePresence,
    pcaApprovedOvertimeExtraPresence,
    pcaApprovedOvertimeShiftCyclePresence,
    pcaNormalExtraPresence,
    pcaNormalShiftCyclePresence);

  TAbsenceCountedAs = (
    acaOfftimeAbsence,
    acaOvertimeShiftCycleBreakAbsence,
    acaNormalShiftCycleBreakAbsence,
    acaUnapprovedOvertimeExtraAbsence,
    acaUnapprovedOvertimeShiftCycleAbsence,
    acaUnapprovedNormalExtraAbsence,
    acaUnapprovedNormalShiftCycleAbsence,
    acaApprovedOvertimeExtraAbsence,
    acaApprovedOvertimeShiftCycleAbsence,
    acaApprovedNormalExtraAbsence,
    acaApprovedNormalShiftCycleAbsence);

const
  pcaDefault = pcaOfftimePresence;
  acaDefault = acaOfftimeAbsence;

type
  TEmployeeHourAvailabilityModifierType = (  // reda e vajen - tova e reda na prilaganeto im
    amtNormalPresenceRequirementAndApprovementShiftCycle,
    amtNormalPresenceRequirementAndApprovementModifier,
    amtOvertimePresenceRequirementShiftCycle,
    amtOvertimePresenceRequirementModifier,
    amtArtificialPresenceShiftCycle,
    amtArtificialPresenceModifier,
    amtHourAbsenceApprovementModifier,
    amtOvertimePresenceApprovementModifier
  );

type
  TPassNo = (
    pnFirst,  // obhojdane na granuli, koito otgovariat na osnovnoto uslovie, dokato ne sme izcherpali efektivnoto k-vo na modifiera. prilaga se za vsichki
    pnSecond, // obhojdane na granuli, koito ne otgovariat na osnovnoto uslovie, dokato ne sme izcherpali efektivnoto k-vo na modifiera. prilaga se samo v sluchai na requirement
    pnThird); // obhojdane na vsichki ostanali granuli, vlizashti v intervala na modifiera, za koito ne e ostanalo efektivno k-vo. prilaga se samo v sluchai na NormalShiftCycle i OvertimeShiftCycle

    
type
  TGranule = class;
  TGranuleList = TObjectList<TGranule>;
  TGranuleInterval = class;
  TGranuleIntervalList = TObjectList<TGranuleInterval>;

  TModifier = class
  private
    FBeginGranuleIndex: Integer;
    FEndGranuleIndex: Integer;
    FEffectiveGranuleCount: Integer;
    FReasonCode: Integer;
    FPendingGranuleCount: Integer;
  protected
    procedure SetData(ABeginGranuleIndex, AEndGranuleIndex: Integer; AReasonCode: Integer); overload;
    procedure SetData(ABeginGranuleIndex, AEndGranuleIndex, AEffectiveGranuleCount: Integer; AReasonCode: Integer); overload;
    function IsPending: Boolean;
    procedure UnpendOneGranule;
  public
    constructor Create(ABeginGranuleIndex, AEndGranuleIndex: Integer; AReasonCode: Integer); overload;
    constructor Create(ABeginGranuleIndex, AEndGranuleIndex, AEffectiveGranuleCount: Integer; AReasonCode: Integer); overload;

    property ReasonCode: Integer read FReasonCode;
  end;

  TModifierList = TObjectList<TModifier>;

  TModifierListProcessor = class
  strict protected
    class function NeedsPassNo(APassNo: TPassNo): Boolean; virtual; abstract;
    class function IsGranuleGoodMarkingAtPass(AGranule: TGranule; APassNo: TPassNo): Boolean; virtual; abstract;
    class procedure MarkGranule(AGranule: TGranule; APassNo: TPassNo); virtual; abstract;
  public
    class procedure ApplyToGranules(AModifierList: TModifierList; AGranules: TGranuleList; AActiveGranuleIntervals: TGranuleIntervalList);
  end;

  TModifierListProcessorClass = class of TModifierListProcessor;


  TNormalPresenceRequirementAndApprovementShiftCycleModifierListProcessor = class(TModifierListProcessor)
  strict protected
    class function NeedsPassNo(APassNo: TPassNo): Boolean; override;
    class function IsGranuleGoodMarkingAtPass(AGranule: TGranule; APassNo: TPassNo): Boolean; override;
    class procedure MarkGranule(AGranule: TGranule; APassNo: TPassNo); override;
  end;

  TNormalPresenceRequirementAndApprovementExtraModifierListProcessor = class(TModifierListProcessor)
  strict protected
    class function NeedsPassNo(APassNo: TPassNo): Boolean; override;
    class function IsGranuleGoodMarkingAtPass(AGranule: TGranule; APassNo: TPassNo): Boolean; override;
    class procedure MarkGranule(AGranule: TGranule; APassNo: TPassNo); override;
  end;

  TOvertimePresenceRequirementShiftCycleModifierListProcessor = class(TModifierListProcessor)
  strict protected
    class function NeedsPassNo(APassNo: TPassNo): Boolean; override;
    class function IsGranuleGoodMarkingAtPass(AGranule: TGranule; APassNo: TPassNo): Boolean; override;
    class procedure MarkGranule(AGranule: TGranule; APassNo: TPassNo); override;
  end;

  TOvertimePresenceRequirementExtraModifierListProcessor = class(TModifierListProcessor)
  strict protected
    class function NeedsPassNo(APassNo: TPassNo): Boolean; override;
    class function IsGranuleGoodMarkingAtPass(AGranule: TGranule; APassNo: TPassNo): Boolean; override;
    class procedure MarkGranule(AGranule: TGranule; APassNo: TPassNo); override;
  end;

  // TArtificialPresenceModifierListProcessor se izpozla i za ShiftCycle i za Extra Modifier
  TArtificialPresenceModifierListProcessor = class(TModifierListProcessor)
  strict protected
    class function NeedsPassNo(APassNo: TPassNo): Boolean; override;
    class function IsGranuleGoodMarkingAtPass(AGranule: TGranule; APassNo: TPassNo): Boolean; override;
    class procedure MarkGranule(AGranule: TGranule; APassNo: TPassNo); override;
  end;

  THourAbsenceApprovementModifierListProcessor = class(TModifierListProcessor)
  strict protected
    class function NeedsPassNo(APassNo: TPassNo): Boolean; override;
    class function IsGranuleGoodMarkingAtPass(AGranule: TGranule; APassNo: TPassNo): Boolean; override;
    class procedure MarkGranule(AGranule: TGranule; APassNo: TPassNo); override;
  end;

  TOvertimePresenceApprovementModifierListProcessor = class(TModifierListProcessor)
  strict protected
    class function NeedsPassNo(APassNo: TPassNo): Boolean; override;
    class function IsGranuleGoodMarkingAtPass(AGranule: TGranule; APassNo: TPassNo): Boolean; override;
    class procedure MarkGranule(AGranule: TGranule; APassNo: TPassNo); override;
  end;


  TShiftChangeModifier = class
  private
    FOldShiftCode: Integer;
    FNewShiftCode: Integer;
    FReasonCode: Integer;
  public
    constructor Create(AOldShiftCode, ANewShiftCode: Integer; AReasonCode: Integer);
    property OldShiftCode: Integer read FOldShiftCode;
    property NewShiftCode: Integer read FNewShiftCode;
    property ReasonCode: Integer read FReasonCode;
  end;

  TShiftChangeModifierList = TObjectList<TShiftChangeModifier>;

  TDay = class
  private
    FOfficialDayKind: TOfficialDayKind;

    FCalendarDayBeginGranuleIndex: Integer;
    FCalendarDayEndGranuleIndex: Integer;

    FWorkdayBeginGranuleIndex: Integer;
    FWorkdayEndGranuleIndex: Integer;

    FOccupationCode: Integer;
    FShiftCode: Integer;

    FDayAbsenceReason: TDayAbsenceReason;
    FIsDayAbsenceConfirmed: Boolean;

    FShiftChangeModifiers: TShiftChangeModifierList;

    FPresenceGranuleCounts: array[TPresenceCountedAs, TTimeKind] of Integer;
    FAbsenceGranuleCounts: array[TAbsenceCountedAs, TTimeKind] of Integer;

    FHourAvailabilityModifiers: array[TEmployeeHourAvailabilityModifierType] of TModifierList;
    FHasUnmatchedMovements: Boolean;

    function GetHasShiftChangeModifiers: Boolean;

    procedure ClearPresenceGranuleCounts;
    procedure ClearAbsenceGranuleCounts;
    procedure ClearHourAvailabilityModifiers;

    function GetHasDayAbsence: Boolean;

    function GetSumPresenceGranuleCounts(PresenceCountedAs: TPresenceCountedAs): Integer;
    function GetSumAbsenceGranuleCounts(AbsenceCountedAs: TAbsenceCountedAs): Integer;

    function GetPresenceHours(PresenceCountedAs: TPresenceCountedAs; TimeKind: TTimeKind): Real;
    function GetAbsenceHours(AbsenceCountedAs: TAbsenceCountedAs; TimeKind: TTimeKind): Real;

    function GetSumPresenceHours(PresenceCountedAs: TPresenceCountedAs): Real;
    function GetSumAbsenceHours(AbsenceCountedAs: TAbsenceCountedAs): Real;

    function GetHourAvailabilityModifiers(
      EmployeeHourAvailabilityModifierType: TEmployeeHourAvailabilityModifierType): TModifierList;

    function GetHasHourAvailabilityModifiers(
      EmployeeHourAvailabilityModifierType: TEmployeeHourAvailabilityModifierType): Boolean;
    function GetEffectiveShiftCode: Integer;
  protected
    procedure ClearDayData;
    procedure AddDayAbsenceModifier(ADayAbsenceReason: TDayAbsenceReason; AIsDayAbsenceConfirmed: Boolean);
    procedure AddShiftChangeModifier(AOldShiftCode, ANewShiftCode: Integer; AReasonCode: Integer);
    procedure SetOccupationAndShift(AOccupationCode, AShiftCode: Integer);

    property SumPresenceGranuleCounts[PresenceCountedAs: TPresenceCountedAs]: Integer read GetSumPresenceGranuleCounts;
    property SumAbsenceGranuleCounts[AbsenceCountedAs: TAbsenceCountedAs]: Integer read GetSumAbsenceGranuleCounts;
  public
    constructor Create;
    destructor Destroy; override;

    property OfficialDayKind: TOfficialDayKind read FOfficialDayKind;

    property OccupationCode: Integer read FOccupationCode;
    property ShiftCode: Integer read FShiftCode;
    property EffectiveShiftCode: Integer read GetEffectiveShiftCode;

    property HasDayAbsence: Boolean read GetHasDayAbsence;
    property DayAbsenceReason: TDayAbsenceReason read FDayAbsenceReason;
    property IsDayAbsenceConfirmed: Boolean read FIsDayAbsenceConfirmed;

    property PresenceHours[PresenceCountedAs: TPresenceCountedAs; TimeKind: TTimeKind]: Real read GetPresenceHours;
    property AbsenceHours[AbsenceCountedAs: TAbsenceCountedAs; TimeKind: TTimeKind]: Real read GetAbsenceHours;
    property SumPresenceHours[PresenceCountedAs: TPresenceCountedAs]: Real read GetSumPresenceHours;
    property SumAbsenceHours[AbsenceCountedAs: TAbsenceCountedAs]: Real read GetSumAbsenceHours;

    property CalendarDayBeginGranuleIndex: Integer read FCalendarDayBeginGranuleIndex;
    property CalendarDayEndGranuleIndex: Integer read FCalendarDayEndGranuleIndex;

    property WorkdayBeginGranuleIndex: Integer read FWorkdayBeginGranuleIndex;
    property WorkdayEndGranuleIndex: Integer read FWorkdayEndGranuleIndex;

    property ShiftChangeModifiers: TShiftChangeModifierList read FShiftChangeModifiers;
    property HasShiftChangeModifiers: Boolean read GetHasShiftChangeModifiers;

    property HourAvailabilityModifiers[EmployeeHourAvailabilityModifierType: TEmployeeHourAvailabilityModifierType]: TModifierList read GetHourAvailabilityModifiers;
    property HasHourAvailabilityModifiers[EmployeeHourAvailabilityModifierType: TEmployeeHourAvailabilityModifierType]: Boolean read GetHasHourAvailabilityModifiers;

    property HasUnmatchedMovements: Boolean read FHasUnmatchedMovements;
  end;

  TDayList = TObjectList<TDay>;

  TGranule = class
  private
    FTimeKind: TTimeKind;
    FDay: TDay;
    FHasUnmatchedMovements: Boolean;
    FHasRegisteredPresence: Boolean;
    FHasArtificialPresence: Boolean;
    FPresenceCountedAs: TPresenceCountedAs;
    FAbsenceCountedAs: TAbsenceCountedAs;
    FContainingModifiers: TModifierList;
    procedure ClearGranuleData;
    procedure ClearPresenceAndAbsence;
    procedure ClearContainingModifiers;
    procedure UpgradePresenceCountedAs(ANewValue: TPresenceCountedAs);
    procedure UpgradeAbsenceCountedAs(ANewValue: TAbsenceCountedAs);
    function GetHasPresence: Boolean;
    function GetAvailabilityStatus: TAvailabilityStatus;
  protected
    function GetPendingModifierCount: Integer;
  public
    constructor Create(ATimeKind: TTimeKind);
    destructor Destroy; override;

    property TimeKind: TTimeKind read FTimeKind;
    property HasPresence: Boolean read GetHasPresence;
    property PresenceCountedAs: TPresenceCountedAs read FPresenceCountedAs;
    property AbsenceCountedAs: TAbsenceCountedAs read FAbsenceCountedAs;
    property AvailabilityStatus: TAvailabilityStatus read GetAvailabilityStatus;
  end;

  TGranuleInterval = class
  private
    FBeginGranuleIndex: Integer;
    FEndGranuleIndex: Integer;
  public
    constructor Create(ABeginGranuleIndex, AEndGranuleIndex: Integer);
    function ContainsGranuleIndex(AGranuleIndex: Integer): Boolean;
    function IsInTouchWithGranuleInterval(AGranuleInterval: TGranuleInterval): Boolean; overload;
    function IsInTouchWithGranuleInterval(ABeginGranuleIndex, AEndGranuleIndex: Integer): Boolean; overload;
  end;

type
  TRelativeGranuleInterval = class
  private
    FBeginRelativeGranuleIndex: Integer;
    FEndRelativeGranuleIndex: Integer;
    FEffectiveGranuleCount: Integer;
  public
    constructor Create(ABeginRelativeGranuleIndex, AEndRelativeGranuleIndex: Integer); overload;
    constructor Create(ABeginRelativeGranuleIndex, AEndRelativeGranuleIndex, AEffectiveGranuleCount: Integer); overload;
    procedure SetData(ABeginRelativeGranuleIndex, AEndRelativeGranuleIndex: Integer); overload;
    procedure SetData(ABeginRelativeGranuleIndex, AEndRelativeGranuleIndex, AEffectiveGranuleCount: Integer); overload;
    function ContainsRelativeGranuleIndex(ARelativeGranuleIndex: Integer): Boolean;
    function IsFullyEffective: Boolean;
  end;

  TRelativeGranuleIntervalList = TObjectList<TRelativeGranuleInterval>;

type
  TShiftCycle = class
  private
    FShiftCycleCode: Integer;
    FIsOvertime: Boolean;
    FRelativeGranuleIntervals: TRelativeGranuleIntervalList;
  public
    constructor Create(AShiftCycleCode: Integer; AIsOvertime: Boolean; AWorkdayBeginTime, AWorkdayEndTime: TDateTime);
    destructor Destroy; override;
    procedure AddBreak(ABreakBeginTime, ABreakEndTime: TDateTime; ABreakDurationHours: Real);
  end;

  TShiftCycleList = class(TObjectList<TShiftCycle>)
  private
    function FindShiftCycle(AShiftCycleCode: Integer): TShiftCycle;
  end;

type
  TEmployeeAvailabilityTotals = class
  private
    FEmployeeHasUnmatchedMovements: Boolean;

    FEmployeePresenceGranuleCounts: array[TPresenceCountedAs, TTimeKind, TOfficialDayKind] of Integer;
    FEmployeeAbsenceGranuleCounts: array[TAbsenceCountedAs, TTimeKind, TOfficialDayKind] of Integer;

    FEmployeeDayAbsenceCounts: array[Succ(Low(TDayAbsenceReason))..High(TDayAbsenceReason), TOfficialDayKind] of Integer;
    FEmployeeNormalPresenceDayCounts: array[TOfficialDayKind] of Integer;

    FDayCounts: array[TOfficialDayKind] of Integer;

    function GetEmployeePresenceGranuleCounts(
      PresenceCountedAs: TPresenceCountedAs; TimeKind: TTimeKind;
      OfficialDayKind: TOfficialDayKind): Integer;
    function GetEmployeeAbsenceGranuleCounts(
      AbsenceCountedAs: TAbsenceCountedAs; TimeKind: TTimeKind;
      OfficialDayKind: TOfficialDayKind): Integer;
    function GetEmployeeDayAbsenceCounts(
      DayAbsenceReason: TDayAbsenceReason;
      OfficialDayKind: TOfficialDayKind): Integer;
    function GetEmployeeNormalPresenceDayCounts(
      OfficialDayKind: TOfficialDayKind): Integer;
    function GetDayCounts(OfficialDayKind: TOfficialDayKind): Integer;
  public
    property EmployeeHasUnmatchedMovements: Boolean read FEmployeeHasUnmatchedMovements;

    property EmployeePresenceGranuleCounts[PresenceCountedAs: TPresenceCountedAs; TimeKind: TTimeKind; OfficialDayKind: TOfficialDayKind]: Integer read GetEmployeePresenceGranuleCounts;
    property EmployeeAbsenceGranuleCounts[AbsenceCountedAs: TAbsenceCountedAs; TimeKind: TTimeKind; OfficialDayKind: TOfficialDayKind]: Integer read GetEmployeeAbsenceGranuleCounts;

    property EmployeeDayAbsenceCounts[DayAbsenceReason: TDayAbsenceReason; OfficialDayKind: TOfficialDayKind]: Integer read GetEmployeeDayAbsenceCounts;
    property EmployeeNormalPresenceDayCounts[OfficialDayKind: TOfficialDayKind]: Integer read GetEmployeeNormalPresenceDayCounts;

    property DayCounts[OfficialDayKind: TOfficialDayKind]: Integer read GetDayCounts;
  end;

  TEmployeeAvailabilityOccupationTotals = class(TEmployeeAvailabilityTotals)
  strict private
    FTotalsByShift: TSimpleObjectDictionary<Integer, TEmployeeAvailabilityTotals>;
  public
    constructor Create;
    destructor Destroy; override;
    property TotalsByShift: TSimpleObjectDictionary<Integer, TEmployeeAvailabilityTotals> read FTotalsByShift;
  end;

type
  TEmployeeAvailabilityCalculator = class
  strict private
    FBeginDate: TDateTime;
    FEndDate: TDateTime;
    FBeginDateTime: TDateTime;
    FEndDateTime: TDateTime;
    FCurrentDateTime: TDateTime;
    FCurrentDateTimeGranuleIndex: Integer;

    FMinIntegralOfftimePresenceGranuleCount: Real;
    FShiftCycles: TShiftCycleList;

    FEmployeeActiveGranuleIntervals: TGranuleIntervalList;

    FEmployeeCode: Integer;
    FEmployeeHourAvailabilityModifiers: array[TEmployeeHourAvailabilityModifierType] of TModifierList;
    FEmployeeDays: TDayList;
    FEmployeeGranules: TGranuleList;
    FEmployeeIsAvailableNow: Boolean;

    FTotalsByOccupation: TSimpleObjectDictionary<Integer, TEmployeeAvailabilityOccupationTotals>;

    function GetContainsCurrentDateTime: Boolean;

    function GetCalcBeginDate: TDateTime;
    function GetCalcEndDate: TDateTime;
    function GetEmployeeDays(Index: TDateTime): TDay;

    procedure AddActiveGranuleInterval(ABeginGranuleIndex, AEndGranuleIndex: Integer);

    procedure ClearEmployeeData;
    procedure ClearEmployeeModifiers;
    procedure ClearGranuleData;
    procedure ClearDayData;

    procedure SetDefaultDayGranules;
    procedure RevertToDefaultDayGranules;
    procedure ExtendPrevDayToGranule(AEndGranuleIndex: Integer);

    procedure SetEmployeeIsAvailableNow;
    procedure InternalAddEmployeeRegisteredPresence(ABeginGranuleIndex,
      AEndGranuleIndex: Integer);

    procedure ApplyModifiersToGranules;
    procedure ClearShortIntegralOfftimePresenceFromGranules;
    procedure AggregateDaysFromGranules;
    procedure MarkNotConfirmedSelfAbsenceDays;
    procedure ClearPresenceAndAbsenceInDaysWithDayAbsence;
    procedure ClearPresenceAndAbsenceInGranulesWithDayAbsence;
    procedure AggregateDaysHourAvailabilityModifierIndicators;
    procedure AggregateTotals;

    function GetTotalsByOccupation(
      OccupationCode: Integer): TEmployeeAvailabilityOccupationTotals;
    procedure SetTotalsByOccupation(OccupationCode: Integer;
      const Value: TEmployeeAvailabilityOccupationTotals);
  protected
    function DateTimeToGranuleIndex(ADateTime: TDateTime): Integer;
    function DateToDayIndex(ADate: TDateTime): Integer;
    function DayIndexToGranuleIndex(ADateIndex: Integer): Integer;
    function GranuleIndexToDayIndex(AGranuleIndex: Integer): Integer;
    function Contains(ADateTime: TDateTime): Boolean;
  public
    constructor Create(ABeginDate, AEndDate: TDateTime; AMinIntegralOfftimePresenceHours: Real; ACurrentDateTime: TDateTime);
    destructor Destroy; override;

    procedure AddShiftCycle(AShiftCycle: TShiftCycle);
    procedure AddEmployeeOccupationAndShift(AOccupationCode, AShiftCode: Integer; ABeginDate, AEndDate: TDateTime);
    procedure AddEmployeeUnmatchedMovement(ADateTime: TDateTime);
    procedure AddEmployeeRegisteredPresence(ABeginDateTime, AEndDateTime: TDateTime);
    procedure AddEmployeeCurrentPresence(ABeginDateTime: TDateTime);
    procedure AddEmployeeShiftCycle(ADate: TDateTime; AShiftCycleCode: Integer; ACreateArtificialPresence: Boolean);
    procedure AddEmployeeDayAbsenceModifier(ADate: TDateTime; ADayAbsenceReasonCode: Integer; AIsDayAbsenceConfirmed: Boolean);
    procedure AddEmployeeShiftChangeModifier(ADate: TDateTime; AOldShiftCode, ANewShiftCode, AReasonCode: Integer);
    procedure AddEmployeeHourAvailabilityModifier(ABeginDateTime, AEndDateTime: TDateTime; ADurationHours: Real; AEmpAvailModifierTypeCode: Integer; AReasonCode: Integer);
    procedure SetOfficialWorkday(ADate: TDateTime; AIsOfficialWorkday: Boolean);

    procedure InitializeEmployeeData(AEmployeeCode: Integer);
    procedure FinalizeEmployeeData;

    procedure CalculateEmployeeData;

    property CurrentDateTimeGranuleIndex: Integer read FCurrentDateTimeGranuleIndex;

    property BeginDate: TDateTime read FBeginDate;
    property EndDate: TDateTime read FEndDate;
    property CalcBeginDate: TDateTime read GetCalcBeginDate;
    property CalcEndDate: TDateTime read GetCalcEndDate;
    property CurrentDateTime: TDateTime read FCurrentDateTime;
    property ContainsCurrentDateTime: Boolean read GetContainsCurrentDateTime;

    property EmployeeCode: Integer read FEmployeeCode;
    property EmployeeDays[Index: TDateTime]: TDay read GetEmployeeDays;
    property EmployeeGranules: TGranuleList read FEmployeeGranules;
    property EmployeeIsAvailableNow: Boolean read FEmployeeIsAvailableNow;

    property TotalsByOccupation[OccupationCode: Integer]: TEmployeeAvailabilityOccupationTotals read GetTotalsByOccupation write SetTotalsByOccupation;
  end;


function HoursToGranuleCountCeil(AHours: Real): Integer;
function GranuleCountToHours(AGranuleCount: Integer): Real;

function IsModifierTypeFromShiftCycle(AModifierType: TEmployeeHourAvailabilityModifierType): Boolean;
function IntToEmployeeHourAvailabilityModifierType(AValue: Integer): TEmployeeHourAvailabilityModifierType;
function EmployeeHourAvailabilityModifierTypeToInt(AValue: TEmployeeHourAvailabilityModifierType): Integer;

implementation

uses
  SysUtils, Math, uUtils;

const
  GranuleSizeInMinutes = 1;
  GranulesPerHour = 60 div GranuleSizeInMinutes;
  GranulesPerDay = (24*60) div GranuleSizeInMinutes;

const
  ModifierListProcessorClasses: array[TEmployeeHourAvailabilityModifierType] of TModifierListProcessorClass = (
    TNormalPresenceRequirementAndApprovementShiftCycleModifierListProcessor, // amtNormalPresenceRequirementAndApprovementShiftCycle
    TNormalPresenceRequirementAndApprovementExtraModifierListProcessor,           // amtNormalPresenceRequirementAndApprovementModifier
    TOvertimePresenceRequirementShiftCycleModifierListProcessor,             // amtOvertimePresenceRequirementShiftCycle
    TOvertimePresenceRequirementExtraModifierListProcessor,                       // amtOvertimePresenceRequirementModifier
    TArtificialPresenceModifierListProcessor,                                // amtArtificialPresenceShiftCycle
    TArtificialPresenceModifierListProcessor,                                // amtArtificialPresenceModifier
    THourAbsenceApprovementModifierListProcessor,                            // amtHourAbsenceApprovementModifier
    TOvertimePresenceApprovementModifierListProcessor);                      // amtOvertimePresenceApprovementModifier

{ Routines }

function HoursToGranuleCount(AHours: Real): Integer;
begin
  Result:= Trunc(AHours*60/GranuleSizeInMinutes + 0.01);
end;

function HoursToGranuleCountCeil(AHours: Real): Integer;
begin
  Result:= Ceil(AHours*60/GranuleSizeInMinutes - 0.01);
end;

function GranuleCountToHours(AGranuleCount: Integer): Real;
begin
  Result:= AGranuleCount / GranulesPerHour;
end;

function TimeToRelativeGranuleIndex(
  ATime: TDateTime): Integer;
begin
  Result:= HoursToGranuleCount(ATime*24);
end;

function IsModifierTypeFromShiftCycle(AModifierType: TEmployeeHourAvailabilityModifierType): Boolean;
begin
  Result:=
    AModifierType in [amtNormalPresenceRequirementAndApprovementShiftCycle,
                      amtOvertimePresenceRequirementShiftCycle,
                      amtArtificialPresenceShiftCycle];
end;

function IntToEmployeeHourAvailabilityModifierType(AValue: Integer): TEmployeeHourAvailabilityModifierType;
const
  Types: array[-3..6] of TEmployeeHourAvailabilityModifierType = (
    amtArtificialPresenceShiftCycle,                       // -3
    amtOvertimePresenceRequirementShiftCycle,             // -2
    amtNormalPresenceRequirementAndApprovementShiftCycle, // -1
    amtNormalPresenceRequirementAndApprovementShiftCycle, // 0 - fake
    amtNormalPresenceRequirementAndApprovementShiftCycle, // 1 - fake
    amtHourAbsenceApprovementModifier,                    // 2
    amtNormalPresenceRequirementAndApprovementModifier,   // 3
    amtOvertimePresenceRequirementModifier,               // 4
    amtOvertimePresenceApprovementModifier,               // 5
    amtArtificialPresenceModifier                         // 6
  );
begin
  Assert(AValue >= Low(Types));
  Assert(AValue <= High(Types));
  Assert(not (AValue in [0, 1]));
  Result:= Types[AValue];
end;

function EmployeeHourAvailabilityModifierTypeToInt(AValue: TEmployeeHourAvailabilityModifierType): Integer;
const
  Types: array[TEmployeeHourAvailabilityModifierType] of Integer = (
    -1, // amtNormalPresenceRequirementAndApprovementShiftCycle
    3,  // amtNormalPresenceRequirementAndApprovementModifier
    -2,  // amtOvertimePresenceRequirementShiftCycle
    4,  // amtOvertimePresenceRequirementModifier
    -3,  // amtArtificialPresenceShiftCycle
    6,  // amtArtificialPresenceModifier
    2,  // amtHourAbsenceApprovementModifier
    5   // amtOvertimePresenceApprovementModifier
  );
begin
  Assert(AValue >= Low(Types));
  Assert(AValue <= High(Types));
  Result:= Types[AValue];
end;

{ TDay }

constructor TDay.Create;
var
  ModifierType: TEmployeeHourAvailabilityModifierType;
begin
  inherited Create;

  FDayAbsenceReason:= darDefault;

  FShiftChangeModifiers:= TShiftChangeModifierList.Create(True);

  for ModifierType:= Low(FHourAvailabilityModifiers) to High(FHourAvailabilityModifiers) do
    FHourAvailabilityModifiers[ModifierType]:= TModifierList.Create(False);
end;

destructor TDay.Destroy;
var
  ModifierType: TEmployeeHourAvailabilityModifierType;
begin
  for ModifierType:= Low(FHourAvailabilityModifiers) to High(FHourAvailabilityModifiers) do
    FreeAndNil(FHourAvailabilityModifiers[ModifierType]);

  FreeAndNil(FShiftChangeModifiers);

  inherited Destroy;
end;

procedure TDay.AddDayAbsenceModifier(ADayAbsenceReason: TDayAbsenceReason;
  AIsDayAbsenceConfirmed: Boolean);
begin
  Assert(not HasDayAbsence);
  FDayAbsenceReason:= ADayAbsenceReason;
  FIsDayAbsenceConfirmed:= AIsDayAbsenceConfirmed;
end;

procedure TDay.ClearDayData;
begin
  FOccupationCode:= 0;
  FShiftCode:= 0;
  FDayAbsenceReason:= darDefault;
  FIsDayAbsenceConfirmed:= False;
  FHasUnmatchedMovements:= False;
  FShiftChangeModifiers.Count:= 0;
  ClearPresenceGranuleCounts;
  ClearAbsenceGranuleCounts;
  ClearHourAvailabilityModifiers;
end;

procedure TDay.AddShiftChangeModifier(AOldShiftCode, ANewShiftCode,
  AReasonCode: Integer);
var
  ShiftChangeModifier: TShiftChangeModifier;
begin
  ShiftChangeModifier:= TShiftChangeModifier.Create(AOldShiftCode, ANewShiftCode, AReasonCode);
  try
    FShiftChangeModifiers.Add(ShiftChangeModifier);
  except
    FreeAndNil(ShiftChangeModifier);
    raise;
  end;  { try }
end;

procedure TDay.ClearAbsenceGranuleCounts;
var
  tk: TTimeKind;
  aca: TAbsenceCountedAs;
begin
  for aca:= Low(TAbsenceCountedAs) to High(TAbsenceCountedAs) do
    for tk:= Low(TTimeKind) to High(TTimeKind) do
      FAbsenceGranuleCounts[aca, tk]:= 0;
end;

procedure TDay.ClearPresenceGranuleCounts;
var
  tk: TTimeKind;
  pca: TPresenceCountedAs;
begin
  for pca:= Low(TPresenceCountedAs) to High(TPresenceCountedAs) do
    for tk:= Low(TTimeKind) to High(TTimeKind) do
      FPresenceGranuleCounts[pca, tk]:= 0;
end;

function TDay.GetSumAbsenceGranuleCounts(AbsenceCountedAs: TAbsenceCountedAs): Integer;
begin
  Result:=
    FAbsenceGranuleCounts[AbsenceCountedAs, tkPast] +
    FAbsenceGranuleCounts[AbsenceCountedAs, tkFuture];
end;

function TDay.GetSumAbsenceHours(AbsenceCountedAs: TAbsenceCountedAs): Real;
begin
  Result:= GranuleCountToHours(SumAbsenceGranuleCounts[AbsenceCountedAs]);
end;

function TDay.GetAbsenceHours(AbsenceCountedAs: TAbsenceCountedAs; TimeKind: TTimeKind): Real;
begin
  Result:= GranuleCountToHours(FAbsenceGranuleCounts[AbsenceCountedAs, TimeKind]);
end;

function TDay.GetEffectiveShiftCode: Integer;
begin
  if HasShiftChangeModifiers then
    begin
      Result:= ShiftChangeModifiers[0].NewShiftCode;
    end
  else
    Result:= ShiftCode;
end;

function TDay.GetPresenceHours(PresenceCountedAs: TPresenceCountedAs; TimeKind: TTimeKind): Real;
begin
  Result:= GranuleCountToHours(FPresenceGranuleCounts[PresenceCountedAs, TimeKind]);
end;

function TDay.GetHasDayAbsence: Boolean;
begin
  Result:= (FDayAbsenceReason <> darNoDayAbsence);
end;

function TDay.GetSumPresenceGranuleCounts(PresenceCountedAs: TPresenceCountedAs): Integer;
begin
  Result:=
    FPresenceGranuleCounts[PresenceCountedAs, tkPast] +
    FPresenceGranuleCounts[PresenceCountedAs, tkFuture];
end;

function TDay.GetSumPresenceHours(PresenceCountedAs: TPresenceCountedAs): Real;
begin
  Result:= GranuleCountToHours(SumPresenceGranuleCounts[PresenceCountedAs]);
end;

procedure TDay.SetOccupationAndShift(AOccupationCode, AShiftCode: Integer);
begin
  FOccupationCode:= AOccupationCode;
  FShiftCode:= AShiftCode;
end;

function TDay.GetHasHourAvailabilityModifiers(
  EmployeeHourAvailabilityModifierType: TEmployeeHourAvailabilityModifierType): Boolean;
var
  ModifierList: TModifierList;
begin
  ModifierList:=
    FHourAvailabilityModifiers[EmployeeHourAvailabilityModifierType];

  Result:=
    Assigned(ModifierList) and (ModifierList.Count > 0);
end;

function TDay.GetHasShiftChangeModifiers: Boolean;
begin
  Result:= (FShiftChangeModifiers.Count > 0);
end;

function TDay.GetHourAvailabilityModifiers(
  EmployeeHourAvailabilityModifierType: TEmployeeHourAvailabilityModifierType): TModifierList;
begin
  Result:= FHourAvailabilityModifiers[EmployeeHourAvailabilityModifierType];
end;

procedure TDay.ClearHourAvailabilityModifiers;
var
  ModifierType: TEmployeeHourAvailabilityModifierType;
begin
  for ModifierType:= Low(FHourAvailabilityModifiers) to High(FHourAvailabilityModifiers) do
    FHourAvailabilityModifiers[ModifierType].Count:= 0;
end;

{ TGranule }

constructor TGranule.Create(ATimeKind: TTimeKind);
begin
  inherited Create;
  FContainingModifiers:= TModifierList.Create(False);
  FPresenceCountedAs:= pcaDefault;
  FAbsenceCountedAs:= acaDefault;
  FTimeKind:= ATimeKind;
end;

destructor TGranule.Destroy;
begin
  FreeAndNil(FContainingModifiers);
  inherited Destroy;
end;

procedure TGranule.ClearGranuleData;
begin
  FHasUnmatchedMovements:= False;
  ClearPresenceAndAbsence;
  ClearContainingModifiers;
end;

procedure TGranule.ClearPresenceAndAbsence;
begin
  FHasRegisteredPresence:= False;
  FHasArtificialPresence:= False;
  FPresenceCountedAs:= pcaDefault;
  FAbsenceCountedAs:= acaDefault;
end;

procedure TGranule.ClearContainingModifiers;
begin
  FContainingModifiers.Count:= 0;
end;

function TGranule.GetPendingModifierCount: Integer;
var
  m: TModifier;
begin
  Result:= 0;
  for m in FContainingModifiers do
    if m.IsPending then
      Inc(Result);
end;

procedure TGranule.UpgradePresenceCountedAs(ANewValue: TPresenceCountedAs);
begin
  if (FPresenceCountedAs < ANewValue) then
    FPresenceCountedAs:= ANewValue;
end;

procedure TGranule.UpgradeAbsenceCountedAs(ANewValue: TAbsenceCountedAs);
begin
  if (FAbsenceCountedAs < ANewValue) then
    FAbsenceCountedAs:= ANewValue;
end;

function TGranule.GetHasPresence: Boolean;
begin
  Result:= FHasRegisteredPresence or FHasArtificialPresence;
end;

function TGranule.GetAvailabilityStatus: TAvailabilityStatus;
begin
  if HasPresence then
    begin
      case PresenceCountedAs of
        pcaOfftimePresence:
          Result:= asOfftimePresence;

        pcaOvertimeShiftCycleBreakPresence:
          Result:= asShiftCycleBreak;

        pcaNormalShiftCycleBreakPresence:
          Result:= asShiftCycleBreak;

        pcaUnapprovedRequiredOvertimeExtraPresence,
        pcaUnapprovedRequiredOvertimeShiftCyclePresence:
          Result:= asUnapprovedOvertimePresence;

        pcaApprovedOvertimeExtraPresence,
        pcaApprovedOvertimeShiftCyclePresence:
          Result:= asApprovedOvertimePresence;

        pcaNormalExtraPresence,
        pcaNormalShiftCyclePresence:
          Result:= asNormalPresence;

        else
          raise Exception.Create('Unknown PresenceCountedAs value');
      end;  { case }
    end
  else
    begin
      case AbsenceCountedAs of
        acaOfftimeAbsence:
          Result:= asOfftime;

        acaOvertimeShiftCycleBreakAbsence,
        acaNormalShiftCycleBreakAbsence:
          Result:= asShiftCycleBreak;

        acaUnapprovedOvertimeExtraAbsence,
        acaUnapprovedOvertimeShiftCycleAbsence,
        acaUnapprovedNormalExtraAbsence,
        acaUnapprovedNormalShiftCycleAbsence:
          begin
            case TimeKind of
              tkPast:
                Result:= asUnapprovedPastAbsence;
              tkFuture:
                Result:= asUnapprovedFutureAbsence;
              else
                raise Exception.Create('Unknown TimeKind value');
            end;  { case }
          end;

        acaApprovedOvertimeExtraAbsence,
        acaApprovedOvertimeShiftCycleAbsence,
        acaApprovedNormalExtraAbsence,
        acaApprovedNormalShiftCycleAbsence:
          Result:= asApprovedAbsence

        else
          raise Exception.Create('Unknown AbsenceCountedAs value');
      end;  { case }
    end;
end;

{ TShiftChangeModifier }

constructor TShiftChangeModifier.Create(AOldShiftCode, ANewShiftCode,
  AReasonCode: Integer);
begin
  inherited Create;
  FOldShiftCode:= AOldShiftCode;
  FNewShiftCode:= ANewShiftCode;
  FReasonCode:= AReasonCode;
end;

{ TModifier }

constructor TModifier.Create(ABeginGranuleIndex,
  AEndGranuleIndex: Integer; AReasonCode: Integer);
begin
  inherited Create;
  SetData(ABeginGranuleIndex, AEndGranuleIndex, AReasonCode);
end;

constructor TModifier.Create(ABeginGranuleIndex,
  AEndGranuleIndex, AEffectiveGranuleCount: Integer; AReasonCode: Integer);
begin
  inherited Create;
  SetData(ABeginGranuleIndex, AEndGranuleIndex, AEffectiveGranuleCount, AReasonCode);
end;

function TModifier.IsPending: Boolean;
begin
  Result:= (FPendingGranuleCount > 0);
end;

procedure TModifier.UnpendOneGranule;
begin
  Assert(FPendingGranuleCount > 0);
  Dec(FPendingGranuleCount);
end;

procedure TModifier.SetData(ABeginGranuleIndex,
  AEndGranuleIndex: Integer; AReasonCode: Integer);
begin
  SetData(
    ABeginGranuleIndex,
    AEndGranuleIndex,
    (AEndGranuleIndex - ABeginGranuleIndex + 1),
    AReasonCode
  );
end;

procedure TModifier.SetData(ABeginGranuleIndex,
  AEndGranuleIndex, AEffectiveGranuleCount: Integer; AReasonCode: Integer);
begin
  Assert(ABeginGranuleIndex >= 0);
  Assert(AEndGranuleIndex >= 0);
  Assert(ABeginGranuleIndex <= AEndGranuleIndex);
  Assert(AEffectiveGranuleCount >= 0);
  Assert(AEffectiveGranuleCount <= (AEndGranuleIndex - ABeginGranuleIndex + 1));

  FBeginGranuleIndex:= ABeginGranuleIndex;
  FEndGranuleIndex:= AEndGranuleIndex;
  FEffectiveGranuleCount:= AEffectiveGranuleCount;
  FPendingGranuleCount:= FEffectiveGranuleCount;
  FReasonCode:= AReasonCode;
end;

{ TModifierListProcessor }

class procedure TModifierListProcessor.ApplyToGranules(AModifierList: TModifierList; AGranules: TGranuleList; AActiveGranuleIntervals: TGranuleIntervalList);

  procedure AddModifiersToGranules;
  var
    i: Integer;
    CurrentModifier: TModifier;
  begin
    for CurrentModifier in AModifierList do
      for i:= CurrentModifier.FBeginGranuleIndex to CurrentModifier.FEndGranuleIndex do
        AGranules[i].FContainingModifiers.Add(CurrentModifier);
  end;

  procedure ClearModifiersFromGranules;
  var
    i: Integer;
    CurrentModifier: TModifier;
  begin
    for CurrentModifier in AModifierList do
      for i:= CurrentModifier.FBeginGranuleIndex to CurrentModifier.FEndGranuleIndex do
        AGranules[i].ClearContainingModifiers;
  end;

  function GetMaxPendingModifierCount: Integer;
  var
    i: Integer;
    CurrentModifier: TModifier;
    mc: Integer;
  begin
    Result:= 0;
    for CurrentModifier in AModifierList do
      for i:= CurrentModifier.FBeginGranuleIndex to CurrentModifier.FEndGranuleIndex do
        begin
          mc:= AGranules[i].GetPendingModifierCount;
          if (Result < mc) then
            Result:= mc;
        end;  { for }
  end;

var
  i: Integer;
  CurrentGranuleInterval: TGranuleInterval;
  CurrentGranule: TGranule;
  CurrentModifier: TModifier;
  MaxPendingModifierCount: Integer;
  mc: Integer;
  PassNo: TPassNo;
begin
  AddModifiersToGranules;
  try
    for PassNo:= pnFirst to pnSecond do
      if NeedsPassNo(PassNo) then
        begin
          MaxPendingModifierCount:= GetMaxPendingModifierCount;

          for mc:= MaxPendingModifierCount downto 1 do
            for CurrentGranuleInterval in AActiveGranuleIntervals do
              for i:= CurrentGranuleInterval.FBeginGranuleIndex to CurrentGranuleInterval.FEndGranuleIndex do
                begin
                  CurrentGranule:= AGranules[i];
                  if (CurrentGranule.GetPendingModifierCount = mc) and
                     IsGranuleGoodMarkingAtPass(CurrentGranule, PassNo) then
                    begin
                      MarkGranule(CurrentGranule, PassNo);
                      for CurrentModifier in CurrentGranule.FContainingModifiers do
                        if CurrentModifier.IsPending then
                          CurrentModifier.UnpendOneGranule;
                    end;  { if }
                end;  { for }
        end;

    if NeedsPassNo(pnThird) then
      for CurrentGranuleInterval in AActiveGranuleIntervals do
        for i:= CurrentGranuleInterval.FBeginGranuleIndex to CurrentGranuleInterval.FEndGranuleIndex do
          begin
            CurrentGranule:= AGranules[i];
            if (CurrentGranule.FContainingModifiers.Count > 0) and
               IsGranuleGoodMarkingAtPass(CurrentGranule, pnThird) then
              begin
                MarkGranule(CurrentGranule, pnThird);
              end;  { if }
          end;  { for }
  finally
    ClearModifiersFromGranules;
  end;  { try }
end;

{ TNormalPresenceRequirementAndApprovementShiftCycleModifierListProcessor }

class function TNormalPresenceRequirementAndApprovementShiftCycleModifierListProcessor.NeedsPassNo(
  APassNo: TPassNo): Boolean;
begin
  Result:= True;
end;

class function TNormalPresenceRequirementAndApprovementShiftCycleModifierListProcessor.IsGranuleGoodMarkingAtPass(
  AGranule: TGranule; APassNo: TPassNo): Boolean;
begin
  Assert(Assigned(AGranule));
  case APassNo of
    pnFirst:
      Result:= AGranule.HasPresence;
    pnSecond:
      Result:= not AGranule.HasPresence;
    pnThird:
      Result:=
        (AGranule.FPresenceCountedAs < pcaNormalShiftCycleBreakPresence) or
        (AGranule.FAbsenceCountedAs < acaNormalShiftCycleBreakAbsence);
    else
      raise Exception.Create('Unknown PassNo');
  end;  { case }
end;

class procedure TNormalPresenceRequirementAndApprovementShiftCycleModifierListProcessor.MarkGranule(
  AGranule: TGranule; APassNo: TPassNo);
begin
  Assert(Assigned(AGranule));
  Assert(IsGranuleGoodMarkingAtPass(AGranule, APassNo));
  case APassNo of
    pnFirst, pnSecond:
      begin
        AGranule.UpgradePresenceCountedAs(pcaNormalShiftCyclePresence);
        AGranule.UpgradeAbsenceCountedAs(acaUnapprovedNormalShiftCycleAbsence);
      end;
    pnThird:
      begin
        AGranule.UpgradePresenceCountedAs(pcaNormalShiftCycleBreakPresence);
        AGranule.UpgradeAbsenceCountedAs(acaNormalShiftCycleBreakAbsence);
      end;
    else
      raise Exception.Create('Unknown PassNo');
  end;  { case }
end;

{ TNormalPresenceRequirementAndApprovementExtraModifierListProcessor }

class function TNormalPresenceRequirementAndApprovementExtraModifierListProcessor.NeedsPassNo(
  APassNo: TPassNo): Boolean;
begin
  Result:= (APassNo < pnThird);
end;

class function TNormalPresenceRequirementAndApprovementExtraModifierListProcessor.IsGranuleGoodMarkingAtPass(
  AGranule: TGranule; APassNo: TPassNo): Boolean;
begin
  Assert(Assigned(AGranule));
  case APassNo of
    pnFirst:
      Result:= AGranule.HasPresence;
    pnSecond:
      Result:= not AGranule.HasPresence;
    pnThird:
      Result:= False;
    else
      raise Exception.Create('Unknown PassNo');
  end;  { case }
end;

class procedure TNormalPresenceRequirementAndApprovementExtraModifierListProcessor.MarkGranule(
  AGranule: TGranule; APassNo: TPassNo);
begin
  Assert(Assigned(AGranule));
  Assert(IsGranuleGoodMarkingAtPass(AGranule, APassNo));
  case APassNo of
    pnFirst, pnSecond:
      begin
        AGranule.UpgradePresenceCountedAs(pcaNormalExtraPresence);
        AGranule.UpgradeAbsenceCountedAs(acaUnapprovedNormalExtraAbsence);
      end;
    pnThird:
      begin
        // do nothing
      end;
    else
      raise Exception.Create('Unknown PassNo');
  end;  { case }
end;

{ TOvertimePresenceRequirementShiftCycleModifierListProcessor }

class function TOvertimePresenceRequirementShiftCycleModifierListProcessor.NeedsPassNo(
  APassNo: TPassNo): Boolean;
begin
  Result:= True;
end;

class function TOvertimePresenceRequirementShiftCycleModifierListProcessor.IsGranuleGoodMarkingAtPass(
  AGranule: TGranule; APassNo: TPassNo): Boolean;
begin
  Assert(Assigned(AGranule));
  case APassNo of
    pnFirst:
      Result:= AGranule.HasPresence;
    pnSecond:
      Result:= not AGranule.HasPresence;
    pnThird:
      Result:=
        (AGranule.FPresenceCountedAs < pcaOvertimeShiftCycleBreakPresence) or
        (AGranule.FAbsenceCountedAs < acaOvertimeShiftCycleBreakAbsence);
    else
      raise Exception.Create('Unknown PassNo');
  end;  { case }
end;

class procedure TOvertimePresenceRequirementShiftCycleModifierListProcessor.MarkGranule(
  AGranule: TGranule; APassNo: TPassNo);
begin
  Assert(Assigned(AGranule));
  Assert(IsGranuleGoodMarkingAtPass(AGranule, APassNo));
  case APassNo of
    pnFirst, pnSecond:
      begin
        AGranule.UpgradePresenceCountedAs(pcaUnapprovedRequiredOvertimeShiftCyclePresence);
        AGranule.UpgradeAbsenceCountedAs(acaUnapprovedOvertimeShiftCycleAbsence);
      end;
    pnThird:
      begin
        AGranule.UpgradePresenceCountedAs(pcaOvertimeShiftCycleBreakPresence);
        AGranule.UpgradeAbsenceCountedAs(acaOvertimeShiftCycleBreakAbsence);
      end;
    else
      raise Exception.Create('Unknown PassNo');
  end;  { case }
end;

{ TOvertimePresenceRequirementExtraModifierListProcessor }

class function TOvertimePresenceRequirementExtraModifierListProcessor.NeedsPassNo(
  APassNo: TPassNo): Boolean;
begin
  Result:= (APassNo < pnThird);
end;

class function TOvertimePresenceRequirementExtraModifierListProcessor.IsGranuleGoodMarkingAtPass(
  AGranule: TGranule; APassNo: TPassNo): Boolean;
begin
  Assert(Assigned(AGranule));
  case APassNo of
    pnFirst:
      Result:= AGranule.HasPresence;
    pnSecond:
      Result:= not AGranule.HasPresence;
    pnThird:
      Result:= False;
    else
      raise Exception.Create('Unknown PassNo');
  end;  { case }
end;

class procedure TOvertimePresenceRequirementExtraModifierListProcessor.MarkGranule(
  AGranule: TGranule; APassNo: TPassNo);
begin
  Assert(Assigned(AGranule));
  Assert(IsGranuleGoodMarkingAtPass(AGranule, APassNo));
  case APassNo of
    pnFirst, pnSecond:
      begin
        AGranule.UpgradePresenceCountedAs(pcaUnapprovedRequiredOvertimeExtraPresence);
        AGranule.UpgradeAbsenceCountedAs(acaUnapprovedOvertimeExtraAbsence);
      end;
    pnThird:
      begin
        // do nothing
      end;
    else
      raise Exception.Create('Unknown PassNo');
  end;  { case }
end;

{ TArtificialPresenceModifierListProcessor }

class function TArtificialPresenceModifierListProcessor.NeedsPassNo(
  APassNo: TPassNo): Boolean;
begin
  Result:= (APassNo < pnThird);
end;

class function TArtificialPresenceModifierListProcessor.IsGranuleGoodMarkingAtPass(
  AGranule: TGranule; APassNo: TPassNo): Boolean;
begin
  Assert(Assigned(AGranule));
  case APassNo of
    pnFirst:
      Result:=
        not AGranule.HasPresence and
        (AGranule.FAbsenceCountedAs in
          [acaUnapprovedOvertimeExtraAbsence,
           acaUnapprovedOvertimeShiftCycleAbsence,
           acaUnapprovedNormalExtraAbsence,
           acaUnapprovedNormalShiftCycleAbsence]);
    pnSecond:
      Result:= not AGranule.HasPresence;
    pnThird:
      Result:= False;
    else
      raise Exception.Create('Unknown PassNo');
  end;  { case }
end;

class procedure TArtificialPresenceModifierListProcessor.MarkGranule(AGranule: TGranule; APassNo: TPassNo);
begin
  Assert(Assigned(AGranule));
  Assert(IsGranuleGoodMarkingAtPass(AGranule, APassNo));
  case APassNo of
    pnFirst, pnSecond:
      begin
        AGranule.FHasArtificialPresence:= True;
      end;
    pnThird:
      begin
        // do nothing
      end;
    else
      raise Exception.Create('Unknown PassNo');
  end;  { case }
end;

{ THourAbsenceApprovementModifierListProcessor }

class function THourAbsenceApprovementModifierListProcessor.NeedsPassNo(
  APassNo: TPassNo): Boolean;
begin
  Result:= (APassNo = pnFirst);
end;

class function THourAbsenceApprovementModifierListProcessor.IsGranuleGoodMarkingAtPass(
  AGranule: TGranule; APassNo: TPassNo): Boolean;
begin
  Assert(Assigned(AGranule));
  case APassNo of
    pnFirst:
      Result:=
        not AGranule.HasPresence and
        (AGranule.FAbsenceCountedAs in
          [acaUnapprovedOvertimeExtraAbsence,
           acaUnapprovedOvertimeShiftCycleAbsence,
           acaUnapprovedNormalExtraAbsence,
           acaUnapprovedNormalShiftCycleAbsence]);
    pnSecond, pnThird:
      Result:= False;
    else
      raise Exception.Create('Unknown PassNo');
  end;  { case }
end;

class procedure THourAbsenceApprovementModifierListProcessor.MarkGranule(
  AGranule: TGranule; APassNo: TPassNo);
begin
  Assert(Assigned(AGranule));
  Assert(IsGranuleGoodMarkingAtPass(AGranule, APassNo));
  case APassNo of
    pnFirst:
      begin
        Assert(
          AGranule.FAbsenceCountedAs in
            [ acaUnapprovedOvertimeExtraAbsence,
              acaUnapprovedOvertimeShiftCycleAbsence,
              acaUnapprovedNormalExtraAbsence,
              acaUnapprovedNormalShiftCycleAbsence
            ]
        );
        case AGranule.FAbsenceCountedAs of
          acaUnapprovedOvertimeExtraAbsence:
            AGranule.UpgradeAbsenceCountedAs(acaApprovedOvertimeExtraAbsence);

          acaUnapprovedOvertimeShiftCycleAbsence:
            AGranule.UpgradeAbsenceCountedAs(acaApprovedOvertimeShiftCycleAbsence);

          acaUnapprovedNormalExtraAbsence:
            AGranule.UpgradeAbsenceCountedAs(acaApprovedNormalExtraAbsence);

          acaUnapprovedNormalShiftCycleAbsence:
            AGranule.UpgradeAbsenceCountedAs(acaApprovedNormalShiftCycleAbsence);
        end;  { case }
      end;
    pnSecond, pnThird:
      begin
        // do nothing
      end;
    else
      raise Exception.Create('Unknown PassNo');
  end;  { case }
end;

{ TOvertimePresenceApprovementModifierListProcessor }

class function TOvertimePresenceApprovementModifierListProcessor.NeedsPassNo(
  APassNo: TPassNo): Boolean;
begin
  Result:= (APassNo = pnFirst);
end;

class function TOvertimePresenceApprovementModifierListProcessor.IsGranuleGoodMarkingAtPass(
  AGranule: TGranule; APassNo: TPassNo): Boolean;
begin
  Assert(Assigned(AGranule));
  case APassNo of
    pnFirst:
      Result:=
        AGranule.HasPresence and
        (AGranule.FPresenceCountedAs in
          [ pcaOfftimePresence,
            pcaUnapprovedRequiredOvertimeExtraPresence,
            pcaUnapprovedRequiredOvertimeShiftCyclePresence]);
    pnSecond, pnThird:
      Result:= False;
    else
      raise Exception.Create('Unknown PassNo');
  end;  { case }
end;

class procedure TOvertimePresenceApprovementModifierListProcessor.MarkGranule(
  AGranule: TGranule; APassNo: TPassNo);
begin
  Assert(Assigned(AGranule));
  Assert(IsGranuleGoodMarkingAtPass(AGranule, APassNo));
  case APassNo of
    pnFirst:
      begin
        case AGranule.FPresenceCountedAs of
          pcaOfftimePresence, pcaUnapprovedRequiredOvertimeExtraPresence:
            AGranule.UpgradePresenceCountedAs(pcaApprovedOvertimeExtraPresence);
          pcaUnapprovedRequiredOvertimeShiftCyclePresence:
            AGranule.UpgradePresenceCountedAs(pcaApprovedOvertimeShiftCyclePresence);
        end;
      end;
    pnSecond, pnThird:
      begin
        // do nothing
      end;
    else
      raise Exception.Create('Unknown PassNo');
  end;  { case }
end;

{ TGranuleInterval }

constructor TGranuleInterval.Create(ABeginGranuleIndex,
  AEndGranuleIndex: Integer);
begin
  inherited Create;
  FBeginGranuleIndex:= ABeginGranuleIndex;
  FEndGranuleIndex:= AEndGranuleIndex;
end;

function TGranuleInterval.ContainsGranuleIndex(
  AGranuleIndex: Integer): Boolean;
begin
  Result:=
    (AGranuleIndex >= FBeginGranuleIndex) and
    (AGranuleIndex <= FEndGranuleIndex);
end;

function TGranuleInterval.IsInTouchWithGranuleInterval(
  AGranuleInterval: TGranuleInterval): Boolean;
begin
  Result:= IsInTouchWithGranuleInterval(AGranuleInterval.FBeginGranuleIndex, AGranuleInterval.FEndGranuleIndex);
end;

function TGranuleInterval.IsInTouchWithGranuleInterval(ABeginGranuleIndex,
  AEndGranuleIndex: Integer): Boolean;
begin
  Result:=
    ( (Min(FEndGranuleIndex, AEndGranuleIndex) -
       Max(FBeginGranuleIndex, ABeginGranuleIndex) +
       1
      ) >= 0
    );
end;

{ TRelativeGranuleInterval }

constructor TRelativeGranuleInterval.Create(ABeginRelativeGranuleIndex,
  AEndRelativeGranuleIndex: Integer);
begin
  inherited Create;
  SetData(ABeginRelativeGranuleIndex, AEndRelativeGranuleIndex);
end;

constructor TRelativeGranuleInterval.Create(ABeginRelativeGranuleIndex,
  AEndRelativeGranuleIndex, AEffectiveGranuleCount: Integer);
begin
  inherited Create;
  SetData(ABeginRelativeGranuleIndex, AEndRelativeGranuleIndex, AEffectiveGranuleCount);
end;

function TRelativeGranuleInterval.ContainsRelativeGranuleIndex(
  ARelativeGranuleIndex: Integer): Boolean;
begin
  Result:=
    (ARelativeGranuleIndex >= FBeginRelativeGranuleIndex) and
    (ARelativeGranuleIndex <= FEndRelativeGranuleIndex);
end;

function TRelativeGranuleInterval.IsFullyEffective: Boolean;
begin
  Result:=
    (FEffectiveGranuleCount = (FEndRelativeGranuleIndex - FBeginRelativeGranuleIndex + 1));
end;

procedure TRelativeGranuleInterval.SetData(ABeginRelativeGranuleIndex,
  AEndRelativeGranuleIndex: Integer);
begin
  SetData(
    ABeginRelativeGranuleIndex,
    AEndRelativeGranuleIndex,
    (AEndRelativeGranuleIndex - ABeginRelativeGranuleIndex + 1)
  );
end;

procedure TRelativeGranuleInterval.SetData(ABeginRelativeGranuleIndex,
  AEndRelativeGranuleIndex, AEffectiveGranuleCount: Integer);
begin
  Assert(ABeginRelativeGranuleIndex >= 0);
  Assert(AEndRelativeGranuleIndex >= 0);
  Assert(AEffectiveGranuleCount >= 0);
  Assert(AEffectiveGranuleCount <= (AEndRelativeGranuleIndex - ABeginRelativeGranuleIndex + 1));
  
  FBeginRelativeGranuleIndex:= ABeginRelativeGranuleIndex;
  FEndRelativeGranuleIndex:= AEndRelativeGranuleIndex;
  FEffectiveGranuleCount:= AEffectiveGranuleCount;
end;

{ TShiftCycle }

constructor TShiftCycle.Create(AShiftCycleCode: Integer; AIsOvertime: Boolean; AWorkdayBeginTime, AWorkdayEndTime: TDateTime);
var
  BeginRelativeGranuleIndex, EndRelativeGranuleIndex: Integer;
  RelativeGranuleInterval: TRelativeGranuleInterval;
begin
  inherited Create;
  FRelativeGranuleIntervals:= TRelativeGranuleIntervalList.Create;
  FShiftCycleCode:= AShiftCycleCode;
  FIsOvertime:= AIsOvertime;

  BeginRelativeGranuleIndex:= TimeToRelativeGranuleIndex(AWorkdayBeginTime);
  EndRelativeGranuleIndex:= TimeToRelativeGranuleIndex(AWorkdayEndTime);
  if (EndRelativeGranuleIndex > BeginRelativeGranuleIndex) then
    Dec(EndRelativeGranuleIndex);

  RelativeGranuleInterval:=
    TRelativeGranuleInterval.Create(BeginRelativeGranuleIndex, EndRelativeGranuleIndex);
  try
    FRelativeGranuleIntervals.Add(RelativeGranuleInterval);
  except
    FreeAndNil(RelativeGranuleInterval);
    raise;
  end;
end;

destructor TShiftCycle.Destroy;
begin
  FreeAndNil(FRelativeGranuleIntervals);
  inherited Destroy;
end;

procedure TShiftCycle.AddBreak(ABreakBeginTime, ABreakEndTime: TDateTime;
  ABreakDurationHours: Real);
var
  BreakBeginRelativeGranuleIndex, BreakEndRelativeGranuleIndex: Integer;
  BreakGranuleCount: Integer;
  BreakPercent: Real;
  i: Integer;
  Found: Boolean;
  FoundBeginRelativeGranuleIndex: Integer;
  FoundEndRelativeGranuleIndex: Integer;
  CurrentRelativeGranuleInterval: TRelativeGranuleInterval;
  NewRelativeGranuleInterval: TRelativeGranuleInterval;
begin
  Assert(ABreakBeginTime < ABreakEndTime);
  Assert(ABreakDurationHours >= 0);

  BreakPercent:= (ABreakDurationHours/24) / (ABreakEndTime - ABreakBeginTime);

  BreakBeginRelativeGranuleIndex:= TimeToRelativeGranuleIndex(ABreakBeginTime);
  BreakEndRelativeGranuleIndex:= TimeToRelativeGranuleIndex(ABreakEndTime);
  if (BreakEndRelativeGranuleIndex > BreakBeginRelativeGranuleIndex) then
    Dec(BreakEndRelativeGranuleIndex);

  BreakGranuleCount:=
    RealRound((BreakPercent * (BreakEndRelativeGranuleIndex - BreakBeginRelativeGranuleIndex + 1)));

  Found:= False;
  for i:= 0 to FRelativeGranuleIntervals.Count-1 do
    begin
      CurrentRelativeGranuleInterval:= FRelativeGranuleIntervals[i];
      if CurrentRelativeGranuleInterval.ContainsRelativeGranuleIndex(BreakBeginRelativeGranuleIndex) then
        begin
          Assert(CurrentRelativeGranuleInterval.ContainsRelativeGranuleIndex(BreakEndRelativeGranuleIndex));
          Assert(CurrentRelativeGranuleInterval.IsFullyEffective);

          FoundBeginRelativeGranuleIndex:= CurrentRelativeGranuleInterval.FBeginRelativeGranuleIndex;
          FoundEndRelativeGranuleIndex:= CurrentRelativeGranuleInterval.FEndRelativeGranuleIndex;

          CurrentRelativeGranuleInterval.SetData(
            BreakBeginRelativeGranuleIndex,
            BreakEndRelativeGranuleIndex,
            (BreakEndRelativeGranuleIndex - BreakBeginRelativeGranuleIndex + 1) - BreakGranuleCount
          );

          if (BreakEndRelativeGranuleIndex < FoundEndRelativeGranuleIndex) then
            begin
              NewRelativeGranuleInterval:=
                TRelativeGranuleInterval.Create(
                  BreakEndRelativeGranuleIndex + 1,
                  FoundEndRelativeGranuleIndex
                );
              try
                FRelativeGranuleIntervals.Insert(i+1, NewRelativeGranuleInterval);
              except
                FreeAndNil(NewRelativeGranuleInterval);
                raise;
              end;  { try }
            end;  { if }

          if (BreakBeginRelativeGranuleIndex > FoundBeginRelativeGranuleIndex) then
            begin
              NewRelativeGranuleInterval:=
                TRelativeGranuleInterval.Create(
                  FoundBeginRelativeGranuleIndex,
                  BreakBeginRelativeGranuleIndex - 1
                );
              try
                FRelativeGranuleIntervals.Insert(i, NewRelativeGranuleInterval);
              except
                FreeAndNil(NewRelativeGranuleInterval);
                raise;
              end;  { try }
            end;  { if }

          Found:= True;
          Break;
        end;  { if }
    end;  { for }

  Assert(Found);
end;

{ TShiftCycleList }

function TShiftCycleList.FindShiftCycle(
  AShiftCycleCode: Integer): TShiftCycle;
var
  CurrentShiftCycle: TShiftCycle;
begin
  Result:= nil;
  for CurrentShiftCycle in Self do
    if (CurrentShiftCycle.FShiftCycleCode = AShiftCycleCode) then
      begin
        Result:= CurrentShiftCycle;
        Break;
      end;  { if }
end;

{ TEmployeeAvailabilityCalculator }

constructor TEmployeeAvailabilityCalculator.Create(ABeginDate,
  AEndDate: TDateTime; AMinIntegralOfftimePresenceHours: Real; ACurrentDateTime: TDateTime);
var
  i: Integer;
  tk: TTimeKind;
  ModifierType: TEmployeeHourAvailabilityModifierType;
  Day: TDay;
  Granule: TGranule;
begin
  inherited Create;

  Assert(ABeginDate <> 0);
  Assert(AEndDate <> 0);
  Assert(ABeginDate = Trunc(ABeginDate));
  Assert(AEndDate = Trunc(AEndDate));
  Assert(ABeginDate <= AEndDate);

  FBeginDate:= ABeginDate;
  FEndDate:= AEndDate;

  FBeginDateTime:= ABeginDate-1;  // vkluchvame oshte edin den otliavo
  FEndDateTime:= AEndDate+3;  // vkluchvame oshte 2 dni otdiasno

  FCurrentDateTime:= ACurrentDateTime;
  FCurrentDateTimeGranuleIndex:= DateTimeToGranuleIndex(FCurrentDateTime);

  FMinIntegralOfftimePresenceGranuleCount:=
    HoursToGranuleCountCeil(AMinIntegralOfftimePresenceHours);

  FShiftCycles:= TShiftCycleList.Create;

  for ModifierType:= Low(FEmployeeHourAvailabilityModifiers) to High(FEmployeeHourAvailabilityModifiers) do
    FEmployeeHourAvailabilityModifiers[ModifierType]:= TModifierList.Create;

  FEmployeeDays:= TDayList.Create;
  for i:= DateToDayIndex(FBeginDateTime) to DateToDayIndex(FEndDateTime)-1 do
    begin
      Day:= TDay.Create;
      try
        FEmployeeDays.Add(Day);
      except
        FreeAndNil(Day);
        raise;
      end;  { try }
   end;  { for }

  FEmployeeGranules:= TGranuleList.Create;
  for i:= DateTimeToGranuleIndex(FBeginDateTime) to DateTimeToGranuleIndex(FEndDateTime)-1 do
    begin
      if (i <= FCurrentDateTimeGranuleIndex) then
        tk:= tkPast
      else
        tk:= tkFuture;

      Granule:= TGranule.Create(tk);
      try
        FEmployeeGranules.Add(Granule);
      except
        FreeAndNil(Granule);
        raise;
      end;  { try }
    end;  { for }

  SetDefaultDayGranules;

  FEmployeeActiveGranuleIntervals:= TGranuleIntervalList.Create;

  FTotalsByOccupation:= TSimpleObjectDictionary<Integer, TEmployeeAvailabilityOccupationTotals>.Create([doOwnsValues]);
end;

destructor TEmployeeAvailabilityCalculator.Destroy;
var
  ModifierType: TEmployeeHourAvailabilityModifierType;
begin
  FreeAndNil(FTotalsByOccupation);
  FreeAndNil(FEmployeeActiveGranuleIntervals);
  FreeAndNil(FEmployeeGranules);
  FreeAndNil(FEmployeeDays);

  for ModifierType:= Low(FEmployeeHourAvailabilityModifiers) to High(FEmployeeHourAvailabilityModifiers) do
    FreeAndNil(FEmployeeHourAvailabilityModifiers[ModifierType]);

  FreeAndNil(FShiftCycles);

  inherited Destroy;
end;

function TEmployeeAvailabilityCalculator.DateTimeToGranuleIndex(
  ADateTime: TDateTime): Integer;
begin
  Result:= TimeToRelativeGranuleIndex(ADateTime - FBeginDateTime);
end;

function TEmployeeAvailabilityCalculator.DateToDayIndex(
  ADate: TDateTime): Integer;
begin
  Result:= Trunc(ADate) - Trunc(FBeginDateTime);
end;

function TEmployeeAvailabilityCalculator.Contains(
  ADateTime: TDateTime): Boolean;
begin
  Assert(ADateTime <> 0);
  Assert(FBeginDateTime <> 0);
  Assert(FEndDateTime <> 0);

  Result:=
    (ADateTime >= FBeginDateTime) and
    (ADateTime <= FEndDateTime);
end;

procedure TEmployeeAvailabilityCalculator.ClearEmployeeModifiers;
var
  ModifierType: TEmployeeHourAvailabilityModifierType;
begin
  for ModifierType:= Low(FEmployeeHourAvailabilityModifiers) to High(FEmployeeHourAvailabilityModifiers) do
    FEmployeeHourAvailabilityModifiers[ModifierType].Count:= 0;
end;

procedure TEmployeeAvailabilityCalculator.ClearGranuleData;
var
  i: Integer;
  CurrentGranuleInterval: TGranuleInterval;
begin
  for CurrentGranuleInterval in FEmployeeActiveGranuleIntervals do
    for i:= CurrentGranuleInterval.FBeginGranuleIndex to CurrentGranuleInterval.FEndGranuleIndex do
      FEmployeeGranules[i].ClearGranuleData;
end;

procedure TEmployeeAvailabilityCalculator.ClearDayData;
var
  d: TDay;
begin
  for d in FEmployeeDays do
    d.ClearDayData;
end;

procedure TEmployeeAvailabilityCalculator.ClearEmployeeData;
begin
  FEmployeeCode:= 0;
  FEmployeeIsAvailableNow:= False;

  // reda na sledvashtite redove e vajen
  ClearGranuleData;
  ClearDayData;
  RevertToDefaultDayGranules;
  ClearEmployeeModifiers;
  FEmployeeActiveGranuleIntervals.Count:= 0;

  FTotalsByOccupation.Clear;
end;

procedure TEmployeeAvailabilityCalculator.SetDefaultDayGranules;
var
  i: Integer;
  CurrentDay: TDay;
  NewDay: TDay;
begin
  for i:= 0 to FEmployeeDays.Count-1 do
    begin
      CurrentDay:= FEmployeeDays[i];

      CurrentDay.FCalendarDayBeginGranuleIndex:= DayIndexToGranuleIndex(i);
      CurrentDay.FCalendarDayEndGranuleIndex:= DayIndexToGranuleIndex(i+1);
      if (CurrentDay.FCalendarDayEndGranuleIndex > CurrentDay.FCalendarDayBeginGranuleIndex) then
        Dec(CurrentDay.FCalendarDayEndGranuleIndex);
        
      CurrentDay.FWorkdayBeginGranuleIndex:= CurrentDay.FCalendarDayBeginGranuleIndex;
      CurrentDay.FWorkdayEndGranuleIndex:= CurrentDay.FCalendarDayEndGranuleIndex;
    end;  { for }

  for i:= 0 to FEmployeeGranules.Count-1 do
    begin
      NewDay:= FEmployeeDays[GranuleIndexToDayIndex(i)];
      FEmployeeGranules[i].FDay:= NewDay;
      Assert(i >= NewDay.FWorkdayBeginGranuleIndex);
      Assert(i <= NewDay.FWorkdayEndGranuleIndex);
    end;  { for }
end;

procedure TEmployeeAvailabilityCalculator.RevertToDefaultDayGranules;
var
  i: Integer;
  CurrentDay: TDay;
  NewDay: TDay;
  CurrentGranuleInterval: TGranuleInterval;
begin
  for CurrentDay in FEmployeeDays do
    begin
      CurrentDay.FWorkdayBeginGranuleIndex:= CurrentDay.FCalendarDayBeginGranuleIndex;
      CurrentDay.FWorkdayEndGranuleIndex:= CurrentDay.FCalendarDayEndGranuleIndex;
    end;  { for }

  for CurrentGranuleInterval in FEmployeeActiveGranuleIntervals do
    for i:= CurrentGranuleInterval.FBeginGranuleIndex to CurrentGranuleInterval.FEndGranuleIndex do
      begin
        NewDay:= FEmployeeDays[GranuleIndexToDayIndex(i)];
        FEmployeeGranules[i].FDay:= NewDay;
        Assert(i >= NewDay.FWorkdayBeginGranuleIndex);
        Assert(i <= NewDay.FWorkdayEndGranuleIndex);
      end;  { for }
end;

procedure TEmployeeAvailabilityCalculator.ExtendPrevDayToGranule(
  AEndGranuleIndex: Integer);
var
  i: Integer;
  OldDay: TDay;
  NewDay: TDay;
begin
  NewDay:= FEmployeeDays[GranuleIndexToDayIndex(AEndGranuleIndex)-1];
  OldDay:= FEmployeeGranules[AEndGranuleIndex].FDay;
  Assert(OldDay.FWorkdayBeginGranuleIndex <= AEndGranuleIndex);
  Assert(OldDay.FWorkdayEndGranuleIndex >= AEndGranuleIndex);

  if (OldDay <> NewDay) then
    begin
      Assert(NewDay.FWorkdayEndGranuleIndex < AEndGranuleIndex);
      Assert(OldDay = FEmployeeDays[GranuleIndexToDayIndex(AEndGranuleIndex)]);

      for i:= NewDay.FWorkdayEndGranuleIndex+1 to AEndGranuleIndex do
        begin
          Assert(FEmployeeGranules[i].FDay = OldDay);
          FEmployeeGranules[i].FDay:= NewDay;
        end;  { for }

      OldDay.FWorkdayBeginGranuleIndex:= AEndGranuleIndex+1;
      NewDay.FWorkdayEndGranuleIndex:= AEndGranuleIndex;
    end;  { if }
end;

function TEmployeeAvailabilityCalculator.DayIndexToGranuleIndex(
  ADateIndex: Integer): Integer;
begin
  Result:= ADateIndex * GranulesPerDay;
end;

function TEmployeeAvailabilityCalculator.GranuleIndexToDayIndex(
  AGranuleIndex: Integer): Integer;
begin
  Result:= AGranuleIndex div GranulesPerDay;
end;

procedure TEmployeeAvailabilityCalculator.AddShiftCycle(
  AShiftCycle: TShiftCycle);
begin
  Assert(Assigned(AShiftCycle));
  FShiftCycles.Add(AShiftCycle);
end;

procedure TEmployeeAvailabilityCalculator.AddEmployeeOccupationAndShift(
  AOccupationCode, AShiftCode: Integer; ABeginDate, AEndDate: TDateTime);
var
  i: Integer;
begin
  Assert(AOccupationCode <> 0);
  Assert(AShiftCode <> 0);
  Assert(Contains(ABeginDate));
  Assert(Contains(AEndDate));
  for i:= DateToDayIndex(ABeginDate) to DateToDayIndex(AEndDate) do
    FEmployeeDays[i].SetOccupationAndShift(AOccupationCode, AShiftCode);
end;

procedure TEmployeeAvailabilityCalculator.AddActiveGranuleInterval(
  ABeginGranuleIndex, AEndGranuleIndex: Integer);
var
  i: Integer;
  CurrentGranuleInterval: TGranuleInterval;
  NewGranuleInterval: TGranuleInterval;
  FutureGranuleInterval: TGranuleInterval;
begin
  Assert(ABeginGranuleIndex <= AEndGranuleIndex);

  CurrentGranuleInterval:= nil;
  i:= 0;
  while (i < FEmployeeActiveGranuleIntervals.Count) do
    begin
      CurrentGranuleInterval:= FEmployeeActiveGranuleIntervals[i];
      if CurrentGranuleInterval.IsInTouchWithGranuleInterval(ABeginGranuleIndex, AEndGranuleIndex) or
         (CurrentGranuleInterval.FBeginGranuleIndex > AEndGranuleIndex) then
        Break;

      Inc(i);
    end;  { while }

  if (i < FEmployeeActiveGranuleIntervals.Count) and
     CurrentGranuleInterval.IsInTouchWithGranuleInterval(ABeginGranuleIndex, AEndGranuleIndex) then
    begin
      if (CurrentGranuleInterval.FBeginGranuleIndex > ABeginGranuleIndex) then
        CurrentGranuleInterval.FBeginGranuleIndex:= ABeginGranuleIndex;

      if (CurrentGranuleInterval.FEndGranuleIndex < AEndGranuleIndex) then
        CurrentGranuleInterval.FEndGranuleIndex:= AEndGranuleIndex;

      // hodene nadiasno i eventualno slivane na intervali
      Inc(i);
      while (i < FEmployeeActiveGranuleIntervals.Count) do
        begin
          FutureGranuleInterval:= FEmployeeActiveGranuleIntervals[i];
          if not FutureGranuleInterval.IsInTouchWithGranuleInterval(CurrentGranuleInterval) then
            Break;

          if (CurrentGranuleInterval.FEndGranuleIndex < FutureGranuleInterval.FEndGranuleIndex) then
            CurrentGranuleInterval.FEndGranuleIndex:= FutureGranuleInterval.FEndGranuleIndex;

          FEmployeeActiveGranuleIntervals.Delete(i);
        end;  { while }
    end
  else
    begin
      NewGranuleInterval:= TGranuleInterval.Create(ABeginGranuleIndex, AEndGranuleIndex);
      try
        FEmployeeActiveGranuleIntervals.Insert(i, NewGranuleInterval);
      except
        FreeAndNil(NewGranuleInterval);
        raise;
      end;  { try }
    end;
end;

procedure TEmployeeAvailabilityCalculator.AddEmployeeUnmatchedMovement(
  ADateTime: TDateTime);
var
  GranuleIndex: Integer;
begin
  Assert(Contains(ADateTime));
  GranuleIndex:= DateTimeToGranuleIndex(ADateTime);
  FEmployeeGranules[GranuleIndex].FHasUnmatchedMovements:= True;
  AddActiveGranuleInterval(GranuleIndex, GranuleIndex);
end;

procedure TEmployeeAvailabilityCalculator.AddEmployeeCurrentPresence(
  ABeginDateTime: TDateTime);
begin
  Assert(ABeginDateTime <= CurrentDateTime);
  Assert(Contains(ABeginDateTime));
  Assert(Contains(CurrentDateTime));

  SetEmployeeIsAvailableNow;

  InternalAddEmployeeRegisteredPresence(
    DateTimeToGranuleIndex(ABeginDateTime),
    CurrentDateTimeGranuleIndex
  );
end;

procedure TEmployeeAvailabilityCalculator.AddEmployeeRegisteredPresence(
  ABeginDateTime, AEndDateTime: TDateTime);
var
  BeginGranuleIndex, EndGranuleIndex: Integer;
begin
  Assert(ABeginDateTime <= AEndDateTime);
  Assert(Contains(ABeginDateTime));
  Assert(Contains(AEndDateTime));

  BeginGranuleIndex:= DateTimeToGranuleIndex(ABeginDateTime);
  EndGranuleIndex:= DateTimeToGranuleIndex(AEndDateTime);
  if (EndGranuleIndex > BeginGranuleIndex) then
    Dec(EndGranuleIndex);

  InternalAddEmployeeRegisteredPresence(BeginGranuleIndex, EndGranuleIndex);
end;

procedure TEmployeeAvailabilityCalculator.InternalAddEmployeeRegisteredPresence(
  ABeginGranuleIndex, AEndGranuleIndex: Integer);
var
  i: Integer;
begin
  Assert(ABeginGranuleIndex >= 0);
  Assert(ABeginGranuleIndex < FEmployeeGranules.Count);
  Assert(AEndGranuleIndex >= 0);
  Assert(AEndGranuleIndex < FEmployeeGranules.Count);
  Assert(ABeginGranuleIndex <= AEndGranuleIndex);

  for i:= ABeginGranuleIndex to AEndGranuleIndex do
    FEmployeeGranules[i].FHasRegisteredPresence:= True;

  AddActiveGranuleInterval(ABeginGranuleIndex, AEndGranuleIndex);
end;

procedure TEmployeeAvailabilityCalculator.AddEmployeeShiftCycle(
  ADate: TDateTime; AShiftCycleCode: Integer; ACreateArtificialPresence: Boolean);
var
  ShiftCycle: TShiftCycle;
  BaseGranuleIndex: Integer;
  BeginGranuleIndex, EndGranuleIndex: Integer;
  MinBeginGranuleIndex, MaxEndGranuleIndex: Integer;
  EffectiveGranuleCount: Integer;
  ModifierType: TEmployeeHourAvailabilityModifierType;
  CurrentRelativeGranuleInterval: TRelativeGranuleInterval;
  Modifier: TModifier;
begin
  Assert(Contains(ADate));
  Assert(AShiftCycleCode > 0);

  BaseGranuleIndex:= DateTimeToGranuleIndex(ADate);

  ShiftCycle:= FShiftCycles.FindShiftCycle(AShiftCycleCode);
  Assert(Assigned(ShiftCycle));
  Assert(ShiftCycle.FRelativeGranuleIntervals.Count > 0);

  if ShiftCycle.FIsOvertime then
    ModifierType:= amtOvertimePresenceRequirementShiftCycle
  else
    ModifierType:= amtNormalPresenceRequirementAndApprovementShiftCycle;

  MinBeginGranuleIndex:= MaxInt;
  MaxEndGranuleIndex:= 0;

  for CurrentRelativeGranuleInterval in ShiftCycle.FRelativeGranuleIntervals do
    begin
      BeginGranuleIndex:=
        (BaseGranuleIndex + CurrentRelativeGranuleInterval.FBeginRelativeGranuleIndex);
      EndGranuleIndex:=
        (BaseGranuleIndex + CurrentRelativeGranuleInterval.FEndRelativeGranuleIndex);
      EffectiveGranuleCount:=
        CurrentRelativeGranuleInterval.FEffectiveGranuleCount;

      Assert(BeginGranuleIndex <= EndGranuleIndex);

      if (BeginGranuleIndex < FEmployeeGranules.Count) and
         (EndGranuleIndex < FEmployeeGranules.Count) then
        begin
          Modifier:=
            TModifier.Create(
              BeginGranuleIndex,
              EndGranuleIndex,
              EffectiveGranuleCount,
              0
            );
          try
            FEmployeeHourAvailabilityModifiers[ModifierType].Add(Modifier);
          except
            FreeAndNil(Modifier);
            raise;
          end;

          if ACreateArtificialPresence then
            begin
              Modifier:=
                TModifier.Create(
                  BeginGranuleIndex,
                  EndGranuleIndex,
                  EffectiveGranuleCount,
                  0
                );
              try
                FEmployeeHourAvailabilityModifiers[amtArtificialPresenceShiftCycle].Add(Modifier);
              except
                FreeAndNil(Modifier);
                raise;
              end;
            end;  { if }

          if (MinBeginGranuleIndex > BeginGranuleIndex) then
            MinBeginGranuleIndex:= BeginGranuleIndex;

          if (MaxEndGranuleIndex < EndGranuleIndex) then
            MaxEndGranuleIndex:= EndGranuleIndex;
        end;  { if }
    end;  { for }

  if (MinBeginGranuleIndex <> MaxInt) and
     (MaxEndGranuleIndex <> 0) then
    begin
      if (GranuleIndexToDayIndex(MinBeginGranuleIndex) <> GranuleIndexToDayIndex(MaxEndGranuleIndex)) then
        ExtendPrevDayToGranule(MaxEndGranuleIndex);

      AddActiveGranuleInterval(MinBeginGranuleIndex, MaxEndGranuleIndex);
    end;  { if }
end;

procedure TEmployeeAvailabilityCalculator.AddEmployeeDayAbsenceModifier(
  ADate: TDateTime; ADayAbsenceReasonCode: Integer;
  AIsDayAbsenceConfirmed: Boolean);
begin
  Assert(Contains(ADate));
  FEmployeeDays[DateToDayIndex(ADate)].AddDayAbsenceModifier(IntToDayAbsenceReason(ADayAbsenceReasonCode), AIsDayAbsenceConfirmed);
end;

procedure TEmployeeAvailabilityCalculator.AddEmployeeShiftChangeModifier(
  ADate: TDateTime; AOldShiftCode, ANewShiftCode, AReasonCode: Integer);
begin
  Assert(Contains(ADate));
  FEmployeeDays[DateToDayIndex(ADate)].AddShiftChangeModifier(AOldShiftCode, ANewShiftCode, AReasonCode);
end;

procedure TEmployeeAvailabilityCalculator.AddEmployeeHourAvailabilityModifier(
  ABeginDateTime, AEndDateTime: TDateTime; ADurationHours: Real;
  AEmpAvailModifierTypeCode: Integer; AReasonCode: Integer);
var
  EmpAvailModifierType: TEmployeeHourAvailabilityModifierType;
  BeginGranuleIndex, EndGranuleIndex: Integer;
  EffectiveGranuleCount: Integer;
  EffectivePercent: Real;
  Modifier: TModifier;
begin
  Assert(Contains(ABeginDateTime));
  Assert(Contains(AEndDateTime));
  Assert(ABeginDateTime < AEndDateTime);
  Assert(ADurationHours >= 0);

  EffectivePercent:= (ADurationHours/24) / (AEndDateTime - ABeginDateTime);

  EmpAvailModifierType:= IntToEmployeeHourAvailabilityModifierType(AEmpAvailModifierTypeCode);

  BeginGranuleIndex:= DateTimeToGranuleIndex(ABeginDateTime);
  EndGranuleIndex:= DateTimeToGranuleIndex(AEndDateTime);
  if (EndGranuleIndex > BeginGranuleIndex) then
    Dec(EndGranuleIndex);

  EffectiveGranuleCount:=
    RealRound((EffectivePercent * (EndGranuleIndex - BeginGranuleIndex + 1)));

  Modifier:=
    TModifier.Create(
      BeginGranuleIndex,
      EndGranuleIndex,
      EffectiveGranuleCount,
      AReasonCode
    );
  try
    FEmployeeHourAvailabilityModifiers[EmpAvailModifierType].Add(Modifier);
  except
    FreeAndNil(Modifier);
    raise;
  end;

  if (GranuleIndexToDayIndex(BeginGranuleIndex) <> GranuleIndexToDayIndex(EndGranuleIndex)) then
    ExtendPrevDayToGranule(EndGranuleIndex);

  AddActiveGranuleInterval(BeginGranuleIndex, EndGranuleIndex);
end;

function TEmployeeAvailabilityCalculator.GetCalcBeginDate: TDateTime;
begin
  Result:= Trunc(FBeginDateTime);
end;

function TEmployeeAvailabilityCalculator.GetCalcEndDate: TDateTime;
begin
  Result:= Trunc(FEndDateTime)-1;
end;

function TEmployeeAvailabilityCalculator.GetContainsCurrentDateTime: Boolean;
begin
  Result:= Contains(CurrentDateTime);
end;

procedure TEmployeeAvailabilityCalculator.SetOfficialWorkday(
  ADate: TDateTime; AIsOfficialWorkday: Boolean);
begin
  if AIsOfficialWorkday then
    FEmployeeDays[DateToDayIndex(ADate)].FOfficialDayKind:= odkOfficialWorkday
  else
    FEmployeeDays[DateToDayIndex(ADate)].FOfficialDayKind:= odkOfficialDayOff;
end;

procedure TEmployeeAvailabilityCalculator.SetTotalsByOccupation(
  OccupationCode: Integer; const Value: TEmployeeAvailabilityOccupationTotals);
begin
  FTotalsByOccupation[OccupationCode]:= Value;
end;

procedure TEmployeeAvailabilityCalculator.SetEmployeeIsAvailableNow;
begin
  FEmployeeIsAvailableNow:= True;
end;

procedure TEmployeeAvailabilityCalculator.InitializeEmployeeData(
  AEmployeeCode: Integer);
begin
  Assert(AEmployeeCode <> 0);
  Assert(FEmployeeCode = 0);
  FEmployeeCode:= AEmployeeCode;
end;

procedure TEmployeeAvailabilityCalculator.FinalizeEmployeeData;
begin
  ClearEmployeeData;
end;

function TEmployeeAvailabilityCalculator.GetEmployeeDays(
  Index: TDateTime): TDay;
begin
  Assert(Index = Trunc(Index));
  Assert(Index >= FBeginDate);
  Assert(Index <= FEndDate);
  Result:= FEmployeeDays[DateToDayIndex(Index)];
end;

procedure TEmployeeAvailabilityCalculator.CalculateEmployeeData;
begin
  ApplyModifiersToGranules;
  ClearShortIntegralOfftimePresenceFromGranules;
  AggregateDaysFromGranules;
  MarkNotConfirmedSelfAbsenceDays;
  ClearPresenceAndAbsenceInDaysWithDayAbsence;
  ClearPresenceAndAbsenceInGranulesWithDayAbsence;
  AggregateDaysHourAvailabilityModifierIndicators;
  AggregateTotals;
end;

procedure TEmployeeAvailabilityCalculator.ApplyModifiersToGranules;
var
  ModifierType: TEmployeeHourAvailabilityModifierType;
begin
  // reda na prilagane na modifierite e vajen
  for ModifierType:= Low(TEmployeeHourAvailabilityModifierType) to High(TEmployeeHourAvailabilityModifierType) do
    ModifierListProcessorClasses[ModifierType].ApplyToGranules(
      FEmployeeHourAvailabilityModifiers[ModifierType],
      FEmployeeGranules,
      FEmployeeActiveGranuleIntervals);
end;

procedure TEmployeeAvailabilityCalculator.ClearShortIntegralOfftimePresenceFromGranules;

  procedure ClearGranulePresence(ABeginGranuleIndex, AEndGranuleIndex: Integer);
  var
    i: Integer;
  begin
    for i:= ABeginGranuleIndex to AEndGranuleIndex do
      FEmployeeGranules[i].ClearPresenceAndAbsence;
  end;

var
  i: Integer;
  CurrentGranuleInterval: TGranuleInterval;
  CurrentGranule: TGranule;
  SequenceBeginGranuleIndex: Integer;
begin
  for CurrentGranuleInterval in FEmployeeActiveGranuleIntervals do
    begin
      i:= CurrentGranuleInterval.FBeginGranuleIndex;
      while (i <= CurrentGranuleInterval.FEndGranuleIndex) do
        begin
          CurrentGranule:= FEmployeeGranules[i];
          Assert(Assigned(CurrentGranule));

          if CurrentGranule.HasPresence and
             (CurrentGranule.PresenceCountedAs = pcaOfftimePresence) then
            begin
              SequenceBeginGranuleIndex:= i;
              while (i <= CurrentGranuleInterval.FEndGranuleIndex) do
                begin
                  CurrentGranule:= FEmployeeGranules[i];
                  Assert(Assigned(CurrentGranule));

                  if not CurrentGranule.HasPresence or
                     (CurrentGranule.PresenceCountedAs <> pcaOfftimePresence) then
                    Break;

                  Inc(i);
                end;  { while }

              if ((i - SequenceBeginGranuleIndex) < FMinIntegralOfftimePresenceGranuleCount) then
                ClearGranulePresence(SequenceBeginGranuleIndex, i-1);
            end;  { if }

          Inc(i);
        end;  { while }
    end;  { for }
end;

procedure TEmployeeAvailabilityCalculator.AggregateDaysFromGranules;
var
  CurrentGranule: TGranule;
  CurrentDay: TDay;
begin
  // agregirane po dni - tuk narochno niama optimizacia chrez ActiveGranuleIntervals za da se obhvane vsichko
  for CurrentGranule in FEmployeeGranules do
    begin
      Assert(Assigned(CurrentGranule));

      CurrentDay:= CurrentGranule.FDay;
      Assert(Assigned(CurrentDay));

      CurrentDay.FHasUnmatchedMovements:=
        CurrentDay.FHasUnmatchedMovements or
        CurrentGranule.FHasUnmatchedMovements;

      if CurrentGranule.HasPresence then
        Inc(CurrentDay.FPresenceGranuleCounts[CurrentGranule.FPresenceCountedAs, CurrentGranule.TimeKind])
      else
        Inc(CurrentDay.FAbsenceGranuleCounts[CurrentGranule.FAbsenceCountedAs, CurrentGranule.TimeKind]);
    end;  { for }
end;

procedure TEmployeeAvailabilityCalculator.MarkNotConfirmedSelfAbsenceDays;
var
  CurrentDay: TDay;
begin
  // markirane na nepotvardeni samootluchki
  for CurrentDay in FEmployeeDays do
    begin
      Assert(Assigned(CurrentDay));

      if (CurrentDay.FDayAbsenceReason = darNoDayAbsence) then
        begin
          if (CurrentDay.FPresenceGranuleCounts[pcaNormalShiftCyclePresence, tkPast] = 0) and
             (CurrentDay.FPresenceGranuleCounts[pcaNormalExtraPresence, tkPast] = 0) and
             ( (CurrentDay.FAbsenceGranuleCounts[acaUnapprovedNormalShiftCycleAbsence, tkPast] > 0) or
               (CurrentDay.FAbsenceGranuleCounts[acaUnapprovedNormalExtraAbsence, tkPast] > 0) ) then
            begin
              CurrentDay.FDayAbsenceReason:= darRealSelfAbsence;
              CurrentDay.FIsDayAbsenceConfirmed:= False;
            end
          else
            begin
              if (CurrentDay.SumPresenceGranuleCounts[pcaNormalShiftCyclePresence] = 0) and
                 (CurrentDay.SumPresenceGranuleCounts[pcaNormalExtraPresence] = 0) and
                 ( (CurrentDay.SumAbsenceGranuleCounts[acaUnapprovedNormalShiftCycleAbsence] > 0) or
                   (CurrentDay.SumAbsenceGranuleCounts[acaUnapprovedNormalExtraAbsence] > 0) ) then
                begin
                  CurrentDay.FDayAbsenceReason:= darPlanSelfAbsence;
                  CurrentDay.FIsDayAbsenceConfirmed:= False;
                end;  { if }
            end;
        end;  { if }
    end;  { for }
end;

procedure TEmployeeAvailabilityCalculator.ClearPresenceAndAbsenceInDaysWithDayAbsence;
var
  CurrentDay: TDay;
begin
  // pochistvane na dannite za prisushtvie i pochasovo otsustvie ot dnite s markirano celodnevno otsustvie
  for CurrentDay in FEmployeeDays do
    begin
      Assert(Assigned(CurrentDay));

      if (CurrentDay.FDayAbsenceReason <> darNoDayAbsence) then
        begin
          CurrentDay.ClearPresenceGranuleCounts;
          CurrentDay.ClearAbsenceGranuleCounts;
        end;  { if }
    end;  { for }
end;

procedure TEmployeeAvailabilityCalculator.ClearPresenceAndAbsenceInGranulesWithDayAbsence;
var
  i: Integer;
  CurrentGranuleInterval: TGranuleInterval;
  CurrentGranule: TGranule;
  CurrentDay: TDay;
begin
  // pochistvane na dannite za prisushtvie i pochasovo otsustvie ot granulite v dnite s markirano celodnevno otsustvie
  for CurrentGranuleInterval in FEmployeeActiveGranuleIntervals do
    for i:= CurrentGranuleInterval.FBeginGranuleIndex to CurrentGranuleInterval.FEndGranuleIndex do
      begin
        CurrentGranule:= FEmployeeGranules[i];
        Assert(Assigned(CurrentGranule));

        CurrentDay:= CurrentGranule.FDay;
        Assert(Assigned(CurrentDay));

        if (CurrentDay.FDayAbsenceReason <> darNoDayAbsence) then
          begin
            CurrentGranule.ClearPresenceAndAbsence;
          end;  { if }
      end;  { for }
end;

procedure TEmployeeAvailabilityCalculator.AggregateDaysHourAvailabilityModifierIndicators;
var
  ModifierType: TEmployeeHourAvailabilityModifierType;
  ResultModifierList: TModifierList;
  CurrentModifierList: TModifierList;
  CurrentModifier: TModifier;
  CurrentGranule: TGranule;
  CurrentDay: TDay;
  PrevGranuleDay: TDay;
  ModifierIndex: Integer;
  GranuleIndex: Integer;
begin
  for ModifierType:= Low(FEmployeeHourAvailabilityModifiers) to High(FEmployeeHourAvailabilityModifiers) do
    begin
      CurrentModifierList:= FEmployeeHourAvailabilityModifiers[ModifierType];
      Assert(Assigned(CurrentModifierList));

      for ModifierIndex:= 0 to CurrentModifierList.Count-1 do
        begin
          CurrentModifier:= CurrentModifierList[ModifierIndex];
          Assert(Assigned(CurrentModifier));

          PrevGranuleDay:= nil;
          
          for GranuleIndex:= CurrentModifier.FBeginGranuleIndex to CurrentModifier.FEndGranuleIndex do
            begin
              CurrentGranule:= FEmployeeGranules[GranuleIndex];
              Assert(Assigned(CurrentGranule));

              CurrentDay:= CurrentGranule.FDay;
              Assert(Assigned(CurrentDay));

              if (CurrentDay <> PrevGranuleDay) then
                begin
                  ResultModifierList:= CurrentDay.FHourAvailabilityModifiers[ModifierType];
                  Assert(Assigned(ResultModifierList));

                  if (ResultModifierList.IndexOf(CurrentModifier) < 0) then
                    ResultModifierList.Add(CurrentModifier);

                  PrevGranuleDay:= CurrentDay;
                end;  { if }
            end;  { for }
        end;  { for }
    end;
end;

procedure TEmployeeAvailabilityCalculator.AggregateTotals;

  procedure AggregateDayIntoTotals(ACurrentDay: TDay; ATotals: TEmployeeAvailabilityTotals);
  var
    pca: TPresenceCountedAs;
    aca: TAbsenceCountedAs;
    tk: TTimeKind;
  begin
    ATotals.FEmployeeHasUnmatchedMovements:=
      ATotals.FEmployeeHasUnmatchedMovements or
      ACurrentDay.FHasUnmatchedMovements;

    for pca:= Low(TPresenceCountedAs) to High(TPresenceCountedAs) do
      for tk:= Low(TTimeKind) to High(TTimeKind) do
        Inc(ATotals.FEmployeePresenceGranuleCounts[pca, tk, ACurrentDay.FOfficialDayKind], ACurrentDay.FPresenceGranuleCounts[pca, tk]);

    for aca:= Low(TAbsenceCountedAs) to High(TAbsenceCountedAs) do
      for tk:= Low(TTimeKind) to High(TTimeKind) do
        Inc(ATotals.FEmployeeAbsenceGranuleCounts[aca, tk, ACurrentDay.FOfficialDayKind], ACurrentDay.FAbsenceGranuleCounts[aca, tk]);

    if (ACurrentDay.FDayAbsenceReason <> darNoDayAbsence) then
      Inc(ATotals.FEmployeeDayAbsenceCounts[ACurrentDay.FDayAbsenceReason, ACurrentDay.FOfficialDayKind]);

    if (ACurrentDay.SumPresenceGranuleCounts[pcaNormalShiftCyclePresence] > 0) or
       (ACurrentDay.SumPresenceGranuleCounts[pcaNormalExtraPresence] > 0) then
      Inc(ATotals.FEmployeeNormalPresenceDayCounts[ACurrentDay.FOfficialDayKind]);

    Inc(ATotals.FDayCounts[ACurrentDay.FOfficialDayKind]);
  end;

var
  i: Integer;
  CurrentDay: TDay;
  TotalsForOccupation: TEmployeeAvailabilityOccupationTotals;
  TotalsForShift: TEmployeeAvailabilityTotals;
begin
  // agregirane na obshtoto
  for i:= DateToDayIndex(FBeginDate) to DateToDayIndex(FEndDate) do
    begin
      CurrentDay:= FEmployeeDays[i];
      Assert(Assigned(CurrentDay));

      TotalsForOccupation:= TotalsByOccupation[CurrentDay.OccupationCode];
      if not Assigned(TotalsForOccupation) then
        begin
          TotalsForOccupation:= TEmployeeAvailabilityOccupationTotals.Create;
          try
            TotalsByOccupation[CurrentDay.OccupationCode]:= TotalsForOccupation;
          except
            FreeAndNil(TotalsForOccupation);
            raise;
          end;  { try }
        end;  { if }

      TotalsForShift:= TotalsForOccupation.TotalsByShift[CurrentDay.ShiftCode];
      if not Assigned(TotalsForShift) then
        begin
          TotalsForShift:= TEmployeeAvailabilityTotals.Create;
          try
            TotalsForOccupation.TotalsByShift[CurrentDay.ShiftCode]:= TotalsForShift;
          except
            FreeAndNil(TotalsForShift);
            raise;
          end;  { try }
        end;  { if }

      AggregateDayIntoTotals(CurrentDay, TotalsForOccupation);
      AggregateDayIntoTotals(CurrentDay, TotalsForShift);
    end;  { for }
end;

function TEmployeeAvailabilityCalculator.GetTotalsByOccupation(
  OccupationCode: Integer): TEmployeeAvailabilityOccupationTotals;
begin
  Result:= FTotalsByOccupation[OccupationCode];
end;

{ TEmployeeAvailabilityTotals }

function TEmployeeAvailabilityTotals.GetEmployeePresenceGranuleCounts(
  PresenceCountedAs: TPresenceCountedAs; TimeKind: TTimeKind;
  OfficialDayKind: TOfficialDayKind): Integer;
begin
  Result:= FEmployeePresenceGranuleCounts[PresenceCountedAs, TimeKind, OfficialDayKind];
end;

function TEmployeeAvailabilityTotals.GetEmployeeAbsenceGranuleCounts(
  AbsenceCountedAs: TAbsenceCountedAs; TimeKind: TTimeKind;
  OfficialDayKind: TOfficialDayKind): Integer;
begin
  Result:= FEmployeeAbsenceGranuleCounts[AbsenceCountedAs, TimeKind, OfficialDayKind];
end;

function TEmployeeAvailabilityTotals.GetEmployeeDayAbsenceCounts(
  DayAbsenceReason: TDayAbsenceReason;
  OfficialDayKind: TOfficialDayKind): Integer;
begin
  Assert(DayAbsenceReason >= Low(FEmployeeDayAbsenceCounts));
  Assert(DayAbsenceReason <= High(FEmployeeDayAbsenceCounts));
  Result:= FEmployeeDayAbsenceCounts[DayAbsenceReason, OfficialDayKind];
end;

function TEmployeeAvailabilityTotals.GetEmployeeNormalPresenceDayCounts(
  OfficialDayKind: TOfficialDayKind): Integer;
begin
  Result:= FEmployeeNormalPresenceDayCounts[OfficialDayKind];
end;

function TEmployeeAvailabilityTotals.GetDayCounts(
  OfficialDayKind: TOfficialDayKind): Integer;
begin
  Result:= FDayCounts[OfficialDayKind];
end;

{ TEmployeeAvailabilityOccupationTotals }

constructor TEmployeeAvailabilityOccupationTotals.Create;
begin
  inherited Create;
  FTotalsByShift:= TSimpleObjectDictionary<Integer, TEmployeeAvailabilityTotals>.Create([doOwnsValues]);
end;

destructor TEmployeeAvailabilityOccupationTotals.Destroy;
begin
  FreeAndNil(FTotalsByShift);
  inherited Destroy;
end;

end.
