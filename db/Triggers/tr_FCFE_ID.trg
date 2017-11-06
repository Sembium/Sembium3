create or replace trigger tr_FCFE_ID
  instead of delete on FIN_CLASSES_FOR_EDIT  
  for each row
begin

  if not StateUtils.InFcfeUpdate then
    StateUtils.BeginFcfeUpdate;
    begin
    
      delete
        FIN_CLASSES fc
      where
        (fc.FIN_CLASS_CODE = :old.FIN_CLASS_CODE);
        
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
        StateUtils.EndFcfeUpdate;
        raise;
    end;
    StateUtils.EndFcfeUpdate;
  end if;
  
end tr_FCFE_ID;
/
