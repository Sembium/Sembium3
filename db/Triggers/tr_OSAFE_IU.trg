create or replace trigger tr_OSAFE_IU
  instead of update on OCCUPATION_SALARIES_FOR_EDIT
  for each row
declare
  IntersectCount Number;
begin

  if not StateUtils.InOsafeUpdate then
    StateUtils.BeginOsafeUpdate;
    begin
    
      if (:new.OCCUPATION_SALARY_CODE <> :old.OCCUPATION_SALARY_CODE) then
        raise_application_error(-20000, 'Internal error: OCCUPATION_SALARIES key should not be changed');
      end if;    
      
      if (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
         (:new.END_DATE <> :old.END_DATE) or
         (:new.OCCUPATION_CODE <> :old.OCCUPATION_CODE) then
         
        select
          Count(*)
        into
          IntersectCount
        from
          OCCUPATION_SALARIES os
        where
          (os.OCCUPATION_SALARY_CODE <> :old.OCCUPATION_SALARY_CODE) and
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

      end if;
    
      update
        OCCUPATION_SALARIES os
      set
        os.OCCUPATION_CODE = :new.OCCUPATION_CODE,
        os.BEGIN_DATE = :new.BEGIN_DATE,
        os.END_DATE = :new.END_DATE,
        os.BASE_SALARY = :new.BASE_SALARY, 
        os.DATE_UNIT_CODE = :new.DATE_UNIT_CODE, 
        os.MIN_SALARY_RATIO_COEF = :new.MIN_SALARY_RATIO_COEF, 
        os.MAX_SALARY_RATIO_COEF = :new.MAX_SALARY_RATIO_COEF
      where
        (os.OCCUPATION_SALARY_CODE = :old.OCCUPATION_SALARY_CODE);        
        
    exception
      when others then
        StateUtils.EndOsafeUpdate;
        raise;
    end;
    StateUtils.EndOsafeUpdate;
  end if;
    
end tr_OSAFE_IU;
/
