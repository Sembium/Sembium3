create or replace trigger tr_PRPFE_II
  instead of insert on PAR_REL_PRODUCTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPrpfeUpdate then
    StateUtils.BeginPrpfeUpdate;
    begin
    
      insert into PAR_REL_PRODUCTS
      (
        PARTNER_CODE,
        BORDER_REL_TYPE_CODE,
        PRODUCT_CODE,
        DOC_BRANCH_CODE,
        DOC_CODE,
        IS_REGULAR
      )
      values
      (
        :new.PARTNER_CODE,
        :new.BORDER_REL_TYPE_CODE,
        :new.PRODUCT_CODE,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.IS_REGULAR
      );
    
    exception
      when others then
        StateUtils.EndPrpfeUpdate;
        raise;
    end;
    StateUtils.EndPrpfeUpdate;
  end if;

end tr_PRFE_II;
/
