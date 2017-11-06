create or replace trigger tr_PPER_BDIU_CHECK_IN_PPERFE
  before delete or insert or update on PROFESSION_PERIODS
  for each row
begin

  if not StateUtils.InPperfeUpdate then
    raise_application_error(-20000, 'Internal error: PROFESSION_PERIODS should not be edited directly');
  end if;

end tr_PPER_BDIU_CHECK_IN_PPERFE;
/
