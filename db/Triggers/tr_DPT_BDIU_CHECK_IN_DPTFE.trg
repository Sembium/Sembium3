create or replace trigger tr_DPT_BDIU_CHECK_IN_DPTFE
  before delete or insert or update on DEPTS
  for each row
begin

  if not StateUtils.InDptfeUpdate then
    raise_application_error(-20000, 'Internal error: DEPTS should not be edited directly');
  end if;

end tr_DPT_BDIU_CHECK_IN_DPTFE;
/
