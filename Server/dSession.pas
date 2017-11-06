unit dSession;

interface

uses
  Windows, Messages, SysUtils, Classes, dPooledDataModule, uSmartLock;

type
  TdmSession = class(TPooledDataModule)
  protected
    procedure Login;

    procedure RefreshLoginContext;
    function GetLoginContextAsVariant: OleVariant;
  end;

type
  IdmSessionProxy = interface(IPooledDataModuleProxy)
    procedure Login;

    function GetExeDateTime: TDateTime;
    function GetExeVersion: string;
  end;

type
  TdmSessionProxy = class(TPooledDataModuleProxy, IdmSessionProxy)
  private
    class var FSingleton: TdmSessionProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmSession>;
  strict protected
    property LockedInstance: ISmartLock<TdmSession> read GetLockedInstance;
  public
    class property Singleton: TdmSessionProxy read FSingleton;

    procedure Login;

    procedure RefreshLoginContext;
    function GetLoginContextAsVariant: OleVariant;

    function GetExeDateTime: TDateTime;
    function GetExeVersion: string;
  end;

implementation

uses
  uObjParams,
  uUtils,
  uSessionContext,
  uDBPooledDataModuleHelper,
  uServerMessageIds,
  uMessageUtils;

{$R *.dfm}

var
  ExeVersion: string;

{ TdmSessionProxy }

function TdmSessionProxy.GetLockedInstance: ISmartLock<TdmSession>;
begin
  Result:= ISmartLock<TdmSession>(inherited LockedInstance);
end;

function TdmSessionProxy.GetExeDateTime: TDateTime;
begin
  Result:= uUtils.GetExeDateTime;
end;

function TdmSessionProxy.GetExeVersion: string;
begin
  Result:= ExeVersion;
end;

function TdmSessionProxy.GetLoginContextAsVariant: OleVariant;
begin
  Result:= LockedInstance.Value.GetLoginContextAsVariant
end;

procedure TdmSessionProxy.Login;
begin
  LockedInstance.Value.Login;
end;

procedure TdmSessionProxy.RefreshLoginContext;
begin
  LockedInstance.Value.RefreshLoginContext;
end;

{ TdmSession }

function TdmSession.GetLoginContextAsVariant: OleVariant;
begin
  SessionContext.PreserveLastActivityDateTime;
  Result:= SessionContext.LoginContext.GetAsVariant;
end;

procedure TdmSession.Login;
begin
  if (SessionContext.LoginContext.AccessBanType <> abtNone) then
    raise Exception.Create(SAccessBannedId + '(' + 'BanMessage:s=' + InternalEncodeString(SessionContext.LoginContext.LockMessage) + ')');

  SvrLogin.Login;
end;

procedure TdmSession.RefreshLoginContext;
begin
  SessionContext.PreserveLastActivityDateTime;

  LoginContext.IsValid:= False;
  try
    Sleep(1000);
    SvrLogin.LoadLoginContext;
  finally
    LoginContext.IsValid:= True;
  end;
end;

initialization
  ExeVersion:= GetExeVersion;
  TdmSessionProxy.FSingleton:= TdmSessionProxy.Create(TdmSession);

finalization
  FreeAndNil(TdmSessionProxy.FSingleton);
end.
