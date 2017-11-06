create or replace trigger tr_BOFE_IIU
  instead of insert or update on BUDGET_ORDERS_FOR_EDIT
  for each row

declare
  BOIId Varchar2(50 char);
  BOIBeginDate Date;
  BOIWorkdays Integer;

begin
  if not StateUtils.InBofeUpdate then
  
    StateUtils.BeginBofeUpdate;
    
    begin
      if (:old.BO_REGULARITY_TYPE_CODE <> :new.BO_REGULARITY_TYPE_CODE) and
         :new.CLOSE_EMPLOYEE_CODE is null and
         :new.ANNUL_EMPLOYEE_CODE is null then
        begin
          -- proverka za biudjetnie limiti na tova bordero dali ne se sekat s niakakvi drugi limiti
          select
            BUDGET_ORDER_ITEM_ID,
            BEGIN_DATE,
            BOI_WORKDAYS
          into
            BOIId,
            BOIBeginDate,
            BOIWorkdays
          from
            (
              select
                ( select
                    ( dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER || '/' || 
                      bo.BUDGET_ORDER_CODE || '/' ||
                      boi.BUDGET_ORDER_ITEM_CODE )
                  from
                    DEPTS d,
                    DEPT_TYPES dt
                  where
                    (d.DEPT_CODE = bo.BUDGET_ORDER_BRANCH_CODE) and
                    (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))
                ) as BUDGET_ORDER_ITEM_ID,
                boi.BEGIN_DATE,
                CountWorkdays(boi.BEGIN_DATE, boi.END_DATE) as BOI_WORKDAYS
                
              from
                BUDGET_ORDERS bo,
                BUDGET_ORDER_ITEMS boi,
                BUDGET_ORDER_ITEMS boi2
                
              where
                ( (bo.BUDGET_ORDER_BRANCH_CODE <> :new.BUDGET_ORDER_BRANCH_CODE) or
                  (bo.BUDGET_ORDER_CODE <> :new.BUDGET_ORDER_CODE) ) and
                  
                (bo.CLOSE_EMPLOYEE_CODE is null) and
                (bo.ANNUL_EMPLOYEE_CODE is null) and                

                (boi.CLOSE_EMPLOYEE_CODE is null) and
                (boi.ANNUL_EMPLOYEE_CODE is null) and                

                (boi2.CLOSE_EMPLOYEE_CODE is null) and
                (boi2.ANNUL_EMPLOYEE_CODE is null) and                

                (:new.CLOSE_EMPLOYEE_CODE is null) and
                (:new.ANNUL_EMPLOYEE_CODE is null) and                

                (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_CODE) and
                (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and
                
                (:new.BUDGET_ORDER_BRANCH_CODE = boi2.BUDGET_ORDER_BRANCH_CODE) and
                (:new.BUDGET_ORDER_CODE = boi2.BUDGET_ORDER_CODE) and

                (bo.BO_REGULARITY_TYPE_CODE = 1) and
                (bo.BO_REGULARITY_TYPE_CODE = :new.BO_REGULARITY_TYPE_CODE) and
                (bo.BUDGET_ORDER_CLASS_CODE = :new.BUDGET_ORDER_CLASS_CODE) and
                
                ( (boi.DEPT_CODE = boi2.DEPT_CODE) or
                  ( (boi.BOI_DISTRIBUTION_TYPE_CODE in (2, 3)) and
                    (exists(
                      select
                        1
                      from
                        DEPT_RELATIONS dr
                      where
                        (dr.ANCESTOR_DEPT_CODE = boi.DEPT_CODE) and
                        (dr.DESCENDANT_DEPT_CODE = boi2.DEPT_CODE)
                      )
                    )
                  )
                ) and
                
                (boi.BUDGET_PRODUCT_CODE = boi2.BUDGET_PRODUCT_CODE) and
                
                ( (boi2.BEGIN_DATE between boi.BEGIN_DATE and boi.END_DATE) or
                  (boi2.END_DATE between boi.BEGIN_DATE and boi.END_DATE) or
                  (boi.BEGIN_DATE between boi2.BEGIN_DATE and boi2.END_DATE) or
                  (boi.END_DATE between boi2.BEGIN_DATE and boi2.END_DATE) ) 
            )
          where
            (rownum = 1);
    
          raise_application_error(-20002, 
            ServerMessages.SOverlappingBudgetOrderItemsId || '(' ||
            'BOIId:s=' || MessageUtils.InternalEncodeString(BOIId) || ',' ||
            'BOIBeginDate:d=' || MessageUtils.InternalDateToStr(BOIBeginDate) || ',' || 
            'BOIWorkdays:i=' || BOIWorkdays || ')'
          ); 
            
        exception
          when no_data_found then
            null;       
        end;
      end if;
  
      if (:old.BUDGET_ORDER_BRANCH_CODE is null) then
      
        -- insert
      
        insert into BUDGET_ORDERS (
          BUDGET_ORDER_BRANCH_CODE,
          BUDGET_ORDER_CODE,
          BUDGET_ORDER_CLASS_CODE,
          GENERATOR_DEPT_CODE,
          GENERATOR_EMPLOYEE_CODE,
          DEVELOPER_DEPT_CODE,
          BEGIN_DATE,
          END_DATE,
          TOTAL_PRICE,
          DESCRIPTION,
          BO_REGULARITY_TYPE_CODE,
          DOC_BRANCH_CODE,
          DOC_CODE,
          PRODUCT_CODE,
          ORG_TASK_PROPOSAL_STATE_CODE,
          CREATE_EMPLOYEE_CODE,
          CREATE_DATE,
          CREATE_TIME,
          CHANGE_EMPLOYEE_CODE,
          CHANGE_DATE,
          CHANGE_TIME,
          ANNUL_EMPLOYEE_CODE,
          ANNUL_DATE,
          ANNUL_TIME,
          CLOSE_EMPLOYEE_CODE,
          CLOSE_DATE,
          CLOSE_TIME
        ) values (
          :new.BUDGET_ORDER_BRANCH_CODE,
          :new.BUDGET_ORDER_CODE,
          :new.BUDGET_ORDER_CLASS_CODE,
          :new.GENERATOR_DEPT_CODE,
          :new.GENERATOR_EMPLOYEE_CODE,
          :new.DEVELOPER_DEPT_CODE,
          :new.BEGIN_DATE,
          :new.END_DATE,
          :new.TOTAL_PRICE,
          :new.DESCRIPTION,
          :new.BO_REGULARITY_TYPE_CODE,
          :new.DOC_BRANCH_CODE,
          :new.DOC_CODE,
          :new.PRODUCT_CODE,
          :new.ORG_TASK_PROPOSAL_STATE_CODE,
          :new.CREATE_EMPLOYEE_CODE,
          :new.CREATE_DATE,
          :new.CREATE_TIME,
          :new.CHANGE_EMPLOYEE_CODE,
          :new.CHANGE_DATE,
          :new.CHANGE_TIME,
          :new.ANNUL_EMPLOYEE_CODE,
          :new.ANNUL_DATE,
          :new.ANNUL_TIME,
          :new.CLOSE_EMPLOYEE_CODE,
          :new.CLOSE_DATE,
          :new.CLOSE_TIME
        );
        
      else
        
        -- update
        if (:old.BUDGET_ORDER_CLASS_CODE <> :new.BUDGET_ORDER_CLASS_CODE) then
          raise_application_error(-20000, 'Internal error: BudgetOrderClassCode should not be changed');
        end if;
        
        update
          BUDGET_ORDERS
        set
          BUDGET_ORDER_BRANCH_CODE = :new.BUDGET_ORDER_BRANCH_CODE,
          BUDGET_ORDER_CODE = :new.BUDGET_ORDER_CODE,
          GENERATOR_DEPT_CODE = :new.GENERATOR_DEPT_CODE,
          GENERATOR_EMPLOYEE_CODE = :new.GENERATOR_EMPLOYEE_CODE,
          DEVELOPER_DEPT_CODE = :new.DEVELOPER_DEPT_CODE,
          BEGIN_DATE = :new.BEGIN_DATE,
          END_DATE = :new.END_DATE,
          TOTAL_PRICE = :new.TOTAL_PRICE,
          DESCRIPTION = :new.DESCRIPTION,
          BO_REGULARITY_TYPE_CODE = :new.BO_REGULARITY_TYPE_CODE,
          DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
          DOC_CODE = :new.DOC_CODE,
          PRODUCT_CODE = :new.PRODUCT_CODE,
          ORG_TASK_PROPOSAL_STATE_CODE = :new.ORG_TASK_PROPOSAL_STATE_CODE,
          CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
          CREATE_DATE = :new.CREATE_DATE,
          CREATE_TIME = :new.CREATE_TIME,
          CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
          CHANGE_DATE = :new.CHANGE_DATE,
          CHANGE_TIME = :new.CHANGE_TIME,
          ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE,
          ANNUL_DATE = :new.ANNUL_DATE,
          ANNUL_TIME = :new.ANNUL_TIME,
          CLOSE_EMPLOYEE_CODE = :new.CLOSE_EMPLOYEE_CODE,
          CLOSE_DATE = :new.CLOSE_DATE,
          CLOSE_TIME = :new.CLOSE_TIME
        where
          (BUDGET_ORDER_BRANCH_CODE = :old.BUDGET_ORDER_BRANCH_CODE) and
          (BUDGET_ORDER_CODE = :old.BUDGET_ORDER_CODE);
          
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
        
      end if;
      
    exception
      when others then
        StateUtils.EndBofeUpdate;
        raise;
    end;
    StateUtils.EndBofeUpdate;
  end if;
  
  
end tr_BOFE_IIU;
/
