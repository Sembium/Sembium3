create or replace trigger tr_EM_BDIU_CHECK_IN_EMFE
  before delete or insert or update on EARNING_MODIFIERS
  for each row
begin

  if not StateUtils.InEmfeUpdate then
    raise_application_error(-20000, 'Internal error: EARNING_MODIFIERS should not be edited directly');
  end if;
    
end tr_EM_BDIU_CHECK_IN_EMFE;
/
