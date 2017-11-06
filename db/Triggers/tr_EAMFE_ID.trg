create or replace trigger tr_EAMFE_ID
  instead of delete on EMP_AVAIL_MODIFIERS_FOR_EDIT
  for each row
begin

  if not StateUtils.InEamfeUpdate then
    StateUtils.BeginEamfeUpdate;
    begin
    
      delete
        EMP_AVAIL_MODIFIERS eam
      where
        (eam.EMP_AVAIL_MODIFIER_CODE = :old.EMP_AVAIL_MODIFIER_CODE);
        
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
        StateUtils.EndEamfeUpdate;
        raise;
    end;
    StateUtils.EndEamfeUpdate;
  end if;
  
end tr_EAMFE_ID;
/
