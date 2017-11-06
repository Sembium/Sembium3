create or replace trigger tr_EED_AU_SET_RELATIONS
  after update on EXCEPT_EVENT_DAMAGES
  for each row
begin

  if (Coalesce(:old.PARENT_CODE, 0) <> Coalesce(:new.PARENT_CODE, 0)) then
    delete
      EXCEPT_EVENT_DAMAGE_RELATIONS eedr
    where
      (eedr.ANCESTOR_EE_DAMAGE_CODE in
        (
          select
            eedr2.ANCESTOR_EE_DAMAGE_CODE
          from
            EXCEPT_EVENT_DAMAGE_RELATIONS eedr2
          where
            (eedr2.DESCENDANT_EE_DAMAGE_CODE = :old.EXCEPT_EVENT_DAMAGE_CODE) and
            (eedr2.ANCESTOR_EE_DAMAGE_CODE <> :old.EXCEPT_EVENT_DAMAGE_CODE)
        )
      ) and

      (eedr.DESCENDANT_EE_DAMAGE_CODE in
        (
          select
            eedr3.DESCENDANT_EE_DAMAGE_CODE
          from
            EXCEPT_EVENT_DAMAGE_RELATIONS eedr3
          where
            (eedr3.ANCESTOR_EE_DAMAGE_CODE = :old.EXCEPT_EVENT_DAMAGE_CODE)
        )
      );

    insert into EXCEPT_EVENT_DAMAGE_RELATIONS
      (
        ANCESTOR_EE_DAMAGE_CODE,
        DESCENDANT_EE_DAMAGE_CODE
      )
    select
      eedr.ANCESTOR_EE_DAMAGE_CODE,
      eedr2.DESCENDANT_EE_DAMAGE_CODE
    from
      EXCEPT_EVENT_DAMAGE_RELATIONS eedr,
      EXCEPT_EVENT_DAMAGE_RELATIONS eedr2
    where
      (eedr.DESCENDANT_EE_DAMAGE_CODE = :new.PARENT_CODE) and
      (eedr2.ANCESTOR_EE_DAMAGE_CODE = :new.EXCEPT_EVENT_DAMAGE_CODE);

  end if;

end tr_EED_AU_SET_RELATIONS;
/
