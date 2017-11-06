create or replace trigger tr_OSFE_IU
  instead of update on OCCUPATION_SHIFTS_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin

  if not StateUtils.InOsfeUpdate then
    StateUtils.BeginOsfeUpdate;
    begin
    
      if (:new.OCCUPATION_SHIFT_CODE <> :old.OCCUPATION_SHIFT_CODE) then
        raise_application_error(-20000, 'Internal error: OCCUPATION_SHIFTS key should not be changed');
      end if;    
      
      if (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
         (:new.END_DATE <> :old.END_DATE) or
         (:new.OCCUPATION_CODE <> :old.OCCUPATION_CODE) then
         
        select
          Count(*)
        into
          IntersectCount
        from
          OCCUPATION_SHIFTS os
        where
          (os.OCCUPATION_SHIFT_CODE <> :old.OCCUPATION_SHIFT_CODE) and
          (os.OCCUPATION_CODE = :new.OCCUPATION_CODE) and
          ( DateTimeUtils.DatePeriodIntersectLength(
              os.BEGIN_DATE, os.END_DATE,
              :new.BEGIN_DATE, :new.END_DATE
            ) > 0
          )
        ;
      
        if (IntersectCount > 0) then
          raise_application_error(-20002,
            ServerMessages.SCrossedOccShiftPeriodId || '(' ||
            'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
            'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
          );
        end if;

      end if;
    
      update
        OCCUPATION_SHIFTS os
      set
        os.OCCUPATION_CODE = :new.OCCUPATION_CODE,
        os.SHIFT_CODE = :new.SHIFT_CODE,
        os.BEGIN_DATE = :new.BEGIN_DATE,
        os.END_DATE = :new.END_DATE,
        os.AFFECTS_EMP_AVAILABILITY = :new.AFFECTS_EMP_AVAILABILITY
      where
        (os.OCCUPATION_SHIFT_CODE = :old.OCCUPATION_SHIFT_CODE);        
        
    exception
      when others then
        StateUtils.EndOsfeUpdate;
        raise;
    end;
    StateUtils.EndOsfeUpdate;
  end if;
    
end tr_OSFE_IU;
/
