create or replace trigger tr_EET_BDIU_CHECK_IN_EETFE
  before delete or insert or update on EXCEPT_EVENT_TASKS
  for each row
begin

  if not StateUtils.InEetfeUpdate then
    raise_application_error(-20000, 'Internal error: EXCEPT_EVENT_TASKS should not be edited directly');
  end if;

end tr_EET_BDIU_CHECK_IN_EETFE;
/
