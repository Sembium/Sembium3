create or replace trigger tr_OSA_BIUD_CHECK_IN_OSAFE
  before insert or update or delete on OCCUPATION_SALARIES  
  for each row
begin
  
  if not StateUtils.InOsafeUpdate then
    raise_application_error(-20000, 'Internal error: OCCUPATION_SALARIES should not be edited directly');
  end if;
  
end tr_OSA_BIUD_CHECK_IN_OSAFE;
/
