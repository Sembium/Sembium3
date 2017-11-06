create or replace trigger tr_PBOFE_IU
  instead of update on PRC_BASE_OPS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPbofeUpdate then
    StateUtils.BeginPbofeUpdate;
    begin

      if (:new.PRC_BASE_OP_CODE <> :old.PRC_BASE_OP_CODE) then
        raise_application_error(-20000, 'Internal error: PRC_BASE_OPS key should not be changed');
      end if;

      update
        PRC_BASE_OPS pbo
      set
        pbo.PARENT_PRC_BASE_OP_CODE = :new.PARENT_PRC_BASE_OP_CODE,
        pbo.PRC_BASE_OP_LOCAL_NO = :new.PRC_BASE_OP_LOCAL_NO,
        pbo.PRC_BASE_OP_NAME = :new.PRC_BASE_OP_NAME,
        pbo.PRC_BASE_OP_SHORT_NAME = :new.PRC_BASE_OP_SHORT_NAME,
        pbo.IS_GROUP = :new.IS_GROUP,
        pbo.DOC_PRODUCT_CODE = :new.DOC_PRODUCT_CODE,
        pbo.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        pbo.DOC_CODE = :new.DOC_CODE
      where
        (pbo.PRC_BASE_OP_CODE = :old.PRC_BASE_OP_CODE);

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
        StateUtils.EndPbofeUpdate;
        raise;
    end;
    StateUtils.EndPbofeUpdate;
  end if;

end tr_PBOFE_IU;
/
