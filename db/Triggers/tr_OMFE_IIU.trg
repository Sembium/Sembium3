create or replace trigger tr_OMFE_IIU
  instead of insert or update on OPERATION_MOVEMENTS_FOR_EDIT
  for each row
declare
  FeatureFlagOperationLoading Number;

  FromMlmsObjectBranchCode Number;
  FromMlmsObjectCode Number;
  ToMlmsObjectBranchCode Number;
  ToMlmsObjectCode Number;
  TotalDetailTechQuantity Number;
  FromOperationTypeCode Number;
  
  NewOMBranchCode Number;
  NewOMCode Number;
  NewOMDate Date;
  NewFromEmployeeCode Number;
  NewToEmployeeCode Number;
  NewToDeptCode Number;
  NewQAEmployeeCode Number;
  NewTotalDetailTechQuantity Number;
  NewStornoEmployeeCode Number;
  NewStornoDate Date;
  NewStornoTime Date;
  NewCreateEmployeeCode Number;
  NewCreateDate Date;
  NewCreateTime Date;
  NewWasteDocNo VarChar2(250);
  NewWasteDocDate Date;
  NewStoreDealObjectBranchCode Number;
  NewStoreDealObjectCode Number;
  
  IncorrectWasteForks Number;
  
  InsertedOMBranchCode Number;
  InsertedOMCode Number;
  OldOMStornoEmployeeCode Number;
  OldOMStornoDate Date;
  OldOMStornoTime Date;

  HasUnannuledExceptEvents Number;
  HasExceptEventsWithGreaterQty Number;

  SaleObjectBranchCode Number;
  SaleObjectCode Number;
  
  NewToMlmsoObjectBranchCode Number;
  NewToMlmsoObjectCode Number;
  
  AutoDetailTechQuantity Number;
  TotalDetailTechQuantityIn Number;
  TotalDetailTechQuantityOut Number;
