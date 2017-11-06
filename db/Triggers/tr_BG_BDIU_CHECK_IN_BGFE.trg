create or replace trigger tr_BG_BDIU_CHECK_IN_BGFE
  before delete or insert or update on BASE_GROUPS
  for each row
begin

  if not StateUtils.InBgfeUpdate then
    raise_application_error(-20000, 'Internal error: BASE_GROUPS should not be edited directly');
  end if;

end tr_BG_BDIU_CHECK_IN_BGFE;
/
