create or replace trigger tr_VCFE_ID
  instead of delete on VENDOR_COMPANIES_FOR_EDIT  
  for each row
begin

  if not StateUtils.InVcfeUpdate then
    StateUtils.BeginVcfeUpdate;
    begin
    
      delete
        VENDOR_COMPANIES vc
      where
        (vc.VENDOR_COMPANY_CODE = :old.VENDOR_COMPANY_CODE);
      
    exception
      when others then
        StateUtils.EndVcfeUpdate;
        raise;
    end;
    StateUtils.EndVcfeUpdate;
  end if;
  
end tr_VCFE_ID;
/
