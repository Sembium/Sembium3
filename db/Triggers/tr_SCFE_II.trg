create or replace trigger tr_SCFE_II
  instead of insert on SHIFT_CYCLES_FOR_EDIT
  for each row
declare
  NewWorkdayEndTime Date; -- WARINING!!! Use this variable in the trigger, not :new.WORKDAY_END_TIME
  BeginDate Date;
  EndDate Date;
begin
  if (not StateUtils.InScfeUpdate) then
    StateUtils.BeginScfeUpdate;
    begin
      NewWorkdayEndTime:= 
        DateTimeUtils.NormalizePeriodEndTime(:new.WORKDAY_BEGIN_TIME, :new.WORKDAY_END_TIME);

      if (ShiftUtils.DoShiftsIntersect(:new.SHIFT_CODE, :new.SHIFT_TIMED_REGIME_CODE) > 0) then
        select
          str.BEGIN_DATE,
          str.END_DATE
        into
          BeginDate,
          EndDate
        from
          SHIFT_TIMED_REGIMES str
        where
          (str.SHIFT_TIMED_REGIME_CODE = :new.SHIFT_TIMED_REGIME_CODE);
        
        raise_application_error(-20002,
          ServerMessages.SCrossedPeriodId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(BeginDate) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(EndDate) || ')'
        );
      end if;
      
      insert into SHIFT_CYCLES
      (
        SHIFT_CYCLE_CODE,
        SHIFT_TIMED_REGIME_CODE,
        SHIFT_CYCLE_NO,
        SHIFT_CODE,
        IS_WORK_CYCLE,
        WORKDAY_BEGIN_TIME,
        WORKDAY_END_TIME,
        WORKDAY_DURATION_HOURS,
        WORKDAY_DENSITY_PERCENT
      )
      values
      (
        :new.SHIFT_CYCLE_CODE,
        :new.SHIFT_TIMED_REGIME_CODE,
        :new.SHIFT_CYCLE_NO,
        :new.SHIFT_CODE,
        :new.IS_WORK_CYCLE,
        :new.WORKDAY_BEGIN_TIME,
        NewWorkdayEndTime,
        :new.WORKDAY_DURATION_HOURS,
        :new.WORKDAY_DENSITY_PERCENT
      );
      
     ShiftUtils.UpdateDateShiftCyclesFor(:new.SHIFT_TIMED_REGIME_CODE); 

    exception
      when others then
        StateUtils.EndScfeUpdate;
        raise;
    end;
    StateUtils.EndScfeUpdate;
  end if;
end;
/
