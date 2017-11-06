create or replace trigger tr_OPCO_AI_INS_PRC_PROFESSIONS
  after insert on OCC_PRC_CONCRETE_OPS
  for each row
begin

  PrcUtils.InsertOccPrcConcreteOpProfs(:new.OCCUPATION_CODE, :new.PRC_FUNC_CODE, :new.PRC_KNOWL_CODE, :new.PRC_BASE_OP_CODE, :new.PRC_CONCRETE_OP_CODE);

end tr_OPCO_AI_INS_PRC_PROFESSIONS;
/
