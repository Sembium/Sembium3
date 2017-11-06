unit dNonDbUtils;

interface

uses
  Windows, Messages, SysUtils, Classes, dPooledDataModule, DB,
  DBClient, AbmesClientDataSet, Provider, AbmesFields,
  AbmesSQLQuery, uServerLoginContext, uSmartLock;

type
  TdmNonDbUtils = class(TPooledDataModule)
    prvPoolManagers: TDataSetProvider;
    cdsPoolManagers: TAbmesClientDataSet;
    cdsPoolManagersOBJ_NAME: TAbmesWideStringField;
    cdsPoolManagersINSTANCES_COUNT: TAbmesFloatField;
    cdsPoolManagersIN_USE_INSTANCES_COUNT: TAbmesFloatField;
    cdsPoolManagersMIN_INSTANCES: TAbmesFloatField;
    cdsPoolManagersMAX_INSTANCES: TAbmesFloatField;
    cdsPoolManagersTIMEOUT: TAbmesFloatField;
    cdsPoolManagersOBJ_CLASS: TAbmesWideStringField;
    cdsPoolManagersMODULE_IDENTIFIER: TAbmesWideStringField;
    cdsMemoryManager: TAbmesClientDataSet;
    prvMemoryManager: TDataSetProvider;
    cdsMemoryManagerRESERVED_ADDRESS_SPACE: TAbmesFloatField;
    cdsMemoryManagerUSABLE_BLOCK_SIZE: TAbmesFloatField;
    cdsMemoryManagerINTERNAL_ALLOCATED_SIZE: TAbmesFloatField;
    cdsMemoryManagerUSABLE_ALLOCATED_SIZE: TAbmesFloatField;
    cdsMemoryManagerBLOCK_COUNT: TAbmesFloatField;
    cdsMemoryManagerINTERNAL_BLOCK_SIZE: TAbmesFloatField;
    cdsActiveConnections: TAbmesClientDataSet;
    prvActiveConnections: TDataSetProvider;
    cdsActiveConnectionsCLIENT_COMPUTER_NAME: TAbmesWideStringField;
    cdsActiveConnectionsCLIENT_WINDOWS_USER_NAME: TAbmesWideStringField;
    cdsActiveConnectionsLOGIN_NAME: TAbmesWideStringField;
    cdsActiveConnectionsUSER_FULL_NAME: TAbmesWideStringField;
    cdsActiveConnectionsCONNECTION_ID: TAbmesFloatField;
    cdsActiveConnectionsCLIENT_WINDOWS_SESSION_ID: TAbmesFloatField;
    cdsActiveConnectionsLAST_LOGIN_DATE: TAbmesSQLTimeStampField;
    cdsActiveConnectionsLAST_LOGIN_TIME: TAbmesSQLTimeStampField;
    cdsActiveConnectionsCLOSE_CONNECTION_REQUESTED: TAbmesFloatField;
    cdsActiveConnectionsLAST_TIME_CHECK_DATE: TAbmesSQLTimeStampField;
    cdsActiveConnectionsLAST_TIME_CHECK_TIME: TAbmesSQLTimeStampField;
    cdsActiveConnectionsEMPLOYEE_NO: TAbmesFloatField;
    cdsActiveConnectionsCONNECTION_TYPE: TAbmesWideStringField;
    cdsActiveConnectionsDB_NAME: TAbmesWideStringField;
    cdsActiveConnectionsIS_IN_USE: TAbmesFloatField;
    cdsActiveConnectionsLICENSE_POOL_TYPE: TAbmesFloatField;
    cdsTimeZones: TAbmesClientDataSet;
    prvTimeZones: TDataSetProvider;
    cdsTimeZonesTIME_ZONE_ID: TAbmesWideStringField;
    cdsTimeZonesTIME_ZONE_NAME: TAbmesWideStringField;
    cdsTimeZonesBIAS: TAbmesFloatField;
    cdsTimeZonesTIME_ZONE_OFFSET: TAbmesFloatField;
    cdsActiveConnectionsCLIENT_SYS_VOLUME_SERIAL_NUMBER: TAbmesWideStringField;
    cdsActiveConnectionsLAST_ACTIVITY_DATE: TAbmesSQLTimeStampField;
    cdsActiveConnectionsLAST_ACTIVITY_TIME: TAbmesSQLTimeStampField;
    cdsActiveConnectionsIP_ADDRESS: TAbmesWideStringField;
    cdsActiveConnectionsCURRENT_ACTIVITY_SECONDS: TAbmesFloatField;
    cdsActiveConnectionsCLIENT_WINDOWS_VERSION: TAbmesWideStringField;
    cdsActiveConnectionsCLIENT_HARDWARE_INFO: TWideStringField;
    cdsActiveConnectionsSESSION_COUNT: TAbmesFloatField;     // todo: ako go niama tozi red, clienta dava "Connection terminated", a ne dava exceptiona ot server-a "TWideString field not found" ili neshto takova
    procedure prvPoolManagersGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvPoolManagersBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvPoolManagersAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvMemoryManagerAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvMemoryManagerBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvMemoryManagerGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvActiveConnectionsBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvActiveConnectionsAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvActiveConnectionsGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure prvTimeZonesBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvTimeZonesAfterGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvTimeZonesGetData(Sender: TObject;
      DataSet: TCustomClientDataSet);
  private
    FTempDataSet: TCustomClientDataSet;
    FTempUserIsPowerIser: Boolean;
    procedure OnEnumPoolManagers(APoolManager: TPoolManager);
    procedure InsertActiveConnections(ADataSet: TCustomClientDataSet);
  protected
    procedure StopUsing; override;
    procedure GetActiveConnectionsCounts(
      const ADBName: string;
      const AComputerName: string;
      out ActiveConcurrentConnectionsCount: Integer;
      out ActiveNamedConnectionsForComputer: Integer;
      out ActiveNamedConnectionsCount: Integer;
      out ActiveInternalConnectionsCount: Integer);
  end;