begin

  if not StateUtils.InOmfeUpdate then
    StateUtils.BeginOmfeUpdate;
    begin

      select
        iv.FEATURE_FLAG_OPERATION_LOADING
      into
        FeatureFlagOperationLoading
      from
        INTERNAL_VALUES iv
      where
        (iv.CODE = 1);
    
      if (:new.OPERATION_MOVEMENT_TYPE_CODE in (8, 9)) then  -- shift, spec control
        NewToMlmsoObjectBranchCode:= :new.FROM_MLMSO_OBJECT_BRANCH_CODE;
        NewToMlmsoObjectCode:= :new.FROM_MLMSO_OBJECT_CODE;
      else
        NewToMlmsoObjectBranchCode:= :new.TO_MLMSO_OBJECT_BRANCH_CODE;
        NewToMlmsoObjectCode:= :new.TO_MLMSO_OBJECT_CODE;
      end if;
    
      -- stornirane na starite predavania
      if (:old.OM_BRANCH_CODE is not null) then
      
        update
          OPERATION_MOVEMENTS om
        set
          om.STORNO_EMPLOYEE_CODE = LoginContext.UserCode,
          om.STORNO_DATE = ContextDate,
          om.STORNO_TIME = ContextTime,
          om.STORE_DEAL_OBJECT_BRANCH_CODE = null,
          om.STORE_DEAL_OBJECT_CODE = null
        where
          (om.OM_BRANCH_CODE = :old.OM_BRANCH_CODE) and
          (om.OM_CODE = :old.OM_CODE)
        returning
          om.STORNO_EMPLOYEE_CODE,
          om.STORNO_DATE,
          om.STORNO_TIME
        into
          OldOMStornoEmployeeCode,
          OldOMStornoDate,
          OldOMStornoTime
        ;
        
        update
          MODEL_MOVEMENTS_FOR_EDIT mm
        set
          mm.STORNO_EMPLOYEE_CODE = LoginContext.UserCode,
          mm.STORNO_DATE = ContextDate,
          mm.STORNO_TIME = ContextTime,
          mm.STORE_DEAL_OBJECT_BRANCH_CODE = null,
          mm.STORE_DEAL_OBJECT_CODE = null
        where
          (mm.OM_BRANCH_CODE = :old.OM_BRANCH_CODE) and
          (mm.OM_CODE = :old.OM_CODE)
        ;
      
        update
          MLMS_OPERATIONS mlmso
        set
          mlmso.DONE_SETUP_COUNT = 0
        where
          (mlmso.MLMSO_OBJECT_BRANCH_CODE = :old.FROM_MLMSO_OBJECT_BRANCH_CODE) and
          (mlmso.MLMSO_OBJECT_CODE = :old.FROM_MLMSO_OBJECT_CODE) and
          (mlmso.IS_AUTO_SETUP = 1) and          
          not exists(
            select
              1
            from
              OPERATION_MOVEMENTS om
            where
              (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
              (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
              (om.STORNO_EMPLOYEE_CODE is null)
          );
      
        update
          OPERATION_MOVEMENTS om
        set
          om.STORNO_EMPLOYEE_CODE = LoginContext.UserCode,
          om.STORNO_DATE = ContextDate,
          om.STORNO_TIME = ContextTime,
          om.STORE_DEAL_OBJECT_BRANCH_CODE = null,
          om.STORE_DEAL_OBJECT_CODE = null
        where
          (om.BND_OM_BRANCH_CODE = :old.OM_BRANCH_CODE) and
          (om.BND_OM_CODE = :old.OM_CODE)
        ;

        for x in
          ( select
              mm2.MM_BRANCH_CODE, 
              mm2.MM_CODE
            from
              MODEL_MOVEMENTS mm2,
              OPERATION_MOVEMENTS om
            where
              (mm2.OM_BRANCH_CODE = om.OM_BRANCH_CODE) and
              (mm2.OM_CODE = om.OM_CODE) and
            
              (om.BND_OM_BRANCH_CODE = :old.OM_BRANCH_CODE) and
              (om.BND_OM_CODE = :old.OM_CODE)
          )
        loop
          update
            MODEL_MOVEMENTS_FOR_EDIT mm
          set
            mm.STORNO_EMPLOYEE_CODE = LoginContext.UserCode,
            mm.STORNO_DATE = ContextDate,
            mm.STORNO_TIME = ContextTime,
            mm.STORE_DEAL_OBJECT_BRANCH_CODE = null,
            mm.STORE_DEAL_OBJECT_CODE = null
          where
            (mm.MM_BRANCH_CODE = x.MM_BRANCH_CODE) and
            (mm.MM_CODE = x.MM_CODE)
          ;
        end loop;

        for x in
          ( select
              mlmso.MLMSO_OBJECT_BRANCH_CODE,
              mlmso.MLMSO_OBJECT_CODE
            from
              OPERATION_MOVEMENTS om,
              MLMS_OPERATIONS mlmso
            where
              (om.BND_OM_BRANCH_CODE = :old.OM_BRANCH_CODE) and
              (om.BND_OM_CODE = :old.OM_CODE) and
              
              (mlmso.MLMSO_OBJECT_BRANCH_CODE = om.FROM_MLMSO_OBJECT_BRANCH_CODE) and
              (mlmso.MLMSO_OBJECT_CODE = om.FROM_MLMSO_OBJECT_CODE) and
              (mlmso.IS_AUTO_SETUP = 1)              
          )
        loop
          update
            MLMS_OPERATIONS_FOR_EDIT mlmso
          set
            mlmso.DONE_SETUP_COUNT = null
          where
            (mlmso.MLMSO_OBJECT_BRANCH_CODE = x.MLMSO_OBJECT_BRANCH_CODE) and
            (mlmso.MLMSO_OBJECT_CODE = x.MLMSO_OBJECT_CODE) and
            not exists(
              select
                1
              from
                OPERATION_MOVEMENTS om
              where
                (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                (om.STORNO_EMPLOYEE_CODE is null)
            );
        end loop;
      end if;

      -- insertvane na novite danni, ako e novo ili stornirane SUS ostavane na ekran
      if (:old.OM_BRANCH_CODE is null) or
         (:new.STORNO_EMPLOYEE_CODE is null) then
      
        TotalDetailTechQuantity:= null;

        select
          mlmso.MLMS_OBJECT_BRANCH_CODE, 
          mlmso.MLMS_OBJECT_CODE,
          mlmso.OPERATION_TYPE_CODE
        into
          FromMlmsObjectBranchCode,
          FromMlmsObjectCode,
          FromOperationTypeCode
        from
          MLMS_OPERATIONS mlmso
        where
          (mlmso.MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
          (mlmso.MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE)
        ;
        
        select
          Max(mlmso.MLMS_OBJECT_BRANCH_CODE),
          Max(mlmso.MLMS_OBJECT_CODE)
        into
          ToMlmsObjectBranchCode,
          ToMlmsObjectCode
        from
          MLMS_OPERATIONS mlmso
        where
          (mlmso.MLMSO_OBJECT_BRANCH_CODE = NewToMlmsoObjectBranchCode) and
          (mlmso.MLMSO_OBJECT_CODE = NewToMlmsoObjectCode)
        ;
        
          
        insert into OPERATION_MOVEMENTS 
        (
          OM_BRANCH_CODE, 
          OM_CODE, 
          OM_NO,
          OPERATION_MOVEMENT_TYPE_CODE, 
          OM_DATE, 
          OM_TIME, 
          FROM_EMPLOYEE_CODE, 
          FROM_TEAM_CODE, 
          TO_EMPLOYEE_CODE, 
          TO_TEAM_CODE, 
          TO_DEPT_CODE, 
          WASTE_DOC_NO, 
          WASTE_DOC_DATE, 
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
          BND_OM_BRANCH_CODE, 
          BND_OM_CODE, 
          FROM_MLMSO_OBJECT_BRANCH_CODE, 
          FROM_MLMSO_OBJECT_CODE, 
          TO_MLMSO_OBJECT_BRANCH_CODE, 
          TO_MLMSO_OBJECT_CODE, 
          STORE_DEAL_OBJECT_BRANCH_CODE, 
          STORE_DEAL_OBJECT_CODE, 
          REPLACED_OM_BRANCH_CODE, 
          REPLACED_OM_CODE, 
          DOC_BRANCH_CODE,
          DOC_CODE,
          TO_DEPT_ZONE_NO
        )
        values
        (
          :new.OM_BRANCH_CODE,
          Decode(:new.OM_CODE,
            :old.OM_CODE, seq_OPERATION_MOVEMENTS.NextVal,
            null, seq_OPERATION_MOVEMENTS.NextVal,
            :new.OM_CODE),
          Coalesce(:old.OM_NO, :new.OM_NO, seq_OPERATION_MOVEMENT_NO.NextVal),
          :new.OPERATION_MOVEMENT_TYPE_CODE, 
          :new.OM_DATE, 
          :new.OM_TIME, 
          :new.FROM_EMPLOYEE_CODE, 
          :new.FROM_TEAM_CODE, 
          :new.TO_EMPLOYEE_CODE, 
          :new.TO_TEAM_CODE, 
          :new.TO_DEPT_CODE, 
          :new.WASTE_DOC_NO, 
          :new.WASTE_DOC_DATE, 
          :new.WORK_DETAIL_TECH_QUANTITY, 
          :new.TOTAL_DETAIL_TECH_QUANTITY, 
          :new.QA_DETAIL_TECH_QUANTITY, 
          :new.QA_EMPLOYEE_CODE, 
          :new.CREATE_EMPLOYEE_CODE, 
          :new.CREATE_DATE, 
          :new.CREATE_TIME, 
          :new.STORNO_EMPLOYEE_CODE, 
          :new.STORNO_DATE, 
          :new.STORNO_TIME, 
          :new.BND_OM_BRANCH_CODE, 
          :new.BND_OM_CODE, 
          :new.FROM_MLMSO_OBJECT_BRANCH_CODE, 
          :new.FROM_MLMSO_OBJECT_CODE, 
          NewToMlmsoObjectBranchCode, 
          NewToMlmsoObjectCode, 
          :new.STORE_DEAL_OBJECT_BRANCH_CODE, 
          :new.STORE_DEAL_OBJECT_CODE, 
          :new.REPLACED_OM_BRANCH_CODE, 
          :new.REPLACED_OM_CODE, 
          :new.DOC_BRANCH_CODE,
          :new.DOC_CODE,
          :new.TO_DEPT_ZONE_NO
        )
        returning
          OM_BRANCH_CODE,
          OM_CODE,
          OM_DATE,
          FROM_EMPLOYEE_CODE,
          TO_EMPLOYEE_CODE,
          TO_DEPT_CODE,
          QA_EMPLOYEE_CODE,
          TOTAL_DETAIL_TECH_QUANTITY,
          STORNO_EMPLOYEE_CODE,
          STORNO_DATE,
          STORNO_TIME,
          CREATE_EMPLOYEE_CODE,
          CREATE_DATE,
          CREATE_TIME,
          WASTE_DOC_NO,
          WASTE_DOC_DATE,
          STORE_DEAL_OBJECT_BRANCH_CODE,
          STORE_DEAL_OBJECT_CODE
        into
          NewOMBranchCode,
          NewOMCode,
          NewOMDate,
          NewFromEmployeeCode,
          NewToEmployeeCode,
          NewToDeptCode,
          NewQAEmployeeCode,
          NewTotalDetailTechQuantity,
          NewStornoEmployeeCode,
          NewStornoDate,
          NewStornoTime,
          NewCreateEmployeeCode,
          NewCreateDate,
          NewCreateTime,
          NewWasteDocNo,
          NewWasteDocDate,
          NewStoreDealObjectBranchCode,
          NewStoreDealObjectCode
        ;
          
        InsertedOMBranchCode:= NewOMBranchCode;
        InsertedOMCode:= NewOMCode;
        
        if (:new.TO_DEPT_CODE is not null) or
           (FromMlmsObjectBranchCode <> ToMlmsObjectBranchCode) or
           (FromMlmsObjectCode <> ToMlmsObjectCode) then

          insert into MODEL_MOVEMENTS_FOR_EDIT
          (
            MM_BRANCH_CODE,
            MODEL_MOVEMENT_TYPE_CODE,
            MM_DATE,
            FROM_MLMS_OBJECT_BRANCH_CODE,
            FROM_MLMS_OBJECT_CODE,
            FROM_EMPLOYEE_CODE,
            TO_EMPLOYEE_CODE,
            TO_DEPT_CODE,
            QA_EMPLOYEE_CODE,
            DETAIL_TECH_QUANTITY,
            DETAIL_TECH_QUANTITY_OFFERED,
            STORNO_EMPLOYEE_CODE,
            STORNO_DATE,
            STORNO_TIME,
            CREATE_EMPLOYEE_CODE,
            CREATE_DATE,
            CREATE_TIME,
            WASTE_DOC_NO,
            WASTE_DOC_DATE,
            STORE_DEAL_OBJECT_BRANCH_CODE,
            STORE_DEAL_OBJECT_CODE,
            OM_BRANCH_CODE,
            OM_CODE
          )
          values
          (
            NewOMBranchCode,
            Nvl2(NewToDeptCode, 2, 1),
            NewOMDate,
            FromMlmsObjectBranchCode,
            FromMlmsObjectCode,
            NewFromEmployeeCode,
            NewToEmployeeCode,
            NewToDeptCode,
            NewQAEmployeeCode,
            NewTotalDetailTechQuantity,
            NewTotalDetailTechQuantity,
            NewStornoEmployeeCode,
            NewStornoDate,
            NewStornoTime,
            NewCreateEmployeeCode,
            NewCreateDate,
            NewCreateTime,
            NewWasteDocNo,
            NewWasteDocDate,
            NewStoreDealObjectBranchCode,
            NewStoreDealObjectCode,
            NewOMBranchCode,
            NewOMCode
          );
        
        end if;
        
        
        TotalDetailTechQuantityIn:= ModelUtils.GetMlmsoRcvdForDetailTechQty(:new.FROM_MLMSO_OBJECT_BRANCH_CODE, :new.FROM_MLMSO_OBJECT_CODE, FeatureFlagOperationLoading, 0);
        
        select
          Coalesce(Sum(om.TOTAL_DETAIL_TECH_QUANTITY), 0)
        into
          TotalDetailTechQuantityOut
        from
          OPERATION_MOVEMENTS om
        where
          (om.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
          (om.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) and
          (om.STORNO_EMPLOYEE_CODE is null) and
          ( (om.TO_MLMSO_OBJECT_BRANCH_CODE is null) or
            (om.TO_MLMSO_OBJECT_BRANCH_CODE <> om.FROM_MLMSO_OBJECT_BRANCH_CODE) or
            (om.TO_MLMSO_OBJECT_CODE <> om.FROM_MLMSO_OBJECT_CODE) 
          );

        
        AutoDetailTechQuantity:=
          Least(:new.TOTAL_DETAIL_TECH_QUANTITY, Greatest(TotalDetailTechQuantityOut - TotalDetailTechQuantityIn, 0));
        
        if (AutoDetailTechQuantity > 0) and
           ( (:new.OPERATION_MOVEMENT_TYPE_CODE in (1, 2, 3, 4, 6, 11, 13)) or
             ( (:new.OPERATION_MOVEMENT_TYPE_CODE = 5) and (FeatureFlagOperationLoading = 0) ) ) then
        
          for x in
            ( select
                z.MLL_OBJECT_BRANCH_CODE,
                z.MLL_OBJECT_CODE,
                z.FORK_NO,
                z.FROM_MLMS_OBJECT_BRANCH_CODE,
                z.FROM_MLMS_OBJECT_CODE,
                z.FROM_MLMSO_OBJECT_BRANCH_CODE,
                z.FROM_MLMSO_OBJECT_CODE,

                z.TO_MLMSO_OBJECT_BRANCH_CODE,
                z.TO_MLMSO_OBJECT_CODE,
                
                ( select
                    mlmso.MLMS_OBJECT_BRANCH_CODE
                  from
                    MLMS_OPERATIONS mlmso
                  where
                    (mlmso.MLMSO_OBJECT_BRANCH_CODE = z.TO_MLMSO_OBJECT_BRANCH_CODE) and
                    (mlmso.MLMSO_OBJECT_CODE = z.TO_MLMSO_OBJECT_CODE)
                ) as TO_MLMS_OBJECT_BRANCH_CODE,

                ( select
                    mlmso.MLMS_OBJECT_CODE
                  from
                    MLMS_OPERATIONS mlmso
                  where
                    (mlmso.MLMSO_OBJECT_BRANCH_CODE = z.TO_MLMSO_OBJECT_BRANCH_CODE) and
                    (mlmso.MLMSO_OBJECT_CODE = z.TO_MLMSO_OBJECT_CODE)
                ) as TO_MLMS_OBJECT_CODE,
                
                z.TOTAL_DETAIL_TECH_QUANTITY
                
              from
                ( select
                    mll.MLL_OBJECT_BRANCH_CODE,
                    mll.MLL_OBJECT_CODE,
                    mll.NO_AS_FORMATED_TEXT,
                    mll.FORK_NO,
                    mlms.MLMS_OBJECT_BRANCH_CODE as FROM_MLMS_OBJECT_BRANCH_CODE,
                    mlms.MLMS_OBJECT_CODE as FROM_MLMS_OBJECT_CODE,
                    mlmso.MLMSO_OBJECT_BRANCH_CODE as FROM_MLMSO_OBJECT_BRANCH_CODE,
                    mlmso.MLMSO_OBJECT_CODE as FROM_MLMSO_OBJECT_CODE,
                    
                    Coalesce(
                      ( select
                          -999  -- assertion
                        from
                          DUAL
                        where
                          (mlmso.MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                          (mlmso.MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE)
                      ),
                      ( select
                          mlmso2.MLMSO_OBJECT_BRANCH_CODE
                        from
                          MLMS_OPERATIONS mlmso2
                        where
                          (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
                          (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
                          (mlmso2.MLMS_OPERATION_NO = mlmso.MLMS_OPERATION_NO + 1) and
                          (mlmso2.MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                          (mlmso2.MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE)
                      ),
                      ( select  -- single row subquery returns more than 1 row ?
                          mlmso2.MLMSO_OBJECT_BRANCH_CODE
                        from
                          MLMS_OPERATIONS mlmso2
                        where
                          (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
                          (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
                          (mlmso2.MLMS_OPERATION_NO = mlmso.MLMS_OPERATION_NO + 1) and
                          (mlmso2.IS_ACTIVE = 1)
                      ),
                      ( select
                          mlmso2.MLMSO_OBJECT_BRANCH_CODE
                        from
                          MLMS_OPERATIONS mlmso2
                        where
                          ( (mlmso2.MLMS_OBJECT_BRANCH_CODE, mlmso2.MLMS_OBJECT_CODE, mlmso2.MLMS_OPERATION_NO) =
                            ( select
                                mlms2.MLMS_OBJECT_BRANCH_CODE,
                                mlms2.MLMS_OBJECT_CODE,
                                ( select
                                    Min(mlmso3.MLMS_OPERATION_NO)
                                  from
                                    MLMS_OPERATIONS mlmso3
                                  where
                                    (mlmso3.MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJECT_BRANCH_CODE) and
                                    (mlmso3.MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CODE)
                                ) as MIN_MLMS_OPERATION_NO
                              from
                                ML_MODEL_STAGES mlms2
                              where
                                (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
                                (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
                                (mlms2.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STAGE_NO + 1)
                            )
                          ) and
                          (mlmso2.MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                          (mlmso2.MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE)
                      ),
                      ( select  -- single row subquery returns more than 1 row ?
                          mlmso2.MLMSO_OBJECT_BRANCH_CODE
                        from
                          MLMS_OPERATIONS mlmso2
                        where
                          ( (mlmso2.MLMS_OBJECT_BRANCH_CODE, mlmso2.MLMS_OBJECT_CODE, mlmso2.MLMS_OPERATION_NO) =
                            ( select
                                mlms2.MLMS_OBJECT_BRANCH_CODE,
                                mlms2.MLMS_OBJECT_CODE,
                                ( select
                                    Min(mlmso3.MLMS_OPERATION_NO)
                                  from
                                    MLMS_OPERATIONS mlmso3
                                  where
                                    (mlmso3.MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJECT_BRANCH_CODE) and
                                    (mlmso3.MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CODE)
                                ) as MIN_MLMS_OPERATION_NO
                              from
                                ML_MODEL_STAGES mlms2
                              where
                                (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
                                (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
                                (mlms2.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STAGE_NO + 1)
                            )
                          ) and
                          (mlmso2.IS_ACTIVE = 1)
                      ),
                      ( select
                          mlmso2.MLMSO_OBJECT_BRANCH_CODE
                        from
                          MLMS_OPERATIONS mlmso2
                        where
                          ( (mlmso2.MLMS_OBJECT_BRANCH_CODE, mlmso2.MLMS_OBJECT_CODE, mlmso2.MLMS_OPERATION_NO) =
                            ( select
                                mlms2.MLMS_OBJECT_BRANCH_CODE,
                                mlms2.MLMS_OBJECT_CODE,
                                ( select
                                    Min(mlmso3.MLMS_OPERATION_NO)
                                  from
                                    MLMS_OPERATIONS mlmso3
                                  where
                                    (mlmso3.MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJECT_BRANCH_CODE) and
                                    (mlmso3.MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CODE)
                                ) as MIN_MLMS_OPERATION_NO
                              from
                                ML_MODEL_STAGES mlms2
                              where
                                (mlms2.MLL_OBJECT_BRANCH_CODE = mll.PARENT_MLL_OBJECT_BRANCH_CODE) and
                                (mlms2.MLL_OBJECT_CODE = mll.PARENT_MLL_OBJECT_CODE) and
                                (mlms2.ML_MODEL_STAGE_NO = 1)
                            )
                          ) and
                          (mlmso2.MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                          (mlmso2.MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE)
                      ),
                      ( select  -- single row subquery returns more than 1 row ?
                          mlmso2.MLMSO_OBJECT_BRANCH_CODE
                        from
                          MLMS_OPERATIONS mlmso2
                        where
                          ( (mlmso2.MLMS_OBJECT_BRANCH_CODE, mlmso2.MLMS_OBJECT_CODE, mlmso2.MLMS_OPERATION_NO) =
                            ( select
                                mlms2.MLMS_OBJECT_BRANCH_CODE,
                                mlms2.MLMS_OBJECT_CODE,
                                ( select
                                    Min(mlmso3.MLMS_OPERATION_NO)
                                  from
                                    MLMS_OPERATIONS mlmso3
                                  where
                                    (mlmso3.MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJECT_BRANCH_CODE) and
                                    (mlmso3.MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CODE)
                                ) as MIN_MLMS_OPERATION_NO
                              from
                                ML_MODEL_STAGES mlms2
                              where
                                (mlms2.MLL_OBJECT_BRANCH_CODE = mll.PARENT_MLL_OBJECT_BRANCH_CODE) and
                                (mlms2.MLL_OBJECT_CODE = mll.PARENT_MLL_OBJECT_CODE) and
                                (mlms2.ML_MODEL_STAGE_NO = 1)
                            )
                          ) and
                          (mlmso2.IS_ACTIVE = 1)
                      )
                    ) as TO_MLMSO_OBJECT_BRANCH_CODE,
                    
                    Coalesce(
                      ( select
                          -999  -- assertion
                        from
                          DUAL
                        where
                          (mlmso.MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                          (mlmso.MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE)
                      ),
                      ( select
                          mlmso2.MLMSO_OBJECT_CODE
                        from
                          MLMS_OPERATIONS mlmso2
                        where
                          (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
                          (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
                          (mlmso2.MLMS_OPERATION_NO = mlmso.MLMS_OPERATION_NO + 1) and
                          (mlmso2.MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                          (mlmso2.MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE)
                      ),
                      ( select  -- single row subquery returns more than 1 row ?
                          mlmso2.MLMSO_OBJECT_CODE
                        from
                          MLMS_OPERATIONS mlmso2
                        where
                          (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
                          (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
                          (mlmso2.MLMS_OPERATION_NO = mlmso.MLMS_OPERATION_NO + 1) and
                          (mlmso2.IS_ACTIVE = 1)
                      ),
                      ( select
                          mlmso2.MLMSO_OBJECT_CODE
                        from
                          MLMS_OPERATIONS mlmso2
                        where
                          ( (mlmso2.MLMS_OBJECT_BRANCH_CODE, mlmso2.MLMS_OBJECT_CODE, mlmso2.MLMS_OPERATION_NO) =
                            ( select
                                mlms2.MLMS_OBJECT_BRANCH_CODE,
                                mlms2.MLMS_OBJECT_CODE,
                                ( select
                                    Min(mlmso3.MLMS_OPERATION_NO)
                                  from
                                    MLMS_OPERATIONS mlmso3
                                  where
                                    (mlmso3.MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJECT_BRANCH_CODE) and
                                    (mlmso3.MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CODE)
                                ) as MIN_MLMS_OPERATION_NO
                              from
                                ML_MODEL_STAGES mlms2
                              where
                                (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
                                (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
                                (mlms2.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STAGE_NO + 1)
                            )
                          ) and
                          (mlmso2.MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                          (mlmso2.MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE)
                      ),
                      ( select  -- single row subquery returns more than 1 row ?
                          mlmso2.MLMSO_OBJECT_CODE
                        from
                          MLMS_OPERATIONS mlmso2
                        where
                          ( (mlmso2.MLMS_OBJECT_BRANCH_CODE, mlmso2.MLMS_OBJECT_CODE, mlmso2.MLMS_OPERATION_NO) =
                            ( select
                                mlms2.MLMS_OBJECT_BRANCH_CODE,
                                mlms2.MLMS_OBJECT_CODE,
                                ( select
                                    Min(mlmso3.MLMS_OPERATION_NO)
                                  from
                                    MLMS_OPERATIONS mlmso3
                                  where
                                    (mlmso3.MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJECT_BRANCH_CODE) and
                                    (mlmso3.MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CODE)
                                ) as MIN_MLMS_OPERATION_NO
                              from
                                ML_MODEL_STAGES mlms2
                              where
                                (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
                                (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
                                (mlms2.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STAGE_NO + 1)
                            )
                          ) and
                          (mlmso2.IS_ACTIVE = 1)
                      ),
                      ( select
                          mlmso2.MLMSO_OBJECT_CODE
                        from
                          MLMS_OPERATIONS mlmso2
                        where
                          ( (mlmso2.MLMS_OBJECT_BRANCH_CODE, mlmso2.MLMS_OBJECT_CODE, mlmso2.MLMS_OPERATION_NO) =
                            ( select
                                mlms2.MLMS_OBJECT_BRANCH_CODE,
                                mlms2.MLMS_OBJECT_CODE,
                                ( select
                                    Min(mlmso3.MLMS_OPERATION_NO)
                                  from
                                    MLMS_OPERATIONS mlmso3
                                  where
                                    (mlmso3.MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJECT_BRANCH_CODE) and
                                    (mlmso3.MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CODE)
                                ) as MIN_MLMS_OPERATION_NO
                              from
                                ML_MODEL_STAGES mlms2
                              where
                                (mlms2.MLL_OBJECT_BRANCH_CODE = mll.PARENT_MLL_OBJECT_BRANCH_CODE) and
                                (mlms2.MLL_OBJECT_CODE = mll.PARENT_MLL_OBJECT_CODE) and
                                (mlms2.ML_MODEL_STAGE_NO = 1)
                            )
                          ) and
                          (mlmso2.MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                          (mlmso2.MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE)
                      ),
                      ( select  -- single row subquery returns more than 1 row ?
                          mlmso2.MLMSO_OBJECT_CODE
                        from
                          MLMS_OPERATIONS mlmso2
                        where
                          ( (mlmso2.MLMS_OBJECT_BRANCH_CODE, mlmso2.MLMS_OBJECT_CODE, mlmso2.MLMS_OPERATION_NO) =
                            ( select
                                mlms2.MLMS_OBJECT_BRANCH_CODE,
                                mlms2.MLMS_OBJECT_CODE,
                                ( select
                                    Min(mlmso3.MLMS_OPERATION_NO)
                                  from
                                    MLMS_OPERATIONS mlmso3
                                  where
                                    (mlmso3.MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJECT_BRANCH_CODE) and
                                    (mlmso3.MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CODE)
                                ) as MIN_MLMS_OPERATION_NO
                              from
                                ML_MODEL_STAGES mlms2
                              where
                                (mlms2.MLL_OBJECT_BRANCH_CODE = mll.PARENT_MLL_OBJECT_BRANCH_CODE) and
                                (mlms2.MLL_OBJECT_CODE = mll.PARENT_MLL_OBJECT_CODE) and
                                (mlms2.ML_MODEL_STAGE_NO = 1)
                            )
                          ) and
                          (mlmso2.IS_ACTIVE = 1)
                      )
                    ) as TO_MLMSO_OBJECT_CODE,
                    
                    Coalesce(
                      mll.TOTAL_DETAIL_TECH_QUANTITY,
                      ( select
                          mll2.TOTAL_DETAIL_TECH_QUANTITY
                        from
                          MATERIAL_LIST_LINES mll2                        
                        where
                          (mll2.MLL_OBJECT_BRANCH_CODE = mll.FORK_0_MLL_OBJECT_BRANCH_CODE) and
                          (mll2.MLL_OBJECT_CODE = mll.FORK_0_MLL_OBJECT_CODE)
                      )
                    ) as TOTAL_DETAIL_TECH_QUANTITY
                              
                  from
                    MLMS_OPERATIONS mlmso0,
                    ML_MODEL_STAGES mlms0,
                    MATERIAL_LIST_LINES mll0,

                    MATERIAL_LIST_LINES mll,
                    ML_MODEL_STAGES mlms,
                    MLMS_OPERATIONS mlmso

                  where
                    (mll0.MLL_OBJECT_BRANCH_CODE = mlms0.MLL_OBJECT_BRANCH_CODE) and
                    (mll0.MLL_OBJECT_CODE = mlms0.MLL_OBJECT_CODE) and

                    (mlms0.MLMS_OBJECT_BRANCH_CODE = mlmso0.MLMS_OBJECT_BRANCH_CODE) and
                    (mlms0.MLMS_OBJECT_CODE = mlmso0.MLMS_OBJECT_CODE) and

                    (mlmso0.MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                    (mlmso0.MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) and

                    (mll.ML_OBJECT_BRANCH_CODE = mll0.ML_OBJECT_BRANCH_CODE) and
                    (mll.ML_OBJECT_CODE = mll0.ML_OBJECT_CODE) and

                    ( ( (mll.NO_AS_FORMATED_TEXT = mll0.NO_AS_FORMATED_TEXT) and
                        (mll.FORK_NO = mll0.FORK_NO)
                      ) or
                      ( (mll.NO_AS_FORMATED_TEXT <> mll0.NO_AS_FORMATED_TEXT) and
                        (mll.NO_AS_FORMATED_TEXT like Decode(mll0.NO_1, 0, '', mll0.NO_AS_FORMATED_TEXT) || '%') and
                        (mll0.FORK_NO = 0) and
                        (mll.FORK_NO = 0)
                      )
                    ) and
                              
                    (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
                    (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
                                                  
                    (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
                    (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
                                          
                    ( ( (mlmso.IS_ACTIVE = 1) and
                        (mlmso.IS_AUTO_MOVEMENT = 1) and
                        (mlmso.MLMS_OPERATION_VARIANT_NO >= 0)
                      ) or
                      ( (mlmso.MLMSO_OBJECT_BRANCH_CODE = mlmso0.MLMSO_OBJECT_BRANCH_CODE) and
                        (mlmso.MLMSO_OBJECT_CODE = mlmso0.MLMSO_OBJECT_CODE)
                      )
                    ) and
                         
                    ( (mll.NO_AS_FORMATED_TEXT <> mll0.NO_AS_FORMATED_TEXT) or
                      ( (mll.NO_AS_FORMATED_TEXT = mll0.NO_AS_FORMATED_TEXT) and
                        ( (mlms.ML_MODEL_STAGE_NO < mlms0.ML_MODEL_STAGE_NO) or
                          ( (mlms.ML_MODEL_STAGE_NO = mlms0.ML_MODEL_STAGE_NO) and
                            ( (mlmso.MLMS_OPERATION_NO < mlmso0.MLMS_OPERATION_NO) or
                              ( (mlmso.MLMS_OPERATION_NO = mlmso0.MLMS_OPERATION_NO) and
                                (mlmso.MLMS_OPERATION_VARIANT_NO = mlmso0.MLMS_OPERATION_VARIANT_NO)
                              )
                            )
                          )
                        )
                      )
                    ) and
                              
                    (not exists
                      ( select
                          1
                        from
                          MATERIAL_LIST_LINES mll3,
                          ML_MODEL_STAGES mlms3,
                          MLMS_OPERATIONS mlmso3
                        where
                          (mll3.ML_OBJECT_BRANCH_CODE = mll0.ML_OBJECT_BRANCH_CODE) and
                          (mll3.ML_OBJECT_CODE = mll0.ML_OBJECT_CODE) and
                                    
                          ( ( (mll3.NO_AS_FORMATED_TEXT = mll0.NO_AS_FORMATED_TEXT) and
                              (mll3.FORK_NO = mll0.FORK_NO)
                            ) or
                            ( (mll3.NO_AS_FORMATED_TEXT <> mll0.NO_AS_FORMATED_TEXT) and
                              (mll3.NO_AS_FORMATED_TEXT like Decode(mll0.NO_1, 0, '', mll0.NO_AS_FORMATED_TEXT) || '%') and
                              (mll0.FORK_NO = 0) and
                              (mll3.FORK_NO = 0)
                            )
                          ) and
                                    
                          (mll3.MLL_OBJECT_BRANCH_CODE = mlms3.MLL_OBJECT_BRANCH_CODE) and
                          (mll3.MLL_OBJECT_CODE = mlms3.MLL_OBJECT_CODE) and
                                                        
                          (mlms3.MLMS_OBJECT_BRANCH_CODE = mlmso3.MLMS_OBJECT_BRANCH_CODE) and
                          (mlms3.MLMS_OBJECT_CODE = mlmso3.MLMS_OBJECT_CODE) and

                          (mlmso3.IS_ACTIVE = 1) and
                          (mlmso3.IS_AUTO_MOVEMENT = 0) and
                                    
                          ( ( (mll.NO_AS_FORMATED_TEXT <> mll3.NO_AS_FORMATED_TEXT) and
                              (mll.NO_AS_FORMATED_TEXT like Decode(mll3.NO_1, 0, '', mll3.NO_AS_FORMATED_TEXT) || '%')
                            ) or
                            ( (mll.NO_AS_FORMATED_TEXT = mll3.NO_AS_FORMATED_TEXT) and
                              ( (mlms.ML_MODEL_STAGE_NO < mlms3.ML_MODEL_STAGE_NO) or
                                ( (mlms.ML_MODEL_STAGE_NO = mlms3.ML_MODEL_STAGE_NO) and
                                  (mlmso.MLMS_OPERATION_NO < mlmso3.MLMS_OPERATION_NO)
                                )
                              )
                            )
                          ) and                 

                          ( (mll3.NO_AS_FORMATED_TEXT <> mll0.NO_AS_FORMATED_TEXT) or
                            ( (mll3.NO_AS_FORMATED_TEXT = mll0.NO_AS_FORMATED_TEXT) and
                              ( (mlms3.ML_MODEL_STAGE_NO < mlms0.ML_MODEL_STAGE_NO) or
                                ( (mlms3.ML_MODEL_STAGE_NO = mlms0.ML_MODEL_STAGE_NO) and
                                  (mlmso3.MLMS_OPERATION_NO < mlmso0.MLMS_OPERATION_NO)
                                )
                              )
                            )
                          )
                      )
                    )

                  order by
                    mll.NO_AS_FORMATED_TEXT,
                    mll.FORK_NO,
                    mlms.ML_MODEL_STAGE_NO desc,
                    mlmso.MLMS_OPERATION_NO desc,
                    mlmso.MLMS_OPERATION_VARIANT_NO desc
                ) z
            )
            
          loop

            if (TotalDetailTechQuantity is null) then

              TotalDetailTechQuantity:= x.TOTAL_DETAIL_TECH_QUANTITY;

            else
              -- skip first - already inserted it
             
              insert into OPERATION_MOVEMENTS (
                OM_BRANCH_CODE, 
                OM_CODE, 
                OM_NO,
                OPERATION_MOVEMENT_TYPE_CODE, 
                OM_DATE, 
                OM_TIME, 
                FROM_EMPLOYEE_CODE, 
                FROM_TEAM_CODE, 
                TO_EMPLOYEE_CODE, 
                TO_TEAM_CODE, 
                TO_DEPT_CODE, 
                WASTE_DOC_NO, 
                WASTE_DOC_DATE, 
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
                BND_OM_BRANCH_CODE, 
                BND_OM_CODE, 
                FROM_MLMSO_OBJECT_BRANCH_CODE, 
                FROM_MLMSO_OBJECT_CODE, 
                TO_MLMSO_OBJECT_BRANCH_CODE, 
                TO_MLMSO_OBJECT_CODE, 
                STORE_DEAL_OBJECT_BRANCH_CODE, 
                STORE_DEAL_OBJECT_CODE, 
                REPLACED_OM_BRANCH_CODE, 
                REPLACED_OM_CODE, 
                DOC_BRANCH_CODE,
                DOC_CODE
              )
              values (
                :new.OM_BRANCH_CODE, 
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) then
                      Decode(:new.OM_CODE, 
                        :old.OM_CODE, seq_OPERATION_MOVEMENTS.NextVal,
                        null, seq_OPERATION_MOVEMENTS.NextVal,
                        :new.OM_CODE
                      )
                    else
                      Decode(x.FORK_NO, 0, seq_OPERATION_MOVEMENTS.NextVal)
                  end
                ),
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) then
                      Coalesce(:old.OM_NO, Coalesce(:new.OM_NO, seq_OPERATION_MOVEMENT_NO.NextVal))
                    else
                      Decode(
                        :old.OM_NO,
                        null,
                        seq_OPERATION_MOVEMENT_NO.NextVal,
                        Coalesce(
                          ( select
                              om2.OM_NO
                            from
                              OPERATION_MOVEMENTS om2
                            where
                              (om2.BND_OM_BRANCH_CODE = :old.OM_BRANCH_CODE) and
                              (om2.BND_OM_CODE = :old.OM_CODE) and
                              (om2.FROM_MLMSO_OBJECT_BRANCH_CODE = x.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                              (om2.FROM_MLMSO_OBJECT_CODE = x.FROM_MLMSO_OBJECT_CODE)
                          ),
                          seq_OPERATION_MOVEMENT_NO.NextVal
                        )
                      )
                  end
                ),
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) then
                      :new.OPERATION_MOVEMENT_TYPE_CODE
                    else
                      3
                  end
                ),
                :new.OM_DATE, 
                :new.OM_TIME, 
                :new.FROM_EMPLOYEE_CODE, 
                :new.FROM_TEAM_CODE, 
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) then
                      :new.TO_EMPLOYEE_CODE 
                    else
                      :new.FROM_EMPLOYEE_CODE 
                  end
                ),
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) then
                      :new.TO_TEAM_CODE
                    else
                      :new.FROM_TEAM_CODE
                  end
                ),
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) then
                      :new.TO_DEPT_CODE
                  end
                ),
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) then
                      :new.WASTE_DOC_NO
                  end
                ),
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) then
                      :new.WASTE_DOC_DATE
                  end
                ),
                (AutoDetailTechQuantity * (x.TOTAL_DETAIL_TECH_QUANTITY / TotalDetailTechQuantity)),
                (AutoDetailTechQuantity * (x.TOTAL_DETAIL_TECH_QUANTITY / TotalDetailTechQuantity)),
                (AutoDetailTechQuantity * (x.TOTAL_DETAIL_TECH_QUANTITY / TotalDetailTechQuantity)),
                :new.QA_EMPLOYEE_CODE, 
                :new.CREATE_EMPLOYEE_CODE, 
                :new.CREATE_DATE, 
                :new.CREATE_TIME, 
                :new.STORNO_EMPLOYEE_CODE, 
                :new.STORNO_DATE, 
                :new.STORNO_TIME, 
                NewOMBranchCode,
                NewOMCode, 
                x.FROM_MLMSO_OBJECT_BRANCH_CODE, 
                x.FROM_MLMSO_OBJECT_CODE, 
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) and
                         (:new.TO_DEPT_CODE is not null) then
                      null
                    else
                      x.TO_MLMSO_OBJECT_BRANCH_CODE
                  end
                ),
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) and
                         (:new.TO_DEPT_CODE is not null) then
                      null
                    else
                      x.TO_MLMSO_OBJECT_CODE
                  end
                ),
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) then
                      :new.STORE_DEAL_OBJECT_BRANCH_CODE
                  end
                ),
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) then
                      :new.STORE_DEAL_OBJECT_CODE
                  end
                ),
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) then
                      :old.OM_BRANCH_CODE
                  end
                ),
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) then
                      :old.OM_CODE
                  end
                ),
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) then
                      :new.DOC_BRANCH_CODE
                  end
                ),
                ( case
                    when (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                         (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) then
                      :new.DOC_CODE
                  end
                )
              );

              if (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                 (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) then

                InsertedOMBranchCode:= NewOMBranchCode;
                InsertedOMCode:= NewOMCode;

              end if;


              if (x.FROM_MLMS_OBJECT_BRANCH_CODE <> x.TO_MLMS_OBJECT_BRANCH_CODE) or
                 (x.FROM_MLMS_OBJECT_CODE <> x.TO_MLMS_OBJECT_CODE) or
                 ( (x.FROM_MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                   (x.FROM_MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE) and
                   (:new.TO_DEPT_CODE is not null) ) then
                   
                insert into MODEL_MOVEMENTS_FOR_EDIT
                (
                  MM_BRANCH_CODE,
                  MODEL_MOVEMENT_TYPE_CODE,
                  MM_DATE,
                  FROM_MLMS_OBJECT_BRANCH_CODE,
                  FROM_MLMS_OBJECT_CODE,
                  FROM_EMPLOYEE_CODE,
                  TO_EMPLOYEE_CODE,
                  TO_DEPT_CODE,
                  QA_EMPLOYEE_CODE,
                  DETAIL_TECH_QUANTITY,
                  DETAIL_TECH_QUANTITY_OFFERED,
                  STORNO_EMPLOYEE_CODE,
                  STORNO_DATE,
                  STORNO_TIME,
                  CREATE_EMPLOYEE_CODE,
                  CREATE_DATE,
                  CREATE_TIME,
                  WASTE_DOC_NO,
                  WASTE_DOC_DATE,
                  STORE_DEAL_OBJECT_BRANCH_CODE,
                  STORE_DEAL_OBJECT_CODE,
                  OM_BRANCH_CODE,
                  OM_CODE
                )
                values
                (
                  NewOMBranchCode,
                  Nvl2(NewToDeptCode, 2, 1),
                  NewOMDate,
                  x.FROM_MLMS_OBJECT_BRANCH_CODE,
                  x.FROM_MLMS_OBJECT_CODE,
                  NewFromEmployeeCode,
                  NewToEmployeeCode,
                  NewToDeptCode,
                  NewQAEmployeeCode,
                  NewTotalDetailTechQuantity,
                  NewTotalDetailTechQuantity,
                  NewStornoEmployeeCode,
                  NewStornoDate,
                  NewStornoTime,
                  NewCreateEmployeeCode,
                  NewCreateDate,
                  NewCreateTime,
                  NewWasteDocNo,
                  NewWasteDocDate,
                  NewStoreDealObjectBranchCode,
                  NewStoreDealObjectCode,
                  NewOMBranchCode,
                  NewOMCode
                );
                   
              end if;
            
            end if;

            update
              MLMS_OPERATIONS mlmso
            set
              mlmso.DONE_SETUP_COUNT = mlmso.SETUP_COUNT,
              mlmso.SETUP_EMPLOYEE_CODE = :new.FROM_EMPLOYEE_CODE,
              mlmso.SETUP_TEAM_CODE = :new.FROM_TEAM_CODE,
              mlmso.SETUP_DATE = :new.OM_DATE,
              mlmso.SETUP_TIME = :new.OM_TIME
            where
              (mlmso.MLMSO_OBJECT_BRANCH_CODE = x.FROM_MLMSO_OBJECT_BRANCH_CODE) and
              (mlmso.MLMSO_OBJECT_CODE = x.FROM_MLMSO_OBJECT_CODE) and              
              (mlmso.IS_AUTO_SETUP = 1) and
              (mlmso.DONE_SETUP_COUNT < mlmso.SETUP_COUNT);
          end loop;

        end if;

      end if;

      
      -- proverka za nezavursheno proizvodstvo kam storniranite stari danni
      if (:old.OM_BRANCH_CODE is not null) then
        for x in
          (
            select
              to_mlmso.MLMS_OBJECT_BRANCH_CODE as TO_MLMS_OBJECT_BRANCH_CODE,
              to_mlmso.MLMS_OBJECT_CODE as TO_MLMS_OBJECT_CODE,
              om.TO_MLMSO_OBJECT_BRANCH_CODE,
              om.TO_MLMSO_OBJECT_CODE
            from
              OPERATION_MOVEMENTS om,
              MLMS_OPERATIONS to_mlmso
            where
              (om.TO_MLMSO_OBJECT_BRANCH_CODE = to_mlmso.MLMSO_OBJECT_BRANCH_CODE) and
              (om.TO_MLMSO_OBJECT_CODE = to_mlmso.MLMSO_OBJECT_CODE) and
            
              ( ( (om.OM_BRANCH_CODE = :old.OM_BRANCH_CODE) and
                  (om.OM_CODE = :old.OM_CODE)
                ) or
                ( (om.BND_OM_BRANCH_CODE = :old.OM_BRANCH_CODE) and
                  (om.BND_OM_CODE = :old.OM_CODE)
                )
              )
          )
        loop
          ModelUtils.CheckOperationQuantitiesAfter(x.TO_MLMSO_OBJECT_BRANCH_CODE, x.TO_MLMSO_OBJECT_CODE, :old.OM_DATE);
          ModelUtils.CheckStageQuantitiesAfter(x.TO_MLMS_OBJECT_BRANCH_CODE, x.TO_MLMS_OBJECT_CODE, :old.OM_DATE);
        end loop;
      end if;

      -- proverka za nezavursheno proizvodstvo kam novite danni
      if (:new.STORNO_EMPLOYEE_CODE is null) then
        for x in
          (
            select
              from_mlmso.MLMS_OBJECT_BRANCH_CODE as FROM_MLMS_OBJECT_BRANCH_CODE,
              from_mlmso.MLMS_OBJECT_CODE as FROM_MLMS_OBJECT_CODE,
              om.FROM_MLMSO_OBJECT_BRANCH_CODE,
              om.FROM_MLMSO_OBJECT_CODE
            from
              OPERATION_MOVEMENTS om,
              MLMS_OPERATIONS from_mlmso
            where
              (om.FROM_MLMSO_OBJECT_BRANCH_CODE = from_mlmso.MLMSO_OBJECT_BRANCH_CODE) and
              (om.FROM_MLMSO_OBJECT_CODE = from_mlmso.MLMSO_OBJECT_CODE) and
            
              ( ( (om.OM_BRANCH_CODE = NewOMBranchCode) and
                  (om.OM_CODE = NewOMCode)
                ) or
                ( (om.BND_OM_BRANCH_CODE = NewOMBranchCode) and
                  (om.BND_OM_CODE = NewOMCode)
                )
              )
          )          
        loop
          ModelUtils.CheckOperationQuantitiesAfter(x.FROM_MLMSO_OBJECT_BRANCH_CODE, x.FROM_MLMSO_OBJECT_CODE, :new.OM_DATE);
          ModelUtils.CheckStageQuantitiesAfter(x.FROM_MLMS_OBJECT_BRANCH_CODE, x.FROM_MLMS_OBJECT_CODE, :new.OM_DATE);
        end loop;
      end if;

      -- proverka storniraneto da ne oburka razkloneniata po brak
      if updating and 
         (:old.TO_DEPT_CODE is not null) and
         ( (:new.TO_DEPT_CODE is null) or
           (:new.STORNO_EMPLOYEE_CODE is not null) or   -- BEZ ostavane na ekran
           ( (:new.STORNO_EMPLOYEE_CODE is null) and 
             (:new.TOTAL_DETAIL_TECH_QUANTITY < :old.TOTAL_DETAIL_TECH_QUANTITY) ) )
      then


        select
          Count(*)
          
        into
          IncorrectWasteForks
        
        from
          MATERIAL_LIST_LINES mll
        
        where
          ( (mll.MLL_OBJECT_BRANCH_CODE, mll.MLL_OBJECT_CODE) =
            ( select
                Coalesce(from_mll.FORK_0_MLL_OBJECT_BRANCH_CODE, from_mll.MLL_OBJECT_BRANCH_CODE),
                Coalesce(from_mll.FORK_0_MLL_OBJECT_CODE, from_mll.MLL_OBJECT_CODE)
              from
                MATERIAL_LIST_LINES from_mll
              where
                ( (from_mll.MLL_OBJECT_BRANCH_CODE, from_mll.MLL_OBJECT_CODE) =
                  ( select
                      from_mlms.MLL_OBJECT_BRANCH_CODE,
                      from_mlms.MLL_OBJECT_CODE
                    from
                      ML_MODEL_STAGES from_mlms
                    where
                      ( (from_mlms.MLMS_OBJECT_BRANCH_CODE, from_mlms.MLMS_OBJECT_CODE) =
                        ( select
                            from_mlmso.MLMS_OBJECT_BRANCH_CODE,
                            from_mlmso.MLMS_OBJECT_CODE
                          from
                            MLMS_OPERATIONS from_mlmso
                          where
                            (from_mlmso.MLMSO_OBJECT_BRANCH_CODE = :old.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                            (from_mlmso.MLMSO_OBJECT_CODE = :old.FROM_MLMSO_OBJECT_CODE)
                        )
                      )
                  )
                )
            )
          ) and
        
          ( MiscUtils.LargeZero(
              ( select
                  Sum(mllw.LINE_DETAIL_TECH_QUANTITY)
                from
                  MATERIAL_LIST_LINES mllw
                where
                  (mllw.FORK_0_MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
                  (mllw.FORK_0_MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
                  (mllw.FORK_NO > 0) and
                  (mllw.IS_WASTE_FORK = 1)
              ) -
              ( ( select
                    Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)
                  from
                    MATERIAL_LIST_LINES mllw,
                    ML_MODEL_STAGES mlms,
                    MODEL_MOVEMENTS mm
                  where
                    (mllw.FORK_0_MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
                    (mllw.FORK_0_MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
                    (mllw.FORK_NO > 0) and
        
                    (mlms.MLL_OBJECT_BRANCH_CODE = mllw.MLL_OBJECT_BRANCH_CODE) and
                    (mlms.MLL_OBJECT_CODE = mllw.MLL_OBJECT_CODE) and
        
                    (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
                    (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
                    (mm.TO_DEPT_CODE is not null) and
                    (mm.STORNO_EMPLOYEE_CODE is null) 
                ) +
                ( select
                    Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)
                  from
                    ML_MODEL_STAGES mlms,
                    MODEL_MOVEMENTS mm
                  where
                    (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
                    (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
            
                    (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
                    (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
                    (mm.TO_DEPT_CODE is not null) and
                    (mm.STORNO_EMPLOYEE_CODE is null)
                )
              )
            ) > 0
          );

        if (IncorrectWasteForks > 0) then
          raise_application_error(-20002, ServerMessages.SLineIncorrectWasteForksId);
        end if;
      end if;
      
      -- oprawqne na EXCEPT_EVENTS
      if updating then

        if (:new.STORNO_EMPLOYEE_CODE is not null) or
           (:new.TO_DEPT_CODE is null) then

          select
            Sign(Count(*))
          into
            HasUnannuledExceptEvents
          from
            EXCEPT_EVENTS ee
          where
            (ee.ANNUL_EMPLOYEE_CODE is null) and
  
            (ee.OM_BRANCH_CODE = :old.OM_BRANCH_CODE) and
            (ee.OM_CODE = :old.OM_CODE);
  
          if (HasUnannuledExceptEvents = 1) then
            raise_application_error(-20001, ServerMessages.SExceptEventsMustBeAnnuledId);
          end if;

        else

          select
            Sign(Count(*))
          into
            HasExceptEventsWithGreaterQty
          from
            EXCEPT_EVENTS ee,
            OPERATION_MOVEMENTS om,
            MLMS_OPERATIONS mlmso,
            ML_MODEL_STAGES mlms,
            MATERIAL_LIST_LINES mll,
            PRODUCTS p
          where
            (om.OM_BRANCH_CODE = :old.OM_BRANCH_CODE) and
            (om.OM_CODE = :old.OM_BRANCH_CODE) and

            (mlmso.MLMSO_OBJECT_BRANCH_CODE = om.FROM_MLMSO_OBJECT_BRANCH_CODE) and
            (mlmso.MLMSO_OBJECT_CODE = om.FROM_MLMSO_OBJECT_CODE) and

            (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
            (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and

            (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
            (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and

            (MiscUtils.FloatCompare(ee.PRODUCT_QUANTITY, Coalesce(om.TOTAL_DETAIL_TECH_QUANTITY, 0) / p.TECH_MEASURE_COEF) > 0);

          if (HasExceptEventsWithGreaterQty = 1) then
            raise_application_error(-20002, ServerMessages.SEEWithIncorrectQtyExistsId);
          end if;

          update
            EXCEPT_EVENTS_FOR_EDIT eefe
          set
            (
              eefe.OM_BRANCH_CODE,
              eefe.OM_CODE,
              eefe.PRODUCT_CODE,
              eefe.DETECT_DEPT_CODE
            ) =
            ( select
                om.OM_BRANCH_CODE,
                om.OM_CODE,
                mll.DETAIL_CODE,
                mlmso.DEPT_CODE
              from
                OPERATION_MOVEMENTS om,
                MLMS_OPERATIONS mlmso,
                ML_MODEL_STAGES mlms,
                MATERIAL_LIST_LINES mll
              where
                (om.OM_BRANCH_CODE = InsertedOMBranchCode) and
                (om.OM_CODE = InsertedOMCode) and
                (mlmso.MLMSO_OBJECT_BRANCH_CODE = om.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                (mlmso.MLMSO_OBJECT_CODE = om.FROM_MLMSO_OBJECT_CODE) and
                (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
                (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
                (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
                (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE)
            )
          where
            (eefe.OM_BRANCH_CODE = :old.OM_BRANCH_CODE) and
            (eefe.OM_CODE = :old.OM_CODE);

        end if;

      end if;

      -- opraviane na cenite na postupleniata
      update
        STORE_DEALS_FOR_EDIT sd
      set
        sd.TOTAL_PRICE = 
          ModelUtils.GetOperationMovementTotalPrice(NewOMBranchCode, NewOMCode)
      where
        (sd.STORE_DEAL_OBJECT_BRANCH_CODE = :new.STORE_DEAL_OBJECT_BRANCH_CODE) and
        (sd.STORE_DEAL_OBJECT_CODE = :new.STORE_DEAL_OBJECT_CODE) and
        (sd.IN_OUT = 1) and
        (sd.BND_PROCESS_CODE <> 60)
      ;
       
      select
        ml.BND_PROCESS_OBJECT_BRANCH_CODE,
        ml.BND_PROCESS_OBJECT_CODE
      into
        SaleObjectBranchCode,
        SaleObjectCode
      from
        MLMS_OPERATIONS mlmso,
        ML_MODEL_STAGES mlms,
        MATERIAL_LIST_LINES mll,
        MATERIAL_LISTS ml
      where
        (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
        (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
                  
        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
                  
        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
                
        (mlmso.MLMSO_OBJECT_BRANCH_CODE = :new.FROM_MLMSO_OBJECT_BRANCH_CODE) and
        (mlmso.MLMSO_OBJECT_CODE = :new.FROM_MLMSO_OBJECT_CODE)
      ;

      ModelUtils.CalcSaleInStoreDealsTotalPrice(SaleObjectBranchCode, SaleObjectCode);

      -- UpdateMlmsoVariantQuantities
      if (NewToMlmsoObjectCode is not null) then
        ModelUtils.UpdateMlmsoVariantQuantities(NewToMlmsoObjectBranchCode, NewToMlmsoObjectCode);
      end if;

      if (:old.TO_MLMSO_OBJECT_CODE is not null) then
        ModelUtils.UpdateMlmsoVariantQuantities(:old.TO_MLMSO_OBJECT_BRANCH_CODE, :old.TO_MLMSO_OBJECT_CODE);
      end if;      
      --

    exception
      when others then
        StateUtils.EndOmfeUpdate;
        raise;
    end;
    StateUtils.EndOmfeUpdate;
  end if;

end;
/
