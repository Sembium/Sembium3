create or replace trigger tr_BOIFE_IIU
  instead of insert or update on BUDGET_ORDER_ITEMS_FOR_EDIT
  for each row

declare
  BOIId Varchar2(50 char);
  BOIBeginDate Date;
  BOIWorkdays Integer;
  
  SrcBOBranchCode Integer;
  SrcBOCode Integer;
  SrcBOItemCode Integer;
  
begin
  if not StateUtils.InBoifeUpdate then
    StateUtils.BeginBoifeUpdate;
    begin
    
      -- proverka za sechashti se biudjetni limiti
      begin
        SrcBOBranchCode:= :new.BUDGET_ORDER_BRANCH_CODE;
        SrcBOCode:= :new.BUDGET_ORDER_CODE;
        SrcBOItemCode:= :new.BUDGET_ORDER_ITEM_CODE;
        
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
              BUDGET_ORDERS bo2,
              BUDGET_ORDER_ITEMS boi
              
            where
              ( (boi.BUDGET_ORDER_BRANCH_CODE <> SrcBOBranchCode) or
                (boi.BUDGET_ORDER_CODE <> SrcBOCode) or
                (boi.BUDGET_ORDER_ITEM_CODE <> SrcBOItemCode) ) and

              (:new.CLOSE_EMPLOYEE_CODE is null) and
              (:new.ANNUL_EMPLOYEE_CODE is null) and
            
              (bo.CLOSE_EMPLOYEE_CODE is null) and
              (bo.ANNUL_EMPLOYEE_CODE is null) and
                
              (boi.CLOSE_EMPLOYEE_CODE is null) and
              (boi.ANNUL_EMPLOYEE_CODE is null) and

              (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_CODE) and
              (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and
              
              (bo2.BUDGET_ORDER_BRANCH_CODE = SrcBOBranchCode) and
              (bo2.BUDGET_ORDER_CODE = SrcBOCode) and

              (bo.BO_REGULARITY_TYPE_CODE = 1) and
              (bo.BO_REGULARITY_TYPE_CODE = bo2.BO_REGULARITY_TYPE_CODE) and
              (bo.BUDGET_ORDER_CLASS_CODE = bo2.BUDGET_ORDER_CLASS_CODE) and 
              
                -- syshtestuva item za syshtia dept
              ( (boi.DEPT_CODE = :new.DEPT_CODE) or
              
                -- syshtestvuva item s razpredelen ili centraliziran nachin na konsumirane ot goren dept
                ( (boi.BOI_DISTRIBUTION_TYPE_CODE in (2, 3)) and
                  (exists(
                    select
                      1
                    from
                      DEPT_RELATIONS dr
                    where
                      (dr.ANCESTOR_DEPT_CODE = boi.DEPT_CODE) and
                      (dr.DESCENDANT_DEPT_CODE = :new.DEPT_CODE)
                    )
                  )
                ) or
                
                -- napravili sme updatevania item s razpredelen ili centraliziran nachin na konsumirane i vliza v konflikt s veche syshtestvuvasht naslednik
                ( (:old.BOI_DISTRIBUTION_TYPE_CODE <> :new.BOI_DISTRIBUTION_TYPE_CODE) and
                  (:new.BOI_DISTRIBUTION_TYPE_CODE in (2, 3)) and
                  (exists(
                    select
                      1
                    from 
                      DEPT_RELATIONS dr
                    where
                      (dr.ANCESTOR_DEPT_CODE = :new.DEPT_CODE) and
                      (dr.DESCENDANT_DEPT_CODE = boi.DEPT_CODE)
                    )
                  )
                )
              ) and
              
              (boi.BUDGET_PRODUCT_CODE = :new.BUDGET_PRODUCT_CODE) and
              ( (:new.BEGIN_DATE between boi.BEGIN_DATE and boi.END_DATE) or
                (:new.END_DATE between boi.BEGIN_DATE and boi.END_DATE) or
                (boi.BEGIN_DATE between :new.BEGIN_DATE and :new.END_DATE) or
                (boi.END_DATE between :new.BEGIN_DATE and :new.END_DATE) )
                
            order by
              BUDGET_ORDER_ITEM_ID
          )
        where
          (rownum = 1)
        ;
        
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
      -- krai na proverkata
    

      if (:old.BUDGET_ORDER_BRANCH_CODE is null) then
      
        -- insert
      
        insert into BUDGET_ORDER_ITEMS (
          BUDGET_ORDER_BRANCH_CODE,
          BUDGET_ORDER_CODE,
          BUDGET_ORDER_ITEM_CODE,
          BOI_DISTRIBUTION_TYPE_CODE,
          BUDGET_PRODUCT_CODE,
          DEPT_CODE,
          BEGIN_DATE,
          END_DATE,
          DISTRIBUTION_DATE_UNIT_CODE,
          TOTAL_PRICE,
          DOC_BRANCH_CODE,
          DOC_CODE,
          IS_CONFIRMED,
          IS_FOR_RECONSIDERATION,
          IS_CANCELED,
          DECISION_ENTER_EMPLOYEE_CODE,
          DECISION_ENTER_DATE,
          DECISION_APPROVE_EMPLOYEE_CODE,
          DECISION_APPROVE_DATE,
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
          CLOSE_TIME,
          BUDGET_ORDER_ITEM_TYPE_CODE
        ) values (
          :new.BUDGET_ORDER_BRANCH_CODE,
          :new.BUDGET_ORDER_CODE,
          :new.BUDGET_ORDER_ITEM_CODE,
          :new.BOI_DISTRIBUTION_TYPE_CODE,
          :new.BUDGET_PRODUCT_CODE,
          :new.DEPT_CODE,
          :new.BEGIN_DATE,
          :new.END_DATE,
          :new.DISTRIBUTION_DATE_UNIT_CODE,
          :new.TOTAL_PRICE,
          :new.DOC_BRANCH_CODE,
          :new.DOC_CODE,
          Coalesce(:new.IS_CONFIRMED, 0),
          Coalesce(:new.IS_FOR_RECONSIDERATION, 0),
          Coalesce(:new.IS_CANCELED, 0),
          :new.DECISION_ENTER_EMPLOYEE_CODE,
          :new.DECISION_ENTER_DATE,
          :new.DECISION_APPROVE_EMPLOYEE_CODE,
          :new.DECISION_APPROVE_DATE,
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
          :new.CLOSE_TIME,
          :new.BUDGET_ORDER_ITEM_TYPE_CODE
        );
      else
      
        -- update
      
        update 
          BUDGET_ORDER_ITEMS 
        set
          BUDGET_ORDER_BRANCH_CODE = :new.BUDGET_ORDER_BRANCH_CODE,
          BUDGET_ORDER_CODE = :new.BUDGET_ORDER_CODE,
          BUDGET_ORDER_ITEM_CODE = :new.BUDGET_ORDER_ITEM_CODE,
          BOI_DISTRIBUTION_TYPE_CODE = :new.BOI_DISTRIBUTION_TYPE_CODE,
          BUDGET_PRODUCT_CODE = :new.BUDGET_PRODUCT_CODE,
          DEPT_CODE = :new.DEPT_CODE,
          BEGIN_DATE = :new.BEGIN_DATE,
          END_DATE = :new.END_DATE,
          DISTRIBUTION_DATE_UNIT_CODE = :new.DISTRIBUTION_DATE_UNIT_CODE,
          TOTAL_PRICE = :new.TOTAL_PRICE,
          DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
          DOC_CODE = :new.DOC_CODE,
          IS_CONFIRMED = :new.IS_CONFIRMED,
          IS_FOR_RECONSIDERATION = :new.IS_FOR_RECONSIDERATION,
          IS_CANCELED = :new.IS_CANCELED,
          DECISION_ENTER_EMPLOYEE_CODE = :new.DECISION_ENTER_EMPLOYEE_CODE,
          DECISION_ENTER_DATE = :new.DECISION_ENTER_DATE,
          DECISION_APPROVE_EMPLOYEE_CODE = :new.DECISION_APPROVE_EMPLOYEE_CODE,
          DECISION_APPROVE_DATE = :new.DECISION_APPROVE_DATE,
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
          CLOSE_TIME = :new.CLOSE_TIME,
          BUDGET_ORDER_ITEM_TYPE_CODE = :new.BUDGET_ORDER_ITEM_TYPE_CODE
        where
          (BUDGET_ORDER_BRANCH_CODE = :old.BUDGET_ORDER_BRANCH_CODE) and
          (BUDGET_ORDER_CODE = :old.BUDGET_ORDER_CODE) and
          (BUDGET_ORDER_ITEM_CODE = :old.BUDGET_ORDER_ITEM_CODE)
        ;
        
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
        StateUtils.EndBoifeUpdate;
        raise;
    end;
    StateUtils.EndBoifeUpdate;
  end if;

end tr_BOIFE_IIU;
/
