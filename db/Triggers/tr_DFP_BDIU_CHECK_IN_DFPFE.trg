create or replace trigger tr_DFP_BDIU_CHECK_IN_DFPFE
  before delete or insert or update on DEFINITE_PRODUCTS
  for each row
begin

  if not StateUtils.InDfpfeUpdate then
    raise_application_error(-20000, 'Internal error: DEFINITE_PRODUCTS should not be edited directly');
  end if;
    
end tr_DFP_BDIU_CHECK_IN_DFPFE;
/
