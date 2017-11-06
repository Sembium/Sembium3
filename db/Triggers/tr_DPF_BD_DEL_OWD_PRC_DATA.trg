create or replace trigger tr_DPF_BD_DEL_OWD_PRC_DATA
  before delete on DEPT_PRC_FUNCS
  for each row
begin

  if not MiscUtils.IsGroupDept(:old.DEPT_CODE) then
    PrcUtils.DeleteDeptOWDPrcFunc(:old.DEPT_CODE, :old.PRC_FUNC_CODE);
  end if;

end tr_DPF_BD_DEL_OWD_PRC_DATA;
/
