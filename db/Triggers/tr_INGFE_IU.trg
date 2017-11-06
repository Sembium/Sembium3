create or replace trigger tr_INGFE_IU
  instead of update on INVOICE_NO_GENERATORS_FOR_EDIT
  for each row
begin

  if not StateUtils.InIngfeUpdate then
    StateUtils.BeginIngfeUpdate;
    begin

      if (:new.INVOICE_NO_GENERATOR_CODE <> :old.INVOICE_NO_GENERATOR_CODE) then
        raise_application_error(-20000, 'Internal error: INVOICE_NO_GENERATORS key should not be changed');
      end if;

      update
        INVOICE_NO_GENERATORS ing
      set
        ing.INVOICE_NO_GENERATOR_NO = :new.INVOICE_NO_GENERATOR_NO,
        ing.BEGIN_DATE = :new.BEGIN_DATE,
        ing.END_DATE = :new.END_DATE,
        ing.DEPT_CODE = :new.DEPT_CODE,
        ing.IS_PROFORM_INVOICE = :new.IS_PROFORM_INVOICE,
        ing.IS_APPROVED = :new.IS_APPROVED,
        ing.MIN_INVOICE_NO = :new.MIN_INVOICE_NO,
        ing.MAX_INVOICE_NO = :new.MAX_INVOICE_NO,
        ing.CURRENT_INVOICE_NO = :new.CURRENT_INVOICE_NO
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
