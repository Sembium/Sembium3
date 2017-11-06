create or replace trigger tr_CC_BDIU_CHECK_IN_CCFE
  before delete or insert or update on CLIENT_COMPANIES
  for each row
begin

  if not StateUtils.InCcfeUpdate then
    raise_application_error(-20000, 'Internal error: CLIENT_COMPANIES should not be edited directly');
  end if;

end tr_CC_BDIU_CHECK_IN_CCFE;
/
