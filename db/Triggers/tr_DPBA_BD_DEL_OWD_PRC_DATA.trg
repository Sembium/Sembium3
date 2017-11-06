create or replace trigger tr_DPBA_BD_DEL_OWD_PRC_DATA
  before delete on DEPT_PRC_BASE_ACTIONS
  for each row
begin

  if not MiscUtils.IsGroupDept(:old.DEPT_CODE) then
    PrcUtils.DeleteDeptOWDPrcBaseAction(:old.DEPT_CODE, :old.PRC_FUNC_CODE, :old.PRC_KNOWL_CODE, :old.PRC_BASE_OP_CODE, :old.PRC_ACTION_CODE);
  end if;

end tr_DPBA_BD_DEL_OWD_PRC_DATA;
/
