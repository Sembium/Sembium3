create or replace trigger tr_MLMSFE_ID
  instead of delete on ML_MODEL_STAGES_FOR_EDIT
  for each row
begin

  if not StateUtils.InMlmsfeUpdate then
    StateUtils.BeginMlmsfeUpdate;
    begin
    
      for x in
        (
          select
            mlmso.MLMSO_OBJECT_BRANCH_CODE,
            mlmso.MLMSO_OBJECT_CODE
          from
            MLMS_OPERATIONS mlmso
          where
            (mlmso.MLMS_OBJECT_BRANCH_CODE = :old.MLMS_OBJECT_BRANCH_CODE) and
            (mlmso.MLMS_OBJECT_CODE = :old.MLMS_OBJECT_CODE)
        ) 
      loop
        delete
          MLMS_OPERATIONS_FOR_EDIT mlmso
        where
          (mlmso.MLMSO_OBJECT_BRANCH_CODE = x.MLMSO_OBJECT_BRANCH_CODE) and
          (mlmso.MLMSO_OBJECT_CODE = x.MLMSO_OBJECT_CODE);
      
        delete 
          PROCESS_OBJECTS po
        where
          (po.PROCESS_OBJECT_BRANCH_CODE = x.MLMSO_OBJECT_BRANCH_CODE) and
          (po.PROCESS_OBJECT_CODE = x.MLMSO_OBJECT_CODE);
      
      end loop;         
        
      delete
        ML_MODEL_STAGES mlms
      where
        (mlms.MLMS_OBJECT_BRANCH_CODE = :old.MLMS_OBJECT_BRANCH_CODE) and
        (mlms.MLMS_OBJECT_CODE = :old.MLMS_OBJECT_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) then
        
        delete
          DOCS_FOR_EDIT dfe
        where
          (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
          (dfe.DOC_CODE = :old.DOC_CODE);
         
      end if;
      
    exception
      when others then
        StateUtils.EndMlmsfeUpdate;
        raise;
    end;
    StateUtils.EndMlmsfeUpdate;
  end if;
  
end tr_MLMSFE_ID;
/
