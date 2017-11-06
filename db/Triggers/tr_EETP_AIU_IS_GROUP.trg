create or replace trigger tr_EETP_AIU_IS_GROUP
  after insert or update on EXCEPT_EVENT_TYPES
  for each row
begin

  if (:old.IS_GROUP is not null) and 
     (:old.IS_GROUP <> :new.IS_GROUP) then
     
    if (:old.IS_GROUP = 1) then

      delete
        GROUP_EXCEPT_EVENT_TYPES geet
      where
        (geet.EXCEPT_EVENT_TYPE_CODE = :new.EXCEPT_EVENT_TYPE_CODE);

    else

      delete
        DEFINITE_EXCEPT_EVENT_TYPES deet
      where
        (deet.EXCEPT_EVENT_TYPE_CODE = :new.EXCEPT_EVENT_TYPE_CODE);

    end if;
        
  end if;
  
  
  if (:old.IS_GROUP is null) or
     (:old.IS_GROUP <> :new.IS_GROUP) then

    if (:new.IS_GROUP = 1) then

      insert into GROUP_EXCEPT_EVENT_TYPES
        (EXCEPT_EVENT_TYPE_CODE)
      values
        (:new.EXCEPT_EVENT_TYPE_CODE);

    else

      insert into DEFINITE_EXCEPT_EVENT_TYPES
        (EXCEPT_EVENT_TYPE_CODE)
      values
        (:new.EXCEPT_EVENT_TYPE_CODE);

    end if;
     
  end if;

end;
/
