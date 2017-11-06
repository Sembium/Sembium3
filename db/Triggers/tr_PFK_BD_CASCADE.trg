create or replace trigger tr_PFK_BD_CASCADE
  before delete on PRC_FUNC_KNOWLS
  for each row
begin

  delete
    DEPT_PRC_KNOWLS dpk
  where
    (dpk.DEPT_CODE = 1) and
    (dpk.PRC_FUNC_CODE = :old.PRC_FUNC_CODE) and
    (dpk.PRC_KNOWL_CODE = :old.PRC_KNOWL_CODE);

end tr_PFK_BD_CASCADE;
/
