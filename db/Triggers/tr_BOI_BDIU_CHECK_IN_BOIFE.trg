create or replace trigger tr_BOI_BDIU_CHECK_IN_BOIFE
  before delete or insert or update on BUDGET_ORDER_ITEMS
  for each row
begin

  if not StateUtils.InBoifeUpdate then
    raise_application_error(-20000, 'Internal error: BUDGET_ORDER_ITEMS should not be edited directly');
  end if;
    
end tr_BOI_BDIU_CHECK_IN_BOIFE;
/
