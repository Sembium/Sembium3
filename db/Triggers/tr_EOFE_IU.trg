create or replace trigger tr_EOFE_IU
  instead of update on ENGINEERING_ORDERS_FOR_EDIT
  for each row
declare
  NewChangeCount Number;
  IsCreatingCycle Number;
begin

  if not StateUtils.InEofeUpdate then
    StateUtils.BeginEofeUpdate;
    begin
    
      if (:new.ENGINEERING_ORDER_CODE <> :old.ENGINEERING_ORDER_CODE) then
        raise_application_error(-20000, 'Internal error: ENGINEERING_ORDERS key should not be changed');
      end if;
      
      ModelUtils.CheckEOCloseAndAnnul(
        :new.ENGINEERING_ORDER_CODE,
        :new.PARENT_ENGINEERING_ORDER_CODE,
        :new.CLOSE_EMPLOYEE_CODE is not null,
        :new.ANNUL_EMPLOYEE_CODE is not null);

      if (:new.CHANGE_DATE <> :old.CHANGE_DATE) or
         (:new.CHANGE_TIME <> :old.CHANGE_TIME) or
         (:new.CHANGE_EMPLOYEE_CODE <> :old.CHANGE_EMPLOYEE_CODE) then
        NewChangeCount:= :old.CHANGE_COUNT + 1;
      else
        NewChangeCount:= :old.CHANGE_COUNT;
      end if;
      
      if (:old.PARENT_ENGINEERING_ORDER_CODE is null and :new.PARENT_ENGINEERING_ORDER_CODE is not null) or
         (:old.PARENT_ENGINEERING_ORDER_CODE <> :new.PARENT_ENGINEERING_ORDER_CODE) then

        select
          Sign(Count(*))
        into
          IsCreatingCycle
        from
          ENGINEERING_ORDERS eo
        where
          (eo.ENGINEERING_ORDER_CODE = :new.ENGINEERING_ORDER_CODE)
        start with
          (eo.ENGINEERING_ORDER_CODE = :new.PARENT_ENGINEERING_ORDER_CODE)
        connect by nocycle
          (eo.ENGINEERING_ORDER_CODE = prior eo.PARENT_ENGINEERING_ORDER_CODE);

        if (IsCreatingCycle = 1) then
          raise_application_error(-20000, ServerMessages.SEngOrderIsCreatingCycleId);
        end if;

      end if;

      update
        ENGINEERING_ORDERS eo
      set
        eo.ENGINEERING_ORDER_BRANCH_CODE = :new.ENGINEERING_ORDER_BRANCH_CODE,
        eo.ENGINEERING_ORDER_NO = :new.ENGINEERING_ORDER_NO,
        eo.ENGINEERING_ORDER_TYPE_CODE = :new.ENGINEERING_ORDER_TYPE_CODE,
        eo.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        eo.DOC_CODE = :new.DOC_CODE,
        eo.PRIORITY_CODE = :new.PRIORITY_CODE,
        eo.ORDER_DEPT_CODE = :new.ORDER_DEPT_CODE,
        eo.PRODUCT_CODE = :new.PRODUCT_CODE,
        eo.THOROUGHLY_ENG_PRODUCT_CODE = :new.THOROUGHLY_ENG_PRODUCT_CODE,
        eo.ENGINEERING_PLAN_END_DATE = :new.ENGINEERING_PLAN_END_DATE,
        eo.ENGINEERING_DEPT_CODE = :new.ENGINEERING_DEPT_CODE,
        eo.ENGINEERING_EMPLOYEE_CODE = :new.ENGINEERING_EMPLOYEE_CODE,
        eo.ENGINEERING_PLAN_WORKDAYS = :new.ENGINEERING_PLAN_WORKDAYS,
        eo.ACTIVATE_EMPLOYEE_CODE = :new.ACTIVATE_EMPLOYEE_CODE,
        eo.ACTIVATE_DATE = :new.ACTIVATE_DATE,
        eo.ACTIVATE_TIME = :new.ACTIVATE_TIME,
        eo.CLOSE_EMPLOYEE_CODE = :new.CLOSE_EMPLOYEE_CODE,
        eo.CLOSE_DATE = :new.CLOSE_DATE,
        eo.CLOSE_TIME = :new.CLOSE_TIME,
        eo.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE,
        eo.ANNUL_DATE = :new.ANNUL_DATE,
        eo.ANNUL_TIME = :new.ANNUL_TIME,
        eo.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
        eo.CREATE_DATE = :new.CREATE_DATE,
        eo.CREATE_TIME = :new.CREATE_TIME,
        eo.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        eo.CHANGE_DATE = :new.CHANGE_DATE,
        eo.CHANGE_TIME = :new.CHANGE_TIME,
        eo.CHANGE_COUNT = NewChangeCount,
        eo.PARENT_ENGINEERING_ORDER_CODE = :new.PARENT_ENGINEERING_ORDER_CODE,
        eo.NOTES = :new.NOTES
      where
        (eo.ENGINEERING_ORDER_CODE = :old.ENGINEERING_ORDER_CODE);
        
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) and
         ( (:old.DOC_BRANCH_CODE <> Coalesce(:new.DOC_BRANCH_CODE, 0)) or
           (:old.DOC_CODE <> Coalesce(:new.DOC_CODE, 0)) ) then
         
         delete
           DOCS_FOR_EDIT dfe
         where
           (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
           (dfe.DOC_CODE = :old.DOC_CODE);
         
      end if;
    
    exception
      when others then
        StateUtils.EndEofeUpdate;
        raise;
    end;
    StateUtils.EndEofeUpdate;
  end if;

end tr_EOFE_IU;
/
