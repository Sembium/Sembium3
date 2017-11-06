create or replace trigger tr_VCFE_II
  instead of insert on VENDOR_COMPANIES_FOR_EDIT
  for each row
begin

  if not StateUtils.InVcfeUpdate then
    StateUtils.BeginVcfeUpdate;
    begin
    
      insert into VENDOR_COMPANIES
      (
        VENDOR_COMPANY_CODE, 
        PRIORITY_CODE, 
        COMMON_PARTNER_CODE
      )
      values
      (
        :new.VENDOR_COMPANY_CODE, 
        :new.PRIORITY_CODE, 
        :new.COMMON_PARTNER_CODE
      );
    
      -- update inherited data
      if (:new.COMMON_PARTNER_CODE is not null) then      
        update
          PAR_REL_PERIODS_FOR_EDIT prp
        set
          prp.CURRENCY_CODE = prp.CURRENCY_CODE
        where
          (prp.PARTNER_CODE = :new.VENDOR_COMPANY_CODE) and
          (prp.BORDER_REL_TYPE_CODE = CommonConsts.brtVendor);      
      end if;
    
    exception
      when others then
        StateUtils.EndVcfeUpdate;
        raise;
    end;
    StateUtils.EndVcfeUpdate;
  end if;

end tr_VCFE_II;
/
