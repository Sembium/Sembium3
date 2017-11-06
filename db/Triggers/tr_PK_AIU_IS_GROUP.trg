create or replace trigger tr_PK_AIU_IS_GROUP
  after insert or update on PRC_KNOWLS
  for each row
begin
  if updating and 
     (:old.IS_GROUP <> :new.IS_GROUP) then
     
    if (:old.IS_GROUP = 1) then
      delete
        GROUP_PRC_KNOWLS gpk
      where
        (gpk.PRC_KNOWL_CODE = :new.PRC_KNOWL_CODE)
      ;
    else
      delete
        DEFINITE_PRC_KNOWLS dpk
      where
        (dpk.PRC_KNOWL_CODE = :new.PRC_KNOWL_CODE)
      ;
    end if;
        
  end if;
  
  
  if inserting or
     (:old.IS_GROUP <> :new.IS_GROUP) then

    if (:new.IS_GROUP = 1) then
      insert into GROUP_PRC_KNOWLS
        (PRC_KNOWL_CODE)
      values
        (:new.PRC_KNOWL_CODE)
      ;
    else
      insert into DEFINITE_PRC_KNOWLS
        (PRC_KNOWL_CODE)
      values
        (:new.PRC_KNOWL_CODE)
      ;
    end if;
     
  end if;
end tr_PK_AIU_IS_GROUP;
/
