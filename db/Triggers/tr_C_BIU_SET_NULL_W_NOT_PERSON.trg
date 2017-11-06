create or replace trigger tr_C_BIU_SET_NULL_W_NOT_PERSON
  before insert or update of COMPANY_CLASS_CODE, COMPANY_CODE on COMPANIES
  for each row
begin
  if (:new.COMPANY_CLASS_CODE = 2 ) then
    :new.NULL_WHEN_NOT_PERSON:= :new.COMPANY_CODE;
  else
    :new.NULL_WHEN_NOT_PERSON:= null;
  end if;
end;
/
