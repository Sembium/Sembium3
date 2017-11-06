create or replace trigger tr_DI_BDIU_CHECK_IN_DIFE
  before delete or insert or update on DOC_ITEMS
  for each row
begin

  if not StateUtils.InDifeUpdate then
    raise_application_error(-20000, 'Internal error: DOC_ITEMS should not be edited directly');
  end if;

end tr_DI_BDIU_CHECK_IN_DIFE;
/
