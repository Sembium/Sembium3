create or replace trigger tr_PA_AIU_IS_BASE_ACTION
  after insert or update of IS_BASE_ACTION on PRC_ACTIONS
  for each row
begin

  if inserting then
    
    if (:new.IS_BASE_ACTION = 1) then
    
      insert into PRC_BASE_ACTIONS
        (PRC_ACTION_CODE)
      values
        (:new.PRC_ACTION_CODE);
    
    end if;
    
  end if;
  
  if updating and
    (:old.IS_BASE_ACTION <> :new.IS_BASE_ACTION) then
     
    if (:old.IS_BASE_ACTION = 1) then
    
      delete
        PRC_BASE_ACTIONS pba
      where
        (pba.PRC_ACTION_CODE = :new.PRC_ACTION_CODE);
        
    else
    
      insert into PRC_BASE_ACTIONS
        (PRC_ACTION_CODE)
      values
        (:new.PRC_ACTION_CODE);
        
    end if;
        
  end if;
  
end tr_PA_AIU_IS_BASE_ACTION;
/
