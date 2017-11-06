unit dShifts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  dDBPooledDataModule, dPooledDataModule,
  Provider, DB, AbmesFields, AbmesSQLQuery, DBClient, WideStrings,
  FMTBcd, SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmShifts = class(TDBPooledDataModule)
    prvShiftRegimes: TDataSetProvider;
    qryShiftRegimes: TAbmesSQLQuery;
    qryShiftTimedRegimes: TAbmesSQLQuery;
    dsShiftRegimes: TDataSource;
    qryGetNewShiftRegimeCode: TAbmesSQLQuery;
    qryGetNewShiftTimedRegime: TAbmesSQLQuery;
    prvShiftRegime: TDataSetProvider;
    qryShiftRegime: TAbmesSQLQuery;
    dsShiftRegime: TDataSource;
    qryShiftTimedRegime: TAbmesSQLQuery;
    dsShiftTimedRegime: TDataSource;
    qryShiftCycle: TAbmesSQLQuery;
    prvShifts: TDataSetProvider;
    qryShifts: TAbmesSQLQuery;
    qryShiftsSHIFT_CODE: TAbmesFloatField;
    qryShiftsSHIFT_NAME: TAbmesWideStringField;
    qryShiftsSHIFT_ABBREV: TAbmesWideStringField;
    qryGetNewShiftCode: TAbmesSQLQuery;
    qryGetNewShiftCodeNEW_SHIFT_CODE: TAbmesFloatField;
    qryShiftsSHIFT_IDENTIFIER: TAbmesWideStringField;
    qryGetNewShiftCycleCode: TAbmesSQLQuery;
    qryGetNewShiftCycleCodeNEW_SHIFT_CYCLE_CODE: TAbmesFloatField;
    qryUpdNegativeShiftCycleNos: TAbmesSQLQuery;
    qryShiftRegimesSHIFT_REGIME_CODE: TAbmesFloatField;
    qryShiftRegimesSHIFT_REGIME_NO: TAbmesFloatField;
    qryShiftRegimesSHIFT_REGIME_NAME: TAbmesWideStringField;
    qryShiftRegimesREGIME_SHIFTS: TAbmesWideStringField;
    qryShiftTimedRegimesSHIFT_TIMED_REGIME_CODE: TAbmesFloatField;
    qryShiftTimedRegimesSHIFT_REGIME_CODE: TAbmesFloatField;
    qryShiftTimedRegimesBEGIN_DATE: TAbmesSQLTimeStampField;
    qryShiftTimedRegimesEND_DATE: TAbmesSQLTimeStampField;
    qryShiftTimedRegimesFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField;
    qryShiftTimedRegimesCYCLE_DURATION_DAYS: TAbmesFloatField;
    qryShiftTimedRegimesCALENDAR_DAYS: TAbmesFloatField;
    qryShiftTimedRegimesWORK_DAYS: TAbmesFloatField;
    qryShiftTimedRegimesTIMED_REGIME_SHIFTS: TAbmesWideStringField;
    qryGetNewShiftRegimeCodeNEW_SHIFT_REGIME_CODE: TAbmesFloatField;
    qryShiftTimedRegimeSHIFT_TIMED_REGIME_CODE: TAbmesFloatField;
    qryShiftTimedRegimeSHIFT_REGIME_CODE: TAbmesFloatField;
    qryShiftTimedRegimeBEGIN_DATE: TAbmesSQLTimeStampField;
    qryShiftTimedRegimeEND_DATE: TAbmesSQLTimeStampField;
    qryShiftTimedRegimeFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField;
    qryShiftTimedRegimeCYCLE_DURATION_DAYS: TAbmesFloatField;
    qryShiftCycleSHIFT_CYCLE_CODE: TAbmesFloatField;
    qryShiftCycleSHIFT_TIMED_REGIME_CODE: TAbmesFloatField;
    qryShiftCycleSHIFT_CYCLE_NO: TAbmesFloatField;
    qryShiftCycleSHIFT_CODE: TAbmesFloatField;
    qryShiftCycleIS_WORK_CYCLE: TAbmesFloatField;
    qryShiftCycleWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField;
    qryShiftCycleWORKDAY_END_TIME: TAbmesSQLTimeStampField;
    qryShiftCycleWORKDAY_DURATION_HOURS: TAbmesFloatField;
    qryShiftCycleWORKDAY_DENSITY_PERCENT: TAbmesFloatField;
    qryGetNewShiftTimedRegimeNEW_SHIFT_TIMED_REGIME_CODE: TAbmesFloatField;
    qryShiftRegimeSHIFT_REGIME_CODE: TAbmesFloatField;
    qryShiftRegimeSHIFT_REGIME_NO: TAbmesFloatField;
    qryShiftRegimeSHIFT_REGIME_NAME: TAbmesWideStringField;
    qryShiftRegimesRESERVE_DAYS: TAbmesFloatField;
    qryUpdBigShiftTimedRegimeDates: TAbmesSQLQuery;
    dsShiftCycle: TDataSource;
    qryShiftCycleBreak: TAbmesSQLQuery;
    qryShiftCycleBreakSHIFT_CYCLE_BREAK_CODE: TAbmesFloatField;
    qryShiftCycleBreakSHIFT_CYCLE_CODE: TAbmesFloatField;
    qryShiftCycleBreakBREAK_BEGIN_TIME: TAbmesSQLTimeStampField;
    qryShiftCycleBreakBREAK_END_TIME: TAbmesSQLTimeStampField;
    qryShiftCycleBreakBREAK_DURATION_HOURS: TAbmesFloatField;
    qryGetNewShiftCycleBreakCode: TAbmesSQLQuery;
    qryGetNewShiftCycleBreakCodeNEW_SHIFT_CYCLE_BREAK_CODE: TAbmesFloatField;
    qryShiftTimedRegimesIS_OVERTIME: TAbmesFloatField;
    qryShiftTimedRegimeIS_OVERTIME: TAbmesFloatField;
    qryShiftRegimeCalendar: TAbmesSQLQuery;
    qryMonthShiftTimedRegimes: TAbmesSQLQuery;
    prvShiftRegimeCalendar: TDataSetProvider;
    prvMonthShiftTimedRegimes: TDataSetProvider;
    qryShiftRegimeCalendarTHE_DATE: TAbmesSQLTimeStampField;
    qryShiftRegimeCalendarSHIFT_CYCLE_NO: TAbmesFloatField;
    qryShiftRegimeCalendarCYCLE_DURATION_DAYS: TAbmesFloatField;
    qryShiftRegimeCalendarIS_WORK_CYCLE: TAbmesFloatField;
    qryShiftRegimeCalendarWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField;
    qryShiftRegimeCalendarWORKDAY_END_TIME: TAbmesSQLTimeStampField;
    qryShiftRegimeCalendarWORKDAY_DURATION_HOURS: TAbmesFloatField;
    qryShiftRegimeCalendarWORKDAY_DENSITY_PERCENT: TAbmesFloatField;
    qryShiftRegimeCalendarSHIFT_ABBREV: TAbmesWideStringField;
    qryMonthShiftTimedRegimesBEGIN_DATE: TAbmesSQLTimeStampField;
    qryMonthShiftTimedRegimesEND_DATE: TAbmesSQLTimeStampField;
    qryMonthShiftTimedRegimesCALENDAR_DAYS: TAbmesFloatField;
    qryMonthShiftTimedRegimesFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField;
    qryMonthShiftTimedRegimesIS_OVERTIME: TAbmesFloatField;
    qryShiftRegimeCalendarFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField;
    qryMonthShiftTimedRegimesWORKDAYS: TAbmesFloatField;
    qryShiftRegimeCalendarIS_DAY_OFF: TAbmesFloatField;
    qryMonthShiftTimedRegimesSHIFT_TIMED_REGIME_CODE: TAbmesFloatField;
    qryShiftRegimeCalendarSHIFT_TIMED_REGIME_CODE: TAbmesFloatField;
    qryMonthShiftTimedRegimesCYCLE_DURATION_DAYS: TAbmesFloatField;
    qryShiftRegimeCalendarIS_OFFICIAL_DAY_OFF: TAbmesFloatField;
    qryShiftTimedRegimesIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField;
    qryShiftTimedRegimeIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField;
    qryShiftRegimeCalendarIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField;
    qryMonthShiftTimedRegimesIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField;
    qryShiftCycleBreakIS_WORKTIME: TAbmesFloatField;
    qryShiftCycleWORKTIME_BREAK_DURATION_HOURS: TAbmesFloatField;
    procedure prvShiftRegimeBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prvShiftsBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure qryShiftRegimeBeforeProviderEndTransaction(DataSet: TDataSet;
      Commit: Boolean);
  private
    function GetNewShiftCode: Integer;
    function GetNewShiftRegimeCode: Integer;
    function GetNewShiftTimedRegimeCode: Integer;
    function GetNewShiftCycleCode: Integer;
    function GetNewShiftCycleBreakCode: Integer;
  end;

