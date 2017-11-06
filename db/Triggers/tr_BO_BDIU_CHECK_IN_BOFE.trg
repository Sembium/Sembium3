create or replace trigger tr_BO_BDIU_CHECK_IN_BOFE
  before delete or insert or update on BUDGET_ORDERS
  for each row
begin

  if not StateUtils.InBofeUpdate then
    raise_application_error(-20000, 'Internal error: BUDGET_ORDERS should not be edited directly');
  end if;
    
end tr_BO_BDIU_CHECK_IN_BOFE;
/
