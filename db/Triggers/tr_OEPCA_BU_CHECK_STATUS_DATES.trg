create or replace trigger tr_OEPCA_BU_CHECK_STATUS_DATES
  before update on OE_PRC_CONCRETE_ACTIONS
  for each row
declare
  OutsideStatusesExist Number;
begin

  select
    Sign(Count(*))
  into
    OutsideStatusesExist
  from
    OE_PRC_CONCRETE_ACT_STAT_CHGS oepcasc
  where
    (oepcasc.OCCUPATION_EMPLOYEE_CODE = :new.OCCUPATION_EMPLOYEE_CODE) and
    (oepcasc.PRC_FUNC_CODE = :new.PRC_FUNC_CODE) and
    (oepcasc.PRC_KNOWL_CODE = :new.PRC_KNOWL_CODE) and
    (oepcasc.PRC_BASE_OP_CODE = :new.PRC_BASE_OP_CODE) and
    (oepcasc.PRC_CONCRETE_OP_CODE = :new.PRC_CONCRETE_OP_CODE) and
    (oepcasc.PRC_ACTION_CODE = :new.PRC_ACTION_CODE) and
    (not oepcasc.STATUS_DATE between :new.BEGIN_DATE and :new.END_DATE);

  if (OutsideStatusesExist = 1) then
    raise_application_error(-20001, ServerMessages.SActOutsideActionStatExistsId);
  end if;

end tr_OEPCA_BU_CHECK_STATUS_DATES;
/
