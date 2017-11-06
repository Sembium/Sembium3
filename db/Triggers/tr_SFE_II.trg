create or replace trigger tr_SFE_II
  instead of insert on SALES_FOR_EDIT
  for each row
begin

  if not StateUtils.InSfeUpdate then
    StateUtils.BeginSfeUpdate;
    begin
    
      SaleUtils.CheckPOCloseAndAnnul(
        :new.SALE_OBJECT_BRANCH_CODE,
        :new.SALE_OBJECT_CODE,
        :new.WASTING_SALE_OBJ_BRANCH_CODE,
        :new.WASTING_SALE_OBJ_CODE,
        :new.FINISH_EMPLOYEE_CODE is not null,
        :new.ANNUL_EMPLOYEE_CODE is not null);
      
      insert into SALES (
        SALE_OBJECT_BRANCH_CODE, 
        SALE_OBJECT_CODE, 
        SALE_GROUP_OBJECT_BRANCH_CODE, 
        SALE_GROUP_OBJECT_CODE, 
        SALE_ORDER_TYPE_CODE, 
        REQUEST_BRANCH_CODE, 
        REQUEST_NO, 
        REQUEST_LINE_NO, 
        MANAGER_EMPLOYEE_CODE, 
        CLIENT_COMPANY_CODE, 
        CLIENT_REQUEST_NO, 
        REQUEST_SEND_DATE, 
        REQUEST_REGISTER_DATE, 
        OFFER_SEND_PLAN_DATE, 
        OFFER_SEND_DATE, 
        OFFER_ANSWER_PLAN_DATE, 
        OFFER_ANSWER_DATE, 
        DECISION_PLAN_DATE, 
        DECISION_DATE, 
        DECISION_TYPE_CODE, 
        DECISION_EMPLOYEE_CODE,
        PRODUCT_CODE, 
        QUANTITY, 
        OUR_OFFER_QUANTITY, 
        CL_OFFER_QUANTITY, 
        MANUFACTURE_QUANTITY, 
        MANUFACTURE_DECISION_EXPECTED, 
        SINGLE_WEIGHT, 
        MIN_BASE_PRICE, 
        OUR_OFFER_CURRENCY_CODE,
        CL_OFFER_CURRENCY_CODE,
        CURRENCY_CODE, 
        SINGLE_PRICE, 
        OUR_OFFER_SINGLE_PRICE, 
        CL_OFFER_SINGLE_PRICE, 
        RECEIVE_DATE, 
        CL_OFFER_RECEIVE_DATE, 
        OUR_OFFER_RECEIVE_DATE, 
        RECEIVE_PLACE_OFFICE_CODE, 
        IS_VENDOR_TRANSPORT, 
        SHIPMENT_TYPE_CODE, 
        CUSTOMHOUSE_CODE, 
        NOTES, 
        SALE_BRANCH_CODE, 
        SALE_NO, 
        SALE_TYPE_CODE, 
        OKIDU_EMPLOYEE_CODE, 
        SOS_OKIDU, 
        PRODUCTION_START_PLAN_DATE, 
        SHIPMENT_DATE, 
        SHIPMENT_STORE_CODE, 
        ENTER_SH_STORE_PLAN_BEGIN_DATE, 
        ENTER_SH_STORE_PLAN_END_DATE, 
        IS_ML_ENTRUSTED, 
        IS_ML_NOT_NEEDED, 
        ANNUL_EMPLOYEE_CODE, 
        ANNUL_DATE, 
        ANNUL_TIME, 
        FINISH_EMPLOYEE_CODE, 
        FINISH_DATE, 
        FINISH_TIME, 
        CREATE_EMPLOYEE_CODE, 
        CREATE_DATE, 
        CREATE_TIME, 
        CHANGE_EMPLOYEE_CODE, 
        CHANGE_DATE, 
        CHANGE_TIME, 
        MARKET_SINGLE_PRICE, 
        DISCOUNT_PERCENT, 
        CL_OFFER_QUANTITY_CHG, 
        QUANTITY_CHG, 
        CL_OFFER_RECEIVE_DATE_CH, 
        RECEIVE_DATE_CHG, 
        PRODUCTION_DEPT_CODE, 
        DOC_BRANCH_CODE, 
        DOC_CODE, 
        TRANSIENT_STATUS_CODE, 
        WORKDAYS_TO_EXIST,
        PRODUCTION_ORDER_TYPE_CODE,
        IS_AUTO_COMPLETIVE,
        WASTING_SALE_OBJ_BRANCH_CODE,
        WASTING_SALE_OBJ_CODE,
        CONSUMER_DEPT_CODE,
        CONSUME_BEGIN_DATE,
        CONSUME_END_DATE,
        MODEL_DEVELOPMENT_TYPE_CODE,
        WORK_PRIORITY_CODE,
        SALE_DEAL_TYPE_CODE,
        CL_OFFER_RETURN_DATE,
        RETURN_DATE,
        CL_OFFER_LEASE_DATE_UNIT_QTY,
        CL_OFFER_LEASE_DATE_UNIT_CODE,
        LEASE_DATE_UNIT_QTY,
        LEASE_DATE_UNIT_CODE,
        IMPORT_DATE,
        ASPECT_TYPE_CODE,
        PROGNOSIS_BEGIN_DATE,
        PROGNOSIS_END_DATE,
        OUR_OFFER_LEASE_DATE_UNIT_QTY,
        OUR_OFFER_LEASE_DATE_UNIT_CODE,
        SHIPMENT_DAYS,
        DELIVERY_OBJECT_BRANCH_CODE,
        DELIVERY_OBJECT_CODE
      )
      values (
        :new.SALE_OBJECT_BRANCH_CODE, 
        :new.SALE_OBJECT_CODE, 
        :new.SALE_GROUP_OBJECT_BRANCH_CODE, 
        :new.SALE_GROUP_OBJECT_CODE, 
        :new.SALE_ORDER_TYPE_CODE, 
        :new.REQUEST_BRANCH_CODE, 
        :new.REQUEST_NO, 
        :new.REQUEST_LINE_NO, 
        :new.MANAGER_EMPLOYEE_CODE, 
        :new.CLIENT_COMPANY_CODE, 
        :new.CLIENT_REQUEST_NO, 
        :new.REQUEST_SEND_DATE, 
        :new.REQUEST_REGISTER_DATE, 
        :new.OFFER_SEND_PLAN_DATE, 
        :new.OFFER_SEND_DATE, 
        :new.OFFER_ANSWER_PLAN_DATE, 
        :new.OFFER_ANSWER_DATE, 
        :new.DECISION_PLAN_DATE, 
        :new.DECISION_DATE, 
        :new.DECISION_TYPE_CODE, 
        :new.DECISION_EMPLOYEE_CODE,
        :new.PRODUCT_CODE, 
        :new.QUANTITY, 
        :new.OUR_OFFER_QUANTITY, 
        :new.CL_OFFER_QUANTITY, 
        :new.MANUFACTURE_QUANTITY, 
        Coalesce(:new.MANUFACTURE_DECISION_EXPECTED, 0),
        :new.SINGLE_WEIGHT, 
        :new.MIN_BASE_PRICE, 
        :new.OUR_OFFER_CURRENCY_CODE,
        :new.CL_OFFER_CURRENCY_CODE,
        :new.CURRENCY_CODE, 
        :new.SINGLE_PRICE, 
        :new.OUR_OFFER_SINGLE_PRICE, 
        :new.CL_OFFER_SINGLE_PRICE, 
        :new.RECEIVE_DATE, 
        :new.CL_OFFER_RECEIVE_DATE, 
        :new.OUR_OFFER_RECEIVE_DATE, 
        :new.RECEIVE_PLACE_OFFICE_CODE, 
        :new.IS_VENDOR_TRANSPORT,
        :new.SHIPMENT_TYPE_CODE, 
        :new.CUSTOMHOUSE_CODE, 
        :new.NOTES, 
        :new.SALE_BRANCH_CODE, 
        :new.SALE_NO, 
        :new.SALE_TYPE_CODE, 
        :new.OKIDU_EMPLOYEE_CODE, 
        Coalesce(:new.SOS_OKIDU, 0),
        :new.PRODUCTION_START_PLAN_DATE, 
        :new.SHIPMENT_DATE, 
        :new.SHIPMENT_STORE_CODE, 
        :new.ENTER_SH_STORE_PLAN_BEGIN_DATE, 
        :new.ENTER_SH_STORE_PLAN_END_DATE, 
        Coalesce(:new.IS_ML_ENTRUSTED, 0),
        Coalesce(:new.IS_ML_NOT_NEEDED, 0),
        :new.ANNUL_EMPLOYEE_CODE, 
        :new.ANNUL_DATE, 
        :new.ANNUL_TIME, 
        :new.FINISH_EMPLOYEE_CODE, 
        :new.FINISH_DATE, 
        :new.FINISH_TIME, 
        :new.CREATE_EMPLOYEE_CODE, 
        :new.CREATE_DATE, 
        :new.CREATE_TIME, 
        :new.CHANGE_EMPLOYEE_CODE, 
        :new.CHANGE_DATE, 
        :new.CHANGE_TIME, 
        :new.MARKET_SINGLE_PRICE, 
        :new.DISCOUNT_PERCENT, 
        :new.CL_OFFER_QUANTITY_CHG, 
        :new.QUANTITY_CHG, 
        :new.CL_OFFER_RECEIVE_DATE_CH, 
        :new.RECEIVE_DATE_CHG, 
        :new.PRODUCTION_DEPT_CODE, 
        :new.DOC_BRANCH_CODE, 
        :new.DOC_CODE, 
        Coalesce(:new.TRANSIENT_STATUS_CODE, 1),
        :new.WORKDAYS_TO_EXIST,
        :new.PRODUCTION_ORDER_TYPE_CODE,
        Coalesce(:new.IS_AUTO_COMPLETIVE, 0),
        :new.WASTING_SALE_OBJ_BRANCH_CODE,
        :new.WASTING_SALE_OBJ_CODE,
        :new.CONSUMER_DEPT_CODE,
        :new.CONSUME_BEGIN_DATE,
        :new.CONSUME_END_DATE,
        Coalesce(:new.MODEL_DEVELOPMENT_TYPE_CODE, 1),
        :new.WORK_PRIORITY_CODE,
        :new.SALE_DEAL_TYPE_CODE,
        :new.CL_OFFER_RETURN_DATE,
        :new.RETURN_DATE,
        :new.CL_OFFER_LEASE_DATE_UNIT_QTY,
        :new.CL_OFFER_LEASE_DATE_UNIT_CODE,
        :new.LEASE_DATE_UNIT_QTY,
        :new.LEASE_DATE_UNIT_CODE,
        :new.IMPORT_DATE,
        :new.ASPECT_TYPE_CODE,
        :new.PROGNOSIS_BEGIN_DATE,
        :new.PROGNOSIS_END_DATE,
        :new.OUR_OFFER_LEASE_DATE_UNIT_QTY,
        :new.OUR_OFFER_LEASE_DATE_UNIT_CODE,
        :new.SHIPMENT_DAYS,
        :new.DELIVERY_OBJECT_BRANCH_CODE,
        :new.DELIVERY_OBJECT_CODE
      );

      if (:new.REQUEST_NO is not null) and
         (:new.FINISH_EMPLOYEE_CODE is not null) then
          
        update
          SALE_REQUEST_GROUPS_FOR_EDIT srg
        set
          srg.FINISH_EMPLOYEE_CODE = :new.FINISH_EMPLOYEE_CODE,
          srg.FINISH_DATE = :new.FINISH_DATE,
          srg.FINISH_TIME = :new.FINISH_TIME
        where
          (srg.REQUEST_BRANCH_CODE = :new.REQUEST_BRANCH_CODE) and
          (srg.REQUEST_NO = :new.REQUEST_NO) and
          not exists(
            select
              1
            from
              SALES s
            where
              (s.REQUEST_BRANCH_CODE = :new.REQUEST_BRANCH_CODE) and
              (s.REQUEST_NO = :new.REQUEST_NO) and          
              (s.ANNUL_EMPLOYEE_CODE is null) and          
              (s.FINISH_EMPLOYEE_CODE is null)
          );
      
      end if;
      
    exception
      when others then
        StateUtils.EndSfeUpdate;
        raise;
    end;
    StateUtils.EndSfeUpdate;
  end if;
    
end tr_SFE_II;
/
