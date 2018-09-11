unit dPooledDataModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider,
  SyncObjs, uUtils, uObjParams, uServerLoginContext,
  Generics.Collections, DataBkr, uServerCallsLogger,
  uObjectPool, uSmartLock, Data.DBXCommon;

type
  TPooledDataModule = class(TProviderDataModule)
    procedure DataModuleCreate(Sender: TObject);
  strict private
    FInUse: Boolean;
    FInUseThreadId: DWORD;
    procedure SetProvidersOptions;
  strict protected
    procedure CloseDataSets;

    function IsInCorrectThread: Boolean;
  protected
    procedure StartUsing; virtual;
    procedure StopUsing; virtual;

    procedure SetObjParams(const AObjParams: TStrings); virtual;

    { non-safecall IAppServer methods }
    function AS_GetProviderNames: OleVariant; virtual;
    function AS_ApplyUpdates(const ProviderName: string; const Delta: OleVariant;
      MaxErrors: Integer; out ErrorCount: Integer;
      var OwnerData: OleVariant): OleVariant; virtual;
    function AS_GetRecords(const ProviderName: string; Count: Integer;
      out RecsOut: Integer; Options: Integer; const CommandText: string;
      var Params, OwnerData: OleVariant): OleVariant; virtual;
    function AS_DataRequest(const ProviderName: string;
      const Data: OleVariant): OleVariant; virtual;
    function AS_GetParams(const ProviderName: string; var OwnerData: OleVariant): OleVariant; virtual;
    function AS_RowRequest(const ProviderName: string; const Row: OleVariant;
      RequestType: Integer; var OwnerData: OleVariant): OleVariant; virtual;
    procedure AS_Execute(const ProviderName: string;
      const CommandText: string; var Params, OwnerData: OleVariant); virtual;

    procedure Loaded; override;
  public
    property InUse: Boolean read FInUse;
  end;

  TPooledDataModuleClass = class of TPooledDataModule;

  TPoolManager = class(TObject)
  strict private
    FPool: TObjectPool<TPooledDataModule>;
    FPooledClass: TPooledDataModuleClass;
    FObjName: string;
    FObjParams: TStrings;
    FMaxCount: Integer;
    FTimeout: DWORD;

    function GetDataModulesCount: Integer;
    function GetInUseDataModulesCount: Integer;
  strict protected
    procedure LoadObjParams;

    class function GetConfigKey: string; virtual;
    class function GetParamNames: TStringArray; virtual;
    function GetIntParamValue(const AParamName: string): Integer;
    function GetStringParamValue(const AParamName: string): string;
    function DoCreateNewInstance: TPooledDataModule;
    procedure InitNewInstance(AInstance: TPooledDataModule);
    procedure InternalResetParams; virtual;

    property ObjParams: TStrings read FObjParams;
  public
    constructor Create(const AObjName: string; const APooledClass: TPooledDataModuleClass);
    destructor Destroy; override;
    procedure AfterConstruction; override;

    procedure Reset;

    function LockInstance: TObjectPoolItem<TPooledDataModule>;
    procedure UnlockInstance(const Value: TObjectPoolItem<TPooledDataModule>);

    property PooledClass: TPooledDataModuleClass read FPooledClass;
    property ObjName: string read FObjName;
    property MaxCount: Integer read FMaxCount;
    property Timeout: DWORD read FTimeout;

    property DataModulesCount: Integer read GetDataModulesCount;
    property InUseDataModulesCount: Integer read GetInUseDataModulesCount;
  end;

type
  TPoolManagerClass = class of TPoolManager;

type
  TEnumPoolManagersCallback = procedure(APoolManager: TPoolManager) of object;

type
  TPoolManagerList = class(TObject)
  strict private
    FList: TObjectList<TPoolManager>;
    FPoolManagerClass: TPoolManagerClass;
  strict protected
    procedure CheckCanAcquirePoolManager(const AObjName: string); virtual;
    function FindPoolManager(const AObjName: string): TPoolManager;

    procedure InitializePoolManagers; virtual;
  public
    constructor Create(const APoolManagerClass: TPoolManagerClass); virtual;
    destructor Destroy; override;

    procedure AfterConstruction; override;


    function Add(const AName: string; const APooledClass: TPooledDataModuleClass): TPoolManager;

    function PoolManagerByName(const AObjName: string): TPoolManager;

    procedure EnumPoolManagers(AEnumPoolManagersCallback: TEnumPoolManagersCallback);
  end;

type
  IPooledDataModuleProxy = interface
  end;

