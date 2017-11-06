create or replace trigger tr_INVOICES_BDIU_CHECK_IN_IFE
  before delete or insert or update on INVOICES
  for each row
begin

  if not StateUtils.InIfeUpdate then
    raise_application_error(-20000, 'Internal error: INVOICES should not be edited directly');
  end if;

end;
/
