create or replace trigger tr_OM_BIU_CHECK_DATE
  before insert or update on OPERATION_MOVEMENTS
  for each row
begin
  if (:new.STORNO_EMPLOYEE_CODE is null) then
   
    if (:new.OM_DATE < CommonConsts.MinDate) then
      raise_application_error(-20002, ServerMessages.SReportMovementWithOldDateId);
    end if;

    if (:new.OM_DATE > ContextDate) then
      raise_application_error(-20002, ServerMessages.SReportMovementWithFutDateId);
    end if;
    
  end if;
    
end tr_OM_BIU_CHECK_DATE;
/
