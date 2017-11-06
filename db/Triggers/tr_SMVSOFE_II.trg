create or replace trigger tr_SMVSOFE_II
  instead of insert on SMVS_OPERATIONS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSmvsofeUpdate then
    StateUtils.BeginSmvsofeUpdate;
    begin
    
      insert into SMVS_OPERATIONS
      (
        DEPT_CODE,
        DOC_BRANCH_CODE,
        DOC_CODE,
        EFFORT_COEF,
        HAS_SPECIAL_CONTROL,
        HOUR_TECH_QUANTITY,
        NOTES,
        OPERATION_TYPE_CODE,
        PROFESSION_CODE,
        PROGRAM_TOOL_PRODUCT_CODE,
        SETUP_EFFORT_COEF,
        SETUP_HOUR_TECH_QUANTITY,
        SETUP_PROFESSION_CODE,
        SMVS_OPERATION_CODE,
        SMVS_OPERATION_NO,
        SMVS_OPERATION_VARIANT_NO,
        SPECIFIC_TOOL_DETAIL_TECH_QTY,
        SPECIFIC_TOOL_PRODUCT_CODE,
        SPEC_LINE_CODE,
        SPEC_LINE_STAGE_CODE,
        SPEC_MODEL_VARIANT_NO,
        SPEC_PRODUCT_CODE,
        TREATMENT_BEGIN_WORKDAY_NO,
        TREATMENT_WORKDAYS,
        TYPICAL_TOOL_DETAIL_TECH_QTY,
        TYPICAL_TOOL_PRODUCT_CODE,
        PROGRAM_TOOL_REQUIREMENT_CODE,
        SPECIFIC_TOOL_REQUIREMENT_CODE,
        TYPICAL_TOOL_REQUIREMENT_CODE,
        PROGRAM_TOOL_IS_COMPLETE,
        SPECIFIC_TOOL_IS_COMPLETE,
        TYPICAL_TOOL_IS_COMPLETE,
        SETUP_COUNT,
        IS_AUTO_MOVEMENT,
        IS_AUTO_SETUP
      )
      values
      (
        :new.DEPT_CODE,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.EFFORT_COEF,
        :new.HAS_SPECIAL_CONTROL,
        :new.HOUR_TECH_QUANTITY,
        :new.NOTES,
        :new.OPERATION_TYPE_CODE,
        :new.PROFESSION_CODE,
        :new.PROGRAM_TOOL_PRODUCT_CODE,
        :new.SETUP_EFFORT_COEF,
        :new.SETUP_HOUR_TECH_QUANTITY,
        :new.SETUP_PROFESSION_CODE,
        :new.SMVS_OPERATION_CODE,
        :new.SMVS_OPERATION_NO,
        :new.SMVS_OPERATION_VARIANT_NO,
        :new.SPECIFIC_TOOL_DETAIL_TECH_QTY,
        :new.SPECIFIC_TOOL_PRODUCT_CODE,
        :new.SPEC_LINE_CODE,
        :new.SPEC_LINE_STAGE_CODE,
        :new.SPEC_MODEL_VARIANT_NO,
        :new.SPEC_PRODUCT_CODE,
        :new.TREATMENT_BEGIN_WORKDAY_NO,
        :new.TREATMENT_WORKDAYS,
        :new.TYPICAL_TOOL_DETAIL_TECH_QTY,
        :new.TYPICAL_TOOL_PRODUCT_CODE,
        :new.PROGRAM_TOOL_REQUIREMENT_CODE,
        :new.SPECIFIC_TOOL_REQUIREMENT_CODE,
        :new.TYPICAL_TOOL_REQUIREMENT_CODE,
        :new.PROGRAM_TOOL_IS_COMPLETE,
        :new.SPECIFIC_TOOL_IS_COMPLETE,
        :new.TYPICAL_TOOL_IS_COMPLETE,
        :new.SETUP_COUNT,
        Coalesce(:new.IS_AUTO_MOVEMENT, 0),
        Coalesce(:new.IS_AUTO_SETUP, 0)
      );
    
    exception
      when others then
        StateUtils.EndSmvsofeUpdate;
        raise;
    end;
    StateUtils.EndSmvsofeUpdate;
  end if;

end tr_SMVSOFE_II;
/
