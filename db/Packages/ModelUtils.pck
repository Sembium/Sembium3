create or replace package ModelUtils is

  function crtChangeAccepted return Number deterministic;
  function crtChangeRejected return Number deterministic;
  function crtChangeAutoAccepted return Number deterministic;
  
  function GetMlMinProductNeedDate(MlObjectBranchCode in Number, MlObjectCode in Number) return Date;
  
  function GetMllPlanTotalPrice(MllObjectBranchCode in Number, MllObjectCode in Number) return Number;
  function GetMllRealSinglePrice(MllObjectBranchCode in Number, MllObjectCode in Number) return Number;
  function GetOperationMovementTotalPrice(OMBranchCode in Number, OMCode in Number) return Number;
  function GetMllComplectationPercent(MllObjectBranchCode in Number, MllObjectCode in Number) return Number;

  procedure DeleteXModel(MlObjectBranchCode in Number, MlObjectCode in Number);
    
  procedure InsertImportedSpecStages(
    SpecProductCode in Number,
    SpecModelVariantNo in Number,
    SpecLineCode in Number,
    NewSpecProductCode in Number,
    NewSpecModelVariantNo in Number,
    NewSpecLineCode in Number,
    SpecLineLastStageNo in Number,
    LastStageDeptCode in Number,
    ParentFirstStageTreatmentWds in Number,
    LocalBranchCode in Number
  );
  
  function GetMMReceivedFor(FromMlmsObjectBranchCode in Number, FromMlmsObjectCode in Number,
    IgnoreAutoMovements Number) return Number;

  function GetMlmsRcvdForDetailTechQty(MlmsObjectBranchCode in Number, MlmsObjectCode in Number) return Number;
    
  function GetMlmsoRcvdForDetailTechQty(MlmsoObjectBranchCode in Number, MlmsoObjectCode in Number) return Number;    
    
  function MaxMllMovedTechQuantity(MllObjectBranchCode in Number, MllObjectCode in Number) return Number;
  
  function MllCompletelyMovedTechQuantity(MllObjectBranchCode in Number, MllObjectCode in Number) return Number;
  
  function MllWasteTechQuantity(MllObjectBranchCode in Number, MllObjectCode in Number) return Number;
  
  function MllAggregatedWasteTechQuantity(MllObjectBranchCode in Number, MllObjectCode in Number) return Number;
  
  function StageTechQuantity(MlmsObjectBranchCode in Number, MlmsObjectCode in Number, AtDate in Date) return Number;
  function OperationTechQuantity(MlmsoObjectBranchCode in Number, MlmsoObjectCode in Number, AtDate in Date) return Number;

  function IsConstructingMlms(MlmsObjectBranchCode in Number, MlmsObjectCode in Number) return Number;
  function IsConstructingMlmso(MlmsoObjectBranchCode in Number, MlmsoObjectCode in Number) return Number;

  procedure CheckStageQuantitiesAfter(MlmsObjectBranchCode in Number, MlmsObjectCode in Number, BeginDate in Date);
  procedure CheckOperationQuantitiesAfter(MlmsoObjectBranchCode in Number, MlmsoObjectCode in Number, BeginDate in Date);

  function TeamEarnings(TeamCode in Number, BeginDate in Date, EndDate in Date) return Number;
  function EmployeePersonalEarnings(EmployeeCode in Number, BeginDate in Date, EndDate in Date) return Number;
  function EmployeeTeamEarnings(EmployeeCode in Number, BeginDate in Date, EndDate in Date) return Number;

  function TeamWorkHours(
    TeamCode in Number, 
    BeginDate in Date, 
    EndDate in Date, 
    WantSetupWorkHours in Integer, 
    WantNonWasteWorkHours in Integer, 
    WantWasteWorkHours in Integer) return Number;
  
  function EmployeePersonalWorkHours(
    EmployeeCode in Number, 
    BeginDate in Date, 
    EndDate in Date, 
    WantSetupWorkHours in Integer, 
    WantNonWasteWorkHours in Integer, 
    WantWasteWorkHours in Integer) return Number;
    
  function EmployeeTeamWorkHours(
    EmployeeCode in Number, 
    BeginDate in Date, 
    EndDate in Date,
    WantSetupWorkHours in Integer, 
    WantNonWasteWorkHours in Integer, 
    WantWasteWorkHours in Integer) return Number;
    
  function ModelOperationsStatus(
    MlObjectBranchCode in Number,
    MlObjectCode in Number
  ) return Number;   -- 1-etapen, 2-kombiniran, 3-operacionen
  
  function MaxStageNo(
    MlmsObjectBranchCode in Number,
    MlmsObjectCode in Number
  ) return Number; 
  
  function ModelInvestedValue2(
    MlObjectBranchCode in Number,
    MlObjectCode in Number,
    InvestedValueLevel in Number, -- ot 1 do 5
    InvestedValueSumType in Number,  -- 0-none, 1-aggregated, 2-full
    InvestedValueType in Number, -- 0-plan, 1-real, 2-diversion, 3-waste
    CurrencyCode in Number
  ) return VarChar2;  
  
  function IsAutoReceivingStage(
    MlmsObjectBranchCode in Number,
    MlmsObjectCode in Number
  ) return Number;
  
  function SpecState(
    ProductCode in Number, 
    TechQuantity in Number := null, 
    ProductionDeptCode in Number := null,
    ToDate in Date := null
  ) return Number;
  
  function SpecLineModelWorkdays(
    SpecProductCode in Number, 
    SpecModelVariantNo in Number, 
    SpecLineCode in Number
  ) return Number;
  
  function MllModelWorkdays(
    MllObjectBranchCode in Number, 
    MllObjectCode in Number
  ) return Number;
  
  procedure CalcSpecTotalTreatmentWorkdays(
    SpecProductCode in Number, 
    SpecLineCode in Number := null
  );
  
  procedure CalcSaleInStoreDealsTotalPrice(
    SaleObjectBranchCode in Number, 
    SaleObjectCode in Number
  );
  
  procedure CheckEOCloseAndAnnul(
    AEngineeringOrderCode in Number,
    AParentEngineeringOrderCode in Number,
    AIsClosed in Boolean,
    AIsAnnuled in Boolean);
    
  procedure UpdateModelPsdDepts(
    MlObjectBranchCode in Number, 
    MlObjectCode in Number
  );
  
  procedure UpdateMlmsoVariantQuantities(
    MlmsoObjectBranchCode in Number, 
    MlmsoObjectCode in Number
  );
  
  PRAGMA RESTRICT_REFERENCES (crtChangeAccepted, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (crtChangeRejected, WNDS, WNPS, RNDS, RNPS);
  PRAGMA RESTRICT_REFERENCES (crtChangeAutoAccepted, WNDS, WNPS, RNDS, RNPS);

  PRAGMA RESTRICT_REFERENCES (GetMlMinProductNeedDate, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (GetMllRealSinglePrice, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (GetOperationMovementTotalPrice, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (IsConstructingMlms, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (IsConstructingMlmso, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (StageTechQuantity, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (OperationTechQuantity, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (MaxMllMovedTechQuantity, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (MllCompletelyMovedTechQuantity, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (MllWasteTechQuantity, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (MllAggregatedWasteTechQuantity, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (TeamEarnings, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (EmployeePersonalEarnings, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (EmployeeTeamEarnings, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (TeamWorkHours, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (EmployeePersonalWorkHours, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (EmployeeTeamWorkHours, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (ModelOperationsStatus, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (MaxStageNo, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (IsAutoReceivingStage, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (SpecState, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (SpecLineModelWorkdays, WNDS, WNPS, RNPS);
  PRAGMA RESTRICT_REFERENCES (MllModelWorkdays, WNDS, WNPS, RNPS);
  
end;
/
create or replace package body ModelUtils is

  type TInvestedValueRow is record (
    VALUE Number,
    IS_INCOMPLETE Number(10)
  );

  function crtChangeAccepted return Number is
  begin
    return 1;
  end;
  
  function crtChangeRejected return Number is
  begin
    return 2;
  end;
  
  function crtChangeAutoAccepted return Number is
  begin
    return 3;
  end;


  function GetMlMinProductNeedDate(MlObjectBranchCode in Number, MlObjectCode in Number) return Date is
    Result Date;
  begin

    select
      Min(mll.PRODUCT_NEED_BEGIN_DATE)
    into
      Result
    from
      MATERIAL_LIST_LINES mll
    where
      (mll.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
      (mll.ML_OBJECT_CODE = MlObjectCode) and
      (mll.ANNUL_EMPLOYEE_CODE is null);
    

    return(Result);
    
  end;
  

  function GetMllPlanTotalPrice(MllObjectBranchCode in Number, MllObjectCode in Number) return Number is
    Result Number;
  begin
  
    select
      Sum(
        ( select
            psd.QUANTITY * ProductUtils.PsdSinglePriceInBaseCurrencyEx(psd.PRODUCT_CODE, ContextDate)
          from
            PLANNED_STORE_DEALS psd
          where
            (mll2.MLL_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANCH_CODE) and
            (mll2.MLL_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and
            (psd.IN_OUT = -1) and
            (psd.PLANNED_STORE_DEAL_TYPE_CODE = 1) and
            (psd.IS_PLANNED_MANUALLY = 0) and
            (psd.BND_PROCESS_CODE <> 110)
        )
      )
    into
      Result
    from
      MATERIAL_LIST_LINES mll,
      MATERIAL_LIST_LINES mll2
    where
      (mll.MLL_OBJECT_BRANCH_CODE = MLLObjectBranchCode) and
      (mll.MLL_OBJECT_CODE = MLLObjectCode) and
      (mll2.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
      (mll2.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
      (mll2.NO_AS_FORMATED_TEXT like (Decode(mll.NO_1, 0, '', mll.NO_AS_FORMATED_TEXT) || '%')) and
      ( (mll.FORK_NO = 0) or
        ( (mll2.NO_AS_FORMATED_TEXT = mll.NO_AS_FORMATED_TEXT) and
          (mll2.FORK_NO = mll.FORK_NO)
        )
      ) and
      (mll2.PRODUCT_CODE is not null) and
      (mll2.ANNUL_EMPLOYEE_CODE is null);  
  
  
    return(Result);
    
  end;  
  
  function GetMllRealSinglePrice(MllObjectBranchCode in Number, MllObjectCode in Number) return Number is
    Result Number;
  begin
  
    select
      ( select
          Sum(
            mll2.LINE_DETAIL_TECH_QUANTITY *
            mll2.PRODUCT_TECH_QUANTITY *
            ( select
                Sum(sd.TOTAL_PRICE * cr.FIXING) / Sum(sd.QUANTITY)
              from
                STORE_DEALS sd,
                CURRENCY_RATES cr
              where
                (mll2.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH_CODE) and
                (mll2.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and
                (sd.CURRENCY_CODE = cr.CURRENCY_CODE(+)) and
                (sd.STORE_DEAL_DATE = cr.RATE_DATE(+)) and
                (sd.IN_OUT = -1) and
                (sd.STORNO_EMPLOYEE_CODE is null)
            ) /
            ( select
                p.TECH_MEASURE_COEF
              from
                PRODUCTS p
              where
                (mll2.PRODUCT_CODE = p.PRODUCT_CODE)
            )
          )
        from
          MATERIAL_LIST_LINES mll2
        where
          (mll2.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
          (mll2.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
          (mll2.NO_AS_FORMATED_TEXT like (Decode(mll.NO_1, 0, '', mll.NO_AS_FORMATED_TEXT) || '%')) and
          ( ( (mll2.NO_AS_FORMATED_TEXT = mll.NO_AS_FORMATED_TEXT) and 
              (mll2.FORK_NO = mll.FORK_NO) ) or
            ( (mll2.NO_AS_FORMATED_TEXT <> mll.NO_AS_FORMATED_TEXT) and
              (mll.FORK_NO = 0) )
          ) and
          (mll2.PRODUCT_CODE is not null) and
          (mll2.ANNUL_EMPLOYEE_CODE is null)
      ) /
      mll.LINE_DETAIL_TECH_QUANTITY
    into
      Result 
    from
      MATERIAL_LIST_LINES mll
    where
      (mll.MLL_OBJECT_BRANCH_CODE = MLLObjectBranchCode) and
      (mll.MLL_OBJECT_CODE = MLLObjectCode);
  
  
    return(Result);

  end;
  
  function GetOperationMovementTotalPrice(OMBranchCode in Number, OMCode in Number) return Number is
    IsStorno Number;
    IsWasteMovement Number;
    LineDetailTechQty Number;
    OperationNonWasteDetailTechQty Number;
    OperationWasteDetailTechQty Number;
    LinePriorWasteDetailTechQty Number;
    ModelIsClosed Number;
    ModelIsFinished Number;
    OMTotalDetailTechQty Number;
    MllSinglePrice Number;
    ProductsAllTotalPrice Number;
    WasteSdTotalPrice Number;
    NkSdTotalPrice Number;
    OperationDetailTechQty Number;
    Result Number;
  begin
    select
      Max(Nvl2(om.STORNO_EMPLOYEE_CODE, 1, 0)) as IS_STORNO
    into
      IsStorno
    from
      OPERATION_MOVEMENTS om
    where
      (om.OM_BRANCH_CODE = OMBranchCode) and
      (om.OM_CODE = OMCode);
  
    if (IsStorno is null) or (IsStorno = 1) then
      Result:= null;
    else  
  
      select
        Nvl2(om.TO_DEPT_CODE, 1, 0) as IS_WASTE_MOVEMENT,
        
        mll.LINE_DETAIL_TECH_QUANTITY,
      
        ( select
            Coalesce(Sum(om2.TOTAL_DETAIL_TECH_QUANTITY), 0)
          from
            OPERATION_MOVEMENTS om2
          where
            (om2.FROM_MLMSO_OBJECT_BRANCH_CODE = om.FROM_MLMSO_OBJECT_BRANCH_CODE) and
            (om2.FROM_MLMSO_OBJECT_CODE = om.FROM_MLMSO_OBJECT_CODE) and
            (om2.OPERATION_MOVEMENT_TYPE_CODE between 1 and 4) and
            (om2.TO_DEPT_CODE is null) and
            (om2.STORNO_EMPLOYEE_CODE is null)
        ) as OP_NON_WASTE_DTL_TECH_QTY,
        
        ( select
            Coalesce(Sum(om2.TOTAL_DETAIL_TECH_QUANTITY), 0)
          from
            OPERATION_MOVEMENTS om2
          where
            (om2.FROM_MLMSO_OBJECT_BRANCH_CODE = om.FROM_MLMSO_OBJECT_BRANCH_CODE) and
            (om2.FROM_MLMSO_OBJECT_CODE = om.FROM_MLMSO_OBJECT_CODE) and
            (om2.TO_DEPT_CODE is not null) and
            (om2.STORNO_EMPLOYEE_CODE is null)
        ) as OP_WASTE_DTL_TECH_QTY,
          
        ( select
            Coalesce(Sum(om2.TOTAL_DETAIL_TECH_QUANTITY), 0)
          from
            ML_MODEL_STAGES mlms2,
            MLMS_OPERATIONS mlmso2,
            OPERATION_MOVEMENTS om2
          where
            (mlms2.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
            (mlms2.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
            (mlms2.MLMS_OBJECT_BRANCH_CODE = mlmso2.MLMS_OBJECT_BRANCH_CODE) and
            (mlms2.MLMS_OBJECT_CODE = mlmso2.MLMS_OBJECT_CODE) and
            (mlmso2.MLMSO_OBJECT_BRANCH_CODE = om2.FROM_MLMSO_OBJECT_BRANCH_CODE) and
            (mlmso2.MLMSO_OBJECT_CODE = om2.FROM_MLMSO_OBJECT_CODE) and
            (om2.TO_DEPT_CODE is not null) and
            (om2.STORNO_EMPLOYEE_CODE is null) and
            ( (mlms2.ML_MODEL_STAGE_NO < mlms.ML_MODEL_STAGE_NO) or
              ( (mlms2.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STAGE_NO) and
                (mlmso2.MLMS_OPERATION_NO < mlmso.MLMS_OPERATION_NO)
              )
            )          
        ) as LINE_PRIOR_WASTE_DTL_TECH_QTY,
          
        ( select
            Nvl2(ml.CLOSE_EMPLOYEE_CODE, 1, 0)
          from
            MATERIAL_LISTS ml
          where
            (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
            (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE)
        ) as MODEL_IS_CLOSED
          
      into
        IsWasteMovement,
        LineDetailTechQty,
        OperationNonWasteDetailTechQty,
        OperationWasteDetailTechQty,
        LinePriorWasteDetailTechQty,
        ModelIsClosed
      from
        OPERATION_MOVEMENTS om,
        MLMS_OPERATIONS mlmso,
        ML_MODEL_STAGES mlms,
        MATERIAL_LIST_LINES mll
      where
        (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
        (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
          
        (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
        (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
          
        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
        
        (om.OM_BRANCH_CODE = OMBranchCode) and
        (om.OM_CODE = OMCode);

      
      if (ModelIsClosed = 1) or
         ((OperationNonWasteDetailTechQty + OperationWasteDetailTechQty) >= (LineDetailTechQty - LinePriorWasteDetailTechQty)) then
        ModelIsFinished:= 1;
      else
        ModelIsFinished:= 0;
      end if;
           
      
      select
        om.TOTAL_DETAIL_TECH_QUANTITY,
          
        Decode(ModelIsFinished, 0,  
          Coalesce(
            ( ( select
                  Sum(
                    mll2.LINE_DETAIL_TECH_QUANTITY *
                    mll2.PRODUCT_TECH_QUANTITY *
                    ( select
                        Sum(sd.TOTAL_PRICE * cr.FIXING) / Sum(sd.QUANTITY)
                      from
                        STORE_DEALS sd,
                        CURRENCY_RATES cr
                      where
                        (mll2.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH_CODE) and
                        (mll2.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and
                        (sd.CURRENCY_CODE = cr.CURRENCY_CODE(+)) and
                        (sd.STORE_DEAL_DATE = cr.RATE_DATE(+)) and
                        (sd.IN_OUT = -1) and
                        (sd.STORNO_EMPLOYEE_CODE is null)
                    ) /
                    ( select
                        p.TECH_MEASURE_COEF
                      from
                        PRODUCTS p
                      where
                        (mll2.PRODUCT_CODE = p.PRODUCT_CODE)
                    )
                  )
                from
                  MATERIAL_LIST_LINES mll2
                where
                  (mll2.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
                  (mll2.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
                  (mll2.NO_AS_FORMATED_TEXT like (Decode(mll.NO_1, 0, '', mll.NO_AS_FORMATED_TEXT) || '%')) and
                  ( ( (mll2.NO_AS_FORMATED_TEXT = mll.NO_AS_FORMATED_TEXT) and 
                      (mll2.FORK_NO = mll.FORK_NO) ) or
                    ( (mll2.NO_AS_FORMATED_TEXT <> mll.NO_AS_FORMATED_TEXT) and
                      (mll.FORK_NO = 0) )
                  ) and
                  (mll2.PRODUCT_CODE is not null) and
                  (mll2.ANNUL_EMPLOYEE_CODE is null)
              ) /
              mll.LINE_DETAIL_TECH_QUANTITY
            ),
            0
          )
        ) as MLL_SINGLE_PRICE,
          
        Decode(ModelIsFinished, 1,  
          Coalesce(
            ( ( select
                  Sum(
                    ( select
                        Sum(
                          ( sd.QUANTITY -
                            ( select
                                Coalesce(Sum(sd2.QUANTITY), 0)
                              from
                                STORE_DEALS sd2
                              where
                                (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                                (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                                (sd2.IN_OUT = 1) and
                                (sd2.BND_PROCESS_CODE = 50) and
                                (sd2.STORNO_EMPLOYEE_CODE is null)
                            )
                          ) *
                         (sd.TOTAL_PRICE / sd.QUANTITY) * cr.FIXING
                        )
                      from
                        STORE_DEALS sd,
                        CURRENCY_RATES cr
                      where
                        (mll2.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH_CODE) and
                        (mll2.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and
                        (sd.CURRENCY_CODE = cr.CURRENCY_CODE(+)) and
                        (sd.STORE_DEAL_DATE = cr.RATE_DATE(+)) and
                        (sd.IN_OUT = -1) and
                        (sd.STORNO_EMPLOYEE_CODE is null)
                    ) 
                  )
                from
                  MATERIAL_LIST_LINES mll2
                where
                  (mll2.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
                  (mll2.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
                  (mll2.NO_AS_FORMATED_TEXT like (Decode(mll.NO_1, 0, '', mll.NO_AS_FORMATED_TEXT) || '%')) and
                  ( ( (mll2.NO_AS_FORMATED_TEXT = mll.NO_AS_FORMATED_TEXT) and 
                      (mll2.FORK_NO = mll.FORK_NO) ) or
                    ( (mll2.NO_AS_FORMATED_TEXT <> mll.NO_AS_FORMATED_TEXT) and
                      (mll.FORK_NO = 0) )
                  ) and
                  (mll2.PRODUCT_CODE is not null) and
                  (mll2.ANNUL_EMPLOYEE_CODE is null)
              )
            ),
            0
          )
        ) as PRODUCTS_ALL_TOTAL_PRICE,
          
        Decode(ModelIsFinished, 0,  
          Coalesce(
            ( ( select
                  Sum(
                    ( select
                        Sum(
                          ( sd.QUANTITY -
                            ( select
                                Coalesce(Sum(sd2.QUANTITY), 0)
                              from
                                STORE_DEALS sd2
                              where
                                (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                                (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                                (sd2.IN_OUT = 1) and
                                (sd2.BND_PROCESS_CODE = 50) and
                                (sd2.STORNO_EMPLOYEE_CODE is null)
                            )
                          ) *
                         (sd.TOTAL_PRICE / sd.QUANTITY) * cr.FIXING
                        )
                      from
                        STORE_DEALS sd,
                        CURRENCY_RATES cr
                      where
                        (mll2.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH_CODE) and
                        (mll2.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and
                        (sd.CURRENCY_CODE = cr.CURRENCY_CODE(+)) and
                        (sd.STORE_DEAL_DATE = cr.RATE_DATE(+)) and
                        (sd.IN_OUT = -1) and
                        (sd.STORNO_EMPLOYEE_CODE is null)
                    ) 
                  )
                from
                  MATERIAL_LIST_LINES mll2
                where
                  (mll2.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
                  (mll2.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
                  (mll2.NO_AS_FORMATED_TEXT like (Decode(mll.NO_1, 0, '', mll.NO_AS_FORMATED_TEXT) || '%')) and
                  (mll2.NO_AS_FORMATED_TEXT <> mll.NO_AS_FORMATED_TEXT) and
                  (mll2.FORK_NO > 0) and
                  (mll2.IS_WASTE_FORK = 1) and
                  (mll2.PRODUCT_CODE is not null) and
                  (mll2.ANNUL_EMPLOYEE_CODE is null)
              )
            ),
            0
          )
        ) as WASTE_SD_TOTAL_PRICE,
          
        Decode(ModelIsFinished, 0,  
          Coalesce(
            ( ( select
                  Sum(
                    Greatest(
                      ( ( ( select
                              Sum(
                                sd.QUANTITY -
                                ( select
                                    Coalesce(Sum(sd2.QUANTITY), 0)
                                  from
                                    STORE_DEALS sd2
                                  where
                                    (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                                    (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                                    (sd2.IN_OUT = 1) and
                                    (sd2.BND_PROCESS_CODE = 50) and
                                    (sd2.STORNO_EMPLOYEE_CODE is null)
                                )
                              )
                            from
                              STORE_DEALS sd
                            where
                              (mll2.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH_CODE) and
                              (mll2.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and
                              (sd.IN_OUT = -1) and
                              (sd.STORNO_EMPLOYEE_CODE is null)
                          ) /
                          ( select
                              p.TECH_MEASURE_COEF
                            from
                              PRODUCTS p
                            where
                              (mll2.PRODUCT_CODE = p.PRODUCT_CODE)
                          )
                        ) -
                        ( mll2.LINE_DETAIL_TECH_QUANTITY *
                          mll2.PRODUCT_TECH_QUANTITY 
                        )
                      ),
                      0
                    ) *
                    ( select
                        Sum(sd.TOTAL_PRICE * cr.FIXING) / Sum(sd.QUANTITY)
                      from
                        STORE_DEALS sd,
                        CURRENCY_RATES cr
                      where
                        (mll2.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH_CODE) and
                        (mll2.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and
                        (sd.CURRENCY_CODE = cr.CURRENCY_CODE(+)) and
                        (sd.STORE_DEAL_DATE = cr.RATE_DATE(+)) and
                        (sd.IN_OUT = -1) and
                        (sd.STORNO_EMPLOYEE_CODE is null)
                    )
                  )
                from
                  MATERIAL_LIST_LINES mll2
                where
                  (mll2.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
                  (mll2.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
                  (mll2.NO_AS_FORMATED_TEXT like (Decode(mll.NO_1, 0, '', mll.NO_AS_FORMATED_TEXT) || '%')) and
                  ( ( (mll2.NO_AS_FORMATED_TEXT = mll.NO_AS_FORMATED_TEXT) and 
                      (mll2.FORK_NO = mll.FORK_NO) ) or
                    ( (mll2.NO_AS_FORMATED_TEXT <> mll.NO_AS_FORMATED_TEXT) and
                      (mll.FORK_NO = 0) )
                  ) and
                  (mll2.IS_WASTE_FORK = 0) and
                  (mll2.PRODUCT_CODE is not null) and
                  (mll2.ANNUL_EMPLOYEE_CODE is null)
              )
            ),
            0
          )
        ) as NK_SD_TOTAL_PRICE
          
      into
        OMTotalDetailTechQty,
        MllSinglePrice,
        ProductsAllTotalPrice,
        WasteSdTotalPrice,
        NkSdTotalPrice
      from
        OPERATION_MOVEMENTS om,
        MLMS_OPERATIONS mlmso,
        ML_MODEL_STAGES mlms,
        MATERIAL_LIST_LINES mll
      where
        (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
        (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
          
        (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
        (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
          
        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
        
        (om.OM_BRANCH_CODE = OMBranchCode) and
        (om.OM_CODE = OMCode);
      
      
      if (ModelIsFinished = 1) then    
          
        if (IsWasteMovement = 1) then
          OperationDetailTechQty:= OperationNonWasteDetailTechQty + OperationWasteDetailTechQty;
        else
          OperationDetailTechQty:= OperationNonWasteDetailTechQty;
        end if;
          
        if (OperationDetailTechQty = 0) then
          Result:= 0;
        else
          Result:= 
            (OMTotalDetailTechQty / OperationDetailTechQty) * ProductsAllTotalPrice;
        end if;
          
      else
        
        Result:= (OMTotalDetailTechQty * MllSinglePrice);
            
        if (LineDetailTechQty - LinePriorWasteDetailTechQty <> 0) then
          Result:= Result +
            ( (OMTotalDetailTechQty / (LineDetailTechQty - LinePriorWasteDetailTechQty)) * 
              (WasteSdTotalPrice +  NkSdTotalPrice) );
        end if;
          
      end if;
      
    end if;
    
    return(Result);

  end;
  
  function GetMllComplectationPercent(MllObjectBranchCode in Number, MllObjectCode in Number) return Number is
    Result Number;
  begin

    select
      Min(x.MOVED_PERCENT)
      
    into
      Result
      
    from
      ( select
          ( ( select
                Coalesce(Sum(mm3.DETAIL_TECH_QUANTITY), 0) as MOVED_QUANTITY
              from
                MODEL_MOVEMENTS mm3,
                ML_MODEL_STAGES mlms3,
                MATERIAL_LIST_LINES mll3
              where
                (mm3.FROM_MLMS_OBJECT_BRANCH_CODE = mlms3.MLMS_OBJECT_BRANCH_CODE) and
                (mm3.FROM_MLMS_OBJECT_CODE = mlms3.MLMS_OBJECT_CODE) and
                (mlms3.MLL_OBJECT_BRANCH_CODE = mll3.MLL_OBJECT_BRANCH_CODE) and
                (mlms3.MLL_OBJECT_CODE = mll3.MLL_OBJECT_CODE) and
                (mll3.ML_OBJECT_BRANCH_CODE = mll2.ML_OBJECT_BRANCH_CODE) and
                (mll3.ML_OBJECT_CODE = mll2.ML_OBJECT_CODE) and
                (mll3.NO_AS_TEXT = mll2.NO_AS_TEXT) and
                (mll3.ANNUL_EMPLOYEE_CODE is null) and
                (mlms3.TREATMENT_WORKDAYS > 0) and
                (mlms3.OUTGOING_WORKDAYS > 0) and
                (not exists
                  ( select
                      1
                    from
                      ML_MODEL_STAGES mlms4
                    where
                      (mlms4.MLL_OBJECT_BRANCH_CODE = mlms3.MLL_OBJECT_BRANCH_CODE) and
                      (mlms4.MLL_OBJECT_CODE = mlms3.MLL_OBJECT_CODE) and
                      (mlms4.ML_MODEL_STAGE_NO > mlms3.ML_MODEL_STAGE_NO) and
                      (mlms4.OUTGOING_WORKDAYS > 0) and
                      (mlms4.TREATMENT_WORKDAYS > 0)                          
                  )
                ) and
                (mm3.TO_DEPT_CODE is null) and
                (mm3.STORNO_EMPLOYEE_CODE is null)
            ) /
            mll2.TOTAL_DETAIL_TECH_QUANTITY
          ) as MOVED_PERCENT
           
        from
          MATERIAL_LIST_LINES mll2
          
        where
          (mll2.PARENT_MLL_OBJECT_BRANCH_CODE = MllObjectBranchCode) and
          (mll2.PARENT_MLL_OBJECT_CODE = MllObjectCode) and
          (mll2.FORK_NO = 0)
      ) x
    ;
  
    if (MiscUtils.LargeZero(1 - Result) = 0) then
      Result:= 1;
    end if;
  
    return(Result);

  end;
  

  procedure DeleteXModel(MlObjectBranchCode in Number, MlObjectCode in Number) is

    SaleObjectBranchCode Number;
    SaleObjectCode Number;

  begin

    select
      ml.BND_PROCESS_OBJECT_BRANCH_CODE, 
      ml.BND_PROCESS_OBJECT_CODE
    into
      SaleObjectBranchCode,
      SaleObjectCode
    from
      MATERIAL_LISTS ml
    where
      (ml.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
      (ml.ML_OBJECT_CODE = MlObjectCode);
  
  
    update
      SALES_FOR_EDIT s
    set
      s.PRODUCTION_START_PLAN_DATE = null
    where
      (s.SALE_OBJECT_BRANCH_CODE = SaleObjectBranchCode) and
      (s.SALE_OBJECT_CODE = SaleObjectCode);
      
          
    delete
      MATERIAL_LISTS_FOR_EDIT ml
    where
      (ml.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and 
      (ml.ML_OBJECT_CODE = MlObjectCode);
      
      
    update
      PLANNED_STORE_DEALS_FOR_EDIT psd
    set
      psd.DEPT_CODE = null
    where
      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = SaleObjectBranchCode) and
      (psd.BND_PROCESS_OBJECT_CODE = SaleObjectCode);
      
  end;
  
  procedure InsertImportedSpecStages(
    SpecProductCode in Number,
    SpecModelVariantNo in Number,
    SpecLineCode in Number,
    NewSpecProductCode in Number,
    NewSpecModelVariantNo in Number,
    NewSpecLineCode in Number,
    SpecLineLastStageNo in Number,
    LastStageDeptCode in Number,
    ParentFirstStageTreatmentWds in Number,
    LocalBranchCode in Number
  ) is
  
    cursor SpecStages is
      select
        SPEC_LINE_STAGE_CODE,
        SPEC_LINE_STAGE_NO,
        Decode(SPEC_LINE_STAGE_NO, SpecLineLastStageNo, Coalesce(LastStageDeptCode, DEPT_CODE), DEPT_CODE) as DEPT_CODE,
        Decode(SPEC_LINE_STAGE_NO, SpecLineLastStageNo, 0, TREATMENT_WORKDAYS) as TREATMENT_WORKDAYS,
        Decode(SPEC_LINE_STAGE_NO, SpecLineLastStageNo, 0, TOTAL_TREATMENT_WORKDAYS) as TOTAL_TREATMENT_WORKDAYS,
        Decode(SPEC_LINE_STAGE_NO,
               SpecLineLastStageNo, 0,
               SpecLineLastStageNo - 1, Least(Coalesce(ParentFirstStageTreatmentWds, 9999999999), OUTGOING_WORKDAYS),
               OUTGOING_WORKDAYS) as OUTGOING_WORKDAYS,
        IS_AUTO_MOVEMENT,
        SMVS_TYPE_CODE,
        DOC_BRANCH_CODE,
        DOC_CODE,
        TREATMENT_WORKDAYS as REAL_TREATMENT_WORKDAYS,
        OUTGOING_WORKDAYS as REAL_OUTGOING_WORKDAYS,
        EXTERNAL_WORK_PRICE,
        Max(SPEC_LINE_STAGE_NO) over () as LAST_SPEC_LINE_STAGE_NO
      from
        SPEC_MODEL_VARIANT_STAGES
      where
        (SPEC_PRODUCT_CODE = SpecProductCode) and
        (SPEC_MODEL_VARIANT_NO = SpecModelVariantNo) and
        (SPEC_LINE_CODE = SpecLineCode) and
        (SMVS_TYPE_CODE <> 2)
      order by
        SPEC_LINE_STAGE_NO desc
      ;

    StageCode Number;      
    StageNo Number;
    DocCode Number;
    ProductCode Number;
    
  begin
    select
      Count(*)
    into
      StageCode
    from
      SPEC_MODEL_VARIANT_STAGES smvs
    where
      (smvs.SPEC_PRODUCT_CODE = SpecProductCode) and
      (smvs.SPEC_MODEL_VARIANT_NO = SpecModelVariantNo) and
      (smvs.SPEC_LINE_CODE = SpecLineCode) and
      ( (smvs.SMVS_TYPE_CODE <> 2) or
        (smvs.SPEC_LINE_STAGE_NO = SpecLineLastStageNo) );
      
    select
      Max(sl.PRODUCT_CODE)
    into
      ProductCode
    from
      SPEC_LINES sl
    where
      (sl.SPEC_PRODUCT_CODE = SpecProductCode) and
      (sl.SPEC_LINE_CODE = SpecLineCode);
      
    if ProductCode is not null then
      StageNo:= StageCode - 1;
    else
      StageNo:= StageCode;
    end if;
    
    for SpecStage in SpecStages loop
    
      if SpecStage.DOC_CODE is null then
        DocCode:= null;
      else
        DocCode:= MiscUtils.NewDocCodeLike(LocalBranchCode, SpecStage.DOC_BRANCH_CODE, SpecStage.DOC_CODE);
      end if;
    
      insert into SMVS_FOR_EDIT
      (
        SPEC_PRODUCT_CODE,
        SPEC_MODEL_VARIANT_NO,
        SPEC_LINE_CODE,
        SPEC_LINE_STAGE_CODE,
        SPEC_LINE_STAGE_NO,
        DEPT_CODE,
        TREATMENT_WORKDAYS,
        TOTAL_TREATMENT_WORKDAYS,
        OUTGOING_WORKDAYS,
        IS_AUTO_MOVEMENT,
        SMVS_TYPE_CODE,
        DOC_BRANCH_CODE,
        DOC_CODE,
        EXTERNAL_WORK_PRICE
      )
      values
      (
        NewSpecProductCode,
        NewSpecModelVariantNo,
        NewSpecLineCode,
        StageCode,
        StageNo,
        SpecStage.DEPT_CODE,
        SpecStage.TREATMENT_WORKDAYS,
        SpecStage.TOTAL_TREATMENT_WORKDAYS,
        SpecStage.OUTGOING_WORKDAYS,
        SpecStage.IS_AUTO_MOVEMENT,
        SpecStage.SMVS_TYPE_CODE,
        Nvl2(DocCode, LocalBranchCode, null),
        DocCode,
        SpecStage.EXTERNAL_WORK_PRICE
      );
    
      if SpecStage.DOC_CODE is not null then
        insert into DOC_ITEMS_FOR_EDIT
        (
          DOC_BRANCH_CODE,
          DOC_CODE,
          DOC_ITEM_CODE,
          DOC_ITEM_NO,
          DOC_ITEM_NAME,
          DOC_ITEM_TYPE_CODE,
          IS_INACTIVE,
          NOTES,
          CREATE_EMPLOYEE_CODE,
          CREATE_DATE,
          CREATE_TIME, 
          CHANGE_EMPLOYEE_CODE, 
          CHANGE_DATE,
          CHANGE_TIME,
          DEVELOP_EMPLOYEE_CODE,
          DEVELOP_DATE,
          DEVELOP_TIME,
          AUTHORIZE_EMPLOYEE_CODE,
          AUTHORIZE_DATE,
          AUTHORIZE_TIME,
          APPROVE_EMPLOYEE_CODE,
          APPROVE_DATE,
          APPROVE_TIME,
          DOC_ITEM_STORAGE_TYPE_CODE, 
          FILE_NAME, 
          RELATIVE_PATH,
          STORED_FILE_BRANCH_CODE,
          STORED_FILE_CODE,
          IS_MIRRORED,
          MIRRORED_FILE_NAME,
          MIRRORED_RELATIVE_PATH,
          FILE_CHANGE_EMPLOYEE_CODE,
          FILE_CHANGE_DATE,
          FILE_CHANGE_TIME
        )
        select
          LocalBranchCode as DOC_BRANCH_CODE,
          DocCode as DOC_CODE,
          di.DOC_ITEM_CODE,
          di.DOC_ITEM_NO,
          di.DOC_ITEM_NAME,
          di.DOC_ITEM_TYPE_CODE,
          di.IS_INACTIVE,
          di.NOTES,
          di.CREATE_EMPLOYEE_CODE,
          di.CREATE_DATE,
          di.CREATE_TIME,
          di.CHANGE_EMPLOYEE_CODE,
          di.CHANGE_DATE,
          di.CHANGE_TIME,
          di.DEVELOP_EMPLOYEE_CODE,
          di.DEVELOP_DATE,
          di.DEVELOP_TIME,
          di.AUTHORIZE_EMPLOYEE_CODE,
          di.AUTHORIZE_DATE,
          di.AUTHORIZE_TIME,
          di.APPROVE_EMPLOYEE_CODE,
          di.APPROVE_DATE,
          di.APPROVE_TIME,
          di.DOC_ITEM_STORAGE_TYPE_CODE,
          di.FILE_NAME,
          di.RELATIVE_PATH,
          di.STORED_FILE_BRANCH_CODE,
          di.STORED_FILE_CODE,
          di.IS_MIRRORED,
          di.MIRRORED_FILE_NAME,
          di.MIRRORED_RELATIVE_PATH,
          di.FILE_CHANGE_EMPLOYEE_CODE,
          di.FILE_CHANGE_DATE,
          di.FILE_CHANGE_TIME
        from
          DOC_ITEMS di
        where
          (di.DOC_BRANCH_CODE = SpecStage.DOC_BRANCH_CODE) and
          (di.DOC_CODE = SpecStage.DOC_CODE);
          
        insert into DOC_ITEM_SYS_ROLES
        (
          DOC_BRANCH_CODE,
          DOC_CODE,
          DOC_ITEM_CODE,
          DOC_ITEM_SYS_ROLE_CODE,
          SYS_ROLE_CODE,
          DOC_ITEM_ACCESS_LEVEL_CODE
        )
        select
          LocalBranchCode as DOC_BRANCH_CODE,
          DocCode as DOC_CODE,
          disr.DOC_ITEM_CODE,
          disr.DOC_ITEM_SYS_ROLE_CODE,
          disr.SYS_ROLE_CODE,
          disr.DOC_ITEM_ACCESS_LEVEL_CODE
        from
          DOC_ITEM_SYS_ROLES disr
        where
          (disr.DOC_BRANCH_CODE = SpecStage.DOC_BRANCH_CODE) and
          (disr.DOC_CODE = SpecStage.DOC_CODE);

      end if;

      if (SpecStage.SPEC_LINE_STAGE_NO <> SpecStage.LAST_SPEC_LINE_STAGE_NO) then
        for x in
          (
            select
              NewSpecProductCode as SPEC_PRODUCT_CODE,
              NewSpecModelVariantNo as SPEC_MODEL_VARIANT_NO,
              NewSpecLineCode as SPEC_LINE_CODE,
              StageCode as SPEC_LINE_STAGE_CODE,
              SMVS_OPERATION_CODE,
              SMVS_OPERATION_NO,
              SMVS_OPERATION_VARIANT_NO,
              OPERATION_TYPE_CODE,
              DEPT_CODE,
              SETUP_PROFESSION_CODE,
              SETUP_EFFORT_COEF,
              SETUP_HOUR_TECH_QUANTITY,
              SETUP_COUNT,
              PROFESSION_CODE,
              EFFORT_COEF,
              HOUR_TECH_QUANTITY,
              PROGRAM_TOOL_PRODUCT_CODE,
              SPECIFIC_TOOL_PRODUCT_CODE,
              TYPICAL_TOOL_PRODUCT_CODE,
              PROGRAM_TOOL_REQUIREMENT_CODE,
              SPECIFIC_TOOL_REQUIREMENT_CODE,
              TYPICAL_TOOL_REQUIREMENT_CODE,
              PROGRAM_TOOL_IS_COMPLETE,
              SPECIFIC_TOOL_IS_COMPLETE,
              TYPICAL_TOOL_IS_COMPLETE,
              NOTES,
              SPECIFIC_TOOL_DETAIL_TECH_QTY,
              TYPICAL_TOOL_DETAIL_TECH_QTY,
              TREATMENT_BEGIN_WORKDAY_NO,
              TREATMENT_WORKDAYS,
              HAS_SPECIAL_CONTROL,
              IS_AUTO_MOVEMENT,
              IS_AUTO_SETUP,              
              DOC_BRANCH_CODE,
              DOC_CODE
            from
              SMVS_OPERATIONS
            where
              (SPEC_PRODUCT_CODE = SpecProductCode) and
              (SPEC_MODEL_VARIANT_NO = SpecModelVariantNo) and
              (SPEC_LINE_CODE = SpecLineCode) and
              (SPEC_LINE_STAGE_CODE = SpecStage.SPEC_LINE_STAGE_CODE) and
              (SMVS_OPERATION_VARIANT_NO >= 0)
            order by
              SMVS_OPERATION_NO,
              SMVS_OPERATION_VARIANT_NO
          )
        loop
          insert into SMVS_OPERATIONS_FOR_EDIT
          (
            SPEC_PRODUCT_CODE,
            SPEC_MODEL_VARIANT_NO,
            SPEC_LINE_CODE,
            SPEC_LINE_STAGE_CODE,
            SMVS_OPERATION_CODE,
            SMVS_OPERATION_NO,
            SMVS_OPERATION_VARIANT_NO,
            OPERATION_TYPE_CODE,
            DEPT_CODE,
            SETUP_PROFESSION_CODE,
            SETUP_EFFORT_COEF,
            SETUP_HOUR_TECH_QUANTITY,
            SETUP_COUNT,
            PROFESSION_CODE,
            EFFORT_COEF,
            HOUR_TECH_QUANTITY,
            PROGRAM_TOOL_PRODUCT_CODE,
            SPECIFIC_TOOL_PRODUCT_CODE,
            TYPICAL_TOOL_PRODUCT_CODE,
            PROGRAM_TOOL_REQUIREMENT_CODE,
            SPECIFIC_TOOL_REQUIREMENT_CODE,
            TYPICAL_TOOL_REQUIREMENT_CODE,
            PROGRAM_TOOL_IS_COMPLETE,
            SPECIFIC_TOOL_IS_COMPLETE,
            TYPICAL_TOOL_IS_COMPLETE,
            NOTES,
            SPECIFIC_TOOL_DETAIL_TECH_QTY,
            TYPICAL_TOOL_DETAIL_TECH_QTY,
            TREATMENT_BEGIN_WORKDAY_NO,
            TREATMENT_WORKDAYS,
            HAS_SPECIAL_CONTROL,
            IS_AUTO_MOVEMENT,
            IS_AUTO_SETUP,              
            DOC_BRANCH_CODE,
            DOC_CODE
          )
          values
          (
            x.SPEC_PRODUCT_CODE,
            x.SPEC_MODEL_VARIANT_NO,
            x.SPEC_LINE_CODE,
            x.SPEC_LINE_STAGE_CODE,
            x.SMVS_OPERATION_CODE,
            x.SMVS_OPERATION_NO,
            x.SMVS_OPERATION_VARIANT_NO,
            x.OPERATION_TYPE_CODE,
            x.DEPT_CODE,
            x.SETUP_PROFESSION_CODE,
            x.SETUP_EFFORT_COEF,
            x.SETUP_HOUR_TECH_QUANTITY,
            x.SETUP_COUNT,
            x.PROFESSION_CODE,
            x.EFFORT_COEF,
            x.HOUR_TECH_QUANTITY,
            x.PROGRAM_TOOL_PRODUCT_CODE,
            x.SPECIFIC_TOOL_PRODUCT_CODE,
            x.TYPICAL_TOOL_PRODUCT_CODE,
            x.PROGRAM_TOOL_REQUIREMENT_CODE,
            x.SPECIFIC_TOOL_REQUIREMENT_CODE,
            x.TYPICAL_TOOL_REQUIREMENT_CODE,
            x.PROGRAM_TOOL_IS_COMPLETE,
            x.SPECIFIC_TOOL_IS_COMPLETE,
            x.TYPICAL_TOOL_IS_COMPLETE,
            x.NOTES,
            x.SPECIFIC_TOOL_DETAIL_TECH_QTY,
            x.TYPICAL_TOOL_DETAIL_TECH_QTY,
            x.TREATMENT_BEGIN_WORKDAY_NO,
            x.TREATMENT_WORKDAYS,
            x.HAS_SPECIAL_CONTROL,
            x.IS_AUTO_MOVEMENT,
            x.IS_AUTO_SETUP,              
            LocalBranchCode,
            Decode(x.SMVS_OPERATION_VARIANT_NO,
              0, MiscUtils.NewDocCodeLike(LocalBranchCode, x.DOC_BRANCH_CODE, x.DOC_CODE),
              (
                select
                  smvso2.DOC_CODE
                from
                  SMVS_OPERATIONS smvso2
                where
                  (smvso2.SPEC_PRODUCT_CODE = x.SPEC_PRODUCT_CODE) and
                  (smvso2.SPEC_MODEL_VARIANT_NO = x.SPEC_MODEL_VARIANT_NO) and
                  (smvso2.SPEC_LINE_CODE = x.SPEC_LINE_CODE) and
                  (smvso2.SPEC_LINE_STAGE_CODE = x.SPEC_LINE_STAGE_CODE) and
                  (smvso2.SMVS_OPERATION_NO = x.SMVS_OPERATION_NO) and
                  (smvso2.SMVS_OPERATION_VARIANT_NO = 0)
              )
            )
          );            
        end loop;

        -- iio-ta
        insert into DOC_ITEMS_FOR_EDIT
        (
          DOC_BRANCH_CODE,
          DOC_CODE,
          DOC_ITEM_CODE,
          DOC_ITEM_NO,
          DOC_ITEM_NAME,
          DOC_ITEM_TYPE_CODE,
          IS_INACTIVE,
          NOTES,
          CREATE_EMPLOYEE_CODE,
          CREATE_DATE,
          CREATE_TIME,
          CHANGE_EMPLOYEE_CODE,
          CHANGE_DATE,
          CHANGE_TIME,
          DEVELOP_EMPLOYEE_CODE,
          DEVELOP_DATE,
          DEVELOP_TIME,
          AUTHORIZE_EMPLOYEE_CODE,
          AUTHORIZE_DATE,
          AUTHORIZE_TIME,
          APPROVE_EMPLOYEE_CODE,
          APPROVE_DATE,
          APPROVE_TIME,
          DOC_ITEM_STORAGE_TYPE_CODE,
          FILE_NAME,
          RELATIVE_PATH,
          STORED_FILE_BRANCH_CODE,
          STORED_FILE_CODE,
          IS_MIRRORED,
          MIRRORED_FILE_NAME,
          MIRRORED_RELATIVE_PATH,
          FILE_CHANGE_EMPLOYEE_CODE,
          FILE_CHANGE_DATE,
          FILE_CHANGE_TIME
        )
        select
          smvso2.DOC_BRANCH_CODE,
          smvso2.DOC_CODE,
          di.DOC_ITEM_CODE,
          di.DOC_ITEM_NO,
          di.DOC_ITEM_NAME,
          di.DOC_ITEM_TYPE_CODE,
          di.IS_INACTIVE,
          di.NOTES,
          di.CREATE_EMPLOYEE_CODE,
          di.CREATE_DATE,
          di.CREATE_TIME,
          di.CHANGE_EMPLOYEE_CODE,
          di.CHANGE_DATE,
          di.CHANGE_TIME,
          di.DEVELOP_EMPLOYEE_CODE,
          di.DEVELOP_DATE,
          di.DEVELOP_TIME,
          di.AUTHORIZE_EMPLOYEE_CODE,
          di.AUTHORIZE_DATE,
          di.AUTHORIZE_TIME,
          di.APPROVE_EMPLOYEE_CODE,
          di.APPROVE_DATE,
          di.APPROVE_TIME,
          di.DOC_ITEM_STORAGE_TYPE_CODE,
          di.FILE_NAME,
          di.RELATIVE_PATH,
          di.STORED_FILE_BRANCH_CODE,
          di.STORED_FILE_CODE,
          di.IS_MIRRORED,
          di.MIRRORED_FILE_NAME,
          di.MIRRORED_RELATIVE_PATH,
          di.FILE_CHANGE_EMPLOYEE_CODE,
          di.FILE_CHANGE_DATE,
          di.FILE_CHANGE_TIME
        from
          SMVS_OPERATIONS smvso,
          SMVS_OPERATIONS smvso2,
          DOC_ITEMS di
        where
          (smvso.SPEC_PRODUCT_CODE = SpecProductCode) and
          (smvso.SPEC_MODEL_VARIANT_NO = SpecModelVariantNo) and
          (smvso.SPEC_LINE_CODE = SpecLineCode) and
          (smvso.SPEC_LINE_STAGE_CODE = SpecStage.SPEC_LINE_STAGE_CODE) and
          (smvso.SMVS_OPERATION_VARIANT_NO = 0) and
      
          (smvso2.SPEC_PRODUCT_CODE = NewSpecProductCode) and
          (smvso2.SPEC_MODEL_VARIANT_NO = NewSpecModelVariantNo) and
          (smvso2.SPEC_LINE_CODE = NewSpecLineCode) and
          (smvso2.SPEC_LINE_STAGE_CODE = StageCode) and
          (smvso2.SMVS_OPERATION_CODE = smvso.SMVS_OPERATION_CODE) and
      
          (di.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and
          (di.DOC_CODE = smvso.DOC_CODE)
        ;
        
        insert into DOC_ITEM_SYS_ROLES
        (
          DOC_BRANCH_CODE,
          DOC_CODE,
          DOC_ITEM_CODE,
          DOC_ITEM_SYS_ROLE_CODE,
          SYS_ROLE_CODE,
          DOC_ITEM_ACCESS_LEVEL_CODE
        )
        select
          smvso2.DOC_BRANCH_CODE,
          smvso2.DOC_CODE,
          disr.DOC_ITEM_CODE,
          disr.DOC_ITEM_SYS_ROLE_CODE,
          disr.SYS_ROLE_CODE,
          disr.DOC_ITEM_ACCESS_LEVEL_CODE
        from
          SMVS_OPERATIONS smvso,
          SMVS_OPERATIONS smvso2,
          DOC_ITEM_SYS_ROLES disr
        where
          (smvso.SPEC_PRODUCT_CODE = SpecProductCode) and
          (smvso.SPEC_MODEL_VARIANT_NO = SpecModelVariantNo) and
          (smvso.SPEC_LINE_CODE = SpecLineCode) and
          (smvso.SPEC_LINE_STAGE_CODE = SpecStage.SPEC_LINE_STAGE_CODE) and
          (smvso.SMVS_OPERATION_VARIANT_NO = 0) and
      
          (smvso2.SPEC_PRODUCT_CODE = NewSpecProductCode) and
          (smvso2.SPEC_MODEL_VARIANT_NO = NewSpecModelVariantNo) and
          (smvso2.SPEC_LINE_CODE = NewSpecLineCode) and
          (smvso2.SPEC_LINE_STAGE_CODE = StageCode) and
          (smvso2.SMVS_OPERATION_CODE = smvso.SMVS_OPERATION_CODE) and
      
          (disr.DOC_BRANCH_CODE = smvso.DOC_BRANCH_CODE) and
          (disr.DOC_CODE = smvso.DOC_CODE);

      end if;
      
      StageCode:= StageCode - 1;
      StageNo:= StageNo - 1;

    end loop;
  end;
  
  function GetMMReceivedFor(FromMlmsObjectBranchCode in Number, FromMlmsObjectCode in Number,
    IgnoreAutoMovements Number) return Number is
    Result Number;
  begin
    select
      Coalesce(
        case 
          when (mll2.PRODUCT_CODE is null) and 
               (mlms2.ML_MODEL_STAGE_NO =
                 (
                   select
                     Coalesce(Min(mlms8.ML_MODEL_STAGE_NO), mlms2.ML_MODEL_STAGE_NO)
                   from
                     ML_MODEL_STAGES mlms8
                   where
                     (mlms8.MLL_OBJECT_BRANCH_CODE = mlms2.MLL_OBJECT_BRANCH_CODE) and
                     (mlms8.MLL_OBJECT_CODE = mlms2.MLL_OBJECT_CODE) and
                     (mlms8.TREATMENT_WORKDAYS > 0) and
                     ( (IgnoreAutoMovements = 1) or
                       (mlms8.IS_AUTO_MOVEMENT = 0) )
                 )
               ) then
            (
              select
                Decode(MiscUtils.LargeZero(1-Min(x.COMPLETED_PART)), 0, 1, Min(x.COMPLETED_PART)) as MIN_COMPLETED_PART

              from
                (
                  select
                    Coalesce(Sum(exex.COMPLETED_TECH_QUANTITY) / Sum(exex.TOTAL_DETAIL_TECH_QUANTITY), 0) as COMPLETED_PART

                  from
                    (
                      select
                        ex.*,
                        (Max(ex.ML_MODEL_STAGE_NO) over (partition by ex.MLL_OBJECT_BRANCH_CODE, ex.MLL_OBJECT_CODE)) as MAX_ML_MODEL_STAGE_NO

                      from
                        (
                          select
                            mll.MLL_OBJECT_BRANCH_CODE,
                            mll.MLL_OBJECT_CODE,
                            Coalesce(mll.FORK_0_MLL_OBJECT_BRANCH_CODE, mll.MLL_OBJECT_BRANCH_CODE) as FORK_0_MLL_OBJECT_BRANCH_CODE,
                            Coalesce(mll.FORK_0_MLL_OBJECT_CODE, mll.MLL_OBJECT_CODE) as FORK_0_MLL_OBJECT_CODE,
                            mlms.ML_MODEL_STAGE_NO,
                            mll.TOTAL_DETAIL_TECH_QUANTITY,
                            (
                              select
                                Sum(mm.DETAIL_TECH_QUANTITY)
                              from
                                MODEL_MOVEMENTS mm
                              where
                                (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
                                (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
                                (mm.STORNO_EMPLOYEE_CODE is null) and
                                (mm.TO_DEPT_CODE is null) 
                            ) as COMPLETED_TECH_QUANTITY
                      
                          from
                            MATERIAL_LIST_LINES mll20,
                            MATERIAL_LIST_LINES mll,
                            ML_MODEL_STAGES mlms
                      
                          where
                            (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
                            (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
                            
                            ( (mll20.MLL_OBJECT_BRANCH_CODE, mll20.MLL_OBJECT_CODE) =
                              (
                                select
                                  mlms20.MLL_OBJECT_BRANCH_CODE,
                                  mlms20.MLL_OBJECT_CODE
                                from
                                  ML_MODEL_STAGES mlms20
                                where
                                  (mlms20.MLMS_OBJECT_BRANCH_CODE = FromMlmsObjectBranchCode) and
                                  (mlms20.MLMS_OBJECT_CODE = FromMlmsObjectCode)
                              )
                            ) and

                            (mll.ML_OBJECT_BRANCH_CODE = mll20.ML_OBJECT_BRANCH_CODE) and
                            (mll.ML_OBJECT_CODE = mll20.ML_OBJECT_CODE) and
                            (mll.NO_AS_FORMATED_TEXT like Decode(mll20.NO_1, 0, '', mll20.NO_AS_FORMATED_TEXT) || '%') and
                            (mll.NO_AS_FORMATED_TEXT <> mll20.NO_AS_FORMATED_TEXT) and
                    
                            (mlms.TREATMENT_WORKDAYS > 0) and

                            ( (IgnoreAutoMovements = 1) or
                              (mlms.IS_AUTO_MOVEMENT = 0) or
                              (mlms.ML_MODEL_STAGE_NO = 0) or
                              ( (mlms.IS_AUTO_MOVEMENT = 1) and
                                not exists(
                                  select
                                    1
                                  from
                                    ML_MODEL_STAGES mlms5
                                  where
                                    (mlms5.MLMS_OBJECT_BRANCH_CODE = FromMlmsObjectBranchCode) and
                                    (mlms5.MLMS_OBJECT_CODE = FromMlmsObjectCode) and
                                    (mlms5.DEPT_CODE = mlms.DEPT_CODE)
                                )
                              )
                            )
                        ) ex
                      ) exex
            
                  where
                    (exex.ML_MODEL_STAGE_NO = exex.MAX_ML_MODEL_STAGE_NO)
              
                  group by
                    exex.FORK_0_MLL_OBJECT_BRANCH_CODE,
                    exex.FORK_0_MLL_OBJECT_CODE
                ) x
            ) * mll2.LINE_DETAIL_TECH_QUANTITY
      
        else
          (
            select
              (
                select
                  Sum(mm.DETAIL_TECH_QUANTITY)
                from
                  MODEL_MOVEMENTS mm
                where
                  (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
                  (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
                  (mm.STORNO_EMPLOYEE_CODE is null) and
                  (mm.TO_DEPT_CODE is null) 
              ) as COMPLETED_TECH_QUANTITY              
              
            from
              ML_MODEL_STAGES mlms,
              ML_MODEL_STAGES fmlms        
            where
              (mlms.MLL_OBJECT_BRANCH_CODE = fmlms.MLL_OBJECT_BRANCH_CODE) and
              (mlms.MLL_OBJECT_CODE = fmlms.MLL_OBJECT_CODE) and
              (mlms.ML_MODEL_STAGE_NO = 
                Coalesce(
                  (
                    select
                      Max(mlms6.ML_MODEL_STAGE_NO)
                    from
                      ML_MODEL_STAGES mlms6,
                      ML_MODEL_STAGES fmlms2

                    where
                      (mlms6.MLL_OBJECT_BRANCH_CODE = fmlms2.MLL_OBJECT_BRANCH_CODE) and
                      (mlms6.MLL_OBJECT_CODE = fmlms2.MLL_OBJECT_CODE) and
                      (mlms6.ML_MODEL_STAGE_NO < fmlms2.ML_MODEL_STAGE_NO) and

                      (fmlms2.MLMS_OBJECT_BRANCH_CODE = FromMlmsObjectBranchCode) and
                      (fmlms2.MLMS_OBJECT_CODE = FromMlmsObjectCode) and

                      ( (IgnoreAutoMovements = 1) or
                        (mlms6.IS_AUTO_MOVEMENT = 0) or
                        not exists(
                          select
                            1
                          from
                            ML_MODEL_STAGES mlms7
                          where
                            (mlms7.MLMS_OBJECT_BRANCH_CODE = FromMlmsObjectBranchCode) and
                            (mlms7.MLMS_OBJECT_CODE = FromMlmsObjectCode) and
                            (mlms7.DEPT_CODE = mlms6.DEPT_CODE)
                        )
                      )
                  ),
                0)  
              ) and

              (fmlms.MLMS_OBJECT_BRANCH_CODE = FromMlmsObjectBranchCode) and
              (fmlms.MLMS_OBJECT_CODE = FromMlmsObjectCode)
          )
    
        end, 
      0) as RECEIVED_FOR_DETAIL_QUANTITY

    into
      Result
      
    from
      ML_MODEL_STAGES mlms2,
      MATERIAL_LIST_LINES mll2

    where
      (mlms2.MLL_OBJECT_BRANCH_CODE = mll2.MLL_OBJECT_BRANCH_CODE) and
      (mlms2.MLL_OBJECT_CODE = mll2.MLL_OBJECT_CODE) and

      (mlms2.MLMS_OBJECT_BRANCH_CODE = FromMlmsObjectBranchCode) and
      (mlms2.MLMS_OBJECT_CODE = FromMlmsObjectCode)
    ;

    return(Result);
  end;


  function GetMlmsRcvdForDetailTechQty(MlmsObjectBranchCode in Number, MlmsObjectCode in Number) return Number is
    
    Result Number;
    
  begin

    select
      Sum(ModelUtils.GetMlmsoRcvdForDetailTechQty(mlmso.MLMSO_OBJECT_BRANCH_CODE, mlmso.MLMSO_OBJECT_CODE))
    into
      Result    
    from
      MLMS_OPERATIONS mlmso
    where
      (mlmso.MLMS_OBJECT_BRANCH_CODE = MlmsObjectBranchCode) and
      (mlmso.MLMS_OBJECT_CODE = MlmsObjectCode) and

      (mlmso.IS_ACTIVE = 1) and
      
      (not exists
        ( select
            1
          from
            MLMS_OPERATIONS mlmso2
          where
            (mlmso2.MLMS_OBJECT_BRANCH_CODE = MlmsObjectBranchCode) and
            (mlmso2.MLMS_OBJECT_CODE = MlmsObjectCode) and
            (mlmso2.MLMS_OPERATION_NO < mlmso.MLMS_OPERATION_NO)
        )
      );

    return(Result);
  end;
  

  function GetMlmsoRcvdForDetailTechQty(MlmsoObjectBranchCode in Number, MlmsoObjectCode in Number) return Number is
    
    Result Number;
    
  begin

    select
      /* ModelUtils.GetMlmsoRcvdForDetailTechQty */
      (
        select
          Coalesce(
            MiscUtils.LargeX(
              ( Min(
                  ( Sum(
                      ( select
                          Coalesce(Sum(om.TOTAL_DETAIL_TECH_QUANTITY), 0)
                        from
                          OPERATION_MOVEMENTS om
                        where
                          (om.STORNO_EMPLOYEE_CODE is null) and
                          (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                          (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                          (om.OPERATION_MOVEMENT_TYPE_CODE in (1, 2, 3, 4))
                      ) -
                      ( select
                          Coalesce(
                            Sum(
                              Coalesce(Sum(om2.TOTAL_DETAIL_TECH_QUANTITY), 0) /
                              Min(Coalesce(mll2.TOTAL_DETAIL_TECH_QUANTITY, fork0mll2.TOTAL_DETAIL_TECH_QUANTITY))
                            ) *
                            mll.LINE_DETAIL_TECH_QUANTITY,
                            0
                          )
                        from
                          MATERIAL_LIST_LINES mll2,
                          MATERIAL_LIST_LINES fork0mll2,
                          ML_MODEL_STAGES mlms2,
                          MLMS_OPERATIONS mlmso2,
                          OPERATION_MOVEMENTS om2
                        where
                          (mll2.ML_OBJECT_BRANCH_CODE = mll0.ML_OBJECT_BRANCH_CODE) and
                          (mll2.ML_OBJECT_CODE = mll0.ML_OBJECT_CODE) and

                          ( ( (mll2.NO_AS_FORMATED_TEXT = mll0.NO_AS_FORMATED_TEXT) and
                              (mll2.FORK_NO = mll0.FORK_NO)
                            ) or
                            ( (mll2.NO_AS_FORMATED_TEXT <> mll0.NO_AS_FORMATED_TEXT) and
                              (mll2.NO_AS_FORMATED_TEXT like Decode(mll0.NO_1, 0, '', mll0.NO_AS_FORMATED_TEXT) || '%') and
                              (mll0.FORK_NO = 0)
                            )
                          ) and
                                          
                          (mll2.FORK_0_MLL_OBJECT_BRANCH_CODE = fork0mll2.MLL_OBJECT_BRANCH_CODE(+)) and
                          (mll2.FORK_0_MLL_OBJECT_CODE = fork0mll2.MLL_OBJECT_CODE(+)) and

                          (mll2.MLL_OBJECT_BRANCH_CODE = mlms2.MLL_OBJECT_BRANCH_CODE) and
                          (mll2.MLL_OBJECT_CODE = mlms2.MLL_OBJECT_CODE) and
                                                              
                          (mlms2.MLMS_OBJECT_BRANCH_CODE = mlmso2.MLMS_OBJECT_BRANCH_CODE) and
                          (mlms2.MLMS_OBJECT_CODE = mlmso2.MLMS_OBJECT_CODE) and
                                                      
                          (mlmso2.IS_ACTIVE = 1) and
                          (mlmso2.IS_AUTO_MOVEMENT = 1) and
                          (mlmso2.MLMS_OPERATION_VARIANT_NO >= 0) and
                                          
                          ( (mll2.NO_AS_FORMATED_TEXT <> mll0.NO_AS_FORMATED_TEXT) or
                            ( (mll2.NO_AS_FORMATED_TEXT = mll0.NO_AS_FORMATED_TEXT) and
                              ( (mlms2.ML_MODEL_STAGE_NO < mlms0.ML_MODEL_STAGE_NO) or
                                ( (mlms2.ML_MODEL_STAGE_NO = mlms0.ML_MODEL_STAGE_NO) and
                                  (mlmso2.MLMS_OPERATION_NO < mlmso0.MLMS_OPERATION_NO)
                                )
                              )
                            )
                          ) and
                                    
                          ( ( (mll.NO_AS_FORMATED_TEXT = mll2.NO_AS_FORMATED_TEXT) and
                              (mll.FORK_NO = mll2.FORK_NO)
                            ) or
                            ( (mll.NO_AS_FORMATED_TEXT <> mll2.NO_AS_FORMATED_TEXT) and
                              (mll.NO_AS_FORMATED_TEXT like Decode(mll2.NO_1, 0, '', mll2.NO_AS_FORMATED_TEXT) || '%') and
                              (mll2.FORK_NO = 0)
                            )
                          ) and

                          ( (mll.NO_AS_FORMATED_TEXT <> mll2.NO_AS_FORMATED_TEXT) or
                            ( (mll.NO_AS_FORMATED_TEXT = mll2.NO_AS_FORMATED_TEXT) and
                              ( (mlms.ML_MODEL_STAGE_NO < mlms2.ML_MODEL_STAGE_NO) or
                                ( (mlms.ML_MODEL_STAGE_NO = mlms2.ML_MODEL_STAGE_NO) and
                                  (mlmso.MLMS_OPERATION_NO < mlmso2.MLMS_OPERATION_NO)
                                )
                              )
                            )
                          ) and

                          (om2.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso2.MLMSO_OBJECT_BRANCH_CODE) and
                          (om2.FROM_MLMSO_OBJECT_CODE = mlmso2.MLMSO_OBJECT_CODE) and
                          (om2.STORNO_EMPLOYEE_CODE is null) and
                          (om2.TO_DEPT_CODE is not null)
                        group by
                          Coalesce(mll2.FORK_0_MLL_OBJECT_BRANCH_CODE, mll2.MLL_OBJECT_BRANCH_CODE),
                          Coalesce(mll2.FORK_0_MLL_OBJECT_CODE, mll2.MLL_OBJECT_CODE)
                      )
                    )  
                  ) / 
                  Min(Coalesce(mll.TOTAL_DETAIL_TECH_QUANTITY, fork0mll.TOTAL_DETAIL_TECH_QUANTITY))
                )
                *
                Coalesce(mll0.TOTAL_DETAIL_TECH_QUANTITY, fork0mll0.TOTAL_DETAIL_TECH_QUANTITY)
              ),
              Coalesce(mll0.TOTAL_DETAIL_TECH_QUANTITY, fork0mll0.TOTAL_DETAIL_TECH_QUANTITY)
            ),
            0
          )
                
        from
          MATERIAL_LIST_LINES mll,
          MATERIAL_LIST_LINES fork0mll,
          ML_MODEL_STAGES mlms,
          MLMS_OPERATIONS mlmso

        where
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
                
          (mll.FORK_0_MLL_OBJECT_BRANCH_CODE = fork0mll.MLL_OBJECT_BRANCH_CODE(+)) and
          (mll.FORK_0_MLL_OBJECT_CODE = fork0mll.MLL_OBJECT_CODE(+)) and

          (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
          (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
                                    
          (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
          (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
                            
          (mlmso.IS_ACTIVE = 1) and
          (mlmso.IS_AUTO_MOVEMENT = 0) and
                
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
                    (mll0.FORK_NO = 0)
                  )
                ) and
                      
                (mll3.MLL_OBJECT_BRANCH_CODE = mlms3.MLL_OBJECT_BRANCH_CODE) and
                (mll3.MLL_OBJECT_CODE = mlms3.MLL_OBJECT_CODE) and
                                          
                (mlms3.MLMS_OBJECT_BRANCH_CODE = mlmso3.MLMS_OBJECT_BRANCH_CODE) and
                (mlms3.MLMS_OBJECT_CODE = mlmso3.MLMS_OBJECT_CODE) and

                (mlmso3.IS_ACTIVE = 1) and
                (mlmso3.IS_AUTO_MOVEMENT = 0) and
                      
                ( ( (mll.NO_AS_FORMATED_TEXT <> mll3.NO_AS_FORMATED_TEXT) and
                    (mll.NO_AS_FORMATED_TEXT like Decode(mll3.NO_1, 0, '', mll3.NO_AS_FORMATED_TEXT) || '%') and
                    (mll3.FORK_NO = 0)
                  ) or
                  ( (mll.NO_AS_FORMATED_TEXT = mll3.NO_AS_FORMATED_TEXT) and
                    (mll.FORK_NO = mll3.FORK_NO) and
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
          ) and
                
          (not exists
            ( select
                1
              from
                MATERIAL_LIST_LINES mll2,
                ML_MODEL_STAGES mlms2,
                MLMS_OPERATIONS mlmso2

              where
                (mll2.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
                (mll2.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and

                ( ( (mll2.NO_AS_FORMATED_TEXT = mll.NO_AS_FORMATED_TEXT) and
                    (mll2.FORK_NO = mll.FORK_NO)
                  ) or
                  ( (mll2.NO_AS_FORMATED_TEXT <> mll.NO_AS_FORMATED_TEXT) and
                    (mll2.NO_AS_FORMATED_TEXT like Decode(mll.NO_1, 0, '', mll.NO_AS_FORMATED_TEXT) || '%') and
                    (mll.FORK_NO = 0)
                  )
                ) and
                      
                (mll2.MLL_OBJECT_BRANCH_CODE = mlms2.MLL_OBJECT_BRANCH_CODE) and
                (mll2.MLL_OBJECT_CODE = mlms2.MLL_OBJECT_CODE) and
                                          
                (mlms2.MLMS_OBJECT_BRANCH_CODE = mlmso2.MLMS_OBJECT_BRANCH_CODE) and
                (mlms2.MLMS_OBJECT_CODE = mlmso2.MLMS_OBJECT_CODE) and
                                  
                (mlmso2.IS_ACTIVE = 1) and
                (mlmso2.IS_AUTO_MOVEMENT = 0) and
                      
                ( (mll2.NO_AS_FORMATED_TEXT <> mll.NO_AS_FORMATED_TEXT) or
                  ( (mll2.NO_AS_FORMATED_TEXT = mll.NO_AS_FORMATED_TEXT) and
                    ( (mlms2.ML_MODEL_STAGE_NO < mlms.ML_MODEL_STAGE_NO) or
                      ( (mlms2.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STAGE_NO) and
                        (mlmso2.MLMS_OPERATION_NO < mlmso.MLMS_OPERATION_NO)
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
                          (mll0.FORK_NO = 0)
                        )
                      ) and
                            
                      (mll3.MLL_OBJECT_BRANCH_CODE = mlms3.MLL_OBJECT_BRANCH_CODE) and
                      (mll3.MLL_OBJECT_CODE = mlms3.MLL_OBJECT_CODE) and
                                                
                      (mlms3.MLMS_OBJECT_BRANCH_CODE = mlmso3.MLMS_OBJECT_BRANCH_CODE) and
                      (mlms3.MLMS_OBJECT_CODE = mlmso3.MLMS_OBJECT_CODE) and

                      (mlmso3.IS_ACTIVE = 1) and
                      (mlmso3.IS_AUTO_MOVEMENT = 0) and

                      ( ( (mll2.NO_AS_FORMATED_TEXT <> mll3.NO_AS_FORMATED_TEXT) and
                          (mll2.NO_AS_FORMATED_TEXT like Decode(mll3.NO_1, 0, '', mll3.NO_AS_FORMATED_TEXT) || '%') and
                          (mll3.FORK_NO = 0)
                        ) or
                        ( (mll2.NO_AS_FORMATED_TEXT = mll3.NO_AS_FORMATED_TEXT) and
                          (mll2.FORK_NO = mll3.FORK_NO) and
                          ( (mlms2.ML_MODEL_STAGE_NO < mlms3.ML_MODEL_STAGE_NO) or
                            ( (mlms2.ML_MODEL_STAGE_NO = mlms3.ML_MODEL_STAGE_NO) and
                              (mlmso2.MLMS_OPERATION_NO < mlmso3.MLMS_OPERATION_NO)
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
            )
          )
        
        group by
          Coalesce(mll.FORK_0_MLL_OBJECT_BRANCH_CODE, mll.MLL_OBJECT_BRANCH_CODE),
          Coalesce(mll.FORK_0_MLL_OBJECT_CODE, mll.MLL_OBJECT_CODE)
      )

    into
      Result

    from
      MLMS_OPERATIONS mlmso0,
      ML_MODEL_STAGES mlms0,
      MATERIAL_LIST_LINES mll0,
      MATERIAL_LIST_LINES fork0mll0

    where
      (mll0.FORK_0_MLL_OBJECT_BRANCH_CODE = fork0mll0.MLL_OBJECT_BRANCH_CODE(+)) and
      (mll0.FORK_0_MLL_OBJECT_CODE = fork0mll0.MLL_OBJECT_CODE(+)) and

      (mll0.MLL_OBJECT_BRANCH_CODE = mlms0.MLL_OBJECT_BRANCH_CODE) and
      (mll0.MLL_OBJECT_CODE = mlms0.MLL_OBJECT_CODE) and

      (mlms0.MLMS_OBJECT_BRANCH_CODE = mlmso0.MLMS_OBJECT_BRANCH_CODE) and
      (mlms0.MLMS_OBJECT_CODE = mlmso0.MLMS_OBJECT_CODE) and

      (mlmso0.MLMSO_OBJECT_BRANCH_CODE = MlmsoObjectBranchCode) and
      (mlmso0.MLMSO_OBJECT_CODE = MlmsoObjectCode)
    ;
  
    return(Result);
  end;

  function MaxMllMovedTechQuantity(MllObjectBranchCode in Number, MllObjectCode in Number) return Number is
    Result Number;
  begin
    select
      Max(Sum(om.TOTAL_DETAIL_TECH_QUANTITY))
    into
      Result
    from
      ML_MODEL_STAGES mlms,
      MLMS_OPERATIONS mlmso,
      OPERATION_MOVEMENTS om
    where
      (mlms.MLL_OBJECT_BRANCH_CODE = MllObjectBranchCode) and
      (mlms.MLL_OBJECT_CODE = MllObjectCode) and

      (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
      (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and

      (mlmso.MLMSO_OBJECT_BRANCH_CODE = om.FROM_MLMSO_OBJECT_BRANCH_CODE) and
      (mlmso.MLMSO_OBJECT_CODE = om.FROM_MLMSO_OBJECT_CODE) and

      ( (om.TO_MLMSO_OBJECT_CODE is null) or
        (om.TO_MLMSO_OBJECT_BRANCH_CODE <> om.FROM_MLMSO_OBJECT_BRANCH_CODE) or
        (om.TO_MLMSO_OBJECT_CODE <> om.FROM_MLMSO_OBJECT_CODE) ) and

      (om.STORNO_EMPLOYEE_CODE is null)
    group by
      om.FROM_MLMSO_OBJECT_BRANCH_CODE,
      om.FROM_MLMSO_OBJECT_CODE
    ;
    
    return(Result);
  end;
      
  function MllCompletelyMovedTechQuantity(MllObjectBranchCode in Number, MllObjectCode in Number) return Number is
    Result Number;
  begin
    select  -- vliazlo v poslednia (fiktiven) etap na nashia red
      Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)
    into
      Result
    from
      MODEL_MOVEMENTS mm
    where
      ( (mm.FROM_MLMS_OBJECT_BRANCH_CODE, mm.FROM_MLMS_OBJECT_CODE) =
        ( select
            mlms.MLMS_OBJECT_BRANCH_CODE, mlms.MLMS_OBJECT_CODE
          from
            ML_MODEL_STAGES mlms
          where
            (mlms.MLL_OBJECT_BRANCH_CODE = MllObjectBranchCode) and
            (mlms.MLL_OBJECT_CODE = MllObjectCode) and
            ( mlms.ML_MODEL_STAGE_NO =
              ( select
                  (Max(mlms2.ML_MODEL_STAGE_NO) - 1)
                from
                  ML_MODEL_STAGES mlms2
                where
                  (mlms2.MLL_OBJECT_BRANCH_CODE = MllObjectBranchCode) and
                  (mlms2.MLL_OBJECT_CODE = MllObjectCode)
              )
            )
        )
      ) and
      (mm.TO_DEPT_CODE is null) and
      (mm.STORNO_EMPLOYEE_CODE is null)
    ;
    
    return(Result);
  end;
  
  function MllWasteTechQuantity(MllObjectBranchCode in Number, MllObjectCode in Number) return Number is
    Result Number;
  begin
    select
      Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)
    into
      Result
    from
      MODEL_MOVEMENTS mm
    where
      ( (mm.FROM_MLMS_OBJECT_BRANCH_CODE, mm.FROM_MLMS_OBJECT_CODE) in
        ( select
            mlms.MLMS_OBJECT_BRANCH_CODE,
            mlms.MLMS_OBJECT_CODE
          from
            ML_MODEL_STAGES mlms
          where
            (mlms.MLL_OBJECT_BRANCH_CODE = MllObjectBranchCode) and
            (mlms.MLL_OBJECT_CODE = MllObjectCode)
        )
      ) and
      (mm.STORNO_EMPLOYEE_CODE is null) and
      (mm.TO_DEPT_CODE is not null)  -- predavane kam brak
    ;
    
    return(Result);
  end;


  function MllAggregatedWasteTechQuantity(MllObjectBranchCode in Number, MllObjectCode in Number) return Number is
    Result Number;
    MlObjectBranchCode Number;
    MlObjectCode Number;
    NoAsFormatedText Varchar2(250 char);
    ForkNo Number;
    TotalDetailTechQuantity Number;
    PrevForksCompletelyMovedTechQ Number;
    InheritedWasteTechQuantity Number;
  begin
  
    select
      mll.ML_OBJECT_BRANCH_CODE,
      mll.ML_OBJECT_CODE,
      mll.NO_AS_FORMATED_TEXT,
      mll.FORK_NO,
      NullIf(
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
        ),
        0          
      ) as TOTAL_DETAIL_TECH_QUANTITY
    into
      MlObjectBranchCode,
      MlObjectCode,
      NoAsFormatedText,
      ForkNo,
      TotalDetailTechQuantity
    from
      MATERIAL_LIST_LINES mll
    where
      (mll.MLL_OBJECT_BRANCH_CODE = MllObjectBranchCode) and
      (mll.MLL_OBJECT_CODE = MllObjectCode)
    ;
  

    select  -- kolichestvoto predadeno do krania na predhodnite razklonenia na nashia
      Coalesce(Sum(MllCompletelyMovedTechQuantity(mll2.MLL_OBJECT_BRANCH_CODE, mll2.MLL_OBJECT_CODE)), 0)
    into
      PrevForksCompletelyMovedTechQ
    from
      MATERIAL_LIST_LINES mll2
    where
      (mll2.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
      (mll2.ML_OBJECT_CODE = MlObjectCode) and
      (mll2.NO_AS_FORMATED_TEXT = NoAsFormatedText) and
      (mll2.FORK_NO < ForkNo)
    ;

  
    select
      Coalesce(
        Greatest(
          Least(
            ( Sum(  -- braka po bashtite priveden v kolichestvo ot nashia
                mm.DETAIL_TECH_QUANTITY *
                TotalDetailTechQuantity /
                NullIf(mll.LINE_DETAIL_TECH_QUANTITY, 0)
              ) -
              PrevForksCompletelyMovedTechQ
            ),
            MllCompletelyMovedTechQuantity(MllObjectBranchCode, MllObjectCode)
          ),
          0
        ),
        0
      )
      
    into
      InheritedWasteTechQuantity
      
    from
      MATERIAL_LIST_LINES mll,
      ML_MODEL_STAGES mlms,
      MODEL_MOVEMENTS mm
      
    where
      (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
      (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
      
      (mlms.MLMS_OBJECT_BRANCH_CODE = mm.FROM_MLMS_OBJECT_BRANCH_CODE) and
      (mlms.MLMS_OBJECT_CODE = mm.FROM_MLMS_OBJECT_CODE) and

      (mll.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
      (mll.ML_OBJECT_CODE = MlObjectCode) and
      ( (NoAsFormatedText like (mll.NO_AS_FORMATED_TEXT || '%')) or
        (mll.PARENT_MLL_OBJECT_BRANCH_CODE is null)
      ) and
      (mll.NO_AS_FORMATED_TEXT <> NoAsFormatedText) and
      (mll.FORK_NO = 0) and
      
      (mll.ANNUL_EMPLOYEE_CODE is null) and
      (mm.STORNO_EMPLOYEE_CODE is null) and
      (mm.TO_DEPT_CODE is not null)  -- predavane kam brak
    ;
      
    Result:= MllWasteTechQuantity(MllObjectBranchCode, MllObjectCode) + InheritedWasteTechQuantity;
    
    return(Result);
  end;
  
  function IsConstructingMlms(MlmsObjectBranchCode in Number, MlmsObjectCode in Number) return Number is
    Result Number;
  begin
    select
      Sign(Count(*))
    into
      Result
    from
      MATERIAL_LIST_LINES mll
    where
      ( (mll.MLL_OBJECT_BRANCH_CODE, mll.MLL_OBJECT_CODE) = 
        ( select
            mlms.MLL_OBJECT_BRANCH_CODE, mlms.MLL_OBJECT_CODE
          from
            ML_MODEL_STAGES mlms
          where
            (mlms.MLMS_OBJECT_BRANCH_CODE = MlmsObjectBranchCode) and
            (mlms.MLMS_OBJECT_CODE = MlmsObjectCode) and
            (mlms.ML_MODEL_STAGE_NO = 1)
        )
      ) and
      (mll.PRODUCT_CODE is null)
    ;
    
    return(Result);
  end;
  
  function IsConstructingMlmso(MlmsoObjectBranchCode in Number, MlmsoObjectCode in Number) return Number is
    Result Number;
  begin
    select
      Sign(Count(*))
    into
      Result
    from
      MLMS_OPERATIONS mlmso
    where
      (mlmso.MLMSO_OBJECT_BRANCH_CODE = MlmsoObjectBranchCode) and
      (mlmso.MLMSO_OBJECT_CODE = MlmsoObjectCode) and

      (mlmso.OPERATION_TYPE_CODE = 1) and      
      (ModelUtils.IsConstructingMlms(mlmso.MLMS_OBJECT_BRANCH_CODE, mlmso.MLMS_OBJECT_CODE) = 1)
    ;
    
    return(Result);
  end;
  
  function StageTechQuantity(MlmsObjectBranchCode in Number, MlmsObjectCode in Number, AtDate in Date) return Number is
    Result Number;
  begin
    select
      Coalesce(
        Min(
          ( ( select  -- vliazlo v nashia mlms
                Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)
              from
                MODEL_MOVEMENTS mm
              where
                ( (mm.FROM_MLMS_OBJECT_BRANCH_CODE, mm.FROM_MLMS_OBJECT_CODE) =
                  ( select
                      mlms2.MLMS_OBJECT_BRANCH_CODE, mlms2.MLMS_OBJECT_CODE
                    from
                      ML_MODEL_STAGES mlms2
                    where
                      (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
                      (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
                      (mlms2.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STAGE_NO - 1)
                  )
                ) and
                (mm.TO_DEPT_CODE is null) and
                (mm.STORNO_EMPLOYEE_CODE is null) and
                (mm.MM_DATE <= AtDate)
            )
            -
            Decode(
              mlms.OUTGOING_WORKDAYS,
              0,
              Least(
                Greatest(
                  ( ( select  -- izliazlo ot purvia mlms v parent reda kam vroria ili kam brak
                        (Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0) * mll.DETAIL_TECH_QUANTITY)
                      from
                        MODEL_MOVEMENTS mm
                      where
                        ( (mm.FROM_MLMS_OBJECT_BRANCH_CODE, mm.FROM_MLMS_OBJECT_CODE) =
                          ( select
                              mlms2.MLMS_OBJECT_BRANCH_CODE, mlms2.MLMS_OBJECT_CODE
                            from
                              ML_MODEL_STAGES mlms2
                            where
                              (mlms2.MLL_OBJECT_BRANCH_CODE = mll.PARENT_MLL_OBJECT_BRANCH_CODE) and
                              (mlms2.MLL_OBJECT_CODE = mll.PARENT_MLL_OBJECT_CODE) and
                              (mlms2.ML_MODEL_STAGE_NO = 1)
                          )
                        ) and
                        (mm.STORNO_EMPLOYEE_CODE is null) and
                        (mm.MM_DATE <= AtDate)
                    )
                    -
                    ( select  -- vliazlo v posleden etap na prednite razklonenia po nashia red
                        Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)
                      from
                        MODEL_MOVEMENTS mm,
                        ML_MODEL_STAGES mlms2,
                        MATERIAL_LIST_LINES mll2
                      where
                        (mlms2.MLMS_OBJECT_BRANCH_CODE = mm.FROM_MLMS_OBJECT_BRANCH_CODE) and
                        (mlms2.MLMS_OBJECT_CODE = mm.FROM_MLMS_OBJECT_CODE) and
                        (mll2.MLL_OBJECT_BRANCH_CODE = mlms2.MLL_OBJECT_BRANCH_CODE) and
                        (mll2.MLL_OBJECT_CODE = mlms2.MLL_OBJECT_CODE) and                                  
                        (mll2.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
                        (mll2.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
                        (mll2.NO_AS_TEXT = mll.NO_AS_TEXT) and
                        (mll2.FORK_NO < mll.FORK_NO) and
                        (mlms2.TREATMENT_WORKDAYS > 0) and
                        (mlms2.OUTGOING_WORKDAYS > 0) and
                        (not exists
                          ( select
                              1
                            from
                              ML_MODEL_STAGES mlms3
                            where
                              (mlms3.MLL_OBJECT_BRANCH_CODE = mlms2.MLL_OBJECT_BRANCH_CODE) and
                              (mlms3.MLL_OBJECT_CODE = mlms2.MLL_OBJECT_CODE) and
                              (mlms3.ML_MODEL_STAGE_NO > mlms2.ML_MODEL_STAGE_NO) and
                              (mlms3.TREATMENT_WORKDAYS > 0) and
                              (mlms3.OUTGOING_WORKDAYS > 0)
                          ) 
                        ) and
                        (mm.TO_DEPT_CODE is null) and
                        (mm.STORNO_EMPLOYEE_CODE is null) and
                        (mm.MM_DATE <= AtDate)
                    )
                  ),
                  0
                ),
                Decode(
                  mll.FORK_NO,
                  ( select
                      Max(mll2.FORK_NO)
                    from
                      MATERIAL_LIST_LINES mll2
                    where
                      (mll2.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
                      (mll2.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
                      (mll2.NO_AS_TEXT = mll.NO_AS_TEXT)
                  ),
                  CommonConsts.MaxNumber,
                  ( select  -- vliazlo v nashia mlms
                      Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)
                    from
                      MODEL_MOVEMENTS mm
                    where
                      ( (mm.FROM_MLMS_OBJECT_BRANCH_CODE, mm.FROM_MLMS_OBJECT_CODE) =
                        ( select
                            mlms2.MLMS_OBJECT_BRANCH_CODE, mlms2.MLMS_OBJECT_CODE
                          from
                            ML_MODEL_STAGES mlms2
                          where
                            (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
                            (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
                            (mlms2.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STAGE_NO - 1)
                        )
                      ) and
                      (mm.TO_DEPT_CODE is null) and
                      (mm.STORNO_EMPLOYEE_CODE is null) and
                      (mm.MM_DATE <= AtDate)
                  )
                )
              ),
              ( select  -- izliazlo ot nashia mlms kam sledvashtia ili kam brak
                  Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)
                from
                  MODEL_MOVEMENTS mm
                where
                  (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
                  (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
                  (mm.STORNO_EMPLOYEE_CODE is null) and
                  (mm.MM_DATE <= AtDate)
              )
            )
          )
        ),
        0
      ) as DETAIL_TECH_QUANTITY
    
    into
      Result
    
    from
      MATERIAL_LISTS ml,
      MATERIAL_LIST_LINES mll,
      ML_MODEL_STAGES mlms
    
    where
      (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
      (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
    
      (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
      (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
    
      (mlms.ML_MODEL_STAGE_NO > 0) and
    
      ( (mll.PRODUCT_CODE is not null) or
        (mlms.ML_MODEL_STAGE_NO > 1)
      ) and
    
      ( (mll.PARENT_MLL_OBJECT_BRANCH_CODE is not null) or
        (mlms.OUTGOING_WORKDAYS > 0)
      ) and
    
      (mlms.MLMS_OBJECT_BRANCH_CODE = MlmsObjectBranchCode) and
      (mlms.MLMS_OBJECT_CODE = MlmsObjectCode)  
    ;
  
    return(Result);
  end;
  
  function OperationTechQuantity(MlmsoObjectBranchCode in Number, MlmsoObjectCode in Number, AtDate in Date) return Number is
    LineDetailTechQuantity Number;
    InDetailTechQuantity Number;
    OutDetailTechQuantity Number;
    Result Number;
    StageNo Number;
  begin
    select
      mlms.ML_MODEL_STAGE_NO
    into
      StageNo
    from
      ML_MODEL_STAGES mlms
    where
      ( (mlms.MLMS_OBJECT_BRANCH_CODE, mlms.MLMS_OBJECT_CODE) =
        (
          select
            mlmso.MLMS_OBJECT_BRANCH_CODE,
            mlmso.MLMS_OBJECT_CODE
          from
            MLMS_OPERATIONS mlmso
          where
            (mlmso.MLMSO_OBJECT_BRANCH_CODE = MlmsoObjectBranchCode) and
            (mlmso.MLMSO_OBJECT_CODE = MlmsoObjectCode)
        )
      )
    ;

    if (StageNo = 0) then
      Result:= 0;
    else
      if (IsConstructingMlmso(MlmsoObjectBranchCode, MlmsoObjectCode) = 1) then
      
        select
          mll.LINE_DETAIL_TECH_QUANTITY
        into
          LineDetailTechQuantity
        from
          MATERIAL_LIST_LINES mll
        where
          ( (mll.MLL_OBJECT_BRANCH_CODE, mll.MLL_OBJECT_CODE) =
            (
              select
                mlms.MLL_OBJECT_BRANCH_CODE, 
                mlms.MLL_OBJECT_CODE
              from
                ML_MODEL_STAGES mlms
              where
                ( (mlms.MLMS_OBJECT_BRANCH_CODE, mlms.MLMS_OBJECT_CODE) =
                  (
                    select
                      mlmso.MLMS_OBJECT_BRANCH_CODE,
                      mlmso.MLMS_OBJECT_CODE
                    from
                      MLMS_OPERATIONS mlmso
                    where
                      (mlmso.MLMSO_OBJECT_BRANCH_CODE = MlmsoObjectBranchCode) and
                      (mlmso.MLMSO_OBJECT_CODE = MlmsoObjectCode)
                  )
                )
            )
          )
        ;
      
        select
          Coalesce(
            Sum(
              case
                when (om.FROM_MLMSO_OBJECT_BRANCH_CODE = MlmsoObjectBranchCode) and
                     (om.FROM_MLMSO_OBJECT_CODE = MlmsoObjectCode) then
                  om.TOTAL_DETAIL_TECH_QUANTITY
              else
                om.TOTAL_DETAIL_TECH_QUANTITY /
                (
                  select
                    mll.TOTAL_DETAIL_TECH_QUANTITY
                  from
                    MATERIAL_LIST_LINES mll
                  where
                    ( (mll.MLL_OBJECT_BRANCH_CODE, mll.MLL_OBJECT_CODE) =
                      (
                        select
                          Coalesce(mll2.FORK_0_MLL_OBJECT_BRANCH_CODE, mll2.MLL_OBJECT_BRANCH_CODE) as FORK_0_MLL_OBJECT_BRANCH_CODE,
                          Coalesce(mll2.FORK_0_MLL_OBJECT_CODE, mll2.MLL_OBJECT_CODE) as FORK_0_MLL_OBJECT_CODE
                        from
                          MATERIAL_LIST_LINES mll2
                        where
                          ( (mll2.MLL_OBJECT_BRANCH_CODE, mll2.MLL_OBJECT_CODE) =
                            (
                              select
                                mlms.MLL_OBJECT_BRANCH_CODE,
                                mlms.MLL_OBJECT_CODE
                              from
                                ML_MODEL_STAGES mlms
                              where
                                ( (mlms.MLMS_OBJECT_BRANCH_CODE, mlms.MLMS_OBJECT_CODE) =
                                  (
                                    select
                                      mlmso.MLMS_OBJECT_BRANCH_CODE,
                                      mlmso.MLMS_OBJECT_CODE
                                    from
                                      MLMS_OPERATIONS mlmso
                                    where
                                      (mlmso.MLMSO_OBJECT_BRANCH_CODE = om.FROM_MLMSO_OBJECT_BRANCH_CODE) and
                                      (mlmso.MLMSO_OBJECT_CODE = om.FROM_MLMSO_OBJECT_CODE)
                                  )
                                )
                            )
                          )
                      )
                    )
                ) *
                LineDetailTechQuantity
              end
            ),
            0
          ) as IN_DETAIL_TECH_QUANTITY
        into
          InDetailTechQuantity
        from
          OPERATION_MOVEMENTS om
        where
          (om.TO_MLMSO_OBJECT_BRANCH_CODE = MlmsoObjectBranchCode) and
          (om.TO_MLMSO_OBJECT_CODE = MlmsoObjectCode) and
          (om.OM_DATE <= AtDate) and
          (om.STORNO_EMPLOYEE_CODE is null)
        ;
        
      else
      
        select
          Coalesce(Sum(om.TOTAL_DETAIL_TECH_QUANTITY), 0) as IN_DETAIL_TECH_QUANTITY
        into
          InDetailTechQuantity
        from
          OPERATION_MOVEMENTS om
        where
          (om.TO_MLMSO_OBJECT_BRANCH_CODE = MlmsoObjectBranchCode) and
          (om.TO_MLMSO_OBJECT_CODE = MlmsoObjectCode) and
          (om.OM_DATE <= AtDate) and
          (om.STORNO_EMPLOYEE_CODE is null)
        ;
        
      end if;
    
      select
        Coalesce(Sum(om.TOTAL_DETAIL_TECH_QUANTITY), 0) as OUT_DETAIL_TECH_QUANTITY
      into
        OutDetailTechQuantity
      from
        OPERATION_MOVEMENTS om
      where
        (om.FROM_MLMSO_OBJECT_BRANCH_CODE = MlmsoObjectBranchCode) and
        (om.FROM_MLMSO_OBJECT_CODE = MlmsoObjectCode) and
        (om.OM_DATE <= AtDate) and
        (om.STORNO_EMPLOYEE_CODE is null)
      ;
  
      Result:= InDetailTechQuantity - OutDetailTechQuantity;
    end if;
    
    return(Result);
  end;

  procedure CheckStageQuantitiesAfter(MlmsObjectBranchCode in Number, MlmsObjectCode in Number, BeginDate in Date) is
    ShowMlmsObjectBranchCode Number;
    ShowMlmsObjectCode Number;
    q Number;
    NoAsText Varchar2(100 char);
    ForkNo Number;
    StageNo Number;
  begin
    for d in
      (
        select
          mm.MM_DATE
          
        from
          ML_MODEL_STAGES mlms,
          MATERIAL_LIST_LINES mll,
          ML_MODEL_STAGES pmlms,
          MODEL_MOVEMENTS mm
        
        where
          (mlms.MLMS_OBJECT_BRANCH_CODE = MlmsObjectBranchCode) and
          (mlms.MLMS_OBJECT_CODE = MlmsObjectCode) and
        
          (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
          (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
        
          (mll.PARENT_MLL_OBJECT_BRANCH_CODE = pmlms.MLL_OBJECT_BRANCH_CODE(+)) and
          (mll.PARENT_MLL_OBJECT_CODE = pmlms.MLL_OBJECT_CODE(+)) and
          (pmlms.ML_MODEL_STAGE_NO(+) = 1) and
        
          (mm.FROM_MLMS_OBJECT_BRANCH_CODE =
            Decode(mlms.TREATMENT_WORKDAYS, 0, pmlms.MLMS_OBJECT_BRANCH_CODE, mlms.MLMS_OBJECT_BRANCH_CODE)) and
          (mm.FROM_MLMS_OBJECT_CODE =
            Decode(mlms.TREATMENT_WORKDAYS, 0, pmlms.MLMS_OBJECT_CODE, mlms.MLMS_OBJECT_CODE)) and
        
          (mm.MM_DATE >= BeginDate) and
          (mm.STORNO_EMPLOYEE_CODE is null)
        
        group by
          mm.MM_DATE
        
        order by
          mm.MM_DATE
      )
      
    loop      
      ShowMlmsObjectBranchCode:= MlmsObjectBranchCode;
      ShowMlmsObjectCode:= MlmsObjectCode;
      
      if (IsConstructingMlms(MlmsObjectBranchCode, MlmsObjectCode) = 1) then

        q:= 0;      
        for x in
          (
            select
              mlms2.MLMS_OBJECT_BRANCH_CODE,
              mlms2.MLMS_OBJECT_CODE,
              ModelUtils.StageTechQuantity(mlms2.MLMS_OBJECT_BRANCH_CODE, mlms2.MLMS_OBJECT_CODE, d.MM_DATE) as STAGE_TECH_QUANTITY
            from
              ML_MODEL_STAGES mlms2
            where
              ( (mlms2.MLL_OBJECT_BRANCH_CODE, mlms2.MLL_OBJECT_CODE) in
                ( select
                    mll2.MLL_OBJECT_BRANCH_CODE,
                    mll2.MLL_OBJECT_CODE
                  from
                    MATERIAL_LIST_LINES mll2
                  where
                    ( (mll2.PARENT_MLL_OBJECT_BRANCH_CODE, mll2.PARENT_MLL_OBJECT_CODE) =
                      ( select
                          mlms.MLL_OBJECT_BRANCH_CODE,
                          mlms.MLL_OBJECT_CODE
                        from
                          ML_MODEL_STAGES mlms
                        where
                          (mlms.MLMS_OBJECT_BRANCH_CODE = MlmsObjectBranchCode) and
                          (mlms.MLMS_OBJECT_CODE = MlmsObjectCode)              
                      )
                    )
                )
              ) and          
              (mlms2.OUTGOING_WORKDAYS = 0)
          )
        loop
          if (MiscUtils.LargeZero(q - x.STAGE_TECH_QUANTITY) > 0) then
            q:= x.STAGE_TECH_QUANTITY;
            ShowMlmsObjectBranchCode:= x.MLMS_OBJECT_BRANCH_CODE;
            ShowMlmsObjectCode:= x.MLMS_OBJECT_CODE;
          end if;
        end loop;
      else
        q:= ModelUtils.StageTechQuantity(MlmsObjectBranchCode, MlmsObjectCode, d.MM_DATE);
      end if;
    
      if (MiscUtils.LargeZero(q) < 0) then
      
        select
          mll.NO_AS_TEXT,
          mll.FORK_NO,
          mlms.ML_MODEL_STAGE_NO
        into
          NoAsText,
          ForkNo,
          StageNo
        from
          ML_MODEL_STAGES mlms,
          MATERIAL_LIST_LINES mll
        where
          (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
          (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
          
          (mlms.MLMS_OBJECT_BRANCH_CODE = ShowMlmsObjectBranchCode) and
          (mlms.MLMS_OBJECT_CODE = ShowMlmsObjectCode)
        ;
      
        raise_application_error(-20002, 
          ServerMessages.SNegativeUnfinishedMfgId || '(' ||
          'Date:d=' || MessageUtils.InternalDateToStr(d.MM_DATE) || ', ' ||
          'Quantity:f=' || MessageUtils.InternalFloatToStr(q) || ', ' ||
          'Mll:s=' || MessageUtils.InternalEncodeString(NoAsText) || ', ' ||
          'ForkNo:i=' || MessageUtils.InternalIntToStr(ForkNo) || ', ' ||
          'StageNo:i=' || MessageUtils.InternalIntToStr(StageNo) || ')'
        );
      end if;
    end loop;
  end;
    
  procedure CheckOperationQuantitiesAfter(MlmsoObjectBranchCode in Number, MlmsoObjectCode in Number, BeginDate in Date) is
    q Number;
    NoAsText Varchar2(100 char);
    ForkNo Number;
    StageNo Number;
    OperationNo Number;
    OperationVariantNo Number;
  begin
    for d in
      (
        select
          om.OM_DATE
        from
          OPERATION_MOVEMENTS om
        where
          (om.FROM_MLMSO_OBJECT_BRANCH_CODE = MlmsoObjectBranchCode) and
          (om.FROM_MLMSO_OBJECT_CODE = MlmsoObjectCode) and
          (om.OM_DATE >= BeginDate) and
          (om.STORNO_EMPLOYEE_CODE is null)
        group by
          om.OM_DATE
        order by
          om.OM_DATE
      )
    loop
      q:= OperationTechQuantity(MlmsoObjectBranchCode, MlmsoObjectCode, d.OM_DATE);

      if (MiscUtils.LargeZero(q) < 0) then
      
        select
          mll.NO_AS_TEXT,
          mll.FORK_NO,
          mlms.ML_MODEL_STAGE_NO,
          mlmso.MLMS_OPERATION_NO,
          mlmso.MLMS_OPERATION_VARIANT_NO
        into
          NoAsText,
          ForkNo,
          StageNo,
          OperationNo,
          OperationVariantNo
        from
          MLMS_OPERATIONS mlmso,
          ML_MODEL_STAGES mlms,
          MATERIAL_LIST_LINES mll
        where
          (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
          (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
        
          (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
          (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
          
          (mlmso.MLMSO_OBJECT_BRANCH_CODE = MlmsoObjectBranchCode) and
          (mlmso.MLMSO_OBJECT_CODE = MlmsoObjectCode)
        ;
      
        raise_application_error(-20002, 
          ServerMessages.SNegativeOpUnfinishedMfgId || '(' ||
          'Date:d=' || MessageUtils.InternalDateToStr(d.OM_DATE) || ', ' ||
          'Quantity:f=' || MessageUtils.InternalFloatToStr(q) || ', ' ||
          'Mll:s=' || MessageUtils.InternalEncodeString(NoAsText) || ', ' ||
          'ForkNo:i=' || MessageUtils.InternalIntToStr(ForkNo) || ', ' ||
          'StageNo:i=' || MessageUtils.InternalIntToStr(StageNo) || ', ' ||
          'OperationNo:i=' || MessageUtils.InternalIntToStr(OperationNo) || ', ' ||
          'OperationVariantNo:i=' || MessageUtils.InternalIntToStr(OperationVariantNo) || ')'
        );
      end if;
    end loop;
  end;
  
  function TeamEarnings(TeamCode in Number, BeginDate in Date, EndDate in Date) return Number is
    Result Number;
    SumSetup Number;
    SumWork Number;
  begin
    select
      Coalesce(
        Sum(
          (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) * 
          
          mlmso.SETUP_EFFORT_COEF *

          Coalesce(
            ( select
                pper.HOUR_PRICE
              from
                PROFESSION_PERIODS pper
              where
                (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) and
                (mlmso.SETUP_DATE between pper.BEGIN_DATE and pper.END_DATE)
            ),
            0
          )
        ),
        0
      )
    into
      SumSetup
    from
      MLMS_OPERATIONS mlmso
    where
      (mlmso.SETUP_TEAM_CODE = TeamCode) and
      (mlmso.SETUP_DATE between BeginDate and EndDate)
    ;
    
    select
      Coalesce(
        Sum(
          (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) * 
          
          mlmso.EFFORT_COEF *

          Coalesce(
            ( select
                pper.HOUR_PRICE
              from
                PROFESSION_PERIODS pper
              where
                (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and
                (om.OM_DATE between pper.BEGIN_DATE and pper.END_DATE)
            ),
            0
          )
        ),
        0
      )
    into
      SumWork
    from
      OPERATION_MOVEMENTS om,
      MLMS_OPERATIONS mlmso
    where
      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
    
      (om.FROM_TEAM_CODE = TeamCode) and
      (om.OM_DATE between BeginDate and EndDate) and
      (om.STORNO_EMPLOYEE_CODE is null)
    ;
    
    Result:= SumSetup + SumWork;
    
    return(Result);
  end;
    
  function EmployeePersonalEarnings(EmployeeCode in Number, BeginDate in Date, EndDate in Date) return Number is
    Result Number;
    SumSetup Number;
    SumWork Number;
  begin
    select
      Coalesce(
        Sum(
          (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) * 
          
          mlmso.SETUP_EFFORT_COEF *

          Coalesce(
            ( select
                pper.HOUR_PRICE
              from
                PROFESSION_PERIODS pper
              where
                (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) and
                (mlmso.SETUP_DATE between pper.BEGIN_DATE and pper.END_DATE)
            ),
            0
          )
        ),
        0
      )
    into
      SumSetup
    from
      MLMS_OPERATIONS mlmso
    where
      (mlmso.SETUP_EMPLOYEE_CODE = EmployeeCode) and
      (mlmso.SETUP_TEAM_CODE is null) and
      (mlmso.SETUP_DATE between BeginDate and EndDate)
    ;

    select
      Coalesce(
        Sum(
          (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) * 
          
          mlmso.EFFORT_COEF *

          Coalesce(
            ( select
                pper.HOUR_PRICE
              from
                PROFESSION_PERIODS pper
              where
                (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and
                (om.OM_DATE between pper.BEGIN_DATE and pper.END_DATE)
            ),
            0
          )
        ),
        0
      )
    into
      SumWork
    from
      OPERATION_MOVEMENTS om,
      MLMS_OPERATIONS mlmso
    where
      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
    
      (om.FROM_EMPLOYEE_CODE = EmployeeCode) and
      (om.FROM_TEAM_CODE is null) and
      (om.OM_DATE between BeginDate and EndDate) and
      (om.STORNO_EMPLOYEE_CODE is null)
    ;
    
    Result:= SumSetup + SumWork;
    
    return(Result);
  end;
  
  function EmployeeTeamEarnings(EmployeeCode in Number, BeginDate in Date, EndDate in Date) return Number is
    Result Number;
  begin
    select
      Coalesce(
        Sum(
          Coalesce(
            ( mt.OVERRIDING_TEAM_EARNING *
              (Least(tmd.THE_LAST_DATE, EndDate) - Greatest(tmd.THE_FIRST_DATE, BeginDate) + 1) /
              (tmd.THE_LAST_DATE - tmd.THE_FIRST_DATE + 1)
            ),
            TeamEarnings(
              mte.TEAM_CODE, 
              Greatest(tmd.THE_FIRST_DATE, BeginDate),
              Least(tmd.THE_LAST_DATE, EndDate)
            )
          ) *
          (
            mte.EFFICIENCY_COEF * mte.WORKDAY_COUNT /
            NullIf(
              (
                select
                  Sum(mte2.EFFICIENCY_COEF * mte2.WORKDAY_COUNT)
                from
                  MONTH_TEAM_EMPLOYEES mte2
                where
                  (mte2.TEAM_CODE = mte.TEAM_CODE) and
                  (mte2.THE_MONTH_DATE = mte.THE_MONTH_DATE)
              ),
              0
            )
          )
        ),
        0
      ) as EMPLOYEE_TEAM_EARNINGS
      
    into
      Result
      
    from
      THE_MONTH_DATES tmd,
      MONTH_TEAM_EMPLOYEES mte,
      MONTH_TEAMS mt
    where
      (tmd.THE_FIRST_DATE <= EndDate) and
      (tmd.THE_LAST_DATE >= BeginDate) and
      
      (mte.THE_MONTH_DATE = tmd.THE_MONTH_DATE) and
      (mte.EMPLOYEE_CODE = EmployeeCode) and
      
      (mte.TEAM_CODE = mt.TEAM_CODE) and
      (mte.THE_MONTH_DATE = mt.THE_MONTH_DATE)
    ;
    
    return(Result);
  end;
  
  function TeamWorkHours(
    TeamCode in Number, 
    BeginDate in Date, 
    EndDate in Date, 
    WantSetupWorkHours in Integer, 
    WantNonWasteWorkHours in Integer, 
    WantWasteWorkHours in Integer) return Number is
    
    Result Number;
    SumSetupWorkHours Number;
    SumNonWasteWorkHours Number;
    SumWasteWorkHours Number;
  begin
    if (WantSetupWorkHours <> 1) then
      SumSetupWorkHours:= 0;
    else
      select
        Coalesce(
          Sum(
            (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *
            mlmso.SETUP_EFFORT_COEF
          ),
          0
        )
      into
        SumSetupWorkHours
      from
        MLMS_OPERATIONS mlmso
      where
        (mlmso.SETUP_DATE between BeginDate and EndDate) and
        (mlmso.SETUP_TEAM_CODE = TeamCode)
      ;
    end if;
    
    if (WantNonWasteWorkHours <> 1) then
      SumNonWasteWorkHours:= 0;
    else
      select
        Coalesce(
          Sum(
            om.WORK_DETAIL_TECH_QUANTITY *
            (
              select 
                (1 / mlmso.HOUR_TECH_QUANTITY) * mlmso.EFFORT_COEF
              from
                MLMS_OPERATIONS mlmso
              where
                (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE)
            )
          ), 
          0
        )
      into
        SumNonWasteWorkHours
      from
        OPERATION_MOVEMENTS om
      where
        (om.STORNO_EMPLOYEE_CODE is null) and
        (om.TO_DEPT_CODE is null) and
        (om.OM_DATE between BeginDate and EndDate) and
        (om.FROM_TEAM_CODE = TeamCode)
      ;
    end if;
    
    if (WantWasteWorkHours <> 1) then
      SumWasteWorkHours:= 0;
    else
      select
        Coalesce(
          Sum(
            om.WORK_DETAIL_TECH_QUANTITY *
            (
              select 
                (1 / mlmso.HOUR_TECH_QUANTITY) * mlmso.EFFORT_COEF
              from
                MLMS_OPERATIONS mlmso
              where
                (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE)
            )
          ), 
          0
        )
      into
        SumWasteWorkHours
      from
        OPERATION_MOVEMENTS om
      where
        (om.STORNO_EMPLOYEE_CODE is null) and
        (om.TO_DEPT_CODE is not null) and
        (om.OM_DATE between BeginDate and EndDate) and
        (om.FROM_TEAM_CODE = TeamCode)
      ;
    end if;
    
    Result:= SumSetupWorkHours + SumNonWasteWorkHours + SumWasteWorkHours;
    
    return(Result);
  end;
  
  function EmployeePersonalWorkHours(
    EmployeeCode in Number, 
    BeginDate in Date, 
    EndDate in Date, 
    WantSetupWorkHours in Integer, 
    WantNonWasteWorkHours in Integer, 
    WantWasteWorkHours in Integer) return Number is
    
    Result Number;
    SumSetupWorkHours Number;
    SumNonWasteWorkHours Number;
    SumWasteWorkHours Number;
  begin
    if (WantSetupWorkHours <> 1) then
      SumSetupWorkHours:= 0;
    else
      select
        ( ( select
              Coalesce(
                Sum(
                  (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) * mlmso.SETUP_EFFORT_COEF
                ),
                0
              )
            from
              MLMS_OPERATIONS mlmso
            where
              (mlmso.SETUP_DATE between BeginDate and EndDate) and
              (mlmso.SETUP_TEAM_CODE is null) and
              (mlmso.SETUP_EMPLOYEE_CODE = EmployeeCode)
          )
        )
      into
        SumSetupWorkHours
      from
        DUAL
      ;
    end if;
    
    if (WantNonWasteWorkHours <> 1) then
      SumNonWasteWorkHours:= 0;
    else
      select
        ( ( select
              Coalesce(
                Sum(
                  (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) * mlmso.EFFORT_COEF
                ),
                0
              )
            from
              OPERATION_MOVEMENTS om,
              MLMS_OPERATIONS mlmso
            where
              (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
              (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
              (om.STORNO_EMPLOYEE_CODE is null) and
              (om.TO_DEPT_CODE is null) and
              (om.OM_DATE between BeginDate and EndDate) and
              (om.FROM_TEAM_CODE is null) and
              (om.FROM_EMPLOYEE_CODE = EmployeeCode) 
          )
        )
      into
        SumNonWasteWorkHours
      from
        DUAL
      ;
    end if;
    
    if (WantWasteWorkHours <> 1) then
      SumWasteWorkHours:= 0;
    else
      select
        ( ( select
              Coalesce(
                Sum(
                  (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) * mlmso.EFFORT_COEF
                ),
                0
              )
            from
              OPERATION_MOVEMENTS om,
              MLMS_OPERATIONS mlmso
            where
              (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
              (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
              (om.STORNO_EMPLOYEE_CODE is null) and
              (om.TO_DEPT_CODE is not null) and
              (om.OM_DATE between BeginDate and EndDate) and
              (om.FROM_TEAM_CODE is null) and
              (om.FROM_EMPLOYEE_CODE = EmployeeCode)
          )
        )
      into
        SumWasteWorkHours
      from
        DUAL
      ;
    end if;
    
    Result:= SumSetupWorkHours + SumNonWasteWorkHours + SumWasteWorkHours;
    
    return(Result);
  end;
  
  function EmployeeTeamWorkHours(
    EmployeeCode in Number, 
    BeginDate in Date, 
    EndDate in Date, 
    WantSetupWorkHours in Integer, 
    WantNonWasteWorkHours in Integer, 
    WantWasteWorkHours in Integer) return Number is
    
    Result Number;
  begin
  
    select
      Coalesce(
        Sum(
          TeamWorkHours(
            mte.TEAM_CODE, 
            Greatest(tmd.THE_FIRST_DATE, BeginDate),
            Least(tmd.THE_LAST_DATE, EndDate),
            WantSetupWorkHours,
            WantNonWasteWorkHours,
            WantWasteWorkHours
          ) *
          (
            mte.WORKDAY_COUNT /
            NullIf(
              (
                select
                  Sum(mte2.WORKDAY_COUNT)
                from
                  MONTH_TEAM_EMPLOYEES mte2
                where
                  (mte2.TEAM_CODE = mte.TEAM_CODE) and
                  (mte2.THE_MONTH_DATE = mte.THE_MONTH_DATE)
              ),
              0
            )
          )
        ),
        0
      ) as EMPLOYEE_TEAM_EARNINGS
      
    into
      Result
      
    from
      THE_MONTH_DATES tmd,
      MONTH_TEAM_EMPLOYEES mte,
      MONTH_TEAMS mt
    where
      (tmd.THE_FIRST_DATE <= EndDate) and
      (tmd.THE_LAST_DATE >= BeginDate) and
      
      (mte.THE_MONTH_DATE = tmd.THE_MONTH_DATE) and
      (mte.EMPLOYEE_CODE = EmployeeCode) and
      
      (mte.TEAM_CODE = mt.TEAM_CODE) and
      (mte.THE_MONTH_DATE = mt.THE_MONTH_DATE)
    ;
    
    return(Result);
  end;
  
  function ModelOperationsStatus(
    MlObjectBranchCode in Number,
    MlObjectCode in Number) return Number is   -- 1-etapen, 2-kombiniran, 3-operacionen
    Result Number;
  begin
    select
      Decode(ml.IS_OPERATIONS_MODEL,
        0, 1,
        Coalesce(
          (
            select
              2
            from
              DUAL
            where
              exists(
                select
                  1
                from
                  MATERIAL_LIST_LINES mll
                where
                  (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
                  (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
                  (mll.ANNUL_EMPLOYEE_CODE is null) and
            
                  exists(
                    select
                      1
                    from
                      ML_MODEL_STAGES mlms
                    where
                      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
                      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
                
                      (mlms.ML_MODEL_STAGE_NO > 0) and
                      (mlms.OUTGOING_WORKDAYS > 0) and
                      
                      not exists(
                        select
                          1
                        from
                          MLMS_OPERATIONS mlmso
                        where
                          (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
                          (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
                          (mlmso.OPERATION_TYPE_CODE <> 1)
                      )
                  )
              )
          ),
          3
        )
      ) as MODEL_OPERATIONS_STATUS
    into
      Result
    from
      MATERIAL_LISTS ml
    where
      (ml.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
      (ml.ML_OBJECT_CODE = MlObjectCode)
    ;
    
    return(Result);
  end;
  
  function MaxStageNo(
    MlmsObjectBranchCode in Number,
    MlmsObjectCode in Number) return Number is
    Result Number;
  begin
    select
      Max(mlms2.ML_MODEL_STAGE_NO)
    into
      Result
    from
      ML_MODEL_STAGES mlms,
      ML_MODEL_STAGES mlms2
    where
      (mlms.MLMS_OBJECT_BRANCH_CODE = MlmsObjectBranchCode) and
      (mlms.MLMS_OBJECT_CODE = MlmsObjectCode) and

      (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
      (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE)
    ;
      
    return(Result);
  end;

  function GetModelInvestedValue(
    MlObjectBranchCode in Number,
    MlObjectCode in Number,
    InvestedValueLevel in Number, -- ot 1 do 5
    InvestedValueSumType in Number,  -- 0-none, 1-aggregated, 2-full
    InvestedValueType in Number, -- 0-plan, 1-real, 2-diversion, 3-waste
    CurrencyCode in Number
  ) return TInvestedValueRow is
  
    Result TInvestedValueRow;
  
    type TInvestedValues is varray(5) of Number;
    
    NeedIV TInvestedValues:= TInvestedValues(0, 0, 0, 0, 0);
    
    PlanInvestedValues TInvestedValues:= TInvestedValues(0, 0, 0, 0, 0);
    RealInvestedValues TInvestedValues:= TInvestedValues(0, 0, 0, 0, 0);
    WasteInvestedValues TInvestedValues:= TInvestedValues(0, 0, 0, 0, 0);

    IncompleteInvestedValues TInvestedValues:= TInvestedValues(0, 0, 0, 0, 0);
    
    ProductionOrderTypeCode Number;
    TodayDate Date;
    
    FromLevel Integer;
    ToLevel Integer;
    LevelIterator Integer;
    
    ResultValue Number;
    ResultIsIncomplete Number;
    LevelResultValue Number;
    
  begin
    if (InvestedValueSumType = 1) and (InvestedValueLevel <= 2) then
      raise_application_error(-20000, 'No aggregated invested value for level 1 and 2');
    end if;  
  
    if (InvestedValueLevel = 1) or (InvestedValueSumType = 2) then
      NeedIV(1):= 1;
    end if;

    for LevelIterator in 2..5 loop
      if (InvestedValueLevel = LevelIterator) or
         ((InvestedValueLevel > LevelIterator) and (InvestedValueSumType > 0)) then
        NeedIV(LevelIterator):= 1;
      end if;
    end loop;
  
    select
      s.PRODUCTION_ORDER_TYPE_CODE
    into
      ProductionOrderTypeCode
    from
      MATERIAL_LISTS ml,
      SALES s
    where
      (ml.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
      (ml.ML_OBJECT_CODE = MlObjectCode) and
      
      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and
      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)
    ;
  
    TodayDate:= ContextDate;
  
    --------- PLAN ---------
    if (InvestedValueType in (0, 2)) then
     
      select
        Decode(NeedIV(1), 1,
          Coalesce(
            Sum(
              psd.QUANTITY * 
              ProductUtils.PsdSinglePriceInBaseCurrencyEx(psd.PRODUCT_CODE, psd.STORE_DEAL_BEGIN_DATE) /
              cr.FIXING
            ),
            0                  
          ),
          0
        ) + PlanInvestedValues(1) as PLAN_INVESTED_VALUE_1,
  
        Decode(NeedIV(2), 1,
          Coalesce(        
            Sum( 
              ( select
                  Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, psd.QUANTITY * pper.INVESTMENT_LEVEL_2_VALUE)
                from
                  PRODUCT_PERIODS pper
                where
                  (pper.PRODUCT_CODE =
                    Coalesce(
                      ( select
                          pper2.PRODUCT_CODE
                        from
                          PRODUCT_PERIODS pper2
                        where
                          (psd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                          (psd.STORE_DEAL_BEGIN_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                      ),
                      ( select
                          dp.COMMON_PRODUCT_CODE
                        from
                          DEFINITE_PRODUCTS dp
                        where
                          (dp.PRODUCT_CODE = psd.PRODUCT_CODE)
                      )
                    )
                  ) and
                  (psd.STORE_DEAL_BEGIN_DATE between pper.BEGIN_DATE and pper.END_DATE)
              ) / 
              cr.FIXING
            ),
            0
          ),
          0
        ) + PlanInvestedValues(2) as PLAN_INVESTED_VALUE_2,
        
        Decode(NeedIV(3), 1,
          Coalesce(        
            Sum( 
              ( select
                  Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, psd.QUANTITY * pper.INVESTMENT_LEVEL_3_VALUE)
                from
                  PRODUCT_PERIODS pper
                where
                  (pper.PRODUCT_CODE =
                    Coalesce(
                      ( select
                          pper2.PRODUCT_CODE
                        from
                          PRODUCT_PERIODS pper2
                        where
                          (psd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                          (psd.STORE_DEAL_BEGIN_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                      ),
                      ( select
                          dp.COMMON_PRODUCT_CODE
                        from
                          DEFINITE_PRODUCTS dp
                        where
                          (dp.PRODUCT_CODE = psd.PRODUCT_CODE)
                      )
                    )
                  ) and
                  (psd.STORE_DEAL_BEGIN_DATE between pper.BEGIN_DATE and pper.END_DATE)
              ) / 
              cr.FIXING
            ),
            0
          ),
          0
        ) + PlanInvestedValues(3) as PLAN_INVESTED_VALUE_3,
        
        Decode(NeedIV(4), 1,
          Coalesce(        
            Sum( 
              ( select
                  Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, psd.QUANTITY * pper.INVESTMENT_LEVEL_4_VALUE)
                from
                  PRODUCT_PERIODS pper
                where
                  (pper.PRODUCT_CODE =
                    Coalesce(
                      ( select
                          pper2.PRODUCT_CODE
                        from
                          PRODUCT_PERIODS pper2
                        where
                          (psd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                          (psd.STORE_DEAL_BEGIN_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                      ),
                      ( select
                          dp.COMMON_PRODUCT_CODE
                        from
                          DEFINITE_PRODUCTS dp
                        where
                          (dp.PRODUCT_CODE = psd.PRODUCT_CODE)
                      )
                    )
                  ) and
                  (psd.STORE_DEAL_BEGIN_DATE between pper.BEGIN_DATE and pper.END_DATE)
              ) / 
              cr.FIXING
            ),
            0
          ),
          0
        ) + PlanInvestedValues(4) as PLAN_INVESTED_VALUE_4,
        
        Decode(NeedIV(5), 1,
          Coalesce(        
            Sum( 
              ( select
                  Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, psd.QUANTITY * pper.INVESTMENT_LEVEL_5_VALUE)
                from
                  PRODUCT_PERIODS pper
                where
                  (pper.PRODUCT_CODE =
                    Coalesce(
                      ( select
                          pper2.PRODUCT_CODE
                        from
                          PRODUCT_PERIODS pper2
                        where
                          (psd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                          (psd.STORE_DEAL_BEGIN_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                      ),
                      ( select
                          dp.COMMON_PRODUCT_CODE
                        from
                          DEFINITE_PRODUCTS dp
                        where
                          (dp.PRODUCT_CODE = psd.PRODUCT_CODE)
                      )
                    )
                  ) and
                  (psd.STORE_DEAL_BEGIN_DATE between pper.BEGIN_DATE and pper.END_DATE)
              ) / 
              cr.FIXING
            ),
            0
          ),
          0
        ) + PlanInvestedValues(5) as PLAN_INVESTED_VALUE_5,
        
        -- incomplete fields
        Decode(NeedIV(1), 1,
          Sign(
            Count(
              Nvl2(
                psd.QUANTITY *
                ProductUtils.PsdSinglePriceInBaseCurrencyEx(psd.PRODUCT_CODE, psd.STORE_DEAL_BEGIN_DATE) /
                cr.FIXING,
                null,
                1
              )                  
            )
          ),
          0
        ) + IncompleteInvestedValues(1) as INCOMPLETE_INVESTED_VALUE_1,
  
        Decode(NeedIV(2), 1,
          Sign(
            Count(        
              Nvl2( 
                ( select
                    Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, psd.QUANTITY * pper.INVESTMENT_LEVEL_2_VALUE)
                  from
                    PRODUCT_PERIODS pper
                  where
                    (pper.PRODUCT_CODE =
                      Coalesce(
                        ( select
                            pper2.PRODUCT_CODE
                          from
                            PRODUCT_PERIODS pper2
                          where
                            (psd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                            (psd.STORE_DEAL_BEGIN_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                        ),
                        ( select
                            dp.COMMON_PRODUCT_CODE
                          from
                            DEFINITE_PRODUCTS dp
                          where
                            (dp.PRODUCT_CODE = psd.PRODUCT_CODE)
                        )
                      )
                    ) and
                    (psd.STORE_DEAL_BEGIN_DATE between pper.BEGIN_DATE and pper.END_DATE)
                ) / 
                cr.FIXING,
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(2) as INCOMPLETE_INVESTED_VALUE_2,
        
        Decode(NeedIV(3), 1,
          Sign(
            Count(        
              Nvl2( 
                ( select
                    Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, psd.QUANTITY * pper.INVESTMENT_LEVEL_3_VALUE)
                  from
                    PRODUCT_PERIODS pper
                  where
                    (pper.PRODUCT_CODE =
                      Coalesce(
                        ( select
                            pper2.PRODUCT_CODE
                          from
                            PRODUCT_PERIODS pper2
                          where
                            (psd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                            (psd.STORE_DEAL_BEGIN_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                        ),
                        ( select
                            dp.COMMON_PRODUCT_CODE
                          from
                            DEFINITE_PRODUCTS dp
                          where
                            (dp.PRODUCT_CODE = psd.PRODUCT_CODE)
                        )
                      )
                    ) and
                    (psd.STORE_DEAL_BEGIN_DATE between pper.BEGIN_DATE and pper.END_DATE)
                ) / 
                cr.FIXING,
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(3) as INCOMPLETE_INVESTED_VALUE_3,
        
        Decode(NeedIV(4), 1,
          Sign(
            Count(        
              Nvl2( 
                ( select
                    Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, psd.QUANTITY * pper.INVESTMENT_LEVEL_4_VALUE)
                  from
                    PRODUCT_PERIODS pper
                  where
                    (pper.PRODUCT_CODE =
                      Coalesce(
                        ( select
                            pper2.PRODUCT_CODE
                          from
                            PRODUCT_PERIODS pper2
                          where
                            (psd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                            (psd.STORE_DEAL_BEGIN_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                        ),
                        ( select
                            dp.COMMON_PRODUCT_CODE
                          from
                            DEFINITE_PRODUCTS dp
                          where
                            (dp.PRODUCT_CODE = psd.PRODUCT_CODE)
                        )
                      )
                    ) and
                    (psd.STORE_DEAL_BEGIN_DATE between pper.BEGIN_DATE and pper.END_DATE)
                ) / 
                cr.FIXING,
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(4) as INCOMPLETE_INVESTED_VALUE_4,
        
        Decode(NeedIV(5), 1,
          Sign(
            Count(        
              Nvl2( 
                ( select
                    Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, psd.QUANTITY * pper.INVESTMENT_LEVEL_5_VALUE)
                  from
                    PRODUCT_PERIODS pper
                  where
                    (pper.PRODUCT_CODE =
                      Coalesce(
                        ( select
                            pper2.PRODUCT_CODE
                          from
                            PRODUCT_PERIODS pper2
                          where
                            (psd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                            (psd.STORE_DEAL_BEGIN_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                        ),
                        ( select
                            dp.COMMON_PRODUCT_CODE
                          from
                            DEFINITE_PRODUCTS dp
                          where
                            (dp.PRODUCT_CODE = psd.PRODUCT_CODE)
                        )
                      )
                    ) and
                    (psd.STORE_DEAL_BEGIN_DATE between pper.BEGIN_DATE and pper.END_DATE)
                ) / 
                cr.FIXING,
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(5) as INCOMPLETE_INVESTED_VALUE_5      
        
      into
        PlanInvestedValues(1),
        PlanInvestedValues(2),
        PlanInvestedValues(3),
        PlanInvestedValues(4),
        PlanInvestedValues(5),
        IncompleteInvestedValues(1),
        IncompleteInvestedValues(2),
        IncompleteInvestedValues(3),
        IncompleteInvestedValues(4),
        IncompleteInvestedValues(5)
      from
        MATERIAL_LIST_LINES mll,
        PLANNED_STORE_DEALS psd,
        CURRENCY_RATES cr
      where
        (mll.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
        (mll.ML_OBJECT_CODE = MlObjectCode) and
        (mll.ANNUL_EMPLOYEE_CODE is null) and
        
        (mll.MLL_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANCH_CODE) and
        (mll.MLL_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and
        (mll.ANNUL_EMPLOYEE_CODE is null) and
        (psd.IN_OUT = -1) and
        (psd.BND_PROCESS_CODE <> 110) and
        (psd.ANNUL_EMPLOYEE_CODE is null) and
  
        (cr.CURRENCY_CODE(+) = CurrencyCode) and
        (cr.RATE_DATE(+) = Least(psd.STORE_DEAL_BEGIN_DATE, TodayDate))
      ;
      
    end if;
  
    if (InvestedValueType in (0, 2)) and 
       (InvestedValueLevel > 1) then  -- plan stages
       
      -- operacionno nivo etapi
      select
        Decode(NeedIV(2), 1,
          Coalesce(
            Sum(
              ( Decode(mlmso.SETUP_PROFESSION_CODE,
                  null, 0,
                  Coalesce(  -- nastroika
                    (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *
                    mlmso.SETUP_EFFORT_COEF *
                    ( select
                        pper.HOUR_PRICE
                      from
                        PROFESSION_PERIODS pper
                      where
                        (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) and
                        (Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate) between pper.BEGIN_DATE and pper.END_DATE)
                    ),
                    0
                  )
                ) +
                Coalesce(  -- rabota
                  (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                  mlmso.EFFORT_COEF *
                  ( select
                      pper.HOUR_PRICE
                    from
                      PROFESSION_PERIODS pper
                    where
                      (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and
                      (Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate) between pper.BEGIN_DATE and pper.END_DATE)
                  ),
                  0
                )
              ) *
              Coalesce(
                ( select
                    em.LABOUR_COST_COEF
                  from
                    EARNING_MODIFIERS em
                  where
                    (Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate) between em.BEGIN_DATE and em.END_DATE)
                ),
                1
              ) /
              ( select
                  cr.FIXING
                from
                  CURRENCY_RATES cr
                where
                  (cr.CURRENCY_CODE = CurrencyCode) and
                  (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate))
              )
            ),
            0
          ),
          0
        ) + PlanInvestedValues(2) as PLAN_INVESTED_VALUE_2,
      
        Decode(NeedIV(3), 1,
          Coalesce(  
            Sum(
              ( Decode(mlmso.SETUP_PROFESSION_CODE,  -- nastroika
                  null, 0,
                  (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY)
                ) +
                (  -- rabota
                  (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY)
                )
              ) *
              ( select
                  (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /
                  dp.PARALLEL_PROCESS_COUNT                    
                from
                  DEPT_PERIODS dp
                where
                  (dp.DEPT_CODE = mlmso.DEPT_CODE) and
                  (Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate) between dp.BEGIN_DATE and dp.END_DATE)
              ) /
              ( select
                  cr.FIXING
                from
                  CURRENCY_RATES cr
                where
                  (cr.CURRENCY_CODE = CurrencyCode) and
                  (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate))
              )
            ),
            0
          ),
          0
        ) + PlanInvestedValues(3) as PLAN_INVESTED_VALUE_3,
      
        Decode(NeedIV(5), 1,
          Coalesce(
            Sum(
              ( Decode(mlmso.SETUP_PROFESSION_CODE,
                  null, 0,
                  Coalesce(  -- nastroika
                    (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *
                    mlmso.SETUP_EFFORT_COEF *
                    ( select
                        pper.HOUR_PRICE
                      from
                        PROFESSION_PERIODS pper
                      where
                        (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) and
                        (Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate) between pper.BEGIN_DATE and pper.END_DATE)
                    ),
                    0
                  )
                ) +
                Coalesce(  -- rabota
                  (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                  mlmso.EFFORT_COEF *
                  ( select
                      pper.HOUR_PRICE
                    from
                      PROFESSION_PERIODS pper
                    where
                      (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and
                      (Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate) between pper.BEGIN_DATE and pper.END_DATE)
                  ),
                  0
                )
              ) *
              Coalesce(
                ( select
                    em.LABOUR_COST_COEF *
                    em.ORGANIZATION_COST_COEF
                  from
                    EARNING_MODIFIERS em
                  where
                    (Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate) between em.BEGIN_DATE and em.END_DATE)
                ),
                0
              ) /
              ( select
                  cr.FIXING
                from
                  CURRENCY_RATES cr
                where
                  (cr.CURRENCY_CODE = CurrencyCode) and
                  (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate))
              )
            ),
            0
          ),
          0
        ) + PlanInvestedValues(5) as PLAN_INVESTED_VALUE_5,

        -- incomplete fields
        Decode(NeedIV(2), 1,
          Sign(
            Count(
              Nvl2(
                ( Decode(mlmso.SETUP_PROFESSION_CODE,
                    null, 0,
                    (  -- nastroika
                      (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *
                      mlmso.SETUP_EFFORT_COEF *
                      ( select
                          pper.HOUR_PRICE
                        from
                          PROFESSION_PERIODS pper
                        where
                          (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) and
                          (Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate) between pper.BEGIN_DATE and pper.END_DATE)
                      )
                    )
                  ) +
                  (  -- rabota
                    (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                    mlmso.EFFORT_COEF *
                    ( select
                        pper.HOUR_PRICE
                      from
                        PROFESSION_PERIODS pper
                      where
                        (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and
                        (Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate) between pper.BEGIN_DATE and pper.END_DATE)
                    )
                  )
                ) *
                ( select
                    em.LABOUR_COST_COEF
                  from
                    EARNING_MODIFIERS em
                  where
                    (Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate) between em.BEGIN_DATE and em.END_DATE)
                ) /
                ( select
                    cr.FIXING
                  from
                    CURRENCY_RATES cr
                  where
                    (cr.CURRENCY_CODE = CurrencyCode) and
                    (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate))
                ),
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(2) as INCOMPLETE_INVESTED_VALUE_2,
      
        Decode(NeedIV(3), 1,
          Sign(
            Count(  
              Nvl2(
                ( Decode(mlmso.SETUP_PROFESSION_CODE,  -- nastroika
                    null, 0,
                    (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY)
                  ) +
                  (  -- rabota
                    (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY)
                  )
                ) *
                ( select
                    (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /
                    dp.PARALLEL_PROCESS_COUNT                    
                  from
                    DEPT_PERIODS dp
                  where
                    (dp.DEPT_CODE = mlmso.DEPT_CODE) and
                    (Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate) between dp.BEGIN_DATE and dp.END_DATE)
                ) /
                ( select
                    cr.FIXING
                  from
                    CURRENCY_RATES cr
                  where
                    (cr.CURRENCY_CODE = CurrencyCode) and
                    (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate))
                ),
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(3) as INCOMPLETE_INVESTED_VALUE_3,
      
        Decode(NeedIV(5), 1,
          Sign(
            Count(
              Nvl2(
                ( Decode(mlmso.SETUP_PROFESSION_CODE,
                    null, 0,
                    (  -- nastroika
                      (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *
                      mlmso.SETUP_EFFORT_COEF *
                      ( select
                          pper.HOUR_PRICE
                        from
                          PROFESSION_PERIODS pper
                        where
                          (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) and
                          (Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate) between pper.BEGIN_DATE and pper.END_DATE)
                      )
                    )
                  ) +
                  (  -- rabota
                    (mlmso.VARIANT_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                    mlmso.EFFORT_COEF *
                    ( select
                        pper.HOUR_PRICE
                      from
                        PROFESSION_PERIODS pper
                      where
                        (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and
                        (Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate) between pper.BEGIN_DATE and pper.END_DATE)
                    )
                  )
                ) *
                ( select
                    em.LABOUR_COST_COEF
                  from
                    EARNING_MODIFIERS em
                  where
                    (Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate) between em.BEGIN_DATE and em.END_DATE)
                ) /
                ( select
                    cr.FIXING
                  from
                    CURRENCY_RATES cr
                  where
                    (cr.CURRENCY_CODE = CurrencyCode) and
                    (cr.RATE_DATE = Least(mlmso.TREATMENT_BEGIN_DATE, TodayDate))
                ),
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(5) as INCOMPLETE_INVESTED_VALUE_5

      into
        PlanInvestedValues(2),
        PlanInvestedValues(3),
        PlanInvestedValues(5),
        IncompleteInvestedValues(2),
        IncompleteInvestedValues(3),
        IncompleteInvestedValues(5)
        
      from
        MATERIAL_LIST_LINES mll,
        ML_MODEL_STAGES mlms,
        MLMS_OPERATIONS mlmso
        
      where
        (mll.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
        (mll.ML_OBJECT_CODE = MlObjectCode) and
        (mll.ANNUL_EMPLOYEE_CODE is null) and
      
        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
        (mlms.ML_MODEL_STAGE_NO > 0) and
        (mlms.TREATMENT_WORKDAYS > 0) and
        (mlms.OUTGOING_WORKDAYS > 0) and
      
        (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
        (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
        (mlmso.OPERATION_TYPE_CODE = 2) and
        (mlmso.IS_ACTIVE = 1)
      ;
       
      -- vunshni etapi
      if (NeedIV(4) = 1) then
        select
          Coalesce(
            Sum(
              mll.LINE_DETAIL_TECH_QUANTITY *
              mlms.EXTERNAL_WORK_PRICE /
              ( select
                  cr.FIXING
                from
                  CURRENCY_RATES cr
                where
                  (cr.CURRENCY_CODE = CurrencyCode) and
                  (cr.RATE_DATE = Least(mlms.TREATMENT_BEGIN_DATE, TodayDate))
              )
            ),
            0
          ) + PlanInvestedValues(4) as PLAN_INVESTED_VALUE_4,
          
          Sign(
            Count(
              Nvl2(
                mll.LINE_DETAIL_TECH_QUANTITY *
                mlms.EXTERNAL_WORK_PRICE /
                ( select
                    cr.FIXING
                  from
                    CURRENCY_RATES cr
                  where
                    (cr.CURRENCY_CODE = CurrencyCode) and
                    (cr.RATE_DATE = Least(mlms.TREATMENT_BEGIN_DATE, TodayDate))
                ),
                null,
                1
              )
            )
          ) + IncompleteInvestedValues(4) as INCOMPLETE_INVESTED_VALUE_4
          
        into
          PlanInvestedValues(4),
          IncompleteInvestedValues(4)
                  
        from
          MATERIAL_LIST_LINES mll,
          ML_MODEL_STAGES mlms
          
        where
          (mll.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
          (mll.ML_OBJECT_CODE = MlObjectCode) and
          (mll.ANNUL_EMPLOYEE_CODE is null) and
        
          (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
          (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
          (mlms.ML_MODEL_STAGE_NO > 0) and
          (mlms.TREATMENT_WORKDAYS > 0) and
          (mlms.OUTGOING_WORKDAYS > 0) and
          (mlms.EXTERNAL_WORK_PRICE is not null)
        ;      
      end if;
    end if;  -- plan stages
    
    
    --------- REAL ---------
    if (InvestedValueType in (1, 2)) then  -- real stages

      select
        Decode(NeedIV(1), 1,
          Coalesce(
            Sum(
              (sd.TOTAL_PRICE * sdcr.FIXING / cr.FIXING) -
              (  -- returned price
                select
                  Coalesce(Sum(sd2.TOTAL_PRICE * crx.FIXING / crx2.FIXING), 0)
                from
                  STORE_DEALS sd2,
                  CURRENCY_RATES crx,
                  CURRENCY_RATES crx2
                where
                  (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                  (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                  (sd2.BND_PROCESS_CODE = 50) and
                  (sd2.IN_OUT = 1) and
                  (sd2.STORNO_EMPLOYEE_CODE is null) and
      
                  (crx.CURRENCY_CODE(+) = sd2.CURRENCY_CODE) and
                  (crx.RATE_DATE(+) = sd2.STORE_DEAL_DATE) and
      
                  (crx2.CURRENCY_CODE(+) = CurrencyCode) and
                  (crx2.RATE_DATE(+) = sd2.STORE_DEAL_DATE)
              )
            ),
            0
          ),
          0
        ) + RealInvestedValues(1) as REAL_INVESTED_VALUE_1,
  
        Decode(NeedIV(2), 1,
          Coalesce(        
            Sum( 
              ( select
                  Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, 
                    ( sd.QUANTITY -
                      (  -- returned quantity
                        select
                          Coalesce(Sum(sd2.QUANTITY), 0)
                        from
                          STORE_DEALS sd2
                        where
                          (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                          (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                          (sd2.BND_PROCESS_CODE = 50) and
                          (sd2.IN_OUT = 1) and
                          (sd2.STORNO_EMPLOYEE_CODE is null)
                      )
                    ) * 
                    pper.INVESTMENT_LEVEL_2_VALUE
                  )
                from
                  PRODUCT_PERIODS pper
                where
                  (pper.PRODUCT_CODE =
                    Coalesce(
                      ( select
                          pper2.PRODUCT_CODE
                        from
                          PRODUCT_PERIODS pper2
                        where
                          (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                          (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                      ),
                      ( select
                          dp.COMMON_PRODUCT_CODE
                        from
                          DEFINITE_PRODUCTS dp
                        where
                          (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                      )
                    )
                  ) and
                  (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
              ) / 
              cr.FIXING
            ),
            0
          ),
          0
        ) + RealInvestedValues(2) as REAL_INVESTED_VALUE_2,
        
        Decode(NeedIV(3), 1,
          Coalesce(        
            Sum( 
              ( select
                  Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, 
                    ( sd.QUANTITY -
                      (  -- returned quantity
                        select
                          Coalesce(Sum(sd2.QUANTITY), 0)
                        from
                          STORE_DEALS sd2
                        where
                          (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                          (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                          (sd2.BND_PROCESS_CODE = 50) and
                          (sd2.IN_OUT = 1) and
                          (sd2.STORNO_EMPLOYEE_CODE is null)
                      )
                    ) * 
                    pper.INVESTMENT_LEVEL_3_VALUE
                  )
                from
                  PRODUCT_PERIODS pper
                where
                  (pper.PRODUCT_CODE =
                    Coalesce(
                      ( select
                          pper2.PRODUCT_CODE
                        from
                          PRODUCT_PERIODS pper2
                        where
                          (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                          (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                      ),
                      ( select
                          dp.COMMON_PRODUCT_CODE
                        from
                          DEFINITE_PRODUCTS dp
                        where
                          (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                      )
                    )
                  ) and
                  (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
              ) / 
              cr.FIXING
            ),
            0
          ),
          0
        ) + RealInvestedValues(3) as REAL_INVESTED_VALUE_3,
        
        Decode(NeedIV(4), 1,
          Coalesce(        
            Sum( 
              ( select
                  Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, 
                    ( sd.QUANTITY -
                      (  -- returned quantity
                        select
                          Coalesce(Sum(sd2.QUANTITY), 0)
                        from
                          STORE_DEALS sd2
                        where
                          (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                          (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                          (sd2.BND_PROCESS_CODE = 50) and
                          (sd2.IN_OUT = 1) and
                          (sd2.STORNO_EMPLOYEE_CODE is null)
                      )
                    ) * 
                    pper.INVESTMENT_LEVEL_4_VALUE
                  )
                from
                  PRODUCT_PERIODS pper
                where
                  (pper.PRODUCT_CODE =
                    Coalesce(
                      ( select
                          pper2.PRODUCT_CODE
                        from
                          PRODUCT_PERIODS pper2
                        where
                          (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                          (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                      ),
                      ( select
                          dp.COMMON_PRODUCT_CODE
                        from
                          DEFINITE_PRODUCTS dp
                        where
                          (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                      )
                    )
                  ) and
                  (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
              ) / 
              cr.FIXING
            ),
            0
          ),
          0
        ) + RealInvestedValues(4) as REAL_INVESTED_VALUE_4,
        
        Decode(NeedIV(5), 1,
          Coalesce(        
            Sum(
              ( select
                  Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, 
                    ( sd.QUANTITY -
                      (  -- returned quantity
                        select
                          Coalesce(Sum(sd2.QUANTITY), 0)
                        from
                          STORE_DEALS sd2
                        where
                          (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                          (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                          (sd2.BND_PROCESS_CODE = 50) and
                          (sd2.IN_OUT = 1) and
                          (sd2.STORNO_EMPLOYEE_CODE is null)
                      )
                    ) * 
                    pper.INVESTMENT_LEVEL_5_VALUE
                  )
                from
                  PRODUCT_PERIODS pper
                where
                  (pper.PRODUCT_CODE =
                    Coalesce(
                      ( select
                          pper2.PRODUCT_CODE
                        from
                          PRODUCT_PERIODS pper2
                        where
                          (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                          (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                      ),
                      ( select
                          dp.COMMON_PRODUCT_CODE
                        from
                          DEFINITE_PRODUCTS dp
                        where
                          (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                      )
                    )
                  ) and
                  (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
              ) / 
              cr.FIXING
            ),
            0
          ),
          0
        ) + RealInvestedValues(5) as REAL_INVESTED_VALUE_5,
        
        -- incomplete fields
        Decode(NeedIV(1), 1,
          Sign(
            Count(
              Nvl2(
                (sd.TOTAL_PRICE * sdcr.FIXING / cr.FIXING) -
                (  -- returned price
                  select
                    Decode(Count(*), 
                      0, 0,
                      Decode(Min(Nvl2(sd2.TOTAL_PRICE * crx.FIXING / crx2.FIXING, 1, 0)), 0, null, 0)
                    )
                  from
                    STORE_DEALS sd2,
                    CURRENCY_RATES crx,
                    CURRENCY_RATES crx2
                  where
                    (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                    (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                    (sd2.BND_PROCESS_CODE = 50) and
                    (sd2.IN_OUT = 1) and
                    (sd2.STORNO_EMPLOYEE_CODE is null) and
        
                    (crx.CURRENCY_CODE(+) = sd2.CURRENCY_CODE) and
                    (crx.RATE_DATE(+) = sd2.STORE_DEAL_DATE) and
        
                    (crx2.CURRENCY_CODE(+) = CurrencyCode) and
                    (crx2.RATE_DATE(+) = sd2.STORE_DEAL_DATE)
                ),
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(1) as INCOMPLETE_INVESTED_VALUE_1,
  
        Decode(NeedIV(2), 1,
          Sign(
            Count(        
              Nvl2( 
                ( select
                    Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, sd.QUANTITY * pper.INVESTMENT_LEVEL_2_VALUE)
                  from
                    PRODUCT_PERIODS pper
                  where
                    (pper.PRODUCT_CODE =
                      Coalesce(
                        ( select
                            pper2.PRODUCT_CODE
                          from
                            PRODUCT_PERIODS pper2
                          where
                            (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                            (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                        ),
                        ( select
                            dp.COMMON_PRODUCT_CODE
                          from
                            DEFINITE_PRODUCTS dp
                          where
                            (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                        )
                      )
                    ) and
                    (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
                ) /
                cr.FIXING,
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(2) as INCOMPLETE_INVESTED_VALUE_2,
        
        Decode(NeedIV(3), 1,
          Sign(
            Count(        
              Nvl2( 
                ( select
                    Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, sd.QUANTITY * pper.INVESTMENT_LEVEL_3_VALUE)
                  from
                    PRODUCT_PERIODS pper
                  where
                    (pper.PRODUCT_CODE =
                      Coalesce(
                        ( select
                            pper2.PRODUCT_CODE
                          from
                            PRODUCT_PERIODS pper2
                          where
                            (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                            (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                        ),
                        ( select
                            dp.COMMON_PRODUCT_CODE
                          from
                            DEFINITE_PRODUCTS dp
                          where
                            (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                        )
                      )
                    ) and
                    (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
                ) /
                cr.FIXING,
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(3) as INCOMPLETE_INVESTED_VALUE_3,
        
        Decode(NeedIV(4), 1,
          Sign(
            Count(        
              Nvl2( 
                ( select
                    Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, sd.QUANTITY * pper.INVESTMENT_LEVEL_4_VALUE)
                  from
                    PRODUCT_PERIODS pper
                  where
                    (pper.PRODUCT_CODE =
                      Coalesce(
                        ( select
                            pper2.PRODUCT_CODE
                          from
                            PRODUCT_PERIODS pper2
                          where
                            (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                            (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                        ),
                        ( select
                            dp.COMMON_PRODUCT_CODE
                          from
                            DEFINITE_PRODUCTS dp
                          where
                            (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                        )
                      )
                    ) and
                    (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
                ) /
                cr.FIXING,
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(4) as INCOMPLETE_INVESTED_VALUE_4,
        
        Decode(NeedIV(5), 1,
          Sign(
            Count(        
              Nvl2( 
                ( select
                    Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, sd.QUANTITY * pper.INVESTMENT_LEVEL_5_VALUE)
                  from
                    PRODUCT_PERIODS pper
                  where
                    (pper.PRODUCT_CODE =
                      Coalesce(
                        ( select
                            pper2.PRODUCT_CODE
                          from
                            PRODUCT_PERIODS pper2
                          where
                            (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                            (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                        ),
                        ( select
                            dp.COMMON_PRODUCT_CODE
                          from
                            DEFINITE_PRODUCTS dp
                          where
                            (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                        )
                      )
                    ) and
                    (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
                ) /
                cr.FIXING,
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(5) as INCOMPLETE_INVESTED_VALUE_5      
        
      into
        RealInvestedValues(1),
        RealInvestedValues(2),
        RealInvestedValues(3),
        RealInvestedValues(4),
        RealInvestedValues(5),
        IncompleteInvestedValues(1),
        IncompleteInvestedValues(2),
        IncompleteInvestedValues(3),
        IncompleteInvestedValues(4),
        IncompleteInvestedValues(5)
        
      from
        MATERIAL_LIST_LINES mll,
        STORE_DEALS sd,
        CURRENCY_RATES sdcr,
        CURRENCY_RATES cr
        
      where
        (mll.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
        (mll.ML_OBJECT_CODE = MlObjectCode) and
        (mll.ANNUL_EMPLOYEE_CODE is null) and
  
        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
        (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
        (sd.IN_OUT = -1) and
        (sd.STORNO_EMPLOYEE_CODE is null) and
  
        (sdcr.CURRENCY_CODE(+) = sd.CURRENCY_CODE) and
        (sdcr.RATE_DATE(+) = sd.STORE_DEAL_DATE) and
  
        (cr.CURRENCY_CODE(+) = CurrencyCode) and
        (cr.RATE_DATE(+) = sd.STORE_DEAL_DATE)
        ;
      
    end if;
  
    if (InvestedValueType in (1, 2)) and (InvestedValueLevel > 1) then  -- real stages
      -- operacionno nivo etapi
      select
        Decode(NeedIV(2), 1,
          Coalesce(
            Sum(
              Decode(mlmso.SETUP_DATE,        
                null, 0,
                Coalesce(  -- nastroika
                  (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *
                  mlmso.SETUP_EFFORT_COEF *
                  ( select
                      pper.HOUR_PRICE
                    from
                      PROFESSION_PERIODS pper
                    where
                      (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) and
                      (mlmso.SETUP_DATE between pper.BEGIN_DATE and pper.END_DATE)
                  ) *
                  Coalesce(
                    ( select  
                        Max(em.LABOUR_COST_COEF)
                      from
                        EARNING_MODIFIERS em
                      where
                        (mlmso.SETUP_DATE between em.BEGIN_DATE and em.END_DATE)
                    ),
                    1
                  ) /
                  ( select
                      cr.FIXING
                    from
                      CURRENCY_RATES cr
                    where
                      (cr.CURRENCY_CODE = CurrencyCode) and
                      (cr.RATE_DATE = mlmso.SETUP_DATE)
                  ),
                  0
                )
              ) +
              
              Coalesce(  -- preminavania
                ( select
                    Sum(
                      (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                      mlmso.EFFORT_COEF *
                      ( select
                          pper.HOUR_PRICE
                        from
                          PROFESSION_PERIODS pper
                        where
                          (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and
                          (om.OM_DATE between pper.BEGIN_DATE and pper.END_DATE)
                      ) *
                      Coalesce(
                        ( select  
                            Max(em.LABOUR_COST_COEF)
                          from
                            EARNING_MODIFIERS em
                          where
                            (om.OM_DATE between em.BEGIN_DATE and em.END_DATE)
                        ),
                        1
                      ) /
                      ( select
                          cr.FIXING
                        from
                          CURRENCY_RATES cr
                        where
                          (cr.CURRENCY_CODE = CurrencyCode) and
                          (cr.RATE_DATE = om.OM_DATE)
                      )
                    )
                  from
                    OPERATION_MOVEMENTS om
                  where
                    (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                    (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                    (om.STORNO_EMPLOYEE_CODE is null)
                ),
                0
              )
            ),
            0
          ),
          0
        ) + RealInvestedValues(2) as INVESTED_VALUE_2,
      
        Decode(NeedIV(3), 1,
          Coalesce(  
            Sum(
              Decode(mlmso.SETUP_DATE,        
                null, 0,
                Coalesce(  -- nastroika
                  (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *
                  ( select
                      (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /
                      dp.PARALLEL_PROCESS_COUNT                    
                    from
                      DEPT_PERIODS dp
                    where
                      (dp.DEPT_CODE = mlmso.DEPT_CODE) and
                      (mlmso.SETUP_DATE between dp.BEGIN_DATE and dp.END_DATE)
                  ) /
                  ( select
                      cr.FIXING
                    from
                      CURRENCY_RATES cr
                    where
                      (cr.CURRENCY_CODE = CurrencyCode) and
                      (cr.RATE_DATE = mlmso.SETUP_DATE)
                  ),
                  0
                )
              ) +
              
              Coalesce(  -- preminavania
                ( select
                    Sum(
                      (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                      ( select
                          (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /
                          dp.PARALLEL_PROCESS_COUNT                    
                        from
                          DEPT_PERIODS dp
                        where
                          (dp.DEPT_CODE = mlmso.DEPT_CODE) and
                          (om.OM_DATE between dp.BEGIN_DATE and dp.END_DATE)
                      ) /
                      ( select
                          cr.FIXING
                        from
                          CURRENCY_RATES cr
                        where
                          (cr.CURRENCY_CODE = CurrencyCode) and
                          (cr.RATE_DATE = om.OM_DATE)
                      )
                    )
                  from
                    OPERATION_MOVEMENTS om
                  where
                    (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                    (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                    (om.STORNO_EMPLOYEE_CODE is null)
                ),
                0
              )
            ),
            0
          ),
          0
        ) + RealInvestedValues(3) as INVESTED_VALUE_3,
      
        Decode(NeedIV(5), 1,
          Coalesce(
            Sum(
              Decode(mlmso.SETUP_DATE,        
                null, 0,
                Coalesce(  -- nastroika
                  (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *
                  mlmso.SETUP_EFFORT_COEF *
                  ( select
                      pper.HOUR_PRICE
                    from
                      PROFESSION_PERIODS pper
                    where
                      (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) and
                      (mlmso.SETUP_DATE between pper.BEGIN_DATE and pper.END_DATE)
                  ) *
                  Coalesce(
                    ( select  
                        Max(
                          em.LABOUR_COST_COEF *
                          em.ORGANIZATION_COST_COEF
                        )
                      from
                        EARNING_MODIFIERS em
                      where
                        (mlmso.SETUP_DATE between em.BEGIN_DATE and em.END_DATE)
                    ),
                    0
                  ) /
                  ( select
                      cr.FIXING
                    from
                      CURRENCY_RATES cr
                    where
                      (cr.CURRENCY_CODE = CurrencyCode) and
                      (cr.RATE_DATE = mlmso.SETUP_DATE)
                  ),
                  0
                )
              ) +
              
              Coalesce(  -- preminavania
                ( select
                    Sum(
                      (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                      mlmso.EFFORT_COEF *
                      ( select
                          pper.HOUR_PRICE
                        from
                          PROFESSION_PERIODS pper
                        where
                          (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and
                          (om.OM_DATE between pper.BEGIN_DATE and pper.END_DATE)
                      ) *
                      Coalesce(
                        ( select  
                            Max(
                              em.LABOUR_COST_COEF *
                              em.ORGANIZATION_COST_COEF
                            )
                          from
                            EARNING_MODIFIERS em
                          where
                            (om.OM_DATE between em.BEGIN_DATE and em.END_DATE)
                        ),
                        0
                      ) /
                      ( select
                          cr.FIXING
                        from
                          CURRENCY_RATES cr
                        where
                          (cr.CURRENCY_CODE = CurrencyCode) and
                          (cr.RATE_DATE = om.OM_DATE)
                      )
                    )
                  from
                    OPERATION_MOVEMENTS om
                  where
                    (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                    (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                    (om.STORNO_EMPLOYEE_CODE is null)
                ),
                0
              )
            ),
            0
          ),
          0
        ) + RealInvestedValues(5) as INVESTED_VALUE_5,
        
        -- incomplete fields
        Decode(NeedIV(2), 1,
          Sign(
            Count(
              Nvl2(
                Decode(mlmso.SETUP_DATE,        
                  null, 0,
                  (  -- nastroika
                    (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *
                    mlmso.SETUP_EFFORT_COEF *
                    ( select
                        pper.HOUR_PRICE
                      from
                        PROFESSION_PERIODS pper
                      where
                        (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) and
                        (mlmso.SETUP_DATE between pper.BEGIN_DATE and pper.END_DATE)
                    ) *
                    ( select  
                        Max(em.LABOUR_COST_COEF)
                      from
                        EARNING_MODIFIERS em
                      where
                        (mlmso.SETUP_DATE between em.BEGIN_DATE and em.END_DATE)
                    ) /
                    ( select
                        cr.FIXING
                      from
                        CURRENCY_RATES cr
                      where
                        (cr.CURRENCY_CODE = CurrencyCode) and
                        (cr.RATE_DATE = mlmso.SETUP_DATE)
                    )
                  )
                ) +
                
                (  -- preminavania
                  ( select
                      Decode(Count(*),
                        0, 0,
                        Decode(
                          Min(
                            Nvl2(
                              (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                              mlmso.EFFORT_COEF *
                              ( select
                                  pper.HOUR_PRICE
                                from
                                  PROFESSION_PERIODS pper
                                where
                                  (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and
                                  (om.OM_DATE between pper.BEGIN_DATE and pper.END_DATE)
                              ) *
                              Coalesce(
                                ( select  
                                    Max(em.LABOUR_COST_COEF)
                                  from
                                    EARNING_MODIFIERS em
                                  where
                                    (om.OM_DATE between em.BEGIN_DATE and em.END_DATE)
                                ),
                                1
                              ) /
                              ( select
                                  cr.FIXING
                                from
                                  CURRENCY_RATES cr
                                where
                                  (cr.CURRENCY_CODE = CurrencyCode) and
                                  (cr.RATE_DATE = om.OM_DATE)
                              ),
                              1,
                              0
                            ) 
                          ),
                          0, null,
                          0
                        )
                      )
                    from
                      OPERATION_MOVEMENTS om
                    where
                      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                      (om.STORNO_EMPLOYEE_CODE is null)
                  )
                ),
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(2) as INCOMPLETE_INVESTED_VALUE_2,
      
        Decode(NeedIV(3), 1,
          Sign(
            Count(  
              Nvl2(
                Decode(mlmso.SETUP_DATE,        
                  null, 0,
                  (  -- nastroika
                    (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *
                    ( select
                        (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /
                        dp.PARALLEL_PROCESS_COUNT                    
                      from
                        DEPT_PERIODS dp
                      where
                        (dp.DEPT_CODE = mlmso.DEPT_CODE) and
                        (mlmso.SETUP_DATE between dp.BEGIN_DATE and dp.END_DATE)
                    ) /
                    ( select
                        cr.FIXING
                      from
                        CURRENCY_RATES cr
                      where
                        (cr.CURRENCY_CODE = CurrencyCode) and
                        (cr.RATE_DATE = mlmso.SETUP_DATE)
                    )
                  )
                ) +
                
                (  -- preminavania
                  ( select
                      Decode(Count(*),
                        0, 0,
                        Decode(
                          Min(
                            Nvl2(
                              (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                              ( select
                                  (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /
                                  dp.PARALLEL_PROCESS_COUNT                    
                                from
                                  DEPT_PERIODS dp
                                where
                                  (dp.DEPT_CODE = mlmso.DEPT_CODE) and
                                  (om.OM_DATE between dp.BEGIN_DATE and dp.END_DATE)
                              ) /
                              ( select
                                  cr.FIXING
                                from
                                  CURRENCY_RATES cr
                                where
                                  (cr.CURRENCY_CODE = CurrencyCode) and
                                  (cr.RATE_DATE = om.OM_DATE)
                              ),
                              1,
                              0
                            )
                          ),
                          0, null,
                          0
                        )
                      )
                    from
                      OPERATION_MOVEMENTS om
                    where
                      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                      (om.STORNO_EMPLOYEE_CODE is null)
                  )
                ),
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(3) as INCOMPLETE_INVESTED_VALUE_3,
      
        Decode(NeedIV(5), 1,
          Sign(
            Count(
              Nvl2(
                Decode(mlmso.SETUP_DATE,        
                  null, 0,
                  (  -- nastroika
                    (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) *
                    mlmso.SETUP_EFFORT_COEF *
                    ( select
                        pper.HOUR_PRICE
                      from
                        PROFESSION_PERIODS pper
                      where
                        (pper.PROFESSION_CODE = mlmso.SETUP_PROFESSION_CODE) and
                        (mlmso.SETUP_DATE between pper.BEGIN_DATE and pper.END_DATE)
                    ) *
                    ( select  
                        Max(
                          em.LABOUR_COST_COEF *
                          em.ORGANIZATION_COST_COEF
                        )
                      from
                        EARNING_MODIFIERS em
                      where
                        (mlmso.SETUP_DATE between em.BEGIN_DATE and em.END_DATE)
                    ) /
                    ( select
                        cr.FIXING
                      from
                        CURRENCY_RATES cr
                      where
                        (cr.CURRENCY_CODE = CurrencyCode) and
                        (cr.RATE_DATE = mlmso.SETUP_DATE)
                    )
                  )
                ) +
                
                (  -- preminavania
                  ( select
                      Decode(Count(*),
                        0, 0,
                        Decode(
                          Min(
                            Nvl2(
                              (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                              mlmso.EFFORT_COEF *
                              ( select
                                  pper.HOUR_PRICE
                                from
                                  PROFESSION_PERIODS pper
                                where
                                  (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and
                                  (om.OM_DATE between pper.BEGIN_DATE and pper.END_DATE)
                              ) *
                              Coalesce(
                                ( select  
                                    Max(
                                      em.LABOUR_COST_COEF *
                                      em.ORGANIZATION_COST_COEF
                                    )
                                  from
                                    EARNING_MODIFIERS em
                                  where
                                    (om.OM_DATE between em.BEGIN_DATE and em.END_DATE)
                                ),
                                1
                              ) /
                              ( select
                                  cr.FIXING
                                from
                                  CURRENCY_RATES cr
                                where
                                  (cr.CURRENCY_CODE = CurrencyCode) and
                                  (cr.RATE_DATE = om.OM_DATE)
                              ),
                              1,
                              0
                            ) 
                          ),
                          0, null,
                          0
                        )
                      )
                    from
                      OPERATION_MOVEMENTS om
                    where
                      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                      (om.STORNO_EMPLOYEE_CODE is null)
                  )
                ),
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(5) as INCOMPLETE_INVESTED_VALUE_5
        
      into
        RealInvestedValues(2),
        RealInvestedValues(3),
        RealInvestedValues(5),
        IncompleteInvestedValues(2),
        IncompleteInvestedValues(3),
        IncompleteInvestedValues(5)
        
      from
        MATERIAL_LIST_LINES mll,
        ML_MODEL_STAGES mlms,
        MLMS_OPERATIONS mlmso
        
      where
        (mll.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
        (mll.ML_OBJECT_CODE = MlObjectCode) and
      
        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
        (mlms.ML_MODEL_STAGE_NO > 0) and
        (mlms.TREATMENT_WORKDAYS > 0) and
        (mlms.OUTGOING_WORKDAYS > 0) and

        (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
        (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
        (mlmso.OPERATION_TYPE_CODE = 2) and
        (mlmso.IS_ACTIVE = 1)
      ;

      -- vunshni etapi
      if (NeedIV(4) = 1) then
        select
          Coalesce(
            Sum(
              mm.DETAIL_TECH_QUANTITY *
              mlms.EXTERNAL_WORK_PRICE /
              ( select
                  cr.FIXING
                from
                  CURRENCY_RATES cr
                where
                  (cr.CURRENCY_CODE = CurrencyCode) and
                  (cr.RATE_DATE = mm.MM_DATE)
              )
            ),
            0
          ) + RealInvestedValues(4) as REAL_INVESTED_VALUE_4,
           
          Sign(
            Count(
              Nvl2(
                mm.DETAIL_TECH_QUANTITY *
                mlms.EXTERNAL_WORK_PRICE /
                ( select
                    cr.FIXING
                  from
                    CURRENCY_RATES cr
                  where
                    (cr.CURRENCY_CODE = CurrencyCode) and
                    (cr.RATE_DATE = mm.MM_DATE)
                ),
                null,
                1
              )
            )
          ) + IncompleteInvestedValues(4) as INCOMPLETE_INVESTED_VALUE_4
           
        into
          RealInvestedValues(4),
          IncompleteInvestedValues(4)
          
        from
          MATERIAL_LIST_LINES mll,
          ML_MODEL_STAGES mlms,
          MODEL_MOVEMENTS mm
          
        where
          (mll.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
          (mll.ML_OBJECT_CODE = MlObjectCode) and
          (mll.ANNUL_EMPLOYEE_CODE is null) and
        
          (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
          (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
          (mlms.ML_MODEL_STAGE_NO > 0) and
          (mlms.TREATMENT_WORKDAYS > 0) and
          (mlms.OUTGOING_WORKDAYS > 0) and
          (mlms.EXTERNAL_WORK_PRICE is not null) and
          
          (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
          (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
          (mm.STORNO_EMPLOYEE_CODE is null)
        ;      
      end if;
    end if;  -- real stages
    
    --------- WASTE ---------
    if (InvestedValueType = 3) then  -- waste stages
    
      select
        Decode(NeedIV(1), 1,
          Coalesce(        
            Sum(
              ( -- waste quantity part
                mm.DETAIL_TECH_QUANTITY / 
                mll.LINE_DETAIL_TECH_QUANTITY
              ) *
              fork0.TOTAL_DETAIL_TECH_QUANTITY *
              ( -- out single price
                Sum(
                  ( sd.TOTAL_PRICE * 
                    sdcr.FIXING / 
                    cr.FIXING
                  ) -
                  (  -- returned price
                    select
                      Coalesce(Sum(sd2.TOTAL_PRICE * crx.FIXING / crx2.FIXING), 0)
                    from
                      STORE_DEALS sd2,
                      CURRENCY_RATES crx,
                      CURRENCY_RATES crx2
                    where
                      (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                      (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                      (sd2.BND_PROCESS_CODE = 50) and
                      (sd2.IN_OUT = 1) and
                      (sd2.STORNO_EMPLOYEE_CODE is null) and
          
                      (crx.CURRENCY_CODE(+) = sd2.CURRENCY_CODE) and
                      (crx.RATE_DATE(+) = sd2.STORE_DEAL_DATE) and
          
                      (crx2.CURRENCY_CODE(+) = CurrencyCode) and
                      (crx2.RATE_DATE(+) = sd2.STORE_DEAL_DATE)
                  )
                ) / 
                Sum(
                  ( ( sd.QUANTITY -
                      (  -- returned quantity
                        select
                          Coalesce(Sum(sd2.QUANTITY), 0)
                        from
                          STORE_DEALS sd2
                        where
                          (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                          (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                          (sd2.BND_PROCESS_CODE = 50) and
                          (sd2.IN_OUT = 1) and
                          (sd2.STORNO_EMPLOYEE_CODE is null)
                      )
                    ) * 
                    p2.TECH_MEASURE_COEF / 
                    mll2.PRODUCT_TECH_QUANTITY )
                )
              ) 
            ),
            0
          ),
          0
        ) + WasteInvestedValues(1) as WASTE_INVESTED_VALUE_1,
        
        Decode(NeedIV(2), 1,
          Coalesce(        
            Sum(
              ( -- waste quantity part
                mm.DETAIL_TECH_QUANTITY / 
                mll.LINE_DETAIL_TECH_QUANTITY
              ) *
              fork0.TOTAL_DETAIL_TECH_QUANTITY *
              ( -- out single price
                Sum(
                  ( sd.QUANTITY -
                    (  -- returned quantity
                      select
                        Coalesce(Sum(sd2.QUANTITY), 0)
                      from
                        STORE_DEALS sd2
                      where
                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                        (sd2.BND_PROCESS_CODE = 50) and
                        (sd2.IN_OUT = 1) and
                        (sd2.STORNO_EMPLOYEE_CODE is null)
                    )
                  ) * 
                  ( select
                      Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, pper.INVESTMENT_LEVEL_2_VALUE)
                    from
                      PRODUCT_PERIODS pper
                    where
                      (pper.PRODUCT_CODE =
                        Coalesce(
                          ( select
                              pper2.PRODUCT_CODE
                            from
                              PRODUCT_PERIODS pper2
                            where
                              (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                              (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                          ),
                          ( select
                              dp.COMMON_PRODUCT_CODE
                            from
                              DEFINITE_PRODUCTS dp
                            where
                              (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                          )
                        )
                      ) and
                      (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
                  ) /
                  cr.FIXING
                ) / 
                Sum(
                  ( sd.QUANTITY -
                    (  -- returned quantity
                      select
                        Coalesce(Sum(sd2.QUANTITY), 0)
                      from
                        STORE_DEALS sd2
                      where
                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                        (sd2.BND_PROCESS_CODE = 50) and
                        (sd2.IN_OUT = 1) and
                        (sd2.STORNO_EMPLOYEE_CODE is null)
                    )
                  ) * 
                  p2.TECH_MEASURE_COEF / 
                  mll2.PRODUCT_TECH_QUANTITY
                )
              ) 
            ),
            0
          ),
          0
        ) + WasteInvestedValues(2) as WASTE_INVESTED_VALUE_2,
        
        Decode(NeedIV(3), 1,
          Coalesce(        
            Sum(
              ( -- waste quantity part
                mm.DETAIL_TECH_QUANTITY / 
                mll.LINE_DETAIL_TECH_QUANTITY
              ) *
              fork0.TOTAL_DETAIL_TECH_QUANTITY *
              ( -- out single price
                Sum(
                  ( sd.QUANTITY -
                    (  -- returned quantity
                      select
                        Coalesce(Sum(sd2.QUANTITY), 0)
                      from
                        STORE_DEALS sd2
                      where
                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                        (sd2.BND_PROCESS_CODE = 50) and
                        (sd2.IN_OUT = 1) and
                        (sd2.STORNO_EMPLOYEE_CODE is null)
                    )
                  ) * 
                  ( select
                      Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, pper.INVESTMENT_LEVEL_3_VALUE)
                    from
                      PRODUCT_PERIODS pper
                    where
                      (pper.PRODUCT_CODE =
                        Coalesce(
                          ( select
                              pper2.PRODUCT_CODE
                            from
                              PRODUCT_PERIODS pper2
                            where
                              (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                              (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                          ),
                          ( select
                              dp.COMMON_PRODUCT_CODE
                            from
                              DEFINITE_PRODUCTS dp
                            where
                              (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                          )
                        )
                      ) and
                      (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
                  ) /
                  cr.FIXING
                ) / 
                Sum(
                  ( sd.QUANTITY -
                    (  -- returned quantity
                      select
                        Coalesce(Sum(sd2.QUANTITY), 0)
                      from
                        STORE_DEALS sd2
                      where
                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                        (sd2.BND_PROCESS_CODE = 50) and
                        (sd2.IN_OUT = 1) and
                        (sd2.STORNO_EMPLOYEE_CODE is null)
                    )
                  ) * 
                  p2.TECH_MEASURE_COEF / 
                  mll2.PRODUCT_TECH_QUANTITY
                )
              ) 
            ),
            0
          ),
          0
        ) + WasteInvestedValues(3) as WASTE_INVESTED_VALUE_3,
        
        Decode(NeedIV(4), 1,
          Coalesce(        
            Sum(
              ( -- waste quantity part
                mm.DETAIL_TECH_QUANTITY / 
                mll.LINE_DETAIL_TECH_QUANTITY
              ) *
              fork0.TOTAL_DETAIL_TECH_QUANTITY *
              ( -- out single price
                Sum(
                  ( sd.QUANTITY -
                    (  -- returned quantity
                      select
                        Coalesce(Sum(sd2.QUANTITY), 0)
                      from
                        STORE_DEALS sd2
                      where
                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                        (sd2.BND_PROCESS_CODE = 50) and
                        (sd2.IN_OUT = 1) and
                        (sd2.STORNO_EMPLOYEE_CODE is null)
                    )
                  ) * 
                  ( select
                      Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, pper.INVESTMENT_LEVEL_4_VALUE)
                    from
                      PRODUCT_PERIODS pper
                    where
                      (pper.PRODUCT_CODE =
                        Coalesce(
                          ( select
                              pper2.PRODUCT_CODE
                            from
                              PRODUCT_PERIODS pper2
                            where
                              (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                              (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                          ),
                          ( select
                              dp.COMMON_PRODUCT_CODE
                            from
                              DEFINITE_PRODUCTS dp
                            where
                              (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                          )
                        )
                      ) and
                      (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
                  ) /
                  cr.FIXING
                ) / 
                Sum(
                  ( sd.QUANTITY -
                    (  -- returned quantity
                      select
                        Coalesce(Sum(sd2.QUANTITY), 0)
                      from
                        STORE_DEALS sd2
                      where
                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                        (sd2.BND_PROCESS_CODE = 50) and
                        (sd2.IN_OUT = 1) and
                        (sd2.STORNO_EMPLOYEE_CODE is null)
                    )
                  ) * 
                  p2.TECH_MEASURE_COEF / 
                  mll2.PRODUCT_TECH_QUANTITY
                )
              ) 
            ),
            0
          ),
          0
        ) + WasteInvestedValues(4) as WASTE_INVESTED_VALUE_4,
        
        Decode(NeedIV(5), 1,
          Coalesce(        
            Sum(
              ( -- waste quantity part
                mm.DETAIL_TECH_QUANTITY / 
                mll.LINE_DETAIL_TECH_QUANTITY
              ) *
              fork0.TOTAL_DETAIL_TECH_QUANTITY *
              ( -- out single price
                Sum(
                  ( sd.QUANTITY -
                    (  -- returned quantity
                      select
                        Coalesce(Sum(sd2.QUANTITY), 0)
                      from
                        STORE_DEALS sd2
                      where
                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                        (sd2.BND_PROCESS_CODE = 50) and
                        (sd2.IN_OUT = 1) and
                        (sd2.STORNO_EMPLOYEE_CODE is null)
                    )
                  ) * 
                  ( select
                      Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, pper.INVESTMENT_LEVEL_5_VALUE)
                    from
                      PRODUCT_PERIODS pper
                    where
                      (pper.PRODUCT_CODE =
                        Coalesce(
                          ( select
                              pper2.PRODUCT_CODE
                            from
                              PRODUCT_PERIODS pper2
                            where
                              (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                              (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                          ),
                          ( select
                              dp.COMMON_PRODUCT_CODE
                            from
                              DEFINITE_PRODUCTS dp
                            where
                              (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                          )
                        )
                      ) and
                      (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
                  ) /
                  cr.FIXING
                ) / 
                Sum(
                  ( sd.QUANTITY -
                    (  -- returned quantity
                      select
                        Coalesce(Sum(sd2.QUANTITY), 0)
                      from
                        STORE_DEALS sd2
                      where
                        (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                        (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                        (sd2.BND_PROCESS_CODE = 50) and
                        (sd2.IN_OUT = 1) and
                        (sd2.STORNO_EMPLOYEE_CODE is null)
                    )
                  ) * 
                  p2.TECH_MEASURE_COEF / 
                  mll2.PRODUCT_TECH_QUANTITY
                )
              ) 
            ),
            0
          ),
          0
        ) + WasteInvestedValues(5) as WASTE_INVESTED_VALUE_5,
  
        -- incomplete fields    
        Decode(NeedIV(1), 1,
          Sign(
            Count(        
              Nvl2(
                ( -- waste quantity part
                  mm.DETAIL_TECH_QUANTITY / 
                  mll.LINE_DETAIL_TECH_QUANTITY
                ) *
                fork0.TOTAL_DETAIL_TECH_QUANTITY *
                ( -- out single price
                  Decode(Count(*),
                    0, 0,
                    Decode(
                      Min(
                        Nvl2(
                          ( sd.TOTAL_PRICE * 
                            sdcr.FIXING / 
                            cr.FIXING
                          ) -
                          (  -- returned price
                            select
                              Decode(Count(*),
                                0, 0,
                                Decode(Min(Nvl2(sd2.TOTAL_PRICE * crx.FIXING / crx2.FIXING, 1, 0)), 0, null, 0)
                              )
                            from
                              STORE_DEALS sd2,
                              CURRENCY_RATES crx,
                              CURRENCY_RATES crx2
                            where
                              (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                              (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                              (sd2.BND_PROCESS_CODE = 50) and
                              (sd2.IN_OUT = 1) and
                              (sd2.STORNO_EMPLOYEE_CODE is null) and
                  
                              (crx.CURRENCY_CODE(+) = sd2.CURRENCY_CODE) and
                              (crx.RATE_DATE(+) = sd2.STORE_DEAL_DATE) and
                  
                              (crx2.CURRENCY_CODE(+) = CurrencyCode) and
                              (crx2.RATE_DATE(+) = sd2.STORE_DEAL_DATE)
                          ),
                          1,
                          0
                        )
                      ),
                      0,
                      null,
                      0
                    ) / 
                    Decode(
                      Min(
                        Nvl2(
                          ( sd.QUANTITY -
                            (  -- returned quantity
                              select
                                Coalesce(Sum(sd2.QUANTITY), 0)
                              from
                                STORE_DEALS sd2
                              where
                                (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                                (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                                (sd2.BND_PROCESS_CODE = 50) and
                                (sd2.IN_OUT = 1) and
                                (sd2.STORNO_EMPLOYEE_CODE is null)
                            )
                          ) * 
                          p2.TECH_MEASURE_COEF / 
                          mll2.PRODUCT_TECH_QUANTITY,
                          1,
                          0
                        )
                      ),
                      0,
                      null,
                      1
                    ) 
                  ) 
                ),
                null,
                1
              )
            )
          )
        ) + IncompleteInvestedValues(1) as INCOMPLETE_INVESTED_VALUE_1,
        
        Decode(NeedIV(2), 1,
          Sign(
            Count(        
              Nvl2(
                ( -- waste quantity part
                  mm.DETAIL_TECH_QUANTITY / 
                  mll.LINE_DETAIL_TECH_QUANTITY
                ) *
                fork0.TOTAL_DETAIL_TECH_QUANTITY *
                ( -- out single price
                  Decode(Count(*),
                    0, 0,
                    Decode(
                      Min(
                        Nvl2(
                          ( sd.QUANTITY -
                            (  -- returned quantity
                              select
                                Coalesce(Sum(sd2.QUANTITY), 0)
                              from
                                STORE_DEALS sd2
                              where
                                (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                                (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                                (sd2.BND_PROCESS_CODE = 50) and
                                (sd2.IN_OUT = 1) and
                                (sd2.STORNO_EMPLOYEE_CODE is null)
                            )
                          ) * 
                          ( select
                              Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, pper.INVESTMENT_LEVEL_2_VALUE)
                            from
                              PRODUCT_PERIODS pper
                            where
                              (pper.PRODUCT_CODE =
                                Coalesce(
                                  ( select
                                      pper2.PRODUCT_CODE
                                    from
                                      PRODUCT_PERIODS pper2
                                    where
                                      (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                                      (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                                  ),
                                  ( select
                                      dp.COMMON_PRODUCT_CODE
                                    from
                                      DEFINITE_PRODUCTS dp
                                    where
                                      (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                                  )
                                )
                              ) and
                              (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
                          ) /
                          cr.FIXING,
                          1,
                          0
                        )
                      ),
                      0,
                      null,
                      0
                    ) / 
                    Decode(
                      Min(
                        Nvl2(
                          ( sd.QUANTITY -
                            (  -- returned quantity
                              select
                                Coalesce(Sum(sd2.QUANTITY), 0)
                              from
                                STORE_DEALS sd2
                              where
                                (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                                (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                                (sd2.BND_PROCESS_CODE = 50) and
                                (sd2.IN_OUT = 1) and
                                (sd2.STORNO_EMPLOYEE_CODE is null)
                            )
                          ) * 
                          p2.TECH_MEASURE_COEF / 
                          mll2.PRODUCT_TECH_QUANTITY,
                          1,
                          0
                        )
                      ),
                      0,
                      null,
                      1
                    ) 
                  ) 
                ),
                null,
                1
              )
            )
          )
        ) + IncompleteInvestedValues(2) as INCOMPLETE_INVESTED_VALUE_2,
        
        Decode(NeedIV(3), 1,
          Sign(
            Count(        
              Nvl2(
                ( -- waste quantity part
                  mm.DETAIL_TECH_QUANTITY / 
                  mll.LINE_DETAIL_TECH_QUANTITY
                ) *
                fork0.TOTAL_DETAIL_TECH_QUANTITY *
                ( -- out single price
                  Decode(Count(*),
                    0, 0,
                    Decode(
                      Min(
                        Nvl2(
                          ( sd.QUANTITY -
                            (  -- returned quantity
                              select
                                Coalesce(Sum(sd2.QUANTITY), 0)
                              from
                                STORE_DEALS sd2
                              where
                                (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                                (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                                (sd2.BND_PROCESS_CODE = 50) and
                                (sd2.IN_OUT = 1) and
                                (sd2.STORNO_EMPLOYEE_CODE is null)
                            )
                          ) * 
                          ( select
                              Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, pper.INVESTMENT_LEVEL_3_VALUE)
                            from
                              PRODUCT_PERIODS pper
                            where
                              (pper.PRODUCT_CODE =
                                Coalesce(
                                  ( select
                                      pper2.PRODUCT_CODE
                                    from
                                      PRODUCT_PERIODS pper2
                                    where
                                      (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                                      (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                                  ),
                                  ( select
                                      dp.COMMON_PRODUCT_CODE
                                    from
                                      DEFINITE_PRODUCTS dp
                                    where
                                      (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                                  )
                                )
                              ) and
                              (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
                          ) /
                          cr.FIXING,
                          1,
                          0
                        )
                      ),
                      0,
                      null,
                      0
                    ) / 
                    Decode(
                      Min(
                        Nvl2(
                          ( sd.QUANTITY -
                            (  -- returned quantity
                              select
                                Coalesce(Sum(sd2.QUANTITY), 0)
                              from
                                STORE_DEALS sd2
                              where
                                (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                                (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                                (sd2.BND_PROCESS_CODE = 50) and
                                (sd2.IN_OUT = 1) and
                                (sd2.STORNO_EMPLOYEE_CODE is null)
                            )
                          ) * 
                          p2.TECH_MEASURE_COEF / 
                          mll2.PRODUCT_TECH_QUANTITY,
                          1,
                          0
                        )
                      ),
                      0,
                      null,
                      1
                    ) 
                  ) 
                ),
                null,
                1
              )
            )
          )
        ) + IncompleteInvestedValues(3) as INCOMPLETE_INVESTED_VALUE_3,
        
        Decode(NeedIV(4), 1,
          Sign(
            Count(        
              Nvl2(
                ( -- waste quantity part
                  mm.DETAIL_TECH_QUANTITY / 
                  mll.LINE_DETAIL_TECH_QUANTITY
                ) *
                fork0.TOTAL_DETAIL_TECH_QUANTITY *
                ( -- out single price
                  Decode(Count(*),
                    0, 0,
                    Decode(
                      Min(
                        Nvl2(
                          ( sd.QUANTITY -
                            (  -- returned quantity
                              select
                                Coalesce(Sum(sd2.QUANTITY), 0)
                              from
                                STORE_DEALS sd2
                              where
                                (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                                (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                                (sd2.BND_PROCESS_CODE = 50) and
                                (sd2.IN_OUT = 1) and
                                (sd2.STORNO_EMPLOYEE_CODE is null)
                            )
                          ) * 
                          ( select
                              Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, pper.INVESTMENT_LEVEL_4_VALUE)
                            from
                              PRODUCT_PERIODS pper
                            where
                              (pper.PRODUCT_CODE =
                                Coalesce(
                                  ( select
                                      pper2.PRODUCT_CODE
                                    from
                                      PRODUCT_PERIODS pper2
                                    where
                                      (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                                      (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                                  ),
                                  ( select
                                      dp.COMMON_PRODUCT_CODE
                                    from
                                      DEFINITE_PRODUCTS dp
                                    where
                                      (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                                  )
                                )
                              ) and
                              (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
                          ) /
                          cr.FIXING,
                          1,
                          0
                        )
                      ),
                      0,
                      null,
                      0
                    ) / 
                    Decode(
                      Min(
                        Nvl2(
                          ( sd.QUANTITY -
                            (  -- returned quantity
                              select
                                Coalesce(Sum(sd2.QUANTITY), 0)
                              from
                                STORE_DEALS sd2
                              where
                                (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                                (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                                (sd2.BND_PROCESS_CODE = 50) and
                                (sd2.IN_OUT = 1) and
                                (sd2.STORNO_EMPLOYEE_CODE is null)
                            )
                          ) * 
                          p2.TECH_MEASURE_COEF / 
                          mll2.PRODUCT_TECH_QUANTITY,
                          1,
                          0
                        )
                      ),
                      0,
                      null,
                      1
                    ) 
                  ) 
                ),
                null,
                1
              )
            )
          )
        ) + IncompleteInvestedValues(4) as INCOMPLETE_INVESTED_VALUE_4,
        
        Decode(NeedIV(5), 1,
          Sign(
            Count(        
              Nvl2(
                ( -- waste quantity part
                  mm.DETAIL_TECH_QUANTITY / 
                  mll.LINE_DETAIL_TECH_QUANTITY
                ) *
                fork0.TOTAL_DETAIL_TECH_QUANTITY *
                ( -- out single price
                  Decode(Count(*),
                    0, 0,
                    Decode(
                      Min(
                        Nvl2(
                          ( sd.QUANTITY -
                            (  -- returned quantity
                              select
                                Coalesce(Sum(sd2.QUANTITY), 0)
                              from
                                STORE_DEALS sd2
                              where
                                (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                                (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                                (sd2.BND_PROCESS_CODE = 50) and
                                (sd2.IN_OUT = 1) and
                                (sd2.STORNO_EMPLOYEE_CODE is null)
                            )
                          ) * 
                          ( select
                              Decode(ProductUtils.IsPsdPriceFromDeliveryEx(pper.PRODUCT_CODE, pper.PRODUCT_PERIOD_CODE), 1, 0, pper.INVESTMENT_LEVEL_5_VALUE)
                            from
                              PRODUCT_PERIODS pper
                            where
                              (pper.PRODUCT_CODE =
                                Coalesce(
                                  ( select
                                      pper2.PRODUCT_CODE
                                    from
                                      PRODUCT_PERIODS pper2
                                    where
                                      (sd.PRODUCT_CODE = pper2.PRODUCT_CODE) and
                                      (sd.STORE_DEAL_DATE between pper2.BEGIN_DATE and pper2.END_DATE)
                                  ),
                                  ( select
                                      dp.COMMON_PRODUCT_CODE
                                    from
                                      DEFINITE_PRODUCTS dp
                                    where
                                      (dp.PRODUCT_CODE = sd.PRODUCT_CODE)
                                  )
                                )
                              ) and
                              (sd.STORE_DEAL_DATE between pper.BEGIN_DATE and pper.END_DATE)
                          ) /
                          cr.FIXING,
                          1,
                          0
                        )
                      ),
                      0,
                      null,
                      0
                    ) / 
                    Decode(
                      Min(
                        Nvl2(
                          ( sd.QUANTITY -
                            (  -- returned quantity
                              select
                                Coalesce(Sum(sd2.QUANTITY), 0)
                              from
                                STORE_DEALS sd2
                              where
                                (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
                                (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) and
                                (sd2.BND_PROCESS_CODE = 50) and
                                (sd2.IN_OUT = 1) and
                                (sd2.STORNO_EMPLOYEE_CODE is null)
                            )
                          ) * 
                          p2.TECH_MEASURE_COEF / 
                          mll2.PRODUCT_TECH_QUANTITY,
                          1,
                          0
                        )
                      ),
                      0,
                      null,
                      1
                    ) 
                  ) 
                ),
                null,
                1
              )
            )
          )
        ) + IncompleteInvestedValues(5) as INCOMPLETE_INVESTED_VALUE_5      
  
      into
        WasteInvestedValues(1),
        WasteInvestedValues(2),
        WasteInvestedValues(3),
        WasteInvestedValues(4),
        WasteInvestedValues(5),
        IncompleteInvestedValues(1),
        IncompleteInvestedValues(2),
        IncompleteInvestedValues(3),
        IncompleteInvestedValues(4),
        IncompleteInvestedValues(5)
        
      from
        MATERIAL_LIST_LINES mll,
        ML_MODEL_STAGES mlms,
        MODEL_MOVEMENTS mm,
        MATERIAL_LIST_LINES mll2,
        MATERIAL_LIST_LINES fork0,
        PRODUCTS p2,
        STORE_DEALS sd,
        CURRENCY_RATES sdcr,
        CURRENCY_RATES cr
      where
        (mll.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
        (mll.ML_OBJECT_CODE = MlObjectCode) and
        (mll.ANNUL_EMPLOYEE_CODE is null) and
  
        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
  
        (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
        (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
        (mm.TO_DEPT_CODE is not null) and
        (mm.STORNO_EMPLOYEE_CODE is null) and
        
        (mll2.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
        (mll2.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
        (mll2.NO_AS_FORMATED_TEXT like (Decode(mll.NO_1, 0, '', mll.NO_AS_FORMATED_TEXT) || '%')) and
        ( (mll.FORK_NO = 0) or
          ( (mll2.NO_AS_FORMATED_TEXT = mll.NO_AS_FORMATED_TEXT) and
            (mll2.FORK_NO = mll.FORK_NO)
          )
        ) and
        (mll2.PRODUCT_CODE is not null) and
        (mll2.ANNUL_EMPLOYEE_CODE is null) and
        
        (fork0.MLL_OBJECT_BRANCH_CODE = Coalesce(mll2.FORK_0_MLL_OBJECT_BRANCH_CODE, mll2.MLL_OBJECT_BRANCH_CODE)) and
        (fork0.MLL_OBJECT_CODE = Coalesce(mll2.FORK_0_MLL_OBJECT_CODE, mll2.MLL_OBJECT_CODE)) and
        
        (p2.PRODUCT_CODE = mll2.PRODUCT_CODE) and
        
        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll2.MLL_OBJECT_BRANCH_CODE) and
        (sd.BND_PROCESS_OBJECT_CODE = mll2.MLL_OBJECT_CODE) and
        (sd.IN_OUT = -1) and
        (sd.STORNO_EMPLOYEE_CODE is null) and
  
        (sd.CURRENCY_CODE = sdcr.CURRENCY_CODE(+)) and
        (sd.STORE_DEAL_DATE = sdcr.RATE_DATE(+)) and
  
        (CurrencyCode = cr.CURRENCY_CODE(+)) and
        (sd.STORE_DEAL_DATE = cr.RATE_DATE(+))
      group by
        mm.MM_BRANCH_CODE,
        mm.MM_CODE,
        mm.DETAIL_TECH_QUANTITY,
        mll.LINE_DETAIL_TECH_QUANTITY,
        fork0.MLL_OBJECT_BRANCH_CODE,
        fork0.MLL_OBJECT_CODE,
        fork0.TOTAL_DETAIL_TECH_QUANTITY
      ;
    
    end if;

    if (InvestedValueType = 3) and (InvestedValueLevel > 1) then  -- waste stages
      -- operacionno nivo etapi
      select
        Decode(NeedIV(2), 1,
          Coalesce(  
            Sum(
              (  -- preminavania
                select
                  Sum(
                    (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                    mlmso.EFFORT_COEF *
                    ( select
                        pper.HOUR_PRICE
                      from
                        PROFESSION_PERIODS pper
                      where
                        (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and
                        (om.OM_DATE between pper.BEGIN_DATE and pper.END_DATE)
                    ) *
                    Coalesce(
                      ( select  
                          Max(em.LABOUR_COST_COEF)
                        from
                          EARNING_MODIFIERS em
                        where
                          (om.OM_DATE between em.BEGIN_DATE and em.END_DATE)
                      ),
                      1
                    ) /
                    ( select
                        cr.FIXING
                      from
                        CURRENCY_RATES cr
                      where
                        (cr.CURRENCY_CODE = CurrencyCode) and
                        (cr.RATE_DATE = om.OM_DATE)
                    )
                  )
        
                from
                  OPERATION_MOVEMENTS om
                where
                  (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                  (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                  (om.TO_DEPT_CODE is not null) and
                  (om.STORNO_EMPLOYEE_CODE is null)          
              )
            ),
            0
          ),
          0
        ) + WasteInvestedValues(2) as WASTE_INVESTED_VALUE_2,

        Decode(NeedIV(3), 1,
          Coalesce(  
            Sum(
              (  -- preminavania
                select
                  Sum(
                    (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                    ( select
                        (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /
                        dp.PARALLEL_PROCESS_COUNT                    
                      from
                        DEPT_PERIODS dp
                      where
                        (dp.DEPT_CODE = mlmso.DEPT_CODE) and
                        (om.OM_DATE between dp.BEGIN_DATE and dp.END_DATE)
                    ) /
                    ( select
                        cr.FIXING
                      from
                        CURRENCY_RATES cr
                      where
                        (cr.CURRENCY_CODE = CurrencyCode) and
                        (cr.RATE_DATE = om.OM_DATE)
                    )
                  )
                from
                  OPERATION_MOVEMENTS om
                where
                  (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                  (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                  (om.TO_DEPT_CODE is not null) and
                  (om.STORNO_EMPLOYEE_CODE is null)          
              )
            ),
            0
          ),
          0
        ) + WasteInvestedValues(3) as WASTE_INVESTED_VALUE_3,

        Decode(NeedIV(5), 1,
          Coalesce(  
            Sum(
              (  -- preminavania
                select
                  Sum(
                    (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                    mlmso.EFFORT_COEF *
                    ( select
                        pper.HOUR_PRICE
                      from
                        PROFESSION_PERIODS pper
                      where
                        (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and
                        (om.OM_DATE between pper.BEGIN_DATE and pper.END_DATE)
                    ) *
                    Coalesce(
                      ( select  
                          Max(
                            em.LABOUR_COST_COEF *
                            em.ORGANIZATION_COST_COEF
                          )
                        from
                          EARNING_MODIFIERS em
                        where
                          (om.OM_DATE between em.BEGIN_DATE and em.END_DATE)
                      ),
                      0
                    ) /
                    ( select
                        cr.FIXING
                      from
                        CURRENCY_RATES cr
                      where
                        (cr.CURRENCY_CODE = CurrencyCode) and
                        (cr.RATE_DATE = om.OM_DATE)
                    )
                  )
        
                from
                  OPERATION_MOVEMENTS om
                where
                  (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                  (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                  (om.TO_DEPT_CODE is not null) and
                  (om.STORNO_EMPLOYEE_CODE is null)          
              )
            ),
            0
          ),
          0
        ) + WasteInvestedValues(5) as WASTE_INVESTED_VALUE_5,
      
        -- incomplete fields      
        Decode(NeedIV(2), 1,
          Sign(
            Count(  
              Nvl2(
                (  -- preminavania
                  select
                    Decode(Count(*),
                      0, 0,
                      Decode(
                        Min(
                          Nvl2(
                            (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                            mlmso.EFFORT_COEF *
                            ( select
                                pper.HOUR_PRICE
                              from
                                PROFESSION_PERIODS pper
                              where
                                (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and
                                (om.OM_DATE between pper.BEGIN_DATE and pper.END_DATE)
                            ) *
                            ( select  
                                Max(em.LABOUR_COST_COEF)
                              from
                                EARNING_MODIFIERS em
                              where
                                (om.OM_DATE between em.BEGIN_DATE and em.END_DATE)
                            ) /
                            ( select
                                cr.FIXING
                              from
                                CURRENCY_RATES cr
                              where
                                (cr.CURRENCY_CODE = CurrencyCode) and
                                (cr.RATE_DATE = om.OM_DATE)
                            ),
                            1,
                            0
                          )
                        ),
                        0,
                        null,
                        0
                      )
                    )
          
                  from
                    OPERATION_MOVEMENTS om
                  where
                    (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                    (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                    (om.TO_DEPT_CODE is not null) and
                    (om.STORNO_EMPLOYEE_CODE is null)          
                ),
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(2) as INCOMPLETE_INVESTED_VALUE_2,

        Decode(NeedIV(3), 1,
          Sign(
            Count(  
              Nvl2(
                (  -- preminavania
                  select
                    Decode(Count(*),
                      0, 0,
                      Decode(
                        Min(
                          Nvl2(
                            (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                            ( select
                                (dp.HOUR_PRICE + dp.MAINTAINANCE_HOUR_PRICE) /
                                dp.PARALLEL_PROCESS_COUNT                    
                              from
                                DEPT_PERIODS dp
                              where
                                (dp.DEPT_CODE = mlmso.DEPT_CODE) and
                                (om.OM_DATE between dp.BEGIN_DATE and dp.END_DATE)
                            ) /
                            ( select
                                cr.FIXING
                              from
                                CURRENCY_RATES cr
                              where
                                (cr.CURRENCY_CODE = CurrencyCode) and
                                (cr.RATE_DATE = om.OM_DATE)
                            ),
                            1,
                            0
                          )
                        ),
                        0,
                        null,
                        0
                      )
                    )
                  from
                    OPERATION_MOVEMENTS om
                  where
                    (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                    (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                    (om.TO_DEPT_CODE is not null) and
                    (om.STORNO_EMPLOYEE_CODE is null)          
                ),
                null,
                1
              )
            )
          )
        ) + IncompleteInvestedValues(3) as INCOMPLETE_INVESTED_VALUE_3,

        Decode(NeedIV(5), 1,
          Sign(
            Count(  
              Nvl2(
                (  -- preminavania
                  select
                    Decode(Count(*),
                      0, 0,
                      Decode(
                        Min(
                          Nvl2(
                            (om.WORK_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY) *
                            mlmso.EFFORT_COEF *
                            ( select
                                pper.HOUR_PRICE
                              from
                                PROFESSION_PERIODS pper
                              where
                                (pper.PROFESSION_CODE = mlmso.PROFESSION_CODE) and
                                (om.OM_DATE between pper.BEGIN_DATE and pper.END_DATE)
                            ) *
                            ( select  
                                Max(
                                  em.LABOUR_COST_COEF *
                                  em.ORGANIZATION_COST_COEF
                                )
                              from
                                EARNING_MODIFIERS em
                              where
                                (om.OM_DATE between em.BEGIN_DATE and em.END_DATE)
                            ) /
                            ( select
                                cr.FIXING
                              from
                                CURRENCY_RATES cr
                              where
                                (cr.CURRENCY_CODE = CurrencyCode) and
                                (cr.RATE_DATE = om.OM_DATE)
                            ),
                            1,
                            0
                          )
                        ),
                        0,
                        null,
                        0
                      )
                    )
          
                  from
                    OPERATION_MOVEMENTS om
                  where
                    (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                    (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                    (om.TO_DEPT_CODE is not null) and
                    (om.STORNO_EMPLOYEE_CODE is null)          
                ),
                null,
                1
              )
            )
          ),
          0
        ) + IncompleteInvestedValues(5) as INCOMPLETE_INVESTED_VALUE_5
        
      into
        WasteInvestedValues(2),
        WasteInvestedValues(3),
        WasteInvestedValues(5),
        IncompleteInvestedValues(2),
        IncompleteInvestedValues(3),
        IncompleteInvestedValues(5)
        
      from
        MATERIAL_LIST_LINES mll,
        ML_MODEL_STAGES mlms,
        MLMS_OPERATIONS mlmso
        
      where
        (mll.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
        (mll.ML_OBJECT_CODE = MlObjectCode) and
      
        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
        (mlms.ML_MODEL_STAGE_NO > 0) and
        (mlms.TREATMENT_WORKDAYS > 0) and
        (mlms.OUTGOING_WORKDAYS > 0) and
      
        (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
        (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
        (mlmso.OPERATION_TYPE_CODE = 2) and
        (mlmso.IS_ACTIVE = 1)
      ;

      -- vunshni etapi
      if (NeedIV(4) = 1) then
        select
          Coalesce(
            Sum(
              mm.DETAIL_TECH_QUANTITY *
              mlms.EXTERNAL_WORK_PRICE /
              (
                select
                  cr.FIXING
                from
                  CURRENCY_RATES cr
                where
                  (cr.CURRENCY_CODE = CurrencyCode) and
                  (cr.RATE_DATE = mm.MM_DATE)
              )
            ),
            0
          ) + WasteInvestedValues(4) as WASTE_INVESTED_VALUE_4,
          
          Sign(
            Count(
              Nvl2(
                mm.DETAIL_TECH_QUANTITY *
                mlms.EXTERNAL_WORK_PRICE /
                (
                  select
                    cr.FIXING
                  from
                    CURRENCY_RATES cr
                  where
                    (cr.CURRENCY_CODE = CurrencyCode) and
                    (cr.RATE_DATE = mm.MM_DATE)
                ),
                null,
                1
              )
            )
          ) + IncompleteInvestedValues(4) as INCOMPLETE_INVESTED_VALUE_4
          
        into
          RealInvestedValues(4),
          IncompleteInvestedValues(4)
          
        from
          MATERIAL_LIST_LINES mll,
          ML_MODEL_STAGES mlms,
          MODEL_MOVEMENTS mm
          
        where
          (mll.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
          (mll.ML_OBJECT_CODE = MlObjectCode) and
          (mll.ANNUL_EMPLOYEE_CODE is null) and
        
          (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
          (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
          (mlms.ML_MODEL_STAGE_NO > 0) and
          (mlms.TREATMENT_WORKDAYS > 0) and
          (mlms.OUTGOING_WORKDAYS > 0) and
          (mlms.EXTERNAL_WORK_PRICE is not null) and
          
          (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
          (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
          (mm.TO_DEPT_CODE is not null) and
          (mm.STORNO_EMPLOYEE_CODE is null)
        ;      
      end if;
    end if;  -- waste stages
    
    ToLevel:= InvestedValueLevel;

    if (InvestedValueSumType = 0) then
      FromLevel:= ToLevel;
    else
      FromLevel:= 3 - InvestedValueSumType;
    end if;
 
    ResultValue:= 0;
    ResultIsIncomplete:= 0;
    for LevelIterator in FromLevel..ToLevel loop
    
      case InvestedValueType
        when 0 then
          LevelResultValue:= PlanInvestedValues(LevelIterator);
        when 1 then
          LevelResultValue:= RealInvestedValues(LevelIterator);
        when 2 then
          LevelResultValue:= PlanInvestedValues(LevelIterator) - RealInvestedValues(LevelIterator);
        when 3 then
          LevelResultValue:= -WasteInvestedValues(LevelIterator);
      else
        LevelResultValue:= 0;
      end case;

      ResultValue:= ResultValue + LevelResultValue;
      
      ResultIsIncomplete:= ResultIsIncomplete + IncompleteInvestedValues(LevelIterator);

    end loop;
    ResultIsIncomplete:= Sign(ResultIsIncomplete);
    
    Result.VALUE:= ResultValue;
    Result.IS_INCOMPLETE:= ResultIsIncomplete;

    return(Result);
  end;
  
  function ModelInvestedValue2(
    MlObjectBranchCode in Number,
    MlObjectCode in Number,
    InvestedValueLevel in Number, -- ot 1 do 5
    InvestedValueSumType in Number,  -- 0-none, 1-aggregated, 2-full
    InvestedValueType in Number, -- 0-plan, 1-real, 2-diversion, 3-waste
    CurrencyCode in Number
  ) return VarChar2 is
    ivr TInvestedValueRow;
  begin
    ivr:= 
      GetModelInvestedValue(
        MlObjectBranchCode, 
        MlObjectCode, 
        InvestedValueLevel, 
        InvestedValueSumType, 
        InvestedValueType, 
        CurrencyCode);

    return MiscUtils.NamedValuesToCompositeString('VALUE', ivr.VALUE, 'IS_INCOMPLETE', ivr.IS_INCOMPLETE);  
  end;
  
  function IsAutoReceivingStage(
    MlmsObjectBranchCode in Number,
    MlmsObjectCode in Number
  ) return Number is
    Result Number;
  begin
    select
      Coalesce(
        (
          select
            prev_mlms.IS_AUTO_MOVEMENT
          from
            ML_MODEL_STAGES prev_mlms
          where
            (prev_mlms.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
            (prev_mlms.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
            (prev_mlms.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STAGE_NO - 1)
        ),
        (
          select
            Max(prev_mlms.IS_AUTO_MOVEMENT)
          from
            MATERIAL_LIST_LINES mll,
            ML_MODEL_STAGES prev_mlms
          where
            (mll.PARENT_MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
            (mll.PARENT_MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and

            (prev_mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
            (prev_mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
            (prev_mlms.ML_MODEL_STAGE_NO = 
               ModelUtils.MaxStageNo(prev_mlms.MLMS_OBJECT_BRANCH_CODE, prev_mlms.MLMS_OBJECT_CODE) - 1)
        )
      )
    into
      Result
    from
      ML_MODEL_STAGES mlms
    where
      (mlms.MLMS_OBJECT_BRANCH_CODE = MlmsObjectBranchCode) and
      (mlms.MLMS_OBJECT_CODE = MlmsObjectCode)
    ;
    
    return(Result);
  end;
  
  function SpecState(
    ProductCode in Number, 
    TechQuantity in Number := null, 
    ProductionDeptCode in Number := null,
    ToDate in Date := null
  ) return Number is
    Result Number;
  begin
    if ((TechQuantity is null) <> (ProductionDeptCode is null)) then
      raise_application_error(-20000, 'Incorrect parameter values for SpecState!');
    end if;
  
    select
      Coalesce(
        Min(
          case
            when
              (not exists
                ( select
                    1
                  from
                    SPECS sp
                  where
                    (sp.SPEC_PRODUCT_CODE = p.PRODUCT_CODE)
                )
              ) then
              1
            when
              (not exists
                ( select
                    1
                  from
                    SPECS sp
                  where
                    (sp.SPEC_PRODUCT_CODE = p.PRODUCT_CODE) and
                    (sp.AUTHORIZATION_EMPLOYEE_CODE is not null)
                )
              ) then
              2
            when
              (not exists
                ( select
                    1
                  from
                    SPEC_MODEL_VARIANTS smv
                  where
                    (smv.SPEC_PRODUCT_CODE = p.PRODUCT_CODE) and
                    
                    ( (ProductionDeptCode is null) or
                      ( (smv.MAIN_DEPT_CODE = ProductionDeptCode) and
                        (TechQuantity > smv.MIN_TECH_QUANTITY) and
                        (TechQuantity <= smv.MAX_TECH_QUANTITY) 
                      ) 
                    ) and

                    ( (ToDate is null) or
                      exists(
                        select
                          1
                        from
                          PROD_PER_SPEC_MODEL_VARIANTS ppsmv,
                          PRODUCT_PERIODS pper
                        where
                          (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and
                          (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_NO) and

                          (ppsmv.PRODUCT_CODE = pper.PRODUCT_CODE) and
                          (ppsmv.PRODUCT_PERIOD_CODE = pper.PRODUCT_PERIOD_CODE) and
                          (ToDate between pper.BEGIN_DATE and pper.END_DATE)
                      )
                    )
                )
              ) then
              3
            when
              (not exists
                ( select
                    1
                  from
                    SPEC_MODEL_VARIANTS smv
                  where
                    (smv.SPEC_PRODUCT_CODE = p.PRODUCT_CODE) and
                    
                    ( (ProductionDeptCode is null) or
                      ( (smv.MAIN_DEPT_CODE = ProductionDeptCode) and
                        (TechQuantity > smv.MIN_TECH_QUANTITY) and
                        (TechQuantity <= smv.MAX_TECH_QUANTITY)
                      )
                    ) and

                    (
                      ( ( (select PRODUCTION_LEVEL_CODE from COMMON_OPTIONS co where (co.CODE = 1)) < 3 ) and
                        (smv.AUTHORIZATION_EMPLOYEE_CODE is not null)
                      ) or
                      ( ( (select PRODUCTION_LEVEL_CODE from COMMON_OPTIONS co where (co.CODE = 1)) = 3 ) and
                        (smv.AUTHORIZATION_EMPLOYEE_CODE is not null) and
                        (smv.AUTHORIZATION_OF_OPERATIONS = 1)
                      )
                    ) and
                    
                    ( (ToDate is null) or
                      exists(
                        select
                          1
                        from
                          PROD_PER_SPEC_MODEL_VARIANTS ppsmv,
                          PRODUCT_PERIODS pper
                        where
                          (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and
                          (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_NO) and

                          (ppsmv.PRODUCT_CODE = pper.PRODUCT_CODE) and
                          (ppsmv.PRODUCT_PERIOD_CODE = pper.PRODUCT_PERIOD_CODE) and
                          (ToDate between pper.BEGIN_DATE and pper.END_DATE)
                      )
                    )
                )
              ) then
              4
            when
              (not exists
                ( select
                    1
                  from
                    SPEC_MODEL_VARIANTS smv
                  where
                    (smv.SPEC_PRODUCT_CODE = p.PRODUCT_CODE) and
                    
                    ( (ProductionDeptCode is null) or
                      ( (smv.MAIN_DEPT_CODE = ProductionDeptCode) and
                        (TechQuantity > smv.MIN_TECH_QUANTITY) and
                        (TechQuantity <= smv.MAX_TECH_QUANTITY)
                      )
                    ) and

                    (
                      ( ( (select PRODUCTION_LEVEL_CODE from COMMON_OPTIONS co where (co.CODE = 1)) < 3 ) and
                        (smv.AUTHORIZATION_EMPLOYEE_CODE is null)
                      ) or
                      ( ( (select PRODUCTION_LEVEL_CODE from COMMON_OPTIONS co where (co.CODE = 1)) = 3 ) and
                        (smv.AUTHORIZATION_EMPLOYEE_CODE is null) and
                        (smv.AUTHORIZATION_OF_OPERATIONS = 1)
                      )
                    ) and
                    
                    ( (ToDate is null) or
                      exists(
                        select
                          1
                        from
                          PROD_PER_SPEC_MODEL_VARIANTS ppsmv,
                          PRODUCT_PERIODS pper
                        where
                          (ppsmv.PRODUCT_CODE = smv.SPEC_PRODUCT_CODE) and
                          (ppsmv.SPEC_MODEL_VARIANT_NO = smv.SPEC_MODEL_VARIANT_NO) and

                          (ppsmv.PRODUCT_CODE = pper.PRODUCT_CODE) and
                          (ppsmv.PRODUCT_PERIOD_CODE = pper.PRODUCT_PERIOD_CODE) and
                          (ToDate between pper.BEGIN_DATE and pper.END_DATE)
                      )
                    )
                )
              ) then
              6
            else
              5
          end
        ),
        1
      ) as SPEC_STATE_CODE
    into
      Result
    from
      PRODUCTS p
    where
      (p.PRODUCT_CODE = ProductCode)
    ;

    return(Result);
  end;
  
  function SpecLineModelWorkdays(
    SpecProductCode in Number, 
    SpecModelVariantNo in Number, 
    SpecLineCode in Number
  ) return Number is
    Result Number;
  begin
    select
      Coalesce(Sum(x.TREATMENT_WORKDAYS), 0) -
      Coalesce(Sum(Decode(x.SPEC_LINE_STAGE_NO, MAX_SPEC_LINE_STAGE_NO, null, OUTGOING_WORKDAYS)), 0)
    into
      Result
    from
      ( select
          smvs.TREATMENT_WORKDAYS,
          smvs.OUTGOING_WORKDAYS,
          smvs.SPEC_LINE_STAGE_NO,
          Max(smvs.SPEC_LINE_STAGE_NO) over () as MAX_SPEC_LINE_STAGE_NO
        from
          SPEC_MODEL_VARIANT_STAGES smvs
        where
          (smvs.SPEC_PRODUCT_CODE = SpecProductCode) and
          (smvs.SPEC_MODEL_VARIANT_NO = SpecModelVariantNo) and
          (smvs.SPEC_LINE_CODE = SpecLineCode) and
          (smvs.TREATMENT_WORKDAYS > 0)
      ) x
    ;
    
    return(Result);
  end;
  
  function MllModelWorkdays(
    MllObjectBranchCode in Number, 
    MllObjectCode in Number
  ) return Number is
    Result Number;
  begin
    select
      Coalesce(Sum(x.TREATMENT_WORKDAYS), 0) -
      Coalesce(Sum(Decode(x.ML_MODEL_STAGE_NO, MAX_ML_MODEL_STAGE_NO, null, OUTGOING_WORKDAYS)), 0)
    into
      Result
    from
      ( select
          mlms.TREATMENT_WORKDAYS,
          mlms.OUTGOING_WORKDAYS,
          mlms.ML_MODEL_STAGE_NO,
          Max(mlms.ML_MODEL_STAGE_NO) over () as MAX_ML_MODEL_STAGE_NO
        from
          ML_MODEL_STAGES mlms
        where
          (mlms.MLL_OBJECT_BRANCH_CODE = MllObjectBranchCode) and
          (mlms.MLL_OBJECT_CODE = MllObjectCode) and
          (mlms.TREATMENT_WORKDAYS > 0)
      ) x
    ;
    
    return(Result);
  end;

  
  procedure CalcSpecTotalTreatmentWorkdays(
    SpecProductCode in Number, 
    SpecLineCode in Number := null
  ) is
  begin
    for x in
      ( select
          smvs.SPEC_PRODUCT_CODE,
          smvs.SPEC_MODEL_VARIANT_NO,
          smvs.SPEC_LINE_CODE,
          smvs.SPEC_LINE_STAGE_CODE,
          smvs.SPEC_LINE_STAGE_NO,
          sl.PARENT_SPEC_LINE_CODE
        from
          SPEC_MODEL_VARIANT_STAGES smvs,
          SPEC_LINES sl
        where
          (sl.SPEC_PRODUCT_CODE = smvs.SPEC_PRODUCT_CODE) and
          (sl.SPEC_LINE_CODE = smvs.SPEC_LINE_CODE) and
        
          (sl.SPEC_PRODUCT_CODE = SpecProductCode) and
          (smvs.SPEC_PRODUCT_CODE = SpecProductCode) and
          
          ( sl.NO_AS_FORMATED_TEXT like
            (
              ( select
                  sl2.NO_AS_FORMATED_TEXT
                from
                  SPEC_LINES sl2
                where
                  (sl2.SPEC_PRODUCT_CODE = SpecProductCode) and
                  (sl2.SPEC_LINE_CODE = SpecLineCode) and
                  (sl2.PARENT_SPEC_LINE_CODE is not null)
              )
              || 
              '%'
            )
          ) 
        order by
          smvs.SPEC_MODEL_VARIANT_NO,
          sl.NO_AS_FORMATED_TEXT,
          smvs.SPEC_LINE_STAGE_NO desc
      )
    loop
    
      update
        SMVS_FOR_EDIT smvs
      set
        smvs.TOTAL_TREATMENT_WORKDAYS = 
          ( select
              ( ( select
                    Coalesce(Max(psmvs.TOTAL_TREATMENT_WORKDAYS), 0)
                  from
                    SPEC_MODEL_VARIANT_STAGES psmvs
                  where
                    (psmvs.SPEC_PRODUCT_CODE = x.SPEC_PRODUCT_CODE) and
                    (psmvs.SPEC_MODEL_VARIANT_NO = x.SPEC_MODEL_VARIANT_NO) and
                    (psmvs.SPEC_LINE_CODE = x.PARENT_SPEC_LINE_CODE) 
                ) +
                ( select
                    Sum(nsmvs.TREATMENT_WORKDAYS - nsmvs.OUTGOING_WORKDAYS)
                  from
                    SPEC_MODEL_VARIANT_STAGES nsmvs
                  where
                    (nsmvs.SPEC_PRODUCT_CODE = x.SPEC_PRODUCT_CODE) and
                    (nsmvs.SPEC_MODEL_VARIANT_NO = x.SPEC_MODEL_VARIANT_NO) and
                    (nsmvs.SPEC_LINE_CODE = x.SPEC_LINE_CODE) and
                    (nsmvs.SPEC_LINE_STAGE_NO >= x.SPEC_LINE_STAGE_NO)
                )
              ) as NEW_TOTAL_TREATMENT_WORKDAYS
            from
              DUAL
          )
      where
        (smvs.SPEC_PRODUCT_CODE = x.SPEC_PRODUCT_CODE) and
        (smvs.SPEC_MODEL_VARIANT_NO = x.SPEC_MODEL_VARIANT_NO) and
        (smvs.SPEC_LINE_CODE = x.SPEC_LINE_CODE) and
        (smvs.SPEC_LINE_STAGE_CODE = x.SPEC_LINE_STAGE_CODE);
    
    end loop;
  end;  
  
  procedure CalcSaleInStoreDealsTotalPrice(
    SaleObjectBranchCode in Number, 
    SaleObjectCode in Number
  ) is
  begin
    for x in
      ( select
          sd.STORE_DEAL_OBJECT_BRANCH_CODE,
          sd.STORE_DEAL_OBJECT_CODE
        from
          STORE_DEALS sd
        where
          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = SaleObjectBranchCode) and
          (sd.BND_PROCESS_OBJECT_CODE = SaleObjectCode) and
          (sd.IN_OUT = 1) and
          (sd.STORNO_EMPLOYEE_CODE is null) and
          exists(
            select
              1
            from
              OPERATION_MOVEMENTS om
            where
              (om.STORE_DEAL_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
              (om.STORE_DEAL_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE) 
          )
      )
    loop      
      update
        STORE_DEALS_FOR_EDIT sd
      set
        sd.TOTAL_PRICE =
          ( select
              ModelUtils.GetOperationMovementTotalPrice(om.OM_BRANCH_CODE, om.OM_CODE)
            from
              OPERATION_MOVEMENTS om
            where
              (om.STORE_DEAL_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_CODE) and
              (om.STORE_DEAL_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE)
          )
      where
        (sd.STORE_DEAL_OBJECT_BRANCH_CODE = x.STORE_DEAL_OBJECT_BRANCH_CODE) and
        (sd.STORE_DEAL_OBJECT_CODE = x.STORE_DEAL_OBJECT_CODE)
      ;
    end loop;
  end;

  procedure CheckEOCloseAndAnnul(
    AEngineeringOrderCode in Number,
    AParentEngineeringOrderCode in Number,
    AIsClosed in Boolean,
    AIsAnnuled in Boolean
  ) is
    EOHasIncorrectDescendants Number;
    IsParentEOClosed Number;
    EOHasUnannuledDescendants Number;
    IsParentEOAnnuled Number;
  begin

    if AIsAnnuled then

      select
        Sign(Count(*))
      into
        EOHasUnannuledDescendants
      from
        ENGINEERING_ORDERS eo
      where
        (eo.PARENT_ENGINEERING_ORDER_CODE = AEngineeringOrderCode) and
        (eo.ANNUL_EMPLOYEE_CODE is null);

      if (EOHasUnannuledDescendants = 1) then
        raise_application_error(-20001, ServerMessages.SEOHasUnannuledDescendantsId);
      end if;

    elsif AIsClosed then

      select
        Sign(Count(*))
      into
        EOHasIncorrectDescendants
      from
        ENGINEERING_ORDERS eo
      where
        (eo.PARENT_ENGINEERING_ORDER_CODE = AEngineeringOrderCode) and
        (eo.CLOSE_EMPLOYEE_CODE is null) and
        (eo.ANNUL_EMPLOYEE_CODE is null);

      if (EOHasIncorrectDescendants = 1) then
        raise_application_error(-20001, ServerMessages.SEOHasUnclosedDescendantsId);
      end if;

    else

      select
        Nvl2(Max(eo.CLOSE_EMPLOYEE_CODE), 1, 0),
        Nvl2(Max(eo.ANNUL_EMPLOYEE_CODE), 1, 0)
      into
        IsParentEOClosed,
        IsParentEOAnnuled
      from
        ENGINEERING_ORDERS eo
      where
        (eo.ENGINEERING_ORDER_CODE = AParentEngineeringOrderCode);

      if (IsParentEOAnnuled = 1) then
        raise_application_error(-20001, ServerMessages.SParentEOIsAnnuledId);
      end if;

      if (IsParentEOClosed = 1) then
        raise_application_error(-20001, ServerMessages.SParentEOIsClosedId);
      end if;

    end if;

  end;

  procedure UpdateModelPsdDepts(
    MlObjectBranchCode in Number, 
    MlObjectCode in Number
  ) is
    SaleObjectBranchCode Number;
    SaleObjectCode Number;
    DeptCode Number;
  begin
    for x in
      ( select
          mll.MLL_OBJECT_BRANCH_CODE,
          mll.MLL_OBJECT_CODE,
          mlms.DEPT_CODE
        from
          MATERIAL_LIST_LINES mll,
          ML_MODEL_STAGES mlms
        where
          (mll.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
          (mll.ML_OBJECT_CODE = MlObjectCode) and
          (mll.PRODUCT_CODE is not null) and
          (mll.ANNUL_EMPLOYEE_CODE is null) and
          
          (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
          (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
          (mlms.ML_MODEL_STAGE_NO = 1)
      )
    loop  
      update
        PLANNED_STORE_DEALS_FOR_EDIT psd
      set
        psd.DEPT_CODE = x.DEPT_CODE
      where
        (psd.BND_PROCESS_OBJECT_BRANCH_CODE = x.MLL_OBJECT_BRANCH_CODE) and
        (psd.BND_PROCESS_OBJECT_CODE = x.MLL_OBJECT_CODE) and
        (Coalesce(psd.DEPT_CODE, 0) <> x.DEPT_CODE);
    end loop;
    
    select
      Max(ml.BND_PROCESS_OBJECT_BRANCH_CODE),
      Max(ml.BND_PROCESS_OBJECT_CODE),
      Max(mlms.DEPT_CODE)
    into
      SaleObjectBranchCode,
      SaleObjectCode,
      DeptCode
    from
      MATERIAL_LISTS ml,
      MATERIAL_LIST_LINES mll,
      ML_MODEL_STAGES mlms
    where
      (ml.ML_OBJECT_BRANCH_CODE = MlObjectBranchCode) and
      (ml.ML_OBJECT_CODE = MlObjectCode) and

      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
      (mll.NO_1 = 0) and
      
      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
      (mlms.ML_MODEL_STAGE_NO = 
        ( select
            Max(mlms2.ML_MODEL_STAGE_NO) - 1
          from
            ML_MODEL_STAGES mlms2
          where
            (mlms2.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
            (mlms2.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)
        )
      );
      
    update
      PLANNED_STORE_DEALS_FOR_EDIT psd
    set
      psd.DEPT_CODE = DeptCode
    where
      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = SaleObjectBranchCode) and
      (psd.BND_PROCESS_OBJECT_CODE = SaleObjectCode) and
      (Coalesce(psd.DEPT_CODE, 0) <> DeptCode);      
  end;

  procedure UpdateMlmsoVariantQuantities(
    MlmsoObjectBranchCode in Number, 
    MlmsoObjectCode in Number
  ) is
    NeededQuantities MiscUtils.TNumberArray;
    TotalNeededQuantity Number;
    TotalPossibleQuantity Number;
    MlmsObjectBranchCode Number;
    MlmsObjectCode Number;
    MlmsOperationNo Number;
    MlmsoIdentifier VarChar2(100 char);
    delta Number;
    FeatureFlagOperationLoading Number;
  begin

    select
      (x.AVAILABLE_DETAIL_TECH_QTY + x.TOTAL_WORK_DETAIL_TECH_QTY - x.VARIANT_DETAIL_TECH_QUANTITY) as NEEDED_DETAIL_TECH_QTY

    bulk collect into
      NeededQuantities

    from
      (
        select
          mlmso2.MLMSO_OBJECT_BRANCH_CODE,
          mlmso2.MLMSO_OBJECT_CODE,
          mlmso2.MLMS_OPERATION_VARIANT_NO,
          mlmso2.VARIANT_DETAIL_TECH_QUANTITY,
          
          ( ( select
                Coalesce(Sum(om.TOTAL_DETAIL_TECH_QUANTITY), 0)
              from
                OPERATION_MOVEMENTS om
              where
                (om.TO_MLMSO_OBJECT_BRANCH_CODE = mlmso2.MLMSO_OBJECT_BRANCH_CODE) and
                (om.TO_MLMSO_OBJECT_CODE = mlmso2.MLMSO_OBJECT_CODE) and
                (om.STORNO_EMPLOYEE_CODE is null)
            ) --as TOTAL_IN_DETAIL_TECH_QTY,
            -
            ( select
                Coalesce(Sum(om.TOTAL_DETAIL_TECH_QUANTITY), 0)
              from
                OPERATION_MOVEMENTS om
              where
                (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso2.MLMSO_OBJECT_BRANCH_CODE) and
                (om.FROM_MLMSO_OBJECT_CODE = mlmso2.MLMSO_OBJECT_CODE) and
                (om.STORNO_EMPLOYEE_CODE is null)
            ) --as TOTAL_OUT_DETAIL_TECH_QTY,
          ) as AVAILABLE_DETAIL_TECH_QTY,

          ( select
              Coalesce(Sum(om.WORK_DETAIL_TECH_QUANTITY), 0)
            from
              OPERATION_MOVEMENTS om
            where
              (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso2.MLMSO_OBJECT_BRANCH_CODE) and
              (om.FROM_MLMSO_OBJECT_CODE = mlmso2.MLMSO_OBJECT_CODE) and
              (om.STORNO_EMPLOYEE_CODE is null)
          ) as TOTAL_WORK_DETAIL_TECH_QTY

        from
          MLMS_OPERATIONS mlmso,
          MLMS_OPERATIONS mlmso2
          
        where
          (mlmso.MLMSO_OBJECT_BRANCH_CODE = MlmsoObjectBranchCode) and
          (mlmso.MLMSO_OBJECT_CODE = MlmsoObjectCode) and          
          (mlmso2.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
          (mlmso2.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
          (mlmso2.MLMS_OPERATION_NO = mlmso.MLMS_OPERATION_NO) and
          (mlmso2.MLMS_OPERATION_VARIANT_NO >= 0)
      ) x
          
    order by
      x.MLMS_OPERATION_VARIANT_NO;
      

    -- calc total quantities
    TotalNeededQuantity:= 0;
    TotalPossibleQuantity:= 0;
    for i in 1..NeededQuantities.count loop

      if (NeededQuantities(i) > 0) then
        TotalNeededQuantity:= TotalNeededQuantity + NeededQuantities(i);
      end if;

      if (NeededQuantities(i) < 0) then
        TotalPossibleQuantity:= TotalPossibleQuantity + Abs(NeededQuantities(i));
      end if;

    end loop;


    if (TotalNeededQuantity > 0) then
        
      select
        iv.FEATURE_FLAG_OPERATION_LOADING
      into
        FeatureFlagOperationLoading
      from
        INTERNAL_VALUES iv
      where
        (iv.CODE = 1);
    
      if (FeatureFlagOperationLoading = 0) or (TotalNeededQuantity > TotalPossibleQuantity) then
          
        select
          po.PROCESS_OBJECT_IDENTIFIER
        into
          MlmsoIdentifier
        from
          PROCESS_OBJECTS po
        where
          (po.PROCESS_OBJECT_BRANCH_CODE = MlmsoObjectBranchCode) and
          (po.PROCESS_OBJECT_CODE = MlmsoObjectCode);

        raise_application_error(-20002, 
          ServerMessages.SInvalidOperationVariantsQtyId || '(' ||
          'Mlmso:s=' || MessageUtils.InternalEncodeString(MlmsoIdentifier) || ')'
        );
          
      end if;
        

      select
        mlmso.MLMS_OBJECT_BRANCH_CODE,
        mlmso.MLMS_OBJECT_CODE,
        mlmso.MLMS_OPERATION_NO
      into
        MlmsObjectBranchCode,
        MlmsObjectCode,
        MlmsOperationNo
      from
        MLMS_OPERATIONS mlmso
      where
        (mlmso.MLMSO_OBJECT_BRANCH_CODE = MlmsoObjectBranchCode) and
        (mlmso.MLMSO_OBJECT_CODE = MlmsoObjectCode);
        

      -- update VARIANT_DETAIL_TECH_QUANTITY where is needed more
      for i in 1..NeededQuantities.count loop

        if (NeededQuantities(i) > 0) then
            
          update
            MLMS_OPERATIONS_FOR_EDIT mlmso
          set
            mlmso.VARIANT_DETAIL_TECH_QUANTITY = mlmso.VARIANT_DETAIL_TECH_QUANTITY + NeededQuantities(i)
          where
            (mlmso.MLMS_OBJECT_BRANCH_CODE = MlmsObjectBranchCode) and
            (mlmso.MLMS_OBJECT_CODE = MlmsObjectCode) and
            (mlmso.MLMS_OPERATION_NO = MlmsOperationNo) and
            (mlmso.MLMS_OPERATION_VARIANT_NO = i - 1);              
          
        end if;
        
      end loop;
      

-- todo check variant_no holes

      -- update VARIANT_DETAIL_TECH_QUANTITY where is exceeded
      for i in reverse 1..NeededQuantities.count loop

        if (TotalPossibleQuantity > 0) and (NeededQuantities(i) < 0) then
            
          delta:= Least(TotalPossibleQuantity, Abs(NeededQuantities(i)));
          
          update
            MLMS_OPERATIONS_FOR_EDIT mlmso
          set
            mlmso.VARIANT_DETAIL_TECH_QUANTITY = mlmso.VARIANT_DETAIL_TECH_QUANTITY - delta
          where
            (mlmso.MLMS_OBJECT_BRANCH_CODE = MlmsObjectBranchCode) and
            (mlmso.MLMS_OBJECT_CODE = MlmsObjectCode) and
            (mlmso.MLMS_OPERATION_NO = MlmsOperationNo) and
            (mlmso.MLMS_OPERATION_VARIANT_NO = i - 1);              
              
          TotalPossibleQuantity:= TotalPossibleQuantity - delta;
          
        end if;

      end loop;
        
    end if;
    
  end;
  
end;
/
