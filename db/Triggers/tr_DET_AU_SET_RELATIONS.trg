create or replace trigger tr_DET_AU_SET_RELATIONS
  after update on DISC_EVENT_TYPES
  for each row
begin
  if (Coalesce(:old.PARENT_DISC_EVENT_TYPE_CODE, 0) <> Coalesce(:new.PARENT_DISC_EVENT_TYPE_CODE, 0)) then
    delete
      DISC_EVENT_TYPE_RELATIONS detr
    where
      (detr.ANCESTOR_DET_CODE in
        (
          select
            detr2.ANCESTOR_DET_CODE
          from
            DISC_EVENT_TYPE_RELATIONS detr2
          where
            (detr2.DESCENDANT_DET_CODE = :old.DISC_EVENT_TYPE_CODE) and
            (detr2.ANCESTOR_DET_CODE <> :old.DISC_EVENT_TYPE_CODE)
        )
      ) and

      (detr.DESCENDANT_DET_CODE in
        (
          select
            detr3.DESCENDANT_DET_CODE
          from
            DISC_EVENT_TYPE_RELATIONS detr3
          where
            (detr3.ANCESTOR_DET_CODE = :old.DISC_EVENT_TYPE_CODE)
        )
      );

    insert into DISC_EVENT_TYPE_RELATIONS
      (
        ANCESTOR_DET_CODE,
        DESCENDANT_DET_CODE
      )
    select
      detr.ANCESTOR_DET_CODE,
      detr2.DESCENDANT_DET_CODE
    from
      DISC_EVENT_TYPE_RELATIONS detr,
      DISC_EVENT_TYPE_RELATIONS detr2
    where
      (detr.DESCENDANT_DET_CODE = :new.PARENT_DISC_EVENT_TYPE_CODE) and
      (detr2.ANCESTOR_DET_CODE = :new.DISC_EVENT_TYPE_CODE);
      
  end if;
end tr_DET_AU_SET_RELATIONS;
/
