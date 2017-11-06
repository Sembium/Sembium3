create or replace trigger tr_PKFE_II
  instead of insert on PRC_KNOWLS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPkfeUpdate then
    StateUtils.BeginPkfeUpdate;
    begin

      insert into PRC_KNOWLS
      (
        PRC_KNOWL_CODE,
        PARENT_PRC_KNOWL_CODE,
        PRC_KNOWL_LOCAL_NO,
        PRC_KNOWL_NAME,
        PRC_KNOWL_SHORT_NAME,
        IS_GROUP,
        DOC_BRANCH_CODE,
        DOC_CODE
      )
      values
      (
        :new.PRC_KNOWL_CODE,
        :new.PARENT_PRC_KNOWL_CODE,
        :new.PRC_KNOWL_LOCAL_NO,
        :new.PRC_KNOWL_NAME,
        :new.PRC_KNOWL_SHORT_NAME,
        :new.IS_GROUP,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE
      );

    exception
      when others then
        StateUtils.EndPkfeUpdate;
        raise;
    end;
    StateUtils.EndPkfeUpdate;
  end if;

end tr_PKFE_II;
/
