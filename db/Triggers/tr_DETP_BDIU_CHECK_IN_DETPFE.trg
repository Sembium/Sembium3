create or replace trigger tr_DETP_BDIU_CHECK_IN_DETPFE
  before delete or insert or update on DISC_EVENT_TYPE_PERIODS
  for each row
begin

  if not StateUtils.InDetpfeUpdate then
    raise_application_error(-20000, 'Internal error: DISC_EVENT_TYPE_PERIODS should not be edited directly');
  end if;

end tr_DETP_BDIU_CHECK_IN_DETPFE;
/
