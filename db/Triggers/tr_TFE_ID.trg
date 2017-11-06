create or replace trigger tr_TFE_ID
  instead of delete on TEAMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InTfeUpdate then
    StateUtils.BeginTfeUpdate;
    begin
    
      delete
        TEAMS t
      where
        (t.TEAM_CODE = :old.TEAM_CODE);
        
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
        StateUtils.EndTfeUpdate;
        raise;
    end;
    StateUtils.EndTfeUpdate;
  end if;
  
end tr_TFE_ID;
/
