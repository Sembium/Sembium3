unit uConnectionUtils;

interface

uses
  DB, Classes, SqlExpr, uIdentityServer.Constants;

type
  TAuthenticationTokenIssuer =
    (
      atiProductionIdentityServer4a,
      atiDevIdentityServer4a,
      atiProductionIdentityServer4b,
      atiDevIdentityServer4b
    );

const
  atiIdentityServers = [
    atiProductionIdentityServer4a,
    atiDevIdentityServer4a,
    atiProductionIdentityServer4b,
    atiDevIdentityServer4b];

  atiIdentityServers4 = [
    atiProductionIdentityServer4a,
    atiDevIdentityServer4a,
    atiProductionIdentityServer4b,
    atiDevIdentityServer4b];

  atiProductionIdentityServers = [
    atiProductionIdentityServer4a,
    atiProductionIdentityServer4b];

  atiDevIdentityServers = [
    atiProductionIdentityServer4a,
    atiProductionIdentityServer4b];

type
  TCustomConnectionClass = class of TCustomConnection;

function GetConnection(const AConnectionParam: string; AConnections: array of TCustomConnection): TCustomConnection;
function GetCommunicationProtocol(const AConnectionParam: string): string;
function GetConnectionIdentifier(AConnection: TCustomConnection): string;
function GetAuthenticationTokenIssuer(const AAuthenticationTypeParamValue: string): TAuthenticationTokenIssuer;

function HostOf(const s: string): string;
function PortOf(const s: string; ADefaultPort: Integer): Integer;

procedure SetDSProviderConnectionsSQLConnection(ADataModule: TDataModule; AConnection: TSQLConnection);

function GetIdentityServerEndpoints(AAuthenticationTokenIssuer: TAuthenticationTokenIssuer): TIdentityServerEndpoints;
function GetIdentityServerLoginName(ALoginName, ADBName: string; AAuthenticationTokenIssuer: TAuthenticationTokenIssuer): string;
function GetAuthenticationTokenPrefix(AAuthenticationTokenIssuer: TAuthenticationTokenIssuer): string;
function GetAuthenticationTokenIssuerDisplayAbbrev(AAuthenticationTokenIssuer: TAuthenticationTokenIssuer): string;

type
  TConnectionPropertyNames = class
  public
    const ClientSessionGuid = 'ClientSessionGuid';
    const ComputerName = 'ComputerName';
    const WindowsUserName = 'WindowsUserName';
    const WindowsSessionId = 'WindowsSessionId';
    const WindowsVersion = 'WindowsVersion';
    const SystemLocale = 'SystemLocale';
    const SysVolumeSerialNumber = 'SysVolumeSerialNumber';
    const HardwareInfo = 'HardwareInfo';
    const StartupContextDateOverride = 'StartupContextDateOverride';
    const IsSessionReadOnly = 'IsSessionReadOnly';
    const AuthenticationToken = 'AuthenticationToken';
    const LoginName = 'LoginName';
    const DBName = 'DBName';
    const ConnectionPurpose = 'ConnectionPurpose';
    const ExeVersion = 'ExeVersion';
  end;

  TConnectionPurposeValues = class
  public
    const Ping = 'Ping';
    const Main = 'Main';
  end;

const
  DatasnapConnectionParam = 'datasnap';
  HttpConnectionParam = 'http';

const
  TempAuthenticationTokenPrefix = 'TempAuthToken:';
  DevIdentityServer4aAuthenticationTokenPrefix = 'DevIS4aAuthToken:';
  ProductionIdentityServer4aAuthenticationTokenPrefix = 'IS4aAuthToken:';
  DevIdentityServer4bAuthenticationTokenPrefix = 'DevIS4bAuthToken:';
  ProductionIdentityServer4bAuthenticationTokenPrefix = 'IS4bAuthToken:';

implementation

uses
  SysUtils, uUtils, DSConnect, DBXCommon;

function GetConnection(const AConnectionParam: string; AConnections: array of TCustomConnection): TCustomConnection;
var
  Connection: TCustomConnection;
  ConnectionClass: TCustomConnectionClass;
begin
  Result:= nil;
  ConnectionClass:= nil;

  if SameText(AConnectionParam, DatasnapConnectionParam) or
     SameText(AConnectionParam, HttpConnectionParam)  then
    ConnectionClass:= TSQLConnection;

  for Connection in AConnections do
    if (Connection is ConnectionClass) then
      Exit(Connection);

  if not Assigned(Result) then
    raise Exception.Create('Unknown connection type');
end;

