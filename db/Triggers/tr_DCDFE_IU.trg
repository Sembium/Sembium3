create or replace trigger tr_DCDFE_IU
  instead of update on DCD_FOR_EDIT
  for each row
begin

  if not StateUtils.InDcdfeUpdate then
    StateUtils.BeginDcdfeUpdate;
    begin
    
      if ( (:new.DCD_OBJECT_BRANCH_CODE <> :old.DCD_OBJECT_BRANCH_CODE) or 
           (:new.DCD_OBJECT_CODE <> :old.DCD_OBJECT_CODE) ) then
        raise_application_error(-20000, 'Internal error: DEFICIT_COVER_DECISIONS key should not be changed');
      end if;

      if (:new.DCD_MODE_CODE <> :old.DCD_MODE_CODE) then
        raise_application_error(-20000, 'Internal error: DEFICIT_COVER_DECISIONS.DCD_MODE_CODE should not be changed');
      end if;
      
      if (:new.PRODUCT_CLASS_CODE <> :old.PRODUCT_CLASS_CODE) then
        raise_application_error(-20000, 'Internal error: DEFICIT_COVER_DECISIONS.PRODUCT_CLASS_CODE should not be changed');
      end if;

      update
        DEFICIT_COVER_DECISIONS dcd
      set
        dcd.DCD_BRANCH_CODE = :new.DCD_BRANCH_CODE,
        dcd.DCD_CODE = :new.DCD_CODE,
        dcd.VPD_EMPLOYEE_CODE = :new.VPD_EMPLOYEE_CODE,
        dcd.IS_DONE = :new.IS_DONE,
        dcd.IS_CANCELED = :new.IS_CANCELED,
        dcd.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
        dcd.CREATE_DATE = :new.CREATE_DATE,
        dcd.CREATE_TIME = :new.CREATE_TIME,
        dcd.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        dcd.CHANGE_DATE = :new.CHANGE_DATE,
        dcd.CHANGE_TIME = :new.CHANGE_TIME,
        dcd.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        dcd.DOC_CODE = :new.DOC_CODE,
        dcd.DELIVERY_DEAL_TYPE_CODE = :new.DELIVERY_DEAL_TYPE_CODE,
        dcd.ASPECT_TYPE_CODE = :new.ASPECT_TYPE_CODE,
        dcd.STREAM_TYPE_CODE = :new.STREAM_TYPE_CODE,
        dcd.DCD_MODE_CODE = :new.DCD_MODE_CODE,
        dcd.PLAN_DECISION_DATE = :new.PLAN_DECISION_DATE,
        dcd.P_PRODUCT_CODE = :new.P_PRODUCT_CODE,
        dcd.P_DEFICIT_COVER_DATE = :new.P_DEFICIT_COVER_DATE,
        dcd.P_WORK_QUANTITY = :new.P_WORK_QUANTITY,
        dcd.P_ACCOUNT_QUANTITY = :new.P_ACCOUNT_QUANTITY,
        dcd.P_PSD_STORE_CODE = :new.P_PSD_STORE_CODE,
        dcd.P_LEASE_DATE_UNIT_QUANTITY = :new.P_LEASE_DATE_UNIT_QUANTITY,
        dcd.P_LEASE_DATE_UNIT_CODE = :new.P_LEASE_DATE_UNIT_CODE,
        dcd.P_RECEIVE_DATE = :new.P_RECEIVE_DATE,
        dcd.P_RETURN_DATE = :new.P_RETURN_DATE,
        dcd.V_VENDOR_COMPANY_CODE = :new.V_VENDOR_COMPANY_CODE,
        dcd.V_MEDIATOR_COMPANY_CODE = :new.V_MEDIATOR_COMPANY_CODE,
        dcd.V_START_DATE = :new.V_START_DATE,
        dcd.V_REGISTER_DATE = :new.V_REGISTER_DATE,
        dcd.V_PLAN_POSITION_DATE = :new.V_PLAN_POSITION_DATE,
        dcd.V_REAL_POSITION_DATE = :new.V_REAL_POSITION_DATE,
        dcd.V_PLAN_VENDOR_POSITION_DATE = :new.V_PLAN_VENDOR_POSITION_DATE,
        dcd.V_REAL_VENDOR_POSITION_DATE = :new.V_REAL_VENDOR_POSITION_DATE,
        dcd.PRODUCT_CLASS_CODE = :new.PRODUCT_CLASS_CODE
      where
        (dcd.DCD_OBJECT_BRANCH_CODE = :old.DCD_OBJECT_BRANCH_CODE) and
        (dcd.DCD_OBJECT_CODE = :old.DCD_OBJECT_CODE);
        
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
      
      if (:old.IS_DONE = 0) and (:new.IS_DONE = 1) then
      
        update
          PLANNED_STORE_DEALS_FOR_EDIT psd
        set
          psd.CLOSE_EMPLOYEE_CODE = LoginContext.UserCode,
          psd.CLOSE_DATE = Trunc(ContextDate),
          psd.CLOSE_TIME = TimeOf(ContextDate)
        where
          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :old.DCD_OBJECT_BRANCH_CODE) and
          (psd.BND_PROCESS_OBJECT_CODE = :old.DCD_OBJECT_CODE);
      
      end if;

      if (:old.DCD_MODE_CODE = CommonConsts.dcdmObjective) and
         ( not MiscUtils.IsEqual(:old.P_PRODUCT_CODE, :new.P_PRODUCT_CODE) or
           not MiscUtils.IsEqual(:old.P_PSD_STORE_CODE, :new.P_PSD_STORE_CODE) or
           not MiscUtils.IsEqual(:old.P_DEFICIT_COVER_DATE, :new.P_DEFICIT_COVER_DATE)
         ) then

        update
          DELIVERY_PROJECTS_FOR_EDIT dpfe
        set
          dpfe.PRODUCT_CODE = :new.P_PRODUCT_CODE,
          dpfe.PSD_STORE_CODE = :new.P_PSD_STORE_CODE,
          dpfe.DEFICIT_COVER_DATE = :new.P_DEFICIT_COVER_DATE
        where
          (dpfe.DCD_OBJECT_BRANCH_CODE = :new.DCD_OBJECT_BRANCH_CODE) and
          (dpfe.DCD_OBJECT_CODE = :new.DCD_OBJECT_CODE);

      end if;

      if (:new.DCD_MODE_CODE = CommonConsts.dcdmSubjective) and
         ( not MiscUtils.IsEqual(:old.V_VENDOR_COMPANY_CODE, :new.V_VENDOR_COMPANY_CODE) or
           not MiscUtils.IsEqual(:old.V_MEDIATOR_COMPANY_CODE, :new.V_MEDIATOR_COMPANY_CODE) or
           not MiscUtils.IsEqual(:old.V_START_DATE, :new.V_START_DATE) or
           not MiscUtils.IsEqual(:old.V_REGISTER_DATE, :new.V_REGISTER_DATE) or
           not MiscUtils.IsEqual(:old.V_PLAN_POSITION_DATE, :new.V_PLAN_POSITION_DATE) or
           not MiscUtils.IsEqual(:old.V_REAL_POSITION_DATE, :new.V_REAL_POSITION_DATE) or
           not MiscUtils.IsEqual(:old.V_PLAN_VENDOR_POSITION_DATE, :new.V_PLAN_VENDOR_POSITION_DATE) or
           not MiscUtils.IsEqual(:old.V_REAL_VENDOR_POSITION_DATE, :new.V_REAL_VENDOR_POSITION_DATE)
         ) then

        update
          DELIVERY_PROJECTS_FOR_EDIT dpfe
        set
          dpfe.VENDOR_COMPANY_CODE = :new.V_VENDOR_COMPANY_CODE,
          dpfe.MEDIATOR_COMPANY_CODE = :new.V_MEDIATOR_COMPANY_CODE,
          dpfe.START_DATE = :new.V_START_DATE,
          dpfe.REGISTER_DATE = :new.V_REGISTER_DATE,
          dpfe.PLAN_POSITION_DATE = :new.V_PLAN_POSITION_DATE,
          dpfe.REAL_POSITION_DATE = :new.V_REAL_POSITION_DATE,
          dpfe.PLAN_VENDOR_POSITION_DATE = :new.V_PLAN_VENDOR_POSITION_DATE,
          dpfe.REAL_VENDOR_POSITION_DATE = :new.V_REAL_VENDOR_POSITION_DATE
        where
          (dpfe.DCD_OBJECT_BRANCH_CODE = :new.DCD_OBJECT_BRANCH_CODE) and
          (dpfe.DCD_OBJECT_CODE = :new.DCD_OBJECT_CODE);

      end if;

    exception
      when others then
        StateUtils.EndDcdfeUpdate;
        raise;
    end;
    StateUtils.EndDcdfeUpdate;
  end if;

end tr_DCDFE_IU;
/
