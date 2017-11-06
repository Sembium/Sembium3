create or replace function DateToNumber(Value in Date) return number is
  Result number;
begin
  Result:= Value - To_date('01-01-1900', 'mm-dd-yyyy');
  return(Result);
end DateToNumber;
/
