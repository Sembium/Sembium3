create or replace trigger tr_SPCFE_ID
  instead of delete on SPECS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSpcfeUpdate then
    StateUtils.BeginSpcfeUpdate;
    begin
    
      delete
        SPEC_LINES_FOR_EDIT sl
      where
        (sl.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (sl.PARENT_SPEC_LINE_CODE is null);
    
      delete
        SPEC_MODEL_VARIANTS_FOR_EDIT smv
      where
        (smv.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE);
    
      delete
        SPECS spc
      where
        (spc.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE);
        
    exception
      when others then
        StateUtils.EndSpcfeUpdate;
        raise;
    end;
    StateUtils.EndSpcfeUpdate;
  end if;
  
end tr_SPCFE_ID;
/
