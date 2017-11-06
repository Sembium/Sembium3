create or replace trigger tr_PK_AI_SET_RELATIONS
  after insert on PRC_KNOWLS
  for each row
begin
  insert into PRC_KNOWL_RELATIONS
    (
      ANC_PRC_KNOWL_CODE,
      DESC_PRC_KNOWL_CODE
    )
  values
    (
      :new.PRC_KNOWL_CODE,
      :new.PRC_KNOWL_CODE
    );
    
  insert into PRC_KNOWL_RELATIONS
    (
      ANC_PRC_KNOWL_CODE,
      DESC_PRC_KNOWL_CODE
    )
  select
    pkr.ANC_PRC_KNOWL_CODE,
    :new.PRC_KNOWL_CODE
  from
    PRC_KNOWL_RELATIONS pkr
  where
    (pkr.DESC_PRC_KNOWL_CODE = :new.PARENT_PRC_KNOWL_CODE);

end tr_PK_AI_SET_RELATIONS;
/
