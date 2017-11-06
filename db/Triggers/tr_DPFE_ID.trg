create or replace trigger tr_DPFE_ID
  instead of delete on DEPT_PERIODS_FOR_EDIT
  for each row
begin

  if not StateUtils.InDpfeUpdate then
    StateUtils.BeginDpfeUpdate;
    begin
    
      delete
        DEPT_PERIODS dp
      where
        (dp.DEPT_PERIOD_CODE = :old.DEPT_PERIOD_CODE);

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
        StateUtils.EndDpfeUpdate;
        raise;
    end;
    StateUtils.EndDpfeUpdate;
  end if;
    
end tr_DPFE_ID;
/
