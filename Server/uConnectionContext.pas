unit uConnectionContext;

interface

uses
  Datasnap.DSSession;

type
  TConnectionPurpose = (cpNone, cpMain, cpPing);

function ConnectionPurpose: TConnectionPurpose;

procedure InitializeConnectionContext(
  const AConnectionPurpose: TConnectionPurpose; const AClientSessionGuid: string);

function ConnectionPurposeToStr(const AValue: TConnectionPurpose): string;
function StrToConnectionPurpose(const AValue: string): TConnectionPurpose;

function IsMainSession(ASession: TDSSession): Boolean;

type
  TDSSessionHelper = class helper for TDSSession
  public
    function ClientSessionGuid: string;
  end;

implementation

uses
  System.SysUtils, uConnectionUtils, uServerCallsLogger;

const
  SConnectionPurpose = 'ConnectionPurpose';
  SClientSessionGuid = 'ClientSessionGuid';

function ConnectionPurpose: TConnectionPurpose;
begin
  Result:= StrToConnectionPurpose(TDSSessionManager.GetThreadSession.GetData(SConnectionPurpose));
end;

procedure InitializeConnectionContext(
  const AConnectionPurpose: TConnectionPurpose; const AClientSessionGuid: string);
begin
  TDSSessionManager.GetThreadSession.PutData(SConnectionPurpose, ConnectionPurposeToStr(AConnectionPurpose));
  TDSSessionManager.GetThreadSession.PutData(SClientSessionGuid, AClientSessionGuid);
end;

const
  ConnectionPurposeStrValues: array[TConnectionPurpose] of string = ('', TConnectionPurposeValues.Main, TConnectionPurposeValues.Ping);

function ConnectionPurposeToStr(const AValue: TConnectionPurpose): string;
begin
  Result:= ConnectionPurposeStrValues[AValue];
end;

function StrToConnectionPurpose(const AValue: string): TConnectionPurpose;
var
  cp: TConnectionPurpose;
begin
  for cp:= Low(TConnectionPurpose) to High(TConnectionPurpose) do
    if SameText(AValue, ConnectionPurposeStrValues[cp]) then
      Exit(cp);

  raise Exception.CreateFmt('Unknown TConnectionPurpose string value: ', [AValue]);
end;

function IsMainSession(ASession: TDSSession): Boolean;
begin
  Result:=
    Assigned(ASession) and
    (StrToConnectionPurpose(ASession.GetData(SConnectionPurpose)) = cpMain);
end;

{ TDSSessionHelper }

function TDSSessionHelper.ClientSessionGuid: string;
begin
  Result:= GetData(SClientSessionGuid);
end;

end.
