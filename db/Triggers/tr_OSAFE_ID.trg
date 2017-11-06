create or replace trigger tr_OSAFE_ID
  instead of delete on OCCUPATION_SALARIES_FOR_EDIT
  for each row
begin

  if not StateUtils.InOsafeUpdate then
    StateUtils.BeginOsafeUpdate;
    begin
    
      delete
        OCCUPATION_SALARIES os
      where
        (os.OCCUPATION_SALARY_CODE = :old.OCCUPATION_SALARY_CODE);

    exception
      when others then
        StateUtils.EndOsafeUpdate;
        raise;
    end;
    StateUtils.EndOsafeUpdate;
  end if;
    
end tr_OSAFE_ID;
/
