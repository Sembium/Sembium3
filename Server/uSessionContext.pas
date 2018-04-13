unit uSessionContext;

interface

uses
  SysUtils, Generics.Collections, uUtils, uBaseSessionContext, uDBLoginContext,
  uNestProc, dPooledDataModule, uSection, System.TimeSpan,
  uAuthenticationToken, System.Classes;

type
  TCloseConnectionRequest = (ccrNone, ccrLock, ccrTerminate);

type
  TClientInfo = record
  strict private
    FIPAddress: string;
    FProtocol: string;
    FComputerName: string;
    FWindowsUserName: string;
    FWindowsSessionId: Integer;
    FWindowsVersion: string;
    FSystemLocale: Integer;
    FSysVolumeSerialNumber: string;
    FHardwareInfo: string;
    FStartupContextDateOverride: TDateTime;
    FIsSessionReadOnly: Boolean;
    FLoginName: string;
  public
    constructor Create(
      const AIPAddress: string;
      const AProtocol: string;
      const AComputerName: string;
      const AWindowsUserName: string;
      AWindowsSessionId: Integer;
      const AWindowsVersion: string;
      ASystemLocale: Integer;
      const ASysVolumeSerialNumber: string;
      const AHardwareInfo: string;
      AStartupContextDateOverride: TDateTime;
      AIsSessionReadOnly: Boolean;
      const ALoginName: string
    );

    property IPAddress: string read FIPAddress;
    property Protocol: string read FProtocol;
    property ComputerName: string read FComputerName;
    property WindowsUserName: string read FWindowsUserName;
    property WindowsSessionId: Integer read FWindowsSessionId;
    property WindowsVersion: string read FWindowsVersion;
    property SystemLocale: Integer read FSystemLocale;
    property SysVolumeSerialNumber: string read FSysVolumeSerialNumber;
    property HardwareInfo: string read FHardwareInfo;
    property StartupContextDateOverride: TDateTime read FStartupContextDateOverride;
    property IsSessionReadOnly: Boolean read FIsSessionReadOnly;
    property LoginName: string read FLoginName;
  end;

type
  TSessionContext = class(TBaseSessionContext)
  strict private
    FLoginContext: TDBLoginContext;

    FCloseConnectionRequest: TCloseConnectionRequest;
    FCloseConnectionRequestMessage: string;
    FDataAccessSynchronizer: TMultiReadExclusiveWriteSynchronizer;
    FLastPingDateTime: TDateTime;
    FLastPingIsActive: Boolean;
    FLastActivityDateTime: TDateTime;
    FTempLastActivityDateTime: TDateTime;
    FPreserveLastActivityDateTime: Boolean;
    FLastUseDateTime: TDateTime;
    FPrevPingMilliseconds: Integer;
    FLastCallMethodName: string;

    FServerCalls: TMultiPassSection;

    FClientSessionGuid: string;
    FAuthenticationToken: TAuthenticationToken;
    FAuthenticationTokenString: string;
    FDBName: string;

    FClientInfo: TClientInfo;
    FClientInfoSync: TMultiReadExclusiveWriteSynchronizer;

    function GetCurrentActivitySeconds: Integer;
    function GetClientInfo: TClientInfo;
    procedure SetClientInfo(const Value: TClientInfo);

    function GetLastUseDateTime: TDateTime;
    procedure SetLastUseDateTime(const Value: TDateTime);

    procedure SetLastPingDateTime(const Value: TDateTime);
    function GetLastPingDateTime: TDateTime;

    property LastUseDateTime: TDateTime read GetLastUseDateTime write SetLastUseDateTime;

    function GetCloseConnectionRequest: TCloseConnectionRequest;
    function GetCloseConnectionRequestMessage: string;
  private
    procedure SetAuthenticationTokenString(const Value: string);
    procedure SetDBName(const Value: string);
    procedure GetLastCallMethodName(const Value: string);
  public
    constructor Create(const AClientSessionGuid, AAuthenticationTokenString, ADBName: string);
    destructor Destroy; override;

    procedure RequestCloseConnection(const AMessage: string);
    procedure RequestLockConnection(const AMessage: string);
    procedure CheckCloseConnectionRequested;

    procedure EnterServerCall;
    procedure LeaveServerCall;
    procedure PreserveLastActivityDateTime;

    function IsExpired(const ATimeout: TTimeSpan): Boolean;
    function ElapsedSinceLastPing: Cardinal;
    function IsTemp: Boolean;

    function IsPowerUser: Boolean;
    procedure CheckPowerUser;

    function IsDBAllowed: Boolean;
    procedure CheckDBAllowed;

    procedure CheckValidAuthenticationToken;

    procedure CheckAuthenticated;

    procedure UpdateLastUseDateTime;

    property LoginContext: TDBLoginContext read FLoginContext;

    property LastPingDateTime: TDateTime read GetLastPingDateTime write SetLastPingDateTime;
    property LastPingIsActive: Boolean read FLastPingIsActive write FLastPingIsActive;
    property PrevPingMilliseconds: Integer read FPrevPingMilliseconds write FPrevPingMilliseconds;
    property LastCallMethodName: string read FLastCallMethodName write GetLastCallMethodName;
    property LastActivityDateTime: TDateTime read FLastActivityDateTime;
    property CurrentActivitySeconds: Integer read GetCurrentActivitySeconds;

    property CloseConnectionRequest: TCloseConnectionRequest read GetCloseConnectionRequest;
    property CloseConnectionRequestMessage: string read GetCloseConnectionRequestMessage;

    property ClientSessionGuid: string read FClientSessionGuid;
    property AuthenticationToken: TAuthenticationToken read FAuthenticationToken;
    property AuthenticationTokenString: string read FAuthenticationTokenString;
    property DBName: string read FDBName;

    property ClientInfo: TClientInfo read GetClientInfo write SetClientInfo;
  end;

