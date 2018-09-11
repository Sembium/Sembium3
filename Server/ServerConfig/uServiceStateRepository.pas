unit uServiceStateRepository;

interface

uses
  uServiceState;

procedure SaveServiceState(const Value: TServiceState);

implementation

uses
  Winapi.Windows,
  System.Win.Registry,
  System.TypInfo,
  System.SysUtils,
  uObjParams, uSvrHostingUtils;

{ Routines }

function ServiceStateToString(const Value: TServiceState): string;
begin
  Result:= GetEnumName(TypeInfo(TServiceState), Ord(Value));
  Result:= Copy(Result, 3);
end;

procedure SaveServiceState(const Value: TServiceState);
var
  ARegistry: TRegistry;
begin
  Assert(Value in [ssStarted, ssStopped]);

  ARegistry:= TRegistry.Create(KEY_ALL_ACCESS);
  try
    ARegistry.RootKey:= HKEY_LOCAL_MACHINE;

    if ARegistry.OpenKey(GetBaseConfigKey, True) then
      try
        ARegistry.WriteString('ServiceState', ServiceStateToString(Value));
        ARegistry.WriteString('ServiceStateDateTime', FormatDateTime('dd.mm.yyyy hh:nn:ss', Now));
      finally
        ARegistry.CloseKey;
      end;  { try }
  finally
    FreeAndNil(ARegistry);
  end;  { try }
end;

end.
