create or replace trigger tr_STR_BDIU_CHECK_IN_STRFE
  before insert or update or delete on SHIFT_TIMED_REGIMES
  for each row
begin
  if (not StateUtils.InStrfeUpdate) then
    raise_application_error(-20000, 'Internal error: SHIFT_TIMED_REGIMES should not be edited directly');
  end if;
end;
/
