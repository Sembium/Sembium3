create or replace trigger tr_EETP_AI_SET_RELATIONS
  after insert on EXCEPT_EVENT_TYPES
  for each row
begin

  insert into EXCEPT_EVENT_TYPE_RELATIONS
  (
    ANC_EXCEPT_EVENT_TYPE_CODE,
    DESC_EXCEPT_EVENT_TYPE_CODE
  )
  values
  (
    :new.EXCEPT_EVENT_TYPE_CODE,
    :new.EXCEPT_EVENT_TYPE_CODE
  );
    
  insert into EXCEPT_EVENT_TYPE_RELATIONS
  (
    ANC_EXCEPT_EVENT_TYPE_CODE,
    DESC_EXCEPT_EVENT_TYPE_CODE
  )
  select
    eetr.ANC_EXCEPT_EVENT_TYPE_CODE,
    :new.EXCEPT_EVENT_TYPE_CODE
  from
    EXCEPT_EVENT_TYPE_RELATIONS eetr
  where
    (eetr.DESC_EXCEPT_EVENT_TYPE_CODE = :new.PARENT_EXCEPT_EVENT_TYPE_CODE);
    
end;
/
