create or replace trigger tr_EE_BU_CHECK_TASKS
  before update of IS_SINGLE_RESOLVABLE on EXCEPT_EVENTS
  for each row
declare
  HasSingleResolveTasks Number;
begin

  if (:new.IS_SINGLE_RESOLVABLE = 0) then

    select
      Sign(Count(*))
    into
      HasSingleResolveTasks
    from
      EXCEPT_EVENT_TASKS eet
    where
      (eet.EXCEPT_EVENT_CODE = :new.EXCEPT_EVENT_CODE) and
      (eet.EE_TASK_RESOLVE_TYPE_CODE = CommonConsts.eetrtSingleResolve);

    if (HasSingleResolveTasks = 1) then
      raise_application_error(-20001, ServerMessages.SEEHasSingleResolveTasksId);
    end if;

  end if;

end;
/
