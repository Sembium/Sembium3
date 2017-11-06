create or replace trigger tr_DPBA_AU_UPD_OWD_PRC_DATA
  after update on DEPT_PRC_BASE_ACTIONS
  for each row
begin

  if not MiscUtils.IsGroupDept(:new.DEPT_CODE) then
    PrcUtils.UpdateDeptOWDPrcBaseAction(:new.DEPT_CODE, :new.PRC_FUNC_CODE, :new.PRC_KNOWL_CODE, :new.PRC_BASE_OP_CODE, :new.PRC_ACTION_CODE, :new.BEGIN_DATE, :new.END_DATE);
  end if;

end tr_DPBA_AU_UPD_OWD_PRC_DATA;
/
