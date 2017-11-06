create or replace trigger tr_PKFE_ID
  instead of delete on PRC_KNOWLS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPkfeUpdate then
    StateUtils.BeginPkfeUpdate;
    begin

      delete
        PRC_KNOWLS pk
      where
        (pk.PRC_KNOWL_CODE = :old.PRC_KNOWL_CODE);

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
        StateUtils.EndPkfeUpdate;
        raise;
    end;
    StateUtils.EndPkfeUpdate;
  end if;

end tr_PKFE_ID;
/