function IsSessionThread: Boolean;

function SessionContext: TSessionContext;
function ForEachSessionContextWithLock: TNestProcRec<TSessionContext>;
function SessionContextsSnapshot: TArray<TSessionContext>;
function ForEachDeadSessionContext: TNestProcRec<TSessionContext>;

procedure EnsureSessionContext(const AClientSessionGuid, AAuthenticationTokenString, ADBName: string);
procedure GarbageCollectSessionContexts;
procedure GarbageCollectSessions;

function MainSessionExists(const ASessionContext: TSessionContext): Boolean;
function SessionContextSessionCount(const ASessionContext: TSessionContext): Integer;
function SessionCount: Integer;

implementation

uses
  Generics.Defaults, Math, dSvrMain, uFuncUtils, IdTCPConnection,
  System.SyncObjs, uConnectionUtils, Datasnap.DSSession, uConnectionContext,
  Winapi.Windows, uServerCallsLogger, System.Threading, System.RTLConsts,
  uEnumeratorUtils;

resourcestring
  SPowerUserRequired = 'Power user required';

var
  FSessionContextsSync: TMultiReadExclusiveWriteSynchronizer;
  FSessionContexts: TDictionary<string, TSessionContext>;
  FDeadSessionContextsSync: TMultiReadExclusiveWriteSynchronizer;
  FDeadSessionContexts: TObjectList<TSessionContext>;
  FInGarbageCollectSessionContexts: Integer = 0;
  FInGarbageCollectSessions: Integer;

type
  TDBLoginContextHack = class(TDBLoginContext);

threadvar
  FSessionContext: TSessionContext;

{ Routines }

function IsSessionThread: Boolean;
begin
  Result:= Assigned(TDSSessionManager.Instance.GetThreadSession());
end;

function SessionToSessionContext(const ASession: TDSSession): TSessionContext;
var
  ClientSessionGuid: string;
begin
  ClientSessionGuid:= ASession.ClientSessionGuid;

  if (ClientSessionGuid = '') then
    Exit(nil);

  Result:= nil;

  FSessionContextsSync.BeginRead;
  try
    FSessionContexts.TryGetValue(ClientSessionGuid, Result);
  finally
    FSessionContextsSync.EndRead;
  end;
