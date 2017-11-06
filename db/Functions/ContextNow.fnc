create or replace function ContextNow return Date deterministic is
begin
  return LoginContext.ContextNow;
end;
/
