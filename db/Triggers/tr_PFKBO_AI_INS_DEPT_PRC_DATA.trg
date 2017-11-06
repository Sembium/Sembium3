create or replace trigger tr_PFKBO_AI_INS_DEPT_PRC_DATA
  after insert on PRC_FUNC_KNOWL_BASE_OPS
  for each row
begin

  insert into DEPT_PRC_BASE_OPS
  (
    DEPT_CODE,
    PRC_FUNC_CODE,
    PRC_KNOWL_CODE,
    PRC_BASE_OP_CODE,
    PARENT_CODE
  )
  values
  (
    1,
    :new.PRC_FUNC_CODE,
    :new.PRC_KNOWL_CODE,
    :new.PRC_BASE_OP_CODE,
    null
  );

end tr_PFKBO_AI_INS_DEPT_PRC_DATA;
/
