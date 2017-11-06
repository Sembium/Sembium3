unit dEmployeeAvailability;
 
interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, uSvrEmployeeAvailability, AbmesClientDataSet, Contnrs,
  uEmployeeAvailability, WideStrings, FMTBcd, SqlExpr,
  AbmesSQLConnection, uUtils, DBXDevartOracle, uSmartLock, Generics.Collections,
  uSimpleDictionaries;

type
  TEmployeeAvailabilityCallbackEvent = procedure(
    AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator;
    ADataSet: TDataSet
  ) of object;

type
  TEmployeesAvailabilityTotal = record
    PresenceDaysField: TField;
    AbsenseDaysFields: array[TDayAbsenceReason] of TField;
    DaysOffField: TField;
    TotalDaysField: TField;
    PresenceHoursField: TField;
    ApprovedOvertimeHoursField: TField;
    UnapprovedOvertimeHoursField: TField;
    OfftimePresenceHoursField: TField;
    UnapprovedAbsenceHoursField: TField;
    SumOf: TOfficialDayKindSet;

    procedure SetZeroValuesToNull;
  end;

type
  TEmployeesAvailabilityGraphDateUnit = record
    TheLastDate: TDateTime;
    NessesaryPresenceDays: Integer;
    PlanPresenceDays: Integer;
    PresenceDays: Integer;
    SelfAbsenceDays: Integer;
    VacationDays: Integer;
    MaternityDays: Integer;
    SicknessDays: Integer;
    StateDays: Integer;
    AdministrativeDays: Integer;
  end;

type
  TEmployeesAvailabilityFilter = record
    ShiftCode: Integer;
    FilterEmpAvailModifiers: Integer;
    EmpDayAbsenceReasonCode: Integer;
    IsEmpDayAbsenceConfirmed: Variant;
    EmpAvailModifierTypeCode: Integer;
    EmpHourAvailModReasonCode: Integer;
    HasUnmatchedMovements: Variant;
    OldShiftCode: Variant;
    NewShiftCode: Variant;
  end;

const
  MaxEmployeesAvailabilityGraphDateUnits = 31;

type
  TEmpDateAvailData = record
    CurrentDateTime: TDateTime;
    WorkdayBeginDateTime: TDateTime;
    WorkdayEndDateTime: TDateTime;
    DisplayGranuleAvailablityStatus: Variant;
    DayAbsenceReason: TDayAbsenceReason;
    DayAvailabilityStatusAbbrev: string;
    EmployeeIsAvailableNow: Boolean;
  end;

