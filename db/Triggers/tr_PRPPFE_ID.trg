create or replace trigger tr_PRPPFE_ID
  instead of delete on PAR_REL_PRODUCT_PERS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPrppfeUpdate then
    StateUtils.BeginPrppfeUpdate;
    begin
    
      delete
        PAR_REL_PRODUCT_PERIODS prpper
      where
        (prpper.PARTNER_CODE = :old.PARTNER_CODE) and
        (prpper.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE) and
        (prpper.PRODUCT_CODE = :old.PRODUCT_CODE) and
        (prpper.PAR_REL_PRODUCT_PERIOD_CODE = :old.PAR_REL_PRODUCT_PERIOD_CODE);

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
        StateUtils.EndPrppfeUpdate;
        raise;
    end;
    StateUtils.EndPrppfeUpdate;
  end if;
  
end tr_PRPPFE_ID;
/
