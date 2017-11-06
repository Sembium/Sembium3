create or replace trigger tr_DPRFE_II
  instead of insert on DELIVERY_PROJECTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InDprfeUpdate then
    StateUtils.BeginDprfeUpdate;
    begin
    
      insert into DELIVERY_PROJECTS
      (
        ACCOUNT_QUANTITY,
        CHANGE_DATE,
        CHANGE_EMPLOYEE_CODE,
        CHANGE_TIME,
        CREATE_DATE,
        CREATE_EMPLOYEE_CODE,
        CREATE_TIME,
        CURRENCY_CODE,
        DCD_OBJECT_BRANCH_CODE,
        DCD_OBJECT_CODE,
        DELIVERY_DATE,
        DELIVERY_PROJECT_CODE,
        DELIVERY_VENDOR_COMPANY_CODE,
        DELIVERY_VENDOR_OFFICE_CODE,
        DOC_BRANCH_CODE,
        DOC_CODE,
        TOTAL_PRICE,
        VENDOR_COMPANY_CODE,
        MEDIATOR_COMPANY_CODE,
        WORK_QUANTITY,
        DELIVERY_DECISION_CODE,
        MAX_BASE_SINGLE_PRICE,
        DECISION_EMPLOYEE_CODE,
        DIALOG_EMPLOYEE_CODE,
        SHIPMENT_DAYS,
        CUSTOMHOUSE_CODE,
        SHIPMENT_TYPE_CODE,
        START_DATE,
        REGISTER_DATE,
        PLAN_POSITION_DATE,
        REAL_POSITION_DATE,
        PLAN_VENDOR_POSITION_DATE,
        REAL_VENDOR_POSITION_DATE,
        REAL_DECISION_DATE,
        IS_ACTIVATED_BY_VENDOR,
        IS_TRANSPORT_FROM_VENDOR,
        FINISH_EMPLOYEE_CODE,
        FINISH_DATE,
        FINISH_TIME,                         
        ANNUL_EMPLOYEE_CODE,
        ANNUL_DATE,
        ANNUL_TIME,
        OUR_OFFER_QUANTITY,
        OUR_OFFER_ACCOUNT_QUANTITY,
        OUR_OFFER_SINGLE_PRICE,
        OUR_OFFER_CURRENCY_CODE,
        VENDOR_OFFER_QUANTITY,
        VENDOR_OFFER_ACCOUNT_QUANTITY,
        VENDOR_OFFER_SINGLE_PRICE,
        VENDOR_OFFER_CURRENCY_CODE,
        PROGNOSIS_BEGIN_DATE,
        PROGNOSIS_END_DATE,
        OUR_OFFER_LEASE_DATE_UNIT_QTY,
        V_OFFER_LEASE_DATE_UNIT_QTY,
        LEASE_DATE_UNIT_QTY,
        OUR_OFFER_LEASE_DATE_UNIT_CODE,
        V_OFFER_LEASE_DATE_UNIT_CODE,
        LEASE_DATE_UNIT_CODE,
        RECEIVE_DATE,
        RETURN_DATE,
        SALE_OBJECT_BRANCH_CODE,
        SALE_OBJECT_CODE,
        PRODUCT_CODE,
        PSD_STORE_CODE,
        DEFICIT_COVER_DATE
      )
      values
      (
        :new.ACCOUNT_QUANTITY,
        :new.CHANGE_DATE,
        :new.CHANGE_EMPLOYEE_CODE,
        :new.CHANGE_TIME,
        :new.CREATE_DATE,
        :new.CREATE_EMPLOYEE_CODE,
        :new.CREATE_TIME,
        :new.CURRENCY_CODE,
        :new.DCD_OBJECT_BRANCH_CODE,
        :new.DCD_OBJECT_CODE,
        :new.DELIVERY_DATE,
        :new.DELIVERY_PROJECT_CODE,
        :new.DELIVERY_VENDOR_COMPANY_CODE,
        :new.DELIVERY_VENDOR_OFFICE_CODE,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.TOTAL_PRICE,
        :new.VENDOR_COMPANY_CODE,
        :new.MEDIATOR_COMPANY_CODE,
        :new.WORK_QUANTITY,
        :new.DELIVERY_DECISION_CODE,
        :new.MAX_BASE_SINGLE_PRICE,
        :new.DECISION_EMPLOYEE_CODE,
        :new.DIALOG_EMPLOYEE_CODE,
        :new.SHIPMENT_DAYS,
        :new.CUSTOMHOUSE_CODE,
        :new.SHIPMENT_TYPE_CODE,
        :new.START_DATE,
        :new.REGISTER_DATE,
        :new.PLAN_POSITION_DATE,
        :new.REAL_POSITION_DATE,
        :new.PLAN_VENDOR_POSITION_DATE,
        :new.REAL_VENDOR_POSITION_DATE,
        :new.REAL_DECISION_DATE,
        :new.IS_ACTIVATED_BY_VENDOR,
        :new.IS_TRANSPORT_FROM_VENDOR,
        :new.FINISH_EMPLOYEE_CODE,
        :new.FINISH_DATE,
        :new.FINISH_TIME,                         
        :new.ANNUL_EMPLOYEE_CODE,
        :new.ANNUL_DATE,
        :new.ANNUL_TIME,
        :new.OUR_OFFER_QUANTITY,
        :new.OUR_OFFER_ACCOUNT_QUANTITY,
        :new.OUR_OFFER_SINGLE_PRICE,
        :new.OUR_OFFER_CURRENCY_CODE,
        :new.VENDOR_OFFER_QUANTITY,
        :new.VENDOR_OFFER_ACCOUNT_QUANTITY,
        :new.VENDOR_OFFER_SINGLE_PRICE,
        :new.VENDOR_OFFER_CURRENCY_CODE,
        :new.PROGNOSIS_BEGIN_DATE,
        :new.PROGNOSIS_END_DATE,
        :new.OUR_OFFER_LEASE_DATE_UNIT_QTY,
        :new.V_OFFER_LEASE_DATE_UNIT_QTY,
        :new.LEASE_DATE_UNIT_QTY,
        :new.OUR_OFFER_LEASE_DATE_UNIT_CODE,
        :new.V_OFFER_LEASE_DATE_UNIT_CODE,
        :new.LEASE_DATE_UNIT_CODE,
        :new.RECEIVE_DATE,
        :new.RETURN_DATE,
        :new.SALE_OBJECT_BRANCH_CODE,
        :new.SALE_OBJECT_CODE,
        :new.PRODUCT_CODE,
        :new.PSD_STORE_CODE,
        :new.DEFICIT_COVER_DATE
      );
    
      if (:new.FINISH_EMPLOYEE_CODE is not null) then
          
        update
          DCD_FOR_EDIT dcd
        set
          dcd.IS_DONE = 1
        where
          (dcd.DCD_OBJECT_BRANCH_CODE = :new.DCD_OBJECT_BRANCH_CODE) and
          (dcd.DCD_OBJECT_CODE = :new.DCD_OBJECT_CODE) and
          not exists(
            select
              1
            from
              DELIVERY_PROJECTS dp
            where
              (dp.DCD_OBJECT_BRANCH_CODE = :new.DCD_OBJECT_BRANCH_CODE) and
              (dp.DCD_OBJECT_CODE = :new.DCD_OBJECT_CODE) and
              (dp.ANNUL_EMPLOYEE_CODE is null) and          
              (dp.FINISH_EMPLOYEE_CODE is null)
          );
      
      end if;

    exception
      when others then
        StateUtils.EndDprfeUpdate;
        raise;
    end;
    StateUtils.EndDprfeUpdate;
  end if;

end tr_DPRFE_II;
/