type
  TdmEmployeeAvailability = class(TDBPooledDataModule)
    prvEmpDateAvail: TDataSetProvider;
    qryEmpDateAvail: TAbmesSQLQuery;
    qryEmpDateAvailMovements: TAbmesSQLQuery;
    dsEmpDateAvail: TDataSource;
    qryEmpDateAvailModifiers: TAbmesSQLQuery;
    qryEmpDateAvailEMPLOYEE_CODE: TAbmesFloatField;
    qryEmpDateAvailOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryEmpDateAvailOCCUPATION_NAME: TAbmesWideStringField;
    qryEmpDateAvailOCCUPATION_LEVEL: TAbmesFloatField;
    qryEmpDateAvailSHIFT_IDENTIFIER: TAbmesWideStringField;
    qryEmpDateAvailEMPLOYEE_STATUS_NAME: TAbmesWideStringField;
    qryEmpDateAvailEMPLOYEE_NAME: TAbmesWideStringField;
    qryEmpDateAvailEMPLOYEE_ABBREV: TAbmesWideStringField;
    qryEmpDateAvailEMPLOYEE_EGN: TAbmesWideStringField;
    qryEmpDateAvailEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField;
    qryEmpDateAvailEMPLOYEE_DOC_CODE: TAbmesFloatField;
    qryEmpDateAvailTHE_DATE: TAbmesSQLTimeStampField;
    qryEmpDateAvailMovementsEMP_MOVEMENT_CODE: TAbmesFloatField;
    qryEmpDateAvailMovementsIN_OUT: TAbmesFloatField;
    qryEmpDateAvailMovementsEMP_MOVEMENT_DATE: TAbmesSQLTimeStampField;
    qryEmpDateAvailMovementsEMP_MOVEMENT_TIME: TAbmesSQLTimeStampField;
    qryEmpDateAvailMovementsCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmpDateAvailMovementsCREATE_DATE: TAbmesSQLTimeStampField;
    qryEmpDateAvailMovementsCREATE_TIME: TAbmesSQLTimeStampField;
    qryEmpDateAvailMovementsSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmpDateAvailMovementsSTORNO_DATE: TAbmesSQLTimeStampField;
    qryEmpDateAvailMovementsSTORNO_TIME: TAbmesSQLTimeStampField;
    qryEmpDateAvailMovementsRECORD_TYPE: TAbmesFloatField;
    qryEmpDateAvailMovementsEMPLOYEE_CODE: TAbmesFloatField;
    qryNewEmpMovementCode: TAbmesSQLQuery;
    qryNewEmpMovementCodeNEW_EMP_MOVEMENT_CODE: TAbmesFloatField;
    prvEmpDayAbsenceReasons: TDataSetProvider;
    qryEmpDayAbsenceReasons: TAbmesSQLQuery;
    dsEmpDayAbsenceReasons: TDataSource;
    qryEmpDayAbsenceDocTypes: TAbmesSQLQuery;
    qryEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    qryEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField;
    qryEmpDayAbsenceDocTypesEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    qryEmpDayAbsenceDocTypesEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField;
    qryEmpDayAbsenceDocTypesEMP_DAY_ABSENCE_DOC_TYPE_NAME: TAbmesWideStringField;
    qryNewEmpDayAbsenceDocTypeCode: TAbmesSQLQuery;
    qryNewEmpDayAbsenceDocTypeCodeNEW_EMP_DAY_ABSENCE_D_T_CODE: TAbmesFloatField;
    prvEmpHourAvailModReasons: TDataSetProvider;
    qryEmpHourAvailModReasons: TAbmesSQLQuery;
    qryEmpHourAvailModReasonsEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField;
    qryEmpHourAvailModReasonsEMP_HOUR_AVAIL_MOD_REASON_NAME: TAbmesWideStringField;
    qryNewEmpHourAvailModReasonCode: TAbmesSQLQuery;
    qryNewEmpHourAvailModReasonCodeNEW_EMP_HOUR_AVAIL_M_R_CODE: TAbmesFloatField;
    qryEmpDateAvailMovementsFOR_OTHER_DATE: TAbmesFloatField;
    qryEmpDateAvailModifiersEMP_AVAIL_MODIFIER_CODE: TAbmesFloatField;
    qryEmpDateAvailModifiersEMPLOYEE_CODE: TAbmesFloatField;
    qryEmpDateAvailModifiersAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmpDateAvailModifiersBEGIN_DATE: TAbmesSQLTimeStampField;
    qryEmpDateAvailModifiersEND_DATE: TAbmesSQLTimeStampField;
    qryEmpDateAvailModifiersEMP_AVAIL_MODIFIER_TYPE_CODE: TAbmesFloatField;
    qryEmpDateAvailModifiersEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField;
    qryEmpDateAvailModifiersBEGIN_TIME: TAbmesSQLTimeStampField;
    qryEmpDateAvailModifiersEND_TIME: TAbmesSQLTimeStampField;
    qryEmpDateAvailModifiersDURATION_HOURS: TAbmesFloatField;
    qryEmpDateAvailModifiersIS_PERSONAL_WORKDAYS_ONLY: TAbmesFloatField;
    qryEmpDateAvailModifiersEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    qryEmpDateAvailModifiersEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField;
    qryEmpDateAvailModifiersEMP_DAY_ABSENCE_DOC_NO: TAbmesWideStringField;
    qryEmpDateAvailModifiersEMP_DAY_ABSENCE_DOC_DATE: TAbmesSQLTimeStampField;
    qryEmpDateAvailModifiersEMP_DAY_ABSENCE_DOC_ISSUER: TAbmesWideStringField;
    qryEmpDateAvailModifiersNOTES: TAbmesWideStringField;
    qryEmpDateAvailModifiersDOC_BRANCH_CODE: TAbmesFloatField;
    qryEmpDateAvailModifiersDOC_CODE: TAbmesFloatField;
    qryEmpDateAvailModifiersCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmpDateAvailModifiersCREATE_DATE: TAbmesSQLTimeStampField;
    qryEmpDateAvailModifiersCREATE_TIME: TAbmesSQLTimeStampField;
    qryEmpDateAvailModifiersSTORNO_EMPLOYEE_CODE: TAbmesFloatField;
    qryEmpDateAvailModifiersSTORNO_DATE: TAbmesSQLTimeStampField;
    qryEmpDateAvailModifiersSTORNO_TIME: TAbmesSQLTimeStampField;
    prvEmpAvailModifierTypes: TDataSetProvider;
    qryEmpAvailModifierTypes: TAbmesSQLQuery;
    qryEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_CODE: TAbmesFloatField;
    qryEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_NAME: TAbmesWideStringField;
    qryCalcShiftCycleBreaks: TAbmesSQLQuery;
    qryCalcShiftCycles: TAbmesSQLQuery;
    qryCalcShiftCyclesSHIFT_CYCLE_CODE: TAbmesFloatField;
    qryCalcShiftCyclesWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField;
    qryCalcShiftCyclesWORKDAY_END_TIME: TAbmesSQLTimeStampField;
    qryCalcShiftCyclesWORKDAY_DURATION_HOURS: TAbmesFloatField;
    qryCalcShiftCyclesIS_OVERTIME: TAbmesFloatField;
    qryCalcShiftCycleBreaksSHIFT_CYCLE_BREAK_CODE: TAbmesFloatField;
    qryCalcShiftCycleBreaksSHIFT_CYCLE_CODE: TAbmesFloatField;
    qryCalcShiftCycleBreaksBREAK_BEGIN_TIME: TAbmesSQLTimeStampField;
    qryCalcShiftCycleBreaksBREAK_END_TIME: TAbmesSQLTimeStampField;
    qryCalcShiftCycleBreaksBREAK_DURATION_HOURS: TAbmesFloatField;
    qryCalcEmployeeShiftCycles: TAbmesSQLQuery;
    qryCalcEmployeeModifiers: TAbmesSQLQuery;
    qryCalcEmployeeMovements: TAbmesSQLQuery;
    qryCalcEmployeeShiftCyclesTHE_DATE: TAbmesSQLTimeStampField;
    qryCalcEmployeeShiftCyclesSHIFT_CYCLE_CODE: TAbmesFloatField;
    qryCalcEmployeeModifiersEMP_AVAIL_MODIFIER_CODE: TAbmesFloatField;
    qryCalcEmployeeModifiersEMPLOYEE_CODE: TAbmesFloatField;
    qryCalcEmployeeModifiersTHE_DATE: TAbmesSQLTimeStampField;
    qryCalcEmployeeModifiersEMP_AVAIL_MODIFIER_TYPE_CODE: TAbmesFloatField;
    qryCalcEmployeeModifiersDURATION_HOURS: TAbmesFloatField;
    qryCalcEmployeeModifiersEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    qryCalcEmployeeModifiersEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField;
    qryCalcEmployeeMovementsEMP_MOVEMENT_CODE: TAbmesFloatField;
    qryCalcEmployeeMovementsEMPLOYEE_CODE: TAbmesFloatField;
    qryCalcEmployeeMovementsIN_OUT: TAbmesFloatField;
    qryCalcEmployeeMovementsEMP_MOVEMENT_DATE_TIME: TAbmesSQLTimeStampField;
    qryEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_ABBREV: TAbmesWideStringField;
    qryNewEmpAvailModifierCode: TAbmesSQLQuery;
    qryNewEmpAvailModifierCodeNEW_EMP_AVAIL_MODIFIER_CODE: TAbmesFloatField;
    qryEmpDateAvailModifiersHAS_DOC_ITEMS: TAbmesFloatField;
    qryEmpDateAvailEMPLOYEE_HAS_DOC_ITEMS: TAbmesFloatField;
    qryCalcEmployeeModifiersBEGIN_DATE_TIME: TAbmesSQLTimeStampField;
    qryCalcEmployeeModifiersEND_DATE_TIME: TAbmesSQLTimeStampField;
    qryCalcEmployeeShiftCyclesEMPLOYEE_CODE: TAbmesFloatField;
    qryCalcEmployeeShiftCyclesAFFECTS_EMP_AVAILABILITY: TAbmesFloatField;
    prvEmployeesAvailability: TDataSetProvider;
    qryEmployeesAvailability: TAbmesSQLQuery;
    qryFillEmployeesAvailabilityTempEmployees: TAbmesSQLQuery;
    cdsEmployeesAvailability: TAbmesClientDataSet;
    qryEmployeesAvailabilityEMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeesAvailabilityEMPLOYEE_NAME: TAbmesWideStringField;
    qryEmployeesAvailabilityOCCUPATION_CODE: TAbmesFloatField;
    qryEmployeesAvailabilityOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryEmployeesAvailabilityOCCUPATION_NAME: TAbmesWideStringField;
    qryEmployeesAvailabilityOCCUPATION_LEVEL: TAbmesFloatField;
    qryEmployeesAvailabilitySHIFT_ABBREV: TAbmesWideStringField;
    qryEmployeesAvailabilityCRAFT_TYPE_NAME: TAbmesWideStringField;
    qryEmployeesAvailabilityCRAFT_NAME: TAbmesWideStringField;
    qryEmployeesAvailabilityOCCUPATION_DOC_BRANCH_CODE: TAbmesFloatField;
    qryEmployeesAvailabilityOCCUPATION_DOC_CODE: TAbmesFloatField;
    qryEmployeesAvailabilityOCCUPATION_HAS_DOC_ITEMS: TAbmesFloatField;
    qryEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_ABBREV: TAbmesWideStringField;
    qryEmpDateAvailMovementsIS_UNMATCHED_MOVEMENT: TAbmesFloatField;
    qryCalcDates: TAbmesSQLQuery;
    qryCalcDatesTHE_DATE: TAbmesSQLTimeStampField;
    qryCalcDatesIS_WORKDAY: TAbmesFloatField;
    cdsEmployeePresenceDeviation: TAbmesClientDataSet;
    prvEmployeePresenceDeviation: TDataSetProvider;
    cdsEmployeePresenceDeviationTHE_DATE: TAbmesSQLTimeStampField;
    prvEmployeeDateShiftCycles: TDataSetProvider;
    qryEmployeeDateShiftCycles: TAbmesSQLQuery;
    qryEmployeeDateShiftCyclesSHIFT_CYCLE_CODE: TAbmesFloatField;
    qryEmployeeDateShiftCyclesWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField;
    qryEmployeeDateShiftCyclesWORKDAY_END_TIME: TAbmesSQLTimeStampField;
    qryEmployeeDateShiftCyclesWORKDAY_DURATION_HOURS: TAbmesFloatField;
    qryEmployeeDateShiftCyclesAFFECTS_EMP_AVAILABILITY: TAbmesFloatField;
    qryEmployeeDateShiftCyclesSHIFT_ABBREV: TAbmesWideStringField;
    qryEmployeeDateShiftCyclesIS_OVERTIME: TAbmesFloatField;
    cdsEmployeePresenceDeviationTIME_CORRECTION_TYPE_CODE: TAbmesFloatField;
    cdsEmployeePresenceDeviationDURATION: TAbmesFloatField;
    prvEmployeesTotalAvailability: TDataSetProvider;
    cdsEmployeesTotalAvailability: TAbmesClientDataSet;
    prvETAEmployees: TDataSetProvider;
    cdsETAEmployees: TAbmesClientDataSet;
    qryETAEmployees: TAbmesSQLQuery;
    qryFillETATempEmployees: TAbmesSQLQuery;
    qryETAEmployeesEMPLOYEE_CODE: TAbmesFloatField;
    qryETAEmployeesEMPLOYEE_NAME: TAbmesWideStringField;
    qryETAEmployeesOCCUPATION_DEPT_CODE: TAbmesFloatField;
    qryETAEmployeesOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField;
    qryETAEmployeesCRAFT_TYPE_CODE: TAbmesFloatField;
    qryETAEmployeesCRAFT_TYPE_NAME: TAbmesWideStringField;
    qryETAEmployeesIS_ASSIGNED_AT_BEGIN_DATE: TAbmesFloatField;
    qryETAEmployeesIS_ASSIGNED_AT_END_DATE: TAbmesFloatField;
    qryETAEmployeesOFFICIAL_PRESENCE_DAYS: TAbmesFloatField;
    qryETAEmployeesOFFICIAL_ABSENCE_DAYS_1: TAbmesFloatField;
    qryETAEmployeesOFFICIAL_ABSENCE_DAYS_2: TAbmesFloatField;
    qryETAEmployeesOFFICIAL_ABSENCE_DAYS_3: TAbmesFloatField;
    qryETAEmployeesOFFICIAL_ABSENCE_DAYS_4: TAbmesFloatField;
    qryETAEmployeesOFFICIAL_ABSENCE_DAYS_5: TAbmesFloatField;
    qryETAEmployeesOFFICIAL_ABSENCE_DAYS_6: TAbmesFloatField;
    qryETAEmployeesOFFICIAL_DAYS_OFF: TAbmesFloatField;
    qryETAEmployeesOFFICIAL_TOTAL_DAYS: TAbmesFloatField;
    qryETAEmployeesOFFICIAL_PRESENCE_HOURS: TAbmesFloatField;
    qryETAEmployeesOFFICIAL_APP_OVERTIME_HOURS: TAbmesFloatField;
    qryETAEmployeesREAL_T_PRESENCE_DAYS: TAbmesFloatField;
    qryETAEmployeesREAL_T_ABSENCE_DAYS_1: TAbmesFloatField;
    qryETAEmployeesREAL_T_ABSENCE_DAYS_2: TAbmesFloatField;
    qryETAEmployeesREAL_T_ABSENCE_DAYS_3: TAbmesFloatField;
    qryETAEmployeesREAL_T_ABSENCE_DAYS_4: TAbmesFloatField;
    qryETAEmployeesREAL_T_ABSENCE_DAYS_5: TAbmesFloatField;
    qryETAEmployeesREAL_T_ABSENCE_DAYS_6: TAbmesFloatField;
    qryETAEmployeesREAL_T_DAYS_OFF: TAbmesFloatField;
    qryETAEmployeesREAL_T_TOTAL_DAYS: TAbmesFloatField;
    qryETAEmployeesREAL_T_PRESENCE_HOURS: TAbmesFloatField;
    qryETAEmployeesREAL_T_APP_OVERTIME_HOURS: TAbmesFloatField;
    qryETAEmployeesREAL_W_PRESENCE_DAYS: TAbmesFloatField;
    qryETAEmployeesREAL_W_ABSENCE_DAYS_1: TAbmesFloatField;
    qryETAEmployeesREAL_W_ABSENCE_DAYS_2: TAbmesFloatField;
    qryETAEmployeesREAL_W_ABSENCE_DAYS_3: TAbmesFloatField;
    qryETAEmployeesREAL_W_ABSENCE_DAYS_4: TAbmesFloatField;
    qryETAEmployeesREAL_W_ABSENCE_DAYS_5: TAbmesFloatField;
    qryETAEmployeesREAL_W_ABSENCE_DAYS_6: TAbmesFloatField;
    qryETAEmployeesREAL_W_DAYS_OFF: TAbmesFloatField;
    qryETAEmployeesREAL_W_TOTAL_DAYS: TAbmesFloatField;
    qryETAEmployeesREAL_W_PRESENCE_HOURS: TAbmesFloatField;
    qryETAEmployeesREAL_W_APP_OVERTIME_HOURS: TAbmesFloatField;
    qryETAEmployeesREAL_O_PRESENCE_DAYS: TAbmesFloatField;
    qryETAEmployeesREAL_O_ABSENCE_DAYS_1: TAbmesFloatField;
    qryETAEmployeesREAL_O_ABSENCE_DAYS_2: TAbmesFloatField;
    qryETAEmployeesREAL_O_ABSENCE_DAYS_3: TAbmesFloatField;
    qryETAEmployeesREAL_O_ABSENCE_DAYS_4: TAbmesFloatField;
    qryETAEmployeesREAL_O_ABSENCE_DAYS_5: TAbmesFloatField;
    qryETAEmployeesREAL_O_ABSENCE_DAYS_6: TAbmesFloatField;
    qryETAEmployeesREAL_O_DAYS_OFF: TAbmesFloatField;
    qryETAEmployeesREAL_O_TOTAL_DAYS: TAbmesFloatField;
    qryETAEmployeesREAL_O_PRESENCE_HOURS: TAbmesFloatField;
    qryETAEmployeesREAL_O_APP_OVERTIME_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityEMPLOYEE_COUNT_AT_BEGIN_DATE: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityEMPLOYEE_COUNT_AT_END_DATE: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityOFFICIAL_PRESENCE_DAYS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityOFFICIAL_ABSENCE_DAYS_1: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityOFFICIAL_ABSENCE_DAYS_2: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityOFFICIAL_ABSENCE_DAYS_3: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityOFFICIAL_ABSENCE_DAYS_4: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityOFFICIAL_ABSENCE_DAYS_5: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityOFFICIAL_ABSENCE_DAYS_6: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityOFFICIAL_DAYS_OFF: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityOFFICIAL_TOTAL_DAYS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityOFFICIAL_PRESENCE_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityOFFICIAL_APP_OVERTIME_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_T_PRESENCE_DAYS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_T_ABSENCE_DAYS_1: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_T_ABSENCE_DAYS_2: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_T_ABSENCE_DAYS_3: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_T_ABSENCE_DAYS_4: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_T_ABSENCE_DAYS_5: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_T_ABSENCE_DAYS_6: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_T_DAYS_OFF: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_T_TOTAL_DAYS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_T_PRESENCE_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_T_APP_OVERTIME_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_W_PRESENCE_DAYS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_W_ABSENCE_DAYS_1: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_W_ABSENCE_DAYS_2: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_W_ABSENCE_DAYS_3: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_W_ABSENCE_DAYS_4: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_W_ABSENCE_DAYS_5: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_W_ABSENCE_DAYS_6: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_W_DAYS_OFF: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_W_TOTAL_DAYS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_W_PRESENCE_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_W_APP_OVERTIME_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_O_PRESENCE_DAYS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_O_ABSENCE_DAYS_1: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_O_ABSENCE_DAYS_2: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_O_ABSENCE_DAYS_3: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_O_ABSENCE_DAYS_4: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_O_ABSENCE_DAYS_5: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_O_ABSENCE_DAYS_6: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_O_DAYS_OFF: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_O_TOTAL_DAYS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_O_PRESENCE_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_O_APP_OVERTIME_HOURS: TAbmesFloatField;
    cdsETAEmployees_SUM_IS_ASSIGNED_AT_BEGIN_DATE: TAggregateField;
    cdsETAEmployees_SUM_IS_ASSIGNED_AT_END_DATE: TAggregateField;
    cdsEmployeesTotalAvailabilityEMPLOYEE_CODE: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityEMPLOYEE_NAME: TAbmesWideStringField;
    cdsEmployeesTotalAvailabilityOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsEmployeesTotalAvailabilityCRAFT_TYPE_NAME: TAbmesWideStringField;
    qryCalcEmployees: TAbmesSQLQuery;
    qryCalcEmployeesEMPLOYEE_CODE: TAbmesFloatField;
    cdsETAEmployeesEMPLOYEE_CODE: TAbmesFloatField;
    cdsETAEmployeesEMPLOYEE_NAME: TAbmesWideStringField;
    cdsETAEmployeesOCCUPATION_DEPT_CODE: TAbmesFloatField;
    cdsETAEmployeesOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField;
    cdsETAEmployeesCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsETAEmployeesCRAFT_TYPE_NAME: TAbmesWideStringField;
    cdsETAEmployeesIS_ASSIGNED_AT_BEGIN_DATE: TAbmesFloatField;
    cdsETAEmployeesIS_ASSIGNED_AT_END_DATE: TAbmesFloatField;
    cdsETAEmployeesOFFICIAL_PRESENCE_DAYS: TAbmesFloatField;
    cdsETAEmployeesOFFICIAL_ABSENCE_DAYS_1: TAbmesFloatField;
    cdsETAEmployeesOFFICIAL_ABSENCE_DAYS_2: TAbmesFloatField;
    cdsETAEmployeesOFFICIAL_ABSENCE_DAYS_3: TAbmesFloatField;
    cdsETAEmployeesOFFICIAL_ABSENCE_DAYS_4: TAbmesFloatField;
    cdsETAEmployeesOFFICIAL_ABSENCE_DAYS_5: TAbmesFloatField;
    cdsETAEmployeesOFFICIAL_ABSENCE_DAYS_6: TAbmesFloatField;
    cdsETAEmployeesOFFICIAL_DAYS_OFF: TAbmesFloatField;
    cdsETAEmployeesOFFICIAL_TOTAL_DAYS: TAbmesFloatField;
    cdsETAEmployeesOFFICIAL_PRESENCE_HOURS: TAbmesFloatField;
    cdsETAEmployeesOFFICIAL_APP_OVERTIME_HOURS: TAbmesFloatField;
    cdsETAEmployeesREAL_T_PRESENCE_DAYS: TAbmesFloatField;
    cdsETAEmployeesREAL_T_ABSENCE_DAYS_1: TAbmesFloatField;
    cdsETAEmployeesREAL_T_ABSENCE_DAYS_2: TAbmesFloatField;
    cdsETAEmployeesREAL_T_ABSENCE_DAYS_3: TAbmesFloatField;
    cdsETAEmployeesREAL_T_ABSENCE_DAYS_4: TAbmesFloatField;
    cdsETAEmployeesREAL_T_ABSENCE_DAYS_5: TAbmesFloatField;
    cdsETAEmployeesREAL_T_ABSENCE_DAYS_6: TAbmesFloatField;
    cdsETAEmployeesREAL_T_DAYS_OFF: TAbmesFloatField;
    cdsETAEmployeesREAL_T_TOTAL_DAYS: TAbmesFloatField;
    cdsETAEmployeesREAL_T_PRESENCE_HOURS: TAbmesFloatField;
    cdsETAEmployeesREAL_T_APP_OVERTIME_HOURS: TAbmesFloatField;
    cdsETAEmployeesREAL_W_PRESENCE_DAYS: TAbmesFloatField;
    cdsETAEmployeesREAL_W_ABSENCE_DAYS_1: TAbmesFloatField;
    cdsETAEmployeesREAL_W_ABSENCE_DAYS_2: TAbmesFloatField;
    cdsETAEmployeesREAL_W_ABSENCE_DAYS_3: TAbmesFloatField;
    cdsETAEmployeesREAL_W_ABSENCE_DAYS_4: TAbmesFloatField;
    cdsETAEmployeesREAL_W_ABSENCE_DAYS_5: TAbmesFloatField;
    cdsETAEmployeesREAL_W_ABSENCE_DAYS_6: TAbmesFloatField;
    cdsETAEmployeesREAL_W_DAYS_OFF: TAbmesFloatField;
    cdsETAEmployeesREAL_W_TOTAL_DAYS: TAbmesFloatField;
    cdsETAEmployeesREAL_W_PRESENCE_HOURS: TAbmesFloatField;
    cdsETAEmployeesREAL_W_APP_OVERTIME_HOURS: TAbmesFloatField;
    cdsETAEmployeesREAL_O_PRESENCE_DAYS: TAbmesFloatField;
    cdsETAEmployeesREAL_O_ABSENCE_DAYS_1: TAbmesFloatField;
    cdsETAEmployeesREAL_O_ABSENCE_DAYS_2: TAbmesFloatField;
    cdsETAEmployeesREAL_O_ABSENCE_DAYS_3: TAbmesFloatField;
    cdsETAEmployeesREAL_O_ABSENCE_DAYS_4: TAbmesFloatField;
    cdsETAEmployeesREAL_O_ABSENCE_DAYS_5: TAbmesFloatField;
    cdsETAEmployeesREAL_O_ABSENCE_DAYS_6: TAbmesFloatField;
    cdsETAEmployeesREAL_O_DAYS_OFF: TAbmesFloatField;
    cdsETAEmployeesREAL_O_TOTAL_DAYS: TAbmesFloatField;
    cdsETAEmployeesREAL_O_PRESENCE_HOURS: TAbmesFloatField;
    cdsETAEmployeesREAL_O_APP_OVERTIME_HOURS: TAbmesFloatField;
    qryFillAvailabilityEmployeesTempTable: TAbmesSQLQuery;
    qryEmpDateAvailWORKDAY_BEGIN_DATE_TIME: TAbmesSQLTimeStampField;
    qryEmpDateAvailWORKDAY_END_DATE_TIME: TAbmesSQLTimeStampField;
    qryEmpDateAvailDAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    qryEmpDateAvailDAY_AVAIL_STATUS_ABBREV: TAbmesWideStringField;
    prvEmployeesAvailabilityByDateUnits: TDataSetProvider;
    qryEmployeesAvailabilityByDateUnits: TAbmesSQLQuery;
    qryEmployeesAvailabilityByDateUnitsTHE_DATE: TAbmesSQLTimeStampField;
    qryEmployeesAvailabilityByDateUnitsTHE_LAST_DATE: TAbmesSQLTimeStampField;
    qryEmployeesAvailabilityByDateUnitsNESSESARY_PRESENCE_DAYS: TAbmesFloatField;
    qryEmployeesAvailabilityByDateUnitsPRESENCE_DAYS: TAbmesFloatField;
    qryEmployeesAvailabilityByDateUnitsSELF_ABSENCE_DAYS: TAbmesFloatField;
    qryEmployeesAvailabilityByDateUnitsVACATION_DAYS: TAbmesFloatField;
    qryEmployeesAvailabilityByDateUnitsMATERNITY_DAYS: TAbmesFloatField;
    qryEmployeesAvailabilityByDateUnitsSICKNESS_DAYS: TAbmesFloatField;
    qryEmployeesAvailabilityByDateUnitsSTATE_DAYS: TAbmesFloatField;
    qryEmployeesAvailabilityByDateUnitsADMINISTRATIVE_DAYS: TAbmesFloatField;
    qryEmployeeDayAbsences: TAbmesSQLQuery;
    prvEmployeeDayAbsences: TDataSetProvider;
    qryEmployeeDayAbsencesEMP_AVAIL_MODIFIER_CODE: TAbmesFloatField;
    qryEmployeeDayAbsencesBEGIN_DATE: TAbmesSQLTimeStampField;
    qryEmployeeDayAbsencesEND_DATE: TAbmesSQLTimeStampField;
    qryEmployeeDayAbsencesEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField;
    qryEmployeeDayAbsencesEMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField;
    qryEmployeeDayAbsencesEMP_DAY_ABSENCE_REASON_ABBREV: TAbmesWideStringField;
    qryEmployeeDayAbsencesEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField;
    qryEmployeeDayAbsencesEMP_DAY_ABSENCE_DOC_TYPE_NAME: TAbmesWideStringField;
    qryEmployeeDayAbsencesEMP_DAY_ABSENCE_DOC_NO: TAbmesWideStringField;
    qryEmployeeDayAbsencesEMP_DAY_ABSENCE_DOC_DATE: TAbmesSQLTimeStampField;
    qryEmployeeDayAbsencesEMP_DAY_ABSENCE_DOC_ISSUER: TAbmesWideStringField;
    cdsEmployeesTotalAvailabilityCRAFT_TYPE_CODE: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityOCCUPATION_DEPT_CODE: TAbmesFloatField;
    qryETAEmployeesOCCUPATION_DEPT_NAME: TAbmesWideStringField;
    cdsEmployeesTotalAvailabilityOCCUPATION_DEPT_NAME: TAbmesWideStringField;
    cdsETAEmployeesOCCUPATION_DEPT_NAME: TAbmesWideStringField;
    qryCalcEmployeeOccupationsAndShifts: TAbmesSQLQuery;
    qryCalcEmployeeOccupationsAndShiftsEMPLOYEE_CODE: TAbmesFloatField;
    qryCalcEmployeeOccupationsAndShiftsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    qryCalcEmployeeOccupationsAndShiftsOCCUPATION_SHIFT_CODE: TAbmesFloatField;
    qryCalcEmployeeOccupationsAndShiftsOCCUPATION_CODE: TAbmesFloatField;
    qryCalcEmployeeOccupationsAndShiftsSHIFT_CODE: TAbmesFloatField;
    qryCalcEmployeeOccupationsAndShiftsBEGIN_DATE: TAbmesSQLTimeStampField;
    qryCalcEmployeeOccupationsAndShiftsEND_DATE: TAbmesSQLTimeStampField;
    qryETAEmployeesOCCUPATION_CODE: TAbmesFloatField;
    cdsETAEmployeesOCCUPATION_CODE: TAbmesFloatField;
    qryAddEmpMovement: TAbmesSQLQuery;
    qryOccupationEmployee: TAbmesSQLQuery;
    prvOccupationEmployee: TDataSetProvider;
    qryOccupationEmployeeOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField;
    qryGetPeriodFieldNames: TAbmesSQLQuery;
    qryGetPeriodFieldNamesTABLE_NAME: TAbmesWideStringField;
    qryGetPeriodFieldNamesKEY_FIELD_NAME: TAbmesWideStringField;
    qryEmployeesAndOccupations: TAbmesSQLQuery;
    qryEmployeesAndOccupationsEMPLOYEE_CODE: TAbmesFloatField;
    qryEmployeesAndOccupationsOCCUPATION_CODE: TAbmesFloatField;
    qryEmployeesAvailabilityByDateUnitsWORKDAYS: TAbmesFloatField;
    qryEmployeesAvailabilityByDateUnitsPLAN_PRESENCE_DAYS: TAbmesFloatField;
    qryCalcEmployeeModifiersEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField;
    qryETAEmployeesOFFICIAL_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    qryETAEmployeesREAL_T_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    qryETAEmployeesREAL_T_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    qryETAEmployeesREAL_W_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    qryETAEmployeesREAL_W_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    qryETAEmployeesREAL_O_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    qryETAEmployeesREAL_O_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    cdsETAEmployeesOFFICIAL_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    cdsETAEmployeesREAL_T_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    cdsETAEmployeesREAL_T_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    cdsETAEmployeesREAL_W_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    cdsETAEmployeesREAL_W_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    cdsETAEmployeesREAL_O_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    cdsETAEmployeesREAL_O_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityOFFICIAL_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityOFFICIAL_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_T_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_T_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_W_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_W_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_O_UNAPP_OVERTIME_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_O_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    qryEmpDateAvailEMPLOYEE_NO: TAbmesFloatField;
    qryETAEmployeesEMPLOYEE_NO: TAbmesFloatField;
    cdsETAEmployeesEMPLOYEE_NO: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityEMPLOYEE_NO: TAbmesFloatField;
    qryEmployeesAvailabilityEMPLOYEE_NO: TAbmesFloatField;
    qryETAEmployeesOFFICIAL_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    qryETAEmployeesREAL_T_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    qryETAEmployeesREAL_W_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    qryETAEmployeesREAL_O_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    cdsETAEmployeesOFFICIAL_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    cdsETAEmployeesREAL_T_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    cdsETAEmployeesREAL_W_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    cdsETAEmployeesREAL_O_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityOFFICIAL_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_T_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_W_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    cdsEmployeesTotalAvailabilityREAL_O_UNAPP_ABSENCE_HOURS: TAbmesFloatField;
    qryEmpDateAvailModifiersIS_NOT_STORNO: TAbmesFloatField;
    qryEmpDateAvailIS_EMPLOYEE_AVAILABLE_NOW: TAbmesFloatField;
    qryEmpDateAvailMovementsIS_STORNO: TAbmesFloatField;
    qryEmpDateAvailModifiersIS_STORNO: TAbmesFloatField;
    qryEmpDateAvailMovementsEMP_MOVEMENT_DATE_TIME: TAbmesSQLTimeStampField;
    qryEmpDateAvailIS_WORKDATE_NOW: TAbmesFloatField;
    qryEmpDateAvailModifiersOLD_SHIFT_CODE: TAbmesFloatField;
    qryEmpDateAvailModifiersNEW_SHIFT_CODE: TAbmesFloatField;
    qryEmpDateAvailMovementsCREATE_EMPLOYEE_NAME: TAbmesWideStringField;
    qryEmpDateAvailModifiersAUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField;
    qryCalcEmployeeModifiersOLD_SHIFT_CODE: TAbmesFloatField;
    qryCalcEmployeeModifiersNEW_SHIFT_CODE: TAbmesFloatField;
    qryEmployeesAvailabilityBASE_SALARY: TAbmesFloatField;
    qryEmployeesAvailabilityBASE_SALARY_DATE_UNIT_NAME: TAbmesWideStringField;
    qryEmployeesAvailabilitySALARY: TAbmesFloatField;
    qryEmployeesAvailabilitySALARY_DATE_UNIT_NAME: TAbmesWideStringField;
    qryEmployeesAvailabilityMIN_SALARY_RATIO_COEF: TAbmesFloatField;
    qryEmployeesAvailabilityMAX_SALARY_RATIO_COEF: TAbmesFloatField;
    qryEmployeesAvailabilityNEGATIVE_DISCIPLINE_RATING: TAbmesFloatField;
    qryEmployeesAvailabilityPOSITIVE_DISCIPLINE_RATING: TAbmesFloatField;
    qryLogFailedEmployeeMovement: TAbmesSQLQuery;
    qryFailedEmployeeMovements: TAbmesSQLQuery;
    prvFailedEmployeeMovements: TDataSetProvider;
    qryGetFailedEmployeeMovement: TAbmesSQLQuery;
    qryGetFailedEmployeeMovementEMPLOYEE_NO: TAbmesFloatField;
    qryGetFailedEmployeeMovementIN_OUT: TAbmesFloatField;
    qryGetFailedEmployeeMovementEMP_MOVEMENT_DATE_TIME: TAbmesSQLTimeStampField;
    qryGetFailedEmployeeMovementCREATE_EMPLOYEE_CODE: TAbmesFloatField;
    qryGetFailedEmployeeMovementCREATE_DATE: TAbmesSQLTimeStampField;
    qryGetFailedEmployeeMovementCREATE_TIME: TAbmesSQLTimeStampField;
    qryDelFailedEmployeeMovement: TAbmesSQLQuery;
    qryFailedEmployeeMovementsFAILED_EMP_MOVEMENT_CODE: TAbmesFloatField;
    qryFailedEmployeeMovementsEMPLOYEE_NO: TAbmesFloatField;
    qryFailedEmployeeMovementsIN_OUT: TAbmesFloatField;
    qryFailedEmployeeMovementsEMP_MOVEMENT_DATE_TIME: TAbmesSQLTimeStampField;
    qryFailedEmployeeMovementsCREATE_EMPLOYEE_NO: TAbmesFloatField;
    qryFailedEmployeeMovementsCREATE_EMPLOYEE_NAME: TAbmesWideStringField;
    qryFailedEmployeeMovementsCREATE_DATE: TAbmesSQLTimeStampField;
    qryFailedEmployeeMovementsCREATE_TIME: TAbmesSQLTimeStampField;
    qryFailedEmployeeMovementsEXCEPTION_MESSAGE: TAbmesWideStringField;
    qryETAEmployeesOFFICIAL_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    cdsETAEmployeesOFFICIAL_OFFTIME_PRESENCE_HRS: TAbmesFloatField;
    qryShifts: TAbmesSQLQuery;
    qryShiftsSHIFT_CODE: TAbmesFloatField;
    qryShiftsSHIFT_ABBREV: TAbmesWideStringField;
    procedure qryEmployeeDayAbsencesBeforeOpen(DataSet: TDataSet);
    procedure prvEmpDateAvailGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvEmpDateAvailBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvEmpDayAbsenceReasonsBeforeUpdateRecord(
      Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvEmpHourAvailModReasonsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvEmpDateAvailBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvEmpDateAvailAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryEmpDateAvailAfterProviderStartTransaction(
      DataSet: TDataSet);
    procedure prvEmployeesAvailabilityGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvEmployeesAvailabilityBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvEmployeesAvailabilityAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvEmployeePresenceDeviationBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvEmployeePresenceDeviationAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvEmployeePresenceDeviationGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvEmployeesTotalAvailabilityBeforeGetRecords(
      Sender: TObject; var OwnerData: OleVariant);
    procedure prvEmployeesTotalAvailabilityAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure qryEmpDateAvailBeforeOpen(DataSet: TDataSet);
    procedure prvEmpDateAvailAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvEmployeesAvailabilityByDateUnitsGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvEmployeeDayAbsencesGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure qryEmployeesAvailabilityBeforeOpen(DataSet: TDataSet);
    procedure qryEmployeesAvailabilityByDateUnitsBeforeOpen(
      DataSet: TDataSet);
  private
    FDocsDelta: Variant;
    FDayAbsenceReasonAbbrevs: array[TDayAbsenceReason] of string;
    FDayAbsenceReasonNames: array[TDayAbsenceReason] of string;
    FEmployeeCodeField: TField;
    FOccupationCodeField: TField;
    FWorkDateField: TField;
    FIsEmployeeAvailableNow: TField;
    FEmployeesAvailabilityIsOfficialWorkdayFields: array of TField;
    FEmployeesAvailabilityStatusFields: array of TField;
    FEmployeesAvailabilityHoursFields: array of TField;
    FEmployeesAvailabilityOfficialHoursFields: array of TField;
    FIsNegativeDeviation: Boolean;
    FIsPositiveDeviation: Boolean;
    FIsApprovedExtraWorkDeviation: Boolean;
    FEmployeesAvailabilityTotals: array[TTotalKind] of TEmployeesAvailabilityTotal;
    FETAEmployeesRecNos: TSimpleObjectDictionary<Integer, TList<Integer>>;
    FEmpDateAvailData: TEmpDateAvailData;
    FMinEmpAvailModifierCode: Integer;
    FCurrentEmployeeOccupations: TList<Integer>;
    FEmployeesAvailabilityGraphDateUnits: array [1..MaxEmployeesAvailabilityGraphDateUnits] of TEmployeesAvailabilityGraphDateUnit;
    FEmployeesAvailabilityFilter: TEmployeesAvailabilityFilter;
    FShiftAbbrevs: TSimpleDictionary<Integer, string>;
    function CreateShiftAbbrevs: TSimpleDictionary<Integer, string>;
    function NewEmpMovementCode: Integer;
    function NewEmpDayAbsenceDocTypeCode: Integer;
    function NewEmpHourAvailModReasonCode: Integer;
    function NewEmpAvailModifierCode: Integer;
    procedure CreateEmployeesAvailabilityDataSetStructure(BeginDate, EndDate: TDateTime);
    procedure StoreEmployeesAvailabilityFields(BeginDate, EndDate: TDateTime; DataSet: TDataSet);
    procedure StoreEmployeesAvailabilityTotalFields(DataSet: TDataSet);
    procedure ReleaseEmployeesAvailabilityFields;
    procedure LoadDayAbsenceReasons;
    procedure StoreETAEmployeesRecNos(DataSet: TClientDataSet);
    procedure ReleaseETAEmployeesRecNos;
    procedure FillAvailabilityEmployeesTempTable(AEmployeeCode: Integer);
    procedure TruncateAvailabilityEmployeesTempTable;
    function DayAvailabilityStatusAbbrev(Day: TDay;
      EmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator): string;

    procedure TryAddEmployeeMovement(EmployeeNo, InOut: Integer; MovementDateTime: TDateTime;
      CreateEmployeeCode: Integer; CreateDate, CreateTime: TDateTime);

    procedure AddEmployeeMovement(EmployeeNo, InOut: Integer; MovementDateTime: TDateTime;
      CreateEmployeeCode: Integer; CreateDate, CreateTime: TDateTime);

    procedure LogFailedEmployeeMovement(AEmployeeNo, AInOut: Integer; AMovementDateTime: TDateTime;
      ACreateEmployeeCode: Integer; ACreateDate, ACreateTime: TDateTime; AExceptionMessage: string);

    procedure RetryAddEmployeeMovement(AFailedEmployeeMovementCode: Integer);
    procedure RetryAddAllEmployeeMovements;

    procedure LoadEmployeeAvailabilityCalculatorDates(AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator);
    procedure LoadEmployeeAvailabilityCalculatorShiftCycles(AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator);
    procedure LoadCommonEmployeeAvailabilityCalculatorData(AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator);
    procedure InternalCalcEmployeeAvailability(
      AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator;
      AEmployeeAvailabilityCallbackEvent: TEmployeeAvailabilityCallbackEvent;
      ADataSet: TDataSet);

    procedure CalcEmployeeAvailability(
      ABeginDate, AEndDate: TDateTime;
      AEmployeeAvailabilityCallbackEvent: TEmployeeAvailabilityCallbackEvent;
      ADataSet: TDataSet);

    procedure FillEmployeesAvailabilityTotals(AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator);
    procedure FillEmployeesAvailabilityData(AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator; ADataSet: TDataSet);
    procedure FillEmployeePresenceDeviationData(AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator; ADataSet: TDataSet);
    procedure FillEmployeesTotalAvailabilityData(AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator; ADataSet: TDataSet);
    procedure FillEmpDateAvailData(AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator; ADataSet: TDataSet);
    procedure FillEmployeesAvailabilityByDateUnitsData(AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator; ADataSet: TDataSet);
    procedure FillEmployeeDayAbsencesData(AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator; ADataSet: TDataSet);
  end;

type
  IdmEmployeeAvailabilityProxy = interface(IDBPooledDataModuleProxy)
    procedure AddEmployeeMovement(
      EmployeeNo, InOut: Integer; MovementDateTime: TDateTime;
      CreateEmployeeCode: Integer; CreateDate, CreateTime: TDateTime);
  end;

type
  TdmEmployeeAvailabilityProxy = class(TDBPooledDataModuleProxy, IdmEmployeeAvailabilityProxy)
  private
    class var FSingleton: TdmEmployeeAvailabilityProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmEmployeeAvailability>;
  strict protected
    property LockedInstance: ISmartLock<TdmEmployeeAvailability> read GetLockedInstance;
  protected
    procedure AddEmployeeMovement(
      EmployeeNo, InOut: Integer; MovementDateTime: TDateTime;
      CreateEmployeeCode: Integer; CreateDate, CreateTime: TDateTime);
  public
    class property Singleton: TdmEmployeeAvailabilityProxy read FSingleton;

    procedure RetryAddEmployeeMovement(AFailedEmployeeMovementCode: Integer);
    procedure RetryAddAllEmployeeMovements;
  end;

implementation

uses
  Variants, uDBPooledDataModuleHelper, Math, uTreeNodes, StrUtils,
  uPeriods, DateUtils, uSvrUtils, JclContainerIntf;

{$R *.DFM}

const
  IsOfficialWorkdayFieldName = 'IS_OFFICIAL_WORKDAY_';
  AvailabilityStatusFieldName = 'AVAILABILITY_STATUS_';
  AvailabilityHoursFieldName = 'AVAILABILITY_HOURS_';
  AvailabilityOfficialHoursFieldName = 'AVAILABILITY_OFFICIAL_HOURS_';

  OfficialTotalFieldNamePreffix = 'OFFICIAL_';
  RealTTotalFieldNamePreffix = 'REAL_T_';
  RealWTotalFieldNamePreffix = 'REAL_W_';
  RealOTotalFieldNamePreffix = 'REAL_O_';

  TotalFieldNamePreffixes: array[TTotalKind] of string =
    ('', OfficialTotalFieldNamePreffix, RealTTotalFieldNamePreffix,
     RealWTotalFieldNamePreffix, RealOTotalFieldNamePreffix);

{ TdmEmployeeAvailabilityProxy }

function TdmEmployeeAvailabilityProxy.GetLockedInstance: ISmartLock<TdmEmployeeAvailability>;
begin
  Result:= ISmartLock<TdmEmployeeAvailability>(inherited LockedInstance);
end;

procedure TdmEmployeeAvailabilityProxy.AddEmployeeMovement(EmployeeNo, InOut: Integer;
  MovementDateTime: TDateTime; CreateEmployeeCode: Integer; CreateDate, CreateTime: TDateTime);
begin
  LockedInstance.Value.AddEmployeeMovement(EmployeeNo, InOut, MovementDateTime, CreateEmployeeCode, CreateDate, CreateTime);
end;

procedure TdmEmployeeAvailabilityProxy.RetryAddEmployeeMovement(AFailedEmployeeMovementCode: Integer);
begin
  LockedInstance.Value.RetryAddEmployeeMovement(AFailedEmployeeMovementCode);
end;

procedure TdmEmployeeAvailabilityProxy.RetryAddAllEmployeeMovements;
begin
  LockedInstance.Value.RetryAddAllEmployeeMovements;
end;

{ TdmEmployeeAvailability }

function TdmEmployeeAvailability.NewEmpMovementCode: Integer;
begin
  qryNewEmpMovementCode.Open;
  try
    Result:= qryNewEmpMovementCodeNEW_EMP_MOVEMENT_CODE.AsInteger;
  finally
    qryNewEmpMovementCode.Close;
  end;  { try }
end;

function TdmEmployeeAvailability.NewEmpDayAbsenceDocTypeCode: Integer;
begin
  qryNewEmpDayAbsenceDocTypeCode.Open;
  try
    Result:= qryNewEmpDayAbsenceDocTypeCodeNEW_EMP_DAY_ABSENCE_D_T_CODE.AsInteger;
  finally
    qryNewEmpDayAbsenceDocTypeCode.Close;
  end;  { try }
end;

function TdmEmployeeAvailability.NewEmpHourAvailModReasonCode: Integer;
begin
  qryNewEmpHourAvailModReasonCode.Open;
  try
    Result:= qryNewEmpHourAvailModReasonCodeNEW_EMP_HOUR_AVAIL_M_R_CODE.AsInteger;
  finally
    qryNewEmpHourAvailModReasonCode.Close;
  end;  { try }
end;

function TdmEmployeeAvailability.NewEmpAvailModifierCode: Integer;
begin
  qryNewEmpAvailModifierCode.Open;
  try
    Result:= qryNewEmpAvailModifierCodeNEW_EMP_AVAIL_MODIFIER_CODE.AsInteger;
  finally
    qryNewEmpAvailModifierCode.Close;
  end;  { try }
end;

procedure TdmEmployeeAvailability.prvEmpDateAvailGetData(
  Sender: TObject; DataSet: TCustomClientDataSet);
var
  dt: TDateTime;
begin
  inherited;

  DataSet.Edit;
  try
    DataSet.FieldByName('DAY_ABSENCE_REASON_CODE').AsVariant:=
      IntToVar(DayAbsenceReasonToInt(FEmpDateAvailData.DayAbsenceReason));
    DataSet.FieldByName('DAY_AVAIL_STATUS_ABBREV').AsVariant:=
      StringToVar(FEmpDateAvailData.DayAvailabilityStatusAbbrev);
    DataSet.FieldByName('IS_EMPLOYEE_AVAILABLE_NOW').AsInteger:=
      Ord(FEmpDateAvailData.EmployeeIsAvailableNow);
    DataSet.FieldByName('IS_WORKDATE_NOW').AsInteger:=
      Ord(InRange(FEmpDateAvailData.CurrentDateTime,
        FEmpDateAvailData.WorkdayBeginDateTime, FEmpDateAvailData.WorkdayEndDateTime));

    DataSet.Post;
  except
    DataSet.Cancel;
    raise;
  end;  { try }

  with (DataSet.FieldByName(qryEmpDateAvailMovements.Name) as TDataSetField).NestedDataSet do
    begin

// zakomentirano za da se vijdat greshnite dvijeniq i da mogat da badat anulirani
//      // remove previous day in movement if unnecessary
//      First;
//      while not Eof do
//        begin
//          if (not Eof) and
//             (FieldByName('RECORD_TYPE').AsInteger = 1) and
//             FieldByName('STORNO_EMPLOYEE_CODE').IsNull then
//            begin
//              Next;
//              if (not Eof) and
//                 (FieldByName('IN_OUT').AsInteger = 1) and
//                 FieldByName('STORNO_EMPLOYEE_CODE').IsNull then
//                begin
//                  Prior;
//                  Delete;
//                  Break;
//                end;  { if }
//            end;  { if }
//
//          Next;
//        end;  { while }

// zakomentirano za da se vijdat greshnite dvijeniq i da mogat da badat anulirani
//      // remove next day out movement if unnecessary
//      Last;
//      while not Bof do
//        begin
//          if (not Bof) and
//             (FieldByName('RECORD_TYPE').AsInteger = 3) and
//             FieldByName('STORNO_EMPLOYEE_CODE').IsNull then
//            begin
//              Prior;
//              if (not Bof) and
//                 (FieldByName('IN_OUT').AsInteger = -1) and
//                 FieldByName('STORNO_EMPLOYEE_CODE').IsNull then
//                begin
//                  Next;
//                  Delete;
//                  Break;
//                end;  { if }
//            end;  { if }
//
//          Prior;
//        end;  { while }

      // fix unmatched in movement
      Last;
      while not Bof do
        begin
          if (FieldByName('IN_OUT').AsInteger = 1) and
             (FieldByName('IS_UNMATCHED_MOVEMENT').AsInteger <> 0) and
             FieldByName('STORNO_EMPLOYEE_CODE').IsNull then
            begin
              dt:= FieldByName('EMP_MOVEMENT_DATE_TIME').AsDateTime;
              if (dt >=
                  FEmpDateAvailData.CurrentDateTime - (LoginContext.MaxEmployeeAvailabilityHours/24)) then
                begin
                  Edit;
                  try
                    FieldByName('IS_UNMATCHED_MOVEMENT').AsInteger:= 0;
                    Post;
                  except
                    Cancel;
                    raise;
                  end;
                end;

              Break;
            end;  { if }

          Prior;
        end;  { while }
    end;  { with }
end;

procedure TdmEmployeeAvailability.prvEmpDateAvailBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
  NowDateTime: TDateTime;
begin
  inherited;

  if (UpdateKind = ukDelete) then
    raise Exception.Create('Deletion not allowed!');

  if (SourceDS = qryEmpDateAvailMovements) then
    begin
      if (UpdateKind = ukInsert) then
        DeltaDS.FieldByName('EMP_MOVEMENT_CODE').NewValue:= NewEmpMovementCode;
    end;  { if }

  if (SourceDS = qryEmpDateAvailModifiers) then
    begin
      if (UpdateKind = ukInsert) then
        DeltaDS.FieldByName('EMP_AVAIL_MODIFIER_CODE').NewValue:= NewEmpAvailModifierCode;
    end;  { if }


  if (UpdateKind = ukInsert) and
     ( (SourceDS = qryEmpDateAvailMovements) or
       (SourceDS = qryEmpDateAvailModifiers) ) then
    begin
      NowDateTime:= ContextNow;
      DeltaDS.FieldByName('CREATE_EMPLOYEE_CODE').NewValue:= LoginContext.UserCode;
      DeltaDS.FieldByName('CREATE_DATE').NewValue:= DateOf(NowDateTime);
      DeltaDS.FieldByName('CREATE_TIME').NewValue:= TimeOf(NowDateTime);
    end;
end;

procedure TdmEmployeeAvailability.prvEmpDayAbsenceReasonsBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (SourceDS = qryEmpDayAbsenceReasons) then
    raise Exception.Create('Table EMP_DAY_ABSENCE_REASONS should not be edited!');

  if (SourceDS = qryEmpDayAbsenceDocTypes) and (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('EMP_DAY_ABSENCE_DOC_TYPE_CODE').NewValue:= NewEmpDayAbsenceDocTypeCode;
end;

procedure TdmEmployeeAvailability.prvEmpHourAvailModReasonsBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;

  if (UpdateKind = ukInsert) then
    DeltaDS.FieldByName('EMP_HOUR_AVAIL_MOD_REASON_CODE').NewValue:= NewEmpHourAvailModReasonCode;
end;

procedure TdmEmployeeAvailability.prvEmpDateAvailBeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= OwnerData;
end;

procedure TdmEmployeeAvailability.prvEmpDateAvailAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  FDocsDelta:= Unassigned;
end;

procedure TdmEmployeeAvailability.qryEmpDateAvailAfterProviderStartTransaction(
  DataSet: TDataSet);
begin
  inherited;
  SvrDoc.ApplyDocs(FDocsDelta);
end;

procedure TdmEmployeeAvailability.CalcEmployeeAvailability(ABeginDate,
  AEndDate: TDateTime;
  AEmployeeAvailabilityCallbackEvent: TEmployeeAvailabilityCallbackEvent;
  ADataSet: TDataSet);
var
  EmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator;
begin
  EmployeeAvailabilityCalculator:= TEmployeeAvailabilityCalculator.Create(ABeginDate, AEndDate, LoginContext.MinIntegralOvertimeHours, ContextNow);
  try
    LoadCommonEmployeeAvailabilityCalculatorData(EmployeeAvailabilityCalculator);
    InternalCalcEmployeeAvailability(EmployeeAvailabilityCalculator, AEmployeeAvailabilityCallbackEvent, ADataSet);
  finally
    FreeAndNil(EmployeeAvailabilityCalculator);
  end;  { try }
end;

procedure TdmEmployeeAvailability.LoadCommonEmployeeAvailabilityCalculatorData(
  AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator);
begin
  LoadEmployeeAvailabilityCalculatorDates(AEmployeeAvailabilityCalculator);
  LoadEmployeeAvailabilityCalculatorShiftCycles(AEmployeeAvailabilityCalculator);
end;

procedure TdmEmployeeAvailability.LoadEmployeeAvailabilityCalculatorDates(
  AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator);
begin
  qryCalcDates.ParamByName('BEGIN_DATE').AsDateTime:= AEmployeeAvailabilityCalculator.CalcBeginDate;
  qryCalcDates.ParamByName('END_DATE').AsDateTime:= AEmployeeAvailabilityCalculator.CalcEndDate;
  qryCalcDates.Open;
  try
    while not qryCalcDates.Eof do
      begin
        AEmployeeAvailabilityCalculator.SetOfficialWorkday(
          qryCalcDatesTHE_DATE.AsDateTime,
          qryCalcDatesIS_WORKDAY.AsBoolean
        );
        qryCalcDates.Next;
      end;  { while }
  finally
    qryCalcDates.Close;
  end;  { try }
end;

procedure TdmEmployeeAvailability.LoadEmployeeAvailabilityCalculatorShiftCycles(
  AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator);
var
  ShiftCycle: TShiftCycle;
  BreakDayOffset: Integer;
begin
  qryCalcShiftCycles.ParamByName('BEGIN_DATE').AsDateTime:= AEmployeeAvailabilityCalculator.CalcBeginDate;
  qryCalcShiftCycles.ParamByName('END_DATE').AsDateTime:= AEmployeeAvailabilityCalculator.CalcEndDate;
  qryCalcShiftCycles.Open;
  try
    qryCalcShiftCycleBreaks.ParamByName('BEGIN_DATE').AsDateTime:= AEmployeeAvailabilityCalculator.CalcBeginDate;
    qryCalcShiftCycleBreaks.ParamByName('END_DATE').AsDateTime:= AEmployeeAvailabilityCalculator.CalcEndDate;
    qryCalcShiftCycleBreaks.Open;
    try
      while not qryCalcShiftCycles.Eof do
        begin
          ShiftCycle:=
            TShiftCycle.Create(
              qryCalcShiftCyclesSHIFT_CYCLE_CODE.AsInteger,
              qryCalcShiftCyclesIS_OVERTIME.AsBoolean,
              qryCalcShiftCyclesWORKDAY_BEGIN_TIME.AsDateTime,
              qryCalcShiftCyclesWORKDAY_END_TIME.AsDateTime
            );
          try
            Assert(
              qryCalcShiftCycleBreaks.Eof or
              (qryCalcShiftCycleBreaksSHIFT_CYCLE_CODE.AsInteger >= qryCalcShiftCyclesSHIFT_CYCLE_CODE.AsInteger)
            );

            while not qryCalcShiftCycleBreaks.Eof and
                  (qryCalcShiftCycleBreaksSHIFT_CYCLE_CODE.AsInteger = qryCalcShiftCyclesSHIFT_CYCLE_CODE.AsInteger) do
              begin
                BreakDayOffset:=
                  Ord(qryCalcShiftCyclesWORKDAY_BEGIN_TIME.AsDateTime > qryCalcShiftCycleBreaksBREAK_BEGIN_TIME.AsDateTime);

                ShiftCycle.AddBreak(
                  qryCalcShiftCycleBreaksBREAK_BEGIN_TIME.AsDateTime + BreakDayOffset,
                  qryCalcShiftCycleBreaksBREAK_END_TIME.AsDateTime + BreakDayOffset,
                  qryCalcShiftCycleBreaksBREAK_DURATION_HOURS.AsFloat
                );

                qryCalcShiftCycleBreaks.Next;
              end;  { while }

            AEmployeeAvailabilityCalculator.AddShiftCycle(ShiftCycle);
          except
            FreeAndNil(ShiftCycle);
            raise;
          end;  { try }

          qryCalcShiftCycles.Next;
        end;  { while }

        Assert(qryCalcShiftCycleBreaks.Eof);
    finally
      qryCalcShiftCycleBreaks.Close;
    end;  { try }
  finally
    qryCalcShiftCycles.Close;
  end;  { try }
end;

function TdmEmployeeAvailability.CreateShiftAbbrevs: TSimpleDictionary<Integer, string>;
var
  dict: TSimpleDictionary<Integer, string>;
begin
  dict:= TSimpleDictionary<Integer, string>.Create;
  try
    qryShifts.TempOpen/
      qryShifts.ForEach/
        procedure begin
          dict[qryShiftsSHIFT_CODE.AsInteger]:= qryShiftsSHIFT_ABBREV.AsString;
        end;
  except
    FreeAndNil(dict);
    raise;
  end;

  Result:= dict;
end;

procedure TdmEmployeeAvailability.InternalCalcEmployeeAvailability(
  AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator;
  AEmployeeAvailabilityCallbackEvent: TEmployeeAvailabilityCallbackEvent;
  ADataSet: TDataSet);
var
  CurrentEmployeeCode: Integer;
  PrevEmployeeCode: Integer;
  LatestInboundMovementDateTime: TDateTime;
begin
  Assert(Assigned(AEmployeeAvailabilityCallbackEvent));

  FShiftAbbrevs:= CreateShiftAbbrevs;
  try
    qryCalcEmployees.Open;
    try
      qryCalcEmployeeOccupationsAndShifts.ParamByName('BEGIN_DATE').AsDateTime:= AEmployeeAvailabilityCalculator.CalcBeginDate;
      qryCalcEmployeeOccupationsAndShifts.ParamByName('END_DATE').AsDateTime:= AEmployeeAvailabilityCalculator.CalcEndDate;
      qryCalcEmployeeOccupationsAndShifts.Open;
      try
        qryCalcEmployeeShiftCycles.ParamByName('BEGIN_DATE').AsDateTime:= AEmployeeAvailabilityCalculator.CalcBeginDate;
        qryCalcEmployeeShiftCycles.ParamByName('END_DATE').AsDateTime:= AEmployeeAvailabilityCalculator.CalcEndDate;
        qryCalcEmployeeShiftCycles.Open;
        try
          qryCalcEmployeeModifiers.ParamByName('BEGIN_DATE').AsDateTime:= AEmployeeAvailabilityCalculator.CalcBeginDate;
          qryCalcEmployeeModifiers.ParamByName('END_DATE').AsDateTime:= AEmployeeAvailabilityCalculator.CalcEndDate;
          qryCalcEmployeeModifiers.Open;
          try
            qryCalcEmployeeMovements.ParamByName('BEGIN_DATE').AsDateTime:= AEmployeeAvailabilityCalculator.CalcBeginDate;
            qryCalcEmployeeMovements.ParamByName('END_DATE').AsDateTime:= AEmployeeAvailabilityCalculator.CalcEndDate;
            qryCalcEmployeeMovements.Open;
            try
              PrevEmployeeCode:= 0;
              while not qryCalcEmployees.Eof or
                    not qryCalcEmployeeOccupationsAndShifts.Eof or
                    not qryCalcEmployeeShiftCycles.Eof or
                    not qryCalcEmployeeModifiers.Eof or
                    not qryCalcEmployeeMovements.Eof do
                begin
                  CurrentEmployeeCode:= MaxInt;

                  if not qryCalcEmployees.Eof then
                    CurrentEmployeeCode:= Min(CurrentEmployeeCode, qryCalcEmployeesEMPLOYEE_CODE.AsInteger);

                  if not qryCalcEmployeeShiftCycles.Eof then
                    CurrentEmployeeCode:= Min(CurrentEmployeeCode, qryCalcEmployeeShiftCyclesEMPLOYEE_CODE.AsInteger);

                  if not qryCalcEmployeeModifiers.Eof then
                    CurrentEmployeeCode:= Min(CurrentEmployeeCode, qryCalcEmployeeModifiersEMPLOYEE_CODE.AsInteger);

                  if not qryCalcEmployeeMovements.Eof then
                    CurrentEmployeeCode:= Min(CurrentEmployeeCode, qryCalcEmployeeMovementsEMPLOYEE_CODE.AsInteger);

                  Assert(CurrentEmployeeCode <> MaxInt);
                  Assert(CurrentEmployeeCode > PrevEmployeeCode);

                  AEmployeeAvailabilityCalculator.InitializeEmployeeData(CurrentEmployeeCode);
                  try
                    while not qryCalcEmployees.Eof and
                          (qryCalcEmployeesEMPLOYEE_CODE.AsInteger = CurrentEmployeeCode) do
                      begin
                        // do nothing

                        qryCalcEmployees.Next;
                      end;  { while }

                    while not qryCalcEmployeeOccupationsAndShifts.Eof and
                          (qryCalcEmployeeOccupationsAndShiftsEMPLOYEE_CODE.AsInteger = CurrentEmployeeCode) do
                      begin
                        AEmployeeAvailabilityCalculator.AddEmployeeOccupationAndShift(
                          qryCalcEmployeeOccupationsAndShiftsOCCUPATION_CODE.AsInteger,
                          qryCalcEmployeeOccupationsAndShiftsSHIFT_CODE.AsInteger,
                          qryCalcEmployeeOccupationsAndShiftsBEGIN_DATE.AsDateTime,
                          qryCalcEmployeeOccupationsAndShiftsEND_DATE.AsDateTime
                        );

                        qryCalcEmployeeOccupationsAndShifts.Next;
                      end;  { while }

                    while not qryCalcEmployeeShiftCycles.Eof and
                          (qryCalcEmployeeShiftCyclesEMPLOYEE_CODE.AsInteger = CurrentEmployeeCode) do
                      begin
                        AEmployeeAvailabilityCalculator.AddEmployeeShiftCycle(
                          qryCalcEmployeeShiftCyclesTHE_DATE.AsDateTime,
                          qryCalcEmployeeShiftCyclesSHIFT_CYCLE_CODE.AsInteger,
                          not qryCalcEmployeeShiftCyclesAFFECTS_EMP_AVAILABILITY.AsBoolean);

                        qryCalcEmployeeShiftCycles.Next;
                      end;  { while }

                    while not qryCalcEmployeeModifiers.Eof and
                          (qryCalcEmployeeModifiersEMPLOYEE_CODE.AsInteger = CurrentEmployeeCode) do
                      begin
                        case qryCalcEmployeeModifiersEMP_AVAIL_MODIFIER_TYPE_CODE.AsInteger of
                          eamtcDayAbsence:
                            begin
                              AEmployeeAvailabilityCalculator.AddEmployeeDayAbsenceModifier(
                                qryCalcEmployeeModifiersTHE_DATE.AsDateTime,
                                qryCalcEmployeeModifiersEMP_DAY_ABSENCE_REASON_CODE.AsInteger,
                                ( (qryCalcEmployeeModifiersEMP_DAY_ABSENCE_REASON_CODE.AsInteger = 1) or  // samootluchka
                                  not qryCalcEmployeeModifiersEMP_DAY_ABSENCE_DOC_TYPE_CODE.IsNull
                                )
                              );
                            end;

                          eamtcShiftChange:
                            begin
                              AEmployeeAvailabilityCalculator.AddEmployeeShiftChangeModifier(
                                qryCalcEmployeeModifiersTHE_DATE.AsDateTime,
                                qryCalcEmployeeModifiersOLD_SHIFT_CODE.AsInteger,
                                qryCalcEmployeeModifiersNEW_SHIFT_CODE.AsInteger,
                                qryCalcEmployeeModifiersEMP_HOUR_AVAIL_MOD_REASON_CODE.AsInteger
                              );
                            end;

                          else
                            begin
                              AEmployeeAvailabilityCalculator.AddEmployeeHourAvailabilityModifier(
                                qryCalcEmployeeModifiersBEGIN_DATE_TIME.AsDateTime,
                                qryCalcEmployeeModifiersEND_DATE_TIME.AsDateTime,
                                qryCalcEmployeeModifiersDURATION_HOURS.AsFloat,
                                qryCalcEmployeeModifiersEMP_AVAIL_MODIFIER_TYPE_CODE.AsInteger,
                                qryCalcEmployeeModifiersEMP_HOUR_AVAIL_MOD_REASON_CODE.AsInteger
                              );
                            end;
                        end;

                        qryCalcEmployeeModifiers.Next;
                      end;  { while }

                    LatestInboundMovementDateTime:= 0;
                    while not qryCalcEmployeeMovements.Eof and
                          (qryCalcEmployeeMovementsEMPLOYEE_CODE.AsInteger = CurrentEmployeeCode) do
                      begin
                        case qryCalcEmployeeMovementsIN_OUT.AsInteger of
                          1:
                            begin
                              if (LatestInboundMovementDateTime <> 0) then
                                begin
                                  if AEmployeeAvailabilityCalculator.ContainsCurrentDateTime and
                                     (qryCalcEmployeeMovementsEMP_MOVEMENT_DATE_TIME.AsDateTime >= AEmployeeAvailabilityCalculator.CurrentDateTime) and
                                     (AEmployeeAvailabilityCalculator.CurrentDateTime >= LatestInboundMovementDateTime) and
                                     ( (AEmployeeAvailabilityCalculator.CurrentDateTime - LatestInboundMovementDateTime)
                                       <=
                                       LoginContext.MaxEmployeeAvailabilityHours/24) then
                                    begin
                                      AEmployeeAvailabilityCalculator.AddEmployeeCurrentPresence(
                                        LatestInboundMovementDateTime);
                                    end
                                  else
                                    begin
                                      AEmployeeAvailabilityCalculator.AddEmployeeUnmatchedMovement(
                                        LatestInboundMovementDateTime);
                                    end;
                                end;  { if }

                              LatestInboundMovementDateTime:=
                                qryCalcEmployeeMovementsEMP_MOVEMENT_DATE_TIME.AsDateTime;
                            end;
                          -1:
                            begin
                              if (LatestInboundMovementDateTime = 0) then
                                begin
                                  AEmployeeAvailabilityCalculator.AddEmployeeUnmatchedMovement(
                                    qryCalcEmployeeMovementsEMP_MOVEMENT_DATE_TIME.AsDateTime);
                                end
                              else
                                begin
                                  if ((qryCalcEmployeeMovementsEMP_MOVEMENT_DATE_TIME.AsDateTime - LatestInboundMovementDateTime)
                                      <=
                                      (LoginContext.MaxEmployeeAvailabilityHours/24)) then
                                    begin
                                      AEmployeeAvailabilityCalculator.AddEmployeeRegisteredPresence(
                                        LatestInboundMovementDateTime,
                                        qryCalcEmployeeMovementsEMP_MOVEMENT_DATE_TIME.AsDateTime);
                                    end
                                  else
                                    begin
                                      AEmployeeAvailabilityCalculator.AddEmployeeUnmatchedMovement(
                                        LatestInboundMovementDateTime);

                                      AEmployeeAvailabilityCalculator.AddEmployeeUnmatchedMovement(
                                        qryCalcEmployeeMovementsEMP_MOVEMENT_DATE_TIME.AsDateTime);
                                    end;

                                  LatestInboundMovementDateTime:= 0;
                                end;
                            end;
                        else
                          raise Exception.Create('Invalid IN_OUT value');
                        end;  { case }

                        qryCalcEmployeeMovements.Next;
                      end;  { while }

                    if (LatestInboundMovementDateTime <> 0) then
                      begin
                        if AEmployeeAvailabilityCalculator.ContainsCurrentDateTime and
                           (AEmployeeAvailabilityCalculator.CurrentDateTime >= LatestInboundMovementDateTime) and
                           ( (AEmployeeAvailabilityCalculator.CurrentDateTime - LatestInboundMovementDateTime)
                             <=
                             LoginContext.MaxEmployeeAvailabilityHours/24) then
                          begin
                            AEmployeeAvailabilityCalculator.AddEmployeeCurrentPresence(
                              LatestInboundMovementDateTime);
                          end
                        else
                          begin
                            AEmployeeAvailabilityCalculator.AddEmployeeUnmatchedMovement(
                              LatestInboundMovementDateTime);
                          end;
                      end;  { if }

                    AEmployeeAvailabilityCalculator.CalculateEmployeeData;

                    AEmployeeAvailabilityCallbackEvent(AEmployeeAvailabilityCalculator, ADataSet);
                  finally
                    AEmployeeAvailabilityCalculator.FinalizeEmployeeData;
                  end;  { try }

                  PrevEmployeeCode:= CurrentEmployeeCode;
                end;  { while }
            finally
              qryCalcEmployeeMovements.Close;
            end;  { try }
          finally
            qryCalcEmployeeModifiers.Close;
          end;  { try }
        finally
          qryCalcEmployeeShiftCycles.Close;
        end;  { try }
      finally
        qryCalcEmployeeOccupationsAndShifts.Close;
      end;  { try }
    finally
      qryCalcEmployees.Close;
    end;  { try }
  finally
    FreeAndNil(FShiftAbbrevs);
  end;  { try }
end;

procedure TdmEmployeeAvailability.prvEmployeesAvailabilityGetData(
  Sender: TObject; DataSet: TCustomClientDataSet);
var
  i: Integer;
  BeginDate, EndDate: TDateTime;
begin
  inherited;

  for i:= 0 to qryEmployeesAvailability.FieldCount - 1 do
    Assert(qryEmployeesAvailability.Fields[i].FieldName = DataSet.Fields[i].FieldName);

  qryFillEmployeesAvailabilityTempEmployees.Params.AssignValues(cdsEmployeesAvailability.Params);

  ProcessDeptParamBeforeQueryOpen(
    qryFillEmployeesAvailabilityTempEmployees.ParamByName('OCCUPATION_DEPT_CODE'), LoginContext);

  DBDataModule.DisableDocsProcessing;
  try
    TruncateAvailabilityEmployeesTempTable;
    qryFillEmployeesAvailabilityTempEmployees.ExecSQL;
    try
      qryEmployeesAvailability.Params.AssignValues(cdsEmployeesAvailability.Params);
      qryEmployeesAvailability.Open;
      try
        while not qryEmployeesAvailability.Eof do
          begin
            DataSet.Append;
            try
              for i:= 0 to qryEmployeesAvailability.FieldCount - 1 do
                DataSet.Fields[i].Assign(qryEmployeesAvailability.Fields[i]);

              DataSet.Post;
            except
              DataSet.Cancel;
              raise;
            end;  { try }

            qryEmployeesAvailability.Next;
          end;  { while }
      finally
        qryEmployeesAvailability.Close;
      end;  { try }

      DataSet.First;

      with cdsEmployeesAvailability.Params do
        begin
          BeginDate:= ParamByName('BEGIN_DATE').AsDateTime;
          EndDate:= ParamByName('END_DATE').AsDateTime;

          with FEmployeesAvailabilityFilter do
            begin
              ShiftCode:= ParamByName('SHIFT_CODE').AsInteger;
              FilterEmpAvailModifiers:= ParamByName('FILTER_EMP_AVAIL_MODIFIERS').AsInteger;
              EmpDayAbsenceReasonCode:= ParamByName('EMP_DAY_ABSENCE_REASON_CODE').AsInteger;
              IsEmpDayAbsenceConfirmed:= ParamByName('IS_EMP_DAY_ABSENCE_CONFIRMED').Value;
              EmpAvailModifierTypeCode:= ParamByName('EMP_AVAIL_MODIFIER_TYPE_CODE').AsInteger;
              EmpHourAvailModReasonCode:= ParamByName('EMP_HOUR_AVAIL_MOD_REASON_CODE').AsInteger;
              HasUnmatchedMovements:= ParamByName('HAS_UNMATCHED_MOVEMENTS').Value;
              OldShiftCode:= ParamByName('OLD_SHIFT_CODE').Value;
              NewShiftCode:= ParamByName('NEW_SHIFT_CODE').Value;
            end;  { with }
        end;  { with }

      StoreEmployeesAvailabilityFields(BeginDate, EndDate, DataSet);
      try
        LoadDayAbsenceReasons;
        DataSet.AutoCalcFields:= False;
        CalcEmployeeAvailability(BeginDate, EndDate, FillEmployeesAvailabilityData, DataSet);
      finally
        ReleaseEmployeesAvailabilityFields;
      end;  { try }
    finally
      TruncateAvailabilityEmployeesTempTable;
    end;  { try }
  finally
    DBDataModule.EnableDocsProcessing;
  end;  { try }
end;

procedure TdmEmployeeAvailability.prvEmployeesAvailabilityBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;

  ProcessUserParamBeforeQueryOpen(
    cdsEmployeesAvailability.Params.ParamByName('EMPLOYEE_CODE'), LoginContext);

  CreateEmployeesAvailabilityDataSetStructure(
    cdsEmployeesAvailability.Params.ParamByName('BEGIN_DATE').AsDateTime,
    cdsEmployeesAvailability.Params.ParamByName('END_DATE').AsDateTime
  );
  cdsEmployeesAvailability.CreateDataSet;
end;

procedure TdmEmployeeAvailability.prvEmployeesAvailabilityAfterGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  cdsEmployeesAvailability.Close;
  cdsEmployeesAvailability.Fields.Clear;
end;

procedure TdmEmployeeAvailability.CreateEmployeesAvailabilityDataSetStructure(
  BeginDate, EndDate: TDateTime);

  procedure CreateAndAddFieldToDataSet(ADataSet: TDataSet;
    AFieldClass: TFieldClass; AName: string);
  var
    AField: TField;
  begin
    AField:= AFieldClass.Create(Self);
    try
      with AField do
        begin
          FieldName := AName;
          Name:= ADataSet.Name + FieldName;
          Index:= ADataSet.FieldCount;
          DataSet:= ADataSet;

          if (AFieldClass = TAbmesWideStringField) then
            begin
              Size:= 250;
              (AField as TAbmesWideStringField).Alignment:= taLeftJustify;
            end;

          if (AFieldClass = TAbmesFloatField) then
            begin
              (AField as TAbmesFloatField).Alignment:= taRightJustify;
            end;
        end;
    except
      FreeAndNil(AField);
      raise;
    end;
  end;

var
  f: TField;
  ADate: Integer;
  DateNo: Integer;
  dar: TDayAbsenceReason;
begin
  cdsEmployeesAvailability.Fields.Clear;
  cdsEmployeesAvailability.FieldDefs.Clear;

  // полетата в началото
  for f in qryEmployeesAvailability.Fields do
    CreateAndAddFieldToDataSet(
      cdsEmployeesAvailability,
      TFieldClass(f.ClassType),
      f.FieldName
    );

  // датата, за която работи пича в момента
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesSQLTimeStampField, 'WORK_DATE');

  // дали пича е наличен в момента
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'IS_EMPLOYEE_AVAILABLE_NOW');

  // полетата за всяка дата
  DateNo:= 0;
  for ADate:= Trunc(BeginDate) to Trunc(EndDate) do
    begin
      Inc(DateNo);
      CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, IsOfficialWorkdayFieldName + IntToStr(DateNo));
      CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesWideStringField, AvailabilityStatusFieldName + IntToStr(DateNo));
      CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, AvailabilityHoursFieldName + IntToStr(DateNo));
      CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, AvailabilityOfficialHoursFieldName + IntToStr(DateNo));
    end;


  // обобщаващите полета
  // за пред държавата, по дни
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'OFFICIAL_PRESENCE_DAYS');

  for dar:= darVacation to darAdministrative do
    CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, Format('OFFICIAL_ABSENCE_DAYS_%d', [DayAbsenceReasonToInt(dar)]));

  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, Format('OFFICIAL_ABSENCE_DAYS_%d', [DayAbsenceReasonToInt(darRealSelfAbsence)]));
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'OFFICIAL_DAYS_OFF');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'OFFICIAL_TOTAL_DAYS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'OFFICIAL_PRESENCE_HOURS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'OFFICIAL_APP_OVERTIME_HOURS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'OFFICIAL_UNAPP_OVERTIME_HOURS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'OFFICIAL_OFFTIME_PRESENCE_HRS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'OFFICIAL_UNAPP_ABSENCE_HOURS');


  // за пред нас, по дни
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_T_PRESENCE_DAYS');

  for dar:= darVacation to darAdministrative do
    CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, Format('REAL_T_ABSENCE_DAYS_%d', [DayAbsenceReasonToInt(dar)]));

  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, Format('REAL_T_ABSENCE_DAYS_%d', [DayAbsenceReasonToInt(darRealSelfAbsence)]));
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_T_DAYS_OFF');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_T_TOTAL_DAYS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_T_PRESENCE_HOURS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_T_APP_OVERTIME_HOURS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_T_UNAPP_OVERTIME_HOURS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_T_OFFTIME_PRESENCE_HRS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_T_UNAPP_ABSENCE_HOURS');


  // за пред нас, разбито по официални работни и официални почивни дни
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_W_PRESENCE_DAYS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_O_PRESENCE_DAYS');

  for dar:= darVacation to darAdministrative do
    begin
      CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, Format('REAL_W_ABSENCE_DAYS_%d', [DayAbsenceReasonToInt(dar)]));
      CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, Format('REAL_O_ABSENCE_DAYS_%d', [DayAbsenceReasonToInt(dar)]));
    end;

  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, Format('REAL_W_ABSENCE_DAYS_%d', [DayAbsenceReasonToInt(darRealSelfAbsence)]));
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, Format('REAL_O_ABSENCE_DAYS_%d', [DayAbsenceReasonToInt(darRealSelfAbsence)]));
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_W_DAYS_OFF');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_O_DAYS_OFF');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_W_TOTAL_DAYS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_O_TOTAL_DAYS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_W_PRESENCE_HOURS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_O_PRESENCE_HOURS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_W_APP_OVERTIME_HOURS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_O_APP_OVERTIME_HOURS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_W_UNAPP_OVERTIME_HOURS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_O_UNAPP_OVERTIME_HOURS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_W_OFFTIME_PRESENCE_HRS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_O_OFFTIME_PRESENCE_HRS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_W_UNAPP_ABSENCE_HOURS');
  CreateAndAddFieldToDataSet(cdsEmployeesAvailability, TAbmesFloatField, 'REAL_O_UNAPP_ABSENCE_HOURS');


  // задаване на PrimaryKey
  cdsEmployeesAvailability.FieldByName('EMPLOYEE_CODE').ProviderFlags:= [pfInKey];
  cdsEmployeesAvailability.FieldByName('OCCUPATION_CODE').ProviderFlags:= [pfInKey];
