create or replace trigger tr_EFE_IU
  instead of update on EMPLOYEES_FOR_EDIT
  for each row
begin

  if not StateUtils.InEfeUpdate then
    StateUtils.BeginEfeUpdate;
    begin
    
      if (:new.EMPLOYEE_CODE <> :old.EMPLOYEE_CODE) then
        raise_application_error(-20000, 'Internal error: EMPLOYEES key should not be changed');
      end if;
      
      update
        EMPLOYEES e
      set
        e.ABBREV = :new.ABBREV,
        e.COMPANY_CODE = :new.COMPANY_CODE,
        e.CURRENT_DEPT_CODE = :new.CURRENT_DEPT_CODE,
        e.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        e.DOC_CODE = :new.DOC_CODE,
        e.FIRST_NAME = :new.FIRST_NAME,
        e.LAST_NAME = :new.LAST_NAME,
        e.MIDDLE_NAME = :new.MIDDLE_NAME,
        e.IS_INACTIVE = :new.IS_INACTIVE
      where
        (e.EMPLOYEE_CODE = :old.EMPLOYEE_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) and
         ( (:old.DOC_BRANCH_CODE <> Coalesce(:new.DOC_BRANCH_CODE, 0)) or
           (:old.DOC_CODE <> Coalesce(:new.DOC_CODE, 0)) ) then
         
         delete
           DOCS_FOR_EDIT dfe
         where
           (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
           (dfe.DOC_CODE = :old.DOC_CODE);
         
      end if;
    
    exception
      when others then
        StateUtils.EndEfeUpdate;
        raise;
    end;
    StateUtils.EndEfeUpdate;
  end if;

end tr_EFE_IU;
/
