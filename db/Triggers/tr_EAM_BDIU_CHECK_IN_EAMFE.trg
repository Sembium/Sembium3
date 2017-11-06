create or replace trigger tr_EAM_BDIU_CHECK_IN_EAMFE
  before delete or insert or update on EMP_AVAIL_MODIFIERS
  for each row
begin

  if not StateUtils.InEamfeUpdate then
    raise_application_error(-20000, 'Internal error: EMP_AVAIL_MODIFIERS should not be edited directly');
  end if;

end tr_EAM_BDIU_CHECK_IN_EAMFE;
/
