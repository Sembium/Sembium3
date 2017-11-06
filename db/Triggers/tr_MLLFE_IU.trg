create or replace trigger tr_MLLFE_IU
  instead of update on MATERIAL_LIST_LINES_FOR_EDIT
  for each row
declare
  TransientStatusCode Integer;
  PSDExists Integer;
  PSDDate Date;
  CombinedAnnulEmployeeCode Number;
  CombinedAnnulDate Date;
  CombinedAnnulTime Date;
  SaleObjectBranchCode Number;
  SaleObjectCode Number;
begin
  if not StateUtils.InMllfeUpdate then
    StateUtils.BeginMllfeUpdate;
    begin

      if (:new.MLL_OBJECT_BRANCH_CODE <> :old.MLL_OBJECT_BRANCH_CODE) or
         (:new.MLL_OBJECT_CODE <> :old.MLL_OBJECT_CODE) then
        raise_application_error(-20000, 'Internal error: MATERIAL_LIST_LINES key should not be changed');
      end if;

      if (:new.ANNUL_EMPLOYEE_CODE is not null) then
        CombinedAnnulEmployeeCode:= :new.ANNUL_EMPLOYEE_CODE;
        CombinedAnnulDate:= :new.ANNUL_DATE;
        CombinedAnnulTime:= :new.ANNUL_TIME;
      else
        select
          Max(ml.ANNUL_EMPLOYEE_CODE),
          Max(ml.ANNUL_DATE),
          Max(ml.ANNUL_TIME)
        into
          CombinedAnnulEmployeeCode,
          CombinedAnnulDate,
          CombinedAnnulTime
        from
          MATERIAL_LISTS ml
        where
          (ml.ML_OBJECT_BRANCH_CODE = :new.ML_OBJECT_BRANCH_CODE) and
          (ml.ML_OBJECT_CODE = :new.ML_OBJECT_CODE);
      end if;

      update
        MATERIAL_LIST_LINES mll
      set
        mll.ML_OBJECT_BRANCH_CODE = :new.ML_OBJECT_BRANCH_CODE, 
        mll.ML_OBJECT_CODE = :new.ML_OBJECT_CODE, 
        mll.PARENT_MLL_OBJECT_BRANCH_CODE = :new.PARENT_MLL_OBJECT_BRANCH_CODE, 
        mll.PARENT_MLL_OBJECT_CODE = :new.PARENT_MLL_OBJECT_CODE, 
        mll.FORK_0_MLL_OBJECT_BRANCH_CODE = :new.FORK_0_MLL_OBJECT_BRANCH_CODE, 
        mll.FORK_0_MLL_OBJECT_CODE = :new.FORK_0_MLL_OBJECT_CODE, 
        mll.NO_1 = :new.NO_1, 
        mll.NO_2 = :new.NO_2, 
        mll.NO_3 = :new.NO_3, 
        mll.NO_4 = :new.NO_4, 
        mll.NO_5 = :new.NO_5, 
        mll.NO_6 = :new.NO_6, 
        mll.NO_7 = :new.NO_7, 
        mll.NO_8 = :new.NO_8, 
        mll.NO_9 = :new.NO_9, 
        mll.NO_10 = :new.NO_10, 
        mll.NO_11 = :new.NO_11, 
        mll.NO_12 = :new.NO_12, 
        mll.NO_13 = :new.NO_13, 
        mll.NO_14 = :new.NO_14, 
        mll.NO_15 = :new.NO_15, 
        mll.NO_16 = :new.NO_16, 
        mll.NO_17 = :new.NO_17, 
        mll.NO_18 = :new.NO_18, 
        mll.NO_19 = :new.NO_19, 
        mll.NO_20 = :new.NO_20, 
        mll.NO_21 = :new.NO_21, 
        mll.NO_22 = :new.NO_22, 
        mll.NO_23 = :new.NO_23, 
        mll.NO_24 = :new.NO_24, 
        mll.NO_25 = :new.NO_25, 
        mll.NO_AS_TEXT = :new.NO_AS_TEXT, 
        mll.NO_AS_FORMATED_TEXT = :new.NO_AS_FORMATED_TEXT, 
        mll.FORK_NO = :new.FORK_NO, 
        mll.DETAIL_CODE = :new.DETAIL_CODE, 
        mll.DETAIL_TECH_QUANTITY = :new.DETAIL_TECH_QUANTITY, 
        mll.LINE_DETAIL_TECH_QUANTITY = :new.LINE_DETAIL_TECH_QUANTITY, 
        mll.TOTAL_DETAIL_TECH_QUANTITY = :new.TOTAL_DETAIL_TECH_QUANTITY, 
        mll.PRODUCT_CODE = :new.PRODUCT_CODE, 
        mll.PRODUCT_TECH_QUANTITY = :new.PRODUCT_TECH_QUANTITY, 
        mll.NOTES = :new.NOTES, 
        mll.CONSTRUCTION_NOTES = :new.CONSTRUCTION_NOTES,
        mll.STORE_CODE = :new.STORE_CODE, 
        mll.PRODUCT_NEED_BEGIN_DATE = :new.PRODUCT_NEED_BEGIN_DATE, 
        mll.PRODUCT_NEED_END_DATE = :new.PRODUCT_NEED_END_DATE, 
        mll.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE, 
        mll.ANNUL_DATE = :new.ANNUL_DATE, 
        mll.ANNUL_TIME = :new.ANNUL_TIME, 
        mll.IS_FOR_SINGLE_USE = :new.IS_FOR_SINGLE_USE,
        mll.IS_WASTE_FORK = :new.IS_WASTE_FORK,
        mll.APPROVE_CYCLE_NO = :new.APPROVE_CYCLE_NO,
        mll.IS_COMPLETE = :new.IS_COMPLETE
      where
        (mll.MLL_OBJECT_BRANCH_CODE = :old.MLL_OBJECT_BRANCH_CODE) and
        (mll.MLL_OBJECT_CODE = :old.MLL_OBJECT_CODE);

      if (:old.DETAIL_CODE <> :new.DETAIL_CODE) then

        update
          EXCEPT_EVENTS_FOR_EDIT  eefe
        set
          eefe.PRODUCT_CODE = :new.DETAIL_CODE
        where
          (exists
            ( select
                1
              from
                OPERATION_MOVEMENTS om,
                MLMS_OPERATIONS mlmso,
                ML_MODEL_STAGES mlms
              where
                (om.OM_BRANCH_CODE = eefe.OM_BRANCH_CODE) and
                (om.OM_CODE = eefe.OM_CODE) and
                (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
                (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
                (mlms.MLL_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
                (mlms.MLL_OBJECT_CODE = :new.MLL_OBJECT_CODE)
            )
          );

        for x in
          ( select
              ee.EXCEPT_EVENT_CODE
            from
              ML_MODEL_STAGES mlms,
              MLMS_OPERATIONS mlmso,
              OPERATION_MOVEMENTS om,
              EXCEPT_EVENTS ee
            where
              (mlms.MLL_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
              (mlms.MLL_OBJECT_CODE = :new.MLL_OBJECT_CODE) and

              (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
              (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and

              (mlmso.MLMSO_OBJECT_BRANCH_CODE = om.FROM_MLMSO_OBJECT_BRANCH_CODE) and
              (mlmso.MLMSO_OBJECT_CODE = om.FROM_MLMSO_OBJECT_CODE) and

              (om.OM_BRANCH_CODE = ee.OM_BRANCH_CODE) and
              (om.OM_CODE = ee.OM_CODE)
          )
        loop

          update
            EXCEPT_EVENTS_FOR_EDIT eefe
          set
            eefe.PRODUCT_CODE = :new.DETAIL_CODE
          where
            (eefe.EXCEPT_EVENT_CODE = x.EXCEPT_EVENT_CODE);

        end loop;

      end if;

      -- add or update out psd
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
          CombinedAnnulEmployeeCode,
          CombinedAnnulDate,
          CombinedAnnulTime
          
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
  
      if (:old.PRODUCT_CODE is not null) and (:new.PRODUCT_CODE is null) then
        delete
          PLANNED_STORE_DEALS_FOR_EDIT psd
        where
          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
          (psd.BND_PROCESS_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
          (psd.IN_OUT = -1)
        ;
      end if;
      
      if (:old.PRODUCT_CODE is not null) and (:new.PRODUCT_CODE is not null) then
        update PLANNED_STORE_DEALS_FOR_EDIT psd
        set
        (
          STORE_CODE,
          STORE_DEAL_BEGIN_DATE,
          STORE_DEAL_END_DATE,
          PRODUCT_CODE,
          QUANTITY,
          ACCOUNT_QUANTITY,
          CHANGE_EMPLOYEE_CODE,
          CHANGE_DATE,
          CHANGE_TIME,
          ANNUL_EMPLOYEE_CODE,
          ANNUL_DATE,
          ANNUL_TIME
        ) =
        (
          select
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
            LoginContext.UserCode as CHANGE_EMPLOYEE_CODE,
            ContextDate as CHANGE_DATE,
            ContextTime as CHANGE_TIME,
            CombinedAnnulEmployeeCode,
            CombinedAnnulDate,
            CombinedAnnulTime
          from
            PRODUCTS p
          where
            (p.PRODUCT_CODE = :new.PRODUCT_CODE)
        )
        
        where
          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
          (psd.BND_PROCESS_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
          (psd.PLANNED_STORE_DEAL_TYPE_CODE = 1) and
          (psd.IS_PLANNED_MANUALLY = 0) and
          (psd.IN_OUT = -1)
        ;
        
        update PLANNED_STORE_DEALS_FOR_EDIT psd
        set
          STORE_DEAL_BEGIN_DATE = :new.PRODUCT_NEED_BEGIN_DATE,
          STORE_DEAL_END_DATE = :new.PRODUCT_NEED_END_DATE,
          CHANGE_EMPLOYEE_CODE = LoginContext.UserCode,
          CHANGE_DATE = ContextDate,
          CHANGE_TIME = ContextTime
        where
          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
          (psd.BND_PROCESS_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
          (psd.PLANNED_STORE_DEAL_TYPE_CODE = 2) and
          (psd.IS_PLANNED_MANUALLY = 0)
        ;
      end if;
  

      -- add or update in psd
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
          CombinedAnnulEmployeeCode,
          CombinedAnnulDate,
          CombinedAnnulTime
          
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
     
      if (TransientStatusCode is null) or 
         (TransientStatusCode <> 2) or
         (:new.IS_FOR_SINGLE_USE = 1) or
         (:new.PRODUCT_CODE is null) then
    
        delete
          PLANNED_STORE_DEALS_FOR_EDIT psd
        where
          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
          (psd.BND_PROCESS_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
          (psd.PLANNED_STORE_DEAL_TYPE_CODE = 1) and
          (psd.IS_PLANNED_MANUALLY = 0) and
          (psd.IN_OUT = 1)
        ;
    
      else
    
        update PLANNED_STORE_DEALS_FOR_EDIT psd
        set
        (
          STORE_CODE,
          STORE_DEAL_BEGIN_DATE,
          STORE_DEAL_END_DATE,
          PRODUCT_CODE,
          QUANTITY,
          ACCOUNT_QUANTITY,
          CHANGE_EMPLOYEE_CODE,
          CHANGE_DATE,
          CHANGE_TIME,
          ANNUL_EMPLOYEE_CODE,
          ANNUL_DATE,
          ANNUL_TIME
        ) =
        (
          select
            ( select
                Decode(pot.PROD_ORDER_BASE_ROLE_CODE, 
                  4, s.SHIPMENT_STORE_CODE, -- razpredeliasht
                  :new.STORE_CODE
                )
              from
                MATERIAL_LISTS ml, 
                SALES s,
                PRODUCTION_ORDER_TYPES pot
              where
                (ml.ML_OBJECT_BRANCH_CODE = :new.ML_OBJECT_BRANCH_CODE) and
                (ml.ML_OBJECT_CODE = :new.ML_OBJECT_CODE) and
                  
                (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE) and
                (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and
                
                (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_TYPE_CODE)
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
            LoginContext.UserCode as CHANGE_EMPLOYEE_CODE,
            ContextDate as CHANGE_DATE,
            ContextTime as CHANGE_TIME,
            CombinedAnnulEmployeeCode,
            CombinedAnnulDate,
            CombinedAnnulTime
          from
            PRODUCTS p
          where
            (p.PRODUCT_CODE = :new.PRODUCT_CODE)
        )
        
        where
          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.MLL_OBJECT_BRANCH_CODE) and
          (psd.BND_PROCESS_OBJECT_CODE = :new.MLL_OBJECT_CODE) and
          (psd.PLANNED_STORE_DEAL_TYPE_CODE = 1) and
          (psd.IS_PLANNED_MANUALLY = 0) and
          (psd.IN_OUT = 1)
        ;
        
      end if;
      
      if (:new.LINE_DETAIL_TECH_QUANTITY <> :old.LINE_DETAIL_TECH_QUANTITY) then
      
        for Mlms in
          (
            select
              mlms.MLMS_OBJECT_BRANCH_CODE,
              mlms.MLMS_OBJECT_CODE
            from
              ML_MODEL_STAGES mlms
            where
              (mlms.MLL_OBJECT_BRANCH_CODE = :old.MLL_OBJECT_BRANCH_CODE) and
              (mlms.MLL_OBJECT_CODE = :old.MLL_OBJECT_CODE)
          )
        loop
          update
            MLMS_OPERATIONS_FOR_EDIT mlmso
            
          set
            mlmso.VARIANT_DETAIL_TECH_QUANTITY = 
              :new.LINE_DETAIL_TECH_QUANTITY -
              (
                select
                  Coalesce(Sum(mlmso2.VARIANT_DETAIL_TECH_QUANTITY), 0)
                from
                  MLMS_OPERATIONS mlmso2
                where
                  (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
                  (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
                  (mlmso2.MLMS_OPERATION_NO = mlmso.MLMS_OPERATION_NO) and
                  (mlmso2.MLMS_OPERATION_VARIANT_NO > mlmso.MLMS_OPERATION_VARIANT_NO) and
                  (mlmso2.IS_ACTIVE = 1)
              )
            
          where
            (mlmso.MLMS_OBJECT_BRANCH_CODE = Mlms.MLMS_OBJECT_BRANCH_CODE) and
            (mlmso.MLMS_OBJECT_CODE = Mlms.MLMS_OBJECT_CODE) and
            (mlmso.IS_ACTIVE = 1) and
            
            not exists(
              select
                1
              from
                MLMS_OPERATIONS mlmso2
              where
                (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
                (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
                (mlmso2.MLMS_OPERATION_NO = mlmso.MLMS_OPERATION_NO) and
                (mlmso2.MLMS_OPERATION_VARIANT_NO < mlmso.MLMS_OPERATION_VARIANT_NO) and
                (mlmso2.IS_ACTIVE = 1)
            );
        end loop;
          
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
    
end tr_MLLFE_IU;
/
