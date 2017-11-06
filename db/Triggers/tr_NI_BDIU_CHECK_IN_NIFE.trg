create or replace trigger tr_NI_BDIU_CHECK_IN_NIFE
  before delete or insert or update on NOM_ITEMS
  for each row
begin

  if not StateUtils.InNifeUpdate then
    raise_application_error(-20000, 'Internal error: NOM_ITEMS should not be edited directly');
  end if;

end tr_NI_BDIU_CHECK_IN_NIFE;
/
