create or replace trigger tr_MLFE_II
  instead of insert on MATERIAL_LISTS_FOR_EDIT
  for each row
declare
  SaleHasStoreDeals Number;
  SaleProductCode Number;
begin

  if not StateUtils.InMlfeUpdate then
    StateUtils.BeginMlfeUpdate;
    begin

      select
        Sign(Count(*))
      into
        SaleHasStoreDeals
      from
        STORE_DEALS sd
      where
        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE) and
        (sd.BND_PROCESS_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE) and
        (sd.BND_PROCESS_CODE = 60) and
        (sd.STORNO_EMPLOYEE_CODE is null);

      if (SaleHasStoreDeals = 1) then
        raise_application_error(-20002, ServerMessages.SSaleHasStoreDealsId);
      end if;
      
      select
        Max(s.PRODUCT_CODE)
      into
        SaleProductCode
      from
        SALES s
      where
        (s.SALE_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE) and
        (s.SALE_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE);
    
      if (SaleProductCode <> :new.RESULT_PRODUCT_CODE) then
        raise_application_error(-20002, ServerMessages.SDifferentSaleProductId);
      end if;
    
      insert into MATERIAL_LISTS (
        ML_OBJECT_BRANCH_CODE, 
        ML_OBJECT_CODE, 
        BND_PROCESS_OBJECT_BRANCH_CODE, 
        BND_PROCESS_OBJECT_CODE, 
        MAIN_DEPT_CODE, 
        RESULT_PRODUCT_CODE, 
        TECH_QUANTITY, 
        SPEC_VERSION_NO, 
        SPEC_MODEL_VARIANT_NO, 
        OWNER_EMPLOYEE_CODE, 
        RESULT_STORE_CODE, 
        ENTER_RESULT_STORE_BEGIN_DATE, 
        ENTER_RESULT_STORE_END_DATE, 
        NOTES, 
        IS_ARCHIVED, 
        CREATE_EMPLOYEE_CODE, 
        CREATE_DATE, 
        CREATE_TIME, 
        CHANGE_EMPLOYEE_CODE, 
        CHANGE_DATE, 
        CHANGE_TIME, 
        LIMITING_EMPLOYEE_CODE, 
        LIMITING_DATE, 
        LIMITING_TIME, 
        CLOSE_EMPLOYEE_CODE, 
        CLOSE_DATE, 
        CLOSE_TIME, 
        ANNUL_EMPLOYEE_CODE, 
        ANNUL_DATE, 
        ANNUL_TIME, 
        TRANSIENT_STATUS_CODE, 
        WORKDAYS_TO_EXIST,
        IS_OPERATIONS_MODEL,
        INITIAL_TREATMENT_WORKDAYS
      )
      values (
        :new.ML_OBJECT_BRANCH_CODE, 
        :new.ML_OBJECT_CODE, 
        :new.BND_PROCESS_OBJECT_BRANCH_CODE, 
        :new.BND_PROCESS_OBJECT_CODE, 
        :new.MAIN_DEPT_CODE, 
        :new.RESULT_PRODUCT_CODE, 
        :new.TECH_QUANTITY, 
        :new.SPEC_VERSION_NO, 
        :new.SPEC_MODEL_VARIANT_NO, 
        :new.OWNER_EMPLOYEE_CODE, 
        :new.RESULT_STORE_CODE, 
        :new.ENTER_RESULT_STORE_BEGIN_DATE, 
        :new.ENTER_RESULT_STORE_END_DATE, 
        :new.NOTES, 
        Coalesce(:new.IS_ARCHIVED, 0),
        :new.CREATE_EMPLOYEE_CODE, 
        :new.CREATE_DATE, 
        :new.CREATE_TIME, 
        :new.CHANGE_EMPLOYEE_CODE, 
        :new.CHANGE_DATE, 
        :new.CHANGE_TIME, 
        :new.LIMITING_EMPLOYEE_CODE, 
        :new.LIMITING_DATE, 
        :new.LIMITING_TIME, 
        :new.CLOSE_EMPLOYEE_CODE, 
        :new.CLOSE_DATE, 
        :new.CLOSE_TIME, 
        :new.ANNUL_EMPLOYEE_CODE, 
        :new.ANNUL_DATE, 
        :new.ANNUL_TIME, 
        Coalesce(:new.TRANSIENT_STATUS_CODE, 1),
        :new.WORKDAYS_TO_EXIST,
        Coalesce(:new.IS_OPERATIONS_MODEL, 0),
        :new.INITIAL_TREATMENT_WORKDAYS
      );
     
    exception
      when others then
        StateUtils.EndMlfeUpdate;
        raise;
    end;
    StateUtils.EndMlfeUpdate;
  end if;
    
end tr_MLFE_II;
/
