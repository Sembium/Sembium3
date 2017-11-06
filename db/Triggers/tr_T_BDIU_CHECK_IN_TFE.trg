create or replace trigger tr_T_BDIU_CHECK_IN_TFE
  before delete or insert or update on TEAMS
  for each row
begin

  if not StateUtils.InTfeUpdate then
    raise_application_error(-20000, 'Internal error: TEAMS should not be edited directly');
  end if;

end tr_T_BDIU_CHECK_IN_TFE;
/
