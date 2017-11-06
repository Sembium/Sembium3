create or replace trigger tr_BOIOFE_II
  instead of insert on BOI_ORDERS_FOR_EDIT
  for each row
begin

  if not StateUtils.InBoiofeUpdate then
    StateUtils.BeginBoiofeUpdate;
    begin

      insert into BOI_ORDERS
      (
        BOI_ORDER_OBJECT_BRANCH_CODE,
        BOI_ORDER_OBJECT_CODE,
        BUDGET_ORDER_BRANCH_CODE,
        BUDGET_ORDER_CODE,
        BUDGET_ORDER_ITEM_CODE,
        BOI_ORDER_CODE,
        BOI_ORDER_TYPE_CODE,
        CONSUMER_DEPT_CODE,
        PRODUCT_CODE,
        STORE_CODE,
        QUANTITY,
        COMPANY_CODE,
        DESCRIPTION,
        CURRENCY_CODE,
        DOCUMENT_TYPE_TEXT,
        DOCUMENT_ID_TEXT,
        PLAN_TOTAL_PRICE,
        PLAN_DATE,
        ACCOUNT_TOTAL_PRICE,
        ACCOUNT_DATE,
        IS_CONFIRMED,
        IS_CANCELED,
        DECISION_EMPLOYEE_CODE,
        DECISION_DATE,
        CREATE_EMPLOYEE_CODE,
        CREATE_DATE,
        CREATE_TIME,
        CHANGE_EMPLOYEE_CODE,
        CHANGE_DATE,
        CHANGE_TIME,
        ANNUL_EMPLOYEE_CODE,
        ANNUL_DATE,
        ANNUL_TIME,
        CLOSE_EMPLOYEE_CODE,
        CLOSE_DATE,
        CLOSE_TIME,
        DELIVERY_OBJECT_BRANCH_CODE,
        DELIVERY_OBJECT_CODE,
        DOC_BRANCH_CODE,
        DOC_CODE
      )
      values
      (
        :new.BOI_ORDER_OBJECT_BRANCH_CODE,
        :new.BOI_ORDER_OBJECT_CODE,
        :new.BUDGET_ORDER_BRANCH_CODE,
        :new.BUDGET_ORDER_CODE,
        :new.BUDGET_ORDER_ITEM_CODE,
        :new.BOI_ORDER_CODE,
        :new.BOI_ORDER_TYPE_CODE,
        :new.CONSUMER_DEPT_CODE,
        :new.PRODUCT_CODE,
        :new.STORE_CODE,
        :new.QUANTITY,
        :new.COMPANY_CODE,
        :new.DESCRIPTION,
        :new.CURRENCY_CODE,
        :new.DOCUMENT_TYPE_TEXT,
        :new.DOCUMENT_ID_TEXT,
        :new.PLAN_TOTAL_PRICE,
        :new.PLAN_DATE,
        :new.ACCOUNT_TOTAL_PRICE,
        :new.ACCOUNT_DATE,
        :new.IS_CONFIRMED,
        :new.IS_CANCELED,
        :new.DECISION_EMPLOYEE_CODE,
        :new.DECISION_DATE,
        :new.CREATE_EMPLOYEE_CODE,
        :new.CREATE_DATE,
        :new.CREATE_TIME,
        :new.CHANGE_EMPLOYEE_CODE,
        :new.CHANGE_DATE,
        :new.CHANGE_TIME,
        :new.ANNUL_EMPLOYEE_CODE,
        :new.ANNUL_DATE,
        :new.ANNUL_TIME,
        :new.CLOSE_EMPLOYEE_CODE,
        :new.CLOSE_DATE,
        :new.CLOSE_TIME,
        :new.DELIVERY_OBJECT_BRANCH_CODE,
        :new.DELIVERY_OBJECT_CODE,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE
      );

    exception
      when others then
        StateUtils.EndBoiofeUpdate;
        raise;
    end;
    StateUtils.EndBoiofeUpdate;
  end if;

end;
/
