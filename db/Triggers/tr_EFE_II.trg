create or replace trigger tr_EFE_II
  instead of insert on EMPLOYEES_FOR_EDIT
  for each row
begin

  if not StateUtils.InEfeUpdate then
    StateUtils.BeginEfeUpdate;
    begin
    
      insert into EMPLOYEES
      (
        ABBREV,
        COMPANY_CODE,
        CURRENT_DEPT_CODE,
        DOC_BRANCH_CODE,
        DOC_CODE,
        EMPLOYEE_CODE,
        FIRST_NAME,
        LAST_NAME,
        MIDDLE_NAME,
        IS_INACTIVE
      )
      values
      (
        :new.ABBREV,
        :new.COMPANY_CODE,
        :new.CURRENT_DEPT_CODE,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.EMPLOYEE_CODE,
        :new.FIRST_NAME,
        :new.LAST_NAME,
        :new.MIDDLE_NAME,
        :new.IS_INACTIVE
      );
    
    exception
      when others then
        StateUtils.EndEfeUpdate;
        raise;
    end;
    StateUtils.EndEfeUpdate;
  end if;

end tr_EFE_II;
/
