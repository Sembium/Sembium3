create or replace trigger tr_D_PROFFE_II
  instead of insert on DOC_PROFILES_FOR_EDIT
  for each row
begin

  if not StateUtils.InD_proffeUpdate then
    StateUtils.BeginD_proffeUpdate;
    begin

      insert into DOC_PROFILES
      (
        DOC_PROFILE_CODE,
        DOC_ITEM_TEMPLATE_TYPE_CODE,
        DOC_PROFILE_NO,
        DOC_PROFILE_NAME,
        DOC_BRANCH_CODE,
        DOC_CODE,
        AUTHORIZE_EMPLOYEE_CODE,
        AUTHORIZE_DATE,
        AUTHORIZE_TIME
      )
      values
      (
        :new.DOC_PROFILE_CODE,
        :new.DOC_ITEM_TEMPLATE_TYPE_CODE,
        :new.DOC_PROFILE_NO,
        :new.DOC_PROFILE_NAME,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.AUTHORIZE_EMPLOYEE_CODE,
        :new.AUTHORIZE_DATE,
        :new.AUTHORIZE_TIME
      );

    exception
      when others then
        StateUtils.EndD_proffeUpdate;
        raise;
    end;
    StateUtils.EndD_proffeUpdate;
  end if;

end;
/
