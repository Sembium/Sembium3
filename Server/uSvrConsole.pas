unit uSvrConsole;

interface

procedure StartInConsoleMode;
function InConsoleMode: Boolean;

implementation

uses
  Console, Winapi.Windows, uUtils, uSvrApp, uSvrUtils, SysUtils;

var
  StartedInConsoleMode: Boolean = False;

procedure StartInConsoleMode;
begin
  StartedInConsoleMode:= True;

  Console.SyncWriteLine(Format('%s %s %s started.', [SServerAppDisplayName, GetHome, GetExeVersion]));
  Console.SyncWriteLine('Press [Esc] or [Ctrl+C] to quit ...');

  Console.WaitForKeyPressed(VK_ESCAPE);

  Console.SyncWriteLine('Quitting ...');

  KillApplication(0);
end;

function InConsoleMode: Boolean;
begin
  Result:= StartedInConsoleMode;
end;

end.
