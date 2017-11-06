create or replace trigger tr_DP_BD_DEL_PRODUCT_PERIODS
  before delete on DEFINITE_PRODUCTS  
  for each row
begin

  if (StateUtils.SkipPeriodChecksProductCode <> 0) then
    raise_application_error(-20000, 'StateUtils.SkipPeriodChecksProductCode already set');
  end if;
  
  StateUtils.SetSkipPeriodChecksProductCode(:old.PRODUCT_CODE);  
  begin  

    delete
      PRODUCT_PERIODS_FOR_EDIT pper
    where
      (pper.PRODUCT_CODE = :old.PRODUCT_CODE);
  
  exception
    when others then
      StateUtils.SetSkipPeriodChecksProductCode(0);  
      raise;
  end;
  StateUtils.SetSkipPeriodChecksProductCode(0);  
    
end tr_DP_BD_DEL_PRODUCT_PERIODS;
/
