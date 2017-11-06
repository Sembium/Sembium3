create or replace trigger tr_PCO_AI_SET_RELATIONS
  after insert on PRC_CONCRETE_OPS
  for each row
begin
  insert into PRC_CONCRETE_OP_RELATIONS
    (
      ANC_PRC_CONCRETE_OP_CODE,
      DESC_PRC_CONCRETE_OP_CODE
    )
  values
    (
      :new.PRC_CONCRETE_OP_CODE,
      :new.PRC_CONCRETE_OP_CODE
    );
    
  insert into PRC_CONCRETE_OP_RELATIONS
    (
      ANC_PRC_CONCRETE_OP_CODE,
      DESC_PRC_CONCRETE_OP_CODE
    )
  select
    pcor.ANC_PRC_CONCRETE_OP_CODE,
    :new.PRC_CONCRETE_OP_CODE
  from
    PRC_CONCRETE_OP_RELATIONS pcor
  where
    (pcor.DESC_PRC_CONCRETE_OP_CODE = :new.PARENT_PRC_CONCRETE_OP_CODE);

end tr_PCO_AI_SET_RELATIONS;
/
