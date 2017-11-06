create or replace trigger tr_CPFE_ID
  instead of delete on COMPANY_PRODUCTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InCpfeUpdate then
    StateUtils.BeginCpfeUpdate;
    begin
    
      delete
        COMPANY_PRODUCTS cp
      where
        (cp.COMPANY_CODE = :old.COMPANY_CODE) and
        (cp.PRODUCT_CODE = :old.PRODUCT_CODE);

      ProductUtils.RecalcPartnerProductNames(:old.PRODUCT_CODE);

    exception
      when others then
        StateUtils.EndCpfeUpdate;
        raise;
    end;
    StateUtils.EndCpfeUpdate;
  end if;
  
end tr_CPFE_ID;
/
