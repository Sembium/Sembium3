create or replace trigger tr_FOFE_II
  instead of insert on FIN_ORDERS_FOR_EDIT
  for each row
begin

  if not StateUtils.InFofeUpdate then
    StateUtils.BeginFofeUpdate;
    begin
    
      insert into FIN_ORDERS
      (
        FIN_ORDER_CODE, 
        FIN_ORDER_BRANCH_CODE, 
        FIN_ORDER_NO, 
        EXEC_DEPT_CODE, 
        PRIORITY_CODE, 
        FIN_PROCESS_CODE, 
        BND_PROCESS_OBJECT_BRANCH_CODE, 
        BND_PROCESS_OBJECT_CODE, 
        PARTNER_CODE, 
        IN_OUT, 
        BASE_DATE, 
        BASE_FINANCIAL_PRODUCT_CODE, 
        BASE_QUANTITY, 
        WORK_FINANCIAL_PRODUCT_CODE, 
        FIN_CLASS_CODE, 
        DOCUMENT_IDENTIFIER, 
        DOCUMENT_DATE, 
        NOTES, 
        DOC_BRANCH_CODE, 
        DOC_CODE, 
        ACTIVATE_EMPLOYEE_CODE, 
        ACTIVATE_DATE, 
        ACTIVATE_TIME, 
        CREATE_EMPLOYEE_CODE, 
        CREATE_DATE, 
        CREATE_TIME, 
        CHANGE_EMPLOYEE_CODE, 
        CHANGE_DATE, 
        CHANGE_TIME,
        CLOSE_EMPLOYEE_CODE, 
        CLOSE_DATE, 
        CLOSE_TIME, 
        ANNUL_EMPLOYEE_CODE, 
        ANNUL_DATE, 
        ANNUL_TIME,
        BASE_DATA_CHANGED,
        FM_MOVEMENT_OFFSET_TYPE_CODE
      )
      values
      (
        :new.FIN_ORDER_CODE, 
        :new.FIN_ORDER_BRANCH_CODE, 
        :new.FIN_ORDER_NO, 
        :new.EXEC_DEPT_CODE, 
        :new.PRIORITY_CODE, 
        :new.FIN_PROCESS_CODE, 
        :new.BND_PROCESS_OBJECT_BRANCH_CODE, 
        :new.BND_PROCESS_OBJECT_CODE, 
        :new.PARTNER_CODE, 
        :new.IN_OUT, 
        :new.BASE_DATE, 
        :new.BASE_FINANCIAL_PRODUCT_CODE, 
        :new.BASE_QUANTITY, 
        :new.WORK_FINANCIAL_PRODUCT_CODE, 
        :new.FIN_CLASS_CODE, 
        :new.DOCUMENT_IDENTIFIER, 
        :new.DOCUMENT_DATE, 
        :new.NOTES, 
        :new.DOC_BRANCH_CODE, 
        :new.DOC_CODE, 
        :new.ACTIVATE_EMPLOYEE_CODE, 
        :new.ACTIVATE_DATE, 
        :new.ACTIVATE_TIME, 
        :new.CREATE_EMPLOYEE_CODE, 
        :new.CREATE_DATE, 
        :new.CREATE_TIME, 
        :new.CHANGE_EMPLOYEE_CODE, 
        :new.CHANGE_DATE, 
        :new.CHANGE_TIME,      
        :new.CLOSE_EMPLOYEE_CODE, 
        :new.CLOSE_DATE, 
        :new.CLOSE_TIME, 
        :new.ANNUL_EMPLOYEE_CODE, 
        :new.ANNUL_DATE, 
        :new.ANNUL_TIME,
        0,
        :new.FM_MOVEMENT_OFFSET_TYPE_CODE
      );
    
    exception
      when others then
        StateUtils.EndFofeUpdate;
        raise;
    end;
    StateUtils.EndFofeUpdate;
  end if;

end tr_FOFE_II;
/
