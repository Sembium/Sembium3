create or replace trigger tr_FO_BDIU_CHECK_IN_FOFE
  before delete or insert or update on FIN_ORDERS
  for each row
begin

  if not StateUtils.InFofeUpdate then
    raise_application_error(-20000, 'Internal error: FIN_ORDERS should not be edited directly');
  end if;

end tr_FO_BDIU_CHECK_IN_FOFE;
/
