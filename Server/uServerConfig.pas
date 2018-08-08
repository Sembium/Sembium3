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
      ADBConnectionName: string;
      ADBConnectionType: string;
      ADBHost: string;
      ADBPort: string;
      ADBService: string;
      ADBUser: string;
      ADBPassword: string;
      AAccessBanType: Integer;
      ALockMessage: string;
      AOrderNo: Integer;
      AIsReadOnlyDB: Boolean;
      AIsTestDB: Boolean;
      AContentStorageContainerName: string
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
  public
    constructor Create;
    destructor Destroy; override;

    procedure AddConnection(AServerConnectionConfig: TServerConnectionConfig);
    function TryGetConnection(const ADBConnectionName: string): TServerConnectionConfig;

    property DatasnapPort: Integer read FDatasnapPort write FDatasnapPort;
    property HttpPort: Integer read FHttpPort write FHttpPort;
    property VersionHttpPort: Integer read FVersionHttpPort write FVersionHttpPort;
    property ServerCallsLogDirectory: string read FServerCallsLogDirectory write FServerCallsLogDirectory;
    property ServerCallsAsyncLogging: Boolean read FServerCallsAsyncLogging write FServerCallsAsyncLogging default True;
    property LockOtherComputersSessions: Boolean read FLockOtherComputersSessions write FLockOtherComputersSessions default True;
    property ComputerSwitchTimeoutMinutes: Integer read FComputerSwitchTimeoutMinutes write FComputerSwitchTimeoutMinutes;
    property Connections: TArray<TServerConnectionConfig> read FConnections write FConnections;
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

constructor TServerConnectionConfig.Create(ADBConnectionName, ADBConnectionType, ADBHost,
  ADBPort, ADBService, ADBUser, ADBPassword: string; AAccessBanType: Integer;
  ALockMessage: string; AOrderNo: Integer; AIsReadOnlyDB, AIsTestDB: Boolean;
  AContentStorageContainerName: string);
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

end.
