create or replace trigger tr_OM_BDIU_CHECK_IN_OMFE
  before delete or insert or update on OPERATION_MOVEMENTS
  for each row
begin

  if not StateUtils.InOmfeUpdate then
    raise_application_error(-20000, 'Internal error: OPERATION_MOVEMENTS should not be edited directly');
  end if;
    
end tr_OM_BDIU_CHECK_IN_OMFE;
/
