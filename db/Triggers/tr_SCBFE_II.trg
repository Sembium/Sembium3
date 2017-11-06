create or replace trigger tr_SCBFE_II
  instead of insert on SHIFT_CYCLE_BREAKS_FOR_EDIT
  for each row
declare
  NewBreakEndTime Date; -- WARINING!!! Use this variable in the trigger, not :new.BREAK_END_TIME
  IntersectCount Number;
begin
  if (not StateUtils.InScbfeUpdate) then
    StateUtils.BeginScbfeUpdate;
    begin

      NewBreakEndTime:= 
        DateTimeUtils.NormalizePeriodEndTime(:new.BREAK_BEGIN_TIME, :new.BREAK_END_TIME);
    
      select
        Count(*)
      into
        IntersectCount
      from
        SHIFT_CYCLE_BREAKS scb
      where
        (scb.SHIFT_CYCLE_CODE = :new.SHIFT_CYCLE_CODE) and
        ( DateTimeUtils.TimePeriodIntersectLength(
            scb.BREAK_BEGIN_TIME, scb.BREAK_END_TIME,
            :new.BREAK_BEGIN_TIME, NewBreakEndTime
          ) > 0
        );
      
      if (IntersectCount > 0) then
        raise_application_error(-20002,
          ServerMessages.SCrossedShCycleBreakPeriodId || '(' ||
          'BeginTime:t=' || MessageUtils.InternalTimeToStr(:new.BREAK_BEGIN_TIME) || ', ' ||
          'EndTime:t=' || MessageUtils.InternalTimeToStr(NewBreakEndTime) || ')'
        );
      end if;


      insert into SHIFT_CYCLE_BREAKS
      (
        SHIFT_CYCLE_BREAK_CODE,
        SHIFT_CYCLE_CODE,
        BREAK_BEGIN_TIME,
        BREAK_END_TIME,
        BREAK_DURATION_HOURS,
        IS_WORKTIME
      )
      values
      (
        :new.SHIFT_CYCLE_BREAK_CODE,
        :new.SHIFT_CYCLE_CODE,
        :new.BREAK_BEGIN_TIME,
        NewBreakEndTime,
        :new.BREAK_DURATION_HOURS,
        :new.IS_WORKTIME
      );

    exception
      when others then
        StateUtils.EndScbfeUpdate;
        raise;
    end;
    StateUtils.EndScbfeUpdate;
  end if;
end;
/
