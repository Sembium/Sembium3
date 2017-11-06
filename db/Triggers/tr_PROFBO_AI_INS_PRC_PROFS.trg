create or replace trigger tr_PROFBO_AI_INS_PRC_PROFS
  after insert on PROFESSION_BASE_OPS
  for each row
begin

  PrcUtils.InsertProfOccPrcBaseOps(:new.PROFESSION_CODE, :new.PRC_BASE_OP_CODE);

end tr_PROFBO_AI_INS_PRC_PROFS;
/
