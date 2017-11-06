create or replace trigger tr_CPFE_II
  instead of insert on COMPANY_PRODUCTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InCpfeUpdate then
    StateUtils.BeginCpfeUpdate;
    begin
    
      insert into COMPANY_PRODUCTS
      (
        COMPANY_CODE,
        PRODUCT_CODE,
        NAME,
        I_NAME
      )
      values
      (
        :new.COMPANY_CODE,
        :new.PRODUCT_CODE,
        :new.NAME,
        :new.I_NAME
      );

      ProductUtils.RecalcPartnerProductNames(:new.PRODUCT_CODE);

    exception
      when others then
        StateUtils.EndCpfeUpdate;
        raise;
    end;
    StateUtils.EndCpfeUpdate;
  end if;

end tr_CPFE_II;
/
