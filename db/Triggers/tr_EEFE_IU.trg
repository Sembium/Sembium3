create or replace trigger tr_EEFE_IU
  instead of update on EXCEPT_EVENTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InEefeUpdate then
    StateUtils.BeginEefeUpdate;
    begin

      if (:new.EXCEPT_EVENT_CODE <> :old.EXCEPT_EVENT_CODE) then
        raise_application_error(-20000, 'Internal error: EXCEPT_EVENTS key should not be changed');
      end if;

      update
        EXCEPT_EVENTS ee
      set
        ee.EXCEPT_EVENT_NO = :new.EXCEPT_EVENT_NO,
        ee.EXCEPT_EVENT_TYPE_CODE = :new.EXCEPT_EVENT_TYPE_CODE,
        ee.EXCEPT_EVENT_LEVEL_CODE = :new.EXCEPT_EVENT_LEVEL_CODE,
        ee.EXCEPT_EVENT_GEN_TYPE_CODE = :new.EXCEPT_EVENT_GEN_TYPE_CODE,
        ee.PRODUCT_CODE = :new.PRODUCT_CODE,
        ee.DEPT_CODE = :new.DEPT_CODE,
        ee.DESCRIPTION = :new.DESCRIPTION,
        ee.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        ee.DOC_CODE = :new.DOC_CODE,
        ee.DETECT_DEPT_CODE = :new.DETECT_DEPT_CODE,
        ee.DETECT_EMPLOYEE_CODE = :new.DETECT_EMPLOYEE_CODE,
        ee.DETECT_DATE = :new.DETECT_DATE,
        ee.DETECT_TIME = :new.DETECT_TIME,
        ee.CTRL_DEPT_CODE = :new.CTRL_DEPT_CODE,
        ee.CTRL_ACCEPT_EMPLOYEE_CODE = :new.CTRL_ACCEPT_EMPLOYEE_CODE,
        ee.CTRL_ACCEPT_DATE = :new.CTRL_ACCEPT_DATE,
        ee.CTRL_ACCEPT_TIME = :new.CTRL_ACCEPT_TIME,
        ee.CTRL_MAIN_EMPLOYEE_CODE = :new.CTRL_MAIN_EMPLOYEE_CODE,
        ee.CTRL_ACTIVATE_EMPLOYEE_CODE = :new.CTRL_ACTIVATE_EMPLOYEE_CODE,
        ee.CTRL_ACTIVATE_DATE = :new.CTRL_ACTIVATE_DATE,
        ee.CTRL_ACTIVATE_TIME = :new.CTRL_ACTIVATE_TIME,
        ee.DMG_RESOLVE_PLAN_BEGIN_DATE = :new.DMG_RESOLVE_PLAN_BEGIN_DATE,
        ee.DMG_RESOLVE_PLAN_END_DATE = :new.DMG_RESOLVE_PLAN_END_DATE,
        ee.DMG_RESOLVE_EMPLOYEE_CODE = :new.DMG_RESOLVE_EMPLOYEE_CODE,
        ee.DMG_RESOLVE_DATE = :new.DMG_RESOLVE_DATE,
        ee.DMG_RESOLVE_TIME = :new.DMG_RESOLVE_TIME,
        ee.RESOLVE_PLAN_BEGIN_DATE = :new.RESOLVE_PLAN_BEGIN_DATE,
        ee.RESOLVE_PLAN_END_DATE = :new.RESOLVE_PLAN_END_DATE,
        ee.RESOLVE_EMPLOYEE_CODE = :new.RESOLVE_EMPLOYEE_CODE,
        ee.RESOLVE_DATE = :new.RESOLVE_DATE,
        ee.RESOLVE_TIME = :new.RESOLVE_TIME,
        ee.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
        ee.CREATE_DATE = :new.CREATE_DATE,
        ee.CREATE_TIME = :new.CREATE_TIME,
        ee.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        ee.CHANGE_DATE = :new.CHANGE_DATE,
        ee.CHANGE_TIME = :new.CHANGE_TIME,
        ee.CLOSE_EMPLOYEE_CODE = :new.CLOSE_EMPLOYEE_CODE,
        ee.CLOSE_DATE = :new.CLOSE_DATE,
        ee.CLOSE_TIME = :new.CLOSE_TIME,
        ee.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE,
        ee.ANNUL_DATE = :new.ANNUL_DATE,
        ee.ANNUL_TIME = :new.ANNUL_TIME,
        ee.OM_BRANCH_CODE = :new.OM_BRANCH_CODE,
        ee.OM_CODE = :new.OM_CODE,
        ee.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE,
        ee.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE,
        ee.DCD_OBJECT_BRANCH_CODE = :new.DCD_OBJECT_BRANCH_CODE,
        ee.DCD_OBJECT_CODE = :new.DCD_OBJECT_CODE,
        ee.DELIVERY_PROJECT_CODE = :new.DELIVERY_PROJECT_CODE,
        ee.ORG_TASK_PROPOSAL_CODE = :new.ORG_TASK_PROPOSAL_CODE,
        ee.OTP_BIND_EMPLOYEE_CODE = :new.OTP_BIND_EMPLOYEE_CODE,
        ee.OTP_BIND_DATE = :new.OTP_BIND_DATE,
        ee.OTP_BIND_TIME = :new.OTP_BIND_TIME,
        ee.PRODUCT_QUANTITY = :new.PRODUCT_QUANTITY,
        ee.PRC_CONCRETE_OP_CODE = :new.PRC_CONCRETE_OP_CODE,
        ee.IS_SINGLE_RESOLVABLE = :new.IS_SINGLE_RESOLVABLE
      where
        (ee.EXCEPT_EVENT_CODE = :old.EXCEPT_EVENT_CODE);

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
        StateUtils.EndEefeUpdate;
        raise;
    end;
    StateUtils.EndEefeUpdate;
  end if;

end tr_EEFE_IU;
/
