create or replace trigger tr_BGFE_ID
  instead of delete on BASE_GROUPS_FOR_EDIT  
  for each row
begin

  if not StateUtils.InBgfeUpdate then
    StateUtils.BeginBgfeUpdate;
    begin
    
      delete
        BASE_GROUPS bg
      where
        (bg.BASE_GROUP_CODE = :old.BASE_GROUP_CODE);
        
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
        StateUtils.EndBgfeUpdate;
        raise;
    end;
    StateUtils.EndBgfeUpdate;
  end if;
  
end tr_BGFE_ID;
/
