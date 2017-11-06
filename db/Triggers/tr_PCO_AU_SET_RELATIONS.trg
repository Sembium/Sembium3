create or replace trigger tr_PCO_AU_SET_RELATIONS
  after update on PRC_CONCRETE_OPS
  for each row
begin
  if (:old.PRC_CONCRETE_OP_CODE <> :new.PRC_CONCRETE_OP_CODE) then
    raise_application_error(-20000, 'Internal error: PRC_CONCRETE_OPS key should not be changed');
  end if;

  if (Coalesce(:old.PARENT_PRC_CONCRETE_OP_CODE, 0) <> Coalesce(:new.PARENT_PRC_CONCRETE_OP_CODE, 0)) then
    delete
      PRC_CONCRETE_OP_RELATIONS pcor
    where
      (pcor.ANC_PRC_CONCRETE_OP_CODE in
        (
          select
            pcor2.ANC_PRC_CONCRETE_OP_CODE
          from
            PRC_CONCRETE_OP_RELATIONS pcor2
          where
            (pcor2.DESC_PRC_CONCRETE_OP_CODE = :old.PRC_CONCRETE_OP_CODE) and
            (pcor2.ANC_PRC_CONCRETE_OP_CODE <> :old.PRC_CONCRETE_OP_CODE)
        )
      ) and

      (pcor.DESC_PRC_CONCRETE_OP_CODE in
        (
          select
            pcor3.DESC_PRC_CONCRETE_OP_CODE
          from
            PRC_CONCRETE_OP_RELATIONS pcor3
          where
            (pcor3.ANC_PRC_CONCRETE_OP_CODE = :old.PRC_CONCRETE_OP_CODE)
        )
      );

    insert into PRC_CONCRETE_OP_RELATIONS
      (
        ANC_PRC_CONCRETE_OP_CODE,
        DESC_PRC_CONCRETE_OP_CODE
      )
    select
      pcor.ANC_PRC_CONCRETE_OP_CODE,
      pcor2.DESC_PRC_CONCRETE_OP_CODE
    from
      PRC_CONCRETE_OP_RELATIONS pcor,
      PRC_CONCRETE_OP_RELATIONS pcor2
    where
      (pcor.DESC_PRC_CONCRETE_OP_CODE = :new.PARENT_PRC_CONCRETE_OP_CODE) and
      (pcor2.ANC_PRC_CONCRETE_OP_CODE = :new.PRC_CONCRETE_OP_CODE);
      
  end if;
end tr_PCO_AU_SET_RELATIONS;
/
