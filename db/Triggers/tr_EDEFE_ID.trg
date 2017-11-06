create or replace trigger tr_EDEFE_ID
  instead of delete on EMP_DISCIPLINE_EVENTS_FOR_EDIT  
  for each row
begin

  if not StateUtils.InEdefeUpdate then
    StateUtils.BeginEdefeUpdate;
    begin
    
      delete
        EMPLOYEE_DISCIPLINE_EVENTS ede
      where
        (ede.DISCIPLINE_EVENT_CODE = :old.DISCIPLINE_EVENT_CODE);
        
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
        StateUtils.EndEdefeUpdate;
        raise;
    end;
    StateUtils.EndEdefeUpdate;
  end if;
  
end tr_EDEFE_ID;
/
