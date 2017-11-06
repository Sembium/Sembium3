create or replace trigger tr_DPR_BDIU_CHECK_IN_DPRFE
  before delete or insert or update on DELIVERY_PROJECTS
  for each row
begin

  if not StateUtils.InDprfeUpdate then
    raise_application_error(-20000, 'Internal error: DELIVERY_PROJECTS should not be edited directly');
  end if;

end tr_DPR_BDIU_CHECK_IN_DPRFE;
/
