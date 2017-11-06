create or replace trigger tr_PK_AU_SET_RELATIONS
  after update on PRC_KNOWLS
  for each row
begin
  if (:old.PRC_KNOWL_CODE <> :new.PRC_KNOWL_CODE) then
    raise_application_error(-20000, 'Internal error: PRC_KNOWLS key should not be changed');
  end if;

  if (Coalesce(:old.PARENT_PRC_KNOWL_CODE, 0) <> Coalesce(:new.PARENT_PRC_KNOWL_CODE, 0)) then
    delete
      PRC_KNOWL_RELATIONS pkr
    where
      (pkr.ANC_PRC_KNOWL_CODE in
        (
          select
            pkr2.ANC_PRC_KNOWL_CODE
          from
            PRC_KNOWL_RELATIONS pkr2
          where
            (pkr2.DESC_PRC_KNOWL_CODE = :old.PRC_KNOWL_CODE) and
            (pkr2.ANC_PRC_KNOWL_CODE <> :old.PRC_KNOWL_CODE)
        )
      ) and

      (pkr.DESC_PRC_KNOWL_CODE in
        (
          select
            pkr3.DESC_PRC_KNOWL_CODE
          from
            PRC_KNOWL_RELATIONS pkr3
          where
            (pkr3.ANC_PRC_KNOWL_CODE = :old.PRC_KNOWL_CODE)
        )
      );

    insert into PRC_KNOWL_RELATIONS
      (
        ANC_PRC_KNOWL_CODE,
        DESC_PRC_KNOWL_CODE
      )
    select
      pkr.ANC_PRC_KNOWL_CODE,
      pkr2.DESC_PRC_KNOWL_CODE
    from
      PRC_KNOWL_RELATIONS pkr,
      PRC_KNOWL_RELATIONS pkr2
    where
      (pkr.DESC_PRC_KNOWL_CODE = :new.PARENT_PRC_KNOWL_CODE) and
      (pkr2.ANC_PRC_KNOWL_CODE = :new.PRC_KNOWL_CODE);
      
  end if;
end tr_PK_AU_SET_RELATIONS;
/
