create or replace trigger tr_EE_BU_CHECK_ANNUL
  before update of ANNUL_EMPLOYEE_CODE on EXCEPT_EVENTS
  for each row
declare
  HasUnannuledTasks Number;
begin

  if (:old.ANNUL_EMPLOYEE_CODE is null) and (:new.ANNUL_EMPLOYEE_CODE is not null) then

    select
      Sign(Count(*))
    into
      HasUnannuledTasks
    from
      EXCEPT_EVENT_TASKS eet
    where
      (eet.EXCEPT_EVENT_CODE = :new.EXCEPT_EVENT_CODE) and
      (eet.ANNUL_EMPLOYEE_CODE is null);

    if (HasUnannuledTasks = 1) then
      raise_application_error(-20001, ServerMessages.SEEHasUnannuledTasksId);
    end if;

  end if;

end tr_EE_BU_CHECK_ANNUL;
/
