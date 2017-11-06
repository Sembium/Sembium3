create or replace trigger tr_PBO_AU_SET_RELATIONS
  after update on PRC_BASE_OPS
  for each row
begin
  if (:old.PRC_BASE_OP_CODE <> :new.PRC_BASE_OP_CODE) then
    raise_application_error(-20000, 'Internal error: PRC_BASE_OPS key should not be changed');
  end if;

  if (Coalesce(:old.PARENT_PRC_BASE_OP_CODE, 0) <> Coalesce(:new.PARENT_PRC_BASE_OP_CODE, 0)) then
    delete
      PRC_BASE_OP_RELATIONS pbor
    where
      (pbor.ANC_PRC_BASE_OP_CODE in
        (
          select
            pbor2.ANC_PRC_BASE_OP_CODE
          from
            PRC_BASE_OP_RELATIONS pbor2
          where
            (pbor2.DESC_PRC_BASE_OP_CODE = :old.PRC_BASE_OP_CODE) and
            (pbor2.ANC_PRC_BASE_OP_CODE <> :old.PRC_BASE_OP_CODE)
        )
      ) and

      (pbor.DESC_PRC_BASE_OP_CODE in
        (
          select
            pbor3.DESC_PRC_BASE_OP_CODE
          from
            PRC_BASE_OP_RELATIONS pbor3
          where
            (pbor3.ANC_PRC_BASE_OP_CODE = :old.PRC_BASE_OP_CODE)
        )
      );

    insert into PRC_BASE_OP_RELATIONS
      (
        ANC_PRC_BASE_OP_CODE,
        DESC_PRC_BASE_OP_CODE
      )
    select
      pbor.ANC_PRC_BASE_OP_CODE,
      pbor2.DESC_PRC_BASE_OP_CODE
    from
      PRC_BASE_OP_RELATIONS pbor,
      PRC_BASE_OP_RELATIONS pbor2
    where
      (pbor.DESC_PRC_BASE_OP_CODE = :new.PARENT_PRC_BASE_OP_CODE) and
      (pbor2.ANC_PRC_BASE_OP_CODE = :new.PRC_BASE_OP_CODE);
      
  end if;
end tr_PBO_AU_SET_RELATIONS;
/
