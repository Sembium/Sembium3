create or replace trigger tr_PRPPM_BDIU_CHECK_IN_PRPPMFE
  before delete or insert or update on PRPER_PRICE_MODIFIERS
  for each row
begin

  if not StateUtils.InPrppmfeUpdate then
    raise_application_error(-20000, 'Internal error: PRPER_PRICE_MODIFIERS should not be edited directly');
  end if;

end tr_PRPPM_BDIU_CHECK_IN_PRPPMFE;
/
