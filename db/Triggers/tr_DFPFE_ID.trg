create or replace trigger tr_DFPFE_ID
  instead of delete on DEFINITE_PRODUCTS_FOR_EDIT  
  for each row
begin

  if not StateUtils.InDfpfeUpdate then
    StateUtils.BeginDfpfeUpdate;
    begin
    
      delete
        DEFINITE_PRODUCTS dp
      where
        (dp.PRODUCT_CODE = :old.PRODUCT_CODE);
        
    exception
      when others then
        StateUtils.EndDfpfeUpdate;
        raise;
    end;
    StateUtils.EndDfpfeUpdate;
  end if;
  
end tr_DFPFE_ID;
/
