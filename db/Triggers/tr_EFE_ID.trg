create or replace trigger tr_EFE_ID
  instead of delete on EMPLOYEES_FOR_EDIT
  for each row
begin

  if not StateUtils.InEfeUpdate then
    StateUtils.BeginEfeUpdate;
    begin
      
      delete
        EMP_MOVEMENTS_FOR_EDIT em
      where
        (em.EMPLOYEE_CODE = :old.EMPLOYEE_CODE);
    
    
      delete
        EMP_AVAIL_MODIFIERS_FOR_EDIT eam
      where
        (eam.EMPLOYEE_CODE = :old.EMPLOYEE_CODE);
    
    
      delete
        EMP_DISCIPLINE_EVENTS_FOR_EDIT ede
      where
        (ede.EMPLOYEE_CODE = :old.EMPLOYEE_CODE);
    
    
      delete
        EMPLOYEES e
      where
        (e.EMPLOYEE_CODE = :old.EMPLOYEE_CODE);
    
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) then
        
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
  
end tr_EFE_ID;
/
