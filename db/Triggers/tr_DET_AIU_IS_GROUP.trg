create or replace trigger tr_DET_AIU_IS_GROUP
  after insert or update on DISC_EVENT_TYPES
  for each row
begin
  if updating and 
     (:old.IS_GROUP <> :new.IS_GROUP) then
     
    if (:old.IS_GROUP = 1) then
      delete
        GROUP_DISC_EVENT_TYPES gdet
      where
        (gdet.DISC_EVENT_TYPE_CODE = :new.DISC_EVENT_TYPE_CODE)
      ;
    else
      delete
        DEFINITE_DISC_EVENT_TYPES ddet
      where
        (ddet.DISC_EVENT_TYPE_CODE = :new.DISC_EVENT_TYPE_CODE)
      ;
    end if;
        
  end if;
  
  
  if inserting or
     (:old.IS_GROUP <> :new.IS_GROUP) then

    if (:new.IS_GROUP = 1) then
      insert into GROUP_DISC_EVENT_TYPES
        (DISC_EVENT_TYPE_CODE)
      values
        (:new.DISC_EVENT_TYPE_CODE)
      ;
    else
      insert into DEFINITE_DISC_EVENT_TYPES
        (DISC_EVENT_TYPE_CODE)
      values
        (:new.DISC_EVENT_TYPE_CODE)
      ;
    end if;
     
  end if;
end tr_DET_AIU_IS_GROUP;
/
