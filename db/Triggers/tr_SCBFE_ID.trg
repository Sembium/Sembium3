create or replace trigger tr_SCBFE_ID
  instead of delete on SHIFT_CYCLE_BREAKS_FOR_EDIT
  for each row
begin
  if (not StateUtils.InScbfeUpdate) then
    StateUtils.BeginScbfeUpdate;
    begin
    
      delete
        SHIFT_CYCLE_BREAKS
      where
        (SHIFT_CYCLE_BREAK_CODE = :old.SHIFT_CYCLE_BREAK_CODE);
        
    exception
      when others then
        StateUtils.EndScbfeUpdate;
        raise;
    end;
    StateUtils.EndScbfeUpdate;
  end if;
end;
/
