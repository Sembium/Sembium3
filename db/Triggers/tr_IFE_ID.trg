create or replace trigger tr_IFE_ID
  instead of delete on INVOICES_FOR_EDIT
  for each row
begin

  if not StateUtils.InIfeUpdate then
    StateUtils.BeginIfeUpdate;
    begin

      delete
        INVOICES i
      where
        (i.INVOICE_BRANCH_CODE = :old.INVOICE_BRANCH_CODE) and
        (i.INVOICE_CODE = :old.INVOICE_CODE);

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
        StateUtils.EndIfeUpdate;
        raise;
    end;
    StateUtils.EndIfeUpdate;
  end if;

end;
/
