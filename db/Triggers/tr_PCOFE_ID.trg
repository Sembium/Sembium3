create or replace trigger tr_PCOFE_ID
  instead of delete on PRC_CONCRETE_OPS_FOR_EDIT
  for each row
begin

  if not StateUtils.InPcofeUpdate then
    StateUtils.BeginPcofeUpdate;
    begin

      delete
        PRC_CONCRETE_OPS pco
      where
        (pco.PRC_CONCRETE_OP_CODE = :old.PRC_CONCRETE_OP_CODE);

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
        StateUtils.EndPcofeUpdate;
        raise;
    end;
    StateUtils.EndPcofeUpdate;
  end if;

end tr_PCOFE_ID;
/
