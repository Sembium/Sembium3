create or replace trigger tr_PFFE_II
  instead of insert on PRC_FUNCS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPffeUpdate then
    StateUtils.BeginPffeUpdate;
    begin

      insert into PRC_FUNCS
      (
        PRC_FUNC_CODE,
        PARENT_PRC_FUNC_CODE,
        PRC_FUNC_LOCAL_NO,
        PRC_FUNC_NAME,
        PRC_FUNC_SHORT_NAME,
        IS_GROUP,
        DOC_BRANCH_CODE,
        DOC_CODE
      )
      values
      (
        :new.PRC_FUNC_CODE,
        :new.PARENT_PRC_FUNC_CODE,
        :new.PRC_FUNC_LOCAL_NO,
        :new.PRC_FUNC_NAME,
        :new.PRC_FUNC_SHORT_NAME,
        :new.IS_GROUP,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE
      );

    exception
      when others then
        StateUtils.EndPffeUpdate;
        raise;
    end;
    StateUtils.EndPffeUpdate;
  end if;

end tr_PFFE_II;
/
