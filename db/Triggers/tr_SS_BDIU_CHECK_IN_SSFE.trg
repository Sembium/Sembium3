create or replace trigger tr_SS_BDIU_CHECK_IN_SSFE
  before delete or insert or update on SALE_SHIPMENTS
  for each row
begin

  if not StateUtils.InSsfeUpdate then
    raise_application_error(-20000, 'Internal error: SALE_SHIPMENTS should not be edited directly');
  end if;

end tr_SS_BDIU_CHECK_IN_SSFE;
/