type
{$METHODINFO ON}
  TPooledDataModuleProxyBase = class abstract(TPersistent, IPooledDataModuleProxy)
  strict private
    FPoolManager: TPoolManager;
    function GetLockedInstance: ISmartLock<TPooledDataModule>;
  strict protected
    function GetLockedInstanceUnauthenticated: ISmartLock<TPooledDataModule>;
    property LockedInstance: ISmartLock<TPooledDataModule> read GetLockedInstance;
  protected
    { IInterface }
    function QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;
    function _AddRef: Integer; stdcall;
    function _Release: Integer; stdcall;

    { IAppServer methods fastcall }
    function AS_GetProviderNames: OleVariant; virtual;
    function AS_ApplyUpdates(const ProviderName: string; Delta: OleVariant;
      MaxErrors: Integer; out ErrorCount: Integer;
      OwnerDataStream: TDBXStreamValue): OleVariant; virtual;
    function AS_GetRecords(const ProviderName: string; Count: Integer;
      out RecsOut: Integer; Options: Integer; const CommandText: string;
      ParamReader: TDBXStreamValue; OwnerDataStream: TDBXStreamValue): OleVariant; virtual;
    function AS_DataRequest(const ProviderName: string;
      Data: OleVariant): OleVariant; virtual;
    function AS_GetParams(const ProviderName: string;
      OwnerDataStream: TDBXStreamValue): OleVariant; virtual;
    function AS_RowRequest(const ProviderName: string; Row: OleVariant;
      RequestType: Integer; OwnerDataStream: TDBXStreamValue): OleVariant; virtual;
    procedure AS_Execute(const ProviderName: string; const CommandText: string;
      ParamReader: TDBXStreamValue; OwnerDataStream: TDBXStreamValue); virtual;
  public
    constructor Create(const APooledDataModuleClass: TPooledDataModuleClass); virtual;
  end;
{$METHODINFO OFF}

type
{$METHODINFO ON}
  TPooledDataModuleProxy = class abstract(TPooledDataModuleProxyBase)
  private
    procedure LogProviderCall(
      const ALogOccurance: TLogOccurrence;
      const AClassName: string;
      const AMethodName: string;
      const AProviderName: string;
      const AParamsMemory: Cardinal;
      const ADurationMilliseconds: Cardinal;
      const ADBName: string;
      const AEmployeeCode: Integer;
      const AExceptionMessage: string = ''
    );
  public
    { IAppServer methods fastcall }
    function AS_GetProviderNames: OleVariant; override;
    function AS_ApplyUpdates(const ProviderName: string; Delta: OleVariant;
      MaxErrors: Integer; out ErrorCount: Integer;
      OwnerDataStream: TDBXStreamValue): OleVariant; override;
    function AS_GetRecords(const ProviderName: string; Count: Integer;
      out RecsOut: Integer; Options: Integer; const CommandText: string;
      ParamReader: TDBXStreamValue; OwnerDataStream: TDBXStreamValue): OleVariant; override;
    function AS_DataRequest(const ProviderName: string;
      Data: OleVariant): OleVariant; override;
    function AS_GetParams(const ProviderName: string;
      OwnerDataStream: TDBXStreamValue): OleVariant; override;
    function AS_RowRequest(const ProviderName: string; Row: OleVariant;
      RequestType: Integer; OwnerDataStream: TDBXStreamValue): OleVariant; override;
    procedure AS_Execute(const ProviderName: string; const CommandText: string;
      ParamReader: TDBXStreamValue; OwnerDataStream: TDBXStreamValue); override;
  end;
{$METHODINFO OFF}

function PoolManagers: TPoolManagerList;

function LoginContext: TServerLoginContext;

function ContextDate: TDateTime;
function ContextTime: TDateTime;
function ContextNow: TDateTime;

implementation

uses
  MidConst, Variants, uServerMessageIds, uSvrUtils, uMessageUtils, DB,
  uSessionContext, DSUtil, dSvrMain, System.TimeSpan, uServerConfig,
  uEnumeratorUtils, uServerConfigRepository, uSvrHostingUtils;

{$R *.DFM}

var
  FPoolManagers: TPoolManagerList;

function PoolManagers: TPoolManagerList;
begin
  if not Assigned(FPoolManagers) then
    FPoolManagers:= TPoolManagerList.Create(TPoolManager);

  Result:= FPoolManagers;
end;

function LoginContext: TServerLoginContext;
begin
  Result:= SessionContext.LoginContext;
end;

function ContextDate: TDateTime;
begin
  Result:= LoginContext.ContextDate;
end;

