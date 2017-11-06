create or replace trigger tr_EET_BI_CHECK_EE_IS_ACTIVE
  before insert on EXCEPT_EVENT_TASKS
  for each row
declare
  IsExceptEventActive Number;
begin

  select
    Sign(Count(*))
  into
    IsExceptEventActive
  from
    EXCEPT_EVENTS ee
  where
    (ee.EXCEPT_EVENT_CODE = :new.EXCEPT_EVENT_CODE) and
    (ee.CTRL_ACTIVATE_EMPLOYEE_CODE is not null);

  if (IsExceptEventActive = 0) then
    raise_application_error(-20001, 'Internal assertion: Cannot insert EXCEPT_EVENT_TASK for EXCEPT_EVENT which is not active');
  end if;

end;
/