end;

procedure TdmEmployeeAvailability.StoreEmployeesAvailabilityFields(
  BeginDate, EndDate: TDateTime; DataSet: TDataSet);

  function RepeatableFieldDateNo(AField: TField; FieldName: string): Integer;
  begin
    if (Pos(FieldName, AField.FieldName) = 1) then
      Result:= StrToInt(RightStr(AField.FieldName, Length(AField.FieldName) - Length(FieldName)))
    else
      Result:= 0;
  end;

var
  DateIntervalLength: Integer;
  f: TField;
  DateNo: Integer;
begin
  DateIntervalLength:= Trunc(EndDate) - Trunc(BeginDate) + 1;

  FEmployeeCodeField:= DataSet.FieldByName('EMPLOYEE_CODE');
  FOccupationCodeField:= DataSet.FieldByName('OCCUPATION_CODE');
  FWorkDateField:= DataSet.FieldByName('WORK_DATE');
  FIsEmployeeAvailableNow:= DataSet.FieldByName('IS_EMPLOYEE_AVAILABLE_NOW');

  SetLength(FEmployeesAvailabilityIsOfficialWorkdayFields, DateIntervalLength);
  SetLength(FEmployeesAvailabilityStatusFields, DateIntervalLength);
  SetLength(FEmployeesAvailabilityHoursFields, DateIntervalLength);
  SetLength(FEmployeesAvailabilityOfficialHoursFields, DateIntervalLength);

  for f in DataSet.Fields do
    begin
      DateNo:= RepeatableFieldDateNo(f, IsOfficialWorkdayFieldName);
      if (DateNo > 0) then
        FEmployeesAvailabilityIsOfficialWorkdayFields[DateNo - 1]:= f;

      DateNo:= RepeatableFieldDateNo(f, AvailabilityStatusFieldName);
      if (DateNo > 0) then
        FEmployeesAvailabilityStatusFields[DateNo - 1]:= f;

      DateNo:= RepeatableFieldDateNo(f, AvailabilityHoursFieldName);
      if (DateNo > 0) then
        FEmployeesAvailabilityHoursFields[DateNo - 1]:= f;

      DateNo:= RepeatableFieldDateNo(f, AvailabilityOfficialHoursFieldName);
      if (DateNo > 0) then
        FEmployeesAvailabilityOfficialHoursFields[DateNo - 1]:= f;
    end;

  StoreEmployeesAvailabilityTotalFields(DataSet);
