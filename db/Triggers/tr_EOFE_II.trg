create or replace trigger tr_EOFE_II
  instead of insert on ENGINEERING_ORDERS_FOR_EDIT
  for each row
begin

  if not StateUtils.InEofeUpdate then
    StateUtils.BeginEofeUpdate;
    begin
    
      ModelUtils.CheckEOCloseAndAnnul(
        :new.ENGINEERING_ORDER_CODE,
        :new.PARENT_ENGINEERING_ORDER_CODE,
        :new.CLOSE_EMPLOYEE_CODE is not null,
        :new.ANNUL_EMPLOYEE_CODE is not null);

      insert into ENGINEERING_ORDERS
      (
        ENGINEERING_ORDER_CODE, 
        ENGINEERING_ORDER_BRANCH_CODE, 
        ENGINEERING_ORDER_NO, 
        ENGINEERING_ORDER_TYPE_CODE, 
        DOC_BRANCH_CODE, 
        DOC_CODE, 
        PRIORITY_CODE, 
        ORDER_DEPT_CODE, 
        PRODUCT_CODE, 
        THOROUGHLY_ENG_PRODUCT_CODE, 
        ENGINEERING_PLAN_END_DATE, 
        ENGINEERING_DEPT_CODE, 
        ENGINEERING_EMPLOYEE_CODE, 
        ENGINEERING_PLAN_WORKDAYS, 
        ACTIVATE_EMPLOYEE_CODE, 
        ACTIVATE_DATE, 
        ACTIVATE_TIME, 
        CLOSE_EMPLOYEE_CODE, 
        CLOSE_DATE, 
        CLOSE_TIME, 
        ANNUL_EMPLOYEE_CODE, 
        ANNUL_DATE, 
        ANNUL_TIME, 
        CREATE_EMPLOYEE_CODE, 
        CREATE_DATE, 
        CREATE_TIME, 
        CHANGE_EMPLOYEE_CODE, 
        CHANGE_DATE, 
        CHANGE_TIME,
        PARENT_ENGINEERING_ORDER_CODE,
        NOTES
      )
      values
      (
        :new.ENGINEERING_ORDER_CODE, 
        :new.ENGINEERING_ORDER_BRANCH_CODE, 
        :new.ENGINEERING_ORDER_NO, 
        :new.ENGINEERING_ORDER_TYPE_CODE, 
        :new.DOC_BRANCH_CODE, 
        :new.DOC_CODE, 
        :new.PRIORITY_CODE, 
        :new.ORDER_DEPT_CODE, 
        :new.PRODUCT_CODE, 
        :new.THOROUGHLY_ENG_PRODUCT_CODE, 
        :new.ENGINEERING_PLAN_END_DATE, 
        :new.ENGINEERING_DEPT_CODE, 
        :new.ENGINEERING_EMPLOYEE_CODE, 
        :new.ENGINEERING_PLAN_WORKDAYS, 
        :new.ACTIVATE_EMPLOYEE_CODE, 
        :new.ACTIVATE_DATE, 
        :new.ACTIVATE_TIME, 
        :new.CLOSE_EMPLOYEE_CODE, 
        :new.CLOSE_DATE, 
        :new.CLOSE_TIME, 
        :new.ANNUL_EMPLOYEE_CODE, 
        :new.ANNUL_DATE, 
        :new.ANNUL_TIME, 
        :new.CREATE_EMPLOYEE_CODE, 
        :new.CREATE_DATE, 
        :new.CREATE_TIME, 
        :new.CHANGE_EMPLOYEE_CODE, 
        :new.CHANGE_DATE, 
        :new.CHANGE_TIME,
        :new.PARENT_ENGINEERING_ORDER_CODE,
        :new.NOTES
      );
    
    exception
      when others then
        StateUtils.EndEofeUpdate;
        raise;
    end;
    StateUtils.EndEofeUpdate;
  end if;

end tr_EOFE_II;
/
