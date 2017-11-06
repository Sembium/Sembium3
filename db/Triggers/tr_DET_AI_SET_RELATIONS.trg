create or replace trigger tr_DET_AI_SET_RELATIONS
  after insert on DISC_EVENT_TYPES
  for each row
begin
  insert into DISC_EVENT_TYPE_RELATIONS
    (
      ANCESTOR_DET_CODE,
      DESCENDANT_DET_CODE
    )
  values
    (
      :new.DISC_EVENT_TYPE_CODE,
      :new.DISC_EVENT_TYPE_CODE
    );
    
  insert into DISC_EVENT_TYPE_RELATIONS
    (
      ANCESTOR_DET_CODE,
      DESCENDANT_DET_CODE
    )
  select
    detr.ANCESTOR_DET_CODE,
    :new.DISC_EVENT_TYPE_CODE
  from
    DISC_EVENT_TYPE_RELATIONS detr
  where
    (detr.DESCENDANT_DET_CODE = :new.PARENT_DISC_EVENT_TYPE_CODE);

end tr_DET_AI_SET_RELATIONS;
/
