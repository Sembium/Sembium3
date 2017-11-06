create or replace trigger tr_EED_BDIU_CHECK_IN_EEDFE
  before delete or insert or update on EXCEPT_EVENT_DAMAGES
  for each row
begin

  if not StateUtils.InEedfeUpdate then
    raise_application_error(-20000, 'Internal error: EXCEPT_EVENT_DAMAGES should not be edited directly');
  end if;

end tr_EED_BDIU_CHECK_IN_EEDFE;
/
