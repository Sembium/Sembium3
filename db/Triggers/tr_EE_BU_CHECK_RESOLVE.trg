create or replace trigger tr_EE_BU_CHECK_RESOLVE
  before update of RESOLVE_EMPLOYEE_CODE on EXCEPT_EVENTS
  for each row
declare
  HasUnclosedTasks Number;
begin

  if (:old.RESOLVE_EMPLOYEE_CODE is null) and (:new.RESOLVE_EMPLOYEE_CODE is not null) then

    select
      Sign(Count(*))
    into
      HasUnclosedTasks
    from
      EXCEPT_EVENT_TASKS eet
    where
      (eet.EXCEPT_EVENT_CODE = :new.EXCEPT_EVENT_CODE) and
      (eet.CLOSE_EMPLOYEE_CODE is null) and
      (eet.ANNUL_EMPLOYEE_CODE is null);

    if (HasUnclosedTasks = 1) then
      raise_application_error(-20001, ServerMessages.SExceptEventHasUnclosedTasksId);
    end if;

  end if;

end tr_EE_BU_CHECK_RESOLVE;
/