end;

procedure TdmEmployeeAvailability.StoreEmployeesAvailabilityTotalFields(
  DataSet: TDataSet);
var
  tk: TTotalKind;
  dar: TDayAbsenceReason;
begin
  for tk:= Succ(Low(TTotalKind)) to High(TTotalKind) do
    begin
      FEmployeesAvailabilityTotals[tk].PresenceDaysField:=
        DataSet.FieldByName(TotalFieldNamePreffixes[tk] + 'PRESENCE_DAYS');

      for dar:= darRealSelfAbsence to darAdministrative do
        FEmployeesAvailabilityTotals[tk].AbsenseDaysFields[dar]:=
          DataSet.FieldByName(TotalFieldNamePreffixes[tk] + 'ABSENCE_DAYS_' + IntToStr(DayAbsenceReasonToInt(dar)));

      FEmployeesAvailabilityTotals[tk].DaysOffField:=
        DataSet.FieldByName(TotalFieldNamePreffixes[tk] + 'DAYS_OFF');
      FEmployeesAvailabilityTotals[tk].TotalDaysField:=
        DataSet.FieldByName(TotalFieldNamePreffixes[tk] + 'TOTAL_DAYS');
      FEmployeesAvailabilityTotals[tk].PresenceHoursField:=
        DataSet.FieldByName(TotalFieldNamePreffixes[tk] + 'PRESENCE_HOURS');
      FEmployeesAvailabilityTotals[tk].ApprovedOvertimeHoursField:=
        DataSet.FieldByName(TotalFieldNamePreffixes[tk] + 'APP_OVERTIME_HOURS');
      FEmployeesAvailabilityTotals[tk].UnapprovedOvertimeHoursField:=
        DataSet.FieldByName(TotalFieldNamePreffixes[tk] + 'UNAPP_OVERTIME_HOURS');
      FEmployeesAvailabilityTotals[tk].OfftimePresenceHoursField:=
        DataSet.FieldByName(TotalFieldNamePreffixes[tk] + 'OFFTIME_PRESENCE_HRS');
      FEmployeesAvailabilityTotals[tk].UnapprovedAbsenceHoursField:=
        DataSet.FieldByName(TotalFieldNamePreffixes[tk] + 'UNAPP_ABSENCE_HOURS');
    end;

  FEmployeesAvailabilityTotals[tkOfficial].SumOf:= [odkOfficialDayOff, odkOfficialWorkday];
  FEmployeesAvailabilityTotals[tkRealTotal].SumOf:= [odkOfficialDayOff, odkOfficialWorkday];
  FEmployeesAvailabilityTotals[tkRealWorkday].SumOf:= [odkOfficialWorkday];
  FEmployeesAvailabilityTotals[tkRealDayOff].SumOf:= [odkOfficialDayOff];
