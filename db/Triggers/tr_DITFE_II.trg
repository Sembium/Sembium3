create or replace trigger tr_DITFE_II
  instead of insert on DOC_ITEM_TEMPLATES_FOR_EDIT
  for each row
begin

  if not StateUtils.InDitfeUpdate then
    StateUtils.BeginDitfeUpdate;
    begin
    
      insert into DOC_ITEM_TEMPLATES
      (
        DOC_BRANCH_CODE,
        DOC_CODE,
        DOC_ITEM_CODE,
        DOC_ITEM_TEMPLATE_CODE,
        DOC_ITEM_TEMPLATE_NAME,
        DOC_ITEM_TEMPLATE_TYPE_CODE
      )
      values
      (
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.DOC_ITEM_CODE,
        :new.DOC_ITEM_TEMPLATE_CODE,
        :new.DOC_ITEM_TEMPLATE_NAME,
        :new.DOC_ITEM_TEMPLATE_TYPE_CODE
      );
    
    exception
      when others then
        StateUtils.EndDitfeUpdate;
        raise;
    end;
    StateUtils.EndDitfeUpdate;
  end if;

end tr_DITFE_II;
/
