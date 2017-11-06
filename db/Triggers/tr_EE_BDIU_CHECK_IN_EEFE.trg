create or replace trigger tr_EE_BDIU_CHECK_IN_EEFE
  before delete or insert or update on EXCEPT_EVENTS
  for each row
begin

  if not StateUtils.InEefeUpdate then
    raise_application_error(-20000, 'Internal error: EXCEPT_EVENTS should not be edited directly');
  end if;

end tr_EE_BDIU_CHECK_IN_EEFE;
/
