create or replace trigger tr_PSDFE_II
  instead of insert on PLANNED_STORE_DEALS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPsdfeUpdate then
    StateUtils.BeginPsdfeUpdate;
    begin
    
      insert into PLANNED_STORE_DEALS (
        PLANNED_STORE_DEAL_BRANCH_CODE, 
        PLANNED_STORE_DEAL_CODE, 
        PLANNED_STORE_DEAL_TYPE_CODE, 
        STORE_DEAL_TYPE_CODE, 
        PRIORITY_CODE, 
        IS_PLANNED_MANUALLY, 
        BND_PROCESS_OBJECT_BRANCH_CODE, 
        BND_PROCESS_OBJECT_CODE, 
        BND_PROCESS_CODE, 
        STORE_CODE, 
        STORE_DEAL_BEGIN_DATE, 
        STORE_DEAL_END_DATE, 
        PRODUCT_CODE, 
        QUANTITY, 
        ACCOUNT_QUANTITY, 
        DEPT_CODE, 
        WORK_ORDER_NO, 
        ANNUL_EMPLOYEE_CODE, 
        ANNUL_DATE, 
        ANNUL_TIME, 
        CLOSE_EMPLOYEE_CODE, 
        CLOSE_DATE, 
        CLOSE_TIME, 
        CREATE_EMPLOYEE_CODE, 
        CREATE_DATE, 
        CREATE_TIME, 
        CHANGE_EMPLOYEE_CODE, 
        CHANGE_DATE, 
        CHANGE_TIME, 
        IN_OUT,
        COMPLETED_QUANTITY
      )
      values (
        :new.PLANNED_STORE_DEAL_BRANCH_CODE, 
        :new.PLANNED_STORE_DEAL_CODE, 
        :new.PLANNED_STORE_DEAL_TYPE_CODE, 
        :new.STORE_DEAL_TYPE_CODE, 
        :new.PRIORITY_CODE, 
        Coalesce(:new.IS_PLANNED_MANUALLY, 0),
        :new.BND_PROCESS_OBJECT_BRANCH_CODE, 
        :new.BND_PROCESS_OBJECT_CODE, 
        :new.BND_PROCESS_CODE, 
        :new.STORE_CODE, 
        :new.STORE_DEAL_BEGIN_DATE, 
        :new.STORE_DEAL_END_DATE, 
        :new.PRODUCT_CODE, 
        :new.QUANTITY, 
        :new.ACCOUNT_QUANTITY, 
        :new.DEPT_CODE, 
        :new.WORK_ORDER_NO, 
        :new.ANNUL_EMPLOYEE_CODE, 
        :new.ANNUL_DATE, 
        :new.ANNUL_TIME, 
        :new.CLOSE_EMPLOYEE_CODE, 
        :new.CLOSE_DATE, 
        :new.CLOSE_TIME, 
        :new.CREATE_EMPLOYEE_CODE, 
        :new.CREATE_DATE, 
        :new.CREATE_TIME, 
        :new.CHANGE_EMPLOYEE_CODE, 
        :new.CHANGE_DATE, 
        :new.CHANGE_TIME, 
        :new.IN_OUT,
        Coalesce(:new.COMPLETED_QUANTITY, 0)
      );
     
    exception
      when others then
        StateUtils.EndPsdfeUpdate;
        raise;
    end;
    StateUtils.EndPsdfeUpdate;
  end if;
    
end tr_PSDFE_II;
/
