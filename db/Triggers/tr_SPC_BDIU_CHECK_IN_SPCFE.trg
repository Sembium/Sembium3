create or replace trigger tr_SPC_BDIU_CHECK_IN_SPCFE
  before delete or insert or update on SPECS
  for each row
begin

  if not StateUtils.InSpcfeUpdate then
    raise_application_error(-20000, 'Internal error: SPECS should not be edited directly');
  end if;

end tr_SPC_BDIU_CHECK_IN_SPCFE;
/
