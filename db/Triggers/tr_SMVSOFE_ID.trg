create or replace trigger tr_SMVSOFE_ID
  instead of delete on SMVS_OPERATIONS_FOR_EDIT
  for each row
declare
  DocOperationCount Number;
begin

  if not StateUtils.InSmvsofeUpdate then
    StateUtils.BeginSmvsofeUpdate;
    begin
    
      delete
        SMVS_OPERATIONS smvso
      where
        (smvso.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (smvso.SPEC_MODEL_VARIANT_NO = :old.SPEC_MODEL_VARIANT_NO) and
        (smvso.SPEC_LINE_CODE = :old.SPEC_LINE_CODE) and
        (smvso.SPEC_LINE_STAGE_CODE = :old.SPEC_LINE_STAGE_CODE) and
        (smvso.SMVS_OPERATION_CODE = :old.SMVS_OPERATION_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) then
        
         select
           Count(*)
         into
           DocOperationCount
         from
           SMVS_OPERATIONS smvso
         where
           (smvso.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
           (smvso.DOC_CODE = :old.DOC_CODE);

         if (DocOperationCount = 0) then
           
           delete
             DOCS_FOR_EDIT dfe
           where
             (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
             (dfe.DOC_CODE = :old.DOC_CODE);
             
         end if;
         
      end if;
      
    exception
      when others then
        StateUtils.EndSmvsofeUpdate;
        raise;
    end;
    StateUtils.EndSmvsofeUpdate;
  end if;
  
end tr_SMVSOFE_ID;
/
