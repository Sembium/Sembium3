create or replace trigger tr_PROFBO_BD_DEL_PRC_PROFS
  before delete on PROFESSION_BASE_OPS
  for each row
begin

  PrcUtils.DeleteProfOccPrcBaseOps(:old.PROFESSION_CODE, :old.PRC_BASE_OP_CODE);

end tr_PROFBO_BD_DEL_PRC_PROFS;
/
