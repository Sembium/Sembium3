create or replace trigger tr_MLMSFE_II
  instead of insert on ML_MODEL_STAGES_FOR_EDIT
  for each row
begin

  if not StateUtils.InMlmsfeUpdate then
    StateUtils.BeginMlmsfeUpdate;
    begin
    
      insert into ML_MODEL_STAGES
      (
        DEPT_CODE,
        DOC_BRANCH_CODE,
        DOC_CODE,
        EXTERNAL_WORK_PRICE,
        IS_AUTO_MOVEMENT,
        MLL_OBJECT_BRANCH_CODE,
        MLL_OBJECT_CODE,
        ML_MODEL_STAGE_NO,
        MLMS_OBJECT_BRANCH_CODE,
        MLMS_OBJECT_CODE,
        OUTGOING_WORKDAYS,
        TOTAL_TREATMENT_WORKDAYS,
        TREATMENT_BEGIN_DATE,
        TREATMENT_END_DATE,
        TREATMENT_WORKDAYS
      )
      values
      (
        :new.DEPT_CODE,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.EXTERNAL_WORK_PRICE,
        :new.IS_AUTO_MOVEMENT,
        :new.MLL_OBJECT_BRANCH_CODE,
        :new.MLL_OBJECT_CODE,
        :new.ML_MODEL_STAGE_NO,
        :new.MLMS_OBJECT_BRANCH_CODE,
        :new.MLMS_OBJECT_CODE,
        :new.OUTGOING_WORKDAYS,
        :new.TOTAL_TREATMENT_WORKDAYS,
        :new.TREATMENT_BEGIN_DATE,
        :new.TREATMENT_END_DATE,
        :new.TREATMENT_WORKDAYS
      );
    
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

end tr_MLMSFE_II;
/
