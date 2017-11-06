create or replace trigger tr_PPERFE_ID
  instead of delete on PROFESSION_PERIODS_FOR_EDIT  
  for each row
begin

  if not StateUtils.InPperfeUpdate then
    StateUtils.BeginPperfeUpdate;
    begin
    
      delete
        PROFESSION_PERIODS pper
      where
        (pper.PROFESSION_PERIOD_CODE = :old.PROFESSION_PERIOD_CODE);
        
    exception
      when others then
        StateUtils.EndPperfeUpdate;
        raise;
    end;
    StateUtils.EndPperfeUpdate;
  end if;
  
end tr_PPERFE_ID;
/
