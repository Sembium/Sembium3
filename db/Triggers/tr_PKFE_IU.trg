create or replace trigger tr_PKFE_IU
  instead of update on PRC_KNOWLS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPkfeUpdate then
    StateUtils.BeginPkfeUpdate;
    begin

      if (:new.PRC_KNOWL_CODE <> :old.PRC_KNOWL_CODE) then
        raise_application_error(-20000, 'Internal error: PRC_KNOWLS key should not be changed');
      end if;

      update
        PRC_KNOWLS pk
      set
        pk.PARENT_PRC_KNOWL_CODE = :new.PARENT_PRC_KNOWL_CODE,
        pk.PRC_KNOWL_LOCAL_NO = :new.PRC_KNOWL_LOCAL_NO,
        pk.PRC_KNOWL_NAME = :new.PRC_KNOWL_NAME,
        pk.PRC_KNOWL_SHORT_NAME = :new.PRC_KNOWL_SHORT_NAME,
        pk.IS_GROUP = :new.IS_GROUP,
        pk.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        pk.DOC_CODE = :new.DOC_CODE
      where
        (pk.PRC_KNOWL_CODE = :old.PRC_KNOWL_CODE);

      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) and
         ( (:old.DOC_BRANCH_CODE <> Coalesce(:new.DOC_BRANCH_CODE, 0)) or
           (:old.DOC_CODE <> Coalesce(:new.DOC_CODE, 0)) ) then

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

end tr_PKFE_IU;
/
