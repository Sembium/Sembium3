create or replace trigger tr_D_PROFFE_IU
  instead of update on DOC_PROFILES_FOR_EDIT
  for each row
begin

  if not StateUtils.InD_proffeUpdate then
    StateUtils.BeginD_proffeUpdate;
    begin

      if (:new.DOC_PROFILE_CODE <> :old.DOC_PROFILE_CODE) then
        raise_application_error(-20000, 'Internal error: DOC_PROFILES key should not be changed');
      end if;

      update
        DOC_PROFILES d_prof
      set
        d_prof.DOC_ITEM_TEMPLATE_TYPE_CODE = :new.DOC_ITEM_TEMPLATE_TYPE_CODE,
        d_prof.DOC_PROFILE_NO = :new.DOC_PROFILE_NO,
        d_prof.DOC_PROFILE_NAME = :new.DOC_PROFILE_NAME,
        d_prof.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        d_prof.DOC_CODE = :new.DOC_CODE,
        d_prof.AUTHORIZE_EMPLOYEE_CODE = :new.AUTHORIZE_EMPLOYEE_CODE,
        d_prof.AUTHORIZE_DATE = :new.AUTHORIZE_DATE,
        d_prof.AUTHORIZE_TIME = :new.AUTHORIZE_TIME
      where
        (d_prof.DOC_PROFILE_CODE = :old.DOC_PROFILE_CODE);

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
        StateUtils.EndD_proffeUpdate;
        raise;
    end;
    StateUtils.EndD_proffeUpdate;
  end if;

end;
/
