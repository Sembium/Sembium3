create or replace trigger tr_INGFE_II
  instead of insert on INVOICE_NO_GENERATORS_FOR_EDIT
  for each row
begin

  if not StateUtils.InIngfeUpdate then
    StateUtils.BeginIngfeUpdate;
    begin

      insert into INVOICE_NO_GENERATORS
      (
        INVOICE_NO_GENERATOR_CODE,
        INVOICE_NO_GENERATOR_NO,
        BEGIN_DATE,
        END_DATE,
        DEPT_CODE,
        IS_PROFORM_INVOICE,
        IS_APPROVED,
        MIN_INVOICE_NO,
        MAX_INVOICE_NO,
        CURRENT_INVOICE_NO
      )
      values
      (
        :new.INVOICE_NO_GENERATOR_CODE,
        :new.INVOICE_NO_GENERATOR_NO,
        :new.BEGIN_DATE,
        :new.END_DATE,
        :new.DEPT_CODE,
        :new.IS_PROFORM_INVOICE,
        :new.IS_APPROVED,
        :new.MIN_INVOICE_NO,
        :new.MAX_INVOICE_NO,
        :new.CURRENT_INVOICE_NO
      );

    exception
      when others then
        StateUtils.EndIngfeUpdate;
        raise;
    end;
    StateUtils.EndIngfeUpdate;
  end if;

end;
/
