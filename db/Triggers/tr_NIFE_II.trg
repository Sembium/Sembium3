create or replace trigger tr_NIFE_II
  instead of insert on NOM_ITEMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InNifeUpdate then
    StateUtils.BeginNifeUpdate;
    begin

      insert into NOM_ITEMS
      (
        NOM_CODE,
        NOM_ITEM_CODE,
        NOM_ITEM_NAME,
        NOM_ITEM_DESCRIPTION,
        CREATE_EMPLOYEE_CODE,
        CREATE_DATE,
        CREATE_TIME,
        CHANGE_EMPLOYEE_CODE,
        CHANGE_DATE,
        CHANGE_TIME,
        PRODUCT_CLASS_CODE,
        NOM_ITEM_NO,
        DOC_BRANCH_CODE, 
        DOC_CODE,
        IS_NOT_PART_OF_NAME
      )
      values
      (
        :new.NOM_CODE,
        :new.NOM_ITEM_CODE,
        :new.NOM_ITEM_NAME,
        :new.NOM_ITEM_DESCRIPTION,
        :new.CREATE_EMPLOYEE_CODE,
        :new.CREATE_DATE,
        :new.CREATE_TIME,
        :new.CHANGE_EMPLOYEE_CODE,
        :new.CHANGE_DATE,
        :new.CHANGE_TIME,
        :new.PRODUCT_CLASS_CODE,
        :new.NOM_ITEM_NO,
        :new.DOC_BRANCH_CODE, 
        :new.DOC_CODE,
        :new.IS_NOT_PART_OF_NAME
      );

    exception
      when others then
        StateUtils.EndNifeUpdate;
        raise;
    end;
    StateUtils.EndNifeUpdate;
  end if;

end tr_NIFE_II;
/
