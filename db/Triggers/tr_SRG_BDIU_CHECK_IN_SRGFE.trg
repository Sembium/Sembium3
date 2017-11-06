create or replace trigger tr_SRG_BDIU_CHECK_IN_SRGFE
  before delete or insert or update on SALE_REQUEST_GROUPS
  for each row
begin

  if not StateUtils.InSrgfeUpdate then
    raise_application_error(-20000, 'Internal error: SALE_REQUEST_GROUPS should not be edited directly');
  end if;

end tr_SRG_BDIU_CHECK_IN_SRGFE;
/
