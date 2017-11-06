create or replace trigger tr_STRFE_II
  instead of insert on SHIFT_TIMED_REGIMES_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin
  if (not StateUtils.InStrfeUpdate) then
    StateUtils.BeginStrfeUpdate;
    begin
      select
        Count(*)
      into
        IntersectCount
      from
        SHIFT_TIMED_REGIMES str
      where
        (str.SHIFT_REGIME_CODE = :new.SHIFT_REGIME_CODE) and
        ( DateTimeUtils.DatePeriodIntersectLength(
            str.BEGIN_DATE, str.END_DATE,
            :new.BEGIN_DATE, :new.END_DATE
          ) > 0
        );
      
      if (IntersectCount > 0) then
        raise_application_error(-20002,
          ServerMessages.SCrossedPeriodId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
        );
      end if;
      
      insert into SHIFT_TIMED_REGIMES
      (
        SHIFT_TIMED_REGIME_CODE,
        SHIFT_REGIME_CODE,
        BEGIN_DATE,
        END_DATE,
        FOLLOWS_CALENDAR_OFFDAYS,
        CYCLE_DURATION_DAYS,
        IS_OVERTIME,
        IS_CYCLE_ON_WORKDAYS_ONLY
      )
      values
      (
        :new.SHIFT_TIMED_REGIME_CODE,
        :new.SHIFT_REGIME_CODE,
        :new.BEGIN_DATE,
        :new.END_DATE,
        :new.FOLLOWS_CALENDAR_OFFDAYS,
        :new.CYCLE_DURATION_DAYS,
        Coalesce(:new.IS_OVERTIME, 0),
        :new.IS_CYCLE_ON_WORKDAYS_ONLY
      );
      
    exception
      when others then
        StateUtils.EndStrfeUpdate;
        raise;
    end;
    StateUtils.EndStrfeUpdate;
  end if;
end;
/
