create or replace trigger tr_PBO_AI_SET_RELATIONS
  after insert on PRC_BASE_OPS
  for each row
begin
  insert into PRC_BASE_OP_RELATIONS
    (
      ANC_PRC_BASE_OP_CODE,
      DESC_PRC_BASE_OP_CODE
    )
  values
    (
      :new.PRC_BASE_OP_CODE,
      :new.PRC_BASE_OP_CODE
    );
    
  insert into PRC_BASE_OP_RELATIONS
    (
      ANC_PRC_BASE_OP_CODE,
      DESC_PRC_BASE_OP_CODE
    )
  select
    pbor.ANC_PRC_BASE_OP_CODE,
    :new.PRC_BASE_OP_CODE
  from
    PRC_BASE_OP_RELATIONS pbor
  where
    (pbor.DESC_PRC_BASE_OP_CODE = :new.PARENT_PRC_BASE_OP_CODE);

end tr_PBO_AI_SET_RELATIONS;
/
