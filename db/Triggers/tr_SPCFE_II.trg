create or replace trigger tr_SPCFE_II
  instead of insert on SPECS_FOR_EDIT
  for each row
declare
  HasInlineModels Number;
begin

  if not StateUtils.InSpcfeUpdate then
    StateUtils.BeginSpcfeUpdate;
    begin
    
      select
        Sign(Count(*))
      into
        HasInlineModels
      from
        SPEC_LINES sl
      where
        (sl.DETAIL_CODE = :new.SPEC_PRODUCT_CODE) and
        (sl.DETAIL_CODE <> Coalesce(sl.PRODUCT_CODE, 0)) and
        (sl.IS_IMPORTED = 0) and
        (sl.NO_1 > 0);
    
      if (HasInlineModels = 1) then
        raise_application_error(-20000, ServerMessages.SCantAddSpecWhenInlineModelsId);
      end if;
    
      insert into SPECS
      (
        AUTHOR_EMPLOYEE_CODE,
        AUTHORIZATION_DATE,
        AUTHORIZATION_EMPLOYEE_CODE,
        AUTHORIZATION_TIME,
        CHANGE_BRANCH_CODE,
        CHANGE_DATE,
        CHANGE_EMPLOYEE_CODE,
        CHANGE_TIME,
        CREATE_DATE,
        CREATE_EMPLOYEE_CODE,
        CREATE_TIME,
        MANUFACTURER_COMPANY_CODE,
        NOTES,
        SPEC_PRODUCT_CODE,
        SPEC_TYPE_CODE,
        SPEC_VERSION_NO,
        STRUCT_CHANGE_CLEAR_DATE,
        STRUCT_CHANGE_CLEAR_EMPL_CODE,
        STRUCT_CHANGE_CLEAR_TIME,
        VERSION_CREATE_DATE,
        VERSION_CREATE_EMPLOYEE_CODE,
        VERSION_CREATE_TIME,
        WORK_BRANCH_CODE
      )
      values
      (
        :new.AUTHOR_EMPLOYEE_CODE,
        :new.AUTHORIZATION_DATE,
        :new.AUTHORIZATION_EMPLOYEE_CODE,
        :new.AUTHORIZATION_TIME,
        :new.CHANGE_BRANCH_CODE,
        :new.CHANGE_DATE,
        :new.CHANGE_EMPLOYEE_CODE,
        :new.CHANGE_TIME,
        :new.CREATE_DATE,
        :new.CREATE_EMPLOYEE_CODE,
        :new.CREATE_TIME,
        :new.MANUFACTURER_COMPANY_CODE,
        :new.NOTES,
        :new.SPEC_PRODUCT_CODE,
        :new.SPEC_TYPE_CODE,
        :new.SPEC_VERSION_NO,
        :new.STRUCT_CHANGE_CLEAR_DATE,
        :new.STRUCT_CHANGE_CLEAR_EMPL_CODE,
        :new.STRUCT_CHANGE_CLEAR_TIME,
        :new.VERSION_CREATE_DATE,
        :new.VERSION_CREATE_EMPLOYEE_CODE,
        :new.VERSION_CREATE_TIME,
        :new.WORK_BRANCH_CODE
      );
    
    exception
      when others then
        StateUtils.EndSpcfeUpdate;
        raise;
    end;
    StateUtils.EndSpcfeUpdate;
  end if;

end tr_SPCFE_II;
/