function ContextNow: TDateTime;
begin
  Result:= LoginContext.ContextNow;
end;

function ContextTime: TDateTime;
begin
  Result:= LoginContext.ContextTime;
end;

{ TPoolManager }

procedure TPoolManager.AfterConstruction;
begin
  inherited AfterConstruction;
  LoadObjParams;
  InternalResetParams;

  FPool:=
    TObjectPool<TPooledDataModule>.Create(
      MaxCount,
      TTimeSpan.FromMilliseconds(FTimeout),
      DoCreateNewInstance);
end;

constructor TPoolManager.Create(const AObjName: string; const APooledClass: TPooledDataModuleClass);
begin
  inherited Create;

  FObjName:= AObjName;
  FObjParams:= TStringList.Create;

  FPooledClass:= APooledClass;
end;

destructor TPoolManager.Destroy;
begin
  FPooledClass:= nil;
  FreeAndNil(FPool);
  FreeAndNil(FObjParams);
  inherited Destroy;
end;

function TPoolManager.DoCreateNewInstance: TPooledDataModule;
begin
  Result:= FPooledClass.Create(nil);
  try
    InitNewInstance(Result);
  except
    FreeAndNil(Result);
    raise;
  end;  { try }
end;

function TPoolManager.GetIntParamValue(const AParamName: string): Integer;
var
  s: string;
begin
  s:= GetStringParamValue(AParamName);
  try
    Result:= StrToInt(s);
  except
    raise Exception.Create(SInvalidIntParamValueId + '(' +
     'Value:s=' + InternalEncodeString(s) + ',' +
     'Object:s=' + InternalEncodeString(FObjName) + ',' +
     'Param:s=' + InternalEncodeString(AParamName) + ')');
  end;  { try }
end;

class function TPoolManager.GetParamNames: TStringArray;
begin
  Result:= [SMaxCountParamName, STimeoutParamName];
end;

class function TPoolManager.GetConfigKey: string;
begin
  Result:= GetDataModulesConfigKey;
end;

function TPoolManager.GetStringParamValue(
  const AParamName: string): string;
begin
  Result:= FObjParams.Values[AParamName];
end;

procedure TPoolManager.InitNewInstance(AInstance: TPooledDataModule);
begin
  AInstance.SetObjParams(FObjParams);  // tuk davashe insufficient memory na 2rata instance no veche ne dava - neznam zashto
end;

procedure TPoolManager.InternalResetParams;
begin
  FMaxCount:= GetIntParamValue(SMaxCountParamName);
  FTimeout:= GetIntParamValue(STimeoutParamName);
end;

procedure TPoolManager.LoadObjParams;
var
  ParamNames: TArray<string>;

  function UseParamName(const AParamName: string): Boolean;
  var
    pn: string;
  begin
    for pn in ParamNames do
      if (pn = AParamName) then
        Exit(True);

    Result:= False;
  end;

  procedure SetObjParam(const AParamName, AValue: string);
  begin
    if not UseParamName(AParamName) then
      Exit;

    if (AValue <> '') then
      FObjParams.Values[AParamName]:= AValue;
  end;

var
  ServerConfig: TServerConfig;
  ServerConnectionConfig: TServerConnectionConfig;
  ServerDataModuleConfig: TServerDataModuleConfig;
begin
  ParamNames:= GetParamNames;

  ServerConfig:= GetStartupServerConfig;

  // todo: defaults consts
  // set defaults
  SetObjParam(SMaxCountParamName, 20.ToString());
  SetObjParam(STimeoutParamName, 15000.ToString());

  // todo: make virtual
  SetObjParam(SDBConnectionTypeParamName, SOraDirectConnectionType);
  SetObjParam(SDBHostParamName, 'localhost');
  SetObjParam(SDBPortParamName, 1521.ToString());
  SetObjParam(SDBServiceParamName, 'orcl');
  SetObjParam(SDBUserParamName, 'defaultuser');
  SetObjParam(SDBPasswordParamName, 'defaultpassword');
  //

  for ServerDataModuleConfig in ServerConfig.DataModules do
    if (ServerDataModuleConfig.Name = FObjName) then
      begin
        SetObjParam(SMaxCountParamName, ServerDataModuleConfig.MaxCount);
        SetObjParam(STimeoutParamName, ServerDataModuleConfig.Timeout);
      end;

  if not FObjName.StartsWith('Tdm') then
    for ServerConnectionConfig in ServerConfig.Connections do
      if (ServerConnectionConfig.DBConnectionName = FObjName) then
        begin
          SetObjParam(SDBConnectionTypeParamName, ServerConnectionConfig.DBConnectionType);
          SetObjParam(SDBHostParamName, ServerConnectionConfig.DBHost);
          SetObjParam(SDBPortParamName, ServerConnectionConfig.DBPort);
          SetObjParam(SDBServiceParamName, ServerConnectionConfig.DBService);
          SetObjParam(SDBUserParamName, ServerConnectionConfig.DBUser);
          SetObjParam(SDBPasswordParamName, ServerConnectionConfig.DBPassword);
        end;
