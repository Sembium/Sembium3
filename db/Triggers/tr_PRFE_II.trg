create or replace trigger tr_PRFE_II
  instead of insert on PROFESSIONS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPrfeUpdate then
    StateUtils.BeginPrfeUpdate;
    begin
    
      insert into PROFESSIONS
      (
        DOC_BRANCH_CODE,
        DOC_CODE,
        PROFESSION_CODE,
        PARENT_PROFESSION_CODE,
        PROFESSION_LOCAL_NO,
        PROFESSION_NAME,
        PROFESSION_KIND_CODE,
        IS_GROUP
      )
      values
      (
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.PROFESSION_CODE,
        :new.PARENT_PROFESSION_CODE,
        :new.PROFESSION_LOCAL_NO,
        :new.PROFESSION_NAME,
        :new.PROFESSION_KIND_CODE,
        :new.IS_GROUP
      );
    
    exception
      when others then
        StateUtils.EndPrfeUpdate;
        raise;
    end;
    StateUtils.EndPrfeUpdate;
  end if;

end tr_PRFE_II;
/
