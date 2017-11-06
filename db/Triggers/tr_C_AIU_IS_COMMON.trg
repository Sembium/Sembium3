create or replace trigger tr_C_AIU_IS_COMMON
  after insert or update on COMPANIES
  for each row
begin

  if updating and 
     (:old.COMPANY_CLASS_CODE <> :new.COMPANY_CLASS_CODE) then
     
    if (:old.COMPANY_CLASS_CODE = CommonConsts.ccCommon) then
      delete
        COMMON_PARTNERS cp
      where
        (cp.PARTNER_CODE = :new.COMPANY_CODE);
    else
      delete
        CONCRETE_PARTNERS cp
      where
        (cp.PARTNER_CODE = :new.COMPANY_CODE);
    end if;
        
  end if;
  
  if inserting or
     (:old.COMPANY_CLASS_CODE <> :new.COMPANY_CLASS_CODE) then

    if (:new.COMPANY_CLASS_CODE = CommonConsts.ccCommon) then
      insert into COMMON_PARTNERS
        (PARTNER_CODE)
      values
        (:new.COMPANY_CODE);
    else
      insert into CONCRETE_PARTNERS
        (PARTNER_CODE)
      values
        (:new.COMPANY_CODE);
    end if;
     
  end if;

end tr_C_AIU_IS_COMMON;
/