end;

function TPoolManager.LockInstance: TObjectPoolItem<TPooledDataModule>;
begin
  Result:= FPool.Acquire;
  try
    Assert(Assigned(Result.Item));
    Assert(not Result.Item.InUse);

    Result.Item.StartUsing;
  except
    FPool.ReleaseAndReset(Result);
    raise;
  end;
end;

procedure TPoolManager.UnlockInstance(const Value: TObjectPoolItem<TPooledDataModule>);
var
  ReleasedWithReset: Boolean;
begin
  Assert(Assigned(Value.Item));

  ReleasedWithReset:= False;
  try
    Value.Item.StopUsing;
  except
    ReleasedWithReset:= True;
    FPool.ReleaseAndReset(Value);
    // do not raise
  end;

  if not ReleasedWithReset then
    FPool.Release(Value);
end;

procedure TPoolManager.Reset;
begin
  FPool.Reset;
end;

function TPoolManager.GetDataModulesCount: Integer;
begin
  Result:= FPool.Count;
end;

function TPoolManager.GetInUseDataModulesCount: Integer;
begin
  Result:=
    FPool.Count(
      function(dm: TPooledDataModule): Boolean
      begin
        Result:= dm.InUse;
      end
    );
end;

{ TPooledDataModule }

{ _TPooledDataModule non-safecall IAppServer method implementations }

function TPooledDataModule.AS_GetProviderNames: OleVariant;
begin
  Result:= ProviderNamesToVariant;
end;

function TPooledDataModule.AS_ApplyUpdates(const ProviderName: string;
  const Delta: OleVariant; MaxErrors: Integer; out ErrorCount: Integer;
  var OwnerData: OleVariant): OleVariant;
begin
  Result:= Providers[ProviderName].ApplyUpdates(Delta, MaxErrors, ErrorCount, OwnerData);
end;

function TPooledDataModule.AS_GetRecords(const ProviderName: string; Count: Integer;
  out RecsOut: Integer; Options: Integer; const CommandText: string;
  var Params, OwnerData: OleVariant): OleVariant;
begin
  Result:= Providers[ProviderName].GetRecords(Count, RecsOut, Options, CommandText, Params, OwnerData);
end;

function TPooledDataModule.AS_RowRequest(const ProviderName: string;
  const Row: OleVariant; RequestType: Integer; var OwnerData: OleVariant): OleVariant;
begin
  Result:= Providers[ProviderName].RowRequest(Row, RequestType, OwnerData);
end;

function TPooledDataModule.AS_DataRequest(const ProviderName: string;
  const Data: OleVariant): OleVariant;
begin
  Result:= Providers[ProviderName].DataRequest(Data);
end;

function TPooledDataModule.AS_GetParams(const ProviderName: string; var OwnerData: OleVariant): OleVariant;
begin
  Result:= Providers[ProviderName].GetParams(OwnerData);
end;

procedure TPooledDataModule.AS_Execute(const ProviderName: string;
  const CommandText: string; var Params, OwnerData: OleVariant);
begin
  Providers[ProviderName].Execute(CommandText, Params, OwnerData);
end;

{ _TPooledDataModule new methods }

procedure TPooledDataModule.SetObjParams(const AObjParams: TStrings);
begin
  // do nothing
end;

procedure TPooledDataModule.SetProvidersOptions;
var
  prv: TDataSetProvider;
begin
  for prv in AllComponents.OfType<TDataSetProvider> do
    prv.Options:= prv.Options + [poNoReset];
end;

procedure TPooledDataModule.StartUsing;
begin
  // pri exception tuk obekta triabva da se osvobodi

  Assert(not InUse);

  FInUse:= True;
  FInUseThreadID:= GetCurrentThreadID();

  SessionContext.EnterServerCall;  // todo - !!!!!! dali niama drugo miasto za towa? ili drug nachin
end;

procedure TPooledDataModule.StopUsing;
begin
  // pri exception tuk obekta triabva da se osvobodi

  Assert(InUse);
  Assert(IsInCorrectThread);

  SessionContext.LeaveServerCall;

  FInUseThreadID:= 0;
  FInUse:= False;
