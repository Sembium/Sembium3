unit uPingInfo;

interface

uses
  System.SyncObjs, uClientProxies;

type
  TPingInfo = class
  strict private
    FServerDateTime: TDateTime;
    FCloseConnectionRequested: Boolean;
    FCloseConnectionMessage: string;
    FServerDateTimeFormat: string;
    FClientTickCount: Cardinal;
    FActivePing: Boolean;
    FSync: TCriticalSection;
    FIsMainConnectionConnected: Boolean;
    FIsServerLoginContextValid: Boolean;
    FPingSuspended: Boolean;
    FActivePingFailed: Boolean;
    FInactivePingFailed: Boolean;

    function GetCloseConnectionMessage: string;
    function GetCloseConnectionRequested: Boolean;
    function GetServerDateTimeFormat: string;
    function GetIsMainConnectionConnected: Boolean;
    function GetIsServerLoginContextValid: Boolean;
    function GetServerDateTime: TDateTime;
    function GetActivePing: Boolean;
    procedure SetActivePing(const Value: Boolean);
    function GetPingSuspended: Boolean;
    procedure SetPingSuspended(const Value: Boolean);
    function GetActivePingFailed: Boolean;
    procedure SetActivePingFailed(const Value: Boolean);
    function GetInactivePingFailed: Boolean;
    procedure SetInactivePingFailed(const Value: Boolean);
  public
    constructor Create;
    destructor Destroy; override;
    procedure GetServerTime(out AServerDateTime: TDateTime; out AClientTickCount: Cardinal);
    procedure SetInfo(const AServerDateTime: TDateTime; const ACloseConnectionRequested: Boolean;
      const ACloseConnectionMessage, AServerDateTimeFormat: string;
      const AIsMainConnectionConnected, AIsServerLoginContextValid: Boolean);

    property ServerDateTime: TDateTime read GetServerDateTime;
    property CloseConnectionRequested: Boolean read GetCloseConnectionRequested;
    property CloseConnectionMessage: string read GetCloseConnectionMessage;
    property ServerDateTimeFormat: string read GetServerDateTimeFormat;
    property IsMainConnectionConnected: Boolean read GetIsMainConnectionConnected;
    property IsServerLoginContextValid: Boolean read GetIsServerLoginContextValid;

    property ActivePing: Boolean read GetActivePing write SetActivePing;
    property ActivePingFailed: Boolean read GetActivePingFailed write SetActivePingFailed;
    property InactivePingFailed: Boolean read GetInactivePingFailed write SetInactivePingFailed;
    property PingSuspended: Boolean read GetPingSuspended write SetPingSuspended;
  end;

function PingInfo: TPingInfo;

procedure DoPing(ASvrNonDbUtils: TdmNonDbUtilsProxyClient; const AIsActivePing: Boolean; var PrevPingMilliseconds: Integer);

implementation

uses
  System.SysUtils, uUtils, Winapi.Windows, System.TimeSpan;

var
  FPingInfo: TPingInfo;

{ TPingInfo }

constructor TPingInfo.Create;
begin
  inherited;
  FSync:= TCriticalSection.Create;
end;

destructor TPingInfo.Destroy;
begin
  FreeAndNil(FSync);
  inherited;
end;

function TPingInfo.GetActivePing: Boolean;
begin
  FSync.Enter;
  try
    Result:= FActivePing;
  finally
    FSync.Leave;
  end;
end;

function TPingInfo.GetActivePingFailed: Boolean;
begin
  FSync.Enter;
  try
    Result:= FActivePingFailed;
  finally
    FSync.Leave;
  end;
end;

function TPingInfo.GetCloseConnectionMessage: string;
begin
  FSync.Enter;
  try
    Result:= FCloseConnectionMessage;
  finally
    FSync.Leave;
  end;
end;

function TPingInfo.GetCloseConnectionRequested: Boolean;
begin
  FSync.Enter;
  try
    Result:= FCloseConnectionRequested;
  finally
    FSync.Leave;
  end;
end;

function TPingInfo.GetInactivePingFailed: Boolean;
begin
  FSync.Enter;
  try
    Result:= FInactivePingFailed;
  finally
    FSync.Leave;
  end;
end;

