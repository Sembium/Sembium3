create or replace trigger tr_OFE_II
  instead of insert on OCCUPATIONS_FOR_EDIT
  for each row
declare
  IncorrectPeriods Number;
begin

  if not StateUtils.InOfeUpdate then
    StateUtils.BeginOfeUpdate;
    begin
    
      select
        Count(*)
      into
        IncorrectPeriods
      from
        DEPTS d
      where
        (d.DEPT_CODE = :new.DEPT_CODE) and
        ( (:new.OCCUPATION_BEGIN_DATE < d.BEGIN_DATE) or
          (:new.OCCUPATION_END_DATE > d.END_DATE) );
        
      if (IncorrectPeriods > 0) then
        raise_application_error(-20002,
          ServerMessages.SIncorrectOccDeptPeriodId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.OCCUPATION_BEGIN_DATE) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(:new.OCCUPATION_END_DATE) || ')'
        );
      end if;

      
      insert into OCCUPATIONS
      (
        OCCUPATION_CODE, 
        OCCUPATION_NAME, 
        DEPT_CODE, 
        OCCUPATION_BEGIN_DATE, 
        OCCUPATION_END_DATE, 
        DOC_BRANCH_CODE, 
        DOC_CODE, 
        OCCUPATION_LEVEL, 
        NOTES, 
        IS_MAIN, 
        OCCUPATION_PHASE_CODE, 
        PRODUCT_CODE,
        CRAFT_CODE
      )
      values
      (
        :new.OCCUPATION_CODE, 
        :new.OCCUPATION_NAME, 
        :new.DEPT_CODE, 
        :new.OCCUPATION_BEGIN_DATE, 
        :new.OCCUPATION_END_DATE, 
        :new.DOC_BRANCH_CODE, 
        :new.DOC_CODE, 
        :new.OCCUPATION_LEVEL, 
        :new.NOTES, 
        Coalesce(:new.IS_MAIN, 0), 
        :new.OCCUPATION_PHASE_CODE, 
        :new.PRODUCT_CODE,
        :new.CRAFT_CODE
      );
     
    exception
      when others then
        StateUtils.EndOfeUpdate;
        raise;
    end;
    StateUtils.EndOfeUpdate;
  end if;
    
end tr_OFE_II;
/
