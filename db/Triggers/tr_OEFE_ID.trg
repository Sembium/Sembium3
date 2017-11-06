create or replace trigger tr_OEFE_ID
  instead of delete on OCCUPATION_EMPLOYEES_FOR_EDIT
  for each row
begin

  if not StateUtils.InOefeUpdate then
    StateUtils.BeginOefeUpdate;
    begin

      delete
        OCCUPATION_EMPLOYEES oe
      where
        (oe.OCCUPATION_EMPLOYEE_CODE = :old.OCCUPATION_EMPLOYEE_CODE);
    
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) then
        
        delete
          DOCS_FOR_EDIT dfe
        where
          (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
          (dfe.DOC_CODE = :old.DOC_CODE);
         
      end if;
      
      MiscUtils.CheckEmployeeOccupations(:old.EMPLOYEE_CODE);

    exception
      when others then
        StateUtils.EndOefeUpdate;
        raise;
    end;
    StateUtils.EndOefeUpdate;
  end if;
    
end tr_OEFE_ID;
/
