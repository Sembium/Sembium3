create or replace trigger tr_MM_BIU_CHECK_DATE
  before insert or update on MODEL_MOVEMENTS
  for each row
begin
  if (:new.STORNO_EMPLOYEE_CODE is null) then
   
    if (:new.MM_DATE < CommonConsts.MinDate) then
      raise_application_error(-20002, ServerMessages.SReportMovementWithOldDateId);
    end if;

    if (:new.MM_DATE > ContextDate) then
      raise_application_error(-20002, ServerMessages.SReportMovementWithFutDateId);
    end if;
    
  end if;
    
end tr_MM_BIU_CHECK_DATE;
/
