create or replace trigger tr_DPF_AI_INS_OWD_PRC_DATA
  after insert on DEPT_PRC_FUNCS
  for each row
begin

  if not MiscUtils.IsGroupDept(:new.DEPT_CODE) then
    PrcUtils.InsertDeptOWDPrcFunc(:new.DEPT_CODE, :new.PRC_FUNC_CODE);
  end if;

end tr_DPF_AI_INS_OWD_PRC_DATA;
/
