create or replace trigger tr_PPFE_IU
  instead of update on PRODUCT_PARAMS_FOR_EDIT
  for each row
declare
  InvalidParent Number;
begin

  if not StateUtils.InPpfeUpdate then
    StateUtils.BeginPpfeUpdate;
    begin

      if (:new.PRODUCT_CODE <> :old.PRODUCT_CODE) or
         (:new.PRODUCT_PARAM_CODE <> :old.PRODUCT_PARAM_CODE) then
        raise_application_error(-20000, 'Internal error: PRODUCT_PARAMS key should not be changed');
      end if;

      if (:new.IS_INHERITED = 0) then
        
        select
          Count(*)
        into
          InvalidParent
        from
          PRODUCTS p,
          PRODUCT_PARAMS ppp
        where
          (p.PRODUCT_CODE = :new.PRODUCT_CODE) and
          (ppp.PRODUCT_CODE = p.PARENT_CODE) and
          (ppp.PRODUCT_PARAM_CODE = :new.PRODUCT_PARAM_CODE);
      
        if (InvalidParent = 1) then
          raise_application_error(-20000, 'Internal error: Invalid parent product param (PRODUCT_PARAM_CODE = ' || :new.PRODUCT_PARAM_CODE || ')');
        end if;
      
      end if;

      update
        PRODUCT_PARAMS pp
      set
        pp.PRODUCT_PARAM_NAME = :new.PRODUCT_PARAM_NAME, 
        pp.PRODUCT_PARAM_ORDER_NO = :new.PRODUCT_PARAM_ORDER_NO, 
        pp.VALUE_TYPE = :new.VALUE_TYPE, 
        pp.NOM_CODE = :new.NOM_CODE, 
        pp.VALUE_NOM_CODE = :new.VALUE_NOM_CODE, 
        pp.VALUE_NOM_ITEM_CODE = :new.VALUE_NOM_ITEM_CODE, 
        pp.VALUE_FLOAT = :new.VALUE_FLOAT, 
        pp.VALUE_FLOAT_FORMAT = :new.VALUE_FLOAT_FORMAT, 
        pp.VALUE_FLOAT_RANGE_START = :new.VALUE_FLOAT_RANGE_START, 
        pp.VALUE_FLOAT_RANGE_END = :new.VALUE_FLOAT_RANGE_END, 
        pp.VALUE_STRING = :new.VALUE_STRING, 
        pp.ABBREV = :new.ABBREV, 
        pp.PREFIX = :new.PREFIX, 
        pp.SUFFIX = :new.SUFFIX, 
        pp.IS_REQUIRED = :new.IS_REQUIRED, 
        pp.IS_PART_OF_NAME = :new.IS_PART_OF_NAME, 
        pp.IS_INHERITED = :new.IS_INHERITED, 
        pp.IS_VALUE_INHERITED = :new.IS_VALUE_INHERITED, 
        pp.IS_DEFINED = :new.IS_DEFINED, 
        pp.PRODUCT_CLASS_CODE = :new.PRODUCT_CLASS_CODE, 
        pp.PARAM_VALUE = :new.PARAM_VALUE, 
        pp.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE, 
        pp.DOC_CODE = :new.DOC_CODE,
        pp.IS_FOR_EXPORT = :new.IS_FOR_EXPORT,
        pp.EXPORT_IDENTIFIER = :new.EXPORT_IDENTIFIER
      where
        (pp.PRODUCT_CODE = :old.PRODUCT_CODE) and
        (pp.PRODUCT_PARAM_CODE = :old.PRODUCT_PARAM_CODE);

    exception
      when others then
        StateUtils.EndPpfeUpdate;
        raise;
    end;
    StateUtils.EndPpfeUpdate;
  end if;

end;
/
