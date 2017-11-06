create or replace trigger tr_PFKBOA_BD_CASCADE
  before delete on PRC_FUNC_KNOWL_BASE_OP_ACTIONS
  for each row
begin

  delete
    DEPT_PRC_BASE_ACTIONS dpba
  where
    (dpba.DEPT_CODE = 1) and
    (dpba.PRC_FUNC_CODE = :old.PRC_FUNC_CODE) and
    (dpba.PRC_KNOWL_CODE = :old.PRC_KNOWL_CODE) and
    (dpba.PRC_BASE_OP_CODE = :old.PRC_BASE_OP_CODE) and
    (dpba.PRC_ACTION_CODE = :old.PRC_ACTION_CODE);

end tr_PFKBOA_BD_CASCADE;
/
