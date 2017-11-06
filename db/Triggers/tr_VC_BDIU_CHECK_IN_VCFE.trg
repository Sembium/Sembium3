create or replace trigger tr_VC_BDIU_CHECK_IN_VCFE
  before delete or insert or update on VENDOR_COMPANIES
  for each row
begin

  if not StateUtils.InVcfeUpdate then
    raise_application_error(-20000, 'Internal error: VENDOR_COMPANIES should not be edited directly');
  end if;

end tr_VC_BDIU_CHECK_IN_VCFE;
/
