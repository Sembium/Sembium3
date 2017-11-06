create or replace trigger tr_DPK_AI_INS_OWD_PRC_DATA
  after insert on DEPT_PRC_KNOWLS
  for each row
begin

  if not MiscUtils.IsGroupDept(:new.DEPT_CODE) then
    PrcUtils.InsertDeptOWDPrcKnowl(:new.DEPT_CODE, :new.PRC_FUNC_CODE, :new.PRC_KNOWL_CODE);
  end if;

end tr_DPK_AI_INS_OWD_PRC_DATA;
/
