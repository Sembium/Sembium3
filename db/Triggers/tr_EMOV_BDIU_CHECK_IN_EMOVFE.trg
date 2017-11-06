create or replace trigger tr_EMOV_BDIU_CHECK_IN_EMOVFE
  before delete or insert or update on EMP_MOVEMENTS
  for each row
begin

  if not StateUtils.InEmovfeUpdate then
    raise_application_error(-20000, 'Internal error: EMP_MOVEMENTS should not be edited directly');
  end if;

end tr_EMOV_BDIU_CHECK_IN_EMOVFE;
/
