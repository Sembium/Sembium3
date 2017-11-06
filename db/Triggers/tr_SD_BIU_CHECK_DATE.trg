create or replace trigger tr_SD_BIU_CHECK_DATE
  before insert or update on STORE_DEALS  
  for each row
begin
  if (:new.STORNO_EMPLOYEE_CODE is null) then
   
    if (:new.STORE_DEAL_DATE < CommonConsts.MinDate) then
      raise_application_error(-20002, ServerMessages.SReportStoreDealWithOldDateId);
    end if;

    if (:new.STORE_DEAL_DATE > ContextDate) then
      raise_application_error(-20002, ServerMessages.SReportStoreDealWithFutDateId);
    end if;
    
  end if;
    
end tr_SD_BIU_CHECK_DATE;
/