end;

procedure TdmEmployeeAvailability.ReleaseEmployeesAvailabilityFields;
begin
  FEmployeeCodeField:= nil;
  FOccupationCodeField:= nil;
  FWorkDateField:= nil;
  FIsEmployeeAvailableNow:= nil;
  SetLength(FEmployeesAvailabilityIsOfficialWorkdayFields, 0);
  SetLength(FEmployeesAvailabilityStatusFields, 0);
  SetLength(FEmployeesAvailabilityHoursFields, 0);
  SetLength(FEmployeesAvailabilityOfficialHoursFields, 0);
end;

procedure TdmEmployeeAvailability.LoadDayAbsenceReasons;
var
  dar: TDayAbsenceReason;
begin
  for dar:= Low(TDayAbsenceReason) to High(TDayAbsenceReason) do
    FDayAbsenceReasonAbbrevs[dar]:= '';

  for dar:= Low(TDayAbsenceReason) to High(TDayAbsenceReason) do
    FDayAbsenceReasonNames[dar]:= '';

  qryEmpDayAbsenceReasons.Open;
  try
    while not qryEmpDayAbsenceReasons.Eof do
      begin
        FDayAbsenceReasonAbbrevs[IntToDayAbsenceReason(qryEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_CODE.AsInteger)]:=
          qryEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_ABBREV.AsString;
        FDayAbsenceReasonNames[IntToDayAbsenceReason(qryEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_CODE.AsInteger)]:=
          qryEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_NAME.AsString;

        qryEmpDayAbsenceReasons.Next;
      end;  { while }
  finally
    qryEmpDayAbsenceReasons.Close;
  end;  { try }

  FDayAbsenceReasonAbbrevs[darPlanSelfAbsence]:= '?';
  FDayAbsenceReasonAbbrevs[darRealSelfAbsence]:= '?';
  FDayAbsenceReasonNames[darPlanSelfAbsence]:= FDayAbsenceReasonNames[darRealSelfAbsence];
end;

procedure TdmEmployeeAvailability.FillEmployeesAvailabilityTotals(
  AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator);
var
  odk: TOfficialDayKind;
  tok: TTotalKind;
  Total: TEmployeesAvailabilityTotal;
  TotalAbsenceDays: Integer;
  dar: TDayAbsenceReason;
  tk: TTimeKind;
  TotalNormalPresenceHours: Real;
  AbsenceCount: Integer;
  EmployeeAvailabilityTotals: TEmployeeAvailabilityTotals;
