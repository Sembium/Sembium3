create or replace trigger tr_OSFE_II
  instead of insert on OCCUPATION_SHIFTS_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin

  if not StateUtils.InOsfeUpdate then
    StateUtils.BeginOsfeUpdate;
    begin

      select
        Count(*)
      into
        IntersectCount
      from
        OCCUPATION_SHIFTS os
      where
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
    
    
      insert into OCCUPATION_SHIFTS
      (
        OCCUPATION_SHIFT_CODE,
        OCCUPATION_CODE,
        SHIFT_CODE,
        BEGIN_DATE,
        END_DATE,
        AFFECTS_EMP_AVAILABILITY
      )
      values 
      (
        :new.OCCUPATION_SHIFT_CODE,
        :new.OCCUPATION_CODE,
        :new.SHIFT_CODE,
        :new.BEGIN_DATE,
        :new.END_DATE,
        :new.AFFECTS_EMP_AVAILABILITY
      );
     
    exception
      when others then
        StateUtils.EndOsfeUpdate;
        raise;
    end;
    StateUtils.EndOsfeUpdate;
  end if;
    
end tr_OSFE_II;
/
