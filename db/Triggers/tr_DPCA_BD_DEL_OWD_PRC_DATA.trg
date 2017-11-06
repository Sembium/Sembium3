create or replace trigger tr_DPCA_BD_DEL_OWD_PRC_DATA
  before delete on DEPT_PRC_CONCRETE_ACTIONS
  for each row
begin

  if not MiscUtils.IsGroupDept(:old.DEPT_CODE) then
    PrcUtils.DeleteDeptOWDPrcConcreteAction(:old.DEPT_CODE, :old.PRC_FUNC_CODE, :old.PRC_KNOWL_CODE, :old.PRC_BASE_OP_CODE, :old.PRC_CONCRETE_OP_CODE, :old.PRC_ACTION_CODE);
  end if;

end tr_DPCA_BD_DEL_OWD_PRC_DATA;
/
