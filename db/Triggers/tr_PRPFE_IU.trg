create or replace trigger tr_PRPFE_IU
  instead of update on PAR_REL_PRODUCTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPrpfeUpdate then
    StateUtils.BeginPrpfeUpdate;
    begin
    
      if (:new.PARTNER_CODE <> :old.PARTNER_CODE) or
         (:new.BORDER_REL_TYPE_CODE <> :old.BORDER_REL_TYPE_CODE) or
         (:new.PRODUCT_CODE <> :old.PRODUCT_CODE) then
        raise_application_error(-20000, 'Internal error: PAR_REL_PRODUCTS key should not be changed');
      end if;
      
      update
        PAR_REL_PRODUCTS prp
      set
        prp.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        prp.DOC_CODE = :new.DOC_CODE,
        prp.IS_REGULAR = :new.IS_REGULAR
      where
        (prp.PARTNER_CODE = :old.PARTNER_CODE) and
        (prp.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE) and
        (prp.PRODUCT_CODE = :old.PRODUCT_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) and
         ( (:old.DOC_BRANCH_CODE <> Coalesce(:new.DOC_BRANCH_CODE, 0)) or
           (:old.DOC_CODE <> Coalesce(:new.DOC_CODE, 0)) ) then
         
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

end tr_PRPFE_IU;
/
