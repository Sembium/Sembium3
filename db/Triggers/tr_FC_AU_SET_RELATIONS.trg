create or replace trigger tr_FC_AU_SET_RELATIONS
  after update on FIN_CLASSES
  for each row
begin
  if (Coalesce(:old.PARENT_FIN_CLASS_CODE, 0) <> Coalesce(:new.PARENT_FIN_CLASS_CODE, 0)) then
    delete
    from
      FIN_CLASS_RELATIONS fcr
    where
      (fcr.ANCESTOR_FIN_CLASS_CODE in
        (
          select
            fcr2.ANCESTOR_FIN_CLASS_CODE
          from
            FIN_CLASS_RELATIONS fcr2
          where
            (fcr2.DESCENDANT_FIN_CLASS_CODE = :old.FIN_CLASS_CODE) and
            (fcr2.ANCESTOR_FIN_CLASS_CODE <> :old.FIN_CLASS_CODE)
        )
      ) and

      (fcr.DESCENDANT_FIN_CLASS_CODE in
        (
          select
            fcr3.DESCENDANT_FIN_CLASS_CODE
          from
            FIN_CLASS_RELATIONS fcr3
          where
            (fcr3.ANCESTOR_FIN_CLASS_CODE = :old.FIN_CLASS_CODE)
        )
      );

    insert into FIN_CLASS_RELATIONS
      (
        ANCESTOR_FIN_CLASS_CODE,
        DESCENDANT_FIN_CLASS_CODE
      )
    select
      fcr.ANCESTOR_FIN_CLASS_CODE,
      fcr2.DESCENDANT_FIN_CLASS_CODE
    from
      FIN_CLASS_RELATIONS fcr,
      FIN_CLASS_RELATIONS fcr2
    where
      (fcr.DESCENDANT_FIN_CLASS_CODE = :new.PARENT_FIN_CLASS_CODE) and
      (fcr2.ANCESTOR_FIN_CLASS_CODE = :new.FIN_CLASS_CODE);

  end if;
end tr_FC_AU_SET_RELATIONS;
/
