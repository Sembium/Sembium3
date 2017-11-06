create or replace trigger tr_BOIOFE_IU
  instead of update on BOI_ORDERS_FOR_EDIT
  for each row
begin

  if not StateUtils.InBoiofeUpdate then
    StateUtils.BeginBoiofeUpdate;
    begin

      if (:new.BOI_ORDER_OBJECT_BRANCH_CODE <> :old.BOI_ORDER_OBJECT_BRANCH_CODE) or
         (:new.BOI_ORDER_OBJECT_CODE <> :old.BOI_ORDER_OBJECT_CODE) then
        raise_application_error(-20000, 'Internal error: BOI_ORDERS key should not be changed');
      end if;

      update
        BOI_ORDERS boio
      set
        boio.BUDGET_ORDER_BRANCH_CODE = :new.BUDGET_ORDER_BRANCH_CODE,
        boio.BUDGET_ORDER_CODE = :new.BUDGET_ORDER_CODE,
        boio.BUDGET_ORDER_ITEM_CODE = :new.BUDGET_ORDER_ITEM_CODE,
        boio.BOI_ORDER_CODE = :new.BOI_ORDER_CODE,
        boio.BOI_ORDER_TYPE_CODE = :new.BOI_ORDER_TYPE_CODE,
        boio.CONSUMER_DEPT_CODE = :new.CONSUMER_DEPT_CODE,
        boio.PRODUCT_CODE = :new.PRODUCT_CODE,
        boio.STORE_CODE = :new.STORE_CODE,
        boio.QUANTITY = :new.QUANTITY,
        boio.COMPANY_CODE = :new.COMPANY_CODE,
        boio.DESCRIPTION = :new.DESCRIPTION,
        boio.CURRENCY_CODE = :new.CURRENCY_CODE,
        boio.DOCUMENT_TYPE_TEXT = :new.DOCUMENT_TYPE_TEXT,
        boio.DOCUMENT_ID_TEXT = :new.DOCUMENT_ID_TEXT,
        boio.PLAN_TOTAL_PRICE = :new.PLAN_TOTAL_PRICE,
        boio.PLAN_DATE = :new.PLAN_DATE,
        boio.ACCOUNT_TOTAL_PRICE = :new.ACCOUNT_TOTAL_PRICE,
        boio.ACCOUNT_DATE = :new.ACCOUNT_DATE,
        boio.IS_CONFIRMED = :new.IS_CONFIRMED,
        boio.IS_CANCELED = :new.IS_CANCELED,
        boio.DECISION_EMPLOYEE_CODE = :new.DECISION_EMPLOYEE_CODE,
        boio.DECISION_DATE = :new.DECISION_DATE,
        boio.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
        boio.CREATE_DATE = :new.CREATE_DATE,
        boio.CREATE_TIME = :new.CREATE_TIME,
        boio.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        boio.CHANGE_DATE = :new.CHANGE_DATE,
        boio.CHANGE_TIME = :new.CHANGE_TIME,
        boio.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE,
        boio.ANNUL_DATE = :new.ANNUL_DATE,
        boio.ANNUL_TIME = :new.ANNUL_TIME,
        boio.CLOSE_EMPLOYEE_CODE = :new.CLOSE_EMPLOYEE_CODE,
        boio.CLOSE_DATE = :new.CLOSE_DATE,
        boio.CLOSE_TIME = :new.CLOSE_TIME,
        boio.DELIVERY_OBJECT_BRANCH_CODE = :new.DELIVERY_OBJECT_BRANCH_CODE,
        boio.DELIVERY_OBJECT_CODE = :new.DELIVERY_OBJECT_CODE,
        boio.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        boio.DOC_CODE = :new.DOC_CODE
      where
        (boio.BOI_ORDER_OBJECT_BRANCH_CODE = :old.BOI_ORDER_OBJECT_BRANCH_CODE) and
        (boio.BOI_ORDER_OBJECT_CODE = :old.BOI_ORDER_OBJECT_CODE);

      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) and
         ( (:old.DOC_BRANCH_CODE <> Coalesce(:new.DOC_BRANCH_CODE, 0)) or
           (:old.DOC_CODE <> Coalesce(:new.DOC_CODE, 0)) ) then

         delete
           DOCS_FOR_EDIT dfe
         where
           (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
           (dfe.DOC_CODE = :old.DOC_CODE);

      end if;

    exception
      when others then
        StateUtils.EndBoiofeUpdate;
        raise;
    end;
    StateUtils.EndBoiofeUpdate;
  end if;

end;
/
