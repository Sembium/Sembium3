create or replace trigger tr_PRPPE_BIUD_CHECK_IN_PRPPFE
  before insert or update or delete on PAR_REL_PRODUCT_PERIOD_ESTS  
  for each row
begin
  
  if not StateUtils.InPrppfeUpdate then
    raise_application_error(-20000, 'Internal error: PAR_REL_PRODUCT_PERIOD_ESTS should not be edited directly');
  end if;

end tr_PRPPE_BIUD_CHECK_IN_PRPPFE;
/
