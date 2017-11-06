create or replace trigger tr_PRPPO_BIUD_CHECK_IN_PRPPFE
  before insert or update or delete on PAR_REL_PRODUCT_PERIOD_OBTS  
  for each row
begin
  
  if not StateUtils.InPrppfeUpdate then
    raise_application_error(-20000, 'Internal error: PAR_REL_PRODUCT_PERIOD_OBTS should not be edited directly');
  end if;

end tr_PRPPO_BIUD_CHECK_IN_PRPPFE;
/
