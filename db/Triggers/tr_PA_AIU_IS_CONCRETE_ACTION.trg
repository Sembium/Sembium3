create or replace trigger tr_PA_AIU_IS_CONCRETE_ACTION
  after insert or update of IS_CONCRETE_ACTION on PRC_ACTIONS
  for each row
begin

  if inserting then
    
    if (:new.IS_CONCRETE_ACTION = 1) then
    
      insert into PRC_CONCRETE_ACTIONS
        (PRC_ACTION_CODE)
      values
        (:new.PRC_ACTION_CODE);
    
    end if;
    
  end if;
  
  if updating and
    (:old.IS_CONCRETE_ACTION <> :new.IS_CONCRETE_ACTION)  then
     
    if (:old.IS_CONCRETE_ACTION = 1) then
    
      delete
        PRC_CONCRETE_ACTIONS pca
      where
        (pca.PRC_ACTION_CODE = :new.PRC_ACTION_CODE);
        
    else
    
      insert into PRC_CONCRETE_ACTIONS
        (PRC_ACTION_CODE)
      values
        (:new.PRC_ACTION_CODE);
        
    end if;
        
  end if;
  
end tr_PA_AIU_IS_CONCRETE_ACTION;
/
