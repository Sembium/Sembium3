create or replace trigger tr_EETFE_IU
  instead of update on EXCEPT_EVENT_TASKS_FOR_EDIT
  for each row
begin

  if not StateUtils.InEetfeUpdate then
    StateUtils.BeginEetfeUpdate;
    begin
    
      if (:new.EXCEPT_EVENT_TASK_CODE <> :old.EXCEPT_EVENT_TASK_CODE) then
        raise_application_error(-20000, 'Internal error: EXCEPT_EVENT_TASKS key should not be changed');
      end if;
      
      update
        EXCEPT_EVENT_TASKS eet
      set
        eet.EXCEPT_EVENT_CODE = :new.EXCEPT_EVENT_CODE,
        eet.EXCEPT_EVENT_TASK_NO = :new.EXCEPT_EVENT_TASK_NO,
        eet.DEPT_CODE = :new.DEPT_CODE,
        eet.EMPLOYEE_CODE = :new.EMPLOYEE_CODE,
        eet.DESCRIPTION = :new.DESCRIPTION,
        eet.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        eet.DOC_CODE = :new.DOC_CODE,
        eet.NOTES = :new.NOTES,
        eet.ACTIVATE_EMPLOYEE_CODE = :new.ACTIVATE_EMPLOYEE_CODE,
        eet.ACTIVATE_DATE = :new.ACTIVATE_DATE,
        eet.ACTIVATE_TIME = :new.ACTIVATE_TIME,
        eet.PLAN_DATE = :new.PLAN_DATE,
        eet.PROBLEM_ENCOUNTER_EMP_CODE = :new.PROBLEM_ENCOUNTER_EMP_CODE,
        eet.PROBLEM_ENCOUNTER_DATE = :new.PROBLEM_ENCOUNTER_DATE,
        eet.PROBLEM_ENCOUNTER_TIME = :new.PROBLEM_ENCOUNTER_TIME,
        eet.PROBLEM_RESOLVE_EMPLOYEE_CODE = :new.PROBLEM_RESOLVE_EMPLOYEE_CODE,
        eet.PROBLEM_RESOLVE_DATE = :new.PROBLEM_RESOLVE_DATE,
        eet.PROBLEM_RESOLVE_TIME = :new.PROBLEM_RESOLVE_TIME,
        eet.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
        eet.CREATE_DATE = :new.CREATE_DATE,
        eet.CREATE_TIME = :new.CREATE_TIME,
        eet.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        eet.CHANGE_DATE = :new.CHANGE_DATE,
        eet.CHANGE_TIME = :new.CHANGE_TIME,
        eet.CLOSE_EMPLOYEE_CODE = :new.CLOSE_EMPLOYEE_CODE,
        eet.CLOSE_DATE = :new.CLOSE_DATE,
        eet.CLOSE_TIME = :new.CLOSE_TIME,
        eet.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE,
        eet.ANNUL_DATE = :new.ANNUL_DATE,
        eet.ANNUL_TIME = :new.ANNUL_TIME,
        eet.EE_TASK_RESOLVE_TYPE_CODE = :new.EE_TASK_RESOLVE_TYPE_CODE
      where
        (eet.EXCEPT_EVENT_TASK_CODE = :old.EXCEPT_EVENT_TASK_CODE);

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
        StateUtils.EndEetfeUpdate;
        raise;
    end;
    StateUtils.EndEetfeUpdate;
  end if;

end tr_EETFE_IU;
/
