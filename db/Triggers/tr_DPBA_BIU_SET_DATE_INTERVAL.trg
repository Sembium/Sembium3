create or replace trigger tr_DPBA_BIU_SET_DATE_INTERVAL
  before insert or update on DEPT_PRC_BASE_ACTIONS
  for each row
begin

  if (:new.OVERRIDE_DATE_INTERVAL = 0) then

    select
      d.BEGIN_DATE,
      d.END_DATE
    into
      :new.BEGIN_DATE,
      :new.END_DATE
    from
      DEPTS d
    where
      (d.DEPT_CODE = :new.DEPT_CODE);

  end if;

end tr_DPBA_BIU_SET_DATE_INTERVAL;
/
