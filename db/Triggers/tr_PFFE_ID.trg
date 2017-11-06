create or replace trigger tr_PFFE_ID
  instead of delete on PRC_FUNCS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPffeUpdate then
    StateUtils.BeginPffeUpdate;
    begin

      delete
        PRC_FUNCS pf
      where
        (pf.PRC_FUNC_CODE = :old.PRC_FUNC_CODE);

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
        StateUtils.EndPffeUpdate;
        raise;
    end;
    StateUtils.EndPffeUpdate;
  end if;

end tr_PFFE_ID;
/
