create or replace trigger tr_EMFE_ID
  instead of delete on EARNING_MODIFIERS_FOR_EDIT
  for each row
begin

  if not StateUtils.InEmfeUpdate then
    StateUtils.BeginEmfeUpdate;
    begin
    
      delete
        EARNING_MODIFIERS em
      where
        (em.EARNING_MODIFIER_CODE = :old.EARNING_MODIFIER_CODE);

    exception
      when others then
        StateUtils.EndEmfeUpdate;
        raise;
    end;
    StateUtils.EndEmfeUpdate;
  end if;
    
end tr_EMFE_ID;
/
