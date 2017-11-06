create or replace trigger tr_DCDFE_II
  instead of insert on DCD_FOR_EDIT
  for each row
begin

  if not StateUtils.InDcdfeUpdate then
    StateUtils.BeginDcdfeUpdate;
    begin
    
      insert into DEFICIT_COVER_DECISIONS
      (
        DCD_OBJECT_BRANCH_CODE,
        DCD_OBJECT_CODE,
        DCD_BRANCH_CODE,
        DCD_CODE,
        VPD_EMPLOYEE_CODE,
        IS_DONE,
        IS_CANCELED,
        CREATE_EMPLOYEE_CODE,
        CREATE_DATE,
        CREATE_TIME,
        CHANGE_EMPLOYEE_CODE,
        CHANGE_DATE,
        CHANGE_TIME,
        DOC_BRANCH_CODE,
        DOC_CODE,
        DELIVERY_DEAL_TYPE_CODE,
        ASPECT_TYPE_CODE,
        STREAM_TYPE_CODE,
        DCD_MODE_CODE,
        PLAN_DECISION_DATE,
        P_PRODUCT_CODE,
        P_DEFICIT_COVER_DATE,
        P_WORK_QUANTITY,
        P_ACCOUNT_QUANTITY,
        P_PSD_STORE_CODE,
        P_LEASE_DATE_UNIT_QUANTITY,
        P_LEASE_DATE_UNIT_CODE,
        P_RECEIVE_DATE,
        P_RETURN_DATE,
        V_VENDOR_COMPANY_CODE,
        V_MEDIATOR_COMPANY_CODE,
        V_START_DATE,
        V_REGISTER_DATE,
        V_PLAN_POSITION_DATE,
        V_REAL_POSITION_DATE,
        V_PLAN_VENDOR_POSITION_DATE,
        V_REAL_VENDOR_POSITION_DATE,
        PRODUCT_CLASS_CODE
      )
      values
      (
        :new.DCD_OBJECT_BRANCH_CODE,
        :new.DCD_OBJECT_CODE,
        :new.DCD_BRANCH_CODE,
        :new.DCD_CODE,
        :new.VPD_EMPLOYEE_CODE,
        :new.IS_DONE,
        :new.IS_CANCELED,
        :new.CREATE_EMPLOYEE_CODE,
        :new.CREATE_DATE,
        :new.CREATE_TIME,
        :new.CHANGE_EMPLOYEE_CODE,
        :new.CHANGE_DATE,
        :new.CHANGE_TIME,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.DELIVERY_DEAL_TYPE_CODE,
        :new.ASPECT_TYPE_CODE,
        :new.STREAM_TYPE_CODE,
        :new.DCD_MODE_CODE,
        :new.PLAN_DECISION_DATE,
        :new.P_PRODUCT_CODE,
        :new.P_DEFICIT_COVER_DATE,
        :new.P_WORK_QUANTITY,
        :new.P_ACCOUNT_QUANTITY,
        :new.P_PSD_STORE_CODE,
        :new.P_LEASE_DATE_UNIT_QUANTITY,
        :new.P_LEASE_DATE_UNIT_CODE,
        :new.P_RECEIVE_DATE,
        :new.P_RETURN_DATE,
        :new.V_VENDOR_COMPANY_CODE,
        :new.V_MEDIATOR_COMPANY_CODE,
        :new.V_START_DATE,
        :new.V_REGISTER_DATE,
        :new.V_PLAN_POSITION_DATE,
        :new.V_REAL_POSITION_DATE,
        :new.V_PLAN_VENDOR_POSITION_DATE,
        :new.V_REAL_VENDOR_POSITION_DATE,
        :new.PRODUCT_CLASS_CODE
      );
    
    exception
      when others then
        StateUtils.EndDcdfeUpdate;
        raise;
    end;
    StateUtils.EndDcdfeUpdate;
  end if;

end tr_DCDFE_II;
/
