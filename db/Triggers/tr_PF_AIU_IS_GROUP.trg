create or replace trigger tr_PF_AIU_IS_GROUP
  after insert or update on PRC_FUNCS
  for each row
begin
  if updating and 
     (:old.IS_GROUP <> :new.IS_GROUP) then
     
    if (:old.IS_GROUP = 1) then
      delete
        GROUP_PRC_FUNCS gpf
      where
        (gpf.PRC_FUNC_CODE = :new.PRC_FUNC_CODE)
      ;
    else
      delete
        DEFINITE_PRC_FUNCS dpf
      where
        (dpf.PRC_FUNC_CODE = :new.PRC_FUNC_CODE)
      ;
    end if;
        
  end if;
  
  
  if inserting or
     (:old.IS_GROUP <> :new.IS_GROUP) then

    if (:new.IS_GROUP = 1) then
      insert into GROUP_PRC_FUNCS
        (PRC_FUNC_CODE)
      values
        (:new.PRC_FUNC_CODE)
      ;
    else
      insert into DEFINITE_PRC_FUNCS
        (PRC_FUNC_CODE)
      values
        (:new.PRC_FUNC_CODE)
      ;
    end if;
     
  end if;
end tr_PF_AIU_IS_GROUP;
/
