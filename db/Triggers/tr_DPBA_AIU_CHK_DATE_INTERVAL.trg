create or replace trigger tr_DPBA_AIU_CHK_DATE_INTERVAL
  after insert or update of BEGIN_DATE, END_DATE on DEPT_PRC_BASE_ACTIONS
  for each row
declare
  pragma autonomous_transaction;
  InvalidDateIntervalAsChild Number;
  InvalidDateIntervalAsParent Number;
begin

  -- !!! nikakwi update/insert/delete w tozi trigger, zaradi autonomous_transaction

  select
    Sign(Count(*))
  into
    InvalidDateIntervalAsChild
  from
    DEPT_PRC_BASE_ACTIONS dpba,
    DEPTS d
  where
    (dpba.DEPT_CODE = d.DEPT_CODE) and

    (dpba.DEPT_CODE = :new.PARENT_CODE) and
    (dpba.PRC_FUNC_CODE = :new.PRC_FUNC_CODE) and
    (dpba.PRC_KNOWL_CODE = :new.PRC_KNOWL_CODE) and
    (dpba.PRC_BASE_OP_CODE = :new.PRC_BASE_OP_CODE) and
    (dpba.PRC_ACTION_CODE = :new.PRC_ACTION_CODE) and

    ( (dpba.BEGIN_DATE > Decode(:new.OVERRIDE_DATE_INTERVAL, 1, :new.BEGIN_DATE, d.BEGIN_DATE)) or
      (dpba.END_DATE < Decode(:new.OVERRIDE_DATE_INTERVAL, 1, :new.END_DATE, d.END_DATE))
    );

  if (InvalidDateIntervalAsChild = 1) then
    raise_application_error(-20001, ServerMessages.SInvalidDateIntervalAsChildId);
  end if;

  select
    Sign(Count(*))
  into
    InvalidDateIntervalAsParent
  from
    DEPT_PRC_BASE_ACTIONS dpba,
    DEPTS d
  where
    (dpba.DEPT_CODE = d.DEPT_CODE) and

    (dpba.PARENT_CODE = :new.DEPT_CODE) and
    (dpba.PRC_FUNC_CODE = :new.PRC_FUNC_CODE) and
    (dpba.PRC_KNOWL_CODE = :new.PRC_KNOWL_CODE) and
    (dpba.PRC_BASE_OP_CODE = :new.PRC_BASE_OP_CODE) and
    (dpba.PRC_ACTION_CODE = :new.PRC_ACTION_CODE) and

    ( (dpba.BEGIN_DATE < Decode(:new.OVERRIDE_DATE_INTERVAL, 1, :new.BEGIN_DATE, d.BEGIN_DATE)) or
      (dpba.END_DATE > Decode(:new.OVERRIDE_DATE_INTERVAL, 1, :new.END_DATE, d.END_DATE))
    );

  if (InvalidDateIntervalAsParent = 1) then
    raise_application_error(-20001, ServerMessages.SInvalidDateIntervalAsParentId);
  end if;

end tr_DPBA_AIU_CHK_DATE_INTERVAL;
/
