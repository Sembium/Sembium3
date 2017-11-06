create or replace trigger tr_OSFE_ID
  instead of delete on OCCUPATION_SHIFTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InOsfeUpdate then
    StateUtils.BeginOsfeUpdate;
    begin
    
      delete
        OCCUPATION_SHIFTS os
      where
        (os.OCCUPATION_SHIFT_CODE = :old.OCCUPATION_SHIFT_CODE);

    exception
      when others then
        StateUtils.EndOsfeUpdate;
        raise;
    end;
    StateUtils.EndOsfeUpdate;
  end if;
    
end tr_OSFE_ID;
/
