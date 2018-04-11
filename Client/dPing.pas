unit dPing;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Data.SqlExpr, uClientProxies, Datasnap.DBClient,
  Datasnap.DSConnect, AbmesDSProviderConnection, uTimerThread;

type
  TdmPing = class(TDataModule)
    conDatasnap: TSQLConnection;
    dspcNonDbUtils: TAbmesDSProviderConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure conDatasnapBeforeConnect(Sender: TObject);
  strict private
    FTimerThread: TTimerThread;
    FSvrNonDbUtils: TdmNonDbUtilsProxyClient;
    FLastPingDateTime: TDateTime;
    FExeVersion: string;
    procedure Ping;
  private
    FPrevPingMilliseconds: Integer;
  public
    { Public declarations }
  end;

var
  dmPing: TdmPing;

implementation

uses
  uClientConnectionInfo, uPingInfo, System.TimeSpan, uFuncUtils, uClientUtils, dMain,
  System.Math, uUtils;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

const
  ActivePingIntervalSeconds = 5;
  PassivePingIntervalSeconds = 60;

procedure TdmPing.conDatasnapBeforeConnect(Sender: TObject);
begin
  SetConnectionProperties(conDatasnap.ConnectionData.Properties, dmMain.LoginName, dmMain.DBName, True, FExeVersion);
end;

procedure TdmPing.DataModuleCreate(Sender: TObject);
begin
  FExeVersion:= GetExeVersion;

  FSvrNonDbUtils:= TdmNonDbUtilsProxyClient.Create(dspcNonDbUtils);

  FTimerThread:= TTimerThread.Create(
    Ping,
    Funcs.Constant(TTimeSpan.FromSeconds(1))
  );
  FTimerThread.FreeOnTerminate:= True;
  FTimerThread.Start;
end;

procedure TdmPing.DataModuleDestroy(Sender: TObject);
begin
  FTimerThread.Terminate;
  FreeAndNil(FSvrNonDbUtils);
end;

procedure TdmPing.Ping;
var
  ActivePing: Boolean;
  PingIntervalSeconds: Integer;
  WasConnected: Boolean;
  OldClientRequestNo: Integer;
begin
  if (PingInfo = nil) or PingInfo.PingSuspended or
     (ClientConnectionInfo = nil) or (ClientConnectionInfo.AuthenticationToken = '') then
    Exit;

  ActivePing:= PingInfo.ActivePing;

  PingIntervalSeconds:= IfThen(ActivePing, ActivePingIntervalSeconds, PassivePingIntervalSeconds);

  if (TTimeSpan.Subtract(Now, FLastPingDateTime).TotalSeconds >= PingIntervalSeconds) then
    begin
      FLastPingDateTime:= Now;

      try
        WasConnected:= dmMain.Connection.Connected;
        OldClientRequestNo:= dmMain.ClientRequestNo;

        DoPing(FSvrNonDbUtils, ActivePing, FPrevPingMilliseconds);

        PingInfo.InactivePingFailed:= False;
        PingInfo.ActivePingFailed:= False;

        if WasConnected and
           dmMain.Connection.Connected and
           (OldClientRequestNo = dmMain.ClientRequestNo) and
           not PingInfo.IsMainConnectionConnected then
          raise Exception.Create('Main connection terminated by server');
      except
        if ActivePing then
          begin
            PingInfo.ActivePingFailed:= True;
            dmMain.TerminateConnection;
          end
        else
          PingInfo.InactivePingFailed:= True
      end;
    end;
end;

end.
