create or replace trigger tr_OEPCASC_BIU_CHECK_DATE
  before insert or update on OE_PRC_CONCRETE_ACT_STAT_CHGS
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
    raise_application_error(-20002, ServerMessages.SOEPCAStatusDateOutOfRangeId);
  end if;

  select
    Sign(Count(*))
  into
    IsDateInRange
  from
    OE_PRC_CONCRETE_ACTIONS oepca
  where
    (oepca.OCCUPATION_EMPLOYEE_CODE = :new.OCCUPATION_EMPLOYEE_CODE) and
    (oepca.PRC_FUNC_CODE = :new.PRC_FUNC_CODE) and
    (oepca.PRC_KNOWL_CODE = :new.PRC_KNOWL_CODE) and
    (oepca.PRC_BASE_OP_CODE = :new.PRC_BASE_OP_CODE) and
    (oepca.PRC_CONCRETE_OP_CODE = :new.PRC_CONCRETE_OP_CODE) and
    (oepca.PRC_ACTION_CODE = :new.PRC_ACTION_CODE) and
    (:new.STATUS_DATE between oepca.BEGIN_DATE and oepca.END_DATE);

  if (IsDateInRange = 0) then
    raise_application_error(-20002, ServerMessages.SOEPCAStatDateOutOfActRangeId);
  end if;

end tr_OEPCASC_BIU_CHECK_DATE;
/