end;

function SessionContext: TSessionContext;
const
  SSessionContext = 'SessionContext';
var
  CurrentSession: TDSSession;
begin
  if Assigned(FSessionContext) then
    Result:= FSessionContext
  else
    begin
      CurrentSession:= TDSSessionManager.Instance.GetThreadSession;
      Assert(Assigned(CurrentSession));

      if CurrentSession.HasData(SSessionContext) then
        Result:= TSessionContext(StrToInt(CurrentSession.GetData(SSessionContext)))
      else
        begin
          Result:= SessionToSessionContext(CurrentSession);
          CurrentSession.PutData(SSessionContext, IntToStr(Integer(Result)));
        end;

      Assert(Assigned(Result));
      FSessionContext:= Result;
    end;
end;

procedure AddSessionContext(ASessionContext: TSessionContext);
begin
  Assert(Assigned(ASessionContext));
  Assert(ASessionContext.ClientSessionGuid <> '');

  FSessionContextsSync.BeginWrite;
  try
    FSessionContexts.Add(ASessionContext.ClientSessionGuid, ASessionContext);
  finally
    FSessionContextsSync.EndWrite;
  end;
end;

procedure AddDeadSessionContext(ADeadSessionContext: TSessionContext);
begin
  Assert(Assigned(ADeadSessionContext));

  FDeadSessionContextsSync.BeginWrite;
  try
    FDeadSessionContexts.Add(ADeadSessionContext);
  finally
    FDeadSessionContextsSync.EndWrite;
  end;
end;

procedure RemoveSessionContext(ASessionContext: TSessionContext);
begin
  if (ASessionContext = nil) then
    Exit;

  FSessionContextsSync.BeginWrite;
  try
    FSessionContexts.Remove(ASessionContext.ClientSessionGuid);
  finally
    FSessionContextsSync.EndWrite;
  end;
end;

function FindSessionContext(const AClientSessionGuid: string): TSessionContext;
begin
  FSessionContextsSync.BeginRead;
  try
    FSessionContexts.TryGetValue(AClientSessionGuid, Result);
  finally
    FSessionContextsSync.EndRead;
  end;
end;

procedure EnsureSessionContext(const AClientSessionGuid, AAuthenticationTokenString, ADBName: string);
var
  sc: TSessionContext;
begin
  sc:= FindSessionContext(AClientSessionGuid);

  if Assigned(sc) then
    begin
      sc.UpdateLastUseDateTime;
      sc:= FindSessionContext(AClientSessionGuid);
    end;

  if Assigned(sc) then
    begin
      if (ConnectionPurpose = cpMain) then
        sc.LoginContext.BreakExec;

      if (sc.DBName <> ADBName) or (sc.AuthenticationTokenString <> AAuthenticationTokenString) then
        begin
          sc.SetDBName(ADBName);
          sc.SetAuthenticationTokenString(AAuthenticationTokenString);
        end;
    end
  else
    begin
      sc:= TSessionContext.Create(AClientSessionGuid, AAuthenticationTokenString, ADBName);
      try
        AddSessionContext(sc);
      except
        on E: Exception do
          begin
            FreeAndNil(sc);

            if (E.Message <> SGenericDuplicateItem) then
              raise;
          end;
      end;
    end;
end;

function ForEachSessionContextWithLock: TNestProcRec<TSessionContext>;
begin
  Result:= TNestProcRec<TSessionContext>.Create(
    procedure (AProc: TConstProc<TSessionContext>)
    var
      sc: TSessionContext;
    begin
      FSessionContextsSync.BeginRead;
      try
        for sc in FSessionContexts.Values do
          try
            AProc(sc);
          except
            on EBreak do
              Break;

            on EContinue do
              begin
                // do nothing
              end;
          end;  { try }
      finally
        FSessionContextsSync.EndRead;
      end;
    end);
end;

