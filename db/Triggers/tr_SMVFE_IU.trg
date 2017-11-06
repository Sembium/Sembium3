create or replace trigger tr_SMVFE_IU
  instead of update on SPEC_MODEL_VARIANTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSmvfeUpdate then
    StateUtils.BeginSmvfeUpdate;
    begin
    
      if ( (:new.SPEC_PRODUCT_CODE <> :old.SPEC_PRODUCT_CODE) or
           (:new.SPEC_MODEL_VARIANT_NO <> :old.SPEC_MODEL_VARIANT_NO) ) then
        raise_application_error(-20000, 'Internal error: SPEC_MODEL_VARIANTS key should not be changed');
      end if;
      
      update
        SPEC_MODEL_VARIANTS smv
      set
        smv.AUTHORIZATION_DATE = :new.AUTHORIZATION_DATE,
        smv.AUTHORIZATION_EMPLOYEE_CODE = :new.AUTHORIZATION_EMPLOYEE_CODE,
        smv.AUTHORIZATION_OF_OPERATIONS = :new.AUTHORIZATION_OF_OPERATIONS,
        smv.AUTHORIZATION_TIME = :new.AUTHORIZATION_TIME,
        smv.CHANGE_DATE = :new.CHANGE_DATE,
        smv.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        smv.CHANGE_TIME = :new.CHANGE_TIME,
        smv.CREATE_DATE = :new.CREATE_DATE,
        smv.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
        smv.CREATE_TIME = :new.CREATE_TIME,
        smv.MAIN_DEPT_CODE = :new.MAIN_DEPT_CODE,
        smv.MAX_TECH_QUANTITY = :new.MAX_TECH_QUANTITY,
        smv.MIN_TECH_QUANTITY = :new.MIN_TECH_QUANTITY,
        smv.RESULT_STORE_CODE = :new.RESULT_STORE_CODE,
        smv.NOTES = :new.NOTES,
        smv.IS_INACTIVE = :new.IS_INACTIVE
      where
        (smv.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE) and
        (smv.SPEC_MODEL_VARIANT_NO = :old.SPEC_MODEL_VARIANT_NO);
        
    exception
      when others then
        StateUtils.EndSmvfeUpdate;
        raise;
    end;
    StateUtils.EndSmvfeUpdate;
  end if;

end tr_SMVFE_IU;
/
