create or replace trigger tr_NIFE_IU
  instead of update on NOM_ITEMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InNifeUpdate then
    StateUtils.BeginNifeUpdate;
    begin

      if (:new.NOM_CODE <> :old.NOM_CODE) or (:new.NOM_ITEM_CODE <> :old.NOM_ITEM_CODE) then
        raise_application_error(-20000, 'Internal error: NOM_ITEMS key should not be changed');
      end if;

      update
        NOM_ITEMS ni
      set
        ni.NOM_ITEM_NAME = :new.NOM_ITEM_NAME,
        ni.NOM_ITEM_DESCRIPTION = :new.NOM_ITEM_DESCRIPTION,
        ni.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
        ni.CREATE_DATE = :new.CREATE_DATE,
        ni.CREATE_TIME = :new.CREATE_TIME,
        ni.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        ni.CHANGE_DATE = :new.CHANGE_DATE,
        ni.CHANGE_TIME = :new.CHANGE_TIME,
        ni.PRODUCT_CLASS_CODE = :new.PRODUCT_CLASS_CODE,
        ni.NOM_ITEM_NO = :new.NOM_ITEM_NO,
        ni.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE, 
        ni.DOC_CODE = :new.DOC_CODE,
        ni.IS_NOT_PART_OF_NAME = :new.IS_NOT_PART_OF_NAME
      where
        (ni.NOM_CODE = :old.NOM_CODE) and
        (ni.NOM_ITEM_CODE = :old.NOM_ITEM_CODE);
        
      -- force update trigger to recalc PARAM_VALUE
      update
        PRODUCT_PARAMS_FOR_EDIT pp
      set
        pp.PARAM_VALUE = pp.PARAM_VALUE
      where
        (pp.VALUE_TYPE = 0) and
        (pp.VALUE_NOM_CODE = :new.NOM_CODE) and
        (pp.VALUE_NOM_ITEM_CODE = :new.NOM_ITEM_CODE);        

    exception
      when others then
        StateUtils.EndNifeUpdate;
        raise;
    end;
    StateUtils.EndNifeUpdate;
  end if;

end tr_NIFE_IU;
/
