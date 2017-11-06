create or replace trigger tr_SG_BDIU_CHECK_IN_SGFE
  before delete or insert or update on SALE_GROUPS
  for each row
begin

  if not StateUtils.InSgfeUpdate then
    raise_application_error(-20000, 'Internal error: SALE_GROUPS should not be edited directly');
  end if;

end tr_SG_BDIU_CHECK_IN_SGFE;
/
