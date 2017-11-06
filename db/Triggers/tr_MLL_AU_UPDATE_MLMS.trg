create or replace trigger tr_MLL_AU_UPDATE_MLMS
  after update on MATERIAL_LIST_LINES 
  for each row 
begin
  if (:new.STORE_CODE <> :old.STORE_CODE) then
  
    if not StateUtils.InMlmsUpdate then
    
      StateUtils.BeginMlmsUpdate;
      begin
      
        update ML_MODEL_STAGES_FOR_EDIT mlms
        set
          mlms.DEPT_CODE = :new.STORE_CODE
        where
          (mlms.MLL_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
          (mlms.MLL_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
          (mlms.ML_MODEL_STAGE_NO = 0)
        ;
        
      exception
        when others then
          StateUtils.EndMlmsUpdate;
          raise;
      end;
      StateUtils.EndMlmsUpdate;
      
    end if;
    
  end if;  
end tr_MLL_AU_UPDATE_MLMS;
/
