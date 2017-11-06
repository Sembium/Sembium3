create or replace trigger tr_PRODPER_BDIU_IN_PRODPERFE
  before delete or insert or update on PRODUCT_PERIODS
  for each row
begin

  if not StateUtils.InProdperfeUpdate then
    raise_application_error(-20000, 'Internal error: PRODUCT_PERIODS should not be edited directly');
  end if;

end tr_PRODPER_BDIU_IN_PRODPERFE;
/
