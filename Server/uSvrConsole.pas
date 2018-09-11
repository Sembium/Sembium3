unit uSvrConsole;

interface

procedure StartInConsoleMode;
function InConsoleMode: Boolean;

implementation

uses
  Console, Winapi.Windows, uUtils, uSvrApp, uSvrUtils, SysUtils,
  uSvrHostingUtils;

var
  StartedInConsoleMode: Boolean = False;

procedure StartInConsoleMode;
begin
  StartedInConsoleMode:= True;

  Console.SyncWriteLine(Format('%s %s %s started.', [SServerAppDisplayName, GetHome, GetExeVersion]));
  Console.SyncWriteLine('Press [Esc] or [Ctrl+C] to exit ...');

  Console.WaitForKeyPressed(VK_ESCAPE);

  Console.SyncWriteLine('Exitting ...');

  KillApplication(0);
end;

function InConsoleMode: Boolean;
begin
  Result:= StartedInConsoleMode;
end;

end.
