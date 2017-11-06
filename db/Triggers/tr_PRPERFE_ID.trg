create or replace trigger tr_PRPERFE_ID
  instead of delete on PAR_REL_PERIODS_FOR_EDIT  
  for each row
begin

  if not StateUtils.InPrperfeUpdate then
    StateUtils.BeginPrperfeUpdate;
    begin
    
      delete
        SPEC_FIN_MODELS_FOR_EDIT sfmfe
      where
        (sfmfe.PARTNER_CODE = :old.PARTNER_CODE) and
        (sfmfe.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE) and
        (sfmfe.PAR_REL_PERIOD_CODE = :old.PAR_REL_PERIOD_CODE);
    
      delete
        PAR_REL_PERIODS prp
      where
        (prp.PARTNER_CODE = :old.PARTNER_CODE) and
        (prp.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE) and
        (prp.PAR_REL_PERIOD_CODE = :old.PAR_REL_PERIOD_CODE);
        
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
        StateUtils.EndPrperfeUpdate;
        raise;
    end;
    StateUtils.EndPrperfeUpdate;
  end if;
  
end tr_PRPERFE_ID;
/
