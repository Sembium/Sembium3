create or replace trigger tr_PCO_AIU_IS_GROUP
  after insert or update on PRC_CONCRETE_OPS
  for each row
begin
  if updating and 
     (:old.IS_GROUP <> :new.IS_GROUP) then
     
    if (:old.IS_GROUP = 1) then
      delete
        GROUP_PRC_CONCRETE_OPS gpco
      where
        (gpco.PRC_CONCRETE_OP_CODE = :new.PRC_CONCRETE_OP_CODE)
      ;
    else
      delete
        DEFINITE_PRC_CONCRETE_OPS dpco
      where
        (dpco.PRC_CONCRETE_OP_CODE = :new.PRC_CONCRETE_OP_CODE)
      ;
    end if;
        
  end if;
  
  
  if inserting or
     (:old.IS_GROUP <> :new.IS_GROUP) then

    if (:new.IS_GROUP = 1) then
      insert into GROUP_PRC_CONCRETE_OPS
        (PRC_CONCRETE_OP_CODE)
      values
        (:new.PRC_CONCRETE_OP_CODE)
      ;
    else
      insert into DEFINITE_PRC_CONCRETE_OPS
        (PRC_CONCRETE_OP_CODE)
      values
        (:new.PRC_CONCRETE_OP_CODE)
      ;
    end if;
     
  end if;
end tr_PCO_AIU_IS_GROUP;
/
