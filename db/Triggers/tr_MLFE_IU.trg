create or replace trigger tr_MLFE_IU
  instead of update on MATERIAL_LISTS_FOR_EDIT
  for each row

declare  
  cursor MlmsoPSDs is
    select
      psd.PLANNED_STORE_DEAL_BRANCH_CODE,
      psd.PLANNED_STORE_DEAL_CODE
    from
      MATERIAL_LIST_LINES mll,
      ML_MODEL_STAGES mlms,
      MLMS_OPERATIONS mlmso,
      PLANNED_STORE_DEALS psd
    where
      (mll.ML_OBJECT_BRANCH_CODE = :new.ML_OBJECT_BRANCH_CODE) and
      (mll.ML_OBJECT_CODE = :new.ML_OBJECT_CODE) and
      
      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
      
      (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
      (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
      
      (mlmso.MLMSO_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANCH_CODE) and
      (mlmso.MLMSO_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE);

      
  LastStageObjectBranchCode Number;
  LastStageObjectCode Number;
  
begin

  if not StateUtils.InMlfeUpdate then
    StateUtils.BeginMlfeUpdate;
    begin

      if (:new.ML_OBJECT_BRANCH_CODE <> :old.ML_OBJECT_BRANCH_CODE) or
         (:new.ML_OBJECT_CODE <> :old.ML_OBJECT_CODE) then
        raise_application_error(-20000, 'Internal error: MATERIAL_LISTS key should not be changed');
      end if;
    
      update
        MATERIAL_LISTS ml
      set
        ml.BND_PROCESS_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE, 
        ml.BND_PROCESS_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE, 
        ml.MAIN_DEPT_CODE = :new.MAIN_DEPT_CODE, 
        ml.RESULT_PRODUCT_CODE = :new.RESULT_PRODUCT_CODE, 
        ml.TECH_QUANTITY = :new.TECH_QUANTITY, 
        ml.SPEC_VERSION_NO = :new.SPEC_VERSION_NO, 
        ml.SPEC_MODEL_VARIANT_NO = :new.SPEC_MODEL_VARIANT_NO, 
        ml.OWNER_EMPLOYEE_CODE = :new.OWNER_EMPLOYEE_CODE, 
        ml.RESULT_STORE_CODE = :new.RESULT_STORE_CODE, 
        ml.ENTER_RESULT_STORE_BEGIN_DATE = :new.ENTER_RESULT_STORE_BEGIN_DATE, 
        ml.ENTER_RESULT_STORE_END_DATE = :new.ENTER_RESULT_STORE_END_DATE, 
        ml.NOTES = :new.NOTES, 
        ml.IS_ARCHIVED = :new.IS_ARCHIVED, 
        ml.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE, 
        ml.CREATE_DATE = :new.CREATE_DATE, 
        ml.CREATE_TIME = :new.CREATE_TIME, 
        ml.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE, 
        ml.CHANGE_DATE = :new.CHANGE_DATE, 
        ml.CHANGE_TIME = :new.CHANGE_TIME, 
        ml.LIMITING_EMPLOYEE_CODE = :new.LIMITING_EMPLOYEE_CODE, 
        ml.LIMITING_DATE = :new.LIMITING_DATE, 
        ml.LIMITING_TIME = :new.LIMITING_TIME, 
        ml.CLOSE_EMPLOYEE_CODE = :new.CLOSE_EMPLOYEE_CODE, 
        ml.CLOSE_DATE = :new.CLOSE_DATE, 
        ml.CLOSE_TIME = :new.CLOSE_TIME, 
        ml.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE, 
        ml.ANNUL_DATE = :new.ANNUL_DATE, 
        ml.ANNUL_TIME = :new.ANNUL_TIME, 
        ml.TRANSIENT_STATUS_CODE = :new.TRANSIENT_STATUS_CODE, 
        ml.WORKDAYS_TO_EXIST = :new.WORKDAYS_TO_EXIST,
        ml.IS_OPERATIONS_MODEL = :new.IS_OPERATIONS_MODEL,
        ml.INITIAL_TREATMENT_WORKDAYS = :new.INITIAL_TREATMENT_WORKDAYS
      where
        (ml.ML_OBJECT_BRANCH_CODE = :old.ML_OBJECT_BRANCH_CODE) and
        (ml.ML_OBJECT_CODE = :old.ML_OBJECT_CODE);


      -- update mlls
      if (:old.TECH_QUANTITY <> :new.TECH_QUANTITY) or
         (Coalesce(:old.TRANSIENT_STATUS_CODE, 0) <> Coalesce(:new.TRANSIENT_STATUS_CODE, 0)) or
         (Coalesce(:old.WORKDAYS_TO_EXIST, 0) <> Coalesce(:new.WORKDAYS_TO_EXIST, 0)) then
      
        update
          MATERIAL_LIST_LINES_FOR_EDIT mll
        set
          mll.TOTAL_DETAIL_TECH_QUANTITY = mll.TOTAL_DETAIL_TECH_QUANTITY * :new.TECH_QUANTITY / :old.TECH_QUANTITY,
          mll.LINE_DETAIL_TECH_QUANTITY = mll.LINE_DETAIL_TECH_QUANTITY + (mll.TOTAL_DETAIL_TECH_QUANTITY * :new.TECH_QUANTITY / :old.TECH_QUANTITY) - mll.TOTAL_DETAIL_TECH_QUANTITY
        where
          (mll.ML_OBJECT_BRANCH_CODE = :old.ML_OBJECT_BRANCH_CODE) and
          (mll.ML_OBJECT_CODE = :old.ML_OBJECT_CODE) and
          (mll.FORK_NO = 0)
        ;
        
      end if;
        
        
      if ((:old.ENTER_RESULT_STORE_END_DATE is null) <> (:new.ENTER_RESULT_STORE_END_DATE is null)) or
         (:old.ENTER_RESULT_STORE_END_DATE <> :new.ENTER_RESULT_STORE_END_DATE) then

        for x in
          ( select
              mll.MLL_OBJECT_BRANCH_CODE,
              mll.MLL_OBJECT_CODE
            from
              MATERIAL_LIST_LINES mll
            where
              (mll.ML_OBJECT_BRANCH_CODE = :old.ML_OBJECT_BRANCH_CODE) and
              (mll.ML_OBJECT_CODE = :old.ML_OBJECT_CODE)
          )
        loop

          update 
            ML_MODEL_STAGES_FOR_EDIT mlms
          set
            mlms.TREATMENT_BEGIN_DATE =
              IncDateByWorkdays(:new.ENTER_RESULT_STORE_END_DATE+1, -mlms.TOTAL_TREATMENT_WORKDAYS),
            mlms.TREATMENT_END_DATE =
              IncDateByWorkdays(:new.ENTER_RESULT_STORE_END_DATE+1, -mlms.TOTAL_TREATMENT_WORKDAYS + Greatest(mlms.TREATMENT_WORKDAYS, 1) - 1)
          where
            (mlms.MLL_OBJECT_BRANCH_CODE = x.MLL_OBJECT_BRANCH_CODE) and
            (mlms.MLL_OBJECT_CODE = x.MLL_OBJECT_CODE)
          ;

        end loop;


        
        for Mlms in
          ( select
              mlms.MLMS_OBJECT_BRANCH_CODE,
              mlms.MLMS_OBJECT_CODE
            from
              MATERIAL_LIST_LINES mll,
              ML_MODEL_STAGES mlms
            where
              (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
              (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
      
              (mll.ML_OBJECT_BRANCH_CODE = :old.ML_OBJECT_BRANCH_CODE) and
              (mll.ML_OBJECT_CODE = :old.ML_OBJECT_CODE)
          )
        loop
      
          update
            MLMS_OPERATIONS_FOR_EDIT mlmso
          set
            -- trigera shte poznae nepravdata i shte gi izchisli pravilno datite
            mlmso.TREATMENT_BEGIN_DATE = mlmso.TREATMENT_END_DATE + 1
          where
            (mlmso.MLMS_OBJECT_BRANCH_CODE = Mlms.MLMS_OBJECT_BRANCH_CODE) and
            (mlmso.MLMS_OBJECT_CODE = Mlms.MLMS_OBJECT_CODE);
      
        end loop;

      end if;
      
      if ((:old.ENTER_RESULT_STORE_END_DATE is null) <> (:new.ENTER_RESULT_STORE_END_DATE is null)) or
         (:old.ENTER_RESULT_STORE_END_DATE <> :new.ENTER_RESULT_STORE_END_DATE) or
         (:old.TECH_QUANTITY <> :new.TECH_QUANTITY) then
    
        update
          MODEL_STAGE_LINKS msl
        set
          msl.TO_MLMS_OBJECT_CODE = msl.TO_MLMS_OBJECT_CODE
        where
          (msl.FROM_MLMS_OBJECT_BRANCH_CODE, msl.FROM_MLMS_OBJECT_CODE) in
          (
            select
              mlms.MLMS_OBJECT_BRANCH_CODE,
              mlms.MLMS_OBJECT_CODE
            from
              MATERIAL_LIST_LINES mll,
              ML_MODEL_STAGES mlms
            where
              (mll.ML_OBJECT_BRANCH_CODE = :new.ML_OBJECT_BRANCH_CODE) and
              (mll.ML_OBJECT_CODE = :new.ML_OBJECT_CODE) and
              
              (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
              (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) 
          )
        ;
      end if;
    
      if ( ( (:old.CLOSE_EMPLOYEE_CODE is null) and (:new.CLOSE_EMPLOYEE_CODE is not null) ) or
           ( (:old.ANNUL_EMPLOYEE_CODE is null) and (:new.ANNUL_EMPLOYEE_CODE is not null) ) ) and
         (:old.ML_OBJECT_CODE is not null) then
         
        -- update psd's close and annul stuff
        for MlmsoPSD in MlmsoPSDs loop
          update
            PLANNED_STORE_DEALS_FOR_EDIT psd
          set
            psd.CLOSE_EMPLOYEE_CODE = :new.CLOSE_EMPLOYEE_CODE,
            psd.CLOSE_DATE = :new.CLOSE_DATE,
            psd.CLOSE_TIME = :new.CLOSE_TIME,
            psd.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE,
            psd.ANNUL_DATE = :new.ANNUL_DATE,
            psd.ANNUL_TIME = :new.ANNUL_DATE            
          where
            (psd.PLANNED_STORE_DEAL_BRANCH_CODE = MlmsoPSD.PLANNED_STORE_DEAL_BRANCH_CODE) and
            (psd.PLANNED_STORE_DEAL_CODE = MlmsoPSD.PLANNED_STORE_DEAL_CODE);
        end loop;
             
      end if;
      
      if (:old.ANNUL_EMPLOYEE_CODE is null) and (:new.ANNUL_EMPLOYEE_CODE is not null) then
         
        update
          MATERIAL_LIST_LINE_CHANGES mllc
        set
          mllc.REPLY_EMPLOYEE_CODE = LoginContext.UserCode,
          mllc.REPLY_DATE = ContextDate,
          mllc.REPLY_TIME = ContextTime,
          mllc.MLL_CHANGE_REPLY_TYPE_CODE = ModelUtils.crtChangeRejected,
          mllc.REPLY_ACCEPT_EMPLOYEE_CODE = LoginContext.UserCode,
          mllc.REPLY_ACCEPT_DATE = ContextDate,
          mllc.REPLY_ACCEPT_TIME = ContextTime
        where
          (mllc.REPLY_EMPLOYEE_CODE is null) and
          exists(
            select
              1
            from
              MATERIAL_LIST_LINES mll
            where
              (mll.ML_OBJECT_BRANCH_CODE = :old.ML_OBJECT_BRANCH_CODE) and
              (mll.ML_OBJECT_CODE = :old.ML_OBJECT_CODE) and
              (mll.MLL_OBJECT_BRANCH_CODE = mllc.MLL_OBJECT_BRANCH_CODE) and
              (mll.MLL_OBJECT_CODE = mllc.MLL_OBJECT_CODE)
          );
             
      end if;
      
      if (:new.RESULT_STORE_CODE <> :old.RESULT_STORE_CODE) then
      
        if not StateUtils.InSfeUpdate then
          update
            SALES_FOR_EDIT s
          set
            s.SHIPMENT_STORE_CODE = :new.RESULT_STORE_CODE
          where
            (s.SALE_OBJECT_BRANCH_CODE = :old.BND_PROCESS_OBJECT_BRANCH_CODE) and
            (s.SALE_OBJECT_CODE = :old.BND_PROCESS_OBJECT_CODE)
          ;
        end if;
        
        select
          mlms.MLMS_OBJECT_BRANCH_CODE,
          mlms.MLMS_OBJECT_CODE
        into
          LastStageObjectBranchCode,
          LastStageObjectCode
        from
          ML_MODEL_STAGES mlms,
          MATERIAL_LIST_LINES mll
        where
          (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
          (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
          
          (mll.ML_OBJECT_BRANCH_CODE = :old.ML_OBJECT_BRANCH_CODE) and
          (mll.ML_OBJECT_CODE = :old.ML_OBJECT_CODE) and
          
          (mll.PARENT_MLL_OBJECT_CODE is null) and
          (mlms.OUTGOING_WORKDAYS = 0);

          
        update
          ML_MODEL_STAGES_FOR_EDIT mlms
        set
          mlms.DEPT_CODE = :new.RESULT_STORE_CODE
        where
          (mlms.MLMS_OBJECT_BRANCH_CODE = LastStageObjectBranchCode) and
          (mlms.MLMS_OBJECT_CODE = LastStageObjectCode);
          
          
        update
          MLMS_OPERATIONS_FOR_EDIT mlmso
        set
          mlmso.DEPT_CODE = :new.RESULT_STORE_CODE
        where
          (mlmso.MLMS_OBJECT_BRANCH_CODE = LastStageObjectBranchCode) and
          (mlmso.MLMS_OBJECT_CODE = LastStageObjectCode) and
          (mlmso.OPERATION_TYPE_CODE <> 2)
        ;
        
      end if;
     
      if ( (:new.ENTER_RESULT_STORE_BEGIN_DATE <> :old.ENTER_RESULT_STORE_BEGIN_DATE) or
           (:new.ENTER_RESULT_STORE_END_DATE <> :old.ENTER_RESULT_STORE_END_DATE) ) and
         (not StateUtils.InSfeUpdate) then
        update
          SALES_FOR_EDIT s
        set
          s.ENTER_SH_STORE_PLAN_BEGIN_DATE = :new.ENTER_RESULT_STORE_BEGIN_DATE,
          s.ENTER_SH_STORE_PLAN_END_DATE = :new.ENTER_RESULT_STORE_END_DATE
        where
          (s.SALE_OBJECT_BRANCH_CODE = :old.BND_PROCESS_OBJECT_BRANCH_CODE) and
          (s.SALE_OBJECT_CODE = :old.BND_PROCESS_OBJECT_CODE)
        ;
      end if;
      
      if ((:new.CLOSE_EMPLOYEE_CODE is not null) and (:old.CLOSE_EMPLOYEE_CODE is null)) or
         ((:new.CLOSE_EMPLOYEE_CODE is null) and (:old.CLOSE_EMPLOYEE_CODE is not null)) then
        ModelUtils.CalcSaleInStoreDealsTotalPrice(:new.BND_PROCESS_OBJECT_BRANCH_CODE, :new.BND_PROCESS_OBJECT_CODE);
      end if;
      
    exception
      when others then
        StateUtils.EndMlfeUpdate;
        raise;
    end;
    StateUtils.EndMlfeUpdate;
  end if;
    
end tr_MLFE_IU;
/
