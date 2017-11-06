unit uExecuteServers;

interface

uses
  Classes, SysUtils, SyncObjs, Generics.Collections, uUtils, uServerLoginContext,
  Data.SqlExpr;

type
  TExecuteServerInfo = record
  strict private
    FComputerName: string;
    FViewGeneratorNames: TStringArray;
  public
    constructor Create(AComputerName: string; AViewGeneratorNames: TStringArray);
    property ComputerName: string read FComputerName;
    property ViewGeneratorNames: TStringArray read FViewGeneratorNames;
  end;

type
  TExecuteServerInfoArray = array of TExecuteServerInfo;

type
  TExecuteServer = class(TObject)
  strict private
    FComputerName: string;
    FInUse: Boolean;
    FIsUnavailable: Boolean;
    FUnavailableMessage: string;
    FViewGeneratorList: TStringList;
    procedure SetViewGenerators(AViewGeneratorNames: TStringArray);
  private
    function GetIsUnavaialable: Boolean;
    procedure SetIsUnavailable(const Value: Boolean);
  public
    constructor Create(AExecuteServerInfo: TExecuteServerInfo);
    destructor Destroy; override;

    function HasViewGenerator(AViewGeneratorName: string): Boolean;

    property ComputerName: string read FComputerName;
    property InUse: Boolean read FInUse write FInUse;
    property IsUnavailable: Boolean read GetIsUnavaialable write SetIsUnavailable;
    property UnavailableMessage: string read FUnavailableMessage write FUnavailableMessage;
  end;

type
  TExecuteServerList = TObjectList<TExecuteServer>;

type
  TExecuteServers = class(TObject)
  strict private
    FList: TExecuteServerList;
    FLoaded: Boolean;
    FLockCount: Integer;
    FSync: TMultiReadExclusiveWriteSynchronizer;
    FFinderCriticalSection: TCriticalSection;
    function FindAvailableServer(AViewGeneratorName: string): string;
    function ServerByName(AExecuteServerName: string): TExecuteServer;
  public
    constructor Create;
    destructor Destroy; override;

    procedure Load(AExecuteServerInfos: TExecuteServerInfoArray);

    function AcquireServer(AViewGeneratorName: string; ALoginContext: TServerLoginContext): string;
    procedure ReleaseServer(AExecuteServerName: string);
    procedure SetServerIsUnavailable(const AExecuteServerConnectionString: string; const AValue: Boolean;
      const AUnavailableMessage: string = '');
    function GetUnavailableServers: TStringArray;
    function FindServer(AExecuteServerName: string): TExecuteServer;

    property Loaded: Boolean read FLoaded;
  end;

procedure DecodeExecuteServerConnectionString(
  const AConnectionString: string; out ExecuteServerName,
  ExecuteServerPort, ExecuteServerConnectionType: string;
  out ExecuteServerIsPermanent: Boolean);

function SetupExecuteServerSQLConnection(
  const ExecuteServerName, ExecuteServerPort, ExecuteServerConnectionType: string;
  SQLConnection: TSQLConnection): TSQLConnection;

procedure RestoreUnavailableServers;

var
  ExecuteServers: TExecuteServers;

implementation

uses
  Windows, uMessageUtils, uServerMessageIds, uSessionContext, Data.DBXCommon,
  System.StrUtils;

const
  BorrowTimeoutSec = 60;       // in seconds

var
  FInRestoreUnavailableServers: Integer = 0;

{ TExecuteServerInfo }

constructor TExecuteServerInfo.Create(AComputerName: string; AViewGeneratorNames: TStringArray);
begin
  FComputerName:= AComputerName;
  FViewGeneratorNames:= AViewGeneratorNames;
end;

{ TExecuteServer }

constructor TExecuteServer.Create(AExecuteServerInfo: TExecuteServerInfo);
begin
  inherited Create;

  FComputerName:= AExecuteServerInfo.ComputerName;
  FViewGeneratorList:= TStringList.Create;
  FViewGeneratorList.Sorted:= True;

  SetViewGenerators(AExecuteServerInfo.ViewGeneratorNames);
end;

destructor TExecuteServer.Destroy;
begin
  FreeAndNil(FViewGeneratorList);
  inherited Destroy;
end;

function TExecuteServer.GetIsUnavaialable: Boolean;
begin
  Result:= FIsUnavailable;
end;

procedure TExecuteServer.SetIsUnavailable(const Value: Boolean);
begin
  FIsUnavailable:= Value;

  if not Value then
    FUnavailableMessage:= '';
end;

procedure TExecuteServer.SetViewGenerators(AViewGeneratorNames: TStringArray);
var
  s: string;
