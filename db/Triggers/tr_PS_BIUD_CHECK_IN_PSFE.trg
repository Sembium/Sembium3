create or replace trigger tr_PS_BIUD_CHECK_IN_PSFE
  before insert or update or delete on PRODUCT_STORES  
  for each row
begin
  
  if not StateUtils.InPsfeUpdate then
    raise_application_error(-20000, 'Internal error: PRODUCT_STORES should not be edited directly');
  end if;
  
end tr_PS_BIUD_CHECK_IN_PSFE;
/
