create or replace trigger tr_BOIOFE_ID
  instead of delete on BOI_ORDERS_FOR_EDIT
  for each row
begin

  if not StateUtils.InBoiofeUpdate then
    StateUtils.BeginBoiofeUpdate;
    begin

      delete
        BOI_ORDERS boio
      where
        (boio.BOI_ORDER_OBJECT_BRANCH_CODE = :old.BOI_ORDER_OBJECT_BRANCH_CODE) and
        (boio.BOI_ORDER_OBJECT_CODE = :old.BOI_ORDER_OBJECT_CODE);

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
        StateUtils.EndBoiofeUpdate;
        raise;
    end;
    StateUtils.EndBoiofeUpdate;
  end if;

end;
/
