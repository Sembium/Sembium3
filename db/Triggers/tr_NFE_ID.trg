create or replace trigger tr_NFE_ID
  instead of delete on NOMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InNfeUpdate then
    StateUtils.BeginNfeUpdate;
    begin

      delete
        NOMS n
      where
        (n.NOM_CODE = :old.NOM_CODE);

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
        StateUtils.EndNfeUpdate;
        raise;
    end;
    StateUtils.EndNfeUpdate;
  end if;

end;
/
