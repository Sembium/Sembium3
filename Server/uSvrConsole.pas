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

  WriteLn(Format('%s %s %s started.', [SServerAppDisplayName, GetHome, GetExeVersion]));
  WriteLn('Press [Esc] or [Ctrl+C] to exit ...');

  Console.WaitForKeyPressed(VK_ESCAPE);

  KillApplication(0);
end;

function InConsoleMode: Boolean;
begin
  Result:= StartedInConsoleMode;
end;

end.
