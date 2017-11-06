create or replace trigger tr_OEPBASC_BIU_CHECK_DATE
  before insert or update on OE_PRC_BASE_ACT_STAT_CHGS
  for each row
declare
  IsDateInRange Number;
begin

  select
    Sign(Count(*))
  into
    IsDateInRange
  from
    OCCUPATION_EMPLOYEES oe
  where
    (oe.OCCUPATION_EMPLOYEE_CODE = :new.OCCUPATION_EMPLOYEE_CODE) and
    (:new.STATUS_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMENT_END_DATE);

  if (IsDateInRange = 0) then
    raise_application_error(-20002, ServerMessages.SOEPBAStatusDateOutOfRangeId);
  end if;

  select
    Sign(Count(*))
  into
    IsDateInRange
  from
    OE_PRC_BASE_ACTIONS oepba
  where
    (oepba.OCCUPATION_EMPLOYEE_CODE = :new.OCCUPATION_EMPLOYEE_CODE) and
    (oepba.PRC_FUNC_CODE = :new.PRC_FUNC_CODE) and
    (oepba.PRC_KNOWL_CODE = :new.PRC_KNOWL_CODE) and
    (oepba.PRC_BASE_OP_CODE = :new.PRC_BASE_OP_CODE) and
    (oepba.PRC_ACTION_CODE = :new.PRC_ACTION_CODE) and
    (:new.STATUS_DATE between oepba.BEGIN_DATE and oepba.END_DATE);

  if (IsDateInRange = 0) then
    raise_application_error(-20002, ServerMessages.SOEPBAStatDateOutOfActRangeId);
  end if;

end tr_OEPBASC_BIU_CHECK_DATE;
/
