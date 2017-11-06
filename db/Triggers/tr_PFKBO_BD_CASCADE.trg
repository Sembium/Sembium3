create or replace trigger tr_PFKBO_BD_CASCADE
  before delete on PRC_FUNC_KNOWL_BASE_OPS
  for each row
begin

  delete
    DEPT_PRC_BASE_OPS dpbo
  where
    (dpbo.DEPT_CODE = 1) and
    (dpbo.PRC_FUNC_CODE = :old.PRC_FUNC_CODE) and
    (dpbo.PRC_KNOWL_CODE = :old.PRC_KNOWL_CODE) and
    (dpbo.PRC_BASE_OP_CODE = :old.PRC_BASE_OP_CODE);

end tr_PFKBO_BD_CASCADE;
/
