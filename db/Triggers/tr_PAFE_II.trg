create or replace trigger tr_PAFE_II
  instead of insert on PRC_ACTIONS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPafeUpdate then
    StateUtils.BeginPafeUpdate;
    begin

      insert into PRC_ACTIONS
      (
        PRC_ACTION_CODE,
        PRC_ACTION_NO,
        PRC_ACTION_NAME,
        PRC_ACTION_ABBREV,
        IS_BASE_ACTION,
        IS_CONCRETE_ACTION,
        DOC_BRANCH_CODE,
        DOC_CODE,
        IS_PROJECT_ACTION
      )
      values
      (
        :new.PRC_ACTION_CODE,
        :new.PRC_ACTION_NO,
        :new.PRC_ACTION_NAME,
        :new.PRC_ACTION_ABBREV,
        :new.IS_BASE_ACTION,
        :new.IS_CONCRETE_ACTION,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.IS_PROJECT_ACTION
      );

    exception
      when others then
        StateUtils.EndPafeUpdate;
        raise;
    end;
    StateUtils.EndPafeUpdate;
  end if;

end tr_PAFE_II;
/
