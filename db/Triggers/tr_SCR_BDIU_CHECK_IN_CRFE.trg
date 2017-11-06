create or replace trigger tr_SCR_BDIU_CHECK_IN_CRFE
  before delete or insert or update on SECONDARY_CURRENCY_RATES
  for each row
begin

  if not StateUtils.InCrfeUpdate then
    raise_application_error(-20000, 'Internal error: SECONDARY_CURRENCY_RATES should not be edited directly');
  end if;
    
end tr_SCR_BDIU_CHECK_IN_CRFE;
/
