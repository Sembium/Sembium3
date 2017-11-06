unit uClientDateTime;

interface

function ContextDate: TDateTime;
function ContextTime: TDateTime;
function ContextNow: TDateTime;

implementation

uses
  dMain;
  
function ContextDate: TDateTime;
begin
  Assert(Assigned(dmMain));
  Result:= dmMain.LoginContext.ContextDate;
end;

function ContextTime: TDateTime;
begin
  Assert(Assigned(dmMain));
  Result:= dmMain.LoginContext.ContextTime;
end;

function ContextNow: TDateTime;
begin
  Assert(Assigned(dmMain));
  Result:= dmMain.LoginContext.ContextNow;
end;

end.
