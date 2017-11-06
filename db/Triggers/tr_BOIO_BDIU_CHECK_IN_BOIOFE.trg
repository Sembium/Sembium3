create or replace trigger tr_BOIO_BDIU_CHECK_IN_BOIOFE
  before delete or insert or update on BOI_ORDERS
  for each row
begin

  if not StateUtils.InBoiofeUpdate then
    raise_application_error(-20000, 'Internal error: BOI_ORDERS should not be edited directly');
  end if;

end;
/
