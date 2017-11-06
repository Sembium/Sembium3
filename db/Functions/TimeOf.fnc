create or replace function TimeOf(ADateTime Date) return date deterministic is
begin
  return(To_Date('30.12.1899 ' || To_Char(ADateTime, 'HH24:MI:SS'), 'DD.MM.YYYY HH24:MI:SS'));
end TimeOf;
/
