create or replace trigger tr_DPTFE_ID
  instead of delete on DEPTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InDptfeUpdate then
    StateUtils.BeginDptfeUpdate;
    begin
    
      delete
        DEPT_PRC_FUNCS dpf
      where
        (dpf.DEPT_CODE = :old.DEPT_CODE);

      delete
        DEPTS dpt
      where
        (dpt.DEPT_CODE = :old.DEPT_CODE);
        
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
        StateUtils.EndDptfeUpdate;
        raise;
    end;
    StateUtils.EndDptfeUpdate;
  end if;
  
end tr_DPTFE_ID;
/