function GetCommunicationProtocol(const AConnectionParam: string): string;
begin
  if SameText(AConnectionParam, DatasnapConnectionParam) then
    Exit('Abmesid');

  if SameText(AConnectionParam, HttpConnectionParam)  then
    Exit('http');

  Result:= '';
end;

function GetAuthenticationTokenIssuer(const AAuthenticationTypeParamValue: string): TAuthenticationTokenIssuer;
begin
  if SameText(AAuthenticationTypeParamValue, 'identity4a') then
    Exit(atiProductionIdentityServer4a);

  if SameText(AAuthenticationTypeParamValue, 'devidentity4a') then
    Exit(atiDevIdentityServer4a);

  if SameText(AAuthenticationTypeParamValue, 'identity4b') then
    Exit(atiProductionIdentityServer4b);

  if SameText(AAuthenticationTypeParamValue, 'devidentity4b') then
    Exit(atiDevIdentityServer4b);

  raise Exception.Create('Unsupported AuthenticationTypeParamValue: ' + AAuthenticationTypeParamValue);
end;

function GetConnectionIdentifier(AConnection: TCustomConnection): string;
const
  SDatasnapConnection = '%dd';
begin
  if (AConnection is TSQLConnection) then
      Exit(
        Format(
          SDatasnapConnection,
          [(AConnection as TSQLConnection).ConnectionData.Properties.GetInteger(TDBXPropertyNames.Port)]
        )
      );

  raise Exception.Create('Unknown connection class');
end;

function HostOf(const s: string): string;
var
  p: Integer;
begin
  p:= Pos(':', s);
  if (p > 0) then
    Result:= Copy(s, 1, p-1)
  else
    Result:= s;
end;

function PortOf(const s: string; ADefaultPort: Integer): Integer;
var
  p: Integer;
begin
  p:= Pos(':', s);
  if (p > 0) then
    Result:= StrToInt(Copy(s, p+1, Length(s)- p))
  else
    Result:= ADefaultPort;
end;

procedure SetDSProviderConnectionsSQLConnection(ADataModule: TDataModule; AConnection: TSQLConnection);
var
  c: TDSProviderConnection;
begin
  for c in ADataModule.AllComponents.OfType<TDSProviderConnection> do
    c.SQLConnection:= AConnection as TSQLConnection;
end;

function GetIdentityServerEndpoints(AAuthenticationTokenIssuer: TAuthenticationTokenIssuer): TIdentityServerEndpoints;
begin
  case AAuthenticationTokenIssuer of
    atiProductionIdentityServer4a:
      Result:= ProductionIdentityServer4aEndpoints;
    atiDevIdentityServer4a:
      Result:= DevIdentityServer4aEndpoints;

    atiProductionIdentityServer4b:
      Result:= ProductionIdentityServer4bEndpoints;
    atiDevIdentityServer4b:
      Result:= DevIdentityServer4bEndpoints;
  else
    raise Exception.Create('Unsupported authentication token issuer');
  end;
end;

function GetIdentityServerLoginName(ALoginName, ADBName: string; AAuthenticationTokenIssuer: TAuthenticationTokenIssuer): string;
begin
  if (AAuthenticationTokenIssuer in atiIdentityServers4) then
    Exit(ALoginName);

  raise Exception.Create('Unsupported authentication token issuer');
end;

function GetAuthenticationTokenPrefix(AAuthenticationTokenIssuer: TAuthenticationTokenIssuer): string;
begin
  case AAuthenticationTokenIssuer of
    atiProductionIdentityServer4a:
      Result:= ProductionIdentityServer4aAuthenticationTokenPrefix;
    atiDevIdentityServer4a:
      Result:= DevIdentityServer4aAuthenticationTokenPrefix;

    atiProductionIdentityServer4b:
      Result:= ProductionIdentityServer4bAuthenticationTokenPrefix;
    atiDevIdentityServer4b:
      Result:= DevIdentityServer4bAuthenticationTokenPrefix;
  else
    raise Exception.Create('Unsupported authentication token issuer type');
  end;
end;

function GetAuthenticationTokenIssuerDisplayAbbrev(AAuthenticationTokenIssuer: TAuthenticationTokenIssuer): string;
begin
  case AAuthenticationTokenIssuer of
    atiProductionIdentityServer4a:
      Result:= 'i4a';
    atiDevIdentityServer4a:
      Result:= 'di4a';

    atiProductionIdentityServer4b:
      Result:= 'i4b';
    atiDevIdentityServer4b:
      Result:= 'di4b';
  else
    raise Exception.Create('Unsupported authentication token issuer type');
  end;
end;

end.
