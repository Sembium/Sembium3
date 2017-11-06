create or replace trigger tr_EOFE_ID
  instead of delete on ENGINEERING_ORDERS_FOR_EDIT
  for each row
begin

  if not StateUtils.InEofeUpdate then
    StateUtils.BeginEofeUpdate;
    begin
    
      delete
        ENGINEERING_ORDERS eo
      where
        (eo.ENGINEERING_ORDER_CODE = :old.ENGINEERING_ORDER_CODE);
        
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
        StateUtils.EndEofeUpdate;
        raise;
    end;
    StateUtils.EndEofeUpdate;
  end if;
  
end tr_EOFE_ID;
/
