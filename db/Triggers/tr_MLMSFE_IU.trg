create or replace trigger tr_MLMSFE_IU
  instead of update on ML_MODEL_STAGES_FOR_EDIT
  for each row
begin

  if not StateUtils.InMlmsfeUpdate then
    StateUtils.BeginMlmsfeUpdate;
    begin
    
      if ( (:new.MLMS_OBJECT_BRANCH_CODE <> :old.MLMS_OBJECT_BRANCH_CODE) or
           (:new.MLMS_OBJECT_CODE <> :old.MLMS_OBJECT_CODE) ) then
        raise_application_error(-20000, 'Internal error: ML_MODEL_STAGES key should not be changed');
      end if;
      
      update
        ML_MODEL_STAGES mlms
      set
        mlms.DEPT_CODE = :new.DEPT_CODE,
        mlms.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        mlms.DOC_CODE = :new.DOC_CODE,
        mlms.EXTERNAL_WORK_PRICE = :new.EXTERNAL_WORK_PRICE,
        mlms.IS_AUTO_MOVEMENT = :new.IS_AUTO_MOVEMENT,
        mlms.MLL_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE,
        mlms.MLL_OBJECT_CODE = :new.MLL_OBJECT_CODE,
        mlms.ML_MODEL_STAGE_NO = :new.ML_MODEL_STAGE_NO,
        mlms.OUTGOING_WORKDAYS = :new.OUTGOING_WORKDAYS,
        mlms.TOTAL_TREATMENT_WORKDAYS = :new.TOTAL_TREATMENT_WORKDAYS,
        mlms.TREATMENT_BEGIN_DATE = :new.TREATMENT_BEGIN_DATE,
        mlms.TREATMENT_END_DATE = :new.TREATMENT_END_DATE,
        mlms.TREATMENT_WORKDAYS = :new.TREATMENT_WORKDAYS
      where
        (mlms.MLMS_OBJECT_BRANCH_CODE = :old.MLMS_OBJECT_BRANCH_CODE) and
        (mlms.MLMS_OBJECT_CODE = :old.MLMS_OBJECT_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) and
         ( (:old.DOC_BRANCH_CODE <> Coalesce(:new.DOC_BRANCH_CODE, 0)) or
           (:old.DOC_CODE <> Coalesce(:new.DOC_CODE, 0)) ) then
         
         delete
           DOCS_FOR_EDIT dfe
         where
           (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
           (dfe.DOC_CODE = :old.DOC_CODE);
         
      end if;
      
      -- begin tr_MLMS_AIU_UPDATE_MLL
      if (not StateUtils.InMlmsUpdate) then
        StateUtils.BeginMlmsUpdate;
        begin
          if (:new.ML_MODEL_STAGE_NO = 0) then
            update
              MATERIAL_LIST_LINES_FOR_EDIT mll
            set
              mll.STORE_CODE = :new.DEPT_CODE,
              mll.PRODUCT_NEED_BEGIN_DATE = :new.TREATMENT_BEGIN_DATE,
              mll.PRODUCT_NEED_END_DATE = :new.TREATMENT_BEGIN_DATE
            where
              (mll.MLL_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
              (mll.MLL_OBJECT_CODE = :new.MLL_OBJECT_CODE)
            ;
          end if;  
            
          if (:new.ML_MODEL_STAGE_NO = 1) then
            update
              PLANNED_STORE_DEALS_FOR_EDIT psd
            set
              psd.DEPT_CODE = :new.DEPT_CODE
            where
              (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
              (psd.BND_PROCESS_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
              (psd.IN_OUT < 0);
          end if;
        exception
          when others then
            StateUtils.EndMlmsUpdate;
            raise;
        end;
        StateUtils.EndMlmsUpdate;
      end if;
      -- end tr_MLMS_AIU_UPDATE_MLL
    
    exception
      when others then
        StateUtils.EndMlmsfeUpdate;
        raise;
    end;
    StateUtils.EndMlmsfeUpdate;
  end if;

end tr_MLMSFE_IU;
/
