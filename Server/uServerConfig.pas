unit uServerConfig;

interface

type
  TServerConnectionConfig = class
  strict private
    FDBConnectionName: string;
    FDBConnectionType: string;
    FDBHost: string;
    FDBPort: string;
    FDBService: string;
    FDBUser: string;
    FDBPassword: string;
    FAccessBanType: Integer;
    FLockMessage: string;
    FOrderNo: Integer;
    FIsReadOnlyDB: Boolean;
    FIsTestDB: Boolean;
    FContentStorageContainerName: string;
  public
    constructor Create(
      const ADBConnectionName: string;
      const ADBConnectionType: string;
      const ADBHost: string;
      const ADBPort: string;
      const ADBService: string;
      const ADBUser: string;
      const ADBPassword: string;
      const AAccessBanType: Integer;
      const ALockMessage: string;
      const AOrderNo: Integer;
      const AIsReadOnlyDB: Boolean;
      const AIsTestDB: Boolean;
      const AContentStorageContainerName: string
    );

    property DBConnectionName: string read FDBConnectionName write FDBConnectionName;
    property DBConnectionType: string read FDBConnectionType write FDBConnectionType;
    property DBHost: string read FDBHost write FDBHost;
    property DBPort: string read FDBPort write FDBPort;
    property DBService: string read FDBService write FDBService;
    property DBUser: string read FDBUser write FDBUser;
    property DBPassword: string read FDBPassword write FDBPassword;
    property AccessBanType: Integer read FAccessBanType write FAccessBanType;
    property LockMessage: string read FLockMessage write FLockMessage;
    property OrderNo: Integer read FOrderNo write FOrderNo;
    property IsReadOnlyDB: Boolean read FIsReadOnlyDB write FIsReadOnlyDB;
    property IsTestDB: Boolean read FIsTestDB write FIsTestDB;
    property ContentStorageContainerName: string read FContentStorageContainerName write FContentStorageContainerName;
  end;

  TServerDataModuleConfig = class
  strict private
    FName: string;
    FMaxCount: string;
    FTimeout: string;
  public
    constructor Create(
      const AName: string;
      const AMaxCount: string;
      const ATimeout: string);

    property Name: string read FName write FName;
    property MaxCount: string read FMaxCount write FMaxCount;
    property Timeout: string read FTimeout write FTimeout;
  end;

  TServerConfig = class
  strict private
    FDatasnapPort: Integer;
    FHttpPort: Integer;
    FVersionHttpPort: Integer;
    FServerCallsLogDirectory: string;
    FServerCallsAsyncLogging: Boolean;
    FLockOtherComputersSessions: Boolean;
    FComputerSwitchTimeoutMinutes: Integer;
    FConnections: TArray<TServerConnectionConfig>;
    FDataModules: TArray<TServerDataModuleConfig>;
  public
    constructor Create;
    destructor Destroy; override;

    procedure AddConnection(AServerConnectionConfig: TServerConnectionConfig);
    function TryGetConnection(const ADBConnectionName: string): TServerConnectionConfig;

    procedure AddDataModule(AServerDataModuleConfig: TServerDataModuleConfig);

    property DatasnapPort: Integer read FDatasnapPort write FDatasnapPort;
    property HttpPort: Integer read FHttpPort write FHttpPort;
    property VersionHttpPort: Integer read FVersionHttpPort write FVersionHttpPort;
    property ServerCallsLogDirectory: string read FServerCallsLogDirectory write FServerCallsLogDirectory;
    property ServerCallsAsyncLogging: Boolean read FServerCallsAsyncLogging write FServerCallsAsyncLogging default True;
    property LockOtherComputersSessions: Boolean read FLockOtherComputersSessions write FLockOtherComputersSessions default True;
    property ComputerSwitchTimeoutMinutes: Integer read FComputerSwitchTimeoutMinutes write FComputerSwitchTimeoutMinutes;

    property Connections: TArray<TServerConnectionConfig> read FConnections write FConnections;
    property DataModules: TArray<TServerDataModuleConfig> read FDataModules write FDataModules;
  end;

implementation

uses
  REST.Json, SysUtils, System.IOUtils, System.Win.Registry, Winapi.Windows,
  System.Classes;

{ TServerConfig }

procedure TServerConfig.AddConnection(
  AServerConnectionConfig: TServerConnectionConfig);
begin
  SetLength(FConnections, Length(FConnections) + 1);
  FConnections[Length(FConnections)-1]:= AServerConnectionConfig;
end;

procedure TServerConfig.AddDataModule(
  AServerDataModuleConfig: TServerDataModuleConfig);
begin
  SetLength(FDataModules, Length(FDataModules) + 1);
  FDataModules[Length(FDataModules)-1]:= AServerDataModuleConfig;
end;

constructor TServerConfig.Create;
begin
  inherited;
  FServerCallsAsyncLogging:= True;
  FLockOtherComputersSessions:= True;
end;

destructor TServerConfig.Destroy;
var
  c: TServerConnectionConfig;
begin
  for c in Connections do
    c.Free;

  inherited;
end;

function TServerConfig.TryGetConnection(const ADBConnectionName: string): TServerConnectionConfig;
var
  c: TServerConnectionConfig;
begin
  for c in Connections do
    if (c.DBConnectionName = ADBConnectionName) then
      Exit(c);

  Result:= nil;
end;

{ TServerConnectionConfig }

constructor TServerConnectionConfig.Create(const ADBConnectionName, ADBConnectionType, ADBHost,
  ADBPort, ADBService, ADBUser, ADBPassword: string; const AAccessBanType: Integer;
  const ALockMessage: string; const AOrderNo: Integer; const AIsReadOnlyDB, AIsTestDB: Boolean;
  const AContentStorageContainerName: string);
begin
  FDBConnectionName:= ADBConnectionName;
  FDBConnectionType:= ADBConnectionType;
  FDBHost:= ADBHost;
  FDBPort:= ADBPort;
  FDBService:= ADBService;
  FDBUser:= ADBUser;
  FDBPassword:= ADBPassword;
  FAccessBanType:= AAccessBanType;
  FLockMessage:= ALockMessage;
  FOrderNo:= AOrderNo;
  FIsReadOnlyDB:= AIsReadOnlyDB;
  FIsTestDB:= AIsTestDB;
  FContentStorageContainerName:= AContentStorageContainerName;
end;

{ TServerDataModuleConfig }

constructor TServerDataModuleConfig.Create(const AName, AMaxCount, ATimeout: string);
begin
  inherited Create;

  FName:= AName;
  FMaxCount:= AMaxCount;
  FTimeout:= ATimeout;
end;

end.
