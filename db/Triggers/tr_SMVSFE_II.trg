create or replace trigger tr_SMVSFE_II
  instead of insert on SMVS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSmvsfeUpdate then
    StateUtils.BeginSmvsfeUpdate;
    begin
    
      insert into SPEC_MODEL_VARIANT_STAGES
      (
        DEPT_CODE,
        DOC_BRANCH_CODE,
        DOC_CODE,
        EXTERNAL_WORK_PRICE,
        IS_AUTO_MOVEMENT,
        OUTGOING_WORKDAYS,
        SMVS_TYPE_CODE,
        SPEC_LINE_CODE,
        SPEC_LINE_STAGE_CODE,
        SPEC_LINE_STAGE_NO,
        SPEC_MODEL_VARIANT_NO,
        SPEC_PRODUCT_CODE,
        TOTAL_TREATMENT_WORKDAYS,
        TREATMENT_WORKDAYS
      )
      values
      (
        :new.DEPT_CODE,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.EXTERNAL_WORK_PRICE,
        :new.IS_AUTO_MOVEMENT,
        :new.OUTGOING_WORKDAYS,
        :new.SMVS_TYPE_CODE,
        :new.SPEC_LINE_CODE,
        :new.SPEC_LINE_STAGE_CODE,
        :new.SPEC_LINE_STAGE_NO,
        :new.SPEC_MODEL_VARIANT_NO,
        :new.SPEC_PRODUCT_CODE,
        :new.TOTAL_TREATMENT_WORKDAYS,
        :new.TREATMENT_WORKDAYS
      );
    
    exception
      when others then
        StateUtils.EndSmvsfeUpdate;
        raise;
    end;
    StateUtils.EndSmvsfeUpdate;
  end if;

end tr_SMVSFE_II;
/
