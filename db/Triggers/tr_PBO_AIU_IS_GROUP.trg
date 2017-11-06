create or replace trigger tr_PBO_AIU_IS_GROUP
  after insert or update on PRC_BASE_OPS
  for each row
begin
  if updating and 
     (:old.IS_GROUP <> :new.IS_GROUP) then
     
    if (:old.IS_GROUP = 1) then
      delete
        GROUP_PRC_BASE_OPS gpbo
      where
        (gpbo.PRC_BASE_OP_CODE = :new.PRC_BASE_OP_CODE)
      ;
    else
      delete
        DEFINITE_PRC_BASE_OPS dpbo
      where
        (dpbo.PRC_BASE_OP_CODE = :new.PRC_BASE_OP_CODE)
      ;
    end if;
        
  end if;
  
  
  if inserting or
     (:old.IS_GROUP <> :new.IS_GROUP) then

    if (:new.IS_GROUP = 1) then
      insert into GROUP_PRC_BASE_OPS
        (PRC_BASE_OP_CODE)
      values
        (:new.PRC_BASE_OP_CODE)
      ;
    else
      insert into DEFINITE_PRC_BASE_OPS
        (PRC_BASE_OP_CODE)
      values
        (:new.PRC_BASE_OP_CODE)
      ;
    end if;
     
  end if;
end tr_PBO_AIU_IS_GROUP;
/
