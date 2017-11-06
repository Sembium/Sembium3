create or replace trigger tr_OS_BIUD_CHECK_IN_OSFE
  before insert or update or delete on OCCUPATION_SHIFTS  
  for each row
begin
  
  if not StateUtils.InOsfeUpdate then
    raise_application_error(-20000, 'Internal error: OCCUPATION_SHIFTS should not be edited directly');
  end if;
  
end tr_OS_BIUD_CHECK_IN_OSFE;
/