begin
  if (FEmployeesAvailabilityFilter.ShiftCode = 0) then
    EmployeeAvailabilityTotals:=
      AEmployeeAvailabilityCalculator.TotalsByOccupation[FOccupationCodeField.AsInteger]
  else
    EmployeeAvailabilityTotals:=
      AEmployeeAvailabilityCalculator.TotalsByOccupation[FOccupationCodeField.AsInteger].TotalsByShift[FEmployeesAvailabilityFilter.ShiftCode];

  if not Assigned(EmployeeAvailabilityTotals) then
    Exit;


  for tok:= Succ(Low(TTotalKind)) to High(TTotalKind) do
    begin
      Total:= FEmployeesAvailabilityTotals[tok];

      for odk:= Low(TOfficialDayKind) to High(TOfficialDayKind) do
        Total.PresenceDaysField.AsInteger:= Total.PresenceDaysField.AsInteger +
          (EmployeeAvailabilityTotals.EmployeeNormalPresenceDayCounts[odk] * Ord(odk in Total.SumOf));

      TotalAbsenceDays:= 0;
      for dar:= darRealSelfAbsence to darAdministrative do
        begin
          for odk:= Low(TOfficialDayKind) to High(TOfficialDayKind) do
            Total.AbsenseDaysFields[dar].AsInteger:= Total.AbsenseDaysFields[dar].AsInteger +
              (EmployeeAvailabilityTotals.EmployeeDayAbsenceCounts[dar, odk] * Ord(odk in Total.SumOf));

          Inc(TotalAbsenceDays, Total.AbsenseDaysFields[dar].AsInteger);
        end;

      for odk:= Low(TOfficialDayKind) to High(TOfficialDayKind) do
        Total.TotalDaysField.AsInteger:= Total.TotalDaysField.AsInteger +
          (EmployeeAvailabilityTotals.DayCounts[odk] * Ord(odk in Total.SumOf));

      Total.DaysOffField.AsInteger:=
        Total.TotalDaysField.AsInteger - Total.PresenceDaysField.AsInteger - TotalAbsenceDays;

      for odk:= Low(TOfficialDayKind) to High(TOfficialDayKind) do
        for tk:= Low(TTimeKind) to High(TTimeKind) do
          Total.ApprovedOvertimeHoursField.AsFloat:= Total.ApprovedOvertimeHoursField.AsFloat +
            GranuleCountToHours(
              ( EmployeeAvailabilityTotals.EmployeePresenceGranuleCounts[pcaApprovedOvertimeShiftCyclePresence, tk, odk] +
                EmployeeAvailabilityTotals.EmployeePresenceGranuleCounts[pcaApprovedOvertimeExtraPresence, tk, odk]
              ) *
              Ord(odk in Total.SumOf)
            );

      for odk:= Low(TOfficialDayKind) to High(TOfficialDayKind) do
        for tk:= Low(TTimeKind) to High(TTimeKind) do
          Total.UnapprovedOvertimeHoursField.AsFloat:= Total.UnapprovedOvertimeHoursField.AsFloat +
            GranuleCountToHours(
              ( EmployeeAvailabilityTotals.EmployeePresenceGranuleCounts[pcaUnapprovedRequiredOvertimeShiftCyclePresence, tk, odk] +
                EmployeeAvailabilityTotals.EmployeePresenceGranuleCounts[pcaUnapprovedRequiredOvertimeExtraPresence, tk, odk] +
                EmployeeAvailabilityTotals.EmployeePresenceGranuleCounts[pcaApprovedOvertimeShiftCyclePresence, tk, odk] +
                EmployeeAvailabilityTotals.EmployeePresenceGranuleCounts[pcaApprovedOvertimeExtraPresence, tk, odk]
              ) *
              Ord(odk in Total.SumOf)
            );

      for odk:= Low(TOfficialDayKind) to High(TOfficialDayKind) do
        for tk:= Low(TTimeKind) to High(TTimeKind) do
          Total.OfftimePresenceHoursField.AsFloat:= Total.OfftimePresenceHoursField.AsFloat +
            GranuleCountToHours(
              EmployeeAvailabilityTotals.EmployeePresenceGranuleCounts[pcaOfftimePresence, tk, odk] *
              Ord(odk in Total.SumOf)
            );

      for odk:= Low(TOfficialDayKind) to High(TOfficialDayKind) do
        Total.UnapprovedAbsenceHoursField.AsFloat:= Total.UnapprovedAbsenceHoursField.AsFloat +
          GranuleCountToHours(
            ( EmployeeAvailabilityTotals.EmployeeAbsenceGranuleCounts[acaUnapprovedOvertimeShiftCycleAbsence, tkPast, odk] +
              EmployeeAvailabilityTotals.EmployeeAbsenceGranuleCounts[acaUnapprovedOvertimeExtraAbsence, tkPast, odk] +
              EmployeeAvailabilityTotals.EmployeeAbsenceGranuleCounts[acaUnapprovedNormalShiftCycleAbsence, tkPast, odk] +
              EmployeeAvailabilityTotals.EmployeeAbsenceGranuleCounts[acaUnapprovedNormalExtraAbsence, tkPast, odk]
            ) *
            Ord(odk in Total.SumOf)
          );

      TotalNormalPresenceHours:= 0;
      for odk:= Low(TOfficialDayKind) to High(TOfficialDayKind) do
        for tk:= Low(TTimeKind) to High(TTimeKind) do
          TotalNormalPresenceHours:= TotalNormalPresenceHours +
            GranuleCountToHours(
              ( EmployeeAvailabilityTotals.EmployeePresenceGranuleCounts[pcaNormalShiftCyclePresence, tk, odk] +
                EmployeeAvailabilityTotals.EmployeePresenceGranuleCounts[pcaNormalExtraPresence, tk, odk]
              ) *
              Ord(odk in Total.SumOf));

      Total.PresenceHoursField.AsFloat:= TotalNormalPresenceHours + Total.UnapprovedOvertimeHoursField.AsFloat;
    end;  { for }


  // fix official totals
  Total:= FEmployeesAvailabilityTotals[tkOfficial];

  for dar:= darVacation to darAdministrative do
    Total.AbsenseDaysFields[dar].AsInteger:=
      EmployeeAvailabilityTotals.EmployeeDayAbsenceCounts[dar, odkOfficialWorkday];

  Total.DaysOffField.AsInteger:= EmployeeAvailabilityTotals.DayCounts[odkOfficialDayOff];

  AbsenceCount:= 0;
  for dar:= darRealSelfAbsence to darAdministrative do
    Inc(AbsenceCount, FEmployeesAvailabilityTotals[tkOfficial].AbsenseDaysFields[dar].AsInteger);

  Total.PresenceDaysField.AsInteger:=
    Total.TotalDaysField.AsInteger - Total.DaysOffField.AsInteger - AbsenceCount;

  if (Total.PresenceDaysField.AsInteger < 0) then
    begin
      Total.DaysOffField.AsInteger:= Total.DaysOffField.AsInteger - Abs(Total.PresenceDaysField.AsInteger);
      Total.PresenceDaysField.AsInteger:= 0;
    end;  { if }

  Total.PresenceHoursField.AsFloat:= 0;
  for odk:= Low(TOfficialDayKind) to High(TOfficialDayKind) do
    for tk:= Low(TTimeKind) to High(TTimeKind) do
      Total.PresenceHoursField.AsFloat:= Total.PresenceHoursField.AsFloat +
        GranuleCountToHours(
          ( EmployeeAvailabilityTotals.EmployeePresenceGranuleCounts[pcaNormalShiftCyclePresence, tk, odk] +
            EmployeeAvailabilityTotals.EmployeeAbsenceGranuleCounts[acaUnapprovedNormalShiftCycleAbsence, tk, odk] +
            EmployeeAvailabilityTotals.EmployeeAbsenceGranuleCounts[acaApprovedNormalShiftCycleAbsence, tk, odk]
          ) *
          Ord(odk in Total.SumOf));

  // clear zeros
  for tok:= Succ(Low(TTotalKind)) to High(TTotalKind) do
    FEmployeesAvailabilityTotals[tok].SetZeroValuesToNull;
end;

procedure TdmEmployeeAvailability.FillEmployeesAvailabilityData(
  AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator;
  ADataSet: TDataSet);
  
  function ConformsFilter: Boolean;

    function DayHourAvailabilityModifierTypeConformsFilter(Day: TDay;
      amt: TEmployeeHourAvailabilityModifierType): Boolean;
    var
      m: TModifier;
    begin
      if (FEmployeesAvailabilityFilter.EmpHourAvailModReasonCode = 0) then
        Result:= Day.HasHourAvailabilityModifiers[amt]
      else
        begin
          Result:= True;
          for m in Day.HourAvailabilityModifiers[amt] do
            if (m.ReasonCode = FEmployeesAvailabilityFilter.EmpHourAvailModReasonCode) then
              Exit;
          Result:= False;
        end;
    end;

    function ShiftChangeModifierConformsFilter(AShiftChangeModifier: TShiftChangeModifier): Boolean;
    begin
      Result:=
        ( (FEmployeesAvailabilityFilter.EmpHourAvailModReasonCode = 0) or
          (AShiftChangeModifier.ReasonCode = FEmployeesAvailabilityFilter.EmpHourAvailModReasonCode) ) and
        ( VarIsNullOrEmpty(FEmployeesAvailabilityFilter.OldShiftCode) or
          (AShiftChangeModifier.OldShiftCode = FEmployeesAvailabilityFilter.OldShiftCode) ) and
        ( VarIsNullOrEmpty(FEmployeesAvailabilityFilter.NewShiftCode) or
          (AShiftChangeModifier.NewShiftCode = FEmployeesAvailabilityFilter.NewShiftCode) );
    end;  { ShiftChangeModifierConformsFilter }

  var
    ADate: Integer;
    Day: TDay;
    DayConformsFilter: Boolean;
    amt: TEmployeeHourAvailabilityModifierType;
    HasUnmatchedMovements: Boolean;
    scm: TShiftChangeModifier;
  begin
    if (not VarIsNullOrEmpty(FEmployeesAvailabilityFilter.HasUnmatchedMovements)) then
      begin
        HasUnmatchedMovements:= False;
        for ADate:= Trunc(AEmployeeAvailabilityCalculator.BeginDate) to Trunc(AEmployeeAvailabilityCalculator.EndDate) do
          begin
            Day:= AEmployeeAvailabilityCalculator.EmployeeDays[ADate];
            if (Day.OccupationCode = FOccupationCodeField.AsInteger) then
              HasUnmatchedMovements:= HasUnmatchedMovements or Day.HasUnmatchedMovements;
          end;

        if (Ord(HasUnmatchedMovements) <> FEmployeesAvailabilityFilter.HasUnmatchedMovements) then
          begin
            Result:= False;
            Exit;
          end;
      end;

    if (FEmployeesAvailabilityFilter.FilterEmpAvailModifiers = 0) then
      Result:= True
    else
      begin
        Result:= True;
        for ADate:= Trunc(AEmployeeAvailabilityCalculator.BeginDate) to Trunc(AEmployeeAvailabilityCalculator.EndDate) do
          begin
            Day:= AEmployeeAvailabilityCalculator.EmployeeDays[ADate];

            if (Day.OccupationCode = FOccupationCodeField.AsInteger) then
              case FEmployeesAvailabilityFilter.FilterEmpAvailModifiers of
                1:
                  DayConformsFilter:=
                    Day.HasDayAbsence and
                    ( (FEmployeesAvailabilityFilter.EmpDayAbsenceReasonCode = 0) or
                      (DayAbsenceReasonToInt(Day.DayAbsenceReason) = FEmployeesAvailabilityFilter.EmpDayAbsenceReasonCode)
                    ) and
                    ( VarIsNullOrEmpty(FEmployeesAvailabilityFilter.IsEmpDayAbsenceConfirmed) or
                      (Ord(Day.IsDayAbsenceConfirmed) = FEmployeesAvailabilityFilter.IsEmpDayAbsenceConfirmed)
                    );

                2:
                  if (FEmployeesAvailabilityFilter.EmpAvailModifierTypeCode = 0) then
                    begin
                      DayConformsFilter:= False;
                      for amt:= Low(TEmployeeHourAvailabilityModifierType) to High(TEmployeeHourAvailabilityModifierType) do
                        if not IsModifierTypeFromShiftCycle(amt) and
                           DayHourAvailabilityModifierTypeConformsFilter(Day, amt) then
                          begin
                            DayConformsFilter:= True;
                            Break;
                          end;
                    end
                  else
                    begin
                      amt:= IntToEmployeeHourAvailabilityModifierType(FEmployeesAvailabilityFilter.EmpAvailModifierTypeCode);
                      DayConformsFilter:= DayHourAvailabilityModifierTypeConformsFilter(Day, amt);
                    end;

                3:
                  if (FEmployeesAvailabilityFilter.EmpHourAvailModReasonCode = 0) and
                     VarIsNullOrEmpty(FEmployeesAvailabilityFilter.OldShiftCode) and
                     VarIsNullOrEmpty(FEmployeesAvailabilityFilter.NewShiftCode) then
                    DayConformsFilter:= (Day.ShiftChangeModifiers.Count > 0)
                  else
                    begin
                      DayConformsFilter:= False;
                      for scm in Day.ShiftChangeModifiers do
                        if ShiftChangeModifierConformsFilter(scm) then
                          begin
                            DayConformsFilter:= True;
                            Break;
                          end;
                    end;

              else
                raise Exception.Create('Unknown FilterEmpAvailModifiers value!');
              end
            else
              DayConformsFilter:= False;

            if DayConformsFilter then
              Exit;
          end;  { for }
        Result:= False;
      end;
  end;  { ConformsFilter }

var
  ADate: Integer;
  RepeatableFieldIndex: Integer;
  Day: TDay;
  DayHoursField: TField;
  IsOfficialWorkday: Boolean;
begin
  while (not ADataSet.Eof) and
        (FEmployeeCodeField.AsInteger <> AEmployeeAvailabilityCalculator.EmployeeCode) do
    ADataSet.Next;

  Assert(not ADataSet.Eof);

  while (not ADataSet.Eof) and
        (FEmployeeCodeField.AsInteger = AEmployeeAvailabilityCalculator.EmployeeCode) do
    if not ConformsFilter then
      ADataSet.Delete
    else
      begin
        ADataSet.Edit;
        try
          FIsEmployeeAvailableNow.AsFloat:= Ord(AEmployeeAvailabilityCalculator.EmployeeIsAvailableNow);

          for ADate:= Trunc(AEmployeeAvailabilityCalculator.BeginDate) to Trunc(AEmployeeAvailabilityCalculator.EndDate) do
            begin
              Day:= AEmployeeAvailabilityCalculator.EmployeeDays[ADate];

              RepeatableFieldIndex:= ADate - Trunc(AEmployeeAvailabilityCalculator.BeginDate);

              IsOfficialWorkday:= (Day.OfficialDayKind = odkOfficialWorkday);
              FEmployeesAvailabilityIsOfficialWorkdayFields[RepeatableFieldIndex].AsInteger:= Ord(IsOfficialWorkday);

              if InRange(AEmployeeAvailabilityCalculator.CurrentDateTimeGranuleIndex, Day.WorkdayBeginGranuleIndex, Day.WorkdayEndGranuleIndex) then
                FWorkDateField.AsDateTime:= ADate;

              if (Day.OccupationCode = FOccupationCodeField.AsInteger) then
                begin
                  if ((FEmployeesAvailabilityFilter.ShiftCode = 0) or (Day.ShiftCode = FEmployeesAvailabilityFilter.ShiftCode)) then
                    begin
                      FEmployeesAvailabilityStatusFields[RepeatableFieldIndex].AsVariant:=
                        StringToVar(DayAvailabilityStatusAbbrev(Day, AEmployeeAvailabilityCalculator));

                      if not Day.HasDayAbsence then
                        begin
                          DayHoursField:= FEmployeesAvailabilityHoursFields[RepeatableFieldIndex];

                          if (Day.SumPresenceHours[pcaUnapprovedRequiredOvertimeShiftCyclePresence] > 0) or
                             (Day.SumPresenceHours[pcaUnapprovedRequiredOvertimeExtraPresence] > 0) or
                             (Day.SumPresenceHours[pcaNormalShiftCyclePresence] > 0) or
                             (Day.SumPresenceHours[pcaNormalExtraPresence] > 0) or
                             (Day.SumAbsenceHours[acaUnapprovedOvertimeShiftCycleAbsence] > 0) or
                             (Day.SumAbsenceHours[acaUnapprovedOvertimeExtraAbsence] > 0) or
                             (Day.SumAbsenceHours[acaUnapprovedNormalShiftCycleAbsence] > 0) or
                             (Day.SumAbsenceHours[acaUnapprovedNormalShiftCycleAbsence] > 0) or
                             (Day.SumAbsenceHours[acaApprovedOvertimeShiftCycleAbsence] > 0) or
                             (Day.SumAbsenceHours[acaApprovedOvertimeExtraAbsence] > 0) or
                             (Day.SumAbsenceHours[acaApprovedNormalShiftCycleAbsence] > 0) or
                             (Day.SumAbsenceHours[acaApprovedNormalExtraAbsence] > 0) then
                            begin  // ima iziskvane za prisustvie
                              DayHoursField.AsFloat:=
                                DayHoursField.AsFloat +
                                Day.SumPresenceHours[pcaNormalShiftCyclePresence] +
                                Day.SumPresenceHours[pcaNormalExtraPresence];
                              DayHoursField.AsFloat:=
                                DayHoursField.AsFloat +
                                Day.SumPresenceHours[pcaApprovedOvertimeShiftCyclePresence] +
                                Day.SumPresenceHours[pcaApprovedOvertimeExtraPresence];
                            end
                          else
                            DayHoursField.AsVariant:=
                              FloatToVar(
                                Day.SumPresenceHours[pcaApprovedOvertimeShiftCyclePresence] +
                                Day.SumPresenceHours[pcaApprovedOvertimeExtraPresence]
                              );

                          FEmployeesAvailabilityOfficialHoursFields[RepeatableFieldIndex].AsVariant:=
                            FloatToVar(
                              Day.SumPresenceHours[pcaNormalShiftCyclePresence] +
                              Day.SumAbsenceHours[acaUnapprovedNormalShiftCycleAbsence] +
                              Day.SumAbsenceHours[acaApprovedNormalShiftCycleAbsence]
                            );
                        end;
                    end;  { if }
                end
              else
                FEmployeesAvailabilityStatusFields[RepeatableFieldIndex].AsString:= NoOccupationEmployee;
            end;  { for }

          FillEmployeesAvailabilityTotals(AEmployeeAvailabilityCalculator);

          ADataSet.Post;
        except
          ADataSet.Cancel;
          raise;
        end;  { try }

        ADataSet.Next;
      end;  { while if }
end;

procedure TdmEmployeeAvailability.prvEmployeePresenceDeviationBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;

  ProcessUserParamBeforeQueryOpen(
    cdsEmployeePresenceDeviation.Params.ParamByName('EMPLOYEE_CODE'), LoginContext);

  cdsEmployeePresenceDeviation.CreateDataSet;
end;

procedure TdmEmployeeAvailability.prvEmployeePresenceDeviationAfterGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  cdsEmployeePresenceDeviation.Close;
end;

procedure TdmEmployeeAvailability.prvEmployeePresenceDeviationGetData(
  Sender: TObject; DataSet: TCustomClientDataSet);
begin
  inherited;
  TruncateAvailabilityEmployeesTempTable;
  FillAvailabilityEmployeesTempTable(
    cdsEmployeePresenceDeviation.Params.ParamByName('EMPLOYEE_CODE').AsInteger);
  try
    with cdsEmployeePresenceDeviation.Params do
      begin
        FIsNegativeDeviation:= (ParamByName('IS_NEGATIVE_DEV').AsInteger = 1);
        FIsPositiveDeviation:= (ParamByName('IS_POSITIVE_DEV').AsInteger = 1);
        FIsApprovedExtraWorkDeviation:= (ParamByName('IS_APPROVED_EXTRA_WORK_DEV').AsInteger = 1);
        CalcEmployeeAvailability(
          ParamByName('BEGIN_DATE').AsDateTime,
          ParamByName('END_DATE').AsDateTime,
          FillEmployeePresenceDeviationData,
          DataSet
        );
      end;
  finally
    TruncateAvailabilityEmployeesTempTable;
  end;
end;

procedure TdmEmployeeAvailability.FillEmployeePresenceDeviationData(
  AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator;
  ADataSet: TDataSet);

