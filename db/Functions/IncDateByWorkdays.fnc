create or replace function IncDateByWorkdays(ADate in Date, AWorkdays in Number) return Date deterministic is

  Result Date;
  
begin

  if (AWorkdays = 0) then
  
    Result:= ADate;
    
  elsif (AWorkdays > 0) then
  
    select
      d.THE_DATE
    into
      Result
    from
      THE_DATES d
    where
      (d.ZERO_WHEN_WORKDAY = 0) and
      (d.ACCUMULATED_WORKDAYS =
        ( select
            (d.ACCUMULATED_WORKDAYS + AWorkdays)
          from
            THE_DATES d
          where
            (d.THE_DATE = ADate)
        )
      );
      
  else
  
    select
      d.THE_DATE
    into
      Result
    from
      THE_DATES d
    where
      (d.ZERO_WHEN_WORKDAY = 0) and
      (d.ACCUMULATED_WORKDAYS = 
        ( select
            (d.ACCUMULATED_WORKDAYS + AWorkdays + (1 - d.WORKDAYS))
          from
            THE_DATES d
          where
            (d.THE_DATE = ADate)
        )
      );

  end if;

  return(Result);
  
end IncDateByWorkdays;
/