function SessionContextsSnapshot: TArray<TSessionContext>;
begin
  FSessionContextsSync.BeginRead;
  try
    Result:= FSessionContexts.Values.ToArray();
  finally
    FSessionContextsSync.EndRead;
  end;
end;

function ForEachDeadSessionContext: TNestProcRec<TSessionContext>;
begin
  Result:= TNestProcRec<TSessionContext>.Create(
    procedure (AProc: TConstProc<TSessionContext>)
    var
      sc: TSessionContext;
    begin
      FDeadSessionContextsSync.BeginRead;
      try
        for sc in FDeadSessionContexts do
          try
            AProc(sc);
          except
            on EBreak do
              Break;

            on EContinue do
              begin
                // do nothing
              end;
          end;  { try }
      finally
        FDeadSessionContextsSync.EndRead;
      end;
    end);
end;

procedure MarkExpiredSessionContextsAsDead(ATimeout: TTimeSpan);

  function GetExpiredSessionContext: TSessionContext;
  var
    res: TSessionContext;
  begin
    res:= nil;
    ForEachSessionContextWithLock/
      procedure(const sc: TSessionContext) begin
        if (res = nil) and sc.IsExpired(ATimeout) then
          begin
            res:= sc;
            raise EBreak.Create;
          end;
      end;
    Result:= res;
  end;

var
  ExpiredSessionContext: TSessionContext;
begin
  with TRoutineTraceLogger.Create('uSessionContext.MarkExpiredSessionContextsAsDead') do
    begin
      LogEnter;
      try

        while True do
          begin
            ExpiredSessionContext:= GetExpiredSessionContext;

            if not Assigned(ExpiredSessionContext) then
              Break;

            RemoveSessionContext(ExpiredSessionContext);

            AddDeadSessionContext(ExpiredSessionContext);
          end;

      except
        LogException;
        raise;
      end;
      LogLeave;
    end;
end;

procedure FreeDeadSessionContexts;
begin
  with TRoutineTraceLogger.Create('uSessionContext.FreeDeadSessionContexts') do
    begin
      LogEnter;
      try

        FDeadSessionContextsSync.BeginWrite;
        try
          FDeadSessionContexts.Clear;
        finally
          FDeadSessionContextsSync.EndWrite;
        end;

      except
        LogException;
        raise;
      end;
      LogLeave;
    end;
end;

procedure BreakExecDeadSessionContexts;
var
  sc: TSessionContext;
begin
  with TRoutineTraceLogger.Create('uSessionContext.BreakExecDeaddSessionContexts') do
    begin
      LogEnter;
      try

        FDeadSessionContextsSync.BeginRead;
        try
          for sc in FDeadSessionContexts do
            sc.LoginContext.BreakExec;
        finally
          FDeadSessionContextsSync.EndRead;
        end;

      except
        LogException;
        raise;
      end;
      LogLeave;
    end;
end;

procedure GarbageCollectSessionContexts;
begin
  with TRoutineTraceLogger.Create('uSessionContext.GarbageCollectSessionContexts') do
    begin
      LogEnter;
      try

        if (InterlockedCompareExchange(FInGarbageCollectSessionContexts, 1, 0) = 0) then
          try
            FreeDeadSessionContexts;
            MarkExpiredSessionContextsAsDead(TTimeSpan.FromSeconds(2*60 + 10));  // propusnati 2 pinga, pri 60 sekundi mejdu pingovete
            BreakExecDeadSessionContexts;
          finally
            InterlockedExchange(FInGarbageCollectSessionContexts, 0);
          end;

      except
        LogException;
        raise;
      end;
      LogLeave;
    end;
end;

function SessionIsExpired(const ASession: TDSSession): Boolean;
const
  SessionTimeout = (60 + 10) * 1000;  // propusnat 1 ping, pri 60 sekundi mejdu pingovete
var
  sc: TSessionContext;
