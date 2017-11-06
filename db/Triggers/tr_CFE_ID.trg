create or replace trigger tr_CFE_ID
  instead of delete on COMPANIES_FOR_EDIT
  for each row
begin

  if not StateUtils.InCfeUpdate then
    StateUtils.BeginCfeUpdate;
    begin
    
      delete
        PAR_RELS_FOR_EDIT pr
      where
        (pr.PARTNER_CODE = :old.COMPANY_CODE);

      delete
        CLIENT_COMPANIES_FOR_EDIT cc
      where
        (cc.CLIENT_COMPANY_CODE = :old.COMPANY_CODE);

      delete
        VENDOR_COMPANIES_FOR_EDIT vc
      where
        (vc.VENDOR_COMPANY_CODE = :old.COMPANY_CODE);

      delete
        COMPANIES c
      where
        (c.COMPANY_CODE = :old.COMPANY_CODE);
        
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
        StateUtils.EndCfeUpdate;
        raise;
    end;
    StateUtils.EndCfeUpdate;
  end if;
  
end tr_CFE_ID;
/