type
  IdmNonDbUtilsProxy = interface(IPooledDataModuleProxy)
    procedure GetActiveConnectionsCounts(
      const ADBName: string;
      const AComputerName: string;
      out ActiveConcurrentConnectionsCount: Integer;
      out ActiveNamedConnectionsForComputer: Integer;
      out ActiveNamedConnectionsCount: Integer;
      out ActiveInternalConnectionsCount: Integer);
  end;

type
  TdmNonDbUtilsProxy = class(TPooledDataModuleProxy, IdmNonDbUtilsProxy)
  private
    class var FSingleton: TdmNonDbUtilsProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmNonDbUtils>;
  strict protected
    property LockedInstance: ISmartLock<TdmNonDbUtils> read GetLockedInstance;
  strict private
    procedure CloseConnection(const AConectionId: Integer; const AMessage: string);
  protected
    procedure GetActiveConnectionsCounts(
      const ADBName: string;
      const AComputerName: string;
      out ActiveConcurrentConnectionsCount: Integer;
      out ActiveNamedConnectionsForComputer: Integer;
      out ActiveNamedConnectionsCount: Integer;
      out ActiveInternalConnectionsCount: Integer);
  public
    class property Singleton: TdmNonDbUtilsProxy read FSingleton;

    // the following methods are implemented in the proxy for performance reasons
    procedure Ping(
      const IsActivePing: Boolean;
      out ServerDateTime: TDateTime;
      out CloseConnectionRequested: Boolean;
      out CloseConnectionMessage: string;
      out ServerDateTimeFormat: string;
      out IsMainConnectionConnected: Boolean;
      out IsServerLoginContextValid: Boolean);

    procedure ResetPoolManager(const AObjClassName, AObjName: string);
    procedure CloseConnections(const AConnectionIds: OleVariant; const AMessage: string);
  end;

implementation

uses
  StrUtils, Variants, DateUtils, uUtils, dDBDataModule,
  uLicenseUtils, uTimeZoneUtils, uDBLoginContext, uObjParams, uSessionContext,
  uServerMessageIds, uMessageUtils, dSvrMain, uFuncUtils, uAuthenticationToken,
  uConnectionUtils;

{$R *.dfm}

{ TdmNonDbUtilsProxy }