begin
  if IsMainSession(ASession) then
    begin
      sc:= SessionToSessionContext(ASession);

      if not Assigned(sc) then
        Result:= (ASession.ElapsedSinceLastActvity > SessionTimeout)
      else
        Result:=
          (sc.ElapsedSinceLastPing > SessionTimeout) or
          ((not sc.LastPingIsActive) and (ASession.ElapsedSinceLastActvity > SessionTimeout));
    end
  else
    Result:= (ASession.ElapsedSinceLastActvity > SessionTimeout);
end;

procedure TerminateSession(const ASessionName: string);
begin
  with TRoutineTraceLogger.Create('uSessionContext.TerminateSession') do
    begin
      LogEnter;
      try

        TDSSessionManager.Instance.TerminateSession(ASessionName);

      except
        LogException;
        raise;
      end;
      LogLeave;
    end;
end;

procedure GarbageCollectSessions;
begin
  if (InterlockedCompareExchange(FInGarbageCollectSessions, 1, 0) = 0) then
    try
      TDSSessionManager.Instance.ForEachSession(
        procedure (const Session: TDSSession)
        var
          SessionName: string;
        begin
          if SessionIsExpired(Session) and not Session.HasData('Terminating') then
            begin
              Session.PutData('Terminating', 'True');
              SessionName:= Session.SessionName;
              TThread.CreateAnonymousThread(
                procedure begin
                  TerminateSession(SessionName);
                end
              ).Start;
            end;
        end
      );
    finally
      InterlockedExchange(FInGarbageCollectSessions, 0);
    end;
end;

function MainSessionExists(const ASessionContext: TSessionContext): Boolean;
var
  ClientSessionGuid: string;
  res: Boolean;
begin
  ClientSessionGuid:= ASessionContext.ClientSessionGuid;
  res:= False;

  TDSSessionManager.Instance.ForEachSession(
    procedure (const Session: TDSSession) begin
      if (Session.ClientSessionGuid = ClientSessionGuid) and IsMainSession(Session) then
        res:= True;
    end
  );

  Result:= res;
end;

function SessionContextSessionCount(const ASessionContext: TSessionContext): Integer;
var
  ClientSessionGuid: string;
  res: Integer;
begin
  ClientSessionGuid:= ASessionContext.ClientSessionGuid;
  res:= 0;

  TDSSessionManager.Instance.ForEachSession(
    procedure (const Session: TDSSession) begin
      if (Session.ClientSessionGuid = ClientSessionGuid) then
        Inc(res);
    end
  );

  Result:= res;
end;

function SessionCount: Integer;
var
  res: Integer;
begin
  res:= 0;

  TDSSessionManager.Instance.ForEachSession(
    procedure (const Session: TDSSession) begin
      Inc(res);
    end
  );

  Result:= res;
end;

{ TSessionContext }

procedure TSessionContext.CheckCloseConnectionRequested;
begin
  if (CloseConnectionRequest <> ccrNone) then
    raise Exception.Create('Close connection requested');
end;

procedure TSessionContext.CheckDBAllowed;
begin
  if not IsDBAllowed then
    raise Exception.CreateFmt('Access to database %s not allowed', [DBName]);
end;

procedure TSessionContext.CheckPowerUser;
begin
  if not IsPowerUser then
    raise Exception.Create(SPowerUserRequired);
end;

procedure TSessionContext.CheckAuthenticated;
begin
  if AuthenticationToken.IsEmpty then
    raise Exception.Create(SNotAuthenticated);

  CheckValidAuthenticationToken;
  CheckDBAllowed;
end;

procedure TSessionContext.CheckValidAuthenticationToken;
begin
  if AuthenticationToken.IsExpired then
    begin
      PreserveLastActivityDateTime;
      raise Exception.Create(SAuthenticationTokenExpired);
    end;
end;

