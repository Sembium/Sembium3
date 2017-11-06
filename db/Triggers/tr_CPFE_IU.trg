create or replace trigger tr_CPFE_IU
  instead of update on COMPANY_PRODUCTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InCpfeUpdate then
    StateUtils.BeginCpfeUpdate;
    begin
    
      if ((:new.COMPANY_CODE <> :old.COMPANY_CODE) or
          (:new.PRODUCT_CODE <> :old.PRODUCT_CODE)) then
        raise_application_error(-20000, 'Internal error: COMPANY_PRODUCTS key should not be changed');
      end if;
      
      update
        COMPANY_PRODUCTS cp
      set
        cp.NAME = :new.NAME,
        cp.I_NAME = :new.I_NAME
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

end tr_CPFE_IU;
/
