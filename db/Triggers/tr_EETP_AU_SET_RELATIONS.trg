create or replace trigger tr_EETP_AU_SET_RELATIONS
  after update on EXCEPT_EVENT_TYPES
  for each row
begin

  if (Coalesce(:old.PARENT_EXCEPT_EVENT_TYPE_CODE, 0) <> Coalesce(:new.PARENT_EXCEPT_EVENT_TYPE_CODE, 0)) then

    delete
      EXCEPT_EVENT_TYPE_RELATIONS eetr
    where
      (eetr.ANC_EXCEPT_EVENT_TYPE_CODE in
        ( select
            eetr2.ANC_EXCEPT_EVENT_TYPE_CODE
          from
            EXCEPT_EVENT_TYPE_RELATIONS eetr2
          where
            (eetr2.DESC_EXCEPT_EVENT_TYPE_CODE = :old.EXCEPT_EVENT_TYPE_CODE) and
            (eetr2.ANC_EXCEPT_EVENT_TYPE_CODE <> :old.EXCEPT_EVENT_TYPE_CODE)
        )
      ) and

      (eetr.DESC_EXCEPT_EVENT_TYPE_CODE in
        ( select
            eetr3.DESC_EXCEPT_EVENT_TYPE_CODE
          from
            EXCEPT_EVENT_TYPE_RELATIONS eetr3
          where
            (eetr3.ANC_EXCEPT_EVENT_TYPE_CODE = :old.EXCEPT_EVENT_TYPE_CODE)
        )
      );

    insert into EXCEPT_EVENT_TYPE_RELATIONS
      (
        ANC_EXCEPT_EVENT_TYPE_CODE,
        DESC_EXCEPT_EVENT_TYPE_CODE
      )
    select
      eetr.ANC_EXCEPT_EVENT_TYPE_CODE,
      eetr2.DESC_EXCEPT_EVENT_TYPE_CODE
    from
      EXCEPT_EVENT_TYPE_RELATIONS eetr,
      EXCEPT_EVENT_TYPE_RELATIONS eetr2
    where
      (eetr.DESC_EXCEPT_EVENT_TYPE_CODE = :new.PARENT_EXCEPT_EVENT_TYPE_CODE) and
      (eetr2.ANC_EXCEPT_EVENT_TYPE_CODE = :new.EXCEPT_EVENT_TYPE_CODE);

  end if;

end;
/
