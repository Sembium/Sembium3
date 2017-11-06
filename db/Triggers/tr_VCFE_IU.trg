create or replace trigger tr_VCFE_IU
  instead of update on VENDOR_COMPANIES_FOR_EDIT
  for each row
begin

  if not StateUtils.InVcfeUpdate then
    StateUtils.BeginVcfeUpdate;
    begin
    
      if (:new.VENDOR_COMPANY_CODE <> :old.VENDOR_COMPANY_CODE) then
        raise_application_error(-20000, 'Internal error: VENDOR_COMPANIES key should not be changed');
      end if;
      
      update
        VENDOR_COMPANIES vc
      set
        vc.PRIORITY_CODE = :new.PRIORITY_CODE,
        vc.COMMON_PARTNER_CODE = :new.COMMON_PARTNER_CODE
      where
        (vc.VENDOR_COMPANY_CODE = :old.VENDOR_COMPANY_CODE);

       
  
      -- trigger update of all fields
      update
        PAR_REL_PERIODS_FOR_EDIT prp
      set
        prp.CURRENCY_CODE = prp.CURRENCY_CODE
      where
        (prp.PARTNER_CODE = :new.VENDOR_COMPANY_CODE) and
        (prp.BORDER_REL_TYPE_CODE = CommonConsts.brtVendor);

    exception
      when others then
        StateUtils.EndVcfeUpdate;
        raise;
    end;
    StateUtils.EndVcfeUpdate;
  end if;

end tr_VCFE_IU;
/
