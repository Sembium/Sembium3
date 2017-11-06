create or replace trigger tr_EET_BIU_CHECK_EE_RSLV_TYPE
  before insert or update of EXCEPT_EVENT_CODE, EE_TASK_RESOLVE_TYPE_CODE on EXCEPT_EVENT_TASKS
  for each row
declare
  IsExceptEventSingleResolvable Number;
begin

  if (:new.EE_TASK_RESOLVE_TYPE_CODE = CommonConsts.eetrtSingleResolve) then

    select
      Sign(Count(*))
    into
      IsExceptEventSingleResolvable
    from
      EXCEPT_EVENTS ee
    where
      (ee.EXCEPT_EVENT_CODE = :new.EXCEPT_EVENT_CODE) and
      (ee.IS_SINGLE_RESOLVABLE = 1);

    if (IsExceptEventSingleResolvable = 0) then
      raise_application_error(-20001, ServerMessages.SEEMustBeSingleResolvableId);
    end if;

  end if;


  if updating and
     (:old.EE_TASK_RESOLVE_TYPE_CODE <> :new.EE_TASK_RESOLVE_TYPE_CODE) and
     (:old.ACTIVATE_EMPLOYEE_CODE is not null) then
     
     raise_application_error(-20001, 'Internal assertion: Cannot change EE_TASK_RESOLVE_TYPE_CODE when EXCEPT_EVENT_TASK is activated');
     
  end if;

end;
/
