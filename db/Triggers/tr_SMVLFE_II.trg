create or replace trigger tr_SMVLFE_II
  instead of insert on SMVL_FOR_EDIT
  for each row
begin

  if not StateUtils.InSmvlfeUpdate then
    StateUtils.BeginSmvlfeUpdate;
    begin
    
      insert into SPEC_MODEL_VARIANT_LINES
      (
        APPROVE_CYCLE_NO,
        IMPORT_SPEC_MODEL_VARIANT_NO,
        IMPORT_SPEC_PRODUCT_CODE,
        SPEC_LINE_CODE,
        SPEC_MODEL_VARIANT_NO,
        SPEC_PRODUCT_CODE
      )
      values
      (
        :new.APPROVE_CYCLE_NO,
        :new.IMPORT_SPEC_MODEL_VARIANT_NO,
        :new.IMPORT_SPEC_PRODUCT_CODE,
        :new.SPEC_LINE_CODE,
        :new.SPEC_MODEL_VARIANT_NO,
        :new.SPEC_PRODUCT_CODE
      );
    
    exception
      when others then
        StateUtils.EndSmvlfeUpdate;
        raise;
    end;
    StateUtils.EndSmvlfeUpdate;
  end if;

end tr_SMVLFE_II;
/
