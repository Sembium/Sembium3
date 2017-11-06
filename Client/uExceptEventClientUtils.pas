unit uExceptEventClientUtils;

interface

uses
  JvDBCombobox, DBCtrlsEh, Db, Graphics, uUtils;

resourcestring

  // ExceptEvents

  SDetectedExceptEvent      = 'Уст       Установено';
  SCtrlAcceptedExceptEvent  = 'Уст!     Прихванато без Главен Отговорник';
  SNotActivatedExceptEvent  = 'Акт?     Прихванато без потвърждение от Главен Отговорник';
  SActivatedExceptEvent     = 'Акт       Активирано Преодоляване';
  SActivatedLateExceptEvent = 'Акт!     Активирано Закъсняващо Преодоляване';
  STasksClosedExceptEvent   = 'Пк?       Преодоляване с приключени Пакети от Мерки';
  SClosedExceptEvent        = 'Пк         Приключено';
  SAnnuledExceptEvent       = 'Ан         Анулирано';

  SDetectedAbbrevExceptEvent      = 'Уст';
  SCtrlAcceptedAbbrevExceptEvent  = 'Уст!';
  SNotActivatedAbbrevExceptEvent  = 'Акт?';
  SActivatedAbbrevExceptEvent     = 'Акт';
  SActivatedLateAbbrevExceptEvent = 'Акт!';
  STasksClosedAbbrevExceptEvent   = 'Пк?';
  SClosedAbbrevExceptEvent        = 'Пк';
  SAnnuledAbbrevExceptEvent       = 'Ан';

  SNumDetectedExceptEvent      = '1 - Уст       Установено';
  SNumCtrlAcceptedExceptEvent  = '2 - Уст!     Прихванато без Главен Отговорник';
  SNumNotActivatedExceptEvent  = '3 - Акт?     Прихванато без потвърждение от Главен Отговорник';
  SNumActivatedExceptEvent     = '4 - Акт       Активирано Преодоляване';
  SNumActivatedLateExceptEvent = '5 - Акт!     Активирано Закъсняващо Преодоляване';
  SNumTasksClosedExceptEvent   = '6 - Пк?       Преодоляване с приключени Пакети от Мерки';
  SNumClosedExceptEvent        = '7 - Пк         Приключено';
  SNumAnnuledExceptEvent       = '8 - Ан         Анулирано';

  // ExceptEventTasks

  SNotActivatedTask     = 'Възл    Възложен';
  SProblemEncounterTask = 'Акт?    Активиран с Проблеми';
  SActivatedTask        = 'Акт      Активиран';
  SPlanDatePassedTask   = 'Акт!    Активиран закъсняващ';
  SClosedTask           = 'Отч      Отчетен';
  SAnnuledTask          = 'Ан        Анулиран';

  SNotActivatedAbbrevTask     = 'Възл';
  SProblemEncounterAbbrevTask = 'Акт?';
  SActivatedAbbrevTask        = 'Акт';
  SPlanDatePassedAbbrevTask   = 'Акт!';
  SClosedAbbrevTask           = 'Отч';
  SAnnuledAbbrevTask          = 'Ан';

  SNumNotActivatedTask     = '1 - Възл    Възложен';
  SNumProblemEncounterTask = '2 - Акт?    Активиран с Проблеми';
  SNumActivatedTask        = '3 - Акт      Активиран';
  SNumPlanDatePassedTask   = '4 - Акт!    Активиран закъсняващ';
  SNumClosedTask           = '5 - Отч      Отчетен';
  SNumAnnuledTask          = '6 - Ан        Анулиран';

  // ExceptEventDamageAttacks

  SNormalized = 'Норм';
  SUnnormalized = 'Атк';

  SNormalizedSingleLetter = 'Н';
  SUnnormalizedSingleLetter = 'А';

  // ProcessTypeDamagedStates
  SNotDamagedAbbrev = 'Няма';
  SNotDamagedName = 'Няма';
  SDamagedNormalizedAbbrev = 'Норм';
  SDamagedNormalizedName = 'Нормализирано';
  SDamagedUnnormalizedAbbrev = 'Атак';
  SDamagedUnnormalizedName = 'Атакувано';

