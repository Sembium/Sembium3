create or replace trigger tr_D_PROFFE_ID
  instead of delete on DOC_PROFILES_FOR_EDIT
  for each row
begin

  if not StateUtils.InD_proffeUpdate then
    StateUtils.BeginD_proffeUpdate;
    begin

      delete
        DOC_PROFILES d_prof
      where
        (d_prof.DOC_PROFILE_CODE = :old.DOC_PROFILE_CODE);

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
        StateUtils.EndD_proffeUpdate;
        raise;
    end;
    StateUtils.EndD_proffeUpdate;
  end if;

end;
/
