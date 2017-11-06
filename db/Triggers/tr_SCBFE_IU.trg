create or replace trigger tr_SCBFE_IU
  instead of update on SHIFT_CYCLE_BREAKS_FOR_EDIT
  for each row
declare
  NewBreakEndTime Date; -- WARINING!!! Use this variable in the trigger, not :new.BREAK_END_TIME
  IntersectCount Number;
begin
  if (not StateUtils.InScbfeUpdate) then
    StateUtils.BeginScbfeUpdate;
    begin
    
      if (:new.SHIFT_CYCLE_BREAK_CODE <> :old.SHIFT_CYCLE_BREAK_CODE) then
        raise_application_error(-20000, 'Internal error: SHIFT_CYCLE_BREAKS key should not be changed');
      end if;
      
      NewBreakEndTime:= 
        DateTimeUtils.NormalizePeriodEndTime(:new.BREAK_BEGIN_TIME, :new.BREAK_END_TIME);
    
      if (:new.BREAK_BEGIN_TIME <> :old.BREAK_BEGIN_TIME) or
         (NewBreakEndTime <> :old.BREAK_END_TIME) then
        
        select
          Count(*)
        into
          IntersectCount
        from
          SHIFT_CYCLE_BREAKS scb
        where
          (scb.SHIFT_CYCLE_CODE = :new.SHIFT_CYCLE_CODE) and
          (scb.SHIFT_CYCLE_BREAK_CODE <> :new.SHIFT_CYCLE_BREAK_CODE) and
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

      end if;


      update
        SHIFT_CYCLE_BREAKS
      set
        SHIFT_CYCLE_CODE = :new.SHIFT_CYCLE_CODE,
        BREAK_BEGIN_TIME = :new.BREAK_BEGIN_TIME,
        BREAK_END_TIME = NewBreakEndTime,
        BREAK_DURATION_HOURS = :new.BREAK_DURATION_HOURS,
        IS_WORKTIME = :new.IS_WORKTIME
      where
        (SHIFT_CYCLE_BREAK_CODE = :old.SHIFT_CYCLE_BREAK_CODE);
      
    exception
      when others then
        StateUtils.EndScbfeUpdate;
        raise;
    end;
    StateUtils.EndScbfeUpdate;
  end if;
end;
/
