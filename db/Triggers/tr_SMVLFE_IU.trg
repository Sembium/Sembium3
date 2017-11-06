create or replace trigger tr_SMVLFE_IU
  instead of update on SMVL_FOR_EDIT
  for each row
begin

  if not StateUtils.InSmvlfeUpdate then
    StateUtils.BeginSmvlfeUpdate;
    begin
    
      if ( (:new.SPEC_PRODUCT_CODE <> :old.SPEC_PRODUCT_CODE) or
           (:new.SPEC_MODEL_VARIANT_NO <> :old.SPEC_MODEL_VARIANT_NO) or
           (:new.SPEC_LINE_CODE <> :old.SPEC_LINE_CODE) ) then
        raise_application_error(-20000, 'Internal error: SPEC_MODEL_VARIANT_LINES key should not be changed');
      end if;
      
      update
        SPEC_MODEL_VARIANT_LINES smvl
      set
        smvl.APPROVE_CYCLE_NO = :new.APPROVE_CYCLE_NO,
        smvl.IMPORT_SPEC_MODEL_VARIANT_NO = :new.IMPORT_SPEC_MODEL_VARIANT_NO,
        smvl.IMPORT_SPEC_PRODUCT_CODE = :new.IMPORT_SPEC_PRODUCT_CODE
      where
        (smvl.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (smvl.SPEC_LINE_CODE = :old.SPEC_LINE_CODE) and
        (smvl.SPEC_MODEL_VARIANT_NO = :old.SPEC_MODEL_VARIANT_NO);
        
    exception
      when others then
        StateUtils.EndSmvlfeUpdate;
        raise;
    end;
    StateUtils.EndSmvlfeUpdate;
  end if;

end tr_SMVLFE_IU;
/
