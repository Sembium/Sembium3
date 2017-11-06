create or replace trigger tr_PR_BDIU_CHECK_IN_PRFE
  before delete or insert or update on PROFESSIONS
  for each row
begin

  if not StateUtils.InPrfeUpdate then
    raise_application_error(-20000, 'Internal error: PROFESSIONS should not be edited directly');
  end if;

end tr_PR_BDIU_CHECK_IN_PRFE;
/
