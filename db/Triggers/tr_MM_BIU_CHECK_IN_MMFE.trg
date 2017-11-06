create or replace trigger tr_MM_BIU_CHECK_IN_MMFE
  before insert or update on MODEL_MOVEMENTS
  for each row
begin

  if not StateUtils.InMmfeUpdate then
    raise_application_error(-20000, 'Internal error: MODEL_MOVEMENTS should not be edited directly');
  end if;
    
end tr_MM_BIU_CHECK_IN_MMFE;
/
