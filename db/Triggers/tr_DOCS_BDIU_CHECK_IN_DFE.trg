create or replace trigger tr_DOCS_BDIU_CHECK_IN_DFE
  before delete or insert or update on DOCS
  for each row
begin

  if not StateUtils.InDfeUpdate then
    raise_application_error(-20000, 'Internal error: DOCS should not be edited directly');
  end if;

end tr_DOCS_BDIU_CHECK_IN_DFE;
/
