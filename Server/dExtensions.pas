unit dExtensions;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, WideStrings, SqlExpr, AbmesSQLConnection, DBXDevartOracle, uSmartLock;

type
  TdmExtensions = class(TDBPooledDataModule)
  private
    { Private declarations }
  protected
    procedure AddEmployeeMovement(EmployeeNo: Integer; InOut: Integer; MovementDateTime: TDateTime);
  end;

type
  IdmExtensionsProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmExtensionsProxy = class(TDBPooledDataModuleProxy, IdmExtensionsProxy)
  private
    class var FSingleton: TdmExtensionsProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmExtensions>;
  strict protected
    property LockedInstance: ISmartLock<TdmExtensions> read GetLockedInstance;
  public
    class property Singleton: TdmExtensionsProxy read FSingleton;

    procedure AddEmployeeMovement(EmployeeNo: Integer; InOut: Integer; MovementDateTime: TDateTime);
  end;

implementation

uses
  uDBPooledDataModuleHelper, DateUtils, uUserActivityConsts;

{$R *.dfm}

{ TdmExtensionsProxy }

function TdmExtensionsProxy.GetLockedInstance: ISmartLock<TdmExtensions>;
begin
  Result:= ISmartLock<TdmExtensions>(inherited LockedInstance);
end;

procedure TdmExtensionsProxy.AddEmployeeMovement(EmployeeNo,
  InOut: Integer; MovementDateTime: TDateTime);
begin
  LockedInstance.Value.AddEmployeeMovement(EmployeeNo, InOut, MovementDateTime);
end;

{ TdmExtensions }

procedure TdmExtensions.AddEmployeeMovement(EmployeeNo, InOut: Integer;
  MovementDateTime: TDateTime);
var
  CurrentDateTime: TDateTime;
begin
  LoginContext.CheckUserActivity(uaAutomatedAddEmployeeMovement);

  CurrentDateTime:= ContextNow;

  SvrEmployeeAvailability.AddEmployeeMovement(
    EmployeeNo, InOut, MovementDateTime, LoginContext.UserCode, DateOf(CurrentDateTime), TimeOf(CurrentDateTime));
end;

initialization
  TdmExtensionsProxy.FSingleton:= TdmExtensionsProxy.Create(TdmExtensions);

finalization
  FreeAndNil(TdmExtensionsProxy.FSingleton);
end.
