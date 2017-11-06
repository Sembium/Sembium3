create or replace trigger tr_E_BDIU_CHECK_IN_EFE
  before delete or insert or update on EMPLOYEES
  for each row
begin

  if not StateUtils.InEfeUpdate then
    raise_application_error(-20000, 'Internal error: EMPLOYEES should not be edited directly');
  end if;

end tr_E_BDIU_CHECK_IN_EFE;
/
