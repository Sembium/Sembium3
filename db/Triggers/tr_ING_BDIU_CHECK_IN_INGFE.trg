create or replace trigger tr_ING_BDIU_CHECK_IN_INGFE
  before delete or insert or update on INVOICE_NO_GENERATORS
  for each row
begin

  if not StateUtils.InIngfeUpdate then
    raise_application_error(-20000, 'Internal error: INVOICE_NO_GENERATORS should not be edited directly');
  end if;

end;
/