function TdmNonDbUtilsProxy.GetLockedInstance: ISmartLock<TdmNonDbUtils>;
begin
  Result:= ISmartLock<TdmNonDbUtils>(inherited LockedInstance);
end;

procedure TdmNonDbUtilsProxy.CloseConnection(const AConectionId: Integer; const AMessage: string);

  function GetSessionContextByConnectionId(const AConectionId: Integer): TSessionContext;
  var
    sc: TSessionContext;
  begin
    for sc in SessionContextsSnapshot do
      if (sc.LoginContext.ConnectionId = AConectionId) then
        Exit(sc);

    Result:= nil;
  end;

var
  sc: TSessionContext;
begin
  sc:= GetSessionContextByConnectionId(AConectionId);

  if Assigned(sc) then
    sc.RequestCloseConnection(AMessage);
end;

procedure TdmNonDbUtilsProxy.CloseConnections(const AConnectionIds: OleVariant; const AMessage: string);
var
  ConnectionIndex: Integer;
begin
  // implemented here
  Assert(VarIsArray(AConnectionIds));
  for ConnectionIndex:= VarArrayLowBound(AConnectionIds, 1) to VarArrayHighBound(AConnectionIds, 1) do
    Assert(VarIsType(AConnectionIds[ConnectionIndex], varInteger));

  for ConnectionIndex:= VarArrayLowBound(AConnectionIds, 1) to VarArrayHighBound(AConnectionIds, 1) do
    CloseConnection(AConnectionIds[ConnectionIndex], AMessage);
end;

procedure TdmNonDbUtilsProxy.ResetPoolManager(const AObjClassName, AObjName: string);
var
  PoolManagerList: TPoolManagerList;
begin
  // implemented here

  Assert((AObjClassName <> TdmNonDbUtils.ClassName));

  if (AObjClassName = TPoolManager.ClassName) then
    PoolManagerList:= PoolManagers
  else
    if (AObjClassName = TDBPoolManager.ClassName) then
      PoolManagerList:= DBPoolManagers
    else
      raise Exception.Create('Unknown PoolManager class name');

  PoolManagerList.PoolManagerByName(AObjName).Reset;
end;

procedure TdmNonDbUtilsProxy.Ping(const IsActivePing: Boolean;
  out ServerDateTime: TDateTime; out CloseConnectionRequested: Boolean;
  out CloseConnectionMessage: string; out ServerDateTimeFormat: string;
  out IsMainConnectionConnected, IsServerLoginContextValid: Boolean);
var
  BanRequested: Boolean;
  LoginContext: TDBLoginContext;
begin
  // implemented here

  LoginContext:= SessionContext.LoginContext as TDBLoginContext;

  ServerDateTime:= LoginContext.ContextNow;
  ServerDateTimeFormat:= GetLocalDateTimeFormat;

  BanRequested:=
    (LoginContext.AccessBanType in [abtBlockConnections, abtBlockClients]) and
    not SessionContext.IsPowerUser;

  if BanRequested then
    begin
      CloseConnectionRequested:= True;
      CloseConnectionMessage:=
        SAccessBannedId +
        '(' + 'BanMessage:s=' + InternalEncodeString(LoginContext.LockMessage) + ')';
    end
  else
    case SessionContext.CloseConnectionRequest of
      ccrNone:
        begin
          CloseConnectionRequested:= False;
          CloseConnectionMessage:= '';
        end;

      ccrLock:
        begin
          CloseConnectionRequested:= True;
          CloseConnectionMessage:=
            SConnectionLockedByServerId +
            '(' + 'LockMessage:s=' + InternalEncodeString(SessionContext.CloseConnectionRequestMessage) + ')';
        end;

      ccrTerminate:
        begin
          CloseConnectionRequested:= True;
          CloseConnectionMessage:=
            SConnectionClosedByServerId +
            '(' + 'Message:s=' + InternalEncodeString(SessionContext.CloseConnectionRequestMessage) + ')';
        end;
    else
      raise Exception.Create('Unknown CloseConnectionRequest');
    end;  { case SessionContext.CloseConnectionRequest }

  IsMainConnectionConnected:= Assigned(SessionContext.LoginContext) and MainSessionExists(SessionContext);

  SessionContext.LastPingDateTime:= Now;
  SessionContext.LastPingIsActive:= IsActivePing;

  //// SessionContext.PreserveLastActivityDateTime; - niama nujda - pinga e v proxy, a aktivity se broi na prez moduli. s tova mogat da se sbiqt dvete nishki i da propusne da otchete aktivnost

  IsServerLoginContextValid:= LoginContext.IsValid;