end;

function TPooledDataModule.IsInCorrectThread: Boolean;
begin
  Result:= (FInUseThreadId = GetCurrentThreadId);
end;

procedure TPooledDataModule.Loaded;
begin
  inherited;
  TServerComponentChecker.CheckForDisconnectedEventHandlers(Self);
  TServerComponentChecker.CheckComponentsNotConnected(Self);
  SetProvidersOptions;
end;

procedure TPooledDataModule.CloseDataSets;
var
  ds: TDataSet;
begin
  // This routine is a workaroung for a midas bug (leaving detail datasets open)
  for ds in AllComponents.OfType<TDataSet> do
    if ds.Active then
      ds.Close;
end;

procedure TPooledDataModule.DataModuleCreate(Sender: TObject);
begin
  inherited;
  dmSvrMain.AddDataModuleToStringListsLibrary(Self);
end;

{ TPoolManagerList }

function TPoolManagerList.Add(const AName: string;
  const APooledClass: TPooledDataModuleClass): TPoolManager;
begin
  Assert(AName <> '');
  Assert(Assigned(APooledClass));

  Assert(not Assigned(FindPoolManager(AName)));

  Result:= FPoolManagerClass.Create(AName, APooledClass);
  try
    FList.Add(Result);
  except
    FreeAndNil(Result);
    raise;
  end;  { try }
end;

procedure TPoolManagerList.AfterConstruction;
begin
  inherited AfterConstruction;
  InitializePoolManagers;
end;

function TPoolManagerList.PoolManagerByName(const AObjName: string): TPoolManager;
begin
  CheckCanAcquirePoolManager(AObjName);

  Result:= FindPoolManager(AObjName);

  if not Assigned(Result) then
    raise Exception.Create('Cannot find pool manager for ' + AObjName);
end;

procedure TPoolManagerList.CheckCanAcquirePoolManager(
  const AObjName: string);
begin
  // do nothing
end;

constructor TPoolManagerList.Create(const APoolManagerClass: TPoolManagerClass);
begin
  inherited Create;
  FList:= TObjectList<TPoolManager>.Create;
  FPoolManagerClass:= APoolManagerClass;
end;

destructor TPoolManagerList.Destroy;
begin
  FreeAndNil(FList);

  inherited Destroy;
end;

procedure TPoolManagerList.EnumPoolManagers(AEnumPoolManagersCallback: TEnumPoolManagersCallback);
var
  pm: TPoolManager;
begin
  for pm in FList do
    AEnumPoolManagersCallback(pm);
end;

function TPoolManagerList.FindPoolManager(const AObjName: string): TPoolManager;
var
  pm: TPoolManager;
begin
  // ne se pazi s FSync - samo za vutreshna upotreba
  Result:= nil;
  for pm in FList do
    begin
      Assert(Assigned(pm));
      if (pm.ObjName = AObjName) then
        begin
          Result:= pm;
          Break;
        end;  { if }
    end;  { for }
end;

procedure TPoolManagerList.InitializePoolManagers;
begin
  // do nothing
end;

{ TPooledDataModuleProxyBase }

constructor TPooledDataModuleProxyBase.Create(const APooledDataModuleClass: TPooledDataModuleClass);
begin
  inherited Create;
  FPoolManager:= PoolManagers.Add(APooledDataModuleClass.ClassName, APooledDataModuleClass);
end;

function TPooledDataModuleProxyBase.GetLockedInstance: ISmartLock<TPooledDataModule>;
begin
  SessionContext.CheckAuthenticated;
  Result:= GetLockedInstanceUnauthenticated;
end;

function TPooledDataModuleProxyBase.GetLockedInstanceUnauthenticated: ISmartLock<TPooledDataModule>;
begin
  Result:=
    TSmartLock<TObjectPoolItem<TPooledDataModule>, TPooledDataModule>.Create(
      FPoolManager.LockInstance,
      FPoolManager.UnlockInstance,
      function (const AObjectPoolItem: TObjectPoolItem<TPooledDataModule>): TPooledDataModule begin
        Result:= AObjectPoolItem.Item;
      end
    );
end;

function TPooledDataModuleProxyBase.QueryInterface(const IID: TGUID;
  out Obj): HResult;
begin
  if GetInterface(IID, Obj) then
    Result := 0
  else
    Result := E_NOINTERFACE;
end;

function TPooledDataModuleProxyBase._AddRef: Integer;
begin
  Result:= 2;
end;

function TPooledDataModuleProxyBase._Release: Integer;
begin
  Result:= 2;
