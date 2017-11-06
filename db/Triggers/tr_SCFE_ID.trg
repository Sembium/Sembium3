create or replace trigger tr_SCFE_ID
  instead of delete on SHIFT_CYCLES_FOR_EDIT
  for each row
begin
  if (not StateUtils.InScfeUpdate) then
    StateUtils.BeginScfeUpdate;
    begin
    
      ShiftUtils.DeleteDateShiftCyclesFor(:old.SHIFT_TIMED_REGIME_CODE); 

      delete
        SHIFT_CYCLE_BREAKS_FOR_EDIT
      where
        (SHIFT_CYCLE_CODE = :old.SHIFT_CYCLE_CODE);
        
      delete
        SHIFT_CYCLES
      where
        (SHIFT_CYCLE_CODE = :old.SHIFT_CYCLE_CODE);
        
      ShiftUtils.InsertDateShiftCyclesFor(:old.SHIFT_TIMED_REGIME_CODE); 

    exception
      when others then
        StateUtils.EndScfeUpdate;
        raise;
    end;
    StateUtils.EndScfeUpdate;
  end if;
end;
/
