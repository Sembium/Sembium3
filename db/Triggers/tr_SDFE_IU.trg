create or replace trigger tr_SDFE_IU
  instead of update on STORE_DEALS_FOR_EDIT
  for each row
declare
  TechMeasureCoef Number;
  ToMlmsoObjectBranchCode Number;
  ToMlmsoObjectCode Number;
  FromMlmsoObjectBranchCode Number;
  FromMlmsoObjectCode Number;
  AnnuledPSD Number;
  SaleObjectBranchCode Number;
  SaleObjectCode Number;
  HasMaterialList Number;
begin
  StateUtils.BeginSdfeUpdate;
  begin
    if (:new.TOTAL_PRICE is null) then
      raise_application_error(-20002, 'null total price for ' || :old.STORE_DEAL_OBJECT_CODE);
    end if;


    if (:new.STORE_DEAL_OBJECT_BRANCH_CODE <> :old.STORE_DEAL_OBJECT_BRANCH_CODE) or
       (:new.STORE_DEAL_OBJECT_CODE <> :old.STORE_DEAL_OBJECT_CODE) then
      raise_application_error(-20000, 'Internal error: STORE_DEALS key should not be changed');
    end if;
    

    if (:new.STORNO_EMPLOYEE_CODE is null) then   

      select
        Count(*)
      into
        AnnuledPSD
      from
        PLANNED_STORE_DEALS psd
      where
        (psd.PLANNED_STORE_DEAL_BRANCH_CODE = :new.PLANNED_STORE_DEAL_BRANCH_CODE) and
        (psd.PLANNED_STORE_DEAL_CODE = :new.PLANNED_STORE_DEAL_CODE) and
        (psd.ANNUL_EMPLOYEE_CODE is not null)
      ;
      
      if (AnnuledPSD > 0) then
        raise_application_error(-20002, ServerMessages.SAnnuledPSDWithSDNotAllowedId);
      end if;
    
    end if;


    -- 1. update STORE_DEALS
    update
      STORE_DEALS sd
    set
      sd.STORE_CODE = :new.STORE_CODE,      
      sd.STORE_DEAL_TYPE_CODE = :new.STORE_DEAL_TYPE_CODE,      
      sd.STORE_DEAL_DATE = :new.STORE_DEAL_DATE,      
      sd.STORE_DEAL_NO = :new.STORE_DEAL_NO,      
      sd.PRODUCT_CODE = :new.PRODUCT_CODE,      
      sd.WANTED_QUANTITY = :new.WANTED_QUANTITY,      
      sd.QUANTITY = :new.QUANTITY,      
      sd.ACCOUNT_QUANTITY = :new.ACCOUNT_QUANTITY,      
      sd.CURRENCY_CODE = :new.CURRENCY_CODE,      
      sd.TOTAL_PRICE = :new.TOTAL_PRICE,      
      sd.STORE_EMPLOYEE_CODE = :new.STORE_EMPLOYEE_CODE,      
      sd.OTHER_EMPLOYEE_CODE = :new.OTHER_EMPLOYEE_CODE,      
      sd.REQUEST_EMPLOYEE_CODE = :new.REQUEST_EMPLOYEE_CODE,      
      sd.IS_WASTE_BOUND = :new.IS_WASTE_BOUND,      
      sd.DEPT_CODE = :new.DEPT_CODE,      
      sd.WORK_ORDER_NO = :new.WORK_ORDER_NO,      
      sd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE,      
      sd.BND_PROCESS_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE,      
      sd.BND_PROCESS_CODE = :new.BND_PROCESS_CODE,      
      sd.PLANNED_STORE_DEAL_BRANCH_CODE = :new.PLANNED_STORE_DEAL_BRANCH_CODE,      
      sd.PLANNED_STORE_DEAL_CODE = :new.PLANNED_STORE_DEAL_CODE,      
      sd.CREATE_DATE = :new.CREATE_DATE,      
      sd.STORE_REQUEST_BRANCH_CODE = :new.STORE_REQUEST_BRANCH_CODE,      
      sd.STORE_REQUEST_CODE = :new.STORE_REQUEST_CODE,
      sd.CREATE_TIME = :new.CREATE_TIME,
      sd.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
      sd.STORE_REQUEST_ITEM_CODE = :new.STORE_REQUEST_ITEM_CODE,
      sd.STORNO_DATE = :new.STORNO_DATE,
      sd.STORNO_TIME = :new.STORNO_TIME,
      sd.STORNO_EMPLOYEE_CODE = :new.STORNO_EMPLOYEE_CODE,
      sd.OLD_DEAL_OBJECT_BRANCH_CODE = :new.OLD_DEAL_OBJECT_BRANCH_CODE,      
      sd.OLD_DEAL_OBJECT_CODE = :new.OLD_DEAL_OBJECT_CODE,      
      sd.VENDOR_COMPANY_CODE = :new.VENDOR_COMPANY_CODE,      
      sd.INVOICE_NO = :new.INVOICE_NO,      
      sd.INVOICE_DATE = :new.INVOICE_DATE,      
      sd.INVOICE_ABBREV = :new.INVOICE_ABBREV,      
      sd.IS_PROFORM_INVOICE = :new.IS_PROFORM_INVOICE,      
      sd.IN_OUT = :new.IN_OUT,
      sd.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
      sd.DOC_CODE = :new.DOC_CODE
    where
      (sd.STORE_DEAL_OBJECT_BRANCH_CODE = :old.STORE_DEAL_OBJECT_BRANCH_CODE) and
      (sd.STORE_DEAL_OBJECT_CODE = :old.STORE_DEAL_OBJECT_CODE)
    ;
      
    if (:old.DOC_BRANCH_CODE is not null) and
       (:old.DOC_CODE is not null) and
       ( (:old.DOC_BRANCH_CODE <> Coalesce(:new.DOC_BRANCH_CODE, 0)) or
         (:old.DOC_CODE <> Coalesce(:new.DOC_CODE, 0)) ) then
         
       delete
         DOCS_FOR_EDIT dfe
       where
         (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
         (dfe.DOC_CODE = :old.DOC_CODE) and
         
         not exists(
           select
             1
           from
             STORE_DEALS sd
           where
             (sd.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
             (sd.DOC_CODE = :old.DOC_CODE)
         );
         
    end if;

    -- 2. ReCalc And ReAggr Store Deals
    if (:new.STORE_CODE = :old.STORE_CODE) and
       (:new.PRODUCT_CODE = :old.PRODUCT_CODE) then
        
      if (:new.STORNO_EMPLOYEE_CODE is null) or
         (:old.STORNO_EMPLOYEE_CODE is null) then
        StoreUtils.ReCalcAndReAggrStoreDeals(
          :new.PRODUCT_CODE,
          :new.STORE_CODE,
          Least(:new.STORE_DEAL_DATE, :old.STORE_DEAL_DATE)
        );
      end if;
        
    else
      if (:new.STORNO_EMPLOYEE_CODE is null) then
        StoreUtils.ReCalcAndReAggrStoreDeals(
          :new.PRODUCT_CODE,
          :new.STORE_CODE,
          :new.STORE_DEAL_DATE
        );
      end if;
        
      if (:old.STORNO_EMPLOYEE_CODE is null) then
        StoreUtils.ReCalcAndReAggrStoreDeals(
          :old.PRODUCT_CODE,
          :old.STORE_CODE,
          :old.STORE_DEAL_DATE
        );
      end if;
    end if;
      
    -- 3. Update Operation Movements
    if ( (:new.STORNO_EMPLOYEE_CODE is null) and 
         (:old.STORNO_EMPLOYEE_CODE is null) ) and
       not ( (:old.OLD_DEAL_OBJECT_BRANCH_CODE is not null) and
             (:new.OLD_DEAL_OBJECT_BRANCH_CODE is null) ) then
               
      if (:new.STORE_DEAL_TYPE_CODE = 851) or 
         (:new.STORE_DEAL_TYPE_CODE = 811) then
           
        -- smiana na oburzanost              
        if (:old.BND_PROCESS_CODE in (60, 61)) and 
           (:new.BND_PROCESS_CODE <> :old.BND_PROCESS_CODE) then

          update
            OPERATION_MOVEMENTS_FOR_EDIT om
          set
            om.STORNO_EMPLOYEE_CODE = LoginContext.UserCode,
            om.STORNO_DATE = ContextDate,
            om.STORNO_TIME = ContextTime
          where
            (om.STORE_DEAL_OBJECT_BRANCH_CODE = :old.STORE_DEAL_OBJECT_BRANCH_CODE) and
            (om.STORE_DEAL_OBJECT_CODE = :old.STORE_DEAL_OBJECT_CODE);

        end if;
          
        -- teglene
        if (:new.BND_PROCESS_CODE = 61) then

          if (:new.STORNO_EMPLOYEE_CODE is null) then
            select
              Min(to_mlmso.MLMSO_OBJECT_BRANCH_CODE),
              Min(to_mlmso.MLMSO_OBJECT_CODE)
            into
              ToMlmsoObjectBranchCode,
              ToMlmsoObjectCode
            from
              MATERIAL_LIST_LINES mll,
              ML_MODEL_STAGES mlms2,
              ML_MODEL_STAGES to_mlms,
              MLMS_OPERATIONS to_mlmso      
            where
              (mll.MLL_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE) and
              (mll.MLL_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE) and
      
              (mlms2.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
              (mlms2.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
              (mlms2.ML_MODEL_STAGE_NO = 1) and
          
              (to_mlms.MLL_OBJECT_BRANCH_CODE = 
                 Decode(mlms2.TREATMENT_WORKDAYS, 0, mll.PARENT_MLL_OBJECT_BRANCH_CODE, mll.MLL_OBJECT_BRANCH_CODE)) and
              (to_mlms.MLL_OBJECT_CODE = 
                 Decode(mlms2.TREATMENT_WORKDAYS, 0, mll.PARENT_MLL_OBJECT_CODE, mll.MLL_OBJECT_CODE)) and
              (to_mlms.ML_MODEL_STAGE_NO = 1) and
                
              (to_mlmso.MLMS_OBJECT_BRANCH_CODE = to_mlms.MLMS_OBJECT_BRANCH_CODE) and
              (to_mlmso.MLMS_OBJECT_CODE = to_mlms.MLMS_OBJECT_CODE) and
              (to_mlmso.DEPT_CODE = :new.DEPT_CODE) and
                
              ( (to_mlmso.OPERATION_TYPE_CODE = 1) or
                ( (to_mlmso.MLMS_OPERATION_NO = 1) and
                  (to_mlmso.IS_ACTIVE = 1) and
                  not exists(
                    select
                      1
                    from
                      MLMS_OPERATIONS mlmso2
                    where
                      (mlmso2.MLMS_OBJECT_BRANCH_CODE = to_mlmso.MLMS_OBJECT_BRANCH_CODE) and
                      (mlmso2.MLMS_OBJECT_CODE = to_mlmso.MLMS_OBJECT_CODE) and
                      (mlmso2.OPERATION_TYPE_CODE = 1)
                  ) ) )
              ;
                
            if (ToMlmsoObjectCode is null) then
              raise_application_error(-20002, ServerMessages.SBeginingOrgOpNotFoundId);
            end if;
          end if;

          if (:new.STORE_DEAL_DATE <> :old.STORE_DEAL_DATE) or
             (:new.OTHER_EMPLOYEE_CODE <> :old.OTHER_EMPLOYEE_CODE) or
             (:new.STORE_EMPLOYEE_CODE <> :old.STORE_EMPLOYEE_CODE) or
             (:new.QUANTITY <> :old.QUANTITY) or
             (:new.DEPT_CODE <> :old.DEPT_CODE) or
             (:new.BND_PROCESS_OBJECT_BRANCH_CODE <> :old.BND_PROCESS_OBJECT_BRANCH_CODE) or
             (:new.BND_PROCESS_OBJECT_CODE <> :old.BND_PROCESS_OBJECT_CODE) then

            update
              OPERATION_MOVEMENTS_FOR_EDIT om
            set
              (
                OM_DATE, 
                FROM_EMPLOYEE_CODE, 
                TO_EMPLOYEE_CODE, 
                WORK_DETAIL_TECH_QUANTITY, 
                TOTAL_DETAIL_TECH_QUANTITY, 
                QA_DETAIL_TECH_QUANTITY, 
                QA_EMPLOYEE_CODE, 
                FROM_MLMSO_OBJECT_BRANCH_CODE, 
                FROM_MLMSO_OBJECT_CODE,
                TO_MLMSO_OBJECT_BRANCH_CODE, 
                TO_MLMSO_OBJECT_CODE
              ) =
              ( select
                  :new.STORE_DEAL_DATE as OM_DATE,
                  :new.STORE_EMPLOYEE_CODE as FROM_EMPLOYEE_CODE,
                  :new.OTHER_EMPLOYEE_CODE as TO_EMPLOYEE_CODE,
                  (:new.QUANTITY * p.TECH_MEASURE_COEF) / mll.PRODUCT_TECH_QUANTITY as WORK_DETAIL_TECH_QUANTITY,
                  (:new.QUANTITY * p.TECH_MEASURE_COEF) / mll.PRODUCT_TECH_QUANTITY as TOTAL_DETAIL_TECH_QUANTITY,
                  (:new.QUANTITY * p.TECH_MEASURE_COEF) / mll.PRODUCT_TECH_QUANTITY as QA_DETAIL_TECH_QUANTITY,
                  :new.STORE_EMPLOYEE_CODE as QA_EMPLOYEE_CODE,
                  mlmso.MLMSO_OBJECT_BRANCH_CODE as FROM_MLMSO_OBJECT_BRANCH_CODE,
                  mlmso.MLMSO_OBJECT_CODE as FROM_MLMSO_OBJECT_CODE,
                  ToMlmsoObjectBranchCode as TO_MLMSO_OBJECT_BRANCH_CODE,
                  ToMlmsoObjectCode as TO_MLMSO_OBJECT_CODE
                
                from
                  PRODUCTS p,
                  MATERIAL_LIST_LINES mll,
                  MATERIAL_LISTS ml,
                  ML_MODEL_STAGES mlms,
                  MLMS_OPERATIONS mlmso
                    
                where  
                  (:new.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
                  (:new.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
                      
                  (mll.PRODUCT_CODE = p.PRODUCT_CODE) and
                      
                  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
                  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
                      
                  (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
                  (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
                  (mlms.ML_MODEL_STAGE_NO = 0) and
                      
                  (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
                  (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
                  (mlmso.OPERATION_TYPE_CODE = 3)
                )
              where
                (om.STORE_DEAL_OBJECT_BRANCH_CODE = :old.STORE_DEAL_OBJECT_BRANCH_CODE) and
                (om.STORE_DEAL_OBJECT_CODE = :old.STORE_DEAL_OBJECT_CODE)
              ;
              
            end if;
              
            if (:new.BND_PROCESS_CODE <> :old.BND_PROCESS_CODE) then
              
              insert into OPERATION_MOVEMENTS_FOR_EDIT
              (
                OM_BRANCH_CODE, 
                OPERATION_MOVEMENT_TYPE_CODE, 
                OM_DATE, 
                OM_TIME, 
                FROM_EMPLOYEE_CODE, 
                TO_EMPLOYEE_CODE, 
                WORK_DETAIL_TECH_QUANTITY, 
                TOTAL_DETAIL_TECH_QUANTITY, 
                QA_DETAIL_TECH_QUANTITY, 
                QA_EMPLOYEE_CODE, 
                CREATE_EMPLOYEE_CODE, 
                CREATE_DATE, 
                CREATE_TIME, 
                STORNO_EMPLOYEE_CODE, 
                STORNO_DATE, 
                STORNO_TIME, 
                FROM_MLMSO_OBJECT_BRANCH_CODE, 
                FROM_MLMSO_OBJECT_CODE,
                TO_MLMSO_OBJECT_BRANCH_CODE, 
                TO_MLMSO_OBJECT_CODE,
                STORE_DEAL_OBJECT_BRANCH_CODE, 
                STORE_DEAL_OBJECT_CODE
              )       
              select
                :new.STORE_DEAL_OBJECT_BRANCH_CODE as OM_BRANCH_CODE,
                3 as OPERATION_MOVEMENT_TYPE_CODE,
                :new.STORE_DEAL_DATE as OM_DATE,
                ContextTime as OM_TIME,
                :new.STORE_EMPLOYEE_CODE as FROM_EMPLOYEE_CODE,
                :new.OTHER_EMPLOYEE_CODE as TO_EMPLOYEE_CODE,
                (:new.QUANTITY * p.TECH_MEASURE_COEF) / mll.PRODUCT_TECH_QUANTITY as WORK_DETAIL_TECH_QUANTITY,
                (:new.QUANTITY * p.TECH_MEASURE_COEF) / mll.PRODUCT_TECH_QUANTITY as TOTAL_DETAIL_TECH_QUANTITY,
                (:new.QUANTITY * p.TECH_MEASURE_COEF) / mll.PRODUCT_TECH_QUANTITY as QA_DETAIL_TECH_QUANTITY,
                :new.STORE_EMPLOYEE_CODE as QA_EMPLOYEE_CODE,
                LoginContext.UserCode as CREATE_EMPLOYEE_CODE,
                ContextDate as CREATE_DATE,
                ContextTime as CREATE_TIME,
                :new.STORNO_EMPLOYEE_CODE, 
                :new.STORNO_DATE, 
                :new.STORNO_TIME, 
                mlmso.MLMSO_OBJECT_BRANCH_CODE as FROM_MLMSO_OBJECT_BRANCH_CODE,
                mlmso.MLMSO_OBJECT_CODE as FROM_MLMSO_OBJECT_CODE,
                ToMlmsoObjectBranchCode as TO_MLMSO_OBJECT_BRANCH_CODE,
                ToMlmsoObjectCode as TO_MLMSO_OBJECT_CODE,
                :new.STORE_DEAL_OBJECT_BRANCH_CODE,
                :new.STORE_DEAL_OBJECT_CODE
            
              from
                PRODUCTS p,
                MATERIAL_LIST_LINES mll,
                MATERIAL_LISTS ml,
                ML_MODEL_STAGES mlms,
                MLMS_OPERATIONS mlmso
                          
              where  
                (:new.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
                (:new.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
                  
                (mll.PRODUCT_CODE = p.PRODUCT_CODE) and
                  
                (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
                (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
                  
                (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
                (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
                (mlms.ML_MODEL_STAGE_NO = 0) and
                  
                (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
                (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
                (mlmso.OPERATION_TYPE_CODE = 3)
              ;  
            end if;
        end if;
          
        -- postuplenie
        if (:new.BND_PROCESS_CODE = 60) then

          select
            Sign(Count(*))
          into
            HasMaterialList
          from
            MATERIAL_LISTS ml
          where
            (ml.BND_PROCESS_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE) and
            (ml.BND_PROCESS_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE);

          if (HasMaterialList = 1) then

            select
              Max(to_mlmso.MLMSO_OBJECT_BRANCH_CODE),
              Max(to_mlmso.MLMSO_OBJECT_CODE),
              Max(p.TECH_MEASURE_COEF)
            into
              ToMlmsoObjectBranchCode,
              ToMlmsoObjectCode,
              TechMeasureCoef
            from
              PRODUCTS p,
              MATERIAL_LIST_LINES mll,
              MATERIAL_LISTS ml,
              ML_MODEL_STAGES to_mlms,
              MLMS_OPERATIONS to_mlmso        
            where  
              (ml.BND_PROCESS_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE) and
              (ml.BND_PROCESS_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE) and
                
              (p.PRODUCT_CODE = ml.RESULT_PRODUCT_CODE) and
                
              (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
              (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
              (mll.NO_1 = 0) and
                
              (to_mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
              (to_mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
              (to_mlms.OUTGOING_WORKDAYS = 0) and
                
              (to_mlmso.MLMS_OBJECT_BRANCH_CODE = to_mlms.MLMS_OBJECT_BRANCH_CODE) and
              (to_mlmso.MLMS_OBJECT_CODE = to_mlms.MLMS_OBJECT_CODE) and
              (to_mlmso.OPERATION_TYPE_CODE = 1)
            ;
            
            if (ToMlmsoObjectCode is null) then
              raise_application_error(-20002, 'Internal error: Assertion: To MLMS Operation not found');
            end if;
                
            select      
              Max(from_mlmso.MLMSO_OBJECT_BRANCH_CODE),
              Max(from_mlmso.MLMSO_OBJECT_CODE)
                  
            into
              FromMlmsoObjectBranchCode,
              FromMlmsoObjectCode
      
            from
              MATERIAL_LIST_LINES mll,
              MATERIAL_LISTS ml,
              ML_MODEL_STAGES to_mlms,
              ML_MODEL_STAGES from_mlms,
              MLMS_OPERATIONS from_mlmso      
                
            where  
              (ml.BND_PROCESS_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE) and
              (ml.BND_PROCESS_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE) and
                  
              (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
              (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
              (mll.NO_1 = 0) and
                  
              (to_mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
              (to_mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
              (to_mlms.OUTGOING_WORKDAYS = 0) and
                  
              (from_mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
              (from_mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
              (from_mlms.ML_MODEL_STAGE_NO = to_mlms.ML_MODEL_STAGE_NO - 1) and
            
              (from_mlmso.MLMS_OBJECT_BRANCH_CODE = from_mlms.MLMS_OBJECT_BRANCH_CODE) and
              (from_mlmso.MLMS_OBJECT_CODE = from_mlms.MLMS_OBJECT_CODE) and
              (from_mlmso.MLMS_OPERATION_NO = 
                (
                  select
                    Max(mlmso.MLMS_OPERATION_NO)
                  from
                    MLMS_OPERATIONS mlmso
                  where
                    (mlmso.MLMS_OBJECT_BRANCH_CODE = from_mlms.MLMS_OBJECT_BRANCH_CODE) and
                    (mlmso.MLMS_OBJECT_CODE = from_mlms.MLMS_OBJECT_CODE)
                )
              ) and
              (from_mlmso.DEPT_CODE = :new.DEPT_CODE)
            ;
        
            if (FromMlmsoObjectCode is null) then
              raise_application_error(-20002, ServerMessages.SOpVariantNotFoundId);
            end if;
                
            if not StateUtils.InOmfeUpdate then
                
              if (:new.STORE_DEAL_DATE <> :old.STORE_DEAL_DATE) or
                 (:new.OTHER_EMPLOYEE_CODE <> :old.OTHER_EMPLOYEE_CODE) or
                 (:new.STORE_EMPLOYEE_CODE <> :old.STORE_EMPLOYEE_CODE) or
                 (:new.QUANTITY <> :old.QUANTITY) or
                 (:new.STORNO_EMPLOYEE_CODE <> :old.STORNO_EMPLOYEE_CODE) or
                 (:new.STORNO_DATE <> :old.STORNO_DATE) or
                 (:new.STORNO_TIME <> :old.STORNO_TIME) or
                 (:new.DEPT_CODE <> :old.DEPT_CODE) or
                 (:new.BND_PROCESS_OBJECT_BRANCH_CODE <> :old.BND_PROCESS_OBJECT_BRANCH_CODE) or
                 (:new.BND_PROCESS_OBJECT_CODE <> :old.BND_PROCESS_OBJECT_CODE) then
              
                update
                  OPERATION_MOVEMENTS_FOR_EDIT om
                set
                  OM_DATE = :new.STORE_DEAL_DATE, 
                  FROM_EMPLOYEE_CODE = :new.OTHER_EMPLOYEE_CODE, 
                  TO_EMPLOYEE_CODE = :new.STORE_EMPLOYEE_CODE, 
                  WORK_DETAIL_TECH_QUANTITY = 0, 
                  TOTAL_DETAIL_TECH_QUANTITY = (:new.QUANTITY * TechMeasureCoef), 
                  QA_DETAIL_TECH_QUANTITY = :new.STORE_EMPLOYEE_CODE, 
                  QA_EMPLOYEE_CODE = :new.STORE_EMPLOYEE_CODE, 
                  STORNO_EMPLOYEE_CODE = :new.STORNO_EMPLOYEE_CODE, 
                  STORNO_DATE = :new.STORNO_DATE, 
                  STORNO_TIME = :new.STORNO_TIME, 
                  FROM_MLMSO_OBJECT_BRANCH_CODE = FromMlmsoObjectBranchCode, 
                  FROM_MLMSO_OBJECT_CODE = FromMlmsoObjectCode,
                  TO_MLMSO_OBJECT_BRANCH_CODE = ToMlmsoObjectBranchCode, 
                  TO_MLMSO_OBJECT_CODE = ToMlmsoObjectCode
                where
                  (om.STORE_DEAL_OBJECT_BRANCH_CODE = :old.STORE_DEAL_OBJECT_BRANCH_CODE) and
                  (om.STORE_DEAL_OBJECT_CODE = :old.STORE_DEAL_OBJECT_CODE)
                ;
                
              end if;
                  
              if (:new.BND_PROCESS_CODE <> :old.BND_PROCESS_CODE) then
                  
                insert into OPERATION_MOVEMENTS_FOR_EDIT
                (
                  OM_BRANCH_CODE, 
                  OPERATION_MOVEMENT_TYPE_CODE, 
                  OM_DATE, 
                  OM_TIME, 
                  FROM_EMPLOYEE_CODE, 
                  TO_EMPLOYEE_CODE, 
                  WORK_DETAIL_TECH_QUANTITY, 
                  TOTAL_DETAIL_TECH_QUANTITY, 
                  QA_DETAIL_TECH_QUANTITY, 
                  QA_EMPLOYEE_CODE, 
                  CREATE_EMPLOYEE_CODE, 
                  CREATE_DATE, 
                  CREATE_TIME, 
                  STORNO_EMPLOYEE_CODE, 
                  STORNO_DATE, 
                  STORNO_TIME, 
                  FROM_MLMSO_OBJECT_BRANCH_CODE, 
                  FROM_MLMSO_OBJECT_CODE,
                  TO_MLMSO_OBJECT_BRANCH_CODE, 
                  TO_MLMSO_OBJECT_CODE,
                  STORE_DEAL_OBJECT_BRANCH_CODE, 
                  STORE_DEAL_OBJECT_CODE
                )       
                values
                (
                  :new.STORE_DEAL_OBJECT_BRANCH_CODE,
                  3,
                  :new.STORE_DEAL_DATE,
                  ContextTime,
                  :new.OTHER_EMPLOYEE_CODE,
                  :new.STORE_EMPLOYEE_CODE,
                  0,
                  (:new.QUANTITY * TechMeasureCoef),
                  (:new.QUANTITY * TechMeasureCoef),
                  :new.STORE_EMPLOYEE_CODE,
                  LoginContext.UserCode,
                  ContextDate,
                  ContextTime,
                  :new.STORNO_EMPLOYEE_CODE, 
                  :new.STORNO_DATE, 
                  :new.STORNO_TIME, 
                  FromMlmsoObjectBranchCode,
                  FromMlmsoObjectCode,
                  ToMlmsoObjectBranchCode,
                  ToMlmsoObjectCode,
                  :new.STORE_DEAL_OBJECT_BRANCH_CODE,
                  :new.STORE_DEAL_OBJECT_CODE
                );

              end if;
                  
            end if;

          end if;
                
        end if;
          
      end if;

    end if;

    if (:new.BND_PROCESS_CODE = 50) and (:new.IN_OUT = 1) then
    
      select
        Max(ml.BND_PROCESS_OBJECT_BRANCH_CODE),
        Max(ml.BND_PROCESS_OBJECT_CODE)
      into
        SaleObjectBranchCode,
        SaleObjectCode
      from
        STORE_DEALS sd,
        MATERIAL_LIST_LINES mll,
        MATERIAL_LISTS ml
      where
        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
        (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
          
        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
        
        (sd.STORE_DEAL_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE) and
        (sd.STORE_DEAL_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE)
      ;
        
      if (SaleObjectCode is not null) then
        ModelUtils.CalcSaleInStoreDealsTotalPrice(SaleObjectBranchCode, SaleObjectCode);
      end if;
        
    end if;
    
  exception
    when others then
      StateUtils.EndSdfeUpdate;
      raise;
  end;
  StateUtils.EndSdfeUpdate;
  
end tr_SDFE_IU;
/
