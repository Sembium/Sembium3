unit dDBDataModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Db, uMessageUtils,
  AbmesSQLQuery, dPooledDataModule, uUtils, uObjParams, uSmartLock,
  WideStrings, SqlExpr, AbmesSQLConnection, FMTBcd, AbmesFields,
  DBXCommon, Generics.Collections, DBXDevartOracle, uNestProc, JvStringHolder;

type
  TDBDataModule = class(TPooledDataModule)
    qrySetContext: TAbmesSQLQuery;
    qrySetNumericCharacters: TAbmesSQLQuery;
    SQLConn: TAbmesSQLConnection;
    procedure SQLConnAfterConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  strict private
    FDisableDocsProcessingCount: Integer;
    FTransaction: TDBXTransaction;
    FSQLMonitor: TSQLMonitor;
    procedure SetDatabaseLoginContext(const AUserCode, ACurrentDeptCode: Integer;
      ACurrentDateTime: TDateTime; AIsSessionReadOnly: Boolean; ADbId: string);
    procedure ReconnectDatabase;
    procedure ClearDatabaseLoginContext;
  protected
    procedure StartUsing; override;
    procedure StopUsing; override;

    procedure SetObjParams(const AObjParams: TStrings); override;
  public
    constructor Create(AOwner: TComponent); override;

    function FormatDBDateTime(ADateTime: TDateTime): string;

    // tezi mai ne sa nujni veche
    procedure DisableDocsProcessing;
    procedure EnableDocsProcessing;
    function TempDisableDocsProcessing: TNestProcRec;
    function DocsProcessingDisabled: Boolean;
    //

    procedure StartTransaction;
    procedure Commit;
    procedure Rollback;
    function SafeTransaction: TNestProcRec;
    function InTransaction: Boolean;

    procedure BreakExec;
  end;

type
  TDBPoolManager = class(TPoolManager)
  strict private
  strict protected
    class function GetConfigKey: string; override;
    class function GetParamNames: TStringArray; override;
  public
  end;

type
  TDBPoolManagerList = class(TPoolManagerList)
  strict private
    FAccessBanList: TObjectList<TAccessBan>;
    FIsReadOnly: TDictionary<string, Boolean>;
    FIsTest: TDictionary<string, Boolean>;
    FContentStorageContainerName: TDictionary<string, string>;
  strict protected
    procedure CheckCanAcquirePoolManager(const AObjName: string); override;
    procedure InitializePoolManagers; override;
    procedure DoInit;
  public
    constructor Create(const APoolManagerClass: TPoolManagerClass); override;
    destructor Destroy; override;

    function GetAccessBanType(const ADBName: string): TAccessBanType;
    function GetLockMessage(const ADBName: string): string;
    function IsReadOnlyDB(const ADBName: string): Boolean;
    function IsTestDB(const ADBName: string): Boolean;
    function ContentStorageContainerName(const ADBName: string): string;
  end;

var
  DBPoolManagers: TDBPoolManagerList;

implementation

uses
  DbxDynalink, dbexp, uDBLoginContext, OraClasses, uDBUtils,
  uSessionContext, dSvrMain, uSQLMonitorUtils, uServerMessageIds,
  uDBConfigRepository;

{$R *.DFM}

type
  TDBXDynalinkConnectionHack = class(TDBXDynalinkConnection);
  TCRSQLConnectionHack = class(TCRSQLConnection);

{ TDBPoolManager }

class function TDBPoolManager.GetParamNames: TStringArray;
begin
  Result:= ConcatStringArrays(inherited GetParamNames, DBObjParamNames);
end;

class function TDBPoolManager.GetConfigKey: string;
begin
  Result:= GetDBDataModulesConfigKey;
end;

{ TDBDataModule }

constructor TDBDataModule.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Assert(not SQLConn.Connected, ClassName + '.SQLConn should not be connected');
end;

function TDBDataModule.FormatDBDateTime(ADateTime: TDateTime): string;
begin
  Result:= FormatDateTime(SQLConn.Formats.DateTimeFormat, ADateTime);
end;

procedure TDBDataModule.SetDatabaseLoginContext(const AUserCode, ACurrentDeptCode: Integer;
  ACurrentDateTime: TDateTime; AIsSessionReadOnly: Boolean; ADbId: string);

  procedure ExecuteSetContextQuery;
  begin
    if not qrySetContext.Prepared then
      qrySetContext.Prepare;  // nikoga ne se unprepareva - za burzodeistvie

    qrySetContext.ParamByName('USER_CODE').AsInteger:= AUserCode;
    qrySetContext.ParamByName('DEPT_CODE').AsInteger:= ACurrentDeptCode;
    qrySetContext.ParamByName('CONTEXT_DATE_TIME').AsDateTime:= ACurrentDateTime;
    qrySetContext.ParamByName('IS_READ_ONLY').AsInteger:= Ord(AIsSessionReadOnly);
    qrySetContext.ParamByName('DB_ID').AsString:= ADbId;
    qrySetContext.ExecSQL;
  end;

