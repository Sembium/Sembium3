create or replace trigger tr_MLMSO_BIU_CHECK_SETUP_DATE
  before insert or update on MLMS_OPERATIONS
  for each row
begin
  if (:new.SETUP_DATE is not null) then
   
    if (:new.SETUP_DATE < CommonConsts.MinDate) then
      raise_application_error(-20002, ServerMessages.SReportSettingWithOldDateId);
    end if;

    if (:new.SETUP_DATE > ContextDate) then
      raise_application_error(-20002, ServerMessages.SReportSettingWithFutureDateId);
    end if;
    
  end if;
    
end tr_MLMSO_BIU_CHECK_SETUP_DATE;
/