type
  IdmShiftsProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmShiftsProxy = class(TDBPooledDataModuleProxy, IdmShiftsProxy)
  private
    class var FSingleton: TdmShiftsProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmShifts>;
  strict protected
    property LockedInstance: ISmartLock<TdmShifts> read GetLockedInstance;
  public
    class property Singleton: TdmShiftsProxy read FSingleton;
  end;

implementation

uses
  DateUtils, uUtils, uServerMessageIds, uMessageUtils;

{$R *.dfm}

{ TdmShiftsProxy }

function TdmShiftsProxy.GetLockedInstance: ISmartLock<TdmShifts>;
begin
  Result:= ISmartLock<TdmShifts>(inherited LockedInstance);
end;

{ TdmShifts }

function TdmShifts.GetNewShiftCode: Integer;
begin
  qryGetNewShiftCode.Open;
  try
    Result:= qryGetNewShiftCodeNEW_SHIFT_CODE.AsInteger;
  finally
    qryGetNewShiftCode.Close;
  end;
end;

function TdmShifts.GetNewShiftRegimeCode: Integer;
begin
  qryGetNewShiftRegimeCode.Open;
  try
    Result:= qryGetNewShiftRegimeCodeNEW_SHIFT_REGIME_CODE.AsInteger;
  finally
    qryGetNewShiftRegimeCode.Close;
  end;
