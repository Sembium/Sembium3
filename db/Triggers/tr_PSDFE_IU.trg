create or replace trigger tr_PSDFE_IU
  instead of update on PLANNED_STORE_DEALS_FOR_EDIT
  for each row
declare
  StoreDealCount Number(10);
  FinOrderCode Number;
begin

  if not StateUtils.InPsdfeUpdate then
    StateUtils.BeginPsdfeUpdate;
    begin

      if (:new.PLANNED_STORE_DEAL_BRANCH_CODE <> :old.PLANNED_STORE_DEAL_BRANCH_CODE) or
         (:new.PLANNED_STORE_DEAL_CODE <> :old.PLANNED_STORE_DEAL_CODE) then
        raise_application_error(-20000, 'Internal error: PLANNED_STORE_DEALS key should not be changed');
      end if;
    
    
      if (:new.ANNUL_EMPLOYEE_CODE is not null) and
         (:old.ANNUL_EMPLOYEE_CODE is null) then
         
        select
          Count(*)
        into
          StoreDealCount
        from
          STORE_DEALS sd
        where
          (sd.PLANNED_STORE_DEAL_BRANCH_CODE = :new.PLANNED_STORE_DEAL_BRANCH_CODE) and
          (sd.PLANNED_STORE_DEAL_CODE = :new.PLANNED_STORE_DEAL_CODE) and
          (sd.STORNO_EMPLOYEE_CODE is null)
        ;
        
        if (StoreDealCount > 0) then
          raise_application_error(-20002, ServerMessages.SAnnuledPSDWithSDNotAllowedId);
        end if;
         
      end if;
    
    
      update
        PLANNED_STORE_DEALS psd
      set
        PLANNED_STORE_DEAL_BRANCH_CODE = :new.PLANNED_STORE_DEAL_BRANCH_CODE, 
        PLANNED_STORE_DEAL_CODE = :new.PLANNED_STORE_DEAL_CODE, 
        PLANNED_STORE_DEAL_TYPE_CODE = :new.PLANNED_STORE_DEAL_TYPE_CODE, 
        STORE_DEAL_TYPE_CODE = :new.STORE_DEAL_TYPE_CODE, 
        PRIORITY_CODE = :new.PRIORITY_CODE, 
        IS_PLANNED_MANUALLY = :new.IS_PLANNED_MANUALLY, 
        BND_PROCESS_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE, 
        BND_PROCESS_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE, 
        BND_PROCESS_CODE = :new.BND_PROCESS_CODE, 
        STORE_CODE = :new.STORE_CODE, 
        STORE_DEAL_BEGIN_DATE = :new.STORE_DEAL_BEGIN_DATE, 
        STORE_DEAL_END_DATE = :new.STORE_DEAL_END_DATE, 
        PRODUCT_CODE = :new.PRODUCT_CODE, 
        QUANTITY = :new.QUANTITY, 
        ACCOUNT_QUANTITY = :new.ACCOUNT_QUANTITY, 
        DEPT_CODE = :new.DEPT_CODE, 
        WORK_ORDER_NO = :new.WORK_ORDER_NO, 
        ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE, 
        ANNUL_DATE = :new.ANNUL_DATE, 
        ANNUL_TIME = :new.ANNUL_TIME, 
        CLOSE_EMPLOYEE_CODE = :new.CLOSE_EMPLOYEE_CODE, 
        CLOSE_DATE = :new.CLOSE_DATE, 
        CLOSE_TIME = :new.CLOSE_TIME, 
        CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE, 
        CREATE_DATE = :new.CREATE_DATE, 
        CREATE_TIME = :new.CREATE_TIME, 
        CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE, 
        CHANGE_DATE = :new.CHANGE_DATE, 
        CHANGE_TIME = :new.CHANGE_TIME, 
        IN_OUT = :new.IN_OUT,
        COMPLETED_QUANTITY = Coalesce(:new.COMPLETED_QUANTITY, 0)
      where
        (psd.PLANNED_STORE_DEAL_BRANCH_CODE = :old.PLANNED_STORE_DEAL_BRANCH_CODE) and
        (psd.PLANNED_STORE_DEAL_CODE = :old.PLANNED_STORE_DEAL_CODE);
        
      -- update fin order's IS_COMPLETE
      if (Coalesce(:new.COMPLETED_QUANTITY, 0) <> :old.COMPLETED_QUANTITY) or 
         (Coalesce(:new.QUANTITY, 0) <> :old.QUANTITY) then
        
        select
          Max(rfml.FIN_ORDER_CODE)
        into
          FinOrderCode
        from
          REAL_FIN_MODEL_LINES rfml
        where
          (rfml.RFML_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE) and
          (rfml.RFML_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE);
       
        if (FinOrderCode is not null) then
          FinanceUtils.UpdateFinOrderIsComplete(FinOrderCode);
        end if;
        
      end if;
    
    exception
      when others then
        StateUtils.EndPsdfeUpdate;
        raise;
    end;
    StateUtils.EndPsdfeUpdate;
  end if;
    
end tr_PSDFE_IU;
/
