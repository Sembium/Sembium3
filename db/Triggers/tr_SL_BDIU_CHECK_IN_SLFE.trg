create or replace trigger tr_SL_BDIU_CHECK_IN_SLFE
  before delete or insert or update on SPEC_LINES
  for each row
begin

  if not StateUtils.InSlfeUpdate then
    raise_application_error(-20000, 'Internal error: SPEC_LINES should not be edited directly');
  end if;

end tr_SL_BDIU_CHECK_IN_SLFE;
/
