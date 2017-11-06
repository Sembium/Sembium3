create or replace trigger tr_OSAFE_II
  instead of insert on OCCUPATION_SALARIES_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin

  if not StateUtils.InOsafeUpdate then
    StateUtils.BeginOsafeUpdate;
    begin

      select
        Count(*)
      into
        IntersectCount
      from
        OCCUPATION_SALARIES os
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
          ServerMessages.SCrossedOccSalaryPeriodId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
        );
      end if;
    
    
      insert into OCCUPATION_SALARIES
      (
        OCCUPATION_SALARY_CODE, 
        OCCUPATION_CODE, 
        BEGIN_DATE, 
        END_DATE, 
        BASE_SALARY, 
        DATE_UNIT_CODE, 
        MIN_SALARY_RATIO_COEF, 
        MAX_SALARY_RATIO_COEF      
      )
      values 
      (
        :new.OCCUPATION_SALARY_CODE, 
        :new.OCCUPATION_CODE, 
        :new.BEGIN_DATE, 
        :new.END_DATE, 
        :new.BASE_SALARY, 
        :new.DATE_UNIT_CODE, 
        :new.MIN_SALARY_RATIO_COEF, 
        :new.MAX_SALARY_RATIO_COEF      
      );
     
    exception
      when others then
        StateUtils.EndOsafeUpdate;
        raise;
    end;
    StateUtils.EndOsafeUpdate;
  end if;
    
end tr_OSAFE_II;
/
