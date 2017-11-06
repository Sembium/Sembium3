create or replace trigger tr_OPBA_BIU_DATES_AND_CHECKS
  before insert or update on OCC_PRC_BASE_ACTIONS
  for each row
declare
  IncorrectDates Number;
  IsIncorrectDateInterval Number;
begin

  -- Set Date Interval

  if (:new.OVERRIDE_DATE_INTERVAL = 0) then

    select
      Greatest(o.OCCUPATION_BEGIN_DATE, owdapba.BEGIN_DATE),
      Least(o.OCCUPATION_END_DATE, owdapba.END_DATE)
    into
      :new.BEGIN_DATE,
      :new.END_DATE
    from
      OCCUPATIONS o,
      OWD_AGGR_PRC_BASE_ACTIONS owdapba
    where
      (o.OCCUPATION_CODE = :new.OCCUPATION_CODE) and

      (owdapba.OCCUPATION_CODE = :new.OCCUPATION_CODE) and
      (owdapba.PRC_FUNC_CODE = :new.PRC_FUNC_CODE) and
      (owdapba.PRC_KNOWL_CODE = :new.PRC_KNOWL_CODE) and
      (owdapba.PRC_BASE_OP_CODE = :new.PRC_BASE_OP_CODE) and
      (owdapba.PRC_ACTION_CODE = :new.PRC_ACTION_CODE);

  end if;

  -- Check Dates

  select
    Sign(Count(*))
  into
    IncorrectDates
  from
    OWD_AGGR_PRC_BASE_ACTIONS owdapba
  where
    (owdapba.OCCUPATION_CODE = :new.OCCUPATION_CODE) and
    (owdapba.PRC_FUNC_CODE = :new.PRC_FUNC_CODE) and
    (owdapba.PRC_KNOWL_CODE = :new.PRC_KNOWL_CODE) and
    (owdapba.PRC_BASE_OP_CODE = :new.PRC_BASE_OP_CODE) and
    (owdapba.PRC_ACTION_CODE = :new.PRC_ACTION_CODE) and

    -- narochno e pylno uslowieto zashtoto moje da se poluchi :new.BEGIN_DATE > :new.END_DATE
    ( (:new.BEGIN_DATE < owdapba.BEGIN_DATE) or (owdapba.END_DATE < :new.BEGIN_DATE) or
      (:new.END_DATE < owdapba.BEGIN_DATE) or (owdapba.END_DATE < :new.END_DATE)
    );

  if (IncorrectDates = 1) then
    raise_application_error(-20001, ServerMessages.SOccDeptIncorrectPrcActionsId);
  end if;

  -- Check Occupation

  select
    Sign(Count(*))
  into
    IsIncorrectDateInterval
  from
    OCCUPATIONS o
  where
    (o.OCCUPATION_CODE = :new.OCCUPATION_CODE) and
    -- narochno e pylno uslowieto zashtoto moje da se poluchi :new.BEGIN_DATE > :new.END_DATE
    ( (:new.BEGIN_DATE < o.OCCUPATION_BEGIN_DATE) or (o.OCCUPATION_END_DATE < :new.BEGIN_DATE) or
      (:new.END_DATE < o.OCCUPATION_BEGIN_DATE) or (o.OCCUPATION_END_DATE < :new.END_DATE)
    );

  if (IsIncorrectDateInterval = 1) then
    raise_application_error(-20000, ServerMessages.SOccIncorrectPrcActionsExistId);
  end if;

end;
/
