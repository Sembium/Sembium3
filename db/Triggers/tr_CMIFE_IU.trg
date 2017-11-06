create or replace trigger tr_CMIFE_IU
  instead of update on CUSTOM_MENU_ITEMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InCmifeUpdate then
    StateUtils.BeginCmifeUpdate;
    begin
    
      if (:new.CUSTOM_MENU_ITEM_CODE <> :old.CUSTOM_MENU_ITEM_CODE) then
        raise_application_error(-20000, 'Internal error: CUSTOM_MENU_ITEMS key should not be changed');
      end if;
      
      update
        CUSTOM_MENU_ITEMS cmi
      set
        cmi.CUSTOM_MENU_ITEM_NAME = :new.CUSTOM_MENU_ITEM_NAME,
        cmi.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        cmi.DOC_CODE = :new.DOC_CODE,
        cmi.HAS_MENU_LINE_AFTER = :new.HAS_MENU_LINE_AFTER,
        cmi.HAS_MENU_LINE_BEFORE = :new.HAS_MENU_LINE_BEFORE,
        cmi.IS_BEFORE_MENU_ITEM = :new.IS_BEFORE_MENU_ITEM,
        cmi.IS_IN_CAPTION_MENU = :new.IS_IN_CAPTION_MENU,
        cmi.IS_SUBMENU = :new.IS_SUBMENU,
        cmi.RELATIVE_MENU_ITEM_NAME = :new.RELATIVE_MENU_ITEM_NAME
      where
        (cmi.CUSTOM_MENU_ITEM_CODE = :old.CUSTOM_MENU_ITEM_CODE);
        
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
        StateUtils.EndCmifeUpdate;
        raise;
    end;
    StateUtils.EndCmifeUpdate;
  end if;

end tr_CMIFE_IU;
/
