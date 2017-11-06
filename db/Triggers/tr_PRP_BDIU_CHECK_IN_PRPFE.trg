create or replace trigger tr_PRP_BDIU_CHECK_IN_PRPFE
  before delete or insert or update on PAR_REL_PRODUCTS
  for each row
begin

  if not StateUtils.InPrpfeUpdate then
    raise_application_error(-20000, 'Internal error: PAR_REL_PRODUCTS should not be edited directly');
  end if;

end tr_PRP_BDIU_CHECK_IN_PRPFE;
/
