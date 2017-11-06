create or replace trigger tr_SC_BIU_SCC_WHEN_NO_SHIFT
  before insert or update on SHIFT_CYCLES  
  for each row
begin

  if (:new.SHIFT_CODE is null) then
    :new.SHIFT_CYCLE_CODE_WHEN_NO_SHIFT:= :new.SHIFT_CYCLE_CODE;
  else
    :new.SHIFT_CYCLE_CODE_WHEN_NO_SHIFT:= null;
  end if;
  
end tr_SC_BIU_SCC_WHEN_NO_SHIFT;
/
