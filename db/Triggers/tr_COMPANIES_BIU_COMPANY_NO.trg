create or replace trigger tr_COMPANIES_BIU_COMPANY_NO
  before insert or
         update of COMPANY_NO
                on COMPANIES
  for each row
begin
  if :new.COMPANY_NO is null then
    :new.COMPANY_NO:= :new.COMPANY_CODE;
  end if;
end;
/
