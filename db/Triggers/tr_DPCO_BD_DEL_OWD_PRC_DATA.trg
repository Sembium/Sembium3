create or replace trigger tr_DPCO_BD_DEL_OWD_PRC_DATA
  before delete on DEPT_PRC_CONCRETE_OPS
  for each row
begin

  if not MiscUtils.IsGroupDept(:old.DEPT_CODE) then
    PrcUtils.DeleteDeptOWDPrcConcreteOp(:old.DEPT_CODE, :old.PRC_FUNC_CODE, :old.PRC_KNOWL_CODE, :old.PRC_BASE_OP_CODE, :old.PRC_CONCRETE_OP_CODE);
  end if;

end tr_DPCO_BD_DEL_OWD_PRC_DATA;
/
