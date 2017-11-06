create or replace trigger tr_OWDAPBA_BU_CHECK_DATES
  before update of BEGIN_DATE, END_DATE on OWD_AGGR_PRC_BASE_ACTIONS
  for each row
declare
  IncorrectDates Number;
begin

  select
    Sign(Count(*))
  into
    IncorrectDates    
  from
    OCC_PRC_BASE_ACTIONS opba
  where
    (opba.OCCUPATION_CODE = :new.OCCUPATION_CODE) and
    (opba.PRC_FUNC_CODE = :new.PRC_FUNC_CODE) and
    (opba.PRC_KNOWL_CODE = :new.PRC_KNOWL_CODE) and
    (opba.PRC_BASE_OP_CODE = :new.PRC_BASE_OP_CODE) and
    (opba.PRC_ACTION_CODE = :new.PRC_ACTION_CODE) and

    (opba.OVERRIDE_DATE_INTERVAL = 1) and

    ( (opba.BEGIN_DATE < :new.BEGIN_DATE) or
      (opba.END_DATE > :new.END_DATE)
    );

  if (IncorrectDates = 1) then
    raise_application_error(-20001, ServerMessages.SOccDeptIncorrectPrcActionsId);
  end if;

end tr_OWDAPBA_BU_CHECK_DATES;
/
