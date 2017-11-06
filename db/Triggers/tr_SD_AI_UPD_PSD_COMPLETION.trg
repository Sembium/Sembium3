create or replace trigger tr_SD_AI_UPD_PSD_COMPLETION
  after insert on STORE_DEALS
  for each row
begin

  if not StateUtils.InSdUpdate then
    StateUtils.BeginSdUpdate;
    begin
    
      if (:new.PLANNED_STORE_DEAL_BRANCH_CODE is not null) and
         (:new.PLANNED_STORE_DEAL_CODE is not null) and
         (:new.STORNO_EMPLOYEE_CODE is null) then
         
        update
          PLANNED_STORE_DEALS_FOR_EDIT psd
        set
          psd.COMPLETED_QUANTITY = psd.COMPLETED_QUANTITY + :new.QUANTITY
        where
          (psd.PLANNED_STORE_DEAL_BRANCH_CODE = :new.PLANNED_STORE_DEAL_BRANCH_CODE) and
          (psd.PLANNED_STORE_DEAL_CODE = :new.PLANNED_STORE_DEAL_CODE) and
          (psd.IN_OUT = :new.IN_OUT);
          
      end if;
          
    exception
      when others then
        StateUtils.EndSdUpdate;
        raise;
    end;
    StateUtils.EndSdUpdate;
  end if;
  
end tr_SD_AI_UPD_PSD_COMPLETION;
/
