create or replace trigger tr_DPRFE_ID
  instead of delete on DELIVERY_PROJECTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InDprfeUpdate then
    StateUtils.BeginDprfeUpdate;
    begin
    
      delete
        DELIVERY_PROJECTS dpr
      where
        (dpr.DCD_OBJECT_BRANCH_CODE = :old.DCD_OBJECT_BRANCH_CODE) and
        (dpr.DCD_OBJECT_CODE = :old.DCD_OBJECT_CODE) and
        (dpr.DELIVERY_PROJECT_CODE = :old.DELIVERY_PROJECT_CODE);
        
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
        StateUtils.EndDprfeUpdate;
        raise;
    end;
    StateUtils.EndDprfeUpdate;
  end if;
  
end tr_DPRFE_ID;
/
