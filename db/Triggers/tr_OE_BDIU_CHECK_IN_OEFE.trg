create or replace trigger tr_OE_BDIU_CHECK_IN_OEFE
  before delete or insert or update on OCCUPATION_EMPLOYEES
  for each row
begin

  if not StateUtils.InOefeUpdate then
    raise_application_error(-20000, 'Internal error: OCCUPATION_EMPLOYEES should not be edited directly');
  end if;

end tr_OE_BDIU_CHECK_IN_OEFE;
/
