create or replace trigger tr_DFPFE_IU
  instead of update on DEFINITE_PRODUCTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InDfpfeUpdate then
    StateUtils.BeginDfpfeUpdate;
    begin
    
      if (:new.PRODUCT_CODE <> :old.PRODUCT_CODE) then
        raise_application_error(-20000, 'Internal error: DEFINITE_PRODUCTS key should not be changed');
      end if;
      
      update
        DEFINITE_PRODUCTS dp
      set
        dp.COMMON_PRODUCT_CODE = :new.COMMON_PRODUCT_CODE
      where
        (dp.PRODUCT_CODE = :old.PRODUCT_CODE);
    
         
      -- trigger update of all fields
      update
        PRODUCT_PERIODS_FOR_EDIT pp
      set
        pp.PRECISION_LEVEL_CODE = pp.PRECISION_LEVEL_CODE
      where
        (pp.PRODUCT_CODE = :new.PRODUCT_CODE);        
    
      
    exception
      when others then
        StateUtils.EndDfpfeUpdate;
        raise;
    end;
    StateUtils.EndDfpfeUpdate;
  end if;

end tr_DFPFE_IU;
/
