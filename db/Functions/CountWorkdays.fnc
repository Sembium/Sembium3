create or replace function CountWorkdays(BeginDate in Date, EndDate in Date) return number deterministic is

  Result Number;
  bd Date;
  ed Date;
  
begin
  if (BeginDate is null) or (EndDate is null) then
    Result:= 0;
  else
  
    if (BeginDate <= EndDate) then
      bd:= BeginDate;
      ed:= EndDate;
    else
      ed:= BeginDate;
      bd:= EndDate;
    end if;
  
    select
      (d2.ACCUMULATED_WORKDAYS - d1.ACCUMULATED_WORKDAYS + d1.WORKDAYS)
    into
      Result
    from
      THE_DATES d1,
      THE_DATES d2
    where
      (d1.THE_DATE = bd) and
      (d2.THE_DATE = ed);

  end if;

  if (BeginDate <= EndDate) then
    return(Result);
  else
    return(-Result);
  end if;
  
end CountWorkdays;
/
