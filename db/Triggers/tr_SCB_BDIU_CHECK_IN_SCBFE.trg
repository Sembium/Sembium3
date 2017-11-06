create or replace trigger tr_SCB_BDIU_CHECK_IN_SCBFE
  before insert or update or delete on SHIFT_CYCLE_BREAKS
  for each row
begin
  if (not StateUtils.InScbfeUpdate) then
    raise_application_error(-20000, 'Internal error: SHIFT_CYCLE_BREAKS should not be edited directly');
  end if;
end;
/
