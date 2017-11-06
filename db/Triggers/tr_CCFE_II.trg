create or replace trigger tr_CCFE_II
  instead of insert on CLIENT_COMPANIES_FOR_EDIT
  for each row
begin

  if not StateUtils.InCcfeUpdate then
    StateUtils.BeginCcfeUpdate;
    begin
    
      insert into CLIENT_COMPANIES
      (
        CLIENT_COMPANY_CODE, 
        PRIORITY_CODE, 
        COMMON_PARTNER_CODE
      )
      values
      (
        :new.CLIENT_COMPANY_CODE, 
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
          (prp.PARTNER_CODE = :new.CLIENT_COMPANY_CODE) and
          (prp.BORDER_REL_TYPE_CODE = CommonConsts.brtClient);      
      end if;
      
    exception
      when others then
        StateUtils.EndCcfeUpdate;
        raise;
    end;
    StateUtils.EndCcfeUpdate;
  end if;

end tr_CCFE_II;
/