begin
  FViewGeneratorList.Clear;
  for s in AViewGeneratorNames do
    FViewGeneratorList.Add(s);
end;

function TExecuteServer.HasViewGenerator(AViewGeneratorName: string): Boolean;
begin
  Result:= (FViewGeneratorList.IndexOf(AViewGeneratorName) >= 0);
end;

{ TExecuteServers }

constructor TExecuteServers.Create;
begin
  inherited Create;
  FSync:= TMultiReadExclusiveWriteSynchronizer.Create;
  FFinderCriticalSection:= TCriticalSection.Create;
  FList:= TExecuteServerList.Create;
end;

destructor TExecuteServers.Destroy;
begin
  FreeAndNil(FList);
  FreeAndNil(FFinderCriticalSection);
  FreeAndNil(FSync);
  inherited Destroy;
end;

procedure TExecuteServers.Load(AExecuteServerInfos: TExecuteServerInfoArray);
var
  esi: TExecuteServerInfo;
  es: TExecuteServer;
begin
  InterlockedIncrement(FLockCount);
  try
    FSync.BeginWrite;
    try
      FList.Clear;

      for esi in AExecuteServerInfos do
        begin
          es:= TExecuteServer.Create(esi);
          try
            FList.Add(es);
          except
            FreeAndNil(es);
            raise;
          end;  { try }
        end;  { for }

      FLoaded:= True;
    finally
      FSync.EndWrite;
    end;  { try }
  finally
    InterlockedDecrement(FLockCount);
  end;  { try }
end;

function TExecuteServers.FindAvailableServer(AViewGeneratorName: string): string;
var
  es: TExecuteServer;
  Found: Boolean;
begin
  Result:= '';
  FFinderCriticalSection.Enter;
  try
    FSync.BeginRead;
    try
      Found:= False;
      for es in FList do
        begin
          Assert(Assigned(es));

          if es.HasViewGenerator(AViewGeneratorName) then
            begin
              Found:= True;

              if (not es.InUse) and (not es.IsUnavailable) then
                begin
                  Result:= es.ComputerName;
                  es.InUse:= True;
                  Break;
                end;  { if }
            end;  { if }
        end;  { for }
    finally
      FSync.EndRead;
    end;
  finally
    FFinderCriticalSection.Leave;
  end;  { try }

  if not Found then
    raise Exception.Create(
      SExecuteServerNotFoundId +
      '(' + 'GeneratorName:s=' + InternalEncodeString(AViewGeneratorName) + ')');
end;

function TExecuteServers.FindServer(AExecuteServerName: string): TExecuteServer;
begin
  FSync.BeginRead;
  try
    Result:= ServerByName(AExecuteServerName);
  finally
    FSync.EndRead;
  end;  { try }
end;

function TExecuteServers.GetUnavailableServers: TStringArray;
var
  UnavailableServers: TStringList;
  es: TExecuteServer;
begin
  UnavailableServers:= TStringList.Create;
  try
    FSync.BeginRead;
    try
      for es in FList do
        begin
          Assert(Assigned(es));

          if es.IsUnavailable then
            UnavailableServers.Add(es.ComputerName);
        end;  { for }
    finally
      FSync.EndRead;
    end;  { try }

    Result:= UnavailableServers.ToStringArray;
  finally
    FreeAndNil(UnavailableServers);
  end;
end;

function TExecuteServers.ServerByName(
  AExecuteServerName: string): TExecuteServer;
var
  es: TExecuteServer;
begin
  Result:= nil;
  for es in FList do
    begin
      Assert(Assigned(es));
      if (es.ComputerName = AExecuteServerName) then
        begin
          Result:= es;
          Break;
        end;  { if }
    end;  { for }
end;

procedure TExecuteServers.SetServerIsUnavailable(const AExecuteServerConnectionString: string;
  const AValue: Boolean; const AUnavailableMessage: string);
var
  es: TExecuteServer;
  Found: Boolean;
begin
  FSync.BeginWrite;
  try
    Found:= False;
    for es in FList do
      begin
        Assert(Assigned(es));

        if (es.ComputerName = AExecuteServerConnectionString) then
          begin
            Found:= True;

            es.IsUnavailable:= AValue;
            es.UnavailableMessage:= AUnavailableMessage;

            Break;
          end;  { if }
      end;  { for }
  finally
    FSync.EndWrite;
  end;  { try }

  Assert(Found, 'Execute server not found: ' + AExecuteServerConnectionString);
end;

function TExecuteServers.AcquireServer(AViewGeneratorName: string; ALoginContext: TServerLoginContext): string;
var
  i: Integer;
