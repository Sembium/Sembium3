create or replace trigger tr_PPI_BIUD_CHECK_IN_PRODPERFE
  before insert or update or delete on PRODUCT_PERIOD_INVESTMENTS  
  for each row
begin
  
  if not StateUtils.InProdperfeUpdate then
    raise_application_error(-20000, 'Internal error: PRODUCT_PERIOD_INVESTMENTS should not be edited directly');
  end if;

end tr_PPI_BIUD_CHECK_IN_PRODPERFE;
/
