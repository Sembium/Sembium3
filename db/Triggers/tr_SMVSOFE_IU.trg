create or replace trigger tr_SMVSOFE_IU
  instead of update on SMVS_OPERATIONS_FOR_EDIT
  for each row
declare
  DocOperationCount Number;
begin

  if not StateUtils.InSmvsofeUpdate then
    StateUtils.BeginSmvsofeUpdate;
    begin
    
      if ( (:new.SPEC_PRODUCT_CODE <> :old.SPEC_PRODUCT_CODE) or
           (:new.SPEC_MODEL_VARIANT_NO <> :old.SPEC_MODEL_VARIANT_NO) or
           (:new.SPEC_LINE_CODE <> :old.SPEC_LINE_CODE) or
           (:new.SPEC_LINE_STAGE_CODE <> :old.SPEC_LINE_STAGE_CODE) or
           (:new.SMVS_OPERATION_CODE <> :old.SMVS_OPERATION_CODE) ) then
        raise_application_error(-20000, 'Internal error: SMVS_OPERATIONS key should not be changed');
      end if;
      
      update
        SMVS_OPERATIONS smvso
      set
        smvso.DEPT_CODE = :new.DEPT_CODE,
        smvso.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        smvso.DOC_CODE = :new.DOC_CODE,
        smvso.EFFORT_COEF = :new.EFFORT_COEF,
        smvso.HAS_SPECIAL_CONTROL = :new.HAS_SPECIAL_CONTROL,
        smvso.HOUR_TECH_QUANTITY = :new.HOUR_TECH_QUANTITY,
        smvso.NOTES = :new.NOTES,
        smvso.OPERATION_TYPE_CODE = :new.OPERATION_TYPE_CODE,
        smvso.PROFESSION_CODE = :new.PROFESSION_CODE,
        smvso.PROGRAM_TOOL_PRODUCT_CODE = :new.PROGRAM_TOOL_PRODUCT_CODE,
        smvso.SETUP_EFFORT_COEF = :new.SETUP_EFFORT_COEF,
        smvso.SETUP_HOUR_TECH_QUANTITY = :new.SETUP_HOUR_TECH_QUANTITY,
        smvso.SETUP_PROFESSION_CODE = :new.SETUP_PROFESSION_CODE,
        smvso.SMVS_OPERATION_NO = :new.SMVS_OPERATION_NO,
        smvso.SMVS_OPERATION_VARIANT_NO = :new.SMVS_OPERATION_VARIANT_NO,
        smvso.SPECIFIC_TOOL_DETAIL_TECH_QTY = :new.SPECIFIC_TOOL_DETAIL_TECH_QTY,
        smvso.SPECIFIC_TOOL_PRODUCT_CODE = :new.SPECIFIC_TOOL_PRODUCT_CODE,
        smvso.TREATMENT_BEGIN_WORKDAY_NO = :new.TREATMENT_BEGIN_WORKDAY_NO,
        smvso.TREATMENT_WORKDAYS = :new.TREATMENT_WORKDAYS,
        smvso.TYPICAL_TOOL_DETAIL_TECH_QTY = :new.TYPICAL_TOOL_DETAIL_TECH_QTY,
        smvso.TYPICAL_TOOL_PRODUCT_CODE = :new.TYPICAL_TOOL_PRODUCT_CODE,
        smvso.PROGRAM_TOOL_REQUIREMENT_CODE = :new.PROGRAM_TOOL_REQUIREMENT_CODE,
        smvso.SPECIFIC_TOOL_REQUIREMENT_CODE = :new.SPECIFIC_TOOL_REQUIREMENT_CODE,
        smvso.TYPICAL_TOOL_REQUIREMENT_CODE = :new.TYPICAL_TOOL_REQUIREMENT_CODE,
        smvso.PROGRAM_TOOL_IS_COMPLETE = :new.PROGRAM_TOOL_IS_COMPLETE,
        smvso.SPECIFIC_TOOL_IS_COMPLETE = :new.SPECIFIC_TOOL_IS_COMPLETE,
        smvso.TYPICAL_TOOL_IS_COMPLETE = :new.TYPICAL_TOOL_IS_COMPLETE,
        smvso.SETUP_COUNT = :new.SETUP_COUNT,
        smvso.IS_AUTO_MOVEMENT = :new.IS_AUTO_MOVEMENT,
        smvso.IS_AUTO_SETUP = :new.IS_AUTO_SETUP
      where
        (smvso.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (smvso.SPEC_MODEL_VARIANT_NO = :old.SPEC_MODEL_VARIANT_NO) and
        (smvso.SPEC_LINE_CODE = :old.SPEC_LINE_CODE) and
        (smvso.SPEC_LINE_STAGE_CODE = :old.SPEC_LINE_STAGE_CODE) and
        (smvso.SMVS_OPERATION_CODE = :old.SMVS_OPERATION_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) and
         ( (:old.DOC_BRANCH_CODE <> Coalesce(:new.DOC_BRANCH_CODE, 0)) or
           (:old.DOC_CODE <> Coalesce(:new.DOC_CODE, 0)) ) then
         
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

end tr_SMVSOFE_IU;
/
