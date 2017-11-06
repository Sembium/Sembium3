create or replace trigger tr_MLMSOFE_II
  instead of insert on MLMS_OPERATIONS_FOR_EDIT
  for each row
declare
  StoreCode Integer;
  ProductName Varchar2(100 char);
  ProductNo Integer;
  i Integer;
  InOut Integer;
  StageTreatmentBeginDate Date;
  NewTreatmentBeginDate Date;
  NewTreatmentEndDate Date;
  NewIsActive Integer;
begin
  NewIsActive:= Coalesce(Sign(:new.VARIANT_DETAIL_TECH_QUANTITY), 0);
  
  if not StateUtils.InMlmsofeUpdate then
    StateUtils.BeginMlmsofeUpdate;
    begin
    
      NewTreatmentBeginDate:= :new.TREATMENT_BEGIN_DATE;  
      NewTreatmentEndDate:= :new.TREATMENT_END_DATE;
      
      if (:new.TREATMENT_BEGIN_DATE > :new.TREATMENT_END_DATE) or
         (:new.TREATMENT_BEGIN_WORKDAY_NO <> :old.TREATMENT_BEGIN_WORKDAY_NO) or
         (:new.TREATMENT_WORKDAYS <> :old.TREATMENT_WORKDAYS) then
         
        select
          mlms.TREATMENT_BEGIN_DATE
        into
          StageTreatmentBeginDate
        from
          ML_MODEL_STAGES mlms
        where
          (mlms.MLMS_OBJECT_BRANCH_CODE = :new.MLMS_OBJECT_BRANCH_CODE) and
          (mlms.MLMS_OBJECT_CODE = :new.MLMS_OBJECT_CODE)
        ;
         
        NewTreatmentBeginDate:= 
          IncDateByWorkdays(StageTreatmentBeginDate-1, :new.TREATMENT_BEGIN_WORKDAY_NO);
          
        NewTreatmentEndDate:= 
          IncDateByWorkdays(NewTreatmentBeginDate-1, :new.TREATMENT_WORKDAYS);
      end if;
      
      insert into MLMS_OPERATIONS (
        MLMS_OBJECT_BRANCH_CODE, 
        MLMS_OBJECT_CODE, 
        MLMS_OPERATION_NO, 
        OPERATION_TYPE_CODE, 
        PROFESSION_CODE, 
        EFFORT_COEF, 
        MLMS_OPERATION_VARIANT_NO, 
        DEPT_CODE, 
        HOUR_TECH_QUANTITY, 
        SETUP_PROFESSION_CODE, 
        SETUP_EFFORT_COEF, 
        SETUP_HOUR_TECH_QUANTITY, 
        SETUP_EMPLOYEE_CODE, 
        SETUP_TEAM_CODE,
        SETUP_DATE, 
        SETUP_TIME,
        PROGRAM_TOOL_PRODUCT_CODE, 
        SPECIFIC_TOOL_PRODUCT_CODE, 
        TYPICAL_TOOL_PRODUCT_CODE, 
        IS_ACTIVE, 
        NOTES, 
        DOC_BRANCH_CODE, 
        DOC_CODE, 
        MLMSO_OBJECT_BRANCH_CODE, 
        MLMSO_OBJECT_CODE, 
        SPECIFIC_TOOL_DETAIL_TECH_QTY, 
        TYPICAL_TOOL_DETAIL_TECH_QTY,
        TREATMENT_BEGIN_WORKDAY_NO,
        TREATMENT_WORKDAYS,
        TREATMENT_BEGIN_DATE,
        TREATMENT_END_DATE,
        HAS_SPECIAL_CONTROL,
        VARIANT_DETAIL_TECH_QUANTITY,
        PROGRAM_TOOL_REQUIREMENT_CODE,
        SPECIFIC_TOOL_REQUIREMENT_CODE,
        TYPICAL_TOOL_REQUIREMENT_CODE,
        PROGRAM_TOOL_IS_COMPLETE,
        SPECIFIC_TOOL_IS_COMPLETE,
        TYPICAL_TOOL_IS_COMPLETE,
        SETUP_COUNT,
        DONE_SETUP_COUNT,
        IS_AUTO_MOVEMENT,
        IS_AUTO_SETUP
      )
      values (
        :new.MLMS_OBJECT_BRANCH_CODE, 
        :new.MLMS_OBJECT_CODE, 
        :new.MLMS_OPERATION_NO, 
        :new.OPERATION_TYPE_CODE, 
        :new.PROFESSION_CODE, 
        :new.EFFORT_COEF, 
        :new.MLMS_OPERATION_VARIANT_NO, 
        :new.DEPT_CODE, 
        :new.HOUR_TECH_QUANTITY, 
        :new.SETUP_PROFESSION_CODE, 
        :new.SETUP_EFFORT_COEF, 
        :new.SETUP_HOUR_TECH_QUANTITY, 
        :new.SETUP_EMPLOYEE_CODE, 
        :new.SETUP_TEAM_CODE, 
        :new.SETUP_DATE,
        :new.SETUP_TIME,
        :new.PROGRAM_TOOL_PRODUCT_CODE, 
        :new.SPECIFIC_TOOL_PRODUCT_CODE, 
        :new.TYPICAL_TOOL_PRODUCT_CODE, 
        NewIsActive,
        :new.NOTES, 
        :new.DOC_BRANCH_CODE, 
        :new.DOC_CODE, 
        :new.MLMSO_OBJECT_BRANCH_CODE, 
        :new.MLMSO_OBJECT_CODE, 
        :new.SPECIFIC_TOOL_DETAIL_TECH_QTY, 
        :new.TYPICAL_TOOL_DETAIL_TECH_QTY,
        :new.TREATMENT_BEGIN_WORKDAY_NO,
        :new.TREATMENT_WORKDAYS,
        NewTreatmentBeginDate,
        NewTreatmentEndDate,
        :new.HAS_SPECIAL_CONTROL,
        :new.VARIANT_DETAIL_TECH_QUANTITY,
        :new.PROGRAM_TOOL_REQUIREMENT_CODE,
        :new.SPECIFIC_TOOL_REQUIREMENT_CODE,
        :new.TYPICAL_TOOL_REQUIREMENT_CODE,
        :new.PROGRAM_TOOL_IS_COMPLETE,
        :new.SPECIFIC_TOOL_IS_COMPLETE,
        :new.TYPICAL_TOOL_IS_COMPLETE,
        :new.SETUP_COUNT,
        :new.DONE_SETUP_COUNT,
        Coalesce(:new.IS_AUTO_MOVEMENT, 0),
        Coalesce(:new.IS_AUTO_SETUP, 0)
      );
     
      -- add out and in psd
      if (:old.SPECIFIC_TOOL_PRODUCT_CODE is null) and (:new.SPECIFIC_TOOL_PRODUCT_CODE is not null) then

        StoreCode:= StoreUtils.ProductDefaultStore(:new.SPECIFIC_TOOL_PRODUCT_CODE, :new.DEPT_CODE);
  
        if (StoreCode is null) or (StoreCode = 0) then
        
          select
            p.NAME,
            p.CUSTOM_CODE
          into
            ProductName,
            ProductNo
          from
            PRODUCTS p
          where
            (p.PRODUCT_CODE = :new.SPECIFIC_TOOL_PRODUCT_CODE); 
        
          raise_application_error(-20002, 
            ServerMessages.SDefaultStoreNotFoundId || '(' || 
            'ProductName:s=' || MessageUtils.InternalEncodeString(ProductName) || ', ' ||
            'ProductNo:f=' || MessageUtils.InternalFloatToStr(ProductNo) || ')'
          );
        end if;

        -- cikul za dobaviane na teglene i postuplenie
        InOut:= -1;      
        for i in 1..2 loop
      
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
            DEPT_CODE,
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
            :new.MLMSO_OBJECT_BRANCH_CODE as PLANNED_STORE_DEAL_BRANCH_CODE,
            seq_PLANNED_STORE_DEALS.NEXTVAL as PLANNED_STORE_DEAL_CODE,
            1 as PLANNED_STORE_DEAL_TYPE_CODE,
            Decode(InOut, -1, 851, 811) as STORE_DEAL_TYPE_CODE,
            sg.PRIORITY_CODE as PRIORITY_CODE,
            0 as IS_PLANNED_MANUALLY, 
            :new.MLMSO_OBJECT_BRANCH_CODE as BND_PROCESS_OBJECT_BRANCH_CODE,
            :new.MLMSO_OBJECT_CODE as BND_PROCESS_OBJECT_CODE,
            62 as BND_PROCESS_CODE,
            StoreCode as STORE_CODE,
            Decode(InOut, -1, NewTreatmentBeginDate, NewTreatmentEndDate + 1) as STORE_DEAL_BEGIN_DATE,
            Decode(InOut, -1, NewTreatmentBeginDate, NewTreatmentEndDate + 1) as STORE_DEAL_END_DATE,
            :new.SPECIFIC_TOOL_PRODUCT_CODE,
            
            (Nvl2(:new.SPECIFIC_TOOL_DETAIL_TECH_QTY,
                  Ceil(mll.LINE_DETAIL_TECH_QUANTITY / :new.SPECIFIC_TOOL_DETAIL_TECH_QTY), 1) / p.TECH_MEASURE_COEF
            ) as QUANTITY,
            
            ((Nvl2(:new.SPECIFIC_TOOL_DETAIL_TECH_QTY,
                  Ceil(mll.LINE_DETAIL_TECH_QUANTITY / :new.SPECIFIC_TOOL_DETAIL_TECH_QTY), 1) / p.TECH_MEASURE_COEF) * p.ACCOUNT_MEASURE_COEF
            ) as ACCOUNT_QUANTITY,
            
            :new.DEPT_CODE,
            
            LoginContext.UserCode as CREATE_EMPLOYEE_CODE,
            ContextDate as CREATE_DATE,
            ContextTime as CREATE_TIME,
            LoginContext.UserCode as CHANGE_EMPLOYEE_CODE,
            ContextDate as CHANGE_DATE,
            ContextTime as CHANGE_TIME,
            Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, LoginContext.UserCode) as CLOSE_EMPLOYEE_CODE,
            Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, ContextDate) as CLOSE_DATE,
            Decode(ml.CLOSE_EMPLOYEE_CODE, null, null, ContextTime) as CLOSE_TIME,
            ml.ANNUL_EMPLOYEE_CODE,
            ml.ANNUL_DATE,
            ml.ANNUL_TIME
            
          from
            ML_MODEL_STAGES mlms,
            MATERIAL_LIST_LINES mll,
            MATERIAL_LISTS ml,
            PRODUCTS p,
            SALES s,
            SALE_GROUPS sg
            
          where
            (NewIsActive = 1) and
          
            (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
            (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
            
            (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
            (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
            
            (mlms.MLMS_OBJECT_BRANCH_CODE = :new.MLMS_OBJECT_BRANCH_CODE) and
            (mlms.MLMS_OBJECT_CODE = :new.MLMS_OBJECT_CODE) and
            
            (p.PRODUCT_CODE = :new.SPECIFIC_TOOL_PRODUCT_CODE) and
  
            (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and
            (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and
            
            (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRANCH_CODE) and
            (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE)
          ;
          
          InOut:= 1;
          
        end loop;
      end if;
      
    exception
      when others then
        StateUtils.EndMlmsofeUpdate;
        raise;
    end;
    StateUtils.EndMlmsofeUpdate;
  end if;
    
end tr_MLMSOFE_II;
/
