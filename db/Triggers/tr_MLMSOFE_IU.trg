create or replace trigger tr_MLMSOFE_IU
  instead of update on MLMS_OPERATIONS_FOR_EDIT
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
  DocOperationCount Number;
begin
  NewIsActive:= Coalesce(Sign(:new.VARIANT_DETAIL_TECH_QUANTITY), 0);

  if not StateUtils.InMlmsofeUpdate then
    StateUtils.BeginMlmsofeUpdate;
    begin

      if (:new.MLMSO_OBJECT_BRANCH_CODE <> :old.MLMSO_OBJECT_BRANCH_CODE) or
         (:new.MLMSO_OBJECT_CODE <> :old.MLMSO_OBJECT_CODE) then
        raise_application_error(-20000, 'Internal error: MLMS_OPERATIONS key should not be changed');
      end if;
    
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
        
      update
        MLMS_OPERATIONS mlmso
      set
        mlmso.MLMS_OBJECT_BRANCH_CODE = :new.MLMS_OBJECT_BRANCH_CODE, 
        mlmso.MLMS_OBJECT_CODE = :new.MLMS_OBJECT_CODE, 
        mlmso.MLMS_OPERATION_NO = :new.MLMS_OPERATION_NO, 
        mlmso.OPERATION_TYPE_CODE = :new.OPERATION_TYPE_CODE, 
        mlmso.PROFESSION_CODE = :new.PROFESSION_CODE, 
        mlmso.EFFORT_COEF = :new.EFFORT_COEF, 
        mlmso.MLMS_OPERATION_VARIANT_NO = :new.MLMS_OPERATION_VARIANT_NO, 
        mlmso.DEPT_CODE = :new.DEPT_CODE, 
        mlmso.HOUR_TECH_QUANTITY = :new.HOUR_TECH_QUANTITY, 
        mlmso.SETUP_PROFESSION_CODE = :new.SETUP_PROFESSION_CODE, 
        mlmso.SETUP_EFFORT_COEF = :new.SETUP_EFFORT_COEF, 
        mlmso.SETUP_HOUR_TECH_QUANTITY = :new.SETUP_HOUR_TECH_QUANTITY, 
        mlmso.SETUP_EMPLOYEE_CODE = :new.SETUP_EMPLOYEE_CODE, 
        mlmso.SETUP_TEAM_CODE = :new.SETUP_TEAM_CODE, 
        mlmso.SETUP_DATE = :new.SETUP_DATE,
        mlmso.SETUP_TIME = :new.SETUP_TIME,
        mlmso.PROGRAM_TOOL_PRODUCT_CODE = :new.PROGRAM_TOOL_PRODUCT_CODE, 
        mlmso.SPECIFIC_TOOL_PRODUCT_CODE = :new.SPECIFIC_TOOL_PRODUCT_CODE, 
        mlmso.TYPICAL_TOOL_PRODUCT_CODE = :new.TYPICAL_TOOL_PRODUCT_CODE, 
        mlmso.IS_ACTIVE = NewIsActive, 
        mlmso.NOTES = :new.NOTES, 
        mlmso.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE, 
        mlmso.DOC_CODE = :new.DOC_CODE, 
        mlmso.SPECIFIC_TOOL_DETAIL_TECH_QTY = :new.SPECIFIC_TOOL_DETAIL_TECH_QTY, 
        mlmso.TYPICAL_TOOL_DETAIL_TECH_QTY = :new.TYPICAL_TOOL_DETAIL_TECH_QTY,
        mlmso.TREATMENT_BEGIN_WORKDAY_NO = :new.TREATMENT_BEGIN_WORKDAY_NO,
        mlmso.TREATMENT_WORKDAYS = :new.TREATMENT_WORKDAYS,
        mlmso.TREATMENT_BEGIN_DATE = NewTreatmentBeginDate,
        mlmso.TREATMENT_END_DATE = NewTreatmentEndDate,
        mlmso.HAS_SPECIAL_CONTROL = :new.HAS_SPECIAL_CONTROL,
        mlmso.VARIANT_DETAIL_TECH_QUANTITY = :new.VARIANT_DETAIL_TECH_QUANTITY,
        mlmso.PROGRAM_TOOL_REQUIREMENT_CODE = :new.PROGRAM_TOOL_REQUIREMENT_CODE,
        mlmso.SPECIFIC_TOOL_REQUIREMENT_CODE = :new.SPECIFIC_TOOL_REQUIREMENT_CODE,
        mlmso.TYPICAL_TOOL_REQUIREMENT_CODE = :new.TYPICAL_TOOL_REQUIREMENT_CODE,
        mlmso.PROGRAM_TOOL_IS_COMPLETE = :new.PROGRAM_TOOL_IS_COMPLETE,
        mlmso.SPECIFIC_TOOL_IS_COMPLETE = :new.SPECIFIC_TOOL_IS_COMPLETE,
        mlmso.TYPICAL_TOOL_IS_COMPLETE = :new.TYPICAL_TOOL_IS_COMPLETE,
        mlmso.SETUP_COUNT = :new.SETUP_COUNT,
        mlmso.DONE_SETUP_COUNT = :new.DONE_SETUP_COUNT,
        mlmso.IS_AUTO_MOVEMENT = :new.IS_AUTO_MOVEMENT,
        mlmso.IS_AUTO_SETUP = :new.IS_AUTO_SETUP
      where
        (mlmso.MLMSO_OBJECT_BRANCH_CODE = :old.MLMSO_OBJECT_BRANCH_CODE) and
        (mlmso.MLMSO_OBJECT_CODE = :old.MLMSO_OBJECT_CODE);

      -- iztriwa si doc-a ako e smenen i stariq ne se polzwa
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) and
         ( (:old.DOC_BRANCH_CODE <> Coalesce(:new.DOC_BRANCH_CODE, 0)) or
           (:old.DOC_CODE <> Coalesce(:new.DOC_CODE, 0)) ) then
         
         select
           Count(*)
         into
           DocOperationCount
         from
           MLMS_OPERATIONS mlmso
         where
           (mlmso.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
           (mlmso.DOC_CODE = :old.DOC_CODE);
           
         if (DocOperationCount = 0) then
           
           delete
             DOCS_FOR_EDIT dfe
           where
             (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
             (dfe.DOC_CODE = :old.DOC_CODE);
             
         end if;
         
      end if;
        
      if (:new.SPECIFIC_TOOL_PRODUCT_CODE is not null) then
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
            'ProductNo:i=' || MessageUtils.InternalFloatToStr(ProductNo) || ')'
          );
        end if;
      end if;
      
      
      -- update -1 variant
      if ( (:new.MLMS_OPERATION_NO <> :old.MLMS_OPERATION_NO) or
           (:new.MLMS_OBJECT_BRANCH_CODE <> :old.MLMS_OBJECT_BRANCH_CODE) or
           (:new.MLMS_OBJECT_CODE <> :old.MLMS_OBJECT_CODE) ) and
         (:new.MLMS_OPERATION_VARIANT_NO <> -1) then
        
        update
          MLMS_OPERATIONS mlmso
        set
          mlmso.MLMS_OPERATION_NO = :new.MLMS_OPERATION_NO,
          mlmso.MLMS_OBJECT_BRANCH_CODE = :new.MLMS_OBJECT_BRANCH_CODE,
          mlmso.MLMS_OBJECT_CODE = :new.MLMS_OBJECT_CODE
        where
          (mlmso.MLMS_OBJECT_BRANCH_CODE = :old.MLMS_OBJECT_BRANCH_CODE) and
          (mlmso.MLMS_OBJECT_CODE = :old.MLMS_OBJECT_CODE) and
          (mlmso.MLMS_OPERATION_NO = :old.MLMS_OPERATION_NO) and
          (mlmso.MLMS_OPERATION_VARIANT_NO = -1);
          
        update
          PROCESS_OBJECTS po
        set
          po.PROCESS_OBJECT_IDENTIFIER = 
            ( select
                (po2.PROCESS_OBJECT_IDENTIFIER || ' > ' || :new.MLMS_OPERATION_NO || '.-1')
              from
                PROCESS_OBJECTS po2
              where
                (po2.PROCESS_OBJECT_BRANCH_CODE = :new.MLMS_OBJECT_BRANCH_CODE) and
                (po2.PROCESS_OBJECT_CODE = :new.MLMS_OBJECT_CODE)
            )
        where
          ( (po.PROCESS_OBJECT_BRANCH_CODE, po.PROCESS_OBJECT_CODE) =
            ( select
                mlmso.MLMSO_OBJECT_BRANCH_CODE,
                mlmso.MLMSO_OBJECT_CODE
              from
                MLMS_OPERATIONS mlmso
              where
                (mlmso.MLMS_OBJECT_BRANCH_CODE = :new.MLMS_OBJECT_BRANCH_CODE) and
                (mlmso.MLMS_OBJECT_CODE = :new.MLMS_OBJECT_CODE) and
                (mlmso.MLMS_OPERATION_NO = :new.MLMS_OPERATION_NO) and
                (mlmso.MLMS_OPERATION_VARIANT_NO = -1)
            )
          );
          
      
      end if;

      -- add out and in psd
      if ((:old.SPECIFIC_TOOL_PRODUCT_CODE is null) or (:old.IS_ACTIVE = 0)) and 
         (:new.SPECIFIC_TOOL_PRODUCT_CODE is not null) and
         (NewIsActive = 1) then

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

      -- delete psds      
      if (:old.SPECIFIC_TOOL_PRODUCT_CODE is not null) and
         (:old.IS_ACTIVE = 1) and 
         ((:new.SPECIFIC_TOOL_PRODUCT_CODE is null) or (NewIsActive = 0)) then
        delete
          PLANNED_STORE_DEALS_FOR_EDIT psd
        where
          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.MLMSO_OBJECT_BRANCH_CODE) and
          (psd.BND_PROCESS_OBJECT_CODE = :new.MLMSO_OBJECT_CODE)
        ;
      end if;
      
      -- update psds
      if (:old.SPECIFIC_TOOL_PRODUCT_CODE is not null) and 
         (:new.SPECIFIC_TOOL_PRODUCT_CODE is not null) and
         (:old.IS_ACTIVE = 1) and
         (NewIsActive = 1) then

        -- cikul za dobaviane na teglene i postuplenie
        InOut:= -1;      
        for i in 1..2 loop
      
          update PLANNED_STORE_DEALS_FOR_EDIT psd
          set
            (
              STORE_CODE,
              STORE_DEAL_BEGIN_DATE,
              STORE_DEAL_END_DATE,
              PRODUCT_CODE,
              QUANTITY,
              ACCOUNT_QUANTITY,
              DEPT_CODE,
              CHANGE_EMPLOYEE_CODE,
              CHANGE_DATE,
              CHANGE_TIME,
              CLOSE_EMPLOYEE_CODE,
              CLOSE_DATE,
              CLOSE_TIME,
              ANNUL_EMPLOYEE_CODE,
              ANNUL_DATE,
              ANNUL_TIME
            ) =
            (
              select
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
            )
          where
            (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.MLMSO_OBJECT_BRANCH_CODE) and
            (psd.BND_PROCESS_OBJECT_CODE = :new.MLMSO_OBJECT_CODE) and
            (psd.PLANNED_STORE_DEAL_TYPE_CODE = 1) and
            (psd.IS_PLANNED_MANUALLY = 0) and
            (psd.IN_OUT = InOut)
          ;
  
          InOut:= 1;
          
        end loop;
      end if;

      -- avtomatichnite dvijenia stavat neavtomatichni
      if (:old.IS_AUTO_MOVEMENT = 1) and (:new.IS_AUTO_MOVEMENT = 0) then
    
        StateUtils.BeginOmfeUpdate;
        begin
          
          for x in
            (
              select
                om.OM_BRANCH_CODE,
                om.OM_CODE,
                om0.OM_BRANCH_CODE as BND_OM_BRANCH_CODE,
                om0.OM_CODE as BND_OM_CODE
              from
                OPERATION_MOVEMENTS om0,
                MLMS_OPERATIONS mlmso0,
                ML_MODEL_STAGES mlms0,
                MATERIAL_LIST_LINES mll0,
                OPERATION_MOVEMENTS om,
                MLMS_OPERATIONS mlmso,
                ML_MODEL_STAGES mlms,
                MATERIAL_LIST_LINES mll
              where
                (mlmso0.MLMSO_OBJECT_BRANCH_CODE = om0.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                (mlmso0.MLMSO_OBJECT_CODE = om0.FROM_MLMSO_OBJECT_CODE) and
                
                (mlms0.MLMS_OBJECT_BRANCH_CODE = mlmso0.MLMS_OBJECT_BRANCH_CODE) and
                (mlms0.MLMS_OBJECT_CODE = mlmso0.MLMS_OBJECT_CODE) and
                
                (mll0.MLL_OBJECT_BRANCH_CODE = mlms0.MLL_OBJECT_BRANCH_CODE) and
                (mll0.MLL_OBJECT_CODE = mlms0.MLL_OBJECT_CODE) and

                (mlmso.MLMSO_OBJECT_BRANCH_CODE = om.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                (mlmso.MLMSO_OBJECT_CODE = om.FROM_MLMSO_OBJECT_CODE) and
                
                (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
                (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
                
                (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
                (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
                
                
                (mll.ML_OBJECT_BRANCH_CODE = mll0.ML_OBJECT_BRANCH_CODE) and
                (mll.ML_OBJECT_CODE = mll0.ML_OBJECT_CODE) and

                ( ( (mll.NO_AS_FORMATED_TEXT = mll0.NO_AS_FORMATED_TEXT) and
                    (mll.FORK_NO = mll0.FORK_NO)
                  ) or
                  ( (mll.NO_AS_FORMATED_TEXT <> mll0.NO_AS_FORMATED_TEXT) and
                    (mll.NO_AS_FORMATED_TEXT like Decode(mll0.NO_1, 0, '', mll0.NO_AS_FORMATED_TEXT) || '%') and
                    (mll0.FORK_NO = 0)
                  )
                ) and
                
                ( (mll.NO_AS_FORMATED_TEXT <> mll0.NO_AS_FORMATED_TEXT) or
                  ( (mll.NO_AS_FORMATED_TEXT = mll0.NO_AS_FORMATED_TEXT) and
                    ( (mlms.ML_MODEL_STAGE_NO < mlms0.ML_MODEL_STAGE_NO) or
                      ( (mlms.ML_MODEL_STAGE_NO = mlms0.ML_MODEL_STAGE_NO) and
                        (mlmso.MLMS_OPERATION_NO < mlmso0.MLMS_OPERATION_NO)
                      )
                    )
                  )
                ) and

                (om0.FROM_MLMSO_OBJECT_BRANCH_CODE = :old.MLMSO_OBJECT_BRANCH_CODE) and
                (om0.FROM_MLMSO_OBJECT_CODE = :old.MLMSO_OBJECT_CODE) and
                
                (om.BND_OM_BRANCH_CODE = om0.BND_OM_BRANCH_CODE) and
                (om.BND_OM_CODE = om0.BND_OM_CODE)
            )
          loop
            update
              OPERATION_MOVEMENTS om
            set
              om.BND_OM_BRANCH_CODE = x.BND_OM_BRANCH_CODE,
              om.BND_OM_CODE = x.BND_OM_CODE
            where
              (om.OM_BRANCH_CODE = x.OM_BRANCH_CODE) and
              (om.OM_CODE = x.OM_CODE);
          end loop;        
        
          update
            OPERATION_MOVEMENTS om
          set
            om.BND_OM_BRANCH_CODE = null,
            om.BND_OM_CODE = null
          where
            (om.FROM_MLMSO_OBJECT_BRANCH_CODE = :old.MLMSO_OBJECT_BRANCH_CODE) and
            (om.FROM_MLMSO_OBJECT_CODE = :old.MLMSO_OBJECT_CODE) and
            (om.BND_OM_CODE is not null);
            
        exception
          when others then
            StateUtils.EndOmfeUpdate;
            raise;
        end;
        StateUtils.EndOmfeUpdate;
    
      end if;

    exception
      when others then
        StateUtils.EndMlmsofeUpdate;
        raise;
    end;
    StateUtils.EndMlmsofeUpdate;
  end if;
    
end tr_MLMSOFE_IU;
/