end;

function TPooledDataModuleProxyBase.AS_ApplyUpdates(
  const ProviderName: string; Delta: OleVariant; MaxErrors: Integer;
  out ErrorCount: Integer; OwnerDataStream: TDBXStreamValue): OleVariant;
var
  OwnerData: OleVariant;
begin
  // Setup input parameters
  OwnerData:= OwnerDataStream.AsVariant;

  // Invoke the IAppServer method
  Result:=
    LockedInstance.Value.AS_ApplyUpdates(ProviderName, Delta, MaxErrors, ErrorCount, OwnerData);

  // Assign output parameters
  OwnerDataStream.AsVariant:= OwnerData;
end;

function TPooledDataModuleProxyBase.AS_DataRequest(
  const ProviderName: string; Data: OleVariant): OleVariant;
begin
  Result:=
    LockedInstance.Value.AS_DataRequest(ProviderName, Data);
end;

procedure TPooledDataModuleProxyBase.AS_Execute(const ProviderName, CommandText: string;
  ParamReader: TDBXStreamValue; OwnerDataStream: TDBXStreamValue);
var
  Params: OleVariant;
  OwnerData: OleVariant;
begin
  // Setup input parameters
  Params := ParamReader.AsVariant;
  OwnerData := OwnerDataStream.AsVariant;

  // Invoke the IAppServer method
  LockedInstance.Value.AS_Execute(ProviderName, CommandText, Params, OwnerData);

  // Assign output parameters
  ParamReader.AsVariant := Params;
  OwnerDataStream.AsVariant := OwnerData;
end;

function TPooledDataModuleProxyBase.AS_GetParams(
  const ProviderName: string; OwnerDataStream: TDBXStreamValue): OleVariant;
var
  OwnerData: OleVariant;
begin
  // Setup input parameters
  OwnerData:= OwnerDataStream.AsVariant;

  // Invoke the IAppServer method
  Result:=
    LockedInstance.Value.AS_GetParams(ProviderName, OwnerData);

  // Assign output parameters
  OwnerDataStream.AsVariant:= OwnerData;
end;

function TPooledDataModuleProxyBase.AS_GetProviderNames: OleVariant;
begin
  Result:=
    LockedInstance.Value.AS_GetProviderNames;
end;

function TPooledDataModuleProxyBase.AS_GetRecords(
  const ProviderName: string; Count: Integer; out RecsOut: Integer;
  Options: Integer; const CommandText: string;
  ParamReader: TDBXStreamValue; OwnerDataStream: TDBXStreamValue): OleVariant;
var
  Params: OleVariant;
  OwnerData: OleVariant;
begin
  // Setup input parameters
  Params := ParamReader.AsVariant;
  OwnerData := OwnerDataStream.AsVariant;

  // Invoke the IAppServer method
  Result:=
    LockedInstance.Value.AS_GetRecords(ProviderName, Count, RecsOut, Options, CommandText, Params, OwnerData);

  // Assign output parameters
  ParamReader.AsVariant := Params;
  OwnerDataStream.AsVariant := OwnerData;
end;

function TPooledDataModuleProxyBase.AS_RowRequest(
  const ProviderName: string; Row: OleVariant; RequestType: Integer;
  OwnerDataStream: TDBXStreamValue): OleVariant;
var
  OwnerData: OleVariant;
begin
  // Setup input parameters
  OwnerData:= OwnerDataStream.AsVariant;

  // Invoke the IAppServer method
  Result:=
    LockedInstance.Value.AS_RowRequest(ProviderName, Row, RequestType, OwnerData);

  // Assign output parameters
  OwnerDataStream.AsVariant:= OwnerData;
end;

{ TPooledDataModuleProxy }

function TPooledDataModuleProxy.AS_ApplyUpdates(
  const ProviderName: string; Delta: OleVariant; MaxErrors: Integer;
  out ErrorCount: Integer; OwnerDataStream: TDBXStreamValue): OleVariant;
var
  BeginTickCount: Cardinal;
  EndTickCount: Cardinal;
  ExceptionMessage: string;
