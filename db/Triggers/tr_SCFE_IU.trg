create or replace trigger tr_SCFE_IU
  instead of update on SHIFT_CYCLES_FOR_EDIT
  for each row
declare
  NewWorkdayEndTime Date; -- WARINING!!! Use this variable in the trigger, not :new.WORKDAY_END_TIME
  BeginDate Date;
  EndDate Date;
begin
  if (not StateUtils.InScfeUpdate) then
    StateUtils.BeginScfeUpdate;
    begin
      if (:new.SHIFT_CYCLE_CODE <> :old.SHIFT_CYCLE_CODE) then
        raise_application_error(-20000, 'Internal error: SHIFT_CYCLES key should not be changed');
      end if;
      
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

      
      if (:new.SHIFT_TIMED_REGIME_CODE <> :old.SHIFT_TIMED_REGIME_CODE) then
        ShiftUtils.DeleteDateShiftCyclesFor(:old.SHIFT_TIMED_REGIME_CODE); 
      end if;
  
      ShiftUtils.DeleteDateShiftCyclesFor(:new.SHIFT_TIMED_REGIME_CODE); 

      update
        SHIFT_CYCLES
      set
        SHIFT_TIMED_REGIME_CODE = :new.SHIFT_TIMED_REGIME_CODE,
        SHIFT_CYCLE_NO = :new.SHIFT_CYCLE_NO,
        SHIFT_CODE = :new.SHIFT_CODE,
        IS_WORK_CYCLE = :new.IS_WORK_CYCLE,
        WORKDAY_BEGIN_TIME = :new.WORKDAY_BEGIN_TIME,
        WORKDAY_END_TIME = NewWorkdayEndTime,
        WORKDAY_DURATION_HOURS = :new.WORKDAY_DURATION_HOURS,
        WORKDAY_DENSITY_PERCENT = :new.WORKDAY_DENSITY_PERCENT
      where
        (SHIFT_CYCLE_CODE = :old.SHIFT_CYCLE_CODE);
      
      ShiftUtils.InsertDateShiftCyclesFor(:new.SHIFT_TIMED_REGIME_CODE); 
     
      if (:new.SHIFT_TIMED_REGIME_CODE <> :old.SHIFT_TIMED_REGIME_CODE) then
        ShiftUtils.InsertDateShiftCyclesFor(:old.SHIFT_TIMED_REGIME_CODE); 
      end if;
  
    exception
      when others then
        StateUtils.EndScfeUpdate;
        raise;
    end;
    StateUtils.EndScfeUpdate;
  end if;
end;
/
