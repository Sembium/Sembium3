create or replace trigger tr_PFKBOA_AI_INS_DEPT_PRC_DATA
  after insert on PRC_FUNC_KNOWL_BASE_OP_ACTIONS
  for each row
begin

  insert into DEPT_PRC_BASE_ACTIONS
  (
    DEPT_CODE,
    PRC_FUNC_CODE,
    PRC_KNOWL_CODE,
    PRC_BASE_OP_CODE,
    PRC_ACTION_CODE,
    BEGIN_DATE,
    END_DATE,
    OVERRIDE_DATE_INTERVAL,
    PARENT_CODE
  )
  select
    d.DEPT_CODE,
    :new.PRC_FUNC_CODE,
    :new.PRC_KNOWL_CODE,
    :new.PRC_BASE_OP_CODE,
    :new.PRC_ACTION_CODE,
    d.BEGIN_DATE,
    d.END_DATE,
    0,
    d.PARENT_CODE
  from
    DEPTS d
  where
    (d.DEPT_CODE = 1);

end tr_PFKBOA_AI_INS_DEPT_PRC_DATA;
/
