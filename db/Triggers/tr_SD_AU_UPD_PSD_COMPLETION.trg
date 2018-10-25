create or replace trigger tr_SD_AU_UPD_PSD_COMPLETION
  after update of 
    PLANNED_STORE_DEAL_BRANCH_CODE,
    PLANNED_STORE_DEAL_CODE,
    STORNO_EMPLOYEE_CODE,
    QUANTITY,
    IN_OUT
  on STORE_DEALS
  for each row
begin
  if not StateUtils.InSdUpdate then
    StateUtils.BeginSdUpdate;
    begin
      if (Coalesce(:old.PLANNED_STORE_DEAL_BRANCH_CODE, 0) <> Coalesce(:new.PLANNED_STORE_DEAL_BRANCH_CODE, 0)) or
         (Coalesce(:old.PLANNED_STORE_DEAL_CODE, 0) <> Coalesce(:new.PLANNED_STORE_DEAL_CODE, 0)) or
         (Coalesce(:old.STORNO_EMPLOYEE_CODE, 0) <> Coalesce(:new.STORNO_EMPLOYEE_CODE, 0)) or
         (Coalesce(:old.QUANTITY, 0) <> Coalesce(:new.QUANTITY, 0)) or
         (Coalesce(:old.IN_OUT, 0) <> Coalesce(:new.IN_OUT, 0)) then
            
        if (:old.PLANNED_STORE_DEAL_BRANCH_CODE is not null) and
           (:old.PLANNED_STORE_DEAL_CODE is not null) and
           (:old.STORNO_EMPLOYEE_CODE is null) then
             
          update
            PLANNED_STORE_DEALS_FOR_EDIT psd
          set
            psd.COMPLETED_QUANTITY = psd.COMPLETED_QUANTITY - :old.QUANTITY
          where
            (psd.PLANNED_STORE_DEAL_BRANCH_CODE = :old.PLANNED_STORE_DEAL_BRANCH_CODE) and
            (psd.PLANNED_STORE_DEAL_CODE = :old.PLANNED_STORE_DEAL_CODE) and
            (psd.IN_OUT = :old.IN_OUT);
              
        end if;
          
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
          
      end if;
    exception
      when others then
        StateUtils.EndSdUpdate;
        raise;
    end;
    StateUtils.EndSdUpdate;
  end if;
  
end;
/
