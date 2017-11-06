create or replace trigger tr_OWD_BU_DEL_OWD_PRC_DATA
  before update on OCCUPATION_WORK_DEPTS
  for each row
begin

  if not MiscUtils.IsGroupDept(:old.DEPT_CODE) and
     PrcUtils.IsOWDPriorityPrcGen(:old.OCC_WORK_DEPT_PRIORITY_CODE) and
     ((:old.DEPT_CODE <> :new.DEPT_CODE) or not PrcUtils.IsOWDPriorityPrcGen(:new.OCC_WORK_DEPT_PRIORITY_CODE)) then
    PrcUtils.DeleteOWDPrcData(:old.OCCUPATION_CODE, :old.DEPT_CODE, :old.OCC_WORK_DEPT_PRIORITY_CODE);
  end if;

end;
/
