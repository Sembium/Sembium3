create or replace trigger tr_PROFCO_BD_DEL_PRC_PROFS
  before delete on PROFESSION_CONCRETE_OPS
  for each row
begin

  PrcUtils.DeleteProfOccPrcConcreteOps(:old.PROFESSION_CODE, :old.PRC_CONCRETE_OP_CODE);

end tr_PROFCO_BD_DEL_PRC_PROFS;
/
