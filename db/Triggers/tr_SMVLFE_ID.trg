create or replace trigger tr_SMVLFE_ID
  instead of delete on SMVL_FOR_EDIT
  for each row
begin

  if not StateUtils.InSmvlfeUpdate then
    StateUtils.BeginSmvlfeUpdate;
    begin
    
      delete
        SMVS_FOR_EDIT smvs
      where
        (smvs.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (smvs.SPEC_MODEL_VARIANT_NO = :old.SPEC_MODEL_VARIANT_NO) and
        (smvs.SPEC_LINE_CODE = :old.SPEC_LINE_CODE);
    
      delete
        SPEC_MODEL_VARIANT_LINES smvl
      where
        (smvl.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (smvl.SPEC_MODEL_VARIANT_NO = :old.SPEC_MODEL_VARIANT_NO) and
        (smvl.SPEC_LINE_CODE = :old.SPEC_LINE_CODE);
        
    exception
      when others then
        StateUtils.EndSmvlfeUpdate;
        raise;
    end;
    StateUtils.EndSmvlfeUpdate;
  end if;
  
end tr_SMVLFE_ID;
/
