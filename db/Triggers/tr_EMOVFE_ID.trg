create or replace trigger tr_EMOVFE_ID
  instead of delete on EMP_MOVEMENTS_FOR_EDIT  
  for each row
begin

  if not StateUtils.InEmovfeUpdate then
    StateUtils.BeginEmovfeUpdate;
    begin
    
      delete
        EMP_MOVEMENTS em
      where
        (em.EMP_MOVEMENT_CODE = :old.EMP_MOVEMENT_CODE);
        
    exception
      when others then
        StateUtils.EndEmovfeUpdate;
        raise;
    end;
    StateUtils.EndEmovfeUpdate;
  end if;
  
end tr_EMOVFE_ID;
/
