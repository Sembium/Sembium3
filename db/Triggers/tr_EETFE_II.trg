create or replace trigger tr_EETFE_II
  instead of insert on EXCEPT_EVENT_TASKS_FOR_EDIT
  for each row
begin

  if not StateUtils.InEetfeUpdate then
    StateUtils.BeginEetfeUpdate;
    begin
    
      insert into EXCEPT_EVENT_TASKS
      (
        EXCEPT_EVENT_TASK_CODE,
        EXCEPT_EVENT_CODE,
        EXCEPT_EVENT_TASK_NO,
        DEPT_CODE,
        EMPLOYEE_CODE,
        DESCRIPTION,
        DOC_BRANCH_CODE,
        DOC_CODE,
        NOTES,
        ACTIVATE_EMPLOYEE_CODE,
        ACTIVATE_DATE,
        ACTIVATE_TIME,
        PLAN_DATE,
        PROBLEM_ENCOUNTER_EMP_CODE,
        PROBLEM_ENCOUNTER_DATE,
        PROBLEM_ENCOUNTER_TIME,
        PROBLEM_RESOLVE_EMPLOYEE_CODE,
        PROBLEM_RESOLVE_DATE,
        PROBLEM_RESOLVE_TIME,
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
        EE_TASK_RESOLVE_TYPE_CODE
      )
      values
      (
        :new.EXCEPT_EVENT_TASK_CODE,
        :new.EXCEPT_EVENT_CODE,
        :new.EXCEPT_EVENT_TASK_NO,
        :new.DEPT_CODE,
        :new.EMPLOYEE_CODE,
        :new.DESCRIPTION,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.NOTES,
        :new.ACTIVATE_EMPLOYEE_CODE,
        :new.ACTIVATE_DATE,
        :new.ACTIVATE_TIME,
        :new.PLAN_DATE,
        :new.PROBLEM_ENCOUNTER_EMP_CODE,
        :new.PROBLEM_ENCOUNTER_DATE,
        :new.PROBLEM_ENCOUNTER_TIME,
        :new.PROBLEM_RESOLVE_EMPLOYEE_CODE,
        :new.PROBLEM_RESOLVE_DATE,
        :new.PROBLEM_RESOLVE_TIME,
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
        :new.EE_TASK_RESOLVE_TYPE_CODE
      );
    
    exception
      when others then
        StateUtils.EndEetfeUpdate;
        raise;
    end;
    StateUtils.EndEetfeUpdate;
  end if;

end tr_EETFE_II;
/
