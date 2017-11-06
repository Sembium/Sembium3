create or replace trigger tr_DITFE_IU
  instead of update on DOC_ITEM_TEMPLATES_FOR_EDIT
  for each row
begin

  if not StateUtils.InDitfeUpdate then
    StateUtils.BeginDitfeUpdate;
    begin
    
      if (:new.DOC_ITEM_TEMPLATE_CODE <> :old.DOC_ITEM_TEMPLATE_CODE) then
        raise_application_error(-20000, 'Internal error: DOC_ITEM_TEMPLATES key should not be changed');
      end if;
      
      update
        DOC_ITEM_TEMPLATES dit
      set
        dit.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        dit.DOC_CODE = :new.DOC_CODE,
        dit.DOC_ITEM_CODE = :new.DOC_ITEM_CODE,
        dit.DOC_ITEM_TEMPLATE_NAME = :new.DOC_ITEM_TEMPLATE_NAME,
        dit.DOC_ITEM_TEMPLATE_TYPE_CODE = :new.DOC_ITEM_TEMPLATE_TYPE_CODE
      where
        (dit.DOC_ITEM_TEMPLATE_CODE = :old.DOC_ITEM_TEMPLATE_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) and
         ( (:old.DOC_BRANCH_CODE <> Coalesce(:new.DOC_BRANCH_CODE, 0)) or
           (:old.DOC_CODE <> Coalesce(:new.DOC_CODE, 0)) ) then
         
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

end tr_DITFE_IU;
/
