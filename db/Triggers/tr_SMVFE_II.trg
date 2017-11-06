create or replace trigger tr_SMVFE_II
  instead of insert on SPEC_MODEL_VARIANTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSmvfeUpdate then
    StateUtils.BeginSmvfeUpdate;
    begin
    
      insert into SPEC_MODEL_VARIANTS
      (
        AUTHORIZATION_DATE,
        AUTHORIZATION_EMPLOYEE_CODE,
        AUTHORIZATION_OF_OPERATIONS,
        AUTHORIZATION_TIME,
        CHANGE_DATE,
        CHANGE_EMPLOYEE_CODE,
        CHANGE_TIME,
        CREATE_DATE,
        CREATE_EMPLOYEE_CODE,
        CREATE_TIME,
        MAIN_DEPT_CODE,
        MAX_TECH_QUANTITY,
        MIN_TECH_QUANTITY,
        RESULT_STORE_CODE,
        SPEC_MODEL_VARIANT_NO,
        SPEC_PRODUCT_CODE,
        NOTES,
        IS_INACTIVE
      )
      values
      (
        :new.AUTHORIZATION_DATE,
        :new.AUTHORIZATION_EMPLOYEE_CODE,
        :new.AUTHORIZATION_OF_OPERATIONS,
        :new.AUTHORIZATION_TIME,
        :new.CHANGE_DATE,
        :new.CHANGE_EMPLOYEE_CODE,
        :new.CHANGE_TIME,
        :new.CREATE_DATE,
        :new.CREATE_EMPLOYEE_CODE,
        :new.CREATE_TIME,
        :new.MAIN_DEPT_CODE,
        :new.MAX_TECH_QUANTITY,
        :new.MIN_TECH_QUANTITY,
        :new.RESULT_STORE_CODE,
        :new.SPEC_MODEL_VARIANT_NO,
        :new.SPEC_PRODUCT_CODE,
        :new.NOTES,
        :new.IS_INACTIVE
      );
    
    exception
      when others then
        StateUtils.EndSmvfeUpdate;
        raise;
    end;
    StateUtils.EndSmvfeUpdate;
  end if;

end tr_SMVFE_II;
/
