create or replace trigger tr_OCC_BU_CHECK_PROCESSES
  before update of OCCUPATION_BEGIN_DATE, OCCUPATION_END_DATE on OCCUPATIONS
  for each row
declare
  HasIncorrectProcessActions Number;
begin

  select
    Sign(Count(*))
  into
    HasIncorrectProcessActions
  from
    OCC_PRC_BASE_ACTIONS opba
  where
    (opba.OCCUPATION_CODE = :new.OCCUPATION_CODE) and
    (opba.OVERRIDE_DATE_INTERVAL = 1) and
    ( (opba.BEGIN_DATE < :new.OCCUPATION_BEGIN_DATE) or
      (opba.END_DATE > :new.OCCUPATION_END_DATE)
    );

  if (HasIncorrectProcessActions = 1) then
    raise_application_error(-20000, ServerMessages.SOccIncorrectPrcActionsExistId);
  end if;
    
  select
    Sign(Count(*))
  into
    HasIncorrectProcessActions
  from
    OCC_PRC_CONCRETE_ACTIONS opca
  where
    (opca.OCCUPATION_CODE = :new.OCCUPATION_CODE) and
    (opca.OVERRIDE_DATE_INTERVAL = 1) and
    ( (opca.BEGIN_DATE < :new.OCCUPATION_BEGIN_DATE) or
      (opca.END_DATE > :new.OCCUPATION_END_DATE)
    );

  if (HasIncorrectProcessActions = 1) then
    raise_application_error(-20000, ServerMessages.SOccIncorrectPrcActionsExistId);
  end if;

end tr_OCC_BU_CHECK_PROCESSES;
/
