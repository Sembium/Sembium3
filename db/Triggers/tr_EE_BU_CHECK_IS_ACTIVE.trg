create or replace trigger tr_EE_BU_CHECK_IS_ACTIVE
  before update of CTRL_ACTIVATE_EMPLOYEE_CODE on EXCEPT_EVENTS
  for each row
declare
  HasDamages Number;
  HasTasks Number;
begin

  if (:new.CTRL_ACTIVATE_EMPLOYEE_CODE is null) then

    select
      Sign(Count(*))
    into
      HasDamages
    from
      EXCEPT_EVENT_DAMAGES eed
    where
      (eed.EXCEPT_EVENT_CODE = :old.EXCEPT_EVENT_CODE);

    if (HasDamages = 1) then
      raise_application_error(-20001, ServerMessages.SExceptEventHasDamagesId);
    end if;

    select
      Sign(Count(*))
    into
      HasTasks
    from
      EXCEPT_EVENT_TASKS eet
    where
      (eet.EXCEPT_EVENT_CODE = :old.EXCEPT_EVENT_CODE);

    if (HasTasks = 1) then
      raise_application_error(-20001, ServerMessages.SExceptEventHasTasksId);
    end if;

  end if;

end;
/