begin
  LogProviderCall(loBefore, ClassName, 'AS_ApplyUpdates', ProviderName,
    OleVariantMemorySize(Delta) + OwnerDataStream.GetValueSize + OleVariantMemorySize(Result), 0,
    SessionContext.DBName, SessionContext.LoginContext.UserCode);

  BeginTickCount:= GetTickCount;
  try

    ExceptionMessage:= '';
    try

      Result:=
        inherited AS_ApplyUpdates(ProviderName, Delta, MaxErrors, ErrorCount, OwnerDataStream);

    except
      on E: Exception do
        begin
          ExceptionMessage:= E.Message;
          raise;
        end;
    end;

  finally
    EndTickCount:= GetTickCount;

    LogProviderCall(loAfter, ClassName, 'AS_ApplyUpdates', ProviderName,
      OleVariantMemorySize(Delta) + OwnerDataStream.GetValueSize + OleVariantMemorySize(Result),
      TickCountDiff(BeginTickCount, EndTickCount),
      SessionContext.DBName, SessionContext.LoginContext.UserCode, ExceptionMessage);
  end;
end;

function TPooledDataModuleProxy.AS_DataRequest(
  const ProviderName: string; Data: OleVariant): OleVariant;
var
  BeginTickCount: Cardinal;
  EndTickCount: Cardinal;
  ExceptionMessage: string;
begin
  LogProviderCall(loBefore, ClassName, 'AS_DataRequest', ProviderName,
    OleVariantMemorySize(Data) + OleVariantMemorySize(Result), 0,
    SessionContext.DBName, SessionContext.LoginContext.UserCode);

  BeginTickCount:= GetTickCount;
  try

    ExceptionMessage:= '';
    try

      Result:=
        inherited AS_DataRequest(ProviderName, Data);

    except
      on E: Exception do
        begin
          ExceptionMessage:= E.Message;
          raise;
        end;
    end;

  finally
    EndTickCount:= GetTickCount;

    LogProviderCall(loAfter, ClassName, 'AS_DataRequest', ProviderName,
      OleVariantMemorySize(Data) + OleVariantMemorySize(Result),
      TickCountDiff(BeginTickCount, EndTickCount),
      SessionContext.DBName, SessionContext.LoginContext.UserCode, ExceptionMessage);
  end;
end;

procedure TPooledDataModuleProxy.AS_Execute(const ProviderName, CommandText: string;
  ParamReader: TDBXStreamValue; OwnerDataStream: TDBXStreamValue);
var
  BeginTickCount: Cardinal;
  EndTickCount: Cardinal;
  ExceptionMessage: string;
begin
  LogProviderCall(loBefore, ClassName, 'AS_Execute', ProviderName,
    ParamReader.GetValueSize + OwnerDataStream.GetValueSize, 0,
    SessionContext.DBName, SessionContext.LoginContext.UserCode);

  BeginTickCount:= GetTickCount;
  try

    ExceptionMessage:= '';
    try

      inherited AS_Execute(ProviderName, CommandText, ParamReader, OwnerDataStream);

    except
      on E: Exception do
        begin
          ExceptionMessage:= E.Message;
          raise;
        end;
    end;

  finally
    EndTickCount:= GetTickCount;

    LogProviderCall(loAfter, ClassName, 'AS_Execute', ProviderName,
      ParamReader.GetValueSize + OwnerDataStream.GetValueSize,
      TickCountDiff(BeginTickCount, EndTickCount),
      SessionContext.DBName, SessionContext.LoginContext.UserCode, ExceptionMessage);
  end;
end;

function TPooledDataModuleProxy.AS_GetParams(
  const ProviderName: string; OwnerDataStream: TDBXStreamValue): OleVariant;
var
  BeginTickCount: Cardinal;
  EndTickCount: Cardinal;
  ExceptionMessage: string;
begin
  LogProviderCall(loBefore, ClassName, 'AS_GetParams', ProviderName,
    OwnerDataStream.GetValueSize + OleVariantMemorySize(Result), 0,
    SessionContext.DBName, SessionContext.LoginContext.UserCode);

  BeginTickCount:= GetTickCount;
  try

    ExceptionMessage:= '';
    try

      Result:=
        inherited AS_GetParams(ProviderName, OwnerDataStream);

    except
      on E: Exception do
        begin
          ExceptionMessage:= E.Message;
          raise;
        end;
    end;

  finally
    EndTickCount:= GetTickCount;

    LogProviderCall(loAfter, ClassName, 'AS_GetParams', ProviderName,
      OwnerDataStream.GetValueSize + OleVariantMemorySize(Result),
      TickCountDiff(BeginTickCount, EndTickCount),
      SessionContext.DBName, SessionContext.LoginContext.UserCode, ExceptionMessage);
  end;
end;

function TPooledDataModuleProxy.AS_GetProviderNames: OleVariant;
var
  BeginTickCount: Cardinal;
  EndTickCount: Cardinal;
  ExceptionMessage: string;
