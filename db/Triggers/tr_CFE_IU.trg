create or replace trigger tr_CFE_IU
  instead of update on COMPANIES_FOR_EDIT
  for each row
begin

  if not StateUtils.InCfeUpdate then
    StateUtils.BeginCfeUpdate;
    begin
    
      if (:new.COMPANY_CODE <> :old.COMPANY_CODE) then
        raise_application_error(-20000, 'Internal error: COMPANIES key should not be changed');
      end if;
      
      update
        COMPANIES c
      set
        c.ADDRESS = :new.ADDRESS,
        c.BIC = :new.BIC,
        c.BULSTAT = :new.BULSTAT,
        c.BULSTAT_EX = :new.BULSTAT_EX,
        c.CITY = :new.CITY,
        c.COMPANY_CLASS_CODE = :new.COMPANY_CLASS_CODE,
        c.COMPANY_NAME = :new.COMPANY_NAME,
        c.COMPANY_NO = :new.COMPANY_NO,
        c.COMPANY_TYPE_CODE = :new.COMPANY_TYPE_CODE,
        c.COUNTRY_CODE = :new.COUNTRY_CODE,
        c.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        c.DOC_CODE = :new.DOC_CODE,
        c.IS_EXTERNAL = :new.IS_EXTERNAL,
        c.LANGUAGE_CODE = :new.LANGUAGE_CODE,
        c.REGION = :new.REGION,
        c.SHORT_NAME = :new.SHORT_NAME,
        c.STATE = :new.STATE,
        c.TAX_NO = :new.TAX_NO,
        c.VAT_REGISTERED = :new.VAT_REGISTERED,
        c.ZIP = :new.ZIP,
        c.VAT_NO = :new.VAT_NO,
        c.I_COMPANY_NAME = :new.I_COMPANY_NAME,
        c.I_SHORT_NAME = :new.I_SHORT_NAME,
        c.I_STATE = :new.I_STATE,
        c.I_REGION = :new.I_REGION,
        c.I_CITY = :new.I_CITY,
        c.I_ADDRESS = :new.I_ADDRESS,
        c.I_COMPANY_TYPE_CODE = :new.I_COMPANY_TYPE_CODE
      where
        (c.COMPANY_CODE = :old.COMPANY_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) and
         ( (:old.DOC_BRANCH_CODE <> Coalesce(:new.DOC_BRANCH_CODE, 0)) or
           (:old.DOC_CODE <> Coalesce(:new.DOC_CODE, 0)) ) then
         
         delete
           DOCS_FOR_EDIT dfe
         where
           (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
           (dfe.DOC_CODE = :old.DOC_CODE);
         
      end if;
    
    exception
      when others then
        StateUtils.EndCfeUpdate;
        raise;
    end;
    StateUtils.EndCfeUpdate;
  end if;

end tr_CFE_IU;
/
