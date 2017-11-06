create or replace trigger tr_OPCO_BD_DEL_PRC_PROFESSIONS
  before delete on OCC_PRC_CONCRETE_OPS
  for each row
begin

  PrcUtils.DeleteOccPrcConcreteOpProfs(:old.OCCUPATION_CODE, :old.PRC_FUNC_CODE, :old.PRC_KNOWL_CODE, :old.PRC_BASE_OP_CODE, :old.PRC_CONCRETE_OP_CODE);

end tr_OPCO_BD_DEL_PRC_PROFESSIONS;
/
