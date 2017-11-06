create or replace trigger tr_PF_AI_SET_RELATIONS
  after insert on PRC_FUNCS
  for each row
begin
  insert into PRC_FUNC_RELATIONS
    (
      ANC_PRC_FUNC_CODE,
      DESC_PRC_FUNC_CODE
    )
  values
    (
      :new.PRC_FUNC_CODE,
      :new.PRC_FUNC_CODE
    );
    
  insert into PRC_FUNC_RELATIONS
    (
      ANC_PRC_FUNC_CODE,
      DESC_PRC_FUNC_CODE
    )
  select
    pfr.ANC_PRC_FUNC_CODE,
    :new.PRC_FUNC_CODE
  from
    PRC_FUNC_RELATIONS pfr
  where
    (pfr.DESC_PRC_FUNC_CODE = :new.PARENT_PRC_FUNC_CODE);

end tr_PF_AI_SET_RELATIONS;
/
