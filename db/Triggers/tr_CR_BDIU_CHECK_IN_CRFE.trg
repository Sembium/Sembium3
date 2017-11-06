create or replace trigger tr_CR_BDIU_CHECK_IN_CRFE
  before delete or insert or update on CURRENCY_RATES
  for each row
begin

  if not StateUtils.InCrfeUpdate then
    raise_application_error(-20000, 'Internal error: CURRENCY_RATES should not be edited directly');
  end if;
    
end tr_CR_BDIU_CHECK_IN_CRFE;
/
