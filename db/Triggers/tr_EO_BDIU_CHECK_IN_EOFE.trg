create or replace trigger tr_EO_BDIU_CHECK_IN_EOFE
  before delete or insert or update on ENGINEERING_ORDERS
  for each row
begin

  if not StateUtils.InEofeUpdate then
    raise_application_error(-20000, 'Internal error: ENGINEERING_ORDERS should not be edited directly');
  end if;

end tr_EO_BDIU_CHECK_IN_EOFE;
/
