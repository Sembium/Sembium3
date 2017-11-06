create or replace trigger tr_OTPFE_II
  instead of insert on ORG_TASK_PROPOSALS_FOR_EDIT
  for each row
begin

  if not StateUtils.InOtpfeUpdate then
    StateUtils.BeginOtpfeUpdate;
    begin

      insert into ORG_TASK_PROPOSALS
      (
        ORG_TASK_PROPOSAL_CODE,
        ORG_TASK_PROPOSAL_NO,
        DESCRIPTION,
        DOC_BRANCH_CODE,
        DOC_CODE,
        PLAN_PROPOSAL_DATE,
        PLAN_PROPOSAL_EMPLOYEE_CODE,
        RESULT_DATE,
        ORG_TASK_PROP_RESULT_TYPE_CODE,
        REPLACED_ORG_TASK_PROP_CODE,
        PRODUCT_CODE,
        DEPT_CODE,
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
        SALE_OBJECT_BRANCH_CODE,
        SALE_OBJECT_CODE,
        IS_PREMATURELY_CLOSED,
        ENGINEERING_PRICE,
        ENGINEERING_PLAN_BEGIN_DATE,
        ENGINEERING_PLAN_END_DATE,
        PRODUCTION_PRICE,
        PRODUCTION_PLAN_BEGIN_DATE,
        PRODUCTION_PLAN_END_DATE,
        APPLY_PRICE,
        MANAGER_EMPLOYEE_CODE
      )
      values
      (
        :new.ORG_TASK_PROPOSAL_CODE,
        :new.ORG_TASK_PROPOSAL_NO,
        :new.DESCRIPTION,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.PLAN_PROPOSAL_DATE,
        :new.PLAN_PROPOSAL_EMPLOYEE_CODE,
        :new.RESULT_DATE,
        :new.ORG_TASK_PROP_RESULT_TYPE_CODE,
        :new.REPLACED_ORG_TASK_PROP_CODE,
        :new.PRODUCT_CODE,
        :new.DEPT_CODE,
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
        :new.SALE_OBJECT_BRANCH_CODE,
        :new.SALE_OBJECT_CODE,
        Coalesce(:new.IS_PREMATURELY_CLOSED, 0),
        :new.ENGINEERING_PRICE,
        :new.ENGINEERING_PLAN_BEGIN_DATE,
        :new.ENGINEERING_PLAN_END_DATE,
        :new.PRODUCTION_PRICE,
        :new.PRODUCTION_PLAN_BEGIN_DATE,
        :new.PRODUCTION_PLAN_END_DATE,
        :new.APPLY_PRICE,
        :new.MANAGER_EMPLOYEE_CODE
      );
    
    exception
      when others then
        StateUtils.EndOtpfeUpdate;
        raise;
    end;
    StateUtils.EndOtpfeUpdate;
  end if;

end tr_OTPFE_II;
/
