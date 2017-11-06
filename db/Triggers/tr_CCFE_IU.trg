create or replace trigger tr_CCFE_IU
  instead of update on CLIENT_COMPANIES_FOR_EDIT
  for each row
begin

  if not StateUtils.InCcfeUpdate then
    StateUtils.BeginCcfeUpdate;
    begin
    
      if (:new.CLIENT_COMPANY_CODE <> :old.CLIENT_COMPANY_CODE) then
        raise_application_error(-20000, 'Internal error: CLIENT_COMPANIES key should not be changed');
      end if;
      
      update
        CLIENT_COMPANIES cc
      set
        cc.PRIORITY_CODE = :new.PRIORITY_CODE,
        cc.COMMON_PARTNER_CODE = :new.COMMON_PARTNER_CODE
      where
        (cc.CLIENT_COMPANY_CODE = :old.CLIENT_COMPANY_CODE);

          
      -- trigger update of all fields
      update
        PAR_REL_PERIODS_FOR_EDIT prp
      set
        prp.CURRENCY_CODE = prp.CURRENCY_CODE
      where
        (prp.PARTNER_CODE = :new.CLIENT_COMPANY_CODE) and
        (prp.BORDER_REL_TYPE_CODE = CommonConsts.brtClient);

    exception
      when others then
        StateUtils.EndCcfeUpdate;
        raise;
    end;
    StateUtils.EndCcfeUpdate;
  end if;

end tr_CCFE_IU;
/
