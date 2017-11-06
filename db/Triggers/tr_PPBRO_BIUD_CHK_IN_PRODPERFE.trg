create or replace trigger tr_PPBRO_BIUD_CHK_IN_PRODPERFE
  before insert or update or delete on PRODUCT_PERIOD_BORDER_REL_OBTS  
  for each row
begin
  
  if not StateUtils.InProdperfeUpdate then
    raise_application_error(-20000, 'Internal error: PRODUCT_PERIOD_BORDER_REL_OBTS should not be edited directly');
  end if;

end tr_PPBRO_BIUD_CHK_IN_PRODPERFE;
/
