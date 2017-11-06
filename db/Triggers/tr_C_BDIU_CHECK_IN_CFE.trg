create or replace trigger tr_C_BDIU_CHECK_IN_CFE
  before delete or insert or update on COMPANIES
  for each row
begin

  if not StateUtils.InCfeUpdate then
    raise_application_error(-20000, 'Internal error: COMPANIES should not be edited directly');
  end if;

end tr_C_BDIU_CHECK_IN_CFE;
/
