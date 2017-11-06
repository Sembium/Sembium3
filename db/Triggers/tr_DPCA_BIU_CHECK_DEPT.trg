create or replace trigger tr_DPCA_BIU_CHECK_DEPT
  before insert or update on DEPT_PRC_CONCRETE_ACTIONS
  for each row
declare
  IsIncorrectDateInterval Number;
begin

  if (:new.OVERRIDE_DATE_INTERVAL = 1) then

    select
      Sign(Count(*))
    into
      IsIncorrectDateInterval
    from
      DEPTS d
    where
      (d.DEPT_CODE = :new.DEPT_CODE) and
      ( (d.BEGIN_DATE > :new.BEGIN_DATE) or
        (d.END_DATE < :new.END_DATE)
      );

    if (IsIncorrectDateInterval = 1) then
      raise_application_error(-20000, ServerMessages.SDptIncorrectPrcActionsExistId);
    end if;

  end if;

end tr_DPCA_BIU_CHECK_DEPT;
/
