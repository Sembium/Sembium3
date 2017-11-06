create or replace trigger tr_NP_BIUD_CHECK_IN_PFE
  before insert or update or delete on NORMAL_PRODUCTS  
  for each row
begin
  
  if not StateUtils.InPfeUpdate then
    raise_application_error(-20000, 'Internal error: NORMAL_PRODUCTS should not be edited directly');
  end if;
  
end tr_NP_BIUD_CHECK_IN_PFE;
/
