create or replace trigger tr_CMIFE_ID
  instead of delete on CUSTOM_MENU_ITEMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InCmifeUpdate then
    StateUtils.BeginCmifeUpdate;
    begin
    
      delete
        CUSTOM_MENU_ITEMS cmi
      where
        (cmi.CUSTOM_MENU_ITEM_CODE = :old.CUSTOM_MENU_ITEM_CODE);
        
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
        StateUtils.EndCmifeUpdate;
        raise;
    end;
    StateUtils.EndCmifeUpdate;
  end if;
  
end tr_CMIFE_ID;
/
