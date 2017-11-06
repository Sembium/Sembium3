create or replace trigger tr_PFK_AI_INS_DEPT_PRC_DATA
  after insert on PRC_FUNC_KNOWLS
  for each row
begin

  insert into DEPT_PRC_KNOWLS
  (
    DEPT_CODE,
    PRC_FUNC_CODE,
    PRC_KNOWL_CODE,
    PARENT_CODE
  )
  values
  (
    1,
    :new.PRC_FUNC_CODE,
    :new.PRC_KNOWL_CODE,
    null
  );

end tr_PFK_AI_INS_DEPT_PRC_DATA;
/