end;

function TdmShifts.GetNewShiftTimedRegimeCode: Integer;
begin
  qryGetNewShiftTimedRegime.Open;
  try
    Result:= qryGetNewShiftTimedRegimeNEW_SHIFT_TIMED_REGIME_CODE.AsInteger;
  finally
    qryGetNewShiftTimedRegime.Close;
  end;
end;

function TdmShifts.GetNewShiftCycleCode: Integer;
begin
  qryGetNewShiftCycleCode.Open;
  try
    Result:= qryGetNewShiftCycleCodeNEW_SHIFT_CYCLE_CODE.AsInteger;
  finally
    qryGetNewShiftCycleCode.Close;
  end;
end;

procedure TdmShifts.prvShiftsBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if (UpdateKind = ukInsert) and (SourceDS = qryShifts) then
    DeltaDS.FieldByName('SHIFT_CODE').NewValue:= GetNewShiftCode();
end;

procedure TdmShifts.prvShiftRegimeBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
const
  DateIncrementDays = 2000*365;
begin
  inherited;

  if (SourceDS = qryShiftRegime) and (UpdateKind = ukInsert)then
    begin
      DeltaDS.FieldByName('SHIFT_REGIME_CODE').NewValue:= GetNewShiftRegimeCode();
    end;  { if }

  if (SourceDS = qryShiftTimedRegime) then
    begin
      if(UpdateKind = ukInsert) then
        begin
          DeltaDS.FieldByName('SHIFT_REGIME_CODE').NewValue:= DeltaDS.DataSetField.DataSet.FieldByName('SHIFT_REGIME_CODE').NewValue;
          DeltaDS.FieldByName('SHIFT_TIMED_REGIME_CODE').NewValue:= GetNewShiftTimedRegimeCode();
        end;  { if }

      if (UpdateKind in [ukInsert, ukModify]) and
         ( not VarIsNullOrEmpty(DeltaDS.FieldByName('BEGIN_DATE').NewValue) or
           not VarIsNullOrEmpty(DeltaDS.FieldByName('END_DATE').NewValue) ) then
          begin
            if (VarToDateTime(GetFieldValue(DeltaDS.FieldByName('BEGIN_DATE'))) > MaxDate) or
               (VarToDateTime(GetFieldValue(DeltaDS.FieldByName('END_DATE'))) > MaxDate) then
              raise Exception.Create(SDateTooBigId);

            // vremenno pravim datite golemi za da ne revne ogranichenieto za pripokrivane na interval pri redaktirane na niakolko zapisa v edna tranzakcia
            DeltaDS.FieldByName('BEGIN_DATE').NewValue:= VarToDateTime(GetFieldValue(DeltaDS.FieldByName('BEGIN_DATE'))) + DateIncrementDays;
            DeltaDS.FieldByName('END_DATE').NewValue:= VarToDateTime(GetFieldValue(DeltaDS.FieldByName('END_DATE'))) + DateIncrementDays;
          end;  { if }
    end;  { if }

  if (SourceDS = qryShiftCycle) then
    begin
      if (UpdateKind = ukInsert) then
        begin
          DeltaDS.FieldByName('SHIFT_TIMED_REGIME_CODE').NewValue:= DeltaDS.DataSetField.DataSet.FieldByName('SHIFT_TIMED_REGIME_CODE').NewValue;
          DeltaDS.FieldByName('SHIFT_CYCLE_CODE').NewValue:= GetNewShiftCycleCode();
        end;  { if }

      if (UpdateKind in [ukInsert, ukModify]) and
         (not VarIsNullOrEmpty(DeltaDS.FieldByName('SHIFT_CYCLE_NO').NewValue)) then
        begin
          // vremenno pravim nomera otricatelen za da ne revne unique indexa pri razmiana na nomera v tranzakcia
          DeltaDS.FieldByName('SHIFT_CYCLE_NO').NewValue:= -VarToInt(DeltaDS.FieldByName('SHIFT_CYCLE_NO').NewValue);
        end;  { if }
    end;  { if }

  if (SourceDS = qryShiftCycleBreak) then
    begin
      if (UpdateKind = ukInsert) then
        begin
          DeltaDS.FieldByName('SHIFT_CYCLE_CODE').NewValue:=
            GetFieldValue(DeltaDS.DataSetField.DataSet.FieldByName('SHIFT_CYCLE_CODE'));
          DeltaDS.FieldByName('SHIFT_CYCLE_BREAK_CODE').NewValue:= GetNewShiftCycleBreakCode;
        end;  { if }
    end;  { if }
end;

procedure TdmShifts.qryShiftRegimeBeforeProviderEndTransaction(
  DataSet: TDataSet; Commit: Boolean);
begin
  inherited;
  if Commit then
    begin
      qryUpdBigShiftTimedRegimeDates.ExecSQL;
      qryUpdNegativeShiftCycleNos.ExecSQL;
    end;  { if }
end;

function TdmShifts.GetNewShiftCycleBreakCode: Integer;
begin
  qryGetNewShiftCycleBreakCode.Open;
  try
    Result:= qryGetNewShiftCycleBreakCodeNEW_SHIFT_CYCLE_BREAK_CODE.AsInteger;
  finally
    qryGetNewShiftCycleBreakCode.Close;
  end;  { try }
end;

initialization
  TdmShiftsProxy.FSingleton:= TdmShiftsProxy.Create(TdmShifts);

finalization
  FreeAndNil(TdmShiftsProxy.FSingleton);
end.
