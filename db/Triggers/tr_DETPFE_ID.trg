create or replace trigger tr_DETPFE_ID
  instead of delete on DISC_EVENT_TYPE_PER_FOR_EDIT
  for each row
begin

  if not StateUtils.InDetpfeUpdate then
    StateUtils.BeginDetpfeUpdate;
    begin
    
      delete
        DISC_EVENT_TYPE_PERIODS detp
      where
        (detp.DISC_EVENT_TYPE_PERIOD_CODE = :old.DISC_EVENT_TYPE_PERIOD_CODE);
        
    exception
      when others then
        StateUtils.EndDetpfeUpdate;
        raise;
    end;
    StateUtils.EndDetpfeUpdate;
  end if;
  
end tr_DETPFE_ID;
/