var
  ADate: Integer;
  Day: TDay;
  Duration: Real;
begin
  for ADate:= Trunc(AEmployeeAvailabilityCalculator.BeginDate) to Trunc(AEmployeeAvailabilityCalculator.EndDate) do
    begin
      Day:= AEmployeeAvailabilityCalculator.EmployeeDays[ADate];

      if not Day.HasDayAbsence then
        begin
          if FIsNegativeDeviation then
            begin
              Duration:=
                Day.SumAbsenceHours[acaUnapprovedOvertimeShiftCycleAbsence] +
                Day.SumAbsenceHours[acaUnapprovedOvertimeExtraAbsence] +
                Day.SumAbsenceHours[acaUnapprovedNormalShiftCycleAbsence] +
                Day.SumAbsenceHours[acaUnapprovedNormalExtraAbsence];

              if (Duration > 0) then
                ADataSet.AppendRecord([ADate + 0.0, 1, Duration]);
            end;

          if FIsPositiveDeviation then
            begin
              Duration:=
                Day.SumPresenceHours[pcaOfftimePresence] +
                Day.SumPresenceHours[pcaUnapprovedRequiredOvertimeShiftCyclePresence] +
                Day.SumPresenceHours[pcaUnapprovedRequiredOvertimeExtraPresence];

              if (Duration > 0) then
                ADataSet.AppendRecord([ADate + 0.0, 2, Duration]);
            end;

          if FIsApprovedExtraWorkDeviation then
            begin
              Duration:=
                Day.SumPresenceHours[pcaApprovedOvertimeShiftCyclePresence] +
                Day.SumPresenceHours[pcaApprovedOvertimeExtraPresence];
                
              if (Duration > 0) then
                ADataSet.AppendRecord([ADate + 0.0, 3, Duration]);
            end;
        end;
    end;
end;

procedure TdmEmployeeAvailability.prvEmployeesTotalAvailabilityBeforeGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
var
  GroupingType: Integer;
  aggr: TAggregate;
  i: Integer;
begin
  inherited;

  cdsEmployeesTotalAvailability.CreateDataSet;
  cdsEmployeesTotalAvailability.AutoCalcFields:= False;

  qryFillETATempEmployees.Params.AssignValues(cdsEmployeesTotalAvailability.Params);

  ProcessDeptParamBeforeQueryOpen(
    qryFillETATempEmployees.ParamByName('OCCUPATION_DEPT_CODE'), LoginContext);

  TruncateAvailabilityEmployeesTempTable;
  qryFillETATempEmployees.ExecSQL;
  try
    GroupingType:= cdsEmployeesTotalAvailability.Params.ParamByName('GROUPING_TYPE').AsInteger;
    cdsETAEmployees.IndexName:= cdsETAEmployees.IndexDefs[GroupingType-1].Name;
    cdsETAEmployees_SUM_IS_ASSIGNED_AT_BEGIN_DATE.IndexName:= cdsETAEmployees.IndexName;
    cdsETAEmployees_SUM_IS_ASSIGNED_AT_END_DATE.IndexName:= cdsETAEmployees.IndexName;

    cdsETAEmployees.Params.AssignValues(cdsEmployeesTotalAvailability.Params);

    ProcessDeptParamBeforeQueryOpen(
      cdsETAEmployees.Params.ParamByName('OCCUPATION_DEPT_CODE'), LoginContext);

    cdsETAEmployees.Open;
    try
      if not cdsETAEmployees.IsEmpty then
        begin
          FEmployeeCodeField:= cdsETAEmployeesEMPLOYEE_CODE;
          FOccupationCodeField:= cdsETAEmployeesOCCUPATION_CODE;
          StoreEmployeesAvailabilityTotalFields(cdsETAEmployees);

          FEmployeesAvailabilityFilter.ShiftCode:= cdsEmployeesTotalAvailability.Params.ParamByName('SHIFT_CODE').AsInteger;

          StoreETAEmployeesRecNos(cdsETAEmployees);
          try
            CalcEmployeeAvailability(
              cdsEmployeesTotalAvailability.Params.ParamByName('BEGIN_DATE').AsDateTime,
              cdsEmployeesTotalAvailability.Params.ParamByName('END_DATE').AsDateTime,
              FillEmployeesTotalAvailabilityData,
              cdsETAEmployees
            );
          finally
            ReleaseETAEmployeesRecNos;
          end;  { try }

          ProcessDeptParamBeforeQueryOpen(
            cdsETAEmployees.Params.ParamByName('OCCUPATION_DEPT_CODE'), LoginContext);

          cdsETAEmployees.First;
          while not cdsETAEmployees.Eof do
            begin
              if (gbFirst in cdsETAEmployees.GetGroupState(1)) then
                begin
                  cdsEmployeesTotalAvailability.Append;
                  try
                    cdsEmployeesTotalAvailabilityEMPLOYEE_CODE.Assign(cdsETAEmployeesEMPLOYEE_CODE);
                    cdsEmployeesTotalAvailabilityEMPLOYEE_NAME.Assign(cdsETAEmployeesEMPLOYEE_NAME);
                    cdsEmployeesTotalAvailabilityEMPLOYEE_NO.Assign(cdsETAEmployeesEMPLOYEE_NO);
                    cdsEmployeesTotalAvailabilityOCCUPATION_DEPT_CODE.Assign(cdsETAEmployeesOCCUPATION_DEPT_CODE);
                    cdsEmployeesTotalAvailabilityOCCUPATION_DEPT_NAME.Assign(cdsETAEmployeesOCCUPATION_DEPT_NAME);
                    cdsEmployeesTotalAvailabilityOCCUPATION_DEPT_IDENTIFIER.Assign(cdsETAEmployeesOCCUPATION_DEPT_IDENTIFIER);
                    cdsEmployeesTotalAvailabilityCRAFT_TYPE_CODE.Assign(cdsETAEmployeesCRAFT_TYPE_CODE);
                    cdsEmployeesTotalAvailabilityCRAFT_TYPE_NAME.Assign(cdsETAEmployeesCRAFT_TYPE_NAME);

                    cdsEmployeesTotalAvailabilityEMPLOYEE_COUNT_AT_BEGIN_DATE.AsInteger:=
                      VarToInt(cdsETAEmployees_SUM_IS_ASSIGNED_AT_BEGIN_DATE.AsVariant);
                    cdsEmployeesTotalAvailabilityEMPLOYEE_COUNT_AT_END_DATE.AsInteger:=
                      VarToInt(cdsETAEmployees_SUM_IS_ASSIGNED_AT_END_DATE.AsVariant);

                    // minavame po vsichkite oboshtavashti poleta
                    for i:= 0 to cdsEmployeesTotalAvailability.FieldCount - 1 do
                      if (cdsEmployeesTotalAvailability.Fields[i].Tag = 1) then
                        begin
                          aggr:= cdsETAEmployees.Aggregates.Add;
                          try
                            aggr.IndexName:= cdsETAEmployees.IndexName;
                            aggr.GroupingLevel:= 1;

                            aggr.Expression:= Format('Sum(%s)', [cdsEmployeesTotalAvailability.Fields[i].FieldName]);
                            aggr.Active:= True;

                            cdsEmployeesTotalAvailability.Fields[i].AsVariant:= FloatToVar(VarToFloat(aggr.Value));
                          finally
                            FreeAndNil(aggr);
                          end;  { try }
                        end;  { if }

                    cdsEmployeesTotalAvailability.Post;
                  except
                    cdsEmployeesTotalAvailability.Cancel;
                    raise;
                  end;  { try }
                end;  { if }

              cdsETAEmployees.Next;
            end;  { while }

          cdsEmployeesTotalAvailability.First;
        end;  { if }
    finally
      cdsETAEmployees.Close;
    end;  { try }
  finally
    TruncateAvailabilityEmployeesTempTable;
  end;  { try }
end;

procedure TdmEmployeeAvailability.prvEmployeesTotalAvailabilityAfterGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  cdsEmployeesTotalAvailability.Close;
end;

procedure TdmEmployeeAvailability.FillEmployeesTotalAvailabilityData(
  AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator;
  ADataSet: TDataSet);
var
  ETAEmployeeOccupationsRecNos: TList<Integer>;
  RecNo: Integer;
begin
  ETAEmployeeOccupationsRecNos:= FETAEmployeesRecNos[AEmployeeAvailabilityCalculator.EmployeeCode];

  Assert(Assigned(ETAEmployeeOccupationsRecNos));

  for RecNo in ETAEmployeeOccupationsRecNos do
    begin
      ADataSet.RecNo:= RecNo;

      ADataSet.SafeEdit/
        procedure begin
          FillEmployeesAvailabilityTotals(AEmployeeAvailabilityCalculator);
        end;
    end;  { for }
end;

procedure TdmEmployeeAvailability.StoreETAEmployeesRecNos(DataSet: TClientDataSet);
var
  b: TBookmark;
  EmployeeCodeField: TField;
  ETAEmployeeOccupationsRecNos: TList<Integer>;
begin
  FETAEmployeesRecNos:= TSimpleObjectDictionary<Integer, TList<Integer>>.Create([doOwnsValues]);
  try
    with DataSet do
      begin
        EmployeeCodeField:= FieldByName('EMPLOYEE_CODE');
        DisableControls;
        try
          AggregatesActive:= False;
          try
            AutoCalcFields:= False;
            try
              b:= Bookmark;
              try
                First;
                while not Eof do
                  begin
                    ETAEmployeeOccupationsRecNos:= FETAEmployeesRecNos[EmployeeCodeField.AsInteger];

                    if not Assigned(ETAEmployeeOccupationsRecNos) then
                      begin
                        ETAEmployeeOccupationsRecNos:= TList<Integer>.Create;
                        try
                          FETAEmployeesRecNos[EmployeeCodeField.AsInteger]:= ETAEmployeeOccupationsRecNos;
                        except
                          FreeAndNil(ETAEmployeeOccupationsRecNos);
                          raise;
                        end;
                      end;

                    ETAEmployeeOccupationsRecNos.Add(RecNo);

                    Next;
                  end;  { while }
              finally
                Bookmark:= b;
              end;  { try }
            finally
              AutoCalcFields:= True;
            end;  { try }
          finally
            AggregatesActive:= True;
          end;  { try }
        finally
          EnableControls;
        end;  { try }
      end;  { with }
  except
    FreeAndNil(FETAEmployeesRecNos);
    raise;
  end;
end;

procedure TdmEmployeeAvailability.ReleaseETAEmployeesRecNos;
begin
  FreeAndNil(FETAEmployeesRecNos);
end;

procedure TdmEmployeeAvailability.FillAvailabilityEmployeesTempTable(
  AEmployeeCode: Integer);
begin
  if (AEmployeeCode = -1) then
    AEmployeeCode:= LoginContext.UserCode;

  DBDataModule.DisableDocsProcessing;
  try
    qryFillAvailabilityEmployeesTempTable.ParamByName('EMPLOYEE_CODE').AsInteger:= AEmployeeCode;
    qryFillAvailabilityEmployeesTempTable.ExecSQL;
  finally
    DBDataModule.EnableDocsProcessing;
  end;  { try }
end;

procedure TdmEmployeeAvailability.TruncateAvailabilityEmployeesTempTable;
begin
  SvrCommon.TruncateTable('TEMP_AVAILABILITY_EMPLOYEES');
end;

procedure TdmEmployeeAvailability.qryEmpDateAvailBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;

  TruncateAvailabilityEmployeesTempTable;
  FillAvailabilityEmployeesTempTable(qryEmpDateAvail.ParamByName('EMPLOYEE_CODE').AsInteger);
  try
    LoadDayAbsenceReasons;

    CalcEmployeeAvailability(
      qryEmpDateAvail.ParamByName('THE_DATE').AsDateTime,
      qryEmpDateAvail.ParamByName('THE_DATE').AsDateTime,
      FillEmpDateAvailData,
      nil
    );
  finally
    TruncateAvailabilityEmployeesTempTable;
  end;  { try }

  qryEmpDateAvail.ParamByName('WORKDAY_BEGIN_DATE_TIME').AsDateTime:=
    FEmpDateAvailData.WorkdayBeginDateTime;
  qryEmpDateAvail.ParamByName('WORKDAY_END_DATE_TIME').AsDateTime:=
    FEmpDateAvailData.WorkdayEndDateTime;
end;

procedure TdmEmployeeAvailability.FillEmpDateAvailData(
  AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator;
  ADataSet: TDataSet);
const
  GranuleSizeInMinutes = 5;
  TotalGranules = 2*24*60 div GranuleSizeInMinutes;     // dva den na po 5 minuti
var
  TheDate: TDateTime;
  Day: TDay;
  i: Integer;
  DisplayGranuleIndex: Integer;
  PrevDisplayGranuleIndex: Integer;
  k: Integer;
  AvailabilityStatus: TAvailabilityStatus;
  PrevAvailabilityStatus: TAvailabilityStatus;
begin
  TheDate:= qryEmpDateAvail.ParamByName('THE_DATE').AsDateTime;
  Day:= AEmployeeAvailabilityCalculator.EmployeeDays[TheDate];

  FEmpDateAvailData.CurrentDateTime:=
    TheDate + (GranuleCountToHours(AEmployeeAvailabilityCalculator.CurrentDateTimeGranuleIndex - Day.CalendarDayBeginGranuleIndex) / 24);
  FEmpDateAvailData.WorkdayBeginDateTime:=
    TheDate + (GranuleCountToHours(Day.WorkdayBeginGranuleIndex - Day.CalendarDayBeginGranuleIndex) / 24);
  FEmpDateAvailData.WorkdayEndDateTime:=
    TheDate + (GranuleCountToHours(Day.WorkdayEndGranuleIndex - Day.CalendarDayBeginGranuleIndex) / 24);

  FEmpDateAvailData.DisplayGranuleAvailablityStatus:= VarArrayCreate([1, TotalGranules], varInteger);
  for i:= VarArrayLowBound(FEmpDateAvailData.DisplayGranuleAvailablityStatus, 1) to
          VarArrayHighBound(FEmpDateAvailData.DisplayGranuleAvailablityStatus, 1) do
    FEmpDateAvailData.DisplayGranuleAvailablityStatus[i]:= AvailabilityStatusToInt(asNone);

  PrevDisplayGranuleIndex:= 0;
  PrevAvailabilityStatus:= asNone;
  for i:= Day.WorkdayBeginGranuleIndex to Day.WorkdayEndGranuleIndex do
    begin
      DisplayGranuleIndex:=
        (Trunc(GranuleCountToHours(i - Day.CalendarDayBeginGranuleIndex) * 60) div GranuleSizeInMinutes) + 1;

      AvailabilityStatus:= AEmployeeAvailabilityCalculator.EmployeeGranules[i].AvailabilityStatus;

      if (IntToAvailabilityStatus(FEmpDateAvailData.DisplayGranuleAvailablityStatus[DisplayGranuleIndex]) < AvailabilityStatus) then
        FEmpDateAvailData.DisplayGranuleAvailablityStatus[DisplayGranuleIndex]:=
          AvailabilityStatusToInt(AvailabilityStatus);

      for k:= PrevDisplayGranuleIndex + 1 to DisplayGranuleIndex - 1 do
        FEmpDateAvailData.DisplayGranuleAvailablityStatus[k]:=
          AvailabilityStatusToInt(PrevAvailabilityStatus);

      PrevDisplayGranuleIndex:= DisplayGranuleIndex;
      PrevAvailabilityStatus:= AvailabilityStatus;
    end;

  FEmpDateAvailData.DayAbsenceReason:=
    Day.DayAbsenceReason;
  FEmpDateAvailData.DayAvailabilityStatusAbbrev:=
    DayAvailabilityStatusAbbrev(Day, AEmployeeAvailabilityCalculator);
  FEmpDateAvailData.EmployeeIsAvailableNow:=
    AEmployeeAvailabilityCalculator.EmployeeIsAvailableNow;
end;

