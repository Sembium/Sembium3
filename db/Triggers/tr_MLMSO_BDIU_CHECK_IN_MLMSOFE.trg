create or replace trigger tr_MLMSO_BDIU_CHECK_IN_MLMSOFE
  before delete or insert or update on MLMS_OPERATIONS
  for each row
begin

  if (not StateUtils.InMlmsofeUpdate) then
    raise_application_error(-20000, 'Internal error: MLMS_OPERATIONS should not be edited directly');
  end if;
    
end tr_MLMSO_BDIU_CHECK_IN_MLMSOFE;
/
