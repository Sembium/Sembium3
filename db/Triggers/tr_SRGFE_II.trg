create or replace trigger tr_SRGFE_II
  instead of insert on SALE_REQUEST_GROUPS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSrgfeUpdate then
    StateUtils.BeginSrgfeUpdate;
    begin
    
      insert into SALE_REQUEST_GROUPS
      (
        ANNUL_DATE,
        ANNUL_EMPLOYEE_CODE,
        ANNUL_TIME,
        CHANGE_DATE,
        CHANGE_EMPLOYEE_CODE,
        CHANGE_TIME,
        CREATE_DATE,
        CREATE_EMPLOYEE_CODE,
        CREATE_TIME,
        DOC_BRANCH_CODE,
        DOC_CODE,
        FINISH_DATE,
        FINISH_EMPLOYEE_CODE,
        FINISH_TIME,
        REQUEST_BRANCH_CODE,
        REQUEST_NO,
        SALE_GROUP_OBJECT_BRANCH_CODE,
        SALE_GROUP_OBJECT_CODE,
        SALE_ORDER_TYPE_CODE,
        SALE_DEAL_TYPE_CODE,
        IS_ACTIVATED_BY_CLIENT,
        REQUEST_SEND_DATE,
        REQUEST_REGISTER_DATE,
        CLIENT_COMPANY_CODE,
        MEDIATOR_COMPANY_CODE,
        SRG_EMPLOYEE_CODE,
        CLIENT_REQUEST_GROUP_NO,
        STREAM_TYPE_CODE,
        PRODUCT_CLASS_CODE,
        NOTES
      )
      values
      (
        :new.ANNUL_DATE,
        :new.ANNUL_EMPLOYEE_CODE,
        :new.ANNUL_TIME,
        :new.CHANGE_DATE,
        :new.CHANGE_EMPLOYEE_CODE,
        :new.CHANGE_TIME,
        :new.CREATE_DATE,
        :new.CREATE_EMPLOYEE_CODE,
        :new.CREATE_TIME,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.FINISH_DATE,
        :new.FINISH_EMPLOYEE_CODE,
        :new.FINISH_TIME,
        :new.REQUEST_BRANCH_CODE,
        :new.REQUEST_NO,
        :new.SALE_GROUP_OBJECT_BRANCH_CODE,
        :new.SALE_GROUP_OBJECT_CODE,
        :new.SALE_ORDER_TYPE_CODE,
        :new.SALE_DEAL_TYPE_CODE,
        :new.IS_ACTIVATED_BY_CLIENT,
        :new.REQUEST_SEND_DATE,
        :new.REQUEST_REGISTER_DATE,
        :new.CLIENT_COMPANY_CODE,
        :new.MEDIATOR_COMPANY_CODE,
        :new.SRG_EMPLOYEE_CODE,
        :new.CLIENT_REQUEST_GROUP_NO,
        :new.STREAM_TYPE_CODE,
        :new.PRODUCT_CLASS_CODE,
        :new.NOTES
      );
    
    exception
      when others then
        StateUtils.EndSrgfeUpdate;
        raise;
    end;
    StateUtils.EndSrgfeUpdate;
  end if;

end tr_SRGFE_II;
/
