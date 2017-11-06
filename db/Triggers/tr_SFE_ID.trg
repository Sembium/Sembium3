create or replace trigger tr_SFE_ID
  instead of delete on SALES_FOR_EDIT
  for each row
begin

  if not StateUtils.InSfeUpdate then
    StateUtils.BeginSfeUpdate;
    begin
    
      delete
        SALES s
      where
        (s.SALE_OBJECT_BRANCH_CODE = :old.SALE_OBJECT_BRANCH_CODE) and
        (s.SALE_OBJECT_CODE = :old.SALE_OBJECT_CODE);
        
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
        StateUtils.EndSfeUpdate;
        raise;
    end;
    StateUtils.EndSfeUpdate;
  end if;
    
end tr_SFE_ID;
/
