create or replace function ContextDate return Date deterministic is
begin
  return LoginContext.ContextDate;
end;
/
