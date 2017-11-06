create or replace trigger tr_SMVFE_ID
  instead of delete on SPEC_MODEL_VARIANTS_FOR_EDIT
  for each row
declare
  IsEstVariant Number;
begin

  if not StateUtils.InSmvfeUpdate then
    StateUtils.BeginSmvfeUpdate;
    begin
    
      select
        Max(ppsmv.IS_EST_VARIANT)
      into
        IsEstVariant
      from
        PROD_PER_SPEC_MODEL_VARIANTS ppsmv
      where
        (ppsmv.PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (ppsmv.SPEC_MODEL_VARIANT_NO = :old.SPEC_MODEL_VARIANT_NO);
        
      if (IsEstVariant = 1) then
        raise_application_error(-20002, ServerMessages.SCantDeleteEstSMVId);
      end if;


      delete
        SMVL_FOR_EDIT smvl
      where
        (smvl.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (smvl.SPEC_MODEL_VARIANT_NO = :old.SPEC_MODEL_VARIANT_NO);
        
        
      update
        SMVL_FOR_EDIT smvl
      set
        smvl.IMPORT_SPEC_PRODUCT_CODE = null,
        smvl.IMPORT_SPEC_MODEL_VARIANT_NO = null
      where
        (smvl.IMPORT_SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (smvl.IMPORT_SPEC_MODEL_VARIANT_NO = :old.SPEC_MODEL_VARIANT_NO);
      

      delete
        PROD_PER_SPEC_MODEL_VARIANTS ppsmv
      where
        (ppsmv.PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (ppsmv.SPEC_MODEL_VARIANT_NO = :old.SPEC_MODEL_VARIANT_NO);

      
      delete
        SPEC_MODEL_VARIANTS smv
      where
        (smv.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (smv.SPEC_MODEL_VARIANT_NO = :old.SPEC_MODEL_VARIANT_NO);
        
    exception
      when others then
        StateUtils.EndSmvfeUpdate;
        raise;
    end;
    StateUtils.EndSmvfeUpdate;
  end if;
  
end tr_SMVFE_ID;
/
