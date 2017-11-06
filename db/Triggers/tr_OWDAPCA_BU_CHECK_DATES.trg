create or replace trigger tr_OWDAPCA_BU_CHECK_DATES
  before update of BEGIN_DATE, END_DATE on OWD_AGGR_PRC_CONCRETE_ACTIONS
  for each row
declare
  IncorrectDates Number;
begin

  select
    Sign(Count(*))
  into
    IncorrectDates
  from
    OCC_PRC_CONCRETE_ACTIONS opca
  where
    (opca.OCCUPATION_CODE = :new.OCCUPATION_CODE) and
    (opca.PRC_FUNC_CODE = :new.PRC_FUNC_CODE) and
    (opca.PRC_KNOWL_CODE = :new.PRC_KNOWL_CODE) and
    (opca.PRC_BASE_OP_CODE = :new.PRC_BASE_OP_CODE) and
    (opca.PRC_CONCRETE_OP_CODE = :new.PRC_CONCRETE_OP_CODE) and
    (opca.PRC_ACTION_CODE = :new.PRC_ACTION_CODE) and

    (opca.OVERRIDE_DATE_INTERVAL = 1) and

    ( (opca.BEGIN_DATE < :new.BEGIN_DATE) or
      (opca.END_DATE > :new.END_DATE)
    );

  if (IncorrectDates = 1) then
    raise_application_error(-20001, ServerMessages.SOccDeptIncorrectPrcActionsId);
  end if;

end tr_OWDAPCA_BU_CHECK_DATES;
/
