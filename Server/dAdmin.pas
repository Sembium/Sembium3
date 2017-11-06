unit dAdmin;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider, Db, DBClient,
  AbmesSQLQuery, AbmesFields, dPooledDataModule,
  dDBPooledDataModule, WideStrings, FMTBcd, SqlExpr, AbmesSQLConnection,
  DBXDevartOracle, uSmartLock;

type
  TdmAdmin = class(TDBPooledDataModule)
    prvSQLEditor: TDataSetProvider;
    qrySQLEditor: TAbmesSQLQuery;
    procedure prvSQLEditorAfterExecute(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvSQLEditorBeforeExecute(Sender: TObject;
      var OwnerData: OleVariant);
    procedure prvSQLEditorBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
  private
    { Private declarations }
  protected
    function SkipSQLTest(AQuery: TAbmesSQLQuery): Boolean; override;
  end;

type
  IdmAdminProxy = interface(IDBPooledDataModuleProxy)
  end;

type
  TdmAdminProxy = class(TDBPooledDataModuleProxy, IdmAdminProxy)
  private
    class var FSingleton: TdmAdminProxy;
  strict private
    function GetLockedInstance: ISmartLock<TdmAdmin>;
  strict protected
    property LockedInstance: ISmartLock<TdmAdmin> read GetLockedInstance;
  public
    class property Singleton: TdmAdminProxy read FSingleton;
  end;

implementation

uses
  uSessionContext;

{$R *.DFM}

{ TdmAdminProxy }

function TdmAdminProxy.GetLockedInstance: ISmartLock<TdmAdmin>;
begin
  Result:= ISmartLock<TdmAdmin>(inherited LockedInstance);
end;

{ TdmAdmin }

procedure TdmAdmin.prvSQLEditorAfterExecute(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  OwnerData:= qrySQLEditor.RowsAffected;
end;

procedure TdmAdmin.prvSQLEditorBeforeExecute(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  SessionContext.CheckPowerUser;
end;

procedure TdmAdmin.prvSQLEditorBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  SessionContext.CheckPowerUser;
end;

function TdmAdmin.SkipSQLTest(AQuery: TAbmesSQLQuery): Boolean;
begin
  Result:=
    (AQuery = qrySQLEditor) or
    inherited SkipSQLTest(AQuery);
end;

initialization
  TdmAdminProxy.FSingleton:= TdmAdminProxy.Create(TdmAdmin);

finalization
  FreeAndNil(TdmAdminProxy.FSingleton);
end.
