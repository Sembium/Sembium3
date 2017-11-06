create or replace trigger tr_PROFS_AU_SET_RELATIONS
  after update on PROFESSIONS
  for each row
begin
  if (:old.PROFESSION_CODE <> :new.PROFESSION_CODE) then
    raise_application_error(-20000, 'Internal error: PROFESSIONS key should not be changed');
  end if;

  if (Coalesce(:old.PARENT_PROFESSION_CODE, 0) <> Coalesce(:new.PARENT_PROFESSION_CODE, 0)) then
    delete
      PROFESSION_RELATIONS pr
    where
      (pr.ANCESTOR_PROFESSION_CODE in
        (
          select
            pr2.ANCESTOR_PROFESSION_CODE
          from
            PROFESSION_RELATIONS pr2
          where
            (pr2.DESCENDANT_PROFESSION_CODE = :old.PROFESSION_CODE) and
            (pr2.ANCESTOR_PROFESSION_CODE <> :old.PROFESSION_CODE)
        )
      ) and

      (pr.DESCENDANT_PROFESSION_CODE in
        (
          select
            pr3.DESCENDANT_PROFESSION_CODE
          from
            PROFESSION_RELATIONS pr3
          where
            (pr3.ANCESTOR_PROFESSION_CODE = :old.PROFESSION_CODE)
        )
      );

    insert into PROFESSION_RELATIONS
      (
        ANCESTOR_PROFESSION_CODE,
        DESCENDANT_PROFESSION_CODE
      )
    select
      pr.ANCESTOR_PROFESSION_CODE,
      pr2.DESCENDANT_PROFESSION_CODE
    from
      PROFESSION_RELATIONS pr,
      PROFESSION_RELATIONS pr2
    where
      (pr.DESCENDANT_PROFESSION_CODE = :new.PARENT_PROFESSION_CODE) and
      (pr2.ANCESTOR_PROFESSION_CODE = :new.PROFESSION_CODE);
      
  end if;
end tr_PROFS_AU_SET_RELATIONS;
/
