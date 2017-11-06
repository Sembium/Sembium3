create or replace trigger tr_PSFE_ID
  instead of delete on PRODUCT_STORES_FOR_EDIT
  for each row
begin

  if not StateUtils.InPsfeUpdate then
    StateUtils.BeginPsfeUpdate;
    begin
    
      delete
        PRODUCT_STORES ps
      where
        (ps.PRODUCT_STORE_CODE = :old.PRODUCT_STORE_CODE);

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
        StateUtils.EndPsfeUpdate;
        raise;
    end;
    StateUtils.EndPsfeUpdate;
  end if;
    
end tr_PSFE_ID;
/
