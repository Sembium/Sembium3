create or replace trigger tr_FC_AIU_IS_GROUP
  after insert or update on FIN_CLASSES
  for each row
begin
  if (:old.IS_GROUP is not null) and 
     (:old.IS_GROUP <> :new.IS_GROUP) then
     
    if (:old.IS_GROUP = 1) then
      delete
        GROUP_FIN_CLASSES
      where
        (FIN_CLASS_CODE = :new.FIN_CLASS_CODE)
      ;
    else
      delete
        DEFINITE_FIN_CLASSES
      where
        (FIN_CLASS_CODE = :new.FIN_CLASS_CODE)
      ;
    end if;
        
  end if;
  
  
  if (:old.IS_GROUP is null) or
     (:old.IS_GROUP <> :new.IS_GROUP) then

    if (:new.IS_GROUP = 1) then
      insert into GROUP_FIN_CLASSES
        (FIN_CLASS_CODE)
      values
        (:new.FIN_CLASS_CODE)
      ;
    else
      insert into DEFINITE_FIN_CLASSES
        (FIN_CLASS_CODE)
      values
        (:new.FIN_CLASS_CODE)
      ;
    end if;
     
  end if;
end tr_FC_AIU_IS_GROUP;
/
