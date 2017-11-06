create or replace trigger tr_MLLFE_II
  instead of insert on MATERIAL_LIST_LINES_FOR_EDIT
  for each row
declare
  TransientStatusCode Integer;
  PSDExists Integer;
  PSDDate Date;
  SaleObjectBranchCode Number;
  SaleObjectCode Number;
begin

  if not StateUtils.InMllfeUpdate then
    StateUtils.BeginMllfeUpdate;
    begin
    
      insert into MATERIAL_LIST_LINES (
        MLL_OBJECT_BRANCH_CODE, 
        MLL_OBJECT_CODE, 
        ML_OBJECT_BRANCH_CODE, 
        ML_OBJECT_CODE, 
        PARENT_MLL_OBJECT_BRANCH_CODE, 
        PARENT_MLL_OBJECT_CODE, 
        FORK_0_MLL_OBJECT_BRANCH_CODE, 
        FORK_0_MLL_OBJECT_CODE, 
        NO_1, 
        NO_2, 
        NO_3, 
        NO_4, 
        NO_5, 
        NO_6, 
        NO_7, 
        NO_8, 
        NO_9, 
        NO_10, 
        NO_11, 
        NO_12, 
        NO_13, 
        NO_14, 
        NO_15, 
        NO_16, 
        NO_17, 
        NO_18, 
        NO_19, 
        NO_20, 
        NO_21, 
        NO_22, 
        NO_23, 
        NO_24, 
        NO_25, 
        NO_AS_TEXT, 
        NO_AS_FORMATED_TEXT, 
        FORK_NO, 
        DETAIL_CODE, 
        DETAIL_TECH_QUANTITY, 
        LINE_DETAIL_TECH_QUANTITY, 
        TOTAL_DETAIL_TECH_QUANTITY, 
        PRODUCT_CODE, 
        PRODUCT_TECH_QUANTITY, 
        NOTES, 
        CONSTRUCTION_NOTES,
        STORE_CODE, 
        PRODUCT_NEED_BEGIN_DATE, 
        PRODUCT_NEED_END_DATE, 
        ANNUL_EMPLOYEE_CODE, 
        ANNUL_DATE, 
        ANNUL_TIME, 
        IS_FOR_SINGLE_USE,
        IS_WASTE_FORK,
        APPROVE_CYCLE_NO,
        IS_COMPLETE
      )
      values (
        :new.MLL_OBJECT_BRANCH_CODE, 
        :new.MLL_OBJECT_CODE, 
        :new.ML_OBJECT_BRANCH_CODE, 
        :new.ML_OBJECT_CODE, 
        :new.PARENT_MLL_OBJECT_BRANCH_CODE, 
        :new.PARENT_MLL_OBJECT_CODE, 
        :new.FORK_0_MLL_OBJECT_BRANCH_CODE, 
        :new.FORK_0_MLL_OBJECT_CODE, 
        :new.NO_1, 
        :new.NO_2, 
        :new.NO_3, 
        :new.NO_4, 
        :new.NO_5, 
        :new.NO_6, 
        :new.NO_7, 
        :new.NO_8, 
        :new.NO_9, 
        :new.NO_10, 
        :new.NO_11, 
        :new.NO_12, 
        :new.NO_13, 
        :new.NO_14, 
        :new.NO_15, 
        :new.NO_16, 
        :new.NO_17, 
        :new.NO_18, 
        :new.NO_19, 
        :new.NO_20, 
        :new.NO_21, 
        :new.NO_22, 
        :new.NO_23, 
        :new.NO_24, 
        :new.NO_25, 
        :new.NO_AS_TEXT, 
        :new.NO_AS_FORMATED_TEXT, 
        :new.FORK_NO, 
        :new.DETAIL_CODE, 
        :new.DETAIL_TECH_QUANTITY, 
        :new.LINE_DETAIL_TECH_QUANTITY, 
        :new.TOTAL_DETAIL_TECH_QUANTITY, 
        :new.PRODUCT_CODE, 
        :new.PRODUCT_TECH_QUANTITY, 
        :new.NOTES, 
        :new.CONSTRUCTION_NOTES,
        :new.STORE_CODE, 
        :new.PRODUCT_NEED_BEGIN_DATE, 
        :new.PRODUCT_NEED_END_DATE, 
        :new.ANNUL_EMPLOYEE_CODE, 
        :new.ANNUL_DATE, 
        :new.ANNUL_TIME, 
        Coalesce(:new.IS_FOR_SINGLE_USE, 0),
        Coalesce(:new.IS_WASTE_FORK, 0),
        :new.APPROVE_CYCLE_NO,
        Coalesce(:new.IS_COMPLETE, 0)
      );
     

      -- add out psd
      if (:old.PRODUCT_CODE is null) and (:new.PRODUCT_CODE is not null) then
        insert into PLANNED_STORE_DEALS_FOR_EDIT (
          PLANNED_STORE_DEAL_BRANCH_CODE,
          PLANNED_STORE_DEAL_CODE,
          PLANNED_STORE_DEAL_TYPE_CODE,
          STORE_DEAL_TYPE_CODE,
          PRIORITY_CODE,
          IS_PLANNED_MANUALLY,
          BND_PROCESS_OBJECT_BRANCH_CODE,
          BND_PROCESS_OBJECT_CODE,
          BND_PROCESS_CODE,
          STORE_CODE,
          STORE_DEAL_BEGIN_DATE,
          STORE_DEAL_END_DATE,
          PRODUCT_CODE,
          QUANTITY,
          ACCOUNT_QUANTITY,
          CREATE_EMPLOYEE_CODE,
          CREATE_DATE,
          CREATE_TIME,
          CHANGE_EMPLOYEE_CODE,
          CHANGE_DATE,
          CHANGE_TIME,
          CLOSE_EMPLOYEE_CODE,
          CLOSE_DATE,
          CLOSE_TIME,
          ANNUL_EMPLOYEE_CODE,
          ANNUL_DATE,
          ANNUL_TIME
        )
        
        select
          :new.MLL_OBJECT_BRANCH_CODE as PLANNED_STORE_DEAL_BRANCH_CODE,
          seq_PLANNED_STORE_DEALS.NEXTVAL as PLANNED_STORE_DEAL_CODE,
          1 as PLANNED_STORE_DEAL_TYPE_CODE,
          851 as STORE_DEAL_TYPE_CODE,
          sg.PRIORITY_CODE as PRIORITY_CODE,
          0 as IS_PLANNED_MANUALLY,
          :new.MLL_OBJECT_BRANCH_CODE as BND_PROCESS_OBJECT_BRANCH_CODE,
          :new.MLL_OBJECT_CODE as BND_PROCESS_OBJECT_CODE,
          61 as BND_PROCESS_CODE,
          :new.STORE_CODE,
          :new.PRODUCT_NEED_BEGIN_DATE as STORE_DEAL_BEGIN_DATE,
          :new.PRODUCT_NEED_END_DATE as STORE_DEAL_END_DATE,
          :new.PRODUCT_CODE,
          (:new.PRODUCT_TECH_QUANTITY * 
           :new.LINE_DETAIL_TECH_QUANTITY / 
           p.TECH_MEASURE_COEF) as QUANTITY,
          (:new.PRODUCT_TECH_QUANTITY * 
           :new.LINE_DETAIL_TECH_QUANTITY / 
           p.TECH_MEASURE_COEF *
           p.ACCOUNT_MEASURE_COEF
          ) as ACCOUNT_QUANTITY,
          LoginContext.UserCode as CREATE_EMPLOYEE_CODE,
          ContextDate as CREATE_DATE,
          ContextTime as CREATE_TIME,
          LoginContext.UserCode as CHANGE_EMPLOYEE_CODE,
          ContextDate as CHANGE_DATE,
          ContextTime as CHANGE_TIME,
          Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, LoginContext.UserCode) as CLOSE_EMPLOYEE_CODE,
          Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, ContextDate) as CLOSE_DATE,
          Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, ContextTime) as CLOSE_TIME,
          :new.ANNUL_EMPLOYEE_CODE,
          :new.ANNUL_DATE,
          :new.ANNUL_TIME
          
        from
          PRODUCTS p,
          MATERIAL_LISTS ml,
          SALES s,
          SALE_GROUPS sg
          
        where
          (p.PRODUCT_CODE = :new.PRODUCT_CODE) and
          
          (:new.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
          (:new.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
          
          (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and
          (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and
          
          (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRANCH_CODE) and
          (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE)
        ;
      end if;    


      -- add in psd      
      select
        s.TRANSIENT_STATUS_CODE,
        IncDateByWorkdays(ml.ENTER_RESULT_STORE_END_DATE + 1, s.WORKDAYS_TO_EXIST)
      into
        TransientStatusCode,
        PSDDate
      from
        SALES s,
        MATERIAL_LISTS ml
      where
        (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and
        (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and
        
        (ml.ML_OBJECT_BRANCH_CODE = :new.ML_OBJECT_BRANCH_CODE) and
        (ml.ML_OBJECT_CODE = :new.ML_OBJECT_CODE)
      ;
    
      select
        Max(1)
      into
        PSDExists
      from
        PLANNED_STORE_DEALS psd
      where
        (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
        (psd.BND_PROCESS_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
        (psd.IN_OUT = 1)
      ;    
      
      if (TransientStatusCode = 2) and
         (PSDExists is null) and
         (:new.IS_FOR_SINGLE_USE = 0) and
         (:new.PRODUCT_CODE is not null) then
        insert into PLANNED_STORE_DEALS_FOR_EDIT (
          PLANNED_STORE_DEAL_BRANCH_CODE,
          PLANNED_STORE_DEAL_CODE,
          PLANNED_STORE_DEAL_TYPE_CODE,
          STORE_DEAL_TYPE_CODE,
          PRIORITY_CODE,
          IS_PLANNED_MANUALLY,
          BND_PROCESS_OBJECT_BRANCH_CODE,
          BND_PROCESS_OBJECT_CODE,
          BND_PROCESS_CODE,
          STORE_CODE,
          STORE_DEAL_BEGIN_DATE,
          STORE_DEAL_END_DATE,
          PRODUCT_CODE,
          QUANTITY,
          ACCOUNT_QUANTITY,
          CREATE_EMPLOYEE_CODE,
          CREATE_DATE,
          CREATE_TIME,
          CHANGE_EMPLOYEE_CODE,
          CHANGE_DATE,
          CHANGE_TIME,
          CLOSE_EMPLOYEE_CODE,
          CLOSE_DATE,
          CLOSE_TIME,
          ANNUL_EMPLOYEE_CODE,
          ANNUL_DATE,
          ANNUL_TIME
        )
        
        select
          :new.MLL_OBJECT_BRANCH_CODE as PLANNED_STORE_DEAL_BRANCH_CODE,
          seq_PLANNED_STORE_DEALS.NEXTVAL as PLANNED_STORE_DEAL_CODE,
          1 as PLANNED_STORE_DEAL_TYPE_CODE,
          811 as STORE_DEAL_TYPE_CODE,
          sg.PRIORITY_CODE as PRIORITY_CODE,
          0 as IS_PLANNED_MANUALLY,
          :new.MLL_OBJECT_BRANCH_CODE as BND_PROCESS_OBJECT_BRANCH_CODE,
          :new.MLL_OBJECT_CODE as BND_PROCESS_OBJECT_CODE,
          61 as BND_PROCESS_CODE,
          Decode(
            ( select
                pot.PROD_ORDER_BASE_ROLE_CODE
              from
                PRODUCTION_ORDER_TYPES pot
              where
                (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_TYPE_CODE)
            ), 4, s.SHIPMENT_STORE_CODE, -- razpredeliasht
            :new.STORE_CODE
          ),
          PSDDate as STORE_DEAL_BEGIN_DATE,
          PSDDate as STORE_DEAL_END_DATE,
          :new.PRODUCT_CODE,
          (:new.PRODUCT_TECH_QUANTITY * 
           :new.LINE_DETAIL_TECH_QUANTITY / 
           p.TECH_MEASURE_COEF) as QUANTITY,
          (:new.PRODUCT_TECH_QUANTITY * 
           :new.LINE_DETAIL_TECH_QUANTITY / 
           p.TECH_MEASURE_COEF *
           p.ACCOUNT_MEASURE_COEF
          ) as ACCOUNT_QUANTITY,
          LoginContext.UserCode as CREATE_EMPLOYEE_CODE,
          ContextDate as CREATE_DATE,
          ContextTime as CREATE_TIME,
          LoginContext.UserCode as CHANGE_EMPLOYEE_CODE,
          ContextDate as CHANGE_DATE,
          ContextTime as CHANGE_TIME,
          Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, LoginContext.UserCode) as CLOSE_EMPLOYEE_CODE,
          Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, ContextDate) as CLOSE_DATE,
          Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, ContextTime) as CLOSE_TIME,
          :new.ANNUL_EMPLOYEE_CODE,
          :new.ANNUL_DATE,
          :new.ANNUL_TIME
          
        from
          PRODUCTS p,
          MATERIAL_LISTS ml,
          SALES s,
          SALE_GROUPS sg
          
        where
          (p.PRODUCT_CODE = :new.PRODUCT_CODE) and
          
          (:new.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
          (:new.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
          
          (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and
          (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and
          
          (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRANCH_CODE) and
          (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE)
        ;
      end if;    
      
      select
        ml.BND_PROCESS_OBJECT_BRANCH_CODE,
        ml.BND_PROCESS_OBJECT_CODE
      into
        SaleObjectBranchCode,
        SaleObjectCode
      from
        MATERIAL_LISTS ml
      where
        (ml.ML_OBJECT_BRANCH_CODE = :new.ML_OBJECT_BRANCH_CODE) and
        (ml.ML_OBJECT_CODE = :new.ML_OBJECT_CODE)
      ;

      ModelUtils.CalcSaleInStoreDealsTotalPrice(SaleObjectBranchCode, SaleObjectCode);

    exception
      when others then
        StateUtils.EndMllfeUpdate;
        raise;
    end;
    StateUtils.EndMllfeUpdate;
  end if;
    
end tr_MLLFE_II;
/