begin
  try
    ExecuteSetContextQuery;
  except
    on E: Exception do
      begin
        if E.Message.Contains('NET: Network error (53)') or    // NET: Network error (53)  // Devart
           E.Message.Contains('ORA-00028') or    // your session has been killed
           E.Message.Contains('ORA-01012') or    // not logged on
           E.Message.Contains('ORA-03113') or    // end-of-file on communication channel
           E.Message.Contains('ORA-03114') or    // not connected to oracle
           E.Message.Contains('ORA-04061') or    // existing state of package body "%s" has been invalidated
           E.Message.Contains('ORA-04068') or    // existing state of packages has been discarded
           E.Message.Contains('ORA-12571') then      // TNS:packet writer failure
          begin
            ReconnectDatabase;
            if (AUserCode <> 0) then
              ExecuteSetContextQuery;
          end
        else
          raise;
      end;
  end;  { try }
end;

procedure TDBDataModule.BreakExec;
begin
  TOCIConnection(TCRSQLConnectionHack(TDBXDynalinkConnectionHack(SQLConn.DBXConnection as TDBXDynalinkConnection).FConnectionHandle).FConnection).BreakExec;
end;

procedure TDBDataModule.ClearDatabaseLoginContext;
begin
  SetDatabaseLoginContext(0, 0, 0, False, '');
end;

procedure TDBDataModule.StartUsing;
begin
  // pri exception tuk obekta triabva da se osvobodi

  inherited;

  DisableDocsProcessing;
  try
    SetDatabaseLoginContext(
      LoginContext.UserCode,
      LoginContext.CurrentDeptCode,
      LoginContext.ContextNow,
      LoginContext.IsSessionReadOnly,
      (LoginContext as TDBLoginContext).DbId);
  finally
    EnableDocsProcessing;
  end;
end;

procedure TDBDataModule.StopUsing;
begin
  // pri exception tuk obekta triabva da se osvobodi

  if InTransaction then
    Rollback;

  DisableDocsProcessing;
  try
    ClearDatabaseLoginContext;
  finally
    EnableDocsProcessing;
  end;

  inherited;
end;

procedure TDBDataModule.SetObjParams(const AObjParams: TStrings);
begin
  inherited SetObjParams(AObjParams);

  SetSqlConnectionParams(SQLConn, AObjParams);
  SQLConn.Open;
end;

procedure TDBDataModule.SQLConnAfterConnect(Sender: TObject);
begin
  inherited;

  DisableDocsProcessing;
  try
    qrySetNumericCharacters.MacroByName('NUMERIC_CHARACTERS').AsString:=
      '''' +
      InternalFormatSettings.DecimalSeparator +
      InternalFormatSettings.ThousandSeparator +
      '''';

    qrySetNumericCharacters.ExecSQL;
  finally
    EnableDocsProcessing;
  end;
end;

procedure TDBDataModule.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FSQLMonitor:= CreateSQLMonitor(SQLConn);
end;

procedure TDBDataModule.DataModuleDestroy(Sender: TObject);
begin
  inherited;

  if Assigned(FSQLMonitor) then
    FreeAndNil(FSQLMonitor);

  if IsSessionThread and
     (LoginContext as TDBLoginContext).IsInUse and
     ((LoginContext as TDBLoginContext).DBDataModuleSmartLock.Value = Self) then
    begin
      (LoginContext as TDBLoginContext).ResetDBDataModuleSmartLock;
    end;
end;

procedure TDBDataModule.DisableDocsProcessing;
begin
  Inc(FDisableDocsProcessingCount);
end;

procedure TDBDataModule.EnableDocsProcessing;
begin
  Dec(FDisableDocsProcessingCount);
end;

function TDBDataModule.TempDisableDocsProcessing: TNestProcRec;
begin
  Result:= TryFinally(DisableDocsProcessing, EnableDocsProcessing);
end;

function TDBDataModule.DocsProcessingDisabled: Boolean;
begin
  Result:= (FDisableDocsProcessingCount <> 0);
end;

procedure TDBDataModule.ReconnectDatabase;
begin
  SQLConn.Close;
  SQLConn.Open;
end;

procedure TDBDataModule.StartTransaction;
begin
  Assert(not Assigned(FTransaction));
  FTransaction:= SQLConn.BeginTransaction;
end;

procedure TDBDataModule.Commit;
begin
  SQLConn.CommitFreeAndNil(FTransaction);
end;

procedure TDBDataModule.Rollback;
begin
  SQLConn.RollbackFreeAndNil(FTransaction);
end;

