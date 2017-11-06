create or replace trigger tr_PROFCO_AI_INS_PRC_PROFS
  after insert on PROFESSION_CONCRETE_OPS
  for each row
begin

  PrcUtils.InsertProfOccPrcConcreteOps(:new.PROFESSION_CODE, :new.PRC_CONCRETE_OP_CODE);

end tr_PROFCO_AI_INS_PRC_PROFS;
/
