create or replace trigger tr_EET_BIU_CHECK_EE_RESOLVE
  before insert or update of EXCEPT_EVENT_CODE, CLOSE_EMPLOYEE_CODE, ANNUL_EMPLOYEE_CODE on EXCEPT_EVENT_TASKS
  for each row
declare
  IsExceptEventResolved Number;
begin

  if (:new.CLOSE_EMPLOYEE_CODE is null) or (:new.ANNUL_EMPLOYEE_CODE is null) then

    select
      Sign(Count(*))
    into
      IsExceptEventResolved
    from
      EXCEPT_EVENTS ee
    where
      (ee.EXCEPT_EVENT_CODE = :new.EXCEPT_EVENT_CODE) and
      (ee.RESOLVE_EMPLOYEE_CODE is not null);

    if (IsExceptEventResolved = 1) then
      raise_application_error(-20001, ServerMessages.SEEMustNotBeResolvedId);
    end if;

  end if;

end tr_EET_BIU_CHECK_EE_RESOLVE;
/