begin
  LogProviderCall(loBefore, ClassName, 'AS_GetProviderNames', '',
    OleVariantMemorySize(Result), 0,
    SessionContext.DBName, SessionContext.LoginContext.UserCode);

  BeginTickCount:= GetTickCount;
  try

    ExceptionMessage:= '';
    try

      Result:=
        inherited AS_GetProviderNames;

    except
      on E: Exception do
        begin
          ExceptionMessage:= E.Message;
          raise;
        end;
    end;

  finally
    EndTickCount:= GetTickCount;

    LogProviderCall(loAfter, ClassName, 'AS_GetProviderNames', '',
      OleVariantMemorySize(Result),
      TickCountDiff(BeginTickCount, EndTickCount),
      SessionContext.DBName, SessionContext.LoginContext.UserCode, ExceptionMessage);
  end;
end;

function TPooledDataModuleProxy.AS_GetRecords(
  const ProviderName: string; Count: Integer; out RecsOut: Integer;
  Options: Integer; const CommandText: string;
  ParamReader: TDBXStreamValue; OwnerDataStream: TDBXStreamValue): OleVariant;
var
  BeginTickCount: Cardinal;
  EndTickCount: Cardinal;
  ExceptionMessage: string;
begin
  LogProviderCall(loBefore, ClassName, 'AS_GetRecords', ProviderName,
    ParamReader.GetValueSize + OwnerDataStream.GetValueSize + OleVariantMemorySize(Result), 0,
    SessionContext.DBName, SessionContext.LoginContext.UserCode);

  BeginTickCount:= GetTickCount;
  try

    ExceptionMessage:= '';
    try

      Result:=
        inherited AS_GetRecords(ProviderName, Count, RecsOut, Options, CommandText, ParamReader, OwnerDataStream);

    except
      on E: Exception do
        begin
          ExceptionMessage:= E.Message;
          raise;
        end;
    end;

  finally
    EndTickCount:= GetTickCount;

    LogProviderCall(loAfter, ClassName, 'AS_GetRecords', ProviderName,
      ParamReader.GetValueSize + OwnerDataStream.GetValueSize + OleVariantMemorySize(Result),
      TickCountDiff(BeginTickCount, EndTickCount),
      SessionContext.DBName, SessionContext.LoginContext.UserCode, ExceptionMessage);
  end;
end;

function TPooledDataModuleProxy.AS_RowRequest(
  const ProviderName: string; Row: OleVariant; RequestType: Integer;
  OwnerDataStream: TDBXStreamValue): OleVariant;
var
  BeginTickCount: Cardinal;
  EndTickCount: Cardinal;
  ExceptionMessage: string;
begin
  LogProviderCall(loBefore, ClassName, 'AS_RowRequest', ProviderName,
    OleVariantMemorySize(Row) + OwnerDataStream.GetValueSize + OleVariantMemorySize(Result), 0,
    SessionContext.DBName, SessionContext.LoginContext.UserCode);

  BeginTickCount:= GetTickCount;
  try

    ExceptionMessage:= '';
    try

      Result:=
        inherited AS_RowRequest(ProviderName, Row, RequestType, OwnerDataStream);

    except
      on E: Exception do
        begin
          ExceptionMessage:= E.Message;
          raise;
        end;
    end;

  finally
    EndTickCount:= GetTickCount;

    LogProviderCall(loAfter, ClassName, 'AS_RowRequest', ProviderName,
      OleVariantMemorySize(Row) + OwnerDataStream.GetValueSize + OleVariantMemorySize(Result),
      TickCountDiff(BeginTickCount, EndTickCount),
      SessionContext.DBName, SessionContext.LoginContext.UserCode, ExceptionMessage);
  end;
end;

procedure TPooledDataModuleProxy.LogProviderCall(
  const ALogOccurance: TLogOccurrence; const AClassName, AMethodName,
  AProviderName: string; const AParamsMemory, ADurationMilliseconds: Cardinal;
  const ADBName: string; const AEmployeeCode: Integer;
  const AExceptionMessage: string);
var
  Logger: IServerCallsLogger;
begin
  Logger:= TServerCallsLoggerFactory.GetLogger;

  if Assigned(Logger) then
    Logger.LogProviderCall(
      ALogOccurance, AClassName, AMethodName, AProviderName,
      AParamsMemory, ADurationMilliseconds,
      ADBName, AEmployeeCode,
      AExceptionMessage
    );

  if (ALogOccurance = loBefore) then
    SessionContext.LastCallMethodName:=
      AClassName + '.' + AMethodName + ' / ' + AProviderName;
end;

initialization

finalization
  FreeAndNil(FPoolManagers);
end.