constructor TSessionContext.Create(const AClientSessionGuid, AAuthenticationTokenString, ADBName: string);
begin
  inherited Create;

  FClientInfoSync:= TMultiReadExclusiveWriteSynchronizer.Create;
  FDataAccessSynchronizer:= TMultiReadExclusiveWriteSynchronizer.Create;

  FLoginContext:= TDBLoginContext.Create(Self);
  FLastPingDateTime:= Now;
  FLastUseDateTime:= Now;

  FClientSessionGuid:= AClientSessionGuid;
  FDBName:= ADBName;

  SetAuthenticationTokenString(AAuthenticationTokenString);

  FServerCalls.BeforeFirstEnter:=
    procedure begin
      FTempLastActivityDateTime:= Now;
      FPreserveLastActivityDateTime:= False;
    end;

  FServerCalls.AfterLastLeave:=
    procedure begin
      if not FPreserveLastActivityDateTime then
        FLastActivityDateTime:= FTempLastActivityDateTime;
    end;
end;

destructor TSessionContext.Destroy;
begin
  FreeAndNil(FDataAccessSynchronizer);
  FreeAndNil(FLoginContext);
  FreeAndNil(FClientInfoSync);
  inherited Destroy;
end;

function TSessionContext.ElapsedSinceLastPing: Cardinal;
begin
  Result:= Trunc(TTimeSpan.Subtract(Now, LastPingDateTime).TotalMilliseconds);
end;

procedure TSessionContext.EnterServerCall;
begin
  FServerCalls.Enter;
end;

procedure TSessionContext.LeaveServerCall;
begin
  FServerCalls.Leave;
end;

procedure TSessionContext.PreserveLastActivityDateTime;
begin
  FPreserveLastActivityDateTime:= True;
end;

function TSessionContext.GetClientInfo: TClientInfo;
begin
  FClientInfoSync.BeginRead;
  try
    Result:= FClientInfo;
  finally
    FClientInfoSync.EndRead;
  end;
end;

function TSessionContext.GetCloseConnectionRequest: TCloseConnectionRequest;
begin
  FDataAccessSynchronizer.BeginRead;
  try
    Result:= FCloseConnectionRequest;
  finally
    FDataAccessSynchronizer.EndRead;
  end;
end;

function TSessionContext.GetCloseConnectionRequestMessage: string;
begin
  FDataAccessSynchronizer.BeginRead;
  try
    Result:= FCloseConnectionRequestMessage;
  finally
    FDataAccessSynchronizer.EndRead;
  end;
end;

procedure TSessionContext.GetLastCallMethodName(const Value: string);
begin
  FDataAccessSynchronizer.BeginRead;
  try
    FLastCallMethodName := Value;
  finally
    FDataAccessSynchronizer.EndRead;
  end;
end;

function TSessionContext.GetLastPingDateTime: TDateTime;
begin
  Result:= TInterlocked.CompareExchange(Double(FLastPingDateTime), 0, 0);
end;

function TSessionContext.GetLastUseDateTime: TDateTime;
begin
  Result:= TInterlocked.CompareExchange(Double(FLastUseDateTime), 0, 0);
end;

function TSessionContext.GetCurrentActivitySeconds: Integer;
begin
  if (FTempLastActivityDateTime <= FLastActivityDateTime) then
    Result:= -1
  else
    Result:= Trunc((Now - FTempLastActivityDateTime) * 24 * 60 * 60);
end;

function TSessionContext.IsDBAllowed: Boolean;
begin
  Result:=
    AuthenticationToken.IsEmpty or    // tova ne e dobre. triabva da s emahne kato sprem da polzwame wytreshnia authenticate
    (AuthenticationToken.AllowedDBNames = '*') or
    ArrayUtils.All<string>(AuthenticationToken.AllowedDBNames.Split([',', ';'])).Filter(Funcs.IsEqualPredicate(DBName)).Exists;
end;

function TSessionContext.IsExpired(const ATimeout: TTimeSpan): Boolean;
begin
  Result:= (TTimeSpan.Subtract(Now, Max(LastUseDateTime, LastPingDateTime)) > ATimeOut);
end;

function TSessionContext.IsPowerUser: Boolean;
begin
  Result:=
    (AuthenticationToken.PowerUserDBNames = '*') or
    ArrayUtils.All<string>(AuthenticationToken.PowerUserDBNames.Split([',', ';'])).Filter(Funcs.IsEqualPredicate(DBName)).Exists;
