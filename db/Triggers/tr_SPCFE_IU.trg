create or replace trigger tr_SPCFE_IU
  instead of update on SPECS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSpcfeUpdate then
    StateUtils.BeginSpcfeUpdate;
    begin
    
      if (:new.SPEC_PRODUCT_CODE <> :old.SPEC_PRODUCT_CODE) then
        raise_application_error(-20000, 'Internal error: SPECS key should not be changed');
      end if;
      
      update
        SPECS spc
      set
        spc.AUTHOR_EMPLOYEE_CODE = :new.AUTHOR_EMPLOYEE_CODE,
        spc.AUTHORIZATION_DATE = :new.AUTHORIZATION_DATE,
        spc.AUTHORIZATION_EMPLOYEE_CODE = :new.AUTHORIZATION_EMPLOYEE_CODE,
        spc.AUTHORIZATION_TIME = :new.AUTHORIZATION_TIME,
        spc.CHANGE_BRANCH_CODE = :new.CHANGE_BRANCH_CODE,
        spc.CHANGE_DATE = :new.CHANGE_DATE,
        spc.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        spc.CHANGE_TIME = :new.CHANGE_TIME,
        spc.CREATE_DATE = :new.CREATE_DATE,
        spc.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
        spc.CREATE_TIME = :new.CREATE_TIME,
        spc.MANUFACTURER_COMPANY_CODE = :new.MANUFACTURER_COMPANY_CODE,
        spc.NOTES = :new.NOTES,
        spc.SPEC_TYPE_CODE = :new.SPEC_TYPE_CODE,
        spc.SPEC_VERSION_NO = :new.SPEC_VERSION_NO,
        spc.STRUCT_CHANGE_CLEAR_DATE = :new.STRUCT_CHANGE_CLEAR_DATE,
        spc.STRUCT_CHANGE_CLEAR_EMPL_CODE = :new.STRUCT_CHANGE_CLEAR_EMPL_CODE,
        spc.STRUCT_CHANGE_CLEAR_TIME = :new.STRUCT_CHANGE_CLEAR_TIME,
        spc.VERSION_CREATE_DATE = :new.VERSION_CREATE_DATE,
        spc.VERSION_CREATE_EMPLOYEE_CODE = :new.VERSION_CREATE_EMPLOYEE_CODE,
        spc.VERSION_CREATE_TIME = :new.VERSION_CREATE_TIME,
        spc.WORK_BRANCH_CODE = :new.WORK_BRANCH_CODE
      where
        (spc.SPEC_PRODUCT_CODE = :old.SPEC_PRODUCT_CODE);
        
    exception
      when others then
        StateUtils.EndSpcfeUpdate;
        raise;
    end;
    StateUtils.EndSpcfeUpdate;
  end if;

end tr_SPCFE_IU;
/
