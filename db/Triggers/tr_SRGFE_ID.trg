create or replace trigger tr_SRGFE_ID
  instead of delete on SALE_REQUEST_GROUPS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSrgfeUpdate then
    StateUtils.BeginSrgfeUpdate;
    begin
    
      delete
        SALE_REQUEST_GROUPS srg
      where
        (srg.REQUEST_BRANCH_CODE = :old.REQUEST_BRANCH_CODE) and
        (srg.REQUEST_NO = :old.REQUEST_NO);
        
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
        StateUtils.EndSrgfeUpdate;
        raise;
    end;
    StateUtils.EndSrgfeUpdate;
  end if;
  
end tr_SRGFE_ID;
/
