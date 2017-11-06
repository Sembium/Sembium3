create or replace trigger tr_NFP_BIUD_CHECK_IN_PFE
  before insert or update or delete on NORMAL_OR_FINANCIAL_PRODUCTS  
  for each row
begin
  
  if not StateUtils.InPfeUpdate then
    raise_application_error(-20000, 'Internal error: NORMAL_OR_FINANCIAL_PRODUCTS should not be edited directly');
  end if;
  
end tr_NFP_BIUD_CHECK_IN_PFE;
/
