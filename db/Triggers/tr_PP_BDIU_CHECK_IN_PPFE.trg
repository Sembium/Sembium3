create or replace trigger tr_PP_BDIU_CHECK_IN_PPFE
  before delete or insert or update on PRODUCT_PARAMS
  for each row
begin

  if not StateUtils.InPpfeUpdate then
    raise_application_error(-20000, 'Internal error: PRODUCT_PARAMS should not be edited directly');
  end if;

end;
/
