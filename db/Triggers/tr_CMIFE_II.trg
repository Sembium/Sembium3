create or replace trigger tr_CMIFE_II
  instead of insert on CUSTOM_MENU_ITEMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InCmifeUpdate then
    StateUtils.BeginCmifeUpdate;
    begin
    
      insert into CUSTOM_MENU_ITEMS
      (
        CUSTOM_MENU_ITEM_CODE,
        CUSTOM_MENU_ITEM_NAME,
        DOC_BRANCH_CODE,
        DOC_CODE,
        HAS_MENU_LINE_AFTER,
        HAS_MENU_LINE_BEFORE,
        IS_BEFORE_MENU_ITEM,
        IS_IN_CAPTION_MENU,
        IS_SUBMENU,
        RELATIVE_MENU_ITEM_NAME
      )
      values
      (
        :new.CUSTOM_MENU_ITEM_CODE,
        :new.CUSTOM_MENU_ITEM_NAME,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.HAS_MENU_LINE_AFTER,
        :new.HAS_MENU_LINE_BEFORE,
        :new.IS_BEFORE_MENU_ITEM,
        :new.IS_IN_CAPTION_MENU,
        :new.IS_SUBMENU,
        :new.RELATIVE_MENU_ITEM_NAME
      );
    
    exception
      when others then
        StateUtils.EndCmifeUpdate;
        raise;
    end;
    StateUtils.EndCmifeUpdate;
  end if;

end tr_CMIFE_II;
/
