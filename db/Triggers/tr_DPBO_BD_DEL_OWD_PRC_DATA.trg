create or replace trigger tr_DPBO_BD_DEL_OWD_PRC_DATA
  before delete on DEPT_PRC_BASE_OPS
  for each row
begin

  if not MiscUtils.IsGroupDept(:old.DEPT_CODE) then
    PrcUtils.DeleteDeptOWDPrcBaseOp(:old.DEPT_CODE, :old.PRC_FUNC_CODE, :old.PRC_KNOWL_CODE, :old.PRC_BASE_OP_CODE);
  end if;

end tr_DPBO_BD_DEL_OWD_PRC_DATA;
/
