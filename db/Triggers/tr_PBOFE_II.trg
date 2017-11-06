create or replace trigger tr_PBOFE_II
  instead of insert on PRC_BASE_OPS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPbofeUpdate then
    StateUtils.BeginPbofeUpdate;
    begin

      insert into PRC_BASE_OPS
      (
        PRC_BASE_OP_CODE,
        PARENT_PRC_BASE_OP_CODE,
        PRC_BASE_OP_LOCAL_NO,
        PRC_BASE_OP_NAME,
        PRC_BASE_OP_SHORT_NAME,
        IS_GROUP,
        DOC_PRODUCT_CODE,
        DOC_BRANCH_CODE,
        DOC_CODE
      )
      values
      (
        :new.PRC_BASE_OP_CODE,
        :new.PARENT_PRC_BASE_OP_CODE,
        :new.PRC_BASE_OP_LOCAL_NO,
        :new.PRC_BASE_OP_NAME,
        :new.PRC_BASE_OP_SHORT_NAME,
        :new.IS_GROUP,
        :new.DOC_PRODUCT_CODE,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE
      );

    exception
      when others then
        StateUtils.EndPbofeUpdate;
        raise;
    end;
    StateUtils.EndPbofeUpdate;
  end if;

end tr_PBOFE_II;
/
