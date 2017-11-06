create or replace trigger tr_PCOFE_II
  instead of insert on PRC_CONCRETE_OPS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPcofeUpdate then
    StateUtils.BeginPcofeUpdate;
    begin

      insert into PRC_CONCRETE_OPS
      (
        PRC_CONCRETE_OP_CODE,
        PARENT_PRC_CONCRETE_OP_CODE,
        PRC_CONCRETE_OP_LOCAL_NO,
        PRC_CONCRETE_OP_NAME,
        PRC_CONCRETE_OP_SHORT_NAME,
        IS_GROUP,
        DOC_PRODUCT_CODE,
        DEACTIVATION_DATE,
        DOC_BRANCH_CODE,
        DOC_CODE
      )
      values
      (
        :new.PRC_CONCRETE_OP_CODE,
        :new.PARENT_PRC_CONCRETE_OP_CODE,
        :new.PRC_CONCRETE_OP_LOCAL_NO,
        :new.PRC_CONCRETE_OP_NAME,
        :new.PRC_CONCRETE_OP_SHORT_NAME,
        :new.IS_GROUP,
        :new.DOC_PRODUCT_CODE,
        :new.DEACTIVATION_DATE,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE
      );

    exception
      when others then
        StateUtils.EndPcofeUpdate;
        raise;
    end;
    StateUtils.EndPcofeUpdate;
  end if;

end tr_PCOFE_II;
/
