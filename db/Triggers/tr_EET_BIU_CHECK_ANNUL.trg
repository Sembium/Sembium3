create or replace trigger tr_EET_BIU_CHECK_ANNUL
  before insert or update of EXCEPT_EVENT_CODE, ANNUL_EMPLOYEE_CODE on EXCEPT_EVENT_TASKS
  for each row
declare
  IsExceptEventAnnuled Number;
begin

  if (:new.ANNUL_EMPLOYEE_CODE is null) then

    select
      Sign(Count(*))
    into
      IsExceptEventAnnuled
    from
      EXCEPT_EVENTS ee
    where
      (ee.EXCEPT_EVENT_CODE = :new.EXCEPT_EVENT_CODE) and
      (ee.ANNUL_EMPLOYEE_CODE is not null);

    if (IsExceptEventAnnuled = 1) then
      raise_application_error(-20001, ServerMessages.SExceptEventMustBeAnnuledId);
    end if;

  end if;

end tr_EET_BIU_CHECK_ANNUL;
/
