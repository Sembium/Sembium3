create or replace trigger tr_OWDPFE_ID
  instead of delete on OWD_PRIORITIES_FOR_EDIT
  for each row
begin

  if not StateUtils.InOwdpfeUpdate then
    StateUtils.BeginOwdpfeUpdate;
    begin

      delete
        OCC_WORK_DEPT_PRIORITIES owdp
      where
        (owdp.OCC_WORK_DEPT_PRIORITY_CODE = :old.OCC_WORK_DEPT_PRIORITY_CODE);

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
        StateUtils.EndOwdpfeUpdate;
        raise;
    end;
    StateUtils.EndOwdpfeUpdate;
  end if;

end;
/
