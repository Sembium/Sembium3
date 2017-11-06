create or replace trigger tr_BOIFE_ID
  instead of delete on BUDGET_ORDER_ITEMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InBoifeUpdate then
    StateUtils.BeginBoifeUpdate;
    begin
    
      delete
        BUDGET_ORDER_ITEMS boi
      where
        (boi.BUDGET_ORDER_BRANCH_CODE = :old.BUDGET_ORDER_BRANCH_CODE) and
        (boi.BUDGET_ORDER_CODE = :old.BUDGET_ORDER_CODE) and
        (boi.BUDGET_ORDER_ITEM_CODE = :old.BUDGET_ORDER_ITEM_CODE);
        
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
        StateUtils.EndBoifeUpdate;
        raise;
    end;
    StateUtils.EndBoifeUpdate;
  end if;
  
end tr_BOIFE_ID;
/
