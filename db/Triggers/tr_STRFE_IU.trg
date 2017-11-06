create or replace trigger tr_STRFE_IU
  instead of update on SHIFT_TIMED_REGIMES_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin
  if (not StateUtils.InStrfeUpdate) then
    StateUtils.BeginStrfeUpdate;
    begin
      
      if (:new.SHIFT_TIMED_REGIME_CODE <> :old.SHIFT_TIMED_REGIME_CODE) then
        raise_application_error(-20000, 'Internal error: SHIFT_TIMED_REGIMES key should not be changed');
      end if;
      
      
      if (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
         (:new.END_DATE <> :old.END_DATE) then
        select
          Count(*)
        into
          IntersectCount
        from
          SHIFT_TIMED_REGIMES str
        where
          (str.SHIFT_REGIME_CODE = :new.SHIFT_REGIME_CODE) and
          (str.SHIFT_TIMED_REGIME_CODE <> :old.SHIFT_TIMED_REGIME_CODE) and
          
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
        
        for sc in
          ( select
              SHIFT_CODE
            from
              SHIFT_CYCLES sc
            where
              (sc.SHIFT_TIMED_REGIME_CODE = :old.SHIFT_TIMED_REGIME_CODE)
          )
        loop
          if (ShiftUtils.DoShiftsIntersect(sc.SHIFT_CODE, :new.SHIFT_REGIME_CODE, :new.BEGIN_DATE, :new.END_DATE) > 0) then
            raise_application_error(-20002,
              ServerMessages.SCrossedPeriodId || '(' ||
              'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
              'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
            );
          end if;
        end loop;
      end if;
      
      
      if (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
         (:new.END_DATE <> :old.END_DATE) or
         (:new.FOLLOWS_CALENDAR_OFFDAYS <> :old.FOLLOWS_CALENDAR_OFFDAYS) or
         (:new.CYCLE_DURATION_DAYS <> :old.CYCLE_DURATION_DAYS) or
         (:new.IS_CYCLE_ON_WORKDAYS_ONLY <> :old.IS_CYCLE_ON_WORKDAYS_ONLY) then
        ShiftUtils.DeleteDateShiftCyclesFor(:old.SHIFT_TIMED_REGIME_CODE); 
      end if;


      update
        SHIFT_TIMED_REGIMES str
      set
        str.SHIFT_REGIME_CODE = :new.SHIFT_REGIME_CODE,
        str.BEGIN_DATE = :new.BEGIN_DATE,
        str.END_DATE = :new.END_DATE,
        str.FOLLOWS_CALENDAR_OFFDAYS = :new.FOLLOWS_CALENDAR_OFFDAYS,
        str.CYCLE_DURATION_DAYS = :new.CYCLE_DURATION_DAYS,
        str.IS_OVERTIME = :new.IS_OVERTIME,
        str.IS_CYCLE_ON_WORKDAYS_ONLY = :new.IS_CYCLE_ON_WORKDAYS_ONLY
      where
        (str.SHIFT_TIMED_REGIME_CODE = :old.SHIFT_TIMED_REGIME_CODE);
      
      
      if (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
         (:new.END_DATE <> :old.END_DATE) or
         (:new.FOLLOWS_CALENDAR_OFFDAYS <> :old.FOLLOWS_CALENDAR_OFFDAYS) or
         (:new.CYCLE_DURATION_DAYS <> :old.CYCLE_DURATION_DAYS) or
         (:new.IS_CYCLE_ON_WORKDAYS_ONLY <> :old.IS_CYCLE_ON_WORKDAYS_ONLY) then
        ShiftUtils.InsertDateShiftCyclesFor(:old.SHIFT_TIMED_REGIME_CODE); 
      end if;
      
    exception
      when others then
        StateUtils.EndStrfeUpdate;
        raise;
    end;
    StateUtils.EndStrfeUpdate;
  end if;
end;
/
