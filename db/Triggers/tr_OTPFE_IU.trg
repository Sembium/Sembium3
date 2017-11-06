create or replace trigger tr_OTPFE_IU
  instead of update on ORG_TASK_PROPOSALS_FOR_EDIT
  for each row
begin

  if not StateUtils.InOtpfeUpdate then
    StateUtils.BeginOtpfeUpdate;
    begin
    
      if (:new.ORG_TASK_PROPOSAL_CODE <> :old.ORG_TASK_PROPOSAL_CODE) then
        raise_application_error(-20000, 'Internal error: ORG_TASK_PROPOSALS key should not be changed');
      end if;
      
      update
        ORG_TASK_PROPOSALS otp
      set
        otp.ORG_TASK_PROPOSAL_NO = :new.ORG_TASK_PROPOSAL_NO,
        otp.DESCRIPTION = :new.DESCRIPTION,
        otp.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        otp.DOC_CODE = :new.DOC_CODE,
        otp.PLAN_PROPOSAL_DATE = :new.PLAN_PROPOSAL_DATE,
        otp.PLAN_PROPOSAL_EMPLOYEE_CODE = :new.PLAN_PROPOSAL_EMPLOYEE_CODE,
        otp.RESULT_DATE = :new.RESULT_DATE,
        otp.ORG_TASK_PROP_RESULT_TYPE_CODE = :new.ORG_TASK_PROP_RESULT_TYPE_CODE,
        otp.REPLACED_ORG_TASK_PROP_CODE = :new.REPLACED_ORG_TASK_PROP_CODE,
        otp.PRODUCT_CODE = :new.PRODUCT_CODE,
        otp.DEPT_CODE = :new.DEPT_CODE,
        otp.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
        otp.CREATE_DATE = :new.CREATE_DATE,
        otp.CREATE_TIME = :new.CREATE_TIME,
        otp.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        otp.CHANGE_DATE = :new.CHANGE_DATE,
        otp.CHANGE_TIME = :new.CHANGE_TIME,
        otp.CLOSE_EMPLOYEE_CODE = :new.CLOSE_EMPLOYEE_CODE,
        otp.CLOSE_DATE = :new.CLOSE_DATE,
        otp.CLOSE_TIME = :new.CLOSE_TIME,
        otp.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE,
        otp.ANNUL_DATE = :new.ANNUL_DATE,
        otp.ANNUL_TIME = :new.ANNUL_TIME,
        otp.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE,
        otp.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE,
        otp.IS_PREMATURELY_CLOSED = Coalesce(:new.IS_PREMATURELY_CLOSED, 0),
        otp.ENGINEERING_PRICE = :new.ENGINEERING_PRICE,
        otp.ENGINEERING_PLAN_BEGIN_DATE = :new.ENGINEERING_PLAN_BEGIN_DATE,
        otp.ENGINEERING_PLAN_END_DATE = :new.ENGINEERING_PLAN_END_DATE,
        otp.PRODUCTION_PRICE = :new.PRODUCTION_PRICE,
        otp.PRODUCTION_PLAN_BEGIN_DATE = :new.PRODUCTION_PLAN_BEGIN_DATE,
        otp.PRODUCTION_PLAN_END_DATE = :new.PRODUCTION_PLAN_END_DATE,
        otp.APPLY_PRICE = :new.APPLY_PRICE,
        otp.MANAGER_EMPLOYEE_CODE = :new.MANAGER_EMPLOYEE_CODE
      where
        (otp.ORG_TASK_PROPOSAL_CODE = :old.ORG_TASK_PROPOSAL_CODE);
        
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
        StateUtils.EndOtpfeUpdate;
        raise;
    end;
    StateUtils.EndOtpfeUpdate;
  end if;

end tr_OTPFE_IU;
/
