create or replace trigger tr_DFE_IU
  instead of update on DOCS_FOR_EDIT
  for each row
begin

  if not StateUtils.InDfeUpdate then
    StateUtils.BeginDfeUpdate;
    begin

      if (:new.DOC_BRANCH_CODE <> :old.DOC_BRANCH_CODE) or
         (:new.DOC_CODE <> :old.DOC_CODE) then
        raise_application_error(-20000, 'Internal error: DOCS key should not be changed');
      end if;
    
      update
        DOCS d
      set
        d.DOC_EMPTINESS_REQUIREMENT_CODE = :new.DOC_EMPTINESS_REQUIREMENT_CODE,
        d.IS_COMPLETE = :new.IS_COMPLETE
      where
        (d.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
        (d.DOC_CODE = :old.DOC_CODE)
      ;
    
    exception
      when others then
        StateUtils.EndDfeUpdate;
        raise;
    end;
    StateUtils.EndDfeUpdate;
  end if;
    
end tr_DFE_IU;
/
