create or replace trigger tr_NIFE_ID
  instead of delete on NOM_ITEMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InNifeUpdate then
    StateUtils.BeginNifeUpdate;
    begin

      delete
        NOM_ITEMS ni
      where
        (ni.NOM_CODE = :old.NOM_CODE) and
        (ni.NOM_ITEM_CODE = :old.NOM_ITEM_CODE);

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
        StateUtils.EndNifeUpdate;
        raise;
    end;
    StateUtils.EndNifeUpdate;
  end if;

end tr_NIFE_ID;
/