begin
  Assert(Assigned(ALoginContext));

  for i:= 1 to BorrowTimeoutSec do
    begin
      (ALoginContext.Owner as TSessionContext).CheckCloseConnectionRequested;

      if (FLockCount = 0) then
        begin
          FSync.BeginRead;
          try
            Result:= FindAvailableServer(AViewGeneratorName);

            if (Result <> '') then
              Break
            else
              FSync.EndRead;
          except
            FSync.EndRead;
            raise;
          end;  { try }
        end;  { if }

      Sleep(1000);
    end;  { for }

  if (Result = '') then
    raise Exception.Create(SFreeExecuteServerNotFoundId + '(' +
      'GeneratorName:s='+ InternalEncodeString(AViewGeneratorName) + ')');
end;

procedure TExecuteServers.ReleaseServer(AExecuteServerName: string);
var
  es: TExecuteServer;
begin
  try
    es:= ServerByName(AExecuteServerName);

    Assert(Assigned(es));
    Assert(es.InUse);

    es.InUse:= False;
  finally
    FSync.EndRead;
  end;  { try }
end;

procedure DecodeExecuteServerConnectionString(
  const AConnectionString: string; out ExecuteServerName,
  ExecuteServerPort, ExecuteServerConnectionType: string;
  out ExecuteServerIsPermanent: Boolean);
var
  ConnectionStringParts: TStringArray;
begin
  ConnectionStringParts:= uUtils.SplitString(AConnectionString, ':');

  Assert(Length(ConnectionStringParts) > 0);

  ExecuteServerName:= ConnectionStringParts[0];

  if (Length(ConnectionStringParts) > 1) then
    ExecuteServerPort:= ConnectionStringParts[1]
  else
    ExecuteServerPort:= '';

  if (Length(ConnectionStringParts) > 2) then
    ExecuteServerConnectionType:= ConnectionStringParts[2]
  else
    ExecuteServerConnectionType:= '';

  if (Pos('*', ExecuteServerName) > 0) then
    begin
      ExecuteServerIsPermanent:= True;
      ExecuteServerName:= StringReplace(ExecuteServerName, '*', '', [rfReplaceAll]);
    end
  else
    ExecuteServerIsPermanent:= False;
end;

function SetupExecuteServerSQLConnection(
  const ExecuteServerName, ExecuteServerPort, ExecuteServerConnectionType: string;
  SQLConnection: TSQLConnection): TSQLConnection;
begin
  if SameText(ExecuteServerConnectionType, 'Datasnap') then
    begin
      Assert(Assigned(SQLConnection));

      SQLConnection.DriverName:= 'Datasnap';

      Result:= SQLConnection;
    end
  else
    raise Exception.Create('Unknown connection type: ' + ExecuteServerConnectionType);

  Result.ConnectionData.Properties['HostName']:= ExecuteServerName;
  Result.ConnectionData.Properties['Port']:= ExecuteServerPort;
end;

procedure InternalRestoreUnavailableServers;
var
  UnavailableServers: TStringArray;
  con: TSQLConnection;
  ExecuteServerConnectionString: string;
  ExecuteServerName: string;
  ExecuteServerPort: string;
  ExecuteServerConnectionType: string;
  ExecuteServerIsPermanent: Boolean;
begin
  UnavailableServers:= ExecuteServers.GetUnavailableServers;

  if (Length(ExecuteServers.GetUnavailableServers) = 0) then
    Exit;

  con:= TSQLConnection.Create(nil);
  try
    con.LoginPrompt:= False;

    for ExecuteServerConnectionString in UnavailableServers do
      begin
        DecodeExecuteServerConnectionString(ExecuteServerConnectionString,
          ExecuteServerName, ExecuteServerPort, ExecuteServerConnectionType, ExecuteServerIsPermanent);

        SetupExecuteServerSQLConnection(
          ExecuteServerName, ExecuteServerPort, ExecuteServerConnectionType, con);
        try
          // tuk moje da se napravi na Abmes DataSnap edin ActivePing metod i s nego da se razbere dali ima vruzka do servera
          con.Open;
          con.Close;

          ExecuteServers.SetServerIsUnavailable(ExecuteServerConnectionString, False);
        except
          // do nothing - restore failed
        end;
      end;
  finally
    FreeAndNil(con);
  end;
end;

procedure RestoreUnavailableServers;
begin
  if (InterlockedCompareExchange(FInRestoreUnavailableServers, 1, 0) = 0) then
    try
      InternalRestoreUnavailableServers;
    finally
      InterlockedExchange(FInRestoreUnavailableServers, 0);
    end;
end;

initialization
  ExecuteServers:= TExecuteServers.Create;
finalization
  FreeAndNil(ExecuteServers);
end.
