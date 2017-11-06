create or replace trigger tr_VP_BDIU_CHECK_IN_VPFE
  before delete or insert or update on VAT_PERIODS
  for each row
begin

  if not StateUtils.InVpfeUpdate then
    raise_application_error(-20000, 'Internal error: VAT_PERIODS should not be edited directly');
  end if;
 
end tr_VP_BDIU_CHECK_IN_VPFE;
/
