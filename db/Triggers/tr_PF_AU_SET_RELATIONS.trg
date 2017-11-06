create or replace trigger tr_PF_AU_SET_RELATIONS
  after update on PRC_FUNCS
  for each row
begin
  if (:old.PRC_FUNC_CODE <> :new.PRC_FUNC_CODE) then
    raise_application_error(-20000, 'Internal error: PRC_FUNCS key should not be changed');
  end if;

  if (Coalesce(:old.PARENT_PRC_FUNC_CODE, 0) <> Coalesce(:new.PARENT_PRC_FUNC_CODE, 0)) then
    delete
      PRC_FUNC_RELATIONS pfr
    where
      (pfr.ANC_PRC_FUNC_CODE in
        (
          select
            pfr2.ANC_PRC_FUNC_CODE
          from
            PRC_FUNC_RELATIONS pfr2
          where
            (pfr2.DESC_PRC_FUNC_CODE = :old.PRC_FUNC_CODE) and
            (pfr2.ANC_PRC_FUNC_CODE <> :old.PRC_FUNC_CODE)
        )
      ) and

      (pfr.DESC_PRC_FUNC_CODE in
        (
          select
            pfr3.DESC_PRC_FUNC_CODE
          from
            PRC_FUNC_RELATIONS pfr3
          where
            (pfr3.ANC_PRC_FUNC_CODE = :old.PRC_FUNC_CODE)
        )
      );

    insert into PRC_FUNC_RELATIONS
      (
        ANC_PRC_FUNC_CODE,
        DESC_PRC_FUNC_CODE
      )
    select
      pfr.ANC_PRC_FUNC_CODE,
      pfr2.DESC_PRC_FUNC_CODE
    from
      PRC_FUNC_RELATIONS pfr,
      PRC_FUNC_RELATIONS pfr2
    where
      (pfr.DESC_PRC_FUNC_CODE = :new.PARENT_PRC_FUNC_CODE) and
      (pfr2.ANC_PRC_FUNC_CODE = :new.PRC_FUNC_CODE);
      
  end if;
end tr_PF_AU_SET_RELATIONS;
/