const
  ExceptEventsWarningColor = $00B0B0FF;
  ExceptEventsNormalizedColor = $00CAFFDB;
  
type
  TExceptEventTaskStates = 1..6;
  TExceptEventTaskStateNames = array[TExceptEventTaskStates] of string;

const
  MinExceptEventTaskStateCode = 1;
  MaxExceptEventTaskNotActivatedStateCode = 1;
  MinExceptEventTaskActivatedStateCode = 2;
  MaxExceptEventTaskActivatedStateCode = 4;

const
  ExceptEventTaskStateNames: TExceptEventTaskStateNames =
    ( SNotActivatedTask,
      SProblemEncounterTask,
      SActivatedTask,
      SPlanDatePassedTask,
      SClosedTask,
      SAnnuledTask
    );

  ExceptEventTaskStateAbbrevs: TExceptEventTaskStateNames =
    ( SNotActivatedAbbrevTask,
      SProblemEncounterAbbrevTask,
      SActivatedAbbrevTask,
      SPlanDatePassedAbbrevTask,
      SClosedAbbrevTask,
      SAnnuledAbbrevTask
    );

  ExceptEventTaskStateNumNames: TExceptEventTaskStateNames =
    ( SNumNotActivatedTask,
      SNumProblemEncounterTask,
      SNumActivatedTask,
      SNumPlanDatePassedTask,
      SNumClosedTask,
      SNumAnnuledTask
    );

type
  TExceptEventDamageAttackStates = 1..2;
  TExceptEventDamageAttackStateNames = array[TExceptEventDamageAttackStates] of string;

const
  ExceptEventDamageAttackStateNames: TExceptEventDamageAttackStateNames =
    ( SNormalized,
      SUnnormalized
    );

type
  TExceptEventDamageStates = 1..2;
  TExceptEventDamageStateNames = array[TExceptEventDamageStates] of string;

const
  ExceptEventDamageStateNames: TExceptEventDamageStateNames =
    ( SNormalized,
      SUnnormalized
    );

  ExceptEventDamageStateSingleLetters: TExceptEventDamageStateNames =
    ( SNormalizedSingleLetter,
      SUnnormalizedSingleLetter
    );

type
  TExceptEventStates = 1..8;
  TExceptEventStateNames = array[TExceptEventStates] of string;

const
  MinExceptEventStateCode = 1;
  MaxExceptEventNotActivatedStateCode = 3;
  MinExceptEventActivatedStateCode = 4;
  MaxExceptEventActivatedStateCode = 6;

const
  ExceptEventStateNames: TExceptEventStateNames =
    ( SDetectedExceptEvent,
      SCtrlAcceptedExceptEvent,
      SNotActivatedExceptEvent,
      SActivatedExceptEvent,
      SActivatedLateExceptEvent,
      STasksClosedExceptEvent,
      SClosedExceptEvent,
      SAnnuledExceptEvent
    );

  ExceptEventStateAbbrevs: TExceptEventStateNames =
    ( SDetectedAbbrevExceptEvent,
      SCtrlAcceptedAbbrevExceptEvent,
      SNotActivatedAbbrevExceptEvent,
      SActivatedAbbrevExceptEvent,
      SActivatedLateAbbrevExceptEvent,
      STasksClosedAbbrevExceptEvent,
      SClosedAbbrevExceptEvent,
      SAnnuledAbbrevExceptEvent
    );

  ExceptEventStateNumNames: TExceptEventStateNames =
    ( SNumDetectedExceptEvent,
      SNumCtrlAcceptedExceptEvent,
      SNumNotActivatedExceptEvent,
      SNumActivatedExceptEvent,
      SNumActivatedLateExceptEvent,
      SNumTasksClosedExceptEvent,
      SNumClosedExceptEvent,
      SNumAnnuledExceptEvent
    );
  
type
  TExceptEventDamageProcessType = (eedptNone, eedptMaterialListLine, eedptDelivery, eedptSaleShipment);
  TExceptEventGenType = (eegtEnvironment, eegtSales, eegtProduction, eegtDeliveries, eegtFinancial);
  TExceptEventLevel = (eelInformative, eelMinimal, eelNormal);

