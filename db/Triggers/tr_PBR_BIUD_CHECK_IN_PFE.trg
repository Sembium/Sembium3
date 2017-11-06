create or replace trigger tr_PBR_BIUD_CHECK_IN_PFE
  before insert or update or delete on PRODUCT_BORDER_RELS  
  for each row
begin
  
  if not StateUtils.InPfeUpdate then
    raise_application_error(-20000, 'Internal error: PRODUCT_BORDER_RELS should not be edited directly');
  end if;

end tr_PBR_BIUD_CHECK_IN_PFE;
/
