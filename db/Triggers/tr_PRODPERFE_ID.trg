create or replace trigger tr_PRODPERFE_ID
  instead of delete on PRODUCT_PERIODS_FOR_EDIT  
  for each row
begin

  if not StateUtils.InProdperfeUpdate then
    StateUtils.BeginProdperfeUpdate;
    begin
    
      delete
        PRODUCT_PERIODS pp
      where
        (pp.PRODUCT_CODE = :old.PRODUCT_CODE) and
        (pp.PRODUCT_PERIOD_CODE = :old.PRODUCT_PERIOD_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) then
        
        delete
          DOCS_FOR_EDIT dfe
        where
          (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
          (dfe.DOC_CODE = :old.DOC_CODE);
         
      end if;
      
      ProductUtils.CheckProductPeriods(:old.PRODUCT_CODE);        

    exception
      when others then
        StateUtils.EndProdperfeUpdate;
        raise;
    end;
    StateUtils.EndProdperfeUpdate;
  end if;
  
end tr_PRODPERFE_ID;
/
