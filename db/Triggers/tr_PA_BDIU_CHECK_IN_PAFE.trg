create or replace trigger tr_PA_BDIU_CHECK_IN_PAFE
  before delete or insert or update on PRC_ACTIONS
  for each row
begin

  if not StateUtils.InPafeUpdate then
    raise_application_error(-20000, 'Internal error: PRC_ACTIONS should not be edited directly');
  end if;
  
end tr_PA_BDIU_CHECK_IN_PAFE;
/