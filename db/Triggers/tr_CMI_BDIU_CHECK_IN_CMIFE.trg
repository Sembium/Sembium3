create or replace trigger tr_CMI_BDIU_CHECK_IN_CMIFE
  before delete or insert or update on CUSTOM_MENU_ITEMS
  for each row
begin

  if not StateUtils.InCmifeUpdate then
    raise_application_error(-20000, 'Internal error: CUSTOM_MENU_ITEMS should not be edited directly');
  end if;

end tr_CMI_BDIU_CHECK_IN_CMIFE;
/
