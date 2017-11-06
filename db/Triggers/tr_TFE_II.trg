create or replace trigger tr_TFE_II
  instead of insert on TEAMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InTfeUpdate then
    StateUtils.BeginTfeUpdate;
    begin
    
      insert into TEAMS
      (
        DEPT_CODE,
        DOC_BRANCH_CODE,
        DOC_CODE,
        IS_ACTIVE,
        TEAM_CODE,
        TEAM_NAME,
        TEAM_NO,
        DEFINED_EMPLOYEE_COUNT,
        EMP_WORKDAY_DURATION_HOURS,
        EMP_WORKDAY_DENSITY_PERCENT
      )
      values
      (
        :new.DEPT_CODE,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.IS_ACTIVE,
        :new.TEAM_CODE,
        :new.TEAM_NAME,
        :new.TEAM_NO,
        :new.DEFINED_EMPLOYEE_COUNT,
        :new.EMP_WORKDAY_DURATION_HOURS,
        :new.EMP_WORKDAY_DENSITY_PERCENT
      );
    
    exception
      when others then
        StateUtils.EndTfeUpdate;
        raise;
    end;
    StateUtils.EndTfeUpdate;
  end if;

end tr_TFE_II;
/
