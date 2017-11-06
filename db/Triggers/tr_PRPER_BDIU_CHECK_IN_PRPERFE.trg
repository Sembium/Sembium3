create or replace trigger tr_PRPER_BDIU_CHECK_IN_PRPERFE
  before delete or insert or update on PAR_REL_PERIODS
  for each row
begin

  if not StateUtils.InPrperfeUpdate then
    raise_application_error(-20000, 'Internal error: PAR_REL_PERIODS should not be edited directly');
  end if;

end tr_PRPER_BDIU_CHECK_IN_PRPERFE;
/
