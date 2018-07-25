unit uServerConfigRepository;

interface

uses
  uUtils,
  uObjParams;

type
  TServerConfig = record
  strict private
    FDatasnapPort: Integer;
    FHttpPort: Integer;
    FVersionHttpPort: Integer;
    FServerCallsLogDirectory: string;
    FServerCallsAsyncLogging: Boolean;
    FLockOtherComputersSessions: Boolean;
    FComputerSwitchTimeoutMinutes: Integer;
  public
    constructor Create(
      ADatasnapPort: Integer;
      AHttpPort: Integer;
      AVersionHttpPort: Integer;
      const AServerCallsLogDirectory: string;
      AServerCallsAsyncLogging: Boolean;
      ALockOtherComputersSessions: Boolean;
      AComputerSwitchTimeoutMinutes: Integer);

    property DatasnapPort: Integer read FDatasnapPort;
    property HttpPort: Integer read FHttpPort;
    property VersionHttpPort: Integer read FVersionHttpPort;
    property ServerCallsLogDirectory: string read FServerCallsLogDirectory;
    property ServerCallsAsyncLogging: Boolean read FServerCallsAsyncLogging;
    property LockOtherComputersSessions: Boolean read FLockOtherComputersSessions;
    property ComputerSwitchTimeoutMinutes: Integer read FComputerSwitchTimeoutMinutes;
  end;

function GetServerConfig: TServerConfig;

implementation

uses
  System.Classes,
  System.SysUtils,
  System.Win.Registry,
  Winapi.Windows;

{ Routines }

function GetServerConfig: TServerConfig;
var
  r: TRegistry;
begin
  r:= TRegistry.Create(KEY_READ);
  try
    r.RootKey:= HKEY_LOCAL_MACHINE;

    if r.OpenKey(GetBaseConfigKey, False) then
      try
        Result:=
          TServerConfig.Create(
            StrToIntDef(r.ReadStringDef(SDatasnapPortParamName), 0),
            StrToIntDef(r.ReadStringDef(SHttpPortParamName), 0),
            StrToIntDef(r.ReadStringDef(SVersionHttpPortParamName), 0),
            r.ReadStringDef(SServerCallsLogDirectoryParamName),
            (r.ReadStringDef(SServerCallsAsyncLoggingParamName) = '1'),
            (r.ReadStringDef(SLockOtherComputersSessionsParamName) = '1'),
            StrToIntDef(r.ReadStringDef(SComputerSwitchTimeoutMinutesParamName), 0));
      finally
        r.CloseKey;
      end;  { try }
  finally
    FreeAndNil(r);
  end;  { try }
end;

{ TServerConfig }

constructor TServerConfig.Create(
  ADatasnapPort, AHttpPort, AVersionHttpPort: Integer;
  const AServerCallsLogDirectory: string;
  AServerCallsAsyncLogging, ALockOtherComputersSessions: Boolean;
  AComputerSwitchTimeoutMinutes: Integer);
begin
  FDatasnapPort:= ADatasnapPort;
  FHttpPort:= AHttpPort;
  FVersionHttpPort:= AVersionHttpPort;
  FServerCallsLogDirectory:= AServerCallsLogDirectory;
  FServerCallsAsyncLogging:= AServerCallsAsyncLogging;
  FLockOtherComputersSessions:= ALockOtherComputersSessions;
  FComputerSwitchTimeoutMinutes:= AComputerSwitchTimeoutMinutes;
end;

end.
