create or replace trigger tr_OWDPFE_IU
  instead of update on OWD_PRIORITIES_FOR_EDIT
  for each row
begin

  if not StateUtils.InOwdpfeUpdate then
    StateUtils.BeginOwdpfeUpdate;
    begin

      if (:new.OCC_WORK_DEPT_PRIORITY_CODE <> :old.OCC_WORK_DEPT_PRIORITY_CODE) then
        raise_application_error(-20000, 'Internal error: OCC_WORK_DEPT_PRIORITIES key should not be changed');
      end if;

      update
        OCC_WORK_DEPT_PRIORITIES owdp
      set
        owdp.OCC_WORK_DEPT_PRIORITY_NO = :new.OCC_WORK_DEPT_PRIORITY_NO,
        owdp.OCC_WORK_DEPT_PRIORITY_NAME = :new.OCC_WORK_DEPT_PRIORITY_NAME,
        owdp.IS_CAPACITY_GENERATOR = :new.IS_CAPACITY_GENERATOR,
        owdp.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        owdp.DOC_CODE = :new.DOC_CODE,
        owdp.ORG_WORK_LEVEL_CODE = :new.ORG_WORK_LEVEL_CODE,
        owdp.ORG_WORK_ACTIVITY_CODE = :new.ORG_WORK_ACTIVITY_CODE,
        owdp.ORG_WORK_MODE_CODE = :new.ORG_WORK_MODE_CODE,
        owdp.NULL_IF_NOT_CAPACITY_GENERATOR = :new.NULL_IF_NOT_CAPACITY_GENERATOR,
        owdp.NULL_IF_NOT_MNG_EXPLOITATION = :new.NULL_IF_NOT_MNG_EXPLOITATION
      where
        (owdp.OCC_WORK_DEPT_PRIORITY_CODE = :old.OCC_WORK_DEPT_PRIORITY_CODE);

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
        StateUtils.EndOwdpfeUpdate;
        raise;
    end;
    StateUtils.EndOwdpfeUpdate;
  end if;

end;
/
