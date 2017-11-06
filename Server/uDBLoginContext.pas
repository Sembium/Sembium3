unit uDBLoginContext;

interface

uses
  uServerLoginContext, dDBDataModule, dPooledDataModule, uObjParams,
  uObjectPool, uSmartLock, uBaseSessionContext;

type
  TDBLoginContext = class(TServerLoginContext)
  strict private
    FDbId: string;
    FIsProductionDb: Boolean;

    FDBDataModuleSmartLock: ISmartLock<TDBDataModule>;

    function GetIsInUse: Boolean;
    function GetDBName: string;
    property DBName: string read GetDBName;
  strict protected
    procedure DoSetDefaults; override;

    function GetDBId: string;
    function GetAccessBanType: TAccessBanType;
    function GetLockMessage: string;
    function GetIsProductionDb: Boolean;

    function GetActivityNo(AActivityCode: Integer): Integer; override;
    function GetDBDataModule: TDBDataModule;
  protected
    procedure SetDBId(const Value: string);
    procedure SetIsProductionDb(const Value: Boolean);
  public
    constructor Create(const AOwner: TBaseSessionContext); override;
    destructor Destroy; override;

    procedure ResetDBDataModuleSmartLock;

    procedure BreakExec;

    property DBDataModuleSmartLock: ISmartLock<TDBDataModule> read FDBDataModuleSmartLock;

    function IsReadOnlyDB: Boolean;
    function IsTestDB: Boolean;
    function ContentStorageContainerName: string;

    property IsInUse: Boolean read GetIsInUse;
    property IsProductionDb: Boolean read GetIsProductionDb;

    property DbId: string read GetDbId;
    property AccessBanType: TAccessBanType read GetAccessBanType;
    property LockMessage: string read GetLockMessage;
  end;

function EmptyLoginContextIfInvalid(const ALoginContext: TDBLoginContext): TDBLoginContext;

implementation

uses
  SysUtils, DateUtils, uSessionContext, uDBPooledDataModuleHelper;

var
  FEmptyDBLoginContext: TDBLoginContext;

{ TDBLoginContext }

function TDBLoginContext.ContentStorageContainerName: string;
begin
  Result:= DBPoolManagers.ContentStorageContainerName(DBName);

  if (Result = '') then
    raise Exception.Create('Content storage container name not set!');
end;

constructor TDBLoginContext.Create(const AOwner: TBaseSessionContext);
begin
  inherited Create(AOwner);
  ResetDBDataModuleSmartLock;
end;

destructor TDBLoginContext.Destroy;
begin
  FDBDataModuleSmartLock:= nil;
  inherited;
end;

function TDBLoginContext.IsReadOnlyDB: Boolean;
begin
  Result:= DBPoolManagers.IsReadOnlyDB(DBName);
end;

function TDBLoginContext.IsTestDB: Boolean;
begin
  Result:= DBPoolManagers.IsTestDB(DBName);
end;

procedure TDBLoginContext.DoSetDefaults;
begin
  Assert(not IsInUse);

  inherited DoSetDefaults;

  FDbId:= '';
  FIsProductionDb:= True;
end;

function TDBLoginContext.GetAccessBanType: TAccessBanType;
begin
  Result:= DBPoolManagers.GetAccessBanType(DBName);
end;

function TDBLoginContext.GetActivityNo(AActivityCode: Integer): Integer;
begin
  Result:= SvrCommon.GetActivityNo(AActivityCode);
end;

function TDBLoginContext.GetLockMessage: string;
begin
  Result:= DBPoolManagers.GetLockMessage(DBName);
end;

function TDBLoginContext.GetDBDataModule: TDBDataModule;
begin
  if not Assigned(DBDataModuleSmartLock) or not DBDataModuleSmartLock.Acquired then
    Result:= nil
  else
    Result:= DBDataModuleSmartLock.Value;
end;

function TDBLoginContext.GetDBId: string;
begin
  Result:= FDbId;
end;

function TDBLoginContext.GetDBName: string;
begin
  Result:= SessionContext.DBName;
end;

procedure TDBLoginContext.BreakExec;
var
  dm: TDBDataModule;
begin
  dm:= GetDBDataModule;

  if Assigned(dm) then
    begin
      dm.BreakExec;
      Sleep(2000);
    end;
end;

procedure TDBLoginContext.ResetDBDataModuleSmartLock;
begin
  FDBDataModuleSmartLock:= nil;
  FDBDataModuleSmartLock:=
    TMinRefCountingSmartLock<TObjectPoolItem<TDBDataModule>, TDBDataModule>.Create(
      function: TObjectPoolItem<TDBDataModule> begin
        Result:= TObjectPoolItem<TDBDataModule>(DBPoolManagers.PoolManagerByName(DBName).LockInstance());
      end,
      procedure (const AValue: TObjectPoolItem<TDBDataModule>) begin
        DBPoolManagers.PoolManagerByName(DBName).UnlockInstance(TObjectPoolItem<TPooledDataModule>(AValue));
      end,
      function (const AObjectPoolItem: TObjectPoolItem<TDBDataModule>): TDBDataModule begin
        Result:= AObjectPoolItem.Item;
      end,
      2
    );
end;

procedure TDBLoginContext.SetDBId(const Value: string);
begin
  FDbId:= Value;
end;

procedure TDBLoginContext.SetIsProductionDb(const Value: Boolean);
begin
  FIsProductionDb:= Value;
end;

function TDBLoginContext.GetIsInUse: Boolean;
begin
  Result:= Assigned(FDBDataModuleSmartLock) and FDBDataModuleSmartLock.Acquired;
end;

function TDBLoginContext.GetIsProductionDb: Boolean;
begin
  Result:= FIsProductionDb;
end;

function EmptyLoginContextIfInvalid(const ALoginContext: TDBLoginContext): TDBLoginContext;
begin
  Assert(Assigned(ALoginContext));

  if ALoginContext.IsValid then
    Result:= ALoginContext
  else
    Result:= FEmptyDBLoginContext;
end;

initialization
  FEmptyDBLoginContext:= TDBLoginContext.Create(nil);

finalization
  FreeAndNil(FEmptyDBLoginContext);

end.
