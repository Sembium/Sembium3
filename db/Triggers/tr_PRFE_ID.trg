create or replace trigger tr_PRFE_ID
  instead of delete on PROFESSIONS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPrfeUpdate then
    StateUtils.BeginPrfeUpdate;
    begin
    
      delete
        PROFESSIONS pr
      where
        (pr.PROFESSION_CODE = :old.PROFESSION_CODE);
        
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
        StateUtils.EndPrfeUpdate;
        raise;
    end;
    StateUtils.EndPrfeUpdate;
  end if;
  
end tr_PRFE_ID;
/
