create or replace trigger tr_BGFE_II
  instead of insert on BASE_GROUPS_FOR_EDIT
  for each row
begin

  if not StateUtils.InBgfeUpdate then
    StateUtils.BeginBgfeUpdate;
    begin
    
      insert into BASE_GROUPS
      (
        BASE_GROUP_CODE,
        GROUP_DEPT_CODE,
        BASE_GROUP_NO,
        BASE_GROUP_NAME,
        DOC_BRANCH_CODE,
        DOC_CODE
      )
      values
      (
        :new.BASE_GROUP_CODE,
        :new.GROUP_DEPT_CODE,
        :new.BASE_GROUP_NO,
        :new.BASE_GROUP_NAME,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE
      );
    
    exception
      when others then
        StateUtils.EndBgfeUpdate;
        raise;
    end;
    StateUtils.EndBgfeUpdate;
  end if;

end tr_BGFE_II;
/
