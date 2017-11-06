create or replace trigger tr_MMFE_ID
  instead of delete on MODEL_MOVEMENTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InMmfeUpdate then
    StateUtils.BeginMmfeUpdate;
    begin
    
      delete
        MODEL_MOVEMENTS mm
      where
        (mm.MM_BRANCH_CODE = :old.MM_BRANCH_CODE) and
        (mm.MM_CODE = :old.MM_CODE);

    exception
      when others then
        StateUtils.EndMmfeUpdate;
        raise;
    end;
    StateUtils.EndMmfeUpdate;
  end if;
    
end tr_MMFE_ID;
/
