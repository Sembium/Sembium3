create or replace trigger tr_PAFE_ID
  instead of delete on PRC_ACTIONS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPafeUpdate then
    StateUtils.BeginPafeUpdate;
    begin

      delete
        PRC_ACTIONS pa
      where
        (pa.PRC_ACTION_CODE = :old.PRC_ACTION_CODE);

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
        StateUtils.EndPafeUpdate;
        raise;
    end;
    StateUtils.EndPafeUpdate;
  end if;

end tr_PAFE_ID;
/