procedure InitializeComboBoxWithExceptEventTaskStates(const AComboBox: TJvDBComboBox; ANumbered: Boolean); overload;
procedure InitializeComboBoxWithExceptEventTaskStates(const AComboBox: TDBComboBoxEh; ANumbered: Boolean); overload;

procedure InitializeComboBoxWithExceptEventStates(const AComboBox: TJvDBComboBox; ANumbered: Boolean); overload;
procedure InitializeComboBoxWithExceptEventStates(const AComboBox: TDBComboBoxEh; ANumbered: Boolean); overload;

function IntToExceptEventDamageProcessType(AValue: Integer): TExceptEventDamageProcessType;
function ExceptEventDamageProcessTypeToInt(AValue: TExceptEventDamageProcessType): Integer;

function IntToExceptEventGenType(AValue: Integer): TExceptEventGenType;
function ExceptEventGenTypeToInt(AValue: TExceptEventGenType): Integer;

function IntToExceptEventLevel(AValue: Integer): TExceptEventLevel;
function ExceptEventLevelToInt(AValue: TExceptEventLevel): Integer;

procedure FillDataSetWithProcessTypeDamagedStates(ADataSet: TDataSet);
procedure ProcessDamgedStateFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
procedure DamagesStateColumnBackground(AField: TField; var Background: TColor); overload;
procedure DamagesStateColumnBackground(ADamagesState: Integer; var Background: TColor); overload;

type
  TExceptEventPositionFilter = (eepfAll, eepfYes, eepfNo);

function IntToExceptEventPositionFilter(AValue: Integer): TExceptEventPositionFilter;
function ExceptEventPositionFilterToInt(AValue: TExceptEventPositionFilter): Integer;

type
  TExceptEventPositionFilterFieldHelper = class helper (TFieldHelper) for TField
  private
    function GetAsExceptEventPositionFilter: TExceptEventPositionFilter;
    procedure SetAsExceptEventPositionFilter(const Value: TExceptEventPositionFilter);
  public
    property AsExceptEventPositionFilter: TExceptEventPositionFilter read GetAsExceptEventPositionFilter write SetAsExceptEventPositionFilter;
  end;

type
  TEETaskResolveType = (eetrtNormal, eetrtSingleResolve);

function IntToEETaskResolveType(AValue: Integer): TEETaskResolveType;
function EETaskResolveTypeToInt(AValue: TEETaskResolveType): Integer;

type
  TEETaskResolveTypeFieldHelper = class helper (TExceptEventPositionFilterFieldHelper) for TField
  private
    function GetAsEETaskResolveType: TEETaskResolveType;
    procedure SetAsEETaskResolveType(const Value: TEETaskResolveType);
  public
    property AsEETaskResolveType: TEETaskResolveType read GetAsEETaskResolveType write SetAsEETaskResolveType;
  end;

implementation

uses
  SysUtils, Math;

procedure FillDataSetWithProcessTypeDamagedStates(ADataSet: TDataSet);
type
  TNomItem = record
    Code: Integer;
    Abbrev: string;
    Name: string;
  end;

const
  ProcessTypeDamagedStatesValues: array[1..3] of TNomItem = (
    (Code: -1; Abbrev: SNotDamagedAbbrev; Name: SNotDamagedName),
    (Code: 1; Abbrev: SDamagedNormalizedAbbrev; Name: SDamagedNormalizedName),
    (Code: 2; Abbrev: SDamagedUnnormalizedAbbrev; Name: SDamagedUnnormalizedName)
  );

var
  NomItem: TNomItem;
begin
  for NomItem in ProcessTypeDamagedStatesValues do
    with NomItem do
      ADataSet.AppendRecord([Code, Abbrev, Name]);
end;

function GetExceptEventTaskStateNames(ANumbered: Boolean): TExceptEventTaskStateNames;
begin
  if ANumbered then
    Result:= ExceptEventTaskStateNumNames
  else
    Result:= ExceptEventTaskStateNames;
end;

