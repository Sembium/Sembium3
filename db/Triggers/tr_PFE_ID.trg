create or replace trigger tr_PFE_ID
  instead of delete on PRODUCTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPfeUpdate then
    StateUtils.BeginPfeUpdate;
    begin

      for x in
        ( select
            pp.PRODUCT_PARAM_CODE
          from
            PRODUCT_PARAMS pp
          where
            (pp.PRODUCT_CODE = :old.PRODUCT_CODE)
        ) 
      loop        
        delete
          PRODUCT_PARAMS_FOR_EDIT pp
        where
          (pp.PRODUCT_CODE = :old.PRODUCT_CODE) and
          (pp.PRODUCT_PARAM_CODE = x.PRODUCT_PARAM_CODE);        
      end loop;     
    
      delete
        DEFINITE_PRODUCTS_FOR_EDIT dp
      where
        (dp.PRODUCT_CODE = :old.PRODUCT_CODE);
        
      delete
        PRODUCTS p
      where
        (p.PRODUCT_CODE = :old.PRODUCT_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) then
         
        delete
          DOCS_FOR_EDIT dfe
        where
          (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
          (dfe.DOC_CODE = :old.DOC_CODE);
         
      end if;

    exception
      when others then
        StateUtils.EndPfeUpdate;
        raise;
    end;
    StateUtils.EndPfeUpdate;
  end if;
    
end tr_PFE_ID;
/
