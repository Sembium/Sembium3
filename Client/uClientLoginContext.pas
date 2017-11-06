unit uClientLoginContext;

interface

uses
  uLoginContext;

type
  TClientLoginContext = class(TLoginContext)
  protected
    function GetContextNow: TDateTime; override;
    function GetActivityNo(AActivityCode: Integer): Integer; override;
  end;

implementation

uses
  SysUtils, dMain, Math, Windows, uUtils, uPingInfo;

const
  MillisecondsInADay = 24 * 60 * 60 * 1000;

{ TClientLoginContext }

function TClientLoginContext.GetActivityNo(AActivityCode: Integer): Integer;
begin
  Result:= dmMain.SvrCommon.GetActivityNo(AActivityCode);
end;

function TClientLoginContext.GetContextNow: TDateTime;
var
  ServerDateTime: TDateTime;
  ClientTickCount: Cardinal;
begin
  PingInfo.GetServerTime(ServerDateTime, ClientTickCount);

  Result:=
    ServerDateTime +
    (TickCountDiff(ClientTickCount, GetTickCount) / MillisecondsInADay);
end;

end.
