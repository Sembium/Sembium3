create or replace trigger tr_OPBO_AI_INS_PRC_PROFESSIONS
  after insert on OCC_PRC_BASE_OPS
  for each row
begin

  PrcUtils.InsertOccPrcBaseOpProfs(:new.OCCUPATION_CODE, :new.PRC_FUNC_CODE, :new.PRC_KNOWL_CODE, :new.PRC_BASE_OP_CODE);

end tr_OPBO_AI_INS_PRC_PROFESSIONS;
/
