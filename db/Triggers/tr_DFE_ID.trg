create or replace trigger tr_DFE_ID
  instead of delete on DOCS_FOR_EDIT
  for each row
begin

  if not StateUtils.InDfeUpdate then
    StateUtils.BeginDfeUpdate;
    begin
    
      delete
        DOC_ITEMS_FOR_EDIT dife
      where
        (dife.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
        (dife.DOC_CODE = :old.DOC_CODE);

        
      delete
        DOCS d
      where
        (d.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
        (d.DOC_CODE = :old.DOC_CODE);
  
    exception
      when others then
        StateUtils.EndDfeUpdate;
        raise;
    end;
    StateUtils.EndDfeUpdate;
  end if;
    
end tr_DFE_ID;
/