function TDBDataModule.SafeTransaction: TNestProcRec;
begin
  Result:= TryCommit(StartTransaction, Commit, Rollback);
end;

function TDBDataModule.InTransaction: Boolean;
begin
  Result:= SQLConn.InTransaction;
end;

{ TDBPoolManagerList }

procedure TDBPoolManagerList.CheckCanAcquirePoolManager(const AObjName: string);
var
  abt: TAccessBanType;
  LockMessage: string;
begin
  inherited CheckCanAcquirePoolManager(AObjName);

  abt:= GetAccessBanType(AObjName);

  if (abt = abtBlockClients) then
    begin
      LockMessage:= GetLockMessage(AObjName);
      raise Exception.Create(SAccessBannedId + '(' + 'BanMessage:s=' + InternalEncodeString(LockMessage) + ')');
    end;
end;

constructor TDBPoolManagerList.Create(
  const APoolManagerClass: TPoolManagerClass);
begin
  inherited Create(APoolManagerClass);
  FAccessBanList:= TObjectList<TAccessBan>.Create;
  FIsReadOnly:= TDictionary<string, Boolean>.Create();
  FIsTest:= TDictionary<string, Boolean>.Create();
  FContentStorageContainerName:= TDictionary<string, string>.Create();
end;

destructor TDBPoolManagerList.Destroy;
begin
  FreeAndNil(FContentStorageContainerName);
  FreeAndNil(FIsTest);
  FreeAndNil(FIsReadOnly);
  FreeAndNil(FAccessBanList);
  inherited Destroy;
end;

function TDBPoolManagerList.GetAccessBanType(
  const ADBName: string): TAccessBanType;
var
  AccessBan: TAccessBan;
begin
  Result:= abtNone;
  for AccessBan in FAccessBanList do
    if (AccessBan.DBName = ADBName) then
      begin
        Result:= AccessBan.AccessBanType;
        Break;
      end;
end;

function TDBPoolManagerList.ContentStorageContainerName(const ADBName: string): string;
begin
  if FContentStorageContainerName.ContainsKey(ADBName) then
    Result:= FContentStorageContainerName[ADBName]
  else
    Result:= '';
end;

function TDBPoolManagerList.GetLockMessage(const ADBName: string): string;
var
  AccessBan: TAccessBan;
begin
  Result:= '';
  for AccessBan in FAccessBanList do
    if (AccessBan.DBName = ADBName) then
      begin
        Result:= AccessBan.LockMessage;
        Break;
      end;
end;

procedure TDBPoolManagerList.InitializePoolManagers;
begin
  inherited InitializePoolManagers;
  DoInit;
end;

function TDBPoolManagerList.IsReadOnlyDB(const ADBName: string): Boolean;
begin
  if FIsReadOnly.ContainsKey(ADBName) then
    Result:= FIsReadOnly[ADBName]
  else
    Result:= False;
end;

function TDBPoolManagerList.IsTestDB(const ADBName: string): Boolean;
begin
  if FIsTest.ContainsKey(ADBName) then
    Result:= FIsTest[ADBName]
  else
    Result:= False;
end;

procedure TDBPoolManagerList.DoInit;
var
  LDBNames: TStringArray;
  LDBName: string;
  LAccessBanType: TAccessBanType;
  LAccessBan: TAccessBan;
begin
  LDBNames:= GetConfiguredDBNames;

  if (Length(LDBNames) > 0) then
    for LDBName in LDBNames do
      begin
        Add(LDBName, TDBDataModule);
      end
  else
    begin
      Add(SDefaultDBName, TDBDataModule);
    end;

  FAccessBanList.Clear;
  for LDBName in LDBNames do
    begin
      LAccessBanType:= GetConfiguredDBAccessBanType(LDBName);
      if (LAccessBanType <> abtNone) then
        begin
          LAccessBan:= TAccessBan.Create(LDBName, LAccessBanType, GetConfiguredDBAccessBanMessage(LDBName));
          try
            FAccessBanList.Add(LAccessBan);
          except
            FreeAndNil(LAccessBan);
            raise;
          end;
        end;
    end;

  FIsReadOnly.Clear;
  for LDBName in LDBNames do
    begin
      FIsReadOnly.Add(LDBName, GetConfiguredDBIsReadOnly(LDBName));
    end;

  FIsTest.Clear;
  for LDBName in LDBNames do
    begin
      FIsTest.Add(LDBName, GetConfiguredDBIsTest(LDBName));
    end;

  FContentStorageContainerName.Clear;
  for LDBName in LDBNames do
    begin
      FContentStorageContainerName.Add(LDBName, GetConfiguredDBContentStorageContainerName(LDBName));
    end;
end;

initialization
  DBPoolManagers:= TDBPoolManagerList.Create(TDBPoolManager);

finalization
  FreeAndNil(DBPoolManagers);
end.