function GetExceptEventStateNames(ANumbered: Boolean): TExceptEventStateNames;
begin
  if ANumbered then
    Result:= ExceptEventStateNumNames
  else
    Result:= ExceptEventStateNames;
end;

procedure InitializeComboBoxWithExceptEventTaskStates(const AComboBox: TDBComboBoxEh; ANumbered: Boolean); overload;
var
  i: Integer;
  ExceptEventTaskStateNames: TExceptEventTaskStateNames;
begin
  AComboBox.Items.Clear;
  AComboBox.KeyItems.Clear;

  ExceptEventTaskStateNames:= GetExceptEventTaskStateNames(ANumbered);
  for i:= Low(ExceptEventTaskStateNames) to High(ExceptEventTaskStateNames) do
    begin
      AComboBox.Items.Add(ExceptEventTaskStateNames[i]);
      AComboBox.KeyItems.Add(IntToStr(i));
    end;  { for }
end;

procedure InitializeComboBoxWithExceptEventTaskStates(const AComboBox: TJvDBComboBox; ANumbered: Boolean); overload;
var
  i: Integer;
  ExceptEventTaskStateNames: TExceptEventTaskStateNames;
begin
  AComboBox.Items.Clear;
  AComboBox.Values.Clear;

  ExceptEventTaskStateNames:= GetExceptEventTaskStateNames(ANumbered);
  for i:= Low(ExceptEventTaskStateNames) to High(ExceptEventTaskStateNames) do
    begin
      AComboBox.Items.Add(ExceptEventTaskStateNames[i]);
      AComboBox.Values.Add(IntToStr(i));
    end;  { for }
end;

procedure InitializeComboBoxWithExceptEventStates(const AComboBox: TDBComboBoxEh; ANumbered: Boolean); overload;
var
  i: Integer;
  ExceptEventStateNames: TExceptEventStateNames;
begin
  AComboBox.Items.Clear;
  AComboBox.KeyItems.Clear;

  ExceptEventStateNames:= GetExceptEventStateNames(ANumbered);
  for i:= Low(ExceptEventStateNames) to High(ExceptEventStateNames) do
    begin
      AComboBox.Items.Add(ExceptEventStateNames[i]);
      AComboBox.KeyItems.Add(IntToStr(i));
    end;  { for }
end;

procedure InitializeComboBoxWithExceptEventStates(const AComboBox: TJvDBComboBox; ANumbered: Boolean); overload;
var
  i: Integer;
  ExceptEventStateNames: TExceptEventStateNames;
begin
  AComboBox.Items.Clear;
  AComboBox.Values.Clear;

  ExceptEventStateNames:= GetExceptEventStateNames(ANumbered);
  for i:= Low(ExceptEventStateNames) to High(ExceptEventStateNames) do
    begin
      AComboBox.Items.Add(ExceptEventStateNames[i]);
      AComboBox.Values.Add(IntToStr(i));
    end;  { for }
end;

function IntToExceptEventDamageProcessType(AValue: Integer): TExceptEventDamageProcessType;
begin
  case AValue of
    0: Result:= eedptNone;
    1: Result:= eedptMaterialListLine;
    2: Result:= eedptDelivery;
    3: Result:= eedptSaleShipment;
  else
    raise Exception.Create('Unknown ExceptEventDamageProcessType code');
  end;  { case }
end;

function ExceptEventDamageProcessTypeToInt(AValue: TExceptEventDamageProcessType): Integer;
begin
  case AValue of
    eedptNone: Result:= 0;
    eedptMaterialListLine: Result:= 1;
    eedptDelivery: Result:= 2;
    eedptSaleShipment: Result:= 3;
  else
    raise Exception.Create('Unknown ExceptEventDamageProcessType');
  end;  { case }
end;

function IntToExceptEventGenType(AValue: Integer): TExceptEventGenType;
begin
  case AValue of
    1: Result:= eegtEnvironment;
    2: Result:= eegtSales;
    3: Result:= eegtProduction;
    4: Result:= eegtDeliveries;
    5: Result:= eegtFinancial;
  else
    raise Exception.Create('Unknown ExceptEventGenType code');
  end;  { case }
end;

