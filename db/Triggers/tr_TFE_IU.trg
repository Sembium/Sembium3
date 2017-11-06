create or replace trigger tr_TFE_IU
  instead of update on TEAMS_FOR_EDIT
  for each row
begin

  if not StateUtils.InTfeUpdate then
    StateUtils.BeginTfeUpdate;
    begin
    
      if (:new.TEAM_CODE <> :old.TEAM_CODE) then
        raise_application_error(-20000, 'Internal error: TEAMS key should not be changed');
      end if;
      
      update
        TEAMS t
      set
        t.DEPT_CODE = :new.DEPT_CODE,
        t.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        t.DOC_CODE = :new.DOC_CODE,
        t.IS_ACTIVE = :new.IS_ACTIVE,
        t.TEAM_NAME = :new.TEAM_NAME,
        t.TEAM_NO = :new.TEAM_NO,
        t.DEFINED_EMPLOYEE_COUNT = :new.DEFINED_EMPLOYEE_COUNT,
        t.EMP_WORKDAY_DURATION_HOURS = :new.EMP_WORKDAY_DURATION_HOURS,
        t.EMP_WORKDAY_DENSITY_PERCENT = :new.EMP_WORKDAY_DENSITY_PERCENT
      where
        (t.TEAM_CODE = :old.TEAM_CODE);
        
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
        StateUtils.EndTfeUpdate;
        raise;
    end;
    StateUtils.EndTfeUpdate;
  end if;

end tr_TFE_IU;
/
