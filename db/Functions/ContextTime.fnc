create or replace function ContextTime return Date deterministic is
begin
  return LoginContext.ContextTime;
end;
/
