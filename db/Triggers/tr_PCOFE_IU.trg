create or replace trigger tr_PCOFE_IU
  instead of update on PRC_CONCRETE_OPS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPcofeUpdate then
    StateUtils.BeginPcofeUpdate;
    begin

      if (:new.PRC_CONCRETE_OP_CODE <> :old.PRC_CONCRETE_OP_CODE) then
        raise_application_error(-20000, 'Internal error: PRC_CONCRETE_OPS key should not be changed');
      end if;

      update
        PRC_CONCRETE_OPS pco
      set
        pco.PARENT_PRC_CONCRETE_OP_CODE = :new.PARENT_PRC_CONCRETE_OP_CODE,
        pco.PRC_CONCRETE_OP_LOCAL_NO = :new.PRC_CONCRETE_OP_LOCAL_NO,
        pco.PRC_CONCRETE_OP_NAME = :new.PRC_CONCRETE_OP_NAME,
        pco.PRC_CONCRETE_OP_SHORT_NAME = :new.PRC_CONCRETE_OP_SHORT_NAME,
        pco.IS_GROUP = :new.IS_GROUP,
        pco.DOC_PRODUCT_CODE = :new.DOC_PRODUCT_CODE,
        pco.DEACTIVATION_DATE = :new.DEACTIVATION_DATE,
        pco.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        pco.DOC_CODE = :new.DOC_CODE
      where
        (pco.PRC_CONCRETE_OP_CODE = :old.PRC_CONCRETE_OP_CODE);

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
        StateUtils.EndPcofeUpdate;
        raise;
    end;
    StateUtils.EndPcofeUpdate;
  end if;

end tr_PCOFE_IU;
/
