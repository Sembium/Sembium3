create or replace trigger tr_OWD_AU_INS_OWD_PRC_DATA
  after update on OCCUPATION_WORK_DEPTS
  for each row
begin

  if not MiscUtils.IsGroupDept(:new.DEPT_CODE) and
     PrcUtils.IsOWDPriorityPrcGen(:new.OCC_WORK_DEPT_PRIORITY_CODE) and
     ((:old.DEPT_CODE <> :new.DEPT_CODE) or not PrcUtils.IsOWDPriorityPrcGen(:old.OCC_WORK_DEPT_PRIORITY_CODE)) then
    PrcUtils.InsertOWDPrcData(:new.OCCUPATION_CODE, :new.DEPT_CODE, :new.OCC_WORK_DEPT_PRIORITY_CODE);
  end if;

end;
/
