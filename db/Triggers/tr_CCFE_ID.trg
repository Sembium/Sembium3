create or replace trigger tr_CCFE_ID
  instead of delete on CLIENT_COMPANIES_FOR_EDIT  
  for each row
begin

  if not StateUtils.InCcfeUpdate then
    StateUtils.BeginCcfeUpdate;
    begin
    
      delete
        CLIENT_COMPANIES cc
      where
        (cc.CLIENT_COMPANY_CODE = :old.CLIENT_COMPANY_CODE);
      
    exception
      when others then
        StateUtils.EndCcfeUpdate;
        raise;
    end;
    StateUtils.EndCcfeUpdate;
  end if;
  
end tr_CCFE_ID;
/
