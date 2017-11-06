create or replace trigger tr_BP_BIUD_CHECK_IN_PFE
  before insert or update or delete on BUDGET_PRODUCTS  
  for each row
begin
  
  if not StateUtils.InPfeUpdate then
    raise_application_error(-20000, 'Internal error: BUDGET_PRODUCTS should not be edited directly');
  end if;
  
end tr_BP_BIUD_CHECK_IN_PFE;
/
