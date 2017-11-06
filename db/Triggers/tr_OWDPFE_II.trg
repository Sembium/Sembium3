create or replace trigger tr_OWDPFE_II
  instead of insert on OWD_PRIORITIES_FOR_EDIT
  for each row
begin

  if not StateUtils.InOwdpfeUpdate then
    StateUtils.BeginOwdpfeUpdate;
    begin

      insert into OCC_WORK_DEPT_PRIORITIES
      (
        OCC_WORK_DEPT_PRIORITY_CODE,
        OCC_WORK_DEPT_PRIORITY_NO,
        OCC_WORK_DEPT_PRIORITY_NAME,
        IS_CAPACITY_GENERATOR,
        DOC_BRANCH_CODE,
        DOC_CODE,
        ORG_WORK_LEVEL_CODE,
        ORG_WORK_ACTIVITY_CODE,
        ORG_WORK_MODE_CODE,
        NULL_IF_NOT_CAPACITY_GENERATOR,
        NULL_IF_NOT_MNG_EXPLOITATION
      )
      values
      (
        :new.OCC_WORK_DEPT_PRIORITY_CODE,
        :new.OCC_WORK_DEPT_PRIORITY_NO,
        :new.OCC_WORK_DEPT_PRIORITY_NAME,
        :new.IS_CAPACITY_GENERATOR,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.ORG_WORK_LEVEL_CODE,
        :new.ORG_WORK_ACTIVITY_CODE,
        :new.ORG_WORK_MODE_CODE,
        :new.NULL_IF_NOT_CAPACITY_GENERATOR,
        :new.NULL_IF_NOT_MNG_EXPLOITATION
      );

    exception
      when others then
        StateUtils.EndOwdpfeUpdate;
        raise;
    end;
    StateUtils.EndOwdpfeUpdate;
  end if;

end;
/
