create or replace trigger tr_DETFE_ID
  instead of delete on DISC_EVENT_TYPES_FOR_EDIT  
  for each row
begin

  if not StateUtils.InDetfeUpdate then
    StateUtils.BeginDetfeUpdate;
    begin
    
      delete
        DISC_EVENT_TYPES det
      where
        (det.DISC_EVENT_TYPE_CODE = :old.DISC_EVENT_TYPE_CODE);
        
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
        StateUtils.EndDetfeUpdate;
        raise;
    end;
    StateUtils.EndDetfeUpdate;
  end if;
  
end tr_DETFE_ID;
/
