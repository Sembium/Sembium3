create or replace trigger tr_PA_AIU_IS_PROJECT_ACTION
  after insert or update of IS_PROJECT_ACTION on PRC_ACTIONS
  for each row
begin

  if inserting then
    
    if (:new.IS_PROJECT_ACTION = 1) then
    
      insert into PRC_PROJECT_ACTIONS
        (PRC_ACTION_CODE)
      values
        (:new.PRC_ACTION_CODE);
    
    end if;
    
  end if;
  
  if updating and
    (:old.IS_PROJECT_ACTION <> :new.IS_PROJECT_ACTION) then
     
    if (:old.IS_PROJECT_ACTION = 1) then
    
      delete
        PRC_PROJECT_ACTIONS ppa
      where
        (ppa.PRC_ACTION_CODE = :new.PRC_ACTION_CODE);
        
    else
    
      insert into PRC_PROJECT_ACTIONS
        (PRC_ACTION_CODE)
      values
        (:new.PRC_ACTION_CODE);
        
    end if;
        
  end if;
  
end;
/
