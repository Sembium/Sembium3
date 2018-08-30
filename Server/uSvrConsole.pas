unit uSvrConsole;

interface

procedure StartInConsoleMode;
function InConsoleMode: Boolean;

implementation

uses
  Console, Winapi.Windows, uUtils;

var
  StartedInConsoleMode: Boolean = False;

procedure StartInConsoleMode;
begin
  StartedInConsoleMode:= True;

  WriteLn('Server started.');
  WriteLn('Press [Esc] or [Ctrl+C] key to terminate ...');

  Console.WaitForKeyPressed(VK_ESCAPE);

  KillApplication(0);
end;

function InConsoleMode: Boolean;
begin
  Result:= StartedInConsoleMode;
end;

end.
