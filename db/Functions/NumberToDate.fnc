create or replace function NumberToDate(Value in Number) return date is
  Result Date;
begin
  Result:= To_date('01-01-1900', 'mm-dd-yyyy') + Value;
  return(Result);
end NumberToDate;
/
