create or replace trigger tr_CFE_II
  instead of insert on COMPANIES_FOR_EDIT
  for each row
begin

  if not StateUtils.InCfeUpdate then
    StateUtils.BeginCfeUpdate;
    begin
    
      insert into COMPANIES
      (
        ADDRESS,
        BIC,
        BULSTAT,
        BULSTAT_EX,
        CITY,
        COMPANY_CLASS_CODE,
        COMPANY_CODE,
        COMPANY_NAME,
        COMPANY_NO,
        COMPANY_TYPE_CODE,
        COUNTRY_CODE,
        DOC_BRANCH_CODE,
        DOC_CODE,
        IS_EXTERNAL,
        LANGUAGE_CODE,
        REGION,
        SHORT_NAME,
        STATE,
        TAX_NO,
        VAT_REGISTERED,
        ZIP,
        VAT_NO,
        I_COMPANY_NAME,
        I_SHORT_NAME,
        I_STATE,
        I_REGION,
        I_CITY,
        I_ADDRESS,
        I_COMPANY_TYPE_CODE
      )
      values
      (
        :new.ADDRESS,
        :new.BIC,
        :new.BULSTAT,
        :new.BULSTAT_EX,
        :new.CITY,
        :new.COMPANY_CLASS_CODE,
        :new.COMPANY_CODE,
        :new.COMPANY_NAME,
        :new.COMPANY_NO,
        :new.COMPANY_TYPE_CODE,
        :new.COUNTRY_CODE,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.IS_EXTERNAL,
        :new.LANGUAGE_CODE,
        :new.REGION,
        :new.SHORT_NAME,
        :new.STATE,
        :new.TAX_NO,
        :new.VAT_REGISTERED,
        :new.ZIP,
        :new.VAT_NO,
        :new.I_COMPANY_NAME,
        :new.I_SHORT_NAME,
        :new.I_STATE,
        :new.I_REGION,
        :new.I_CITY,
        :new.I_ADDRESS,
        :new.I_COMPANY_TYPE_CODE
      );
    
    exception
      when others then
        StateUtils.EndCfeUpdate;
        raise;
    end;
    StateUtils.EndCfeUpdate;
  end if;

end tr_CFE_II;
/
