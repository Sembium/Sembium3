create or replace trigger tr_DEPTS_AU_SET_RELATIONS
  after update on DEPTS
  for each row
begin
  if (Coalesce(:old.PARENT_CODE, 0) <> Coalesce(:new.PARENT_CODE, 0)) then
    delete
    from
      DEPT_RELATIONS pr
    where
      (pr.ANCESTOR_DEPT_CODE in
        (
          select
            pr2.ANCESTOR_DEPT_CODE
          from
            DEPT_RELATIONS pr2
          where
            (pr2.DESCENDANT_DEPT_CODE = :old.DEPT_CODE) and
            (pr2.ANCESTOR_DEPT_CODE <> :old.DEPT_CODE)
        )
      ) and

      (pr.DESCENDANT_DEPT_CODE in
        (
          select
            pr3.DESCENDANT_DEPT_CODE
          from
            DEPT_RELATIONS pr3
          where
            (pr3.ANCESTOR_DEPT_CODE = :old.DEPT_CODE)
        )
      );

    insert into DEPT_RELATIONS
      (
        ANCESTOR_DEPT_CODE,
        DESCENDANT_DEPT_CODE
      )
    select
      pr.ANCESTOR_DEPT_CODE,
      pr2.DESCENDANT_DEPT_CODE
    from
      DEPT_RELATIONS pr,
      DEPT_RELATIONS pr2
    where
      (pr.DESCENDANT_DEPT_CODE = :new.PARENT_CODE) and
      (pr2.ANCESTOR_DEPT_CODE = :new.DEPT_CODE);

  end if;
end tr_DEPTS_AU_SET_RELATIONS;
/
