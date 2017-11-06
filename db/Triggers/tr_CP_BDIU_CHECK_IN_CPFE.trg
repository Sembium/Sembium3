create or replace trigger tr_CP_BDIU_CHECK_IN_CPFE
  before delete or insert or update on COMPANY_PRODUCTS
  for each row
begin

  if not StateUtils.InCpfeUpdate then
    raise_application_error(-20000, 'Internal error: COMPANY_PRODUCTS should not be edited directly');
  end if;

end tr_CP_BDIU_CHECK_IN_CPFE;
/
