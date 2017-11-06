create or replace trigger tr_STRFE_ID
  instead of delete on SHIFT_TIMED_REGIMES_FOR_EDIT
  for each row
begin
  if (not StateUtils.InStrfeUpdate) then
    StateUtils.BeginStrfeUpdate;
    begin
      delete
        SHIFT_TIMED_REGIMES str
      where
        (str.SHIFT_TIMED_REGIME_CODE = :old.SHIFT_TIMED_REGIME_CODE);
    exception
      when others then
        StateUtils.EndStrfeUpdate;
        raise;
    end;
    StateUtils.EndStrfeUpdate;
  end if;
end;
/
