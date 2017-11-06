create or replace trigger tr_SMVSFE_ID
  instead of delete on SMVS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSmvsfeUpdate then
    StateUtils.BeginSmvsfeUpdate;
    begin
    
      delete
        SMVS_OPERATIONS_FOR_EDIT smvso
      where
        (smvso.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (smvso.SPEC_MODEL_VARIANT_NO = :old.SPEC_MODEL_VARIANT_NO) and
        (smvso.SPEC_LINE_CODE = :old.SPEC_LINE_CODE) and
        (smvso.SPEC_LINE_STAGE_CODE = :old.SPEC_LINE_STAGE_CODE);
        
      delete
        SPEC_MODEL_VARIANT_STAGES smvs
      where
        (smvs.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (smvs.SPEC_MODEL_VARIANT_NO = :old.SPEC_MODEL_VARIANT_NO) and
        (smvs.SPEC_LINE_CODE = :old.SPEC_LINE_CODE) and
        (smvs.SPEC_LINE_STAGE_CODE = :old.SPEC_LINE_STAGE_CODE);
        
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
        StateUtils.EndSmvsfeUpdate;
        raise;
    end;
    StateUtils.EndSmvsfeUpdate;
  end if;
  
end tr_SMVSFE_ID;
/
