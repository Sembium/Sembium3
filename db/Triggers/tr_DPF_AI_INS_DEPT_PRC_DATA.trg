create or replace trigger tr_DPF_AI_INS_DEPT_PRC_DATA
  after insert on DEFINITE_PRC_FUNCS
  for each row
begin

  insert into DEPT_PRC_FUNCS
  (
    DEPT_CODE,
    PRC_FUNC_CODE,
    PARENT_CODE
  )
  values
  (
    1,
    :new.PRC_FUNC_CODE,
    null
  );

end tr_DPF_AI_INS_DEPT_PRC_DATA;
/
