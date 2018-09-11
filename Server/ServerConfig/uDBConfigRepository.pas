unit uDBConfigRepository;

interface

uses
  uUtils,
  uObjParams;

function GetConfiguredDBNames: TStringArray;
function GetConfiguredDBAccessBanType(const ADBName: string): TAccessBanType;
function GetConfiguredDBAccessBanMessage(const ADBName: string): string;
function GetConfiguredDBIsReadOnly(const ADBName: string): Boolean;
function GetConfiguredDBIsTest(const ADBName: string): Boolean;
function GetConfiguredDBContentStorageContainerName(const ADBName: string): string;

implementation

uses
  System.Classes,
  System.SysUtils,
  System.Win.Registry,
  Winapi.Windows, uServerConfig, uServerConfigRepository;

{ Routines }

function GetConfiguredDBNames: TStringArray;
var
  i: Integer;
begin
  SetLength(Result, Length(GetStartupServerConfig.Connections));
  for i:= Low(Result) to High(Result) do
    Result[i]:= GetStartupServerConfig.Connections[i].DBConnectionName;
end;

function GetConfiguredDBAccessBanType(const ADBName: string): TAccessBanType;
var
  ServerConnectionConfig: TServerConnectionConfig;
begin
  Result:= abtNone;

  for ServerConnectionConfig in GetStartupServerConfig.Connections do
    if (ServerConnectionConfig.DBConnectionName = ADBName) then
      Exit(IntToAccessBanType(ServerConnectionConfig.AccessBanType));
end;

function GetConfiguredDBAccessBanMessage(const ADBName: string): string;
var
  ServerConnectionConfig: TServerConnectionConfig;
begin
  Result:= '';

  for ServerConnectionConfig in GetStartupServerConfig.Connections do
    if (ServerConnectionConfig.DBConnectionName = ADBName) then
      Exit(ServerConnectionConfig.LockMessage);
end;

function GetConfiguredDBIsReadOnly(const ADBName: string): Boolean;
var
  ServerConnectionConfig: TServerConnectionConfig;
begin
  Result:= False;

  for ServerConnectionConfig in GetStartupServerConfig.Connections do
    if (ServerConnectionConfig.DBConnectionName = ADBName) then
      Exit(ServerConnectionConfig.IsReadOnlyDB);
end;

function GetConfiguredDBIsTest(const ADBName: string): Boolean;
var
  ServerConnectionConfig: TServerConnectionConfig;
begin
  Result:= False;

  for ServerConnectionConfig in GetStartupServerConfig.Connections do
    if (ServerConnectionConfig.DBConnectionName = ADBName) then
      Exit(ServerConnectionConfig.IsTestDB);
end;

function GetConfiguredDBContentStorageContainerName(const ADBName: string): string;
var
  ServerConnectionConfig: TServerConnectionConfig;
begin
  Result:= '';

  for ServerConnectionConfig in GetStartupServerConfig.Connections do
    if (ServerConnectionConfig.DBConnectionName = ADBName) then
      Exit(ServerConnectionConfig.ContentStorageContainerName);
end;

end.
