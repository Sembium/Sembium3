create or replace trigger tr_DPK_BD_DEL_OWD_PRC_DATA
  before delete on DEPT_PRC_KNOWLS
  for each row
begin

  if not MiscUtils.IsGroupDept(:old.DEPT_CODE) then
    PrcUtils.DeleteDeptOWDPrcKnowl(:old.DEPT_CODE, :old.PRC_FUNC_CODE, :old.PRC_KNOWL_CODE);
  end if;

end tr_DPK_BD_DEL_OWD_PRC_DATA;
/
