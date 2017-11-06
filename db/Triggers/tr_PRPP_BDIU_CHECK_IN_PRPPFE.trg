create or replace trigger tr_PRPP_BDIU_CHECK_IN_PRPPFE
  before delete or insert or update on PAR_REL_PRODUCT_PERIODS
  for each row
begin

  if not StateUtils.InPrppfeUpdate then
    raise_application_error(-20000, 'Internal error: PAR_REL_PRODUCT_PERIODS should not be edited directly');
  end if;

end tr_PRPP_BDIU_CHECK_IN_PRPPFE;
/
