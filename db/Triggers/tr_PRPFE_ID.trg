create or replace trigger tr_PRPFE_ID
  instead of delete on PAR_REL_PRODUCTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPrpfeUpdate then
    StateUtils.BeginPrpfeUpdate;
    begin
    
      delete
        PAR_REL_PRODUCT_PERS_FOR_EDIT prpper
      where
        (prpper.PARTNER_CODE = :old.PARTNER_CODE) and
        (prpper.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE) and
        (prpper.PRODUCT_CODE = :old.PRODUCT_CODE);

      delete
        PAR_REL_PRODUCTS prp
      where
        (prp.PARTNER_CODE = :old.PARTNER_CODE) and
        (prp.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE) and
        (prp.PRODUCT_CODE = :old.PRODUCT_CODE);
        
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
        StateUtils.EndPrpfeUpdate;
        raise;
    end;
    StateUtils.EndPrpfeUpdate;
  end if;
  
end tr_PRPFE_ID;
/
