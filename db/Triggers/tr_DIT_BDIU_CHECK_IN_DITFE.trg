create or replace trigger tr_DIT_BDIU_CHECK_IN_DITFE
  before delete or insert or update on DOC_ITEM_TEMPLATES
  for each row
begin

  if not StateUtils.InDitfeUpdate then
    raise_application_error(-20000, 'Internal error: DOC_ITEM_TEMPLATES should not be edited directly');
  end if;

end tr_DIT_BDIU_CHECK_IN_DITFE;
/
