create or replace trigger tr_DITFE_ID
  instead of delete on DOC_ITEM_TEMPLATES_FOR_EDIT
  for each row
begin

  if not StateUtils.InDitfeUpdate then
    StateUtils.BeginDitfeUpdate;
    begin
    
      delete
        DEFAULT_DOC_ITEMS ddi
      where
        (ddi.DOC_ITEM_TEMPLATE_CODE = :old.DOC_ITEM_TEMPLATE_CODE);
        
      delete
        DOC_ITEM_TEMPLATES dit
      where
        (dit.DOC_ITEM_TEMPLATE_CODE = :old.DOC_ITEM_TEMPLATE_CODE);
        
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
        StateUtils.EndDitfeUpdate;
        raise;
    end;
    StateUtils.EndDitfeUpdate;
  end if;
  
end tr_DITFE_ID;
/
