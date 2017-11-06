create or replace trigger tr_P_AU_SET_RELATIONS
  after update on PRODUCTS
  for each row
begin
  if (Coalesce(:old.PARENT_CODE, 0) <> Coalesce(:new.PARENT_CODE, 0)) then
    delete
    from
      PRODUCT_RELATIONS pr
    where
      (pr.ANCESTOR_PRODUCT_CODE in
        (
          select
            pr2.ANCESTOR_PRODUCT_CODE
          from
            PRODUCT_RELATIONS pr2
          where
            (pr2.DESCENDANT_PRODUCT_CODE = :old.PRODUCT_CODE) and
            (pr2.ANCESTOR_PRODUCT_CODE <> :old.PRODUCT_CODE)
        )
      ) and

      (pr.DESCENDANT_PRODUCT_CODE in
        (
          select
            pr3.DESCENDANT_PRODUCT_CODE
          from
            PRODUCT_RELATIONS pr3
          where
            (pr3.ANCESTOR_PRODUCT_CODE = :old.PRODUCT_CODE)
        )
      );

    insert into PRODUCT_RELATIONS
      (
        ANCESTOR_PRODUCT_CODE,
        DESCENDANT_PRODUCT_CODE
      )
    select
      pr.ANCESTOR_PRODUCT_CODE,
      pr2.DESCENDANT_PRODUCT_CODE
    from
      PRODUCT_RELATIONS pr,
      PRODUCT_RELATIONS pr2
    where
      (pr.DESCENDANT_PRODUCT_CODE = :new.PARENT_CODE) and
      (pr2.ANCESTOR_PRODUCT_CODE = :new.PRODUCT_CODE);

  end if;
end tr_P_AU_SET_RELATIONS;
/
