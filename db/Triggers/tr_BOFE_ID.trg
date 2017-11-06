create or replace trigger tr_BOFE_ID
  instead of delete on BUDGET_ORDERS_FOR_EDIT
  for each row
begin

  if not StateUtils.InBofeUpdate then
    StateUtils.BeginBofeUpdate;
    begin
    
      delete
        BUDGET_ORDERS bo
      where
        (bo.BUDGET_ORDER_BRANCH_CODE = :old.BUDGET_ORDER_BRANCH_CODE) and
        (bo.BUDGET_ORDER_CODE = :old.BUDGET_ORDER_CODE);
        
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
        StateUtils.EndBofeUpdate;
        raise;
    end;
    StateUtils.EndBofeUpdate;
  end if;
  
end tr_BOFE_ID;
/
