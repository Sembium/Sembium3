unit uRecentUsers;

interface

uses
  System.TimeSpan;

function LoadRecentUsers(ATimeSpan: TTimeSpan): TArray<string>;
procedure AddRecentUser(const AUserName: string);

implementation

uses
  JclRegistry,
  uClientUtils,
  System.SysUtils,
  Winapi.Windows,
  System.Classes,
  uClientApp;

{ Routines }

function RecentUsersKey: string;
begin
  Result:= AppRegistryKey + '\RecentUsers';
end;

function LoadRecentUsers(ATimeSpan: TTimeSpan): TArray<string>;

  function IsRecentLoginTime(const ALoginTime: TSystemTime): Boolean;
  begin
    Result:= TTimeSpan.Subtract(Now, SystemTimeToDateTime(ALoginTime)) < ATimeSpan;
  end;

var
  RecentUserNames: TStringList;
  UserName: string;
  LastLoginTime: TSystemTime;
  ds: Cardinal;
begin
  SetLength(Result, 0);

  if not RegKeyExists(HKCU, RecentUsersKey) then
    Exit;

  RecentUserNames:= TStringList.Create;
  try
    RegGetValueNames(HKCU, RecentUsersKey, RecentUserNames);

    for UserName in RecentUserNames do
      if RegReadBinaryEx(HKCU, RecentUsersKey, UserName, LastLoginTime, SizeOf(LastLoginTime), ds) and
         (ds = SizeOf(LastLoginTime)) and
         IsRecentLoginTime(LastLoginTime) then
        begin
          SetLength(Result, Length(Result) + 1);
          Result[Length(Result) - 1]:= UserName;
        end;
  finally
    RecentUserNames.Free;
  end;
end;

procedure AddRecentUser(const AUserName: string);
var
  n: TSystemTime;
begin
  GetSystemTime(n);
  RegWriteBinary(HKCU, RecentUsersKey, AUserName, n, SizeOf(n));
end;

end.
