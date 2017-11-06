create or replace trigger tr_DFE_II
  instead of insert on DOCS_FOR_EDIT
  for each row
begin

  if not StateUtils.InDfeUpdate then
    StateUtils.BeginDfeUpdate;
    begin
    
      insert into DOCS
      (
        DOC_BRANCH_CODE,
        DOC_CODE,
        DOC_EMPTINESS_REQUIREMENT_CODE,
        IS_COMPLETE
      )
      values
      (
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.DOC_EMPTINESS_REQUIREMENT_CODE,
        Coalesce(:new.IS_COMPLETE, 0)
      );
     
    exception
      when others then
        StateUtils.EndDfeUpdate;
        raise;
    end;
    StateUtils.EndDfeUpdate;
  end if;
    
end tr_DFE_II;
/
