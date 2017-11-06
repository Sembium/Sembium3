create or replace trigger tr_P_BDIU_CHECK_IN_PFE
  before delete or insert or update on PRODUCTS
  for each row
begin

  if not StateUtils.InPfeUpdate then
    raise_application_error(-20000, 'Internal error: PRODUCTS should not be edited directly');
  end if;

end tr_P_BDIU_CHECK_IN_PFE;
/
