create or replace trigger tr_DPCO_AI_INS_OWD_PRC_DATA
  after insert on DEPT_PRC_CONCRETE_OPS
  for each row
begin

  if not MiscUtils.IsGroupDept(:new.DEPT_CODE) then
    PrcUtils.InsertDeptOWDPrcConcreteOp(:new.DEPT_CODE, :new.PRC_FUNC_CODE, :new.PRC_KNOWL_CODE, :new.PRC_BASE_OP_CODE, :new.PRC_CONCRETE_OP_CODE);
  end if;

end tr_DPCO_AI_INS_OWD_PRC_DATA;
/
