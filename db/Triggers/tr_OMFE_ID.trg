create or replace trigger tr_OMFE_ID
  instead of delete on OPERATION_MOVEMENTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InOmfeUpdate then
    StateUtils.BeginOmfeUpdate;
    begin

      delete
        EXCEPT_EVENTS_FOR_EDIT eefe
      where
        (eefe.OM_BRANCH_CODE = :old.OM_BRANCH_CODE) and
        (eefe.OM_CODE = :old.OM_CODE);
    
      delete
        OPERATION_MOVEMENTS om
      where
        (om.OM_BRANCH_CODE = :old.OM_BRANCH_CODE) and
        (om.OM_CODE = :old.OM_CODE);
        
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
        StateUtils.EndOmfeUpdate;
        raise;
    end;
    StateUtils.EndOmfeUpdate;
  end if;
    
end tr_OMFE_ID;
/
