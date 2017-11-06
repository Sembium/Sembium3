create or replace trigger tr_SMVSFE_IU
  instead of update on SMVS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSmvsfeUpdate then
    StateUtils.BeginSmvsfeUpdate;
    begin
    
      if ( (:new.SPEC_PRODUCT_CODE <> :old.SPEC_PRODUCT_CODE) or
           (:new.SPEC_MODEL_VARIANT_NO <> :old.SPEC_MODEL_VARIANT_NO) or
           (:new.SPEC_LINE_CODE <> :old.SPEC_LINE_CODE) or
           (:new.SPEC_LINE_STAGE_CODE <> :old.SPEC_LINE_STAGE_CODE) ) then
        raise_application_error(-20000, 'Internal error: SPEC_MODEL_VARIANT_STAGES key should not be changed');
      end if;
      
      update
        SPEC_MODEL_VARIANT_STAGES smvs
      set
        smvs.DEPT_CODE = :new.DEPT_CODE,
        smvs.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        smvs.DOC_CODE = :new.DOC_CODE,
        smvs.EXTERNAL_WORK_PRICE = :new.EXTERNAL_WORK_PRICE,
        smvs.IS_AUTO_MOVEMENT = :new.IS_AUTO_MOVEMENT,
        smvs.OUTGOING_WORKDAYS = :new.OUTGOING_WORKDAYS,
        smvs.SMVS_TYPE_CODE = :new.SMVS_TYPE_CODE,
        smvs.SPEC_LINE_STAGE_NO = :new.SPEC_LINE_STAGE_NO,
        smvs.TOTAL_TREATMENT_WORKDAYS = :new.TOTAL_TREATMENT_WORKDAYS,
        smvs.TREATMENT_WORKDAYS = :new.TREATMENT_WORKDAYS
      where
        (smvs.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (smvs.SPEC_MODEL_VARIANT_NO = :old.SPEC_MODEL_VARIANT_NO) and
        (smvs.SPEC_LINE_CODE = :old.SPEC_LINE_CODE) and
        (smvs.SPEC_LINE_STAGE_CODE = :old.SPEC_LINE_STAGE_CODE);
        
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
    
    exception
      when others then
        StateUtils.EndSmvsfeUpdate;
        raise;
    end;
    StateUtils.EndSmvsfeUpdate;
  end if;

end tr_SMVSFE_IU;
/
