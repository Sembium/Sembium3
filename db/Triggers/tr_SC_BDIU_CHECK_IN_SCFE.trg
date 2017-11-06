create or replace trigger tr_SC_BDIU_CHECK_IN_SCFE
  before insert or update or delete on SHIFT_CYCLES
  for each row
begin
  if (not StateUtils.InScfeUpdate) then
    raise_application_error(-20000, 'Internal error: SHIFT_CYCLES should not be edited directly');
  end if;
end;
/
