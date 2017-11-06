create or replace trigger tr_OPBO_BD_DEL_PRC_PROFESSIONS
  before delete on OCC_PRC_BASE_OPS
  for each row
begin

  PrcUtils.DeleteOccPrcBaseOpProfs(:old.OCCUPATION_CODE, :old.PRC_FUNC_CODE, :old.PRC_KNOWL_CODE, :old.PRC_BASE_OP_CODE);

end tr_OPBO_BD_DEL_PRC_PROFESSIONS;
/
