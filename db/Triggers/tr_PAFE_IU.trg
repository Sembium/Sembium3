create or replace trigger tr_PAFE_IU
  instead of update on PRC_ACTIONS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPafeUpdate then
    StateUtils.BeginPafeUpdate;
    begin

      if (:new.PRC_ACTION_CODE <> :old.PRC_ACTION_CODE) then
        raise_application_error(-20000, 'Internal error: PRC_ACTIONS key should not be changed');
      end if;

      update
        PRC_ACTIONS pa
      set
        pa.PRC_ACTION_NO = :new.PRC_ACTION_NO,
        pa.PRC_ACTION_NAME = :new.PRC_ACTION_NAME,
        pa.PRC_ACTION_ABBREV = :new.PRC_ACTION_ABBREV,
        pa.IS_BASE_ACTION = :new.IS_BASE_ACTION,
        pa.IS_CONCRETE_ACTION = :new.IS_CONCRETE_ACTION,
        pa.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        pa.DOC_CODE = :new.DOC_CODE,
        pa.IS_PROJECT_ACTION = :new.IS_PROJECT_ACTION
      where
        (pa.PRC_ACTION_CODE = :old.PRC_ACTION_CODE);

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
        StateUtils.EndPafeUpdate;
        raise;
    end;
    StateUtils.EndPafeUpdate;
  end if;

end tr_PAFE_IU;
/
