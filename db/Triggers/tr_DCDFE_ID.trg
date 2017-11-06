create or replace trigger tr_DCDFE_ID
  instead of delete on DCD_FOR_EDIT
  for each row
begin

  if not StateUtils.InDcdfeUpdate then
    StateUtils.BeginDcdfeUpdate;
    begin
    
      delete
        DEFICIT_COVER_DECISIONS dcd
      where
        (dcd.DCD_OBJECT_BRANCH_CODE = :old.DCD_OBJECT_BRANCH_CODE) and
        (dcd.DCD_OBJECT_CODE = :old.DCD_OBJECT_CODE);
        
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
        StateUtils.EndDcdfeUpdate;
        raise;
    end;
    StateUtils.EndDcdfeUpdate;
  end if;
  
end tr_DCDFE_ID;
/
