create or replace trigger tr_PBOFE_ID
  instead of delete on PRC_BASE_OPS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPbofeUpdate then
    StateUtils.BeginPbofeUpdate;
    begin

      delete
        PRC_BASE_OPS pbo
      where
        (pbo.PRC_BASE_OP_CODE = :old.PRC_BASE_OP_CODE);

      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) then

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

end tr_PBOFE_ID;
/
