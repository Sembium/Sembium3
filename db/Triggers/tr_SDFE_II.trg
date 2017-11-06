create or replace trigger tr_SDFE_II
  instead of insert on STORE_DEALS_FOR_EDIT
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
  ProcessObjectIdentifier VarChar2(100 char);
begin
  if not StateUtils.InSdfeUpdate then
    StateUtils.BeginSdfeUpdate;
    begin
 
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

    
      -- 1. insert STORE_DEALS
      insert into STORE_DEALS
      (
        STORE_DEAL_OBJECT_BRANCH_CODE, 
        STORE_DEAL_OBJECT_CODE, 
        STORE_CODE, 
        STORE_DEAL_TYPE_CODE, 
        STORE_DEAL_DATE, 
        STORE_DEAL_NO, 
        PRODUCT_CODE, 
        WANTED_QUANTITY, 
        QUANTITY, 
        ACCOUNT_QUANTITY, 
        CURRENCY_CODE, 
        TOTAL_PRICE, 
        STORE_EMPLOYEE_CODE, 
        OTHER_EMPLOYEE_CODE, 
        REQUEST_EMPLOYEE_CODE, 
        IS_WASTE_BOUND, 
        DEPT_CODE, 
        WORK_ORDER_NO, 
        BND_PROCESS_OBJECT_BRANCH_CODE, 
        BND_PROCESS_OBJECT_CODE, 
        BND_PROCESS_CODE, 
        PLANNED_STORE_DEAL_BRANCH_CODE, 
        PLANNED_STORE_DEAL_CODE, 
        CREATE_DATE, 
        STORE_REQUEST_BRANCH_CODE, 
        STORE_REQUEST_CODE, 
        CREATE_TIME, 
        CREATE_EMPLOYEE_CODE, 
        STORE_REQUEST_ITEM_CODE, 
        STORNO_DATE, 
        STORNO_TIME, 
        STORNO_EMPLOYEE_CODE, 
        OLD_DEAL_OBJECT_BRANCH_CODE, 
        OLD_DEAL_OBJECT_CODE, 
        VENDOR_COMPANY_CODE, 
        INVOICE_NO, 
        INVOICE_DATE, 
        INVOICE_ABBREV, 
        IS_PROFORM_INVOICE, 
        IN_OUT,
        DOC_BRANCH_CODE,
        DOC_CODE      
      )
      values 
      (
        :new.STORE_DEAL_OBJECT_BRANCH_CODE, 
        :new.STORE_DEAL_OBJECT_CODE, 
        :new.STORE_CODE, 
        :new.STORE_DEAL_TYPE_CODE, 
        :new.STORE_DEAL_DATE, 
        :new.STORE_DEAL_NO, 
        :new.PRODUCT_CODE, 
        :new.WANTED_QUANTITY, 
        :new.QUANTITY, 
        :new.ACCOUNT_QUANTITY, 
        :new.CURRENCY_CODE, 
        :new.TOTAL_PRICE, 
        :new.STORE_EMPLOYEE_CODE, 
        :new.OTHER_EMPLOYEE_CODE, 
        :new.REQUEST_EMPLOYEE_CODE, 
        Coalesce(:new.IS_WASTE_BOUND, 0),
        :new.DEPT_CODE, 
        :new.WORK_ORDER_NO, 
        :new.BND_PROCESS_OBJECT_BRANCH_CODE, 
        :new.BND_PROCESS_OBJECT_CODE, 
        :new.BND_PROCESS_CODE, 
        :new.PLANNED_STORE_DEAL_BRANCH_CODE, 
        :new.PLANNED_STORE_DEAL_CODE, 
        :new.CREATE_DATE, 
        :new.STORE_REQUEST_BRANCH_CODE, 
        :new.STORE_REQUEST_CODE, 
        :new.CREATE_TIME, 
        :new.CREATE_EMPLOYEE_CODE, 
        :new.STORE_REQUEST_ITEM_CODE, 
        :new.STORNO_DATE, 
        :new.STORNO_TIME, 
        :new.STORNO_EMPLOYEE_CODE, 
        :new.OLD_DEAL_OBJECT_BRANCH_CODE, 
        :new.OLD_DEAL_OBJECT_CODE, 
        :new.VENDOR_COMPANY_CODE, 
        :new.INVOICE_NO, 
        :new.INVOICE_DATE, 
        :new.INVOICE_ABBREV, 
        Coalesce(:new.IS_PROFORM_INVOICE, 0),
        :new.IN_OUT      ,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE
      );
      
      -- 2. ReCalc And ReAggr Store Deals
      if (:new.STORNO_EMPLOYEE_CODE is null) then
        StoreUtils.ReCalcAndReAggrStoreDeals(
          :new.PRODUCT_CODE,
          :new.STORE_CODE,
          :new.STORE_DEAL_DATE
        );
      end if;
      
      -- 3. Add Operation Movements
      if (:new.STORNO_EMPLOYEE_CODE is null) then
        -- teglene
        if (:new.STORE_DEAL_TYPE_CODE = 851) and
           (:new.BND_PROCESS_CODE = 61) then
  
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
            
            select
              po.PROCESS_OBJECT_IDENTIFIER
            into
              ProcessObjectIdentifier
            from
              PROCESS_OBJECTS po
            where
              (po.PROCESS_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE) and
              (po.PROCESS_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE);
          
            raise_application_error(-20002, ServerMessages.SBeginingOrgOpNotFoundId || '(' ||
              'MllIdentifier:s=' || MessageUtils.InternalEncodeString(ProcessObjectIdentifier) || ')');
          end if;
           
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
      
        -- postuplenie
        if (:new.STORE_DEAL_TYPE_CODE = 811) and
           (:new.BND_PROCESS_CODE = 60) then

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
  end if;
    
end tr_SDFE_II;
/
