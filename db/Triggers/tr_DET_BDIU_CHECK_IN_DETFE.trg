create or replace trigger tr_DET_BDIU_CHECK_IN_DETFE
  before delete or insert or update on DISC_EVENT_TYPES
  for each row
begin

  if not StateUtils.InDetfeUpdate then
    raise_application_error(-20000, 'Internal error: DISC_EVENT_TYPES should not be edited directly');
  end if;

end tr_DET_BDIU_CHECK_IN_DETFE;
/
