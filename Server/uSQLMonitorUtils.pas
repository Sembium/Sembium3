unit uSQLMonitorUtils;

interface

uses
  SqlExpr;

function CreateSQLMonitor(ASQLConnection: TSQLConnection): TSQLMonitor;

implementation

uses
  SysUtils, uUtils;

var
  DBMonitorIsRinning: Boolean;

function CreateSQLMonitor(ASQLConnection: TSQLConnection): TSQLMonitor;
begin
  Result:= nil;

  if DBMonitorIsRinning then
    begin
      Result:= TSQLMonitor.Create(nil);
      try
        Result.SQLConnection:= ASQLConnection;
        Result.Active:= True;
      except
        FreeAndNil(Result);
        raise;
      end;
    end;
end;

initialization
  DBMonitorIsRinning:= ProcessIsRunning('DBMonitor.exe');
end.