end;

procedure TdmNonDbUtilsProxy.GetActiveConnectionsCounts(
  const ADBName: string;
  const AComputerName: string;
  out ActiveConcurrentConnectionsCount: Integer;
  out ActiveNamedConnectionsForComputer: Integer;
  out ActiveNamedConnectionsCount: Integer;
  out ActiveInternalConnectionsCount: Integer);
begin
  LockedInstance.Value.GetActiveConnectionsCounts(
    ADBName,
    AComputerName,
    ActiveConcurrentConnectionsCount,
    ActiveNamedConnectionsForComputer,
    ActiveNamedConnectionsCount,
    ActiveInternalConnectionsCount);
end;

{ TdmNonDbUtils }

procedure TdmNonDbUtils.prvPoolManagersBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  cdsPoolManagers.CreateDataSet;
end;

procedure TdmNonDbUtils.prvPoolManagersAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  cdsPoolManagers.Close;
end;

procedure TdmNonDbUtils.prvMemoryManagerBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  cdsMemoryManager.CreateDataSet;
end;

procedure TdmNonDbUtils.prvActiveConnectionsAfterGetRecords(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;

  cdsActiveConnections.Close;

  if SessionContext.IsPowerUser then
    OwnerData:= uSessionContext.SessionCount;
end;

procedure TdmNonDbUtils.prvActiveConnectionsBeforeGetRecords(Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
  cdsActiveConnections.CreateDataSet;
end;

procedure InsertActiveConnection(ADataSet: TDataSet; const sc: TSessionContext; const AIsDead: Boolean;
  const AIsPowerUser: Boolean; const ADBName: string);
begin
  if AIsPowerUser or
     ((sc.DBName = ADBName) and (not sc.IsTemp)) then
    with EmptyLoginContextIfInvalid(sc.LoginContext) do
      ADataSet.AppendRecord([
        ConnectionId,
        IfThen(AIsDead, 'dead ') + IfThen(sc.IsTemp, 'temp ') + sc.ClientInfo.Protocol,
        sc.ClientInfo.ComputerName,
        sc.ClientInfo.WindowsUserName,
        sc.ClientInfo.WindowsSessionId,
        sc.ClientInfo.WindowsVersion,
        (
          GetAuthenticationTokenIssuerDisplayAbbrev(sc.AuthenticationToken.AuthenticationTokenIssuer) +
          ' - '
          +
          sc.ClientInfo.LoginName
        ),
        EmployeeNo,
        IfThen(UserFullName <> '', UserFullName, sc.AuthenticationToken.ErrorMessage),
        DateOf(LastLogin),
        TimeOf(LastLogin),
        DateOf(sc.LastPingDateTime),
        TimeOf(sc.LastPingDateTime),
        Ord(sc.CloseConnectionRequest <> ccrNone),
        sc.DBName,
        Ord(IsInUse),
        LicensePoolTypeToInt(LicensePoolType),
        sc.ClientInfo.SysVolumeSerialNumber,
        sc.ClientInfo.HardwareInfo,
        DateOf(sc.LastActivityDateTime),
        TimeOf(sc.LastActivityDateTime),
        IfThen(IsInUse, sc.CurrentActivitySeconds, Null),
        sc.ClientInfo.IPAddress,
        SessionContextSessionCount(sc)
      ]);
end;

procedure TdmNonDbUtils.InsertActiveConnections(ADataSet: TCustomClientDataSet);
var
  IsPowerUser: Boolean;
  DBName: string;
  sc: TSessionContext;
begin
  IsPowerUser:= SessionContext.IsPowerUser;
  DBName:= SessionContext.DBName;

  for sc in SessionContextsSnapshot do
    InsertActiveConnection(ADataSet, sc, False, IsPowerUser, DBName);

  if IsPowerUser then
    ForEachDeadSessionContext/
      procedure(const sc: TSessionContext) begin
        InsertActiveConnection(ADataSet, sc, True, IsPowerUser, DBName);
      end;
end;

procedure TdmNonDbUtils.prvActiveConnectionsGetData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  inherited;
  InsertActiveConnections(DataSet);
end;

procedure TdmNonDbUtils.prvMemoryManagerAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;

  cdsMemoryManager.Close;

  OwnerData:=
    VarArrayOf([
      GetWinMMAllocatedMemory,
      dmSvrMain.StringsSavedMemory
    ]);
end;

procedure TdmNonDbUtils.prvMemoryManagerGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  MemoryManagerState: TMemoryManagerState;
  SmallBlockState: TSmallBlockTypeState;
begin
  inherited;

  GetMemoryManagerState(MemoryManagerState);

  for SmallBlockState in MemoryManagerState.SmallBlockTypeStates do
    with SmallBlockState do
      DataSet.AppendRecord([
        InternalBlockSize,
        UseableBlockSize,
        AllocatedBlockCount,
        InternalBlockSize * AllocatedBlockCount,
        UseableBlockSize * AllocatedBlockCount,
        ReservedAddressSpace]);

  with MemoryManagerState do
    begin
      DataSet.AppendRecord([
        MediumMemoryBlocksCode,
        Null,
        AllocatedMediumBlockCount,
        (TotalAllocatedMediumBlockSize + 4*AllocatedMediumBlockCount),
        TotalAllocatedMediumBlockSize,
        ReservedMediumBlockAddressSpace]);

      DataSet.AppendRecord([
        LargeMemoryBlocksCode,
        Null,
        AllocatedLargeBlockCount,
        (TotalAllocatedLargeBlockSize + 4*AllocatedLargeBlockCount),
        TotalAllocatedLargeBlockSize,
        ReservedLargeBlockAddressSpace]);
    end;  { with }
end;

procedure TdmNonDbUtils.OnEnumPoolManagers(APoolManager: TPoolManager);

  function GetModuleIdentifier: string;
  begin
    if (APoolManager.PooledClass.ClassName = APoolManager.ObjName) then
      Result:= APoolManager.ObjName
    else
      Result:= APoolManager.PooledClass.ClassName + ': ' + APoolManager.ObjName;
  end;

  function GetModuleVisible: Boolean;
  begin
    if (APoolManager.PooledClass.ClassName = APoolManager.ObjName) then
      Result:= FTempUserIsPowerIser
    else
      Result:=
        FTempUserIsPowerIser or
        (APoolManager.ObjName = SessionContext.DBName);
  end;  { GetModuleVisible }

begin
  Assert(Assigned(FTempDataSet));

  if GetModuleVisible then
    FTempDataSet.AppendRecord([
      APoolManager.ClassName,
      APoolManager.ObjName,
      GetModuleIdentifier,
      APoolManager.DataModulesCount,
      APoolManager.InUseDataModulesCount,
      0,
      APoolManager.MaxCount,
      APoolManager.Timeout]);
end;

procedure TdmNonDbUtils.prvPoolManagersGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
begin
  inherited;

  FTempDataSet:= DataSet;
  try
    FTempUserIsPowerIser:= SessionContext.IsPowerUser;
    try
      if FTempUserIsPowerIser then
        PoolManagers.EnumPoolManagers(OnEnumPoolManagers);

      DBPoolManagers.EnumPoolManagers(OnEnumPoolManagers);
    finally
      FTempUserIsPowerIser:= False;
    end;
  finally
    FTempDataSet:= nil;
  end;  { try }
end;

procedure TdmNonDbUtils.prvTimeZonesAfterGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  cdsTimeZones.Close;
end;

procedure TdmNonDbUtils.prvTimeZonesBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  cdsTimeZones.CreateDataSet;
end;

procedure TdmNonDbUtils.prvTimeZonesGetData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
  sl: TStringList;
  TimeZoneId: string;
  TimeZone: TTimeZoneRec;
  TimeZoneOffset: TDateTime;
begin
  inherited;
  sl:= TStringList.Create;
  try
    TimeZones.GetTimeZoneIdList(sl);
    for TimeZoneId in sl do
      begin
        TimeZone:= TimeZones.GetTimeZone(TimeZoneId);
        TimeZoneOffset:= NowInTimeZone(TimeZone.Id) - Now;
        DataSet.AppendRecord([
          TimeZone.Id,
          TimeZone.DisplayName,
          TimeZone.TimeZoneInfo.Bias,
          TimeZoneOffset
        ]);
      end;  { for }
  finally
    FreeAndNil(sl);
  end;  { try }
end;

procedure TdmNonDbUtils.StopUsing;
begin
  CloseDataSets;
  inherited StopUsing;
end;

procedure TdmNonDbUtils.GetActiveConnectionsCounts(
  const ADBName: string;
  const AComputerName: string;
  out ActiveConcurrentConnectionsCount: Integer;
  out ActiveNamedConnectionsForComputer: Integer;
  out ActiveNamedConnectionsCount: Integer;
  out ActiveInternalConnectionsCount: Integer);

var
  PrevClientComputerName: string;
  PrevClientWindowsUserName: string;
  PrevClientWindowsSessionId: Integer;
  PrevClientSysVolumeSerialNumber: string;
begin
  cdsActiveConnections.CreateDataSet;
  try
    InsertActiveConnections(cdsActiveConnections);

    ActiveConcurrentConnectionsCount:= 0;
    ActiveNamedConnectionsForComputer:= 0;
    ActiveNamedConnectionsCount:= 0;
    ActiveInternalConnectionsCount:= 0;

    PrevClientComputerName:= '';
    PrevClientWindowsUserName:= '';
    PrevClientWindowsSessionId:= 0;
    PrevClientSysVolumeSerialNumber:= '';

    if cdsActiveConnections.Locate('DB_NAME', ADBName, []) then
      while not cdsActiveConnections.Eof and (cdsActiveConnectionsDB_NAME.AsString = ADBName) do
        begin
          if (cdsActiveConnectionsCLIENT_COMPUTER_NAME.AsString <> PrevClientComputerName)or
             (cdsActiveConnectionsCLIENT_WINDOWS_USER_NAME.AsString <> PrevClientWindowsUserName) or
             (cdsActiveConnectionsCLIENT_WINDOWS_SESSION_ID.AsInteger <> PrevClientWindowsSessionId) or
             (cdsActiveConnectionsCLIENT_SYS_VOLUME_SERIAL_NUMBER.AsString <> PrevClientSysVolumeSerialNumber) then
            begin
              case IntToLicensePoolType(cdsActiveConnectionsLICENSE_POOL_TYPE.AsInteger) of
                lptInternal:
                  Inc(ActiveInternalConnectionsCount);

                lptConcurrent:
                  Inc(ActiveConcurrentConnectionsCount);

                lptNamed:
                  begin
                    Inc(ActiveNamedConnectionsCount);
                    if (UpperCase(cdsActiveConnectionsCLIENT_COMPUTER_NAME.AsString) = UpperCase(AComputerName)) then
                      Inc(ActiveNamedConnectionsForComputer);
                  end;
              end;  { case }
            end;  { if }

          PrevClientComputerName:= cdsActiveConnectionsCLIENT_COMPUTER_NAME.AsString;
          PrevClientWindowsUserName:= cdsActiveConnectionsCLIENT_WINDOWS_USER_NAME.AsString;
          PrevClientWindowsSessionId:= cdsActiveConnectionsCLIENT_WINDOWS_SESSION_ID.AsInteger;
          PrevClientSysVolumeSerialNumber:= cdsActiveConnectionsCLIENT_SYS_VOLUME_SERIAL_NUMBER.AsString;

          cdsActiveConnections.Next;
        end;  { while }
  finally
    cdsActiveConnections.Close;
  end;  { try }
end;

initialization
  TdmNonDbUtilsProxy.FSingleton:= TdmNonDbUtilsProxy.Create(TdmNonDbUtils);

finalization
  FreeAndNil(TdmNonDbUtilsProxy.FSingleton);
end.
