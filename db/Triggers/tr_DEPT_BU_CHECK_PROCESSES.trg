create or replace trigger tr_DEPT_BU_CHECK_PROCESSES
  before update on DEPTS
  for each row
declare
  HasIncorrectProcessActions Number;
begin

  select
    Sign(Count(*))
  into
    HasIncorrectProcessActions
  from
    DEPT_PRC_BASE_ACTIONS dpba
  where
    (dpba.DEPT_CODE = :new.DEPT_CODE) and
    ( (dpba.BEGIN_DATE < :new.BEGIN_DATE) or
      (dpba.END_DATE > :new.END_DATE)
    );

  if (HasIncorrectProcessActions = 1) then
    raise_application_error(-20000, ServerMessages.SDptIncorrectPrcActionsExistId);
  end if;
    
  select
    Sign(Count(*))
  into
    HasIncorrectProcessActions
  from
    DEPT_PRC_CONCRETE_ACTIONS dpca
  where
    (dpca.DEPT_CODE = :new.DEPT_CODE) and
    ( (dpca.BEGIN_DATE < :new.BEGIN_DATE) or
      (dpca.END_DATE > :new.END_DATE)
    );

  if (HasIncorrectProcessActions = 1) then
    raise_application_error(-20000, ServerMessages.SDptIncorrectPrcActionsExistId);
  end if;

end tr_DEPT_BU_CHECK_PROCESSES;
/
