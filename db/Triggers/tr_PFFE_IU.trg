create or replace trigger tr_PFFE_IU
  instead of update on PRC_FUNCS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPffeUpdate then
    StateUtils.BeginPffeUpdate;
    begin

      if (:new.PRC_FUNC_CODE <> :old.PRC_FUNC_CODE) then
        raise_application_error(-20000, 'Internal error: PRC_FUNCS key should not be changed');
      end if;

      update
        PRC_FUNCS pf
      set
        pf.PARENT_PRC_FUNC_CODE = :new.PARENT_PRC_FUNC_CODE,
        pf.PRC_FUNC_LOCAL_NO = :new.PRC_FUNC_LOCAL_NO,
        pf.PRC_FUNC_NAME = :new.PRC_FUNC_NAME,
        pf.PRC_FUNC_SHORT_NAME = :new.PRC_FUNC_SHORT_NAME,
        pf.IS_GROUP = :new.IS_GROUP,
        pf.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        pf.DOC_CODE = :new.DOC_CODE
      where
        (pf.PRC_FUNC_CODE = :old.PRC_FUNC_CODE);

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
        StateUtils.EndPffeUpdate;
        raise;
    end;
    StateUtils.EndPffeUpdate;
  end if;

end tr_PFFE_IU;
/