function ExceptEventGenTypeToInt(AValue: TExceptEventGenType): Integer;
begin
  case AValue of
    eegtEnvironment: Result:= 1;
    eegtSales: Result:= 2;
    eegtProduction: Result:= 3;
    eegtDeliveries: Result:= 4;
    eegtFinancial: Result:= 5;
  else
    raise Exception.Create('Unknown ExceptEventGenType');
  end;  { case }
end;

function IntToExceptEventLevel(AValue: Integer): TExceptEventLevel;
begin
  case AValue of
    1: Result:= eelInformative;
    2: Result:= eelMinimal;
    3: Result:= eelNormal;
  else
    raise Exception.Create('Unknown ExceptEventLevel code');
  end;  { case }
end;

function ExceptEventLevelToInt(AValue: TExceptEventLevel): Integer;
begin
  case AValue of
    eelInformative: Result:= 1;
    eelMinimal: Result:= 2;
    eelNormal: Result:= 3;
  else
    raise Exception.Create('Unknown ExceptEventLevel');
  end;  { case }
end;

procedure ProcessDamgedStateFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if DisplayText and
     InRange(Sender.AsInteger, Low(ExceptEventDamageStateSingleLetters), High(ExceptEventDamageStateSingleLetters)) then
    Text:= ExceptEventDamageStateSingleLetters[Sender.AsInteger]
  else
    Text:= Sender.AsString;
end;

procedure DamagesStateColumnBackground(ADamagesState: Integer; var Background: TColor);
const
  DamageStateColumnColors: array[TExceptEventDamageStates] of TColor =
    ( ExceptEventsNormalizedColor,
      ExceptEventsWarningColor
    );
begin
  if InRange(ADamagesState, Low(DamageStateColumnColors), High(DamageStateColumnColors)) then
    Background:= DamageStateColumnColors[ADamagesState];
end;

procedure DamagesStateColumnBackground(AField: TField; var Background: TColor);
begin
  Assert(Assigned(AField));
  DamagesStateColumnBackground(AField.AsInteger, Background);
end;

function IntToExceptEventPositionFilter(AValue: Integer): TExceptEventPositionFilter;
begin
  case AValue of
    1: Result:= eepfAll;
    2: Result:= eepfYes;
    3: Result:= eepfNo;
  else
    raise Exception.Create('Unknown ExceptEventPositionFilter code');
  end;
end;

function ExceptEventPositionFilterToInt(AValue: TExceptEventPositionFilter): Integer;
begin
  case AValue of
    eepfAll: Result:= 1;
    eepfYes: Result:= 2;
    eepfNo: Result:= 3;
  else
    raise Exception.Create('Unknown ExceptEventPositionFilter');
  end;
end;

{ TExceptEventPositionFilterFieldHelper }

function TExceptEventPositionFilterFieldHelper.GetAsExceptEventPositionFilter: TExceptEventPositionFilter;
begin
  Result:= IntToExceptEventPositionFilter(AsInteger);
end;

procedure TExceptEventPositionFilterFieldHelper.SetAsExceptEventPositionFilter(const Value: TExceptEventPositionFilter);
begin
  AsInteger:= ExceptEventPositionFilterToInt(Value);
end;

function IntToEETaskResolveType(AValue: Integer): TEETaskResolveType;
begin
  case AValue of
    1: Result:= eetrtNormal;
    2: Result:= eetrtSingleResolve;
    else
      raise Exception.Create('Unknown EETaskResolveType code');
  end;
end;

function EETaskResolveTypeToInt(AValue: TEETaskResolveType): Integer;
begin
  case AValue of
    eetrtNormal: Result:= 1;
    eetrtSingleResolve: Result:= 2;
  else
    raise Exception.Create('Unknown EETaskResolveType');
  end;
end;

{ TEETaskResolveTypeFieldHelper }

function TEETaskResolveTypeFieldHelper.GetAsEETaskResolveType: TEETaskResolveType;
begin
  Result:= IntToEETaskResolveType(AsInteger);
end;

procedure TEETaskResolveTypeFieldHelper.SetAsEETaskResolveType(const Value: TEETaskResolveType);
begin
  AsInteger:= EETaskResolveTypeToInt(Value);
end;

end.