function TPingInfo.GetIsMainConnectionConnected: Boolean;
begin
  FSync.Enter;
  try
    Result:= FIsMainConnectionConnected;
  finally
    FSync.Leave;
  end;
end;

function TPingInfo.GetIsServerLoginContextValid: Boolean;
begin
  FSync.Enter;
  try
    Result:= FIsServerLoginContextValid;
  finally
    FSync.Leave;
  end;
end;

function TPingInfo.GetPingSuspended: Boolean;
begin
  FSync.Enter;
  try
    Result:= FPingSuspended;
  finally
    FSync.Leave;
  end;
end;

function TPingInfo.GetServerDateTime: TDateTime;
begin
  FSync.Enter;
  try
    Result:= FServerDateTime;
  finally
    FSync.Leave;
  end;
end;

function TPingInfo.GetServerDateTimeFormat: string;
begin
  FSync.Enter;
  try
    Result:= FServerDateTimeFormat;
  finally
    FSync.Leave;
  end;
end;

procedure TPingInfo.GetServerTime(out AServerDateTime: TDateTime;
  out AClientTickCount: Cardinal);
var
  LServerDateTime: TDateTime;
  LClientTickCount: Cardinal;
begin
  FSync.TempEnter/
    procedure begin
      LServerDateTime:= FServerDateTime;
      LClientTickCount:= FClientTickCount;
    end;

  AServerDateTime:= LServerDateTime;
  AClientTickCount:= LClientTickCount;
end;

procedure TPingInfo.SetActivePing(const Value: Boolean);
begin
  FSync.TempEnter/
    procedure begin
      FActivePing:= Value;
    end;
end;

procedure TPingInfo.SetActivePingFailed(const Value: Boolean);
begin
  FSync.TempEnter/
    procedure begin
      FActivePingFailed:= Value;
    end;
end;

procedure TPingInfo.SetInactivePingFailed(const Value: Boolean);
begin
  FSync.TempEnter/
    procedure begin
      FInactivePingFailed:= Value;
    end;
end;

procedure TPingInfo.SetInfo(const AServerDateTime: TDateTime;
  const ACloseConnectionRequested: Boolean; const ACloseConnectionMessage,
  AServerDateTimeFormat: string;
  const AIsMainConnectionConnected, AIsServerLoginContextValid: Boolean);
begin
  FSync.TempEnter/
    procedure begin
      FServerDateTime:= AServerDateTime;
      FCloseConnectionRequested:= ACloseConnectionRequested;
      FCloseConnectionMessage:= ACloseConnectionMessage;
      FServerDateTimeFormat:= AServerDateTimeFormat;
      FIsMainConnectionConnected:= AIsMainConnectionConnected;
      FIsServerLoginContextValid:= AIsServerLoginContextValid;

      FClientTickCount:= GetTickCount;
    end;
end;

procedure TPingInfo.SetPingSuspended(const Value: Boolean);
begin
  FSync.TempEnter/
    procedure begin
      FPingSuspended:= Value;
    end;
end;

function PingInfo: TPingInfo;
begin
  Result:= FPingInfo;
end;

procedure DoPing(ASvrNonDbUtils: TdmNonDbUtilsProxyClient; const AIsActivePing: Boolean; var PrevPingMilliseconds: Integer);
var
  ServerDateTime: TDateTime;
  CloseConnectionRequested: Boolean;
  CloseConnectionMessage: string;
  ServerDateTimeFormat: string;
  IsMainConnectionConnected: Boolean;
  IsServerLoginContextValid: Boolean;
  StartDateTime: TDateTime;
begin
  StartDateTime:= Now;
  try
    ASvrNonDbUtils.Ping(AIsActivePing, PrevPingMilliseconds, ServerDateTime, CloseConnectionRequested, CloseConnectionMessage, ServerDateTimeFormat, IsMainConnectionConnected, IsServerLoginContextValid);
  finally
    PrevPingMilliseconds:= Trunc(TTimeSpan.Subtract(Now, StartDateTime).TotalMilliseconds);
  end;

  PingInfo.SetInfo(ServerDateTime, CloseConnectionRequested, CloseConnectionMessage, ServerDateTimeFormat, IsMainConnectionConnected, IsServerLoginContextValid);
end;

initialization
  FPingInfo:= TPingInfo.Create;

finalization
  FreeAndNil(FPingInfo);

end.
