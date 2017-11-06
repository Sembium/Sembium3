create or replace trigger tr_INGFE_ID
  instead of delete on INVOICE_NO_GENERATORS_FOR_EDIT
  for each row
begin

  if not StateUtils.InIngfeUpdate then
    StateUtils.BeginIngfeUpdate;
    begin

      delete
        ING_INVOICE_TYPES ingit
      where
        (ingit.INVOICE_NO_GENERATOR_CODE = :old.INVOICE_NO_GENERATOR_CODE);

      delete
        ING_CURRENCIES ingc
      where
        (ingc.INVOICE_NO_GENERATOR_CODE = :old.INVOICE_NO_GENERATOR_CODE);

      delete
        INVOICE_NO_GENERATORS ing
      where
        (ing.INVOICE_NO_GENERATOR_CODE = :old.INVOICE_NO_GENERATOR_CODE);

    exception
      when others then
        StateUtils.EndIngfeUpdate;
        raise;
    end;
    StateUtils.EndIngfeUpdate;
  end if;

end;
/
