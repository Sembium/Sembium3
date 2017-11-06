create or replace trigger tr_PPFE_II
  instead of insert on PRODUCT_PARAMS_FOR_EDIT
  for each row
declare
  InvalidParent Number;
begin

  if not StateUtils.InPpfeUpdate then
    StateUtils.BeginPpfeUpdate;
    begin
      
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
      
      insert into PRODUCT_PARAMS
      (
        PRODUCT_CODE, 
        PRODUCT_PARAM_CODE, 
        PRODUCT_PARAM_NAME, 
        PRODUCT_PARAM_ORDER_NO, 
        VALUE_TYPE, 
        NOM_CODE, 
        VALUE_NOM_CODE, 
        VALUE_NOM_ITEM_CODE, 
        VALUE_FLOAT, 
        VALUE_FLOAT_FORMAT, 
        VALUE_FLOAT_RANGE_START, 
        VALUE_FLOAT_RANGE_END, 
        VALUE_STRING, 
        ABBREV, 
        PREFIX, 
        SUFFIX, 
        IS_REQUIRED, 
        IS_PART_OF_NAME, 
        IS_INHERITED, 
        IS_VALUE_INHERITED, 
        IS_DEFINED, 
        PRODUCT_CLASS_CODE, 
        PARAM_VALUE, 
        DOC_BRANCH_CODE, 
        DOC_CODE,
        IS_FOR_EXPORT,
        EXPORT_IDENTIFIER
      )
      values
      (
        :new.PRODUCT_CODE, 
        :new.PRODUCT_PARAM_CODE, 
        :new.PRODUCT_PARAM_NAME, 
        :new.PRODUCT_PARAM_ORDER_NO, 
        :new.VALUE_TYPE, 
        :new.NOM_CODE, 
        :new.VALUE_NOM_CODE, 
        :new.VALUE_NOM_ITEM_CODE, 
        :new.VALUE_FLOAT, 
        :new.VALUE_FLOAT_FORMAT, 
        :new.VALUE_FLOAT_RANGE_START, 
        :new.VALUE_FLOAT_RANGE_END, 
        :new.VALUE_STRING, 
        :new.ABBREV, 
        :new.PREFIX, 
        :new.SUFFIX, 
        :new.IS_REQUIRED, 
        :new.IS_PART_OF_NAME, 
        :new.IS_INHERITED, 
        :new.IS_VALUE_INHERITED, 
        :new.IS_DEFINED, 
        :new.PRODUCT_CLASS_CODE, 
        :new.PARAM_VALUE, 
        :new.DOC_BRANCH_CODE, 
        :new.DOC_CODE,
        :new.IS_FOR_EXPORT,
        :new.EXPORT_IDENTIFIER
      );

    exception
      when others then
        StateUtils.EndPpfeUpdate;
        raise;
    end;
    StateUtils.EndPpfeUpdate;
  end if;

end;
/