procedure TdmEmployeeAvailability.prvEmpDateAvailAfterGetRecords(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= FEmpDateAvailData.DisplayGranuleAvailablityStatus;
end;

function TdmEmployeeAvailability.DayAvailabilityStatusAbbrev(
  Day: TDay; EmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator): string;
var
  HasPlus: Boolean;
  HasMinus: Boolean;
  HasApprovedOvertime: Boolean;
begin
  Result:= '';

  if Day.HasDayAbsence then
    begin
      HasApprovedOvertime:= False;

      Result:= FDayAbsenceReasonAbbrevs[Day.DayAbsenceReason];
      if (not Day.IsDayAbsenceConfirmed) or Day.HasUnmatchedMovements then
        Result:= Format('(%s)', [Result]);
    end
  else
    begin
      if (Day.SumPresenceHours[pcaNormalShiftCyclePresence] > 0) or
         (Day.SumPresenceHours[pcaNormalExtraPresence] > 0) then
        Result:= Result + 'x';


      HasApprovedOvertime:=
        (Day.SumPresenceHours[pcaApprovedOvertimeShiftCyclePresence] > 0) or
        (Day.SumPresenceHours[pcaApprovedOvertimeExtraPresence] > 0);

      if HasApprovedOvertime then
        Result:= Result + '!';

      HasPlus:=
        (Day.SumPresenceHours[pcaOfftimePresence] > 0) or
        (Day.SumPresenceHours[pcaUnapprovedRequiredOvertimeShiftCyclePresence] > 0) or
        (Day.SumPresenceHours[pcaUnapprovedRequiredOvertimeExtraPresence] > 0);

      HasMinus:=
        (Day.AbsenceHours[acaUnapprovedOvertimeShiftCycleAbsence, tkPast] > 0) or
        (Day.AbsenceHours[acaUnapprovedOvertimeExtraAbsence, tkPast] > 0) or
        (Day.AbsenceHours[acaUnapprovedNormalShiftCycleAbsence, tkPast] > 0) or
        (Day.AbsenceHours[acaUnapprovedNormalExtraAbsence, tkPast] > 0);

      if HasPlus and HasMinus then
        Result:= Result + '±'
      else
        begin
          if HasPlus then
            Result:= Result + '+';

          if HasMinus then
            Result:= Result + '-';
        end;

      if Day.HasUnmatchedMovements then
        Result:= Format('(%s)', [Result]);
    end;

  if Day.HasHourAvailabilityModifiers[amtNormalPresenceRequirementAndApprovementModifier] or
     Day.HasHourAvailabilityModifiers[amtOvertimePresenceRequirementModifier] or
     Day.HasHourAvailabilityModifiers[amtArtificialPresenceModifier] or
     Day.HasHourAvailabilityModifiers[amtHourAbsenceApprovementModifier] then
    begin
      Result:= Result + '*'
    end
  else
    begin
      if Day.HasHourAvailabilityModifiers[amtOvertimePresenceApprovementModifier] and
         not HasApprovedOvertime then
        begin
          Result:= Result + '*';
        end;  { if }
    end;

  if Day.HasShiftChangeModifiers then
    begin
      Assert(Assigned(FShiftAbbrevs));
      Result:= Result + '''' + '       >> ' + FShiftAbbrevs[Day.EffectiveShiftCode];
    end;
end;

procedure TdmEmployeeAvailability.prvEmployeesAvailabilityByDateUnitsGetData(
  Sender: TObject; DataSet: TCustomClientDataSet);
var
  BeginDate, EndDate: TDateTime;
  i: Integer;
begin
  inherited;

  i:= 1;
  DataSet.First;
  while not DataSet.Eof do
    begin
      with FEmployeesAvailabilityGraphDateUnits[i] do
        begin
          TheLastDate:= DataSet.FieldByName('THE_LAST_DATE').AsDateTime;
          NessesaryPresenceDays:= 0;
          PlanPresenceDays:= 0;
          PresenceDays:= 0;
          SelfAbsenceDays:= 0;
          VacationDays:= 0;
          MaternityDays:= 0;
          SicknessDays:= 0;
          StateDays:= 0;
          AdministrativeDays:= 0;
        end;

      Inc(i);
      DataSet.Next;
    end;

  BeginDate:= qryEmployeesAvailabilityByDateUnits.ParamByName('BEGIN_DATE').AsDateTime;
  EndDate:=
    IncDate(
      BeginDate,
      GetPeriodValue(qryEmployeesAvailabilityByDateUnits.ParamByName('TIME_UNIT_CODE').AsInteger),
      qryEmployeesAvailabilityByDateUnits.ParamByName('TIME_UNIT_COUNT').AsInteger
    ) - 1;
  FEmployeesAvailabilityFilter.ShiftCode:= qryEmployeesAvailabilityByDateUnits.CustomParams.ParamByName('SHIFT_CODE').AsInteger;

  qryFillEmployeesAvailabilityTempEmployees.Params.AssignValues(qryEmployeesAvailabilityByDateUnits.Params);
  qryFillEmployeesAvailabilityTempEmployees.Params.AssignValues(qryEmployeesAvailabilityByDateUnits.CustomParams);
  qryFillEmployeesAvailabilityTempEmployees.ParamByName('BEGIN_DATE').AsDateTime:= BeginDate;
  qryFillEmployeesAvailabilityTempEmployees.ParamByName('END_DATE').AsDateTime:= EndDate;

  qryEmployeesAndOccupations.Params.AssignValues(qryEmployeesAvailabilityByDateUnits.Params);
  qryEmployeesAndOccupations.Params.AssignValues(qryEmployeesAvailabilityByDateUnits.CustomParams);
  qryEmployeesAndOccupations.ParamByName('BEGIN_DATE').AsDateTime:= BeginDate;
  qryEmployeesAndOccupations.ParamByName('END_DATE').AsDateTime:= EndDate;

  with qryFillEmployeesAvailabilityTempEmployees.ParamByName('OCCUPATION_DEPT_CODE') do
    if IsNull then
      AsFloat:= tnRootDeptCode;

  with qryEmployeesAndOccupations.ParamByName('OCCUPATION_DEPT_CODE') do
    if IsNull then
      AsFloat:= tnRootDeptCode;

  DBDataModule.DisableDocsProcessing;
  try
    TruncateAvailabilityEmployeesTempTable;
    qryFillEmployeesAvailabilityTempEmployees.ExecSQL;
    try
      FCurrentEmployeeOccupations:= TList<Integer>.Create;
      try
        qryEmployeesAndOccupations.Open;
        try
          CalcEmployeeAvailability(BeginDate, EndDate, FillEmployeesAvailabilityByDateUnitsData, DataSet);
        finally
          qryEmployeesAndOccupations.Close;
        end;
      finally
        FreeAndNil(FCurrentEmployeeOccupations);
      end;
    finally
      TruncateAvailabilityEmployeesTempTable;
    end;  { try }
  finally
    DBDataModule.EnableDocsProcessing;
  end;  { try }

  i:= 1;
  DataSet.First;
  while not DataSet.Eof do
    with FEmployeesAvailabilityGraphDateUnits[i] do
      begin
        DataSet.Edit;
        DataSet.FieldByName('NESSESARY_PRESENCE_DAYS').AsVariant:= IntToVar(NessesaryPresenceDays);
        DataSet.FieldByName('PLAN_PRESENCE_DAYS').AsVariant:= IntToVar(PlanPresenceDays);
        DataSet.FieldByName('PRESENCE_DAYS').AsVariant:= IntToVar(PresenceDays);
        DataSet.FieldByName('SELF_ABSENCE_DAYS').AsVariant:= IntToVar(SelfAbsenceDays);
        DataSet.FieldByName('VACATION_DAYS').AsVariant:= IntToVar(VacationDays);
        DataSet.FieldByName('MATERNITY_DAYS').AsVariant:= IntToVar(MaternityDays);
        DataSet.FieldByName('SICKNESS_DAYS').AsVariant:= IntToVar(SicknessDays);
        DataSet.FieldByName('STATE_DAYS').AsVariant:= IntToVar(StateDays);
        DataSet.FieldByName('ADMINISTRATIVE_DAYS').AsVariant:= IntToVar(AdministrativeDays);
        DataSet.Post;

        Inc(i);
        DataSet.Next;
      end;
end;

procedure TdmEmployeeAvailability.FillEmployeesAvailabilityByDateUnitsData(
  AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator;
  ADataSet: TDataSet);
var
  i, ADate: Integer;
  Day: TDay;
begin
  while not qryEmployeesAndOccupations.Eof and
        (qryEmployeesAndOccupationsEMPLOYEE_CODE.AsInteger < AEmployeeAvailabilityCalculator.EmployeeCode) do
    begin
      qryEmployeesAndOccupations.Next;
    end;  { while }

  Assert(not qryEmployeesAndOccupations.Eof);
  Assert(qryEmployeesAndOccupationsEMPLOYEE_CODE.AsInteger = AEmployeeAvailabilityCalculator.EmployeeCode);

  FCurrentEmployeeOccupations.Clear;
  while not qryEmployeesAndOccupations.Eof and
        (AEmployeeAvailabilityCalculator.EmployeeCode = qryEmployeesAndOccupationsEMPLOYEE_CODE.AsInteger) do
    begin
      FCurrentEmployeeOccupations.Add(qryEmployeesAndOccupationsOCCUPATION_CODE.AsInteger);
      qryEmployeesAndOccupations.Next;
    end;

  i:= 1;
  for ADate:= Trunc(AEmployeeAvailabilityCalculator.BeginDate) to Trunc(AEmployeeAvailabilityCalculator.EndDate) do
    begin
      Day:= AEmployeeAvailabilityCalculator.EmployeeDays[ADate];

      if (ADate > FEmployeesAvailabilityGraphDateUnits[i].TheLastDate) then
        Inc(i);

      if not FCurrentEmployeeOccupations.Contains(Day.OccupationCode) then
        Continue;

      if (FEmployeesAvailabilityFilter.ShiftCode > 0) and (FEmployeesAvailabilityFilter.ShiftCode <> Day.ShiftCode) then
        Continue;

      if not Day.HasDayAbsence and
         not (Day.SumPresenceHours[pcaNormalShiftCyclePresence] > 0) and
         not (Day.SumPresenceHours[pcaNormalExtraPresence] > 0) then
        Continue;

      with FEmployeesAvailabilityGraphDateUnits[i] do
        begin
          Inc(NessesaryPresenceDays);

          case Day.DayAbsenceReason of
            darNoDayAbsence:
              if (Day.PresenceHours[pcaNormalShiftCyclePresence, tkPast] > 0) or
                 (Day.PresenceHours[pcaNormalExtraPresence, tkPast] > 0) then
                Inc(PresenceDays)
              else
                begin
                  if (Day.PresenceHours[pcaNormalShiftCyclePresence, tkFuture] > 0) or
                     (Day.PresenceHours[pcaNormalExtraPresence, tkFuture] > 0) then
                    Inc(PlanPresenceDays)
                  else
                    Assert(False);
                end;

            darPlanSelfAbsence:
              Inc(PlanPresenceDays);

            darRealSelfAbsence:
              Inc(SelfAbsenceDays);

            darVacation:
              Inc(VacationDays);

            darMaternity:
              Inc(MaternityDays);

            darSickness:
              Inc(SicknessDays);

            darState:
              Inc(StateDays);

            darAdministrative:
              Inc(AdministrativeDays);
          end; { case }
          
        end; { with }

    end; { for }
end;

procedure TdmEmployeeAvailability.prvEmployeeDayAbsencesGetData(
  Sender: TObject; DataSet: TCustomClientDataSet);
begin
  inherited;

  with qryEmployeeDayAbsences.ParamByName('EMP_DAY_ABSENCE_REASON_CODE') do
    if IsNull or (AsInteger = DayAbsenceReasonToInt(darRealSelfAbsence)) then
      begin
        TruncateAvailabilityEmployeesTempTable;
        FillAvailabilityEmployeesTempTable(qryEmployeeDayAbsences.ParamByName('EMPLOYEE_CODE').AsInteger);
        try
          LoadDayAbsenceReasons;
          FMinEmpAvailModifierCode:= 0;

          CalcEmployeeAvailability(
            qryEmployeeDayAbsences.ParamByName('BEGIN_DATE').AsDateTime,
            qryEmployeeDayAbsences.ParamByName('END_DATE').AsDateTime,
            FillEmployeeDayAbsencesData,
            DataSet
          );
        finally
          TruncateAvailabilityEmployeesTempTable;
        end;  { try }
      end;
end;

procedure TdmEmployeeAvailability.FillEmployeeDayAbsencesData(
  AEmployeeAvailabilityCalculator: TEmployeeAvailabilityCalculator;
  ADataSet: TDataSet);
var
  ADate: Integer;
  Day: TDay;
begin
  for ADate:= Trunc(AEmployeeAvailabilityCalculator.BeginDate) to Trunc(AEmployeeAvailabilityCalculator.EndDate) do
    begin
      Day:= AEmployeeAvailabilityCalculator.EmployeeDays[ADate];

      if Day.HasDayAbsence and
         (Day.DayAbsenceReason = darRealSelfAbsence) and
         (not Day.IsDayAbsenceConfirmed) then
        begin
          ADataSet.Append;
          try
            Dec(FMinEmpAvailModifierCode);

            ADataSet.FieldByName('EMP_AVAIL_MODIFIER_CODE').AsInteger:= FMinEmpAvailModifierCode;
            ADataSet.FieldByName('BEGIN_DATE').AsDateTime:= ADate;
            ADataSet.FieldByName('END_DATE').AsDateTime:= ADate;
            ADataSet.FieldByName('EMP_DAY_ABSENCE_REASON_CODE').AsInteger:= DayAbsenceReasonToInt(Day.DayAbsenceReason);
            ADataSet.FieldByName('EMP_DAY_ABSENCE_REASON_NAME').AsString:=
              FDayAbsenceReasonNames[Day.DayAbsenceReason];
            ADataSet.FieldByName('EMP_DAY_ABSENCE_REASON_ABBREV').AsString:=
              '(' + FDayAbsenceReasonAbbrevs[Day.DayAbsenceReason] + ')';

            ADataSet.Post;
          except
            ADataSet.Cancel;
            raise;
          end;  { try }
        end;  { if }
    end;
end;

procedure TdmEmployeeAvailability.TryAddEmployeeMovement(EmployeeNo, InOut: Integer;
  MovementDateTime: TDateTime; CreateEmployeeCode: Integer; CreateDate, CreateTime: TDateTime);
begin
  if (InOut <> -1) and (InOut <> 1) then
    raise Exception.Create('InOut must be -1 or 1');

  with qryAddEmpMovement do
    begin
      ParamByName('EMPLOYEE_NO').AsInteger:= EmployeeNo;
      ParamByName('IN_OUT').AsInteger:= InOut;
      ParamByName('EMP_MOVEMENT_DATE').AsDateTime:= DateOf(MovementDateTime);
      ParamByName('EMP_MOVEMENT_TIME').AsDateTime:= TimeOf(MovementDateTime);
      ParamByName('CREATE_EMPLOYEE_CODE').AsInteger:= CreateEmployeeCode;
      ParamByName('CREATE_DATE').AsDateTime:= CreateDate;
      ParamByName('CREATE_TIME').AsDateTime:= CreateTime;

      ExecSQL;
    end;  { with }
end;

procedure TdmEmployeeAvailability.AddEmployeeMovement(EmployeeNo, InOut: Integer;
  MovementDateTime: TDateTime; CreateEmployeeCode: Integer; CreateDate, CreateTime: TDateTime);
begin
  DBDataModule.DisableDocsProcessing;
  try
    try
      TryAddEmployeeMovement(EmployeeNo, InOut, MovementDateTime, CreateEmployeeCode, CreateDate, CreateTime);
    except
      on E: Exception do
        LogFailedEmployeeMovement(EmployeeNo, InOut, MovementDateTime, CreateEmployeeCode, CreateDate, CreateTime, E.Message);
    end;  { try }
  finally
    DBDataModule.EnableDocsProcessing;
  end;  { try }
end;

procedure TdmEmployeeAvailability.LogFailedEmployeeMovement(AEmployeeNo,
  AInOut: Integer; AMovementDateTime: TDateTime; ACreateEmployeeCode: Integer;
  ACreateDate, ACreateTime: TDateTime; AExceptionMessage: string);
begin
  with qryLogFailedEmployeeMovement do
    begin
      ParamByName('EMPLOYEE_NO').AsInteger:= AEmployeeNo;
      ParamByName('IN_OUT').AsInteger:= AInOut;
      ParamByName('EMP_MOVEMENT_DATE_TIME').AsDateTime:= AMovementDateTime;
      ParamByName('CREATE_EMPLOYEE_CODE').AsInteger:= ACreateEmployeeCode;
      ParamByName('CREATE_DATE').AsDateTime:= ACreateDate;
      ParamByName('CREATE_TIME').AsDateTime:= ACreateTime;
      ParamByName('EXCEPTION_MESSAGE').AsString:= AExceptionMessage;

      ExecSQL;
    end;  { with }
end;

procedure TdmEmployeeAvailability.RetryAddEmployeeMovement(AFailedEmployeeMovementCode: Integer);
var
  EmployeeNo: Integer;
  InOut: Integer;
  MovementDateTime: TDateTime;
  CreateEmployeeCode: Integer;
  CreateDate: TDateTime;
  CreateTime: TDateTime;
begin
  qryGetFailedEmployeeMovement.ParamByName('FAILED_EMP_MOVEMENT_CODE').AsInteger:= AFailedEmployeeMovementCode;
  qryGetFailedEmployeeMovement.TempOpen/
    procedure begin
      EmployeeNo:= qryGetFailedEmployeeMovementEMPLOYEE_NO.AsInteger;
      InOut:= qryGetFailedEmployeeMovementIN_OUT.AsInteger;
      MovementDateTime:= qryGetFailedEmployeeMovementEMP_MOVEMENT_DATE_TIME.AsDateTime;
      CreateEmployeeCode:= qryGetFailedEmployeeMovementCREATE_EMPLOYEE_CODE.AsInteger;
      CreateDate:= qryGetFailedEmployeeMovementCREATE_DATE.AsDateTime;
      CreateTime:= qryGetFailedEmployeeMovementCREATE_TIME.AsDateTime;
    end;

  DBDataModule.TempDisableDocsProcessing/
    DBDataModule.SafeTransaction/
      procedure begin
        qryDelFailedEmployeeMovement.ParamByName('FAILED_EMP_MOVEMENT_CODE').AsInteger:= AFailedEmployeeMovementCode;
        qryDelFailedEmployeeMovement.ExecSQL;

        AddEmployeeMovement(EmployeeNo, InOut, MovementDateTime, CreateEmployeeCode, CreateDate, CreateTime);
      end;
end;

procedure TdmEmployeeAvailability.RetryAddAllEmployeeMovements;
begin
  qryFailedEmployeeMovements.Open;
  try
    while not qryFailedEmployeeMovements.Eof do
      begin
        RetryAddEmployeeMovement(qryFailedEmployeeMovementsFAILED_EMP_MOVEMENT_CODE.AsInteger);

        qryFailedEmployeeMovements.Next;
      end;  { while }
  finally
    qryFailedEmployeeMovements.Close;
  end;  { try }
end;

procedure TdmEmployeeAvailability.qryEmployeeDayAbsencesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  ProcessUserParamBeforeQueryOpen(
    qryEmployeeDayAbsences.ParamByName('EMPLOYEE_CODE'), LoginContext);
end;

procedure TdmEmployeeAvailability.qryEmployeesAvailabilityBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;      
  ProcessDeptParamBeforeQueryOpen(
    qryEmployeesAvailability.ParamByName('OCCUPATION_DEPT_CODE'), LoginContext);
end;

procedure TdmEmployeeAvailability.qryEmployeesAvailabilityByDateUnitsBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;

  qryGetPeriodFieldNames.ParamByName('TIME_UNIT_CODE').Assign(
    qryEmployeesAvailabilityByDateUnits.ParamByName('TIME_UNIT_CODE'));

  qryGetPeriodFieldNames.Open;
  try
    with qryEmployeesAvailabilityByDateUnits.Macros do
      begin
        ParamByName('THE_DATES').AsString:= qryGetPeriodFieldNamesTABLE_NAME.AsString;
        ParamByName('THE_DATE').AsString:= qryGetPeriodFieldNamesKEY_FIELD_NAME.AsString;
      end;

  finally
    qryGetPeriodFieldNames.Close;
  end;
end;

{ TEmployeesAvailabilityTotal }

procedure TEmployeesAvailabilityTotal.SetZeroValuesToNull;

  procedure SetFieldZeroValuesToNull(AFields: array of TField);
  var
    AField: TField;
  begin
    for AField in AFields do
      if Assigned(AField) and (AField.AsFloat = 0) then
        AField.Clear;
  end;  { SetFieldZeroValuesToNull }

begin
  SetFieldZeroValuesToNull([
    PresenceDaysField,
    DaysOffField,
    TotalDaysField,
    PresenceHoursField,
    ApprovedOvertimeHoursField,
    UnapprovedOvertimeHoursField,
    OfftimePresenceHoursField,
    UnapprovedAbsenceHoursField
  ]);
  SetFieldZeroValuesToNull(AbsenseDaysFields);
end;

initialization
  TdmEmployeeAvailabilityProxy.FSingleton:= TdmEmployeeAvailabilityProxy.Create(TdmEmployeeAvailability);

finalization
  FreeAndNil(TdmEmployeeAvailabilityProxy.FSingleton);
end.
