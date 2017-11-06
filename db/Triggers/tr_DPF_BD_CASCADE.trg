create or replace trigger tr_DPF_BD_CASCADE
  before delete on DEFINITE_PRC_FUNCS
  for each row
begin

  delete
    DEPT_PRC_FUNCS dpf
  where
    (dpf.DEPT_CODE = 1) and
    (dpf.PRC_FUNC_CODE = :old.PRC_FUNC_CODE);

end tr_DPF_BD_CASCADE;
/
