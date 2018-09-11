unit uObjParams;

interface

uses
  Classes, uUtils, JvDBCombobox, uServerConfigRepository;

type
  TAccessBanType = (abtNone, abtBlockNewOnly, abtBlockConnections, abtBlockClients);

type
  TAccessBan = class(TObject)
  strict private
    FDBName: string;
    FAccessBanType: TAccessBanType;
    FLockMessage: string;
  public
    constructor Create(const ADBName: string; AAccessBanType: TAccessBanType; ALockMessage: string);
    property DBName: string read FDBName;
    property AccessBanType: TAccessBanType read FAccessBanType;
    property LockMessage: string read FLockMessage;
  end;

function GetParamDefaultValue(const AParamName: string): string;

procedure AssignDefaultParamsTo(const AStrings: TStrings; const AParams: array of string);

function AccessBanTypeToInt(const Value: TAccessBanType): Integer;
function IntToAccessBanType(const Value: Integer): TAccessBanType;

procedure FillComboBoxWithAccessBanTypes(AComboBox: TJvDBComboBox; AAddAccessBanTypeNone: Boolean = True);

procedure LoadObjParams(
  const AObjParams: TStrings;
  const AObjName: string;
  const AParamNames: array of string;
  const ARegistryKey: string);

procedure SaveObjParams(
  const AObjParams: TStrings;
  const AObjName: string;
  const AParamNames: TStringArray;
  const ARegistryKey: string);

const
  SMaxCountParamName = 'MaxCount';
  STimeoutParamName = 'Timeout';

  SOraDirectConnectionType = 'direct';
  SOraClientConnectionType = 'oci';

  SDefaultDBName = 'dev';
  DefaultDatasnapPort = 215;
  DefaultHttpPort = 280;
  DefaultVersionHttpPort = 2080;

  SConfigChangeDateTimeParamName = 'ConfigChangeDateTime';
  SAccessBanChangeDateTimeParamName = 'AccessBanChangeDateTime';

const
  DBObjParamNames: array[1..6] of string = (
    SDBConnectionTypeParamName,
    SDBHostParamName,
    SDBPortParamName,
    SDBServiceParamName,
    SDBUserParamName,
    SDBPasswordParamName
  );

implementation

uses
  SysUtils, uSvrUtils, Registry, Windows, uSvrApp, uSvrHostingUtils;

resourcestring
  SAccessBanNone = 'None';
  SAccessBanBlockNewOnly = 'Block new sessions only';
  SAccessBanBlockConnections = 'Block new sessions and suspend existing';
  SAccessBanBlockClients = 'Block new sessions and kill existing';

const
  PowerUsersDelimiter = ',';

  AccessBanTypeStrings: array[TAccessBanType] of string = (
    SAccessBanNone,
    SAccessBanBlockNewOnly,
    SAccessBanBlockConnections,
    SAccessBanBlockClients
  );

var
  DefaultParams: TStringList;

procedure AssignDefaultParamsTo(const AStrings: TStrings; const AParams: array of string);
var
  p: string;
begin
  for p in AParams do
    AStrings.Values[p]:= GetParamDefaultValue(p);
end;

function GetParamDefaultValue(const AParamName: string): string;
begin
  Result:= DefaultParams.Values[AParamName];
end;

procedure SetParamDefaultValue(const AParamName, AValue: string);
begin
  // tazi funkcia triabva da s evika samo v initializationa, tui kato niama critical section
  DefaultParams.Values[AParamName]:= AValue;
end;

function AccessBanTypeToInt(const Value: TAccessBanType): Integer;
const
  AccessBanTypes: array[TAccessBanType] of Integer = (0, 1, 2, 3);
begin
  Result:= AccessBanTypes[Value];
end;

function IntToAccessBanType(const Value: Integer): TAccessBanType;
begin
  case Value of
    0: Result:= abtNone;
    1: Result:= abtBlockNewOnly;
    2: Result:= abtBlockConnections;
    3: Result:= abtBlockClients;
  else
    raise Exception.Create('Invalid AccessBanType');
  end;
end;

procedure FillComboBoxWithAccessBanTypes(AComboBox: TJvDBComboBox; AAddAccessBanTypeNone: Boolean = True);
var
  abt: TAccessBanType;
  Start: TAccessBanType;
begin
  Start:= Low(TAccessBanType);
  if not AAddAccessBanTypeNone then
    Start:= Succ(Start);

  for abt:= Start to High(TAccessBanType) do
    begin
      AComboBox.Items.Add(AccessBanTypeStrings[abt]);
      AComboBox.Values.Add(IntToStr(AccessBanTypeToInt(abt)));
    end;  { for }
end;

procedure LoadObjParams(
  const AObjParams: TStrings;
  const AObjName: string;
  const AParamNames: array of string;
  const ARegistryKey: string);
var
  r: TRegistry;
  ValueNameList: TStringList;
  n, v: string;
begin
  Assert(AObjName <> '');

  AObjParams.BeginUpdate;
  try
    AObjParams.Clear;
    AssignDefaultParamsTo(AObjParams, AParamNames);  // LoadDefaultObjParams;

    ValueNameList:= TStringList.Create;
    try
      r:= TRegistry.Create(KEY_READ);
      try
        r.RootKey:= HKEY_LOCAL_MACHINE;
        if r.OpenKey(ARegistryKey + '\' + AObjName, False) then
          try
            r.GetValueNames(ValueNameList);

            for n in ValueNameList do
              begin
                v:= r.ReadString(n);
                if (v <> '') then
                  AObjParams.Values[n]:= v;
              end;  { for }
          finally
            r.CloseKey;
          end;  { try }
      finally
        FreeAndNil(r);
      end;  { try }
    finally
      FreeAndNil(ValueNameList);
    end;  { try }
  finally
    AObjParams.EndUpdate;
  end;  { try }
end;

procedure SaveObjParams(
  const AObjParams: TStrings;
  const AObjName: string;
  const AParamNames: TStringArray;
  const ARegistryKey: string);
var
  r: TRegistry;
  s: string;
  pn: TStringArray;
begin
  Assert(AObjName <> '');

  r:= TRegistry.Create;
  try
    r.RootKey:= HKEY_LOCAL_MACHINE;

    if r.OpenKey(ARegistryKey + '\' + AObjName, True) then
      try
        pn:= AParamNames;
        for s in pn do
          r.WriteString(s, AObjParams.Values[s]);
      finally
        r.CloseKey;
      end  { try }
    else
      raise Exception.Create('Registry key ' + ARegistryKey + '\' + AObjName + ' cannot be opened or created');
  finally
    FreeAndNil(r);
  end;  { try }
end;

{ TAccessBan }

constructor TAccessBan.Create(
  const ADBName: string;
  AAccessBanType: TAccessBanType;
  ALockMessage: string);
begin
  inherited Create;
  FDBName:= ADBName;
  FAccessBanType:= AAccessBanType;
  FLockMessage:= ALockMessage;
end;

initialization
  DefaultParams:= TStringList.Create;

  SetParamDefaultValue(SMaxCountParamName, '20');
  SetParamDefaultValue(STimeoutParamName, '15000');

  SetParamDefaultValue(SDBConnectionTypeParamName, SOraDirectConnectionType);
  SetParamDefaultValue(SDBHostParamName, 'localhost');
  SetParamDefaultValue(SDBPortParamName, '1521');
  SetParamDefaultValue(SDBServiceParamName, 'orc2');
  SetParamDefaultValue(SDBUserParamName, 'dev');
  SetParamDefaultValue(SDBPasswordParamName, '1');

finalization
  FreeAndNil(DefaultParams);
end.