end;

procedure TSessionContext.RequestCloseConnection(const AMessage: string);
begin
  FDataAccessSynchronizer.BeginWrite;
  try
    FCloseConnectionRequest:= ccrTerminate;
    FCloseConnectionRequestMessage:= AMessage;
  finally
    FDataAccessSynchronizer.EndWrite;
  end;

  LoginContext.BreakExec;
end;

procedure TSessionContext.RequestLockConnection(const AMessage: string);
begin
  FDataAccessSynchronizer.BeginWrite;
  try
    if (FCloseConnectionRequest = ccrTerminate) then
      Exit;

    FCloseConnectionRequest:= ccrLock;
    FCloseConnectionRequestMessage:= AMessage;
  finally
    FDataAccessSynchronizer.EndWrite;
  end;
end;

procedure TSessionContext.SetAuthenticationTokenString(
  const Value: string);
begin
  if (Value <> FAuthenticationTokenString) then
    begin
      FAuthenticationTokenString:= Value;
      FAuthenticationToken:= StringToAuthenticationToken(Value);
    end;
end;

procedure TSessionContext.SetClientInfo(const Value: TClientInfo);
begin
  FClientInfoSync.BeginWrite;
  try
    FClientInfo:= Value;
  finally
    FClientInfoSync.EndWrite;
  end;
end;

procedure TSessionContext.SetDBName(const Value: string);
begin
  if (Value <> FDBName) then
    FDBName:= Value;
end;

procedure TSessionContext.SetLastPingDateTime(const Value: TDateTime);
begin
  TInterlocked.Exchange(Double(FLastPingDateTime), Double(Value));
end;

procedure TSessionContext.SetLastUseDateTime(const Value: TDateTime);
begin
  TInterlocked.Exchange(Double(FLastUseDateTime), Double(Value));
end;

procedure TSessionContext.UpdateLastUseDateTime;
begin
  LastUseDateTime:= Now;
end;

function TSessionContext.IsTemp: Boolean;
begin
  Result:= IsTempAuthenticationTokenString(AuthenticationTokenString);
end;

{ TClientInfo }

constructor TClientInfo.Create(const AIPAddress, AProtocol, AComputerName, AWindowsUserName: string;
  AWindowsSessionId: Integer; const AWindowsVersion: string; ASystemLocale: Integer;
  const ASysVolumeSerialNumber, AHardwareInfo: string; AStartupContextDateOverride: TDateTime;
  AIsSessionReadOnly: Boolean; const ALoginName: string);
begin
  FIPAddress:= AIPAddress;
  FProtocol:= AProtocol;
  FComputerName:= AComputerName;
  FWindowsUserName:= AWindowsUserName;
  FWindowsSessionId:= AWindowsSessionId;
  FWindowsVersion:= AWindowsVersion;
  FSystemLocale:= ASystemLocale;
  FSysVolumeSerialNumber:= ASysVolumeSerialNumber;
  FHardwareInfo:= AHardwareInfo;
  FStartupContextDateOverride:= AStartupContextDateOverride;
  FIsSessionReadOnly:= AIsSessionReadOnly;
  FLoginName:= ALoginName;
end;

procedure FreeSessionContexts;
var
  sc: TSessionContext;
begin
  for sc in FSessionContexts.Values do
    sc.Free;
  FSessionContexts.Clear;
end;

initialization
  FSessionContextsSync:= TMultiReadExclusiveWriteSynchronizer.Create;
  FSessionContexts:= TDictionary<string, TSessionContext>.Create;
  FDeadSessionContextsSync:= TMultiReadExclusiveWriteSynchronizer.Create;
  FDeadSessionContexts:= TObjectList<TSessionContext>.Create(True);

finalization
  FreeSessionContexts;

  FreeAndNil(FDeadSessionContextsSync);
  FreeAndNil(FDeadSessionContexts);
  FreeAndNil(FSessionContextsSync);
  FreeAndNil(FSessionContexts);
end.
