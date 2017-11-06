create or replace package CapacityUtils is

  function cllDept return Number deterministic;
  function cllOccupation return Number deterministic;
  function cllOccupationAssignment return Number deterministic;
  function cllEmpAvailability return Number deterministic;
  
  function GetDeptLimitHours(ADeptCode in Number, ADate in Date, ACapacityLimitLevel in Number) return Number;
  function GetDeptLimitHours(ADeptCode in Number, ABeginDate in Date, AEndDate in Date, ACapacityLimitLevel in Number) return Number;
  
  procedure PrepareCapacityTable(
    AXDate in Date, 
    ADateUnitCode in Number, 
    ACapacityLimitLevel in Number, 
    ACalcAllLimitLevels in Number, 
    AAspectType in Number, 
    AProductCommonLevel in Number,
    APartnerCommonLevel in Number,
    AMinParRelProductStatus in Number,
    AMaxParRelProductStatus in Number
  );
  
  procedure UnprepareCapacityTable;
  
  function GetCapacityAccumulatedRow2(
    AXDate in Date, 
    ADateUnitCode in Number, 
    ACapacityLimitLevel in Number, 
    ACalcAllLimitLevels in Number, 
    AAspectType in Number, 
    AProductCommonLevel in Number,
    APartnerCommonLevel in Number,
    AMinParRelProductStatus in Number,
    AMaxParRelProductStatus in Number
  ) return VarChar2;  

  function HasMlmsoPlanExcess(AMlmsoObjectBranchCode in Number, AMlmsoObjectCode in Number) return Number;

end;
/
create or replace package body CapacityUtils is

  type TCapacityRow is record (
    THE_X_DATE Date,
    DEPT_CODE Number(10),
    DEPT_LVL_LIMIT_HOURS Number,
    OCC_LVL_LIMIT_HOURS_DIFF Number,
    OCC_LVL_LIMIT_HOURS Number,
    OCC_ASS_LVL_LIMIT_HOURS_DIFF Number,
    OCC_ASS_LVL_LIMIT_HOURS Number,
    EMP_AVAIL_LVL_LIMIT_HOURS_DIFF Number,
    EMP_AVAIL_LVL_LIMIT_HOURS Number,
    LIMIT_HOURS Number,
    REAL_LOGISTICS_HOURS Number,
    REAL_EXPLOITATION_HOURS Number,
    REAL_FREE_HOURS Number,
    REAL_EXCESS_HOURS Number,
    PLAN_LOGISTICS_HOURS Number,
    PLAN_EXPLOITATION_HOURS Number,
    PLAN_FREE_HOURS Number,
    PLAN_EXCESS_HOURS Number
  );
  
  type TCapacityTable is table of TCapacityRow;
  
  type TLimitRec is record (
    DeptCode DEPTS.DEPT_CODE%TYPE,
    DeptLevelLimitHours Number,
    OccupationLevelLimitHours Number,
    OccAssignmentLevelLimitHours Number,
    EmpAvailabilityLevelLimitHours Number
  );
  
  type TLimitRecList is table of TLimitRec;
  
  
  type TWorkRec is record (
    DeptCode DEPTS.DEPT_CODE%TYPE,
    LogisticsHours Number,
    ExploitationHours Number
  );
  
  type TWorkRecList is table of TWorkRec;
  

  function cllDept return Number deterministic is
  begin
    return CapacityConsts.cll_Dept;
  end;
  
  function cllOccupation return Number deterministic is
  begin
    return CapacityConsts.cll_Occupation;
  end;
  
  function cllOccupationAssignment return Number deterministic is
  begin
    return CapacityConsts.cll_OccupationAssignment;
  end;
  
  function cllEmpAvailability return Number deterministic is
  begin
    return CapacityConsts.cll_EmpAvailability;
  end;
  

  function GetDeptLimitHours(ADeptCode in Number, ABeginDate in Date, AEndDate in Date, ACapacityLimitLevel in Number) return Number is
    Result Number;
  begin

    case
      when (ACapacityLimitLevel = CapacityConsts.cll_Dept) then
        begin

          select
            Sum(
              ( select
                  dp.EST_CAPACITY_DAY_LIMIT_HOURS
                from
                  DEPT_PERIODS dp
                where
                  (dp.DEPT_CODE = ADeptCode) and
                  (td.THE_DATE between dp.BEGIN_DATE and dp.END_DATE)
              )
            ) as LIMIT_HOURS
          into
            Result
          from
            THE_DATES td
          where
            (td.THE_DATE between ABeginDate and AEndDate) and
            (td.WORKDAYS > 0);
          
        end;

      when (ACapacityLimitLevel = CapacityConsts.cll_Occupation) then
        begin
      
          select
            ( Sum(
                Least(
                  ( Sum(z.DENSITY_PERCENT) / 
                    Coalesce(
                      ( select
                          dp.PARALLEL_OPERATOR_COUNT
                        from
                          DEPT_PERIODS dp
                        where
                          (dp.DEPT_CODE = ADeptCode) and
                          (z.THE_DATE between dp.BEGIN_DATE and dp.END_DATE)
                      ),
                      1
                    )
                  ),
                  1
                )
              ) /
              CapacityConsts.HourGranuleCount
            ) as CAPACITY_HOURS
            
          into
            Result
            
          from
            ( select
                x.THE_DATE,
                n.NUM,
                x.OCCUPATION_CODE,
                Max(
                  x.WORKDAY_DENSITY_PERCENT *
                  Coalesce(
                    ( select
                        (1 - ((scb.BREAK_DURATION_HOURS / 24) / (scb.BREAK_END_TIME - scb.BREAK_BEGIN_TIME))) as BREAK_DENSITY_PERCENT
                      from
                        SHIFT_CYCLE_BREAKS scb
                      where
                        (scb.SHIFT_CYCLE_CODE = x.SHIFT_CYCLE_CODE) and
                        (n.NUM between ((scb.BREAK_BEGIN_TIME - Trunc(scb.BREAK_BEGIN_TIME))*CapacityConsts.DayGranuleCount) and ((scb.BREAK_END_TIME - Trunc(scb.BREAK_BEGIN_TIME))*CapacityConsts.DayGranuleCount - 1))
                    ),
                    1
                  ) 
                ) as DENSITY_PERCENT
                
              from
                ( select
                    y.THE_DATE,
                    y.OCCUPATION_CODE,
                    sc.SHIFT_CYCLE_CODE,
                    ((sc.WORKDAY_BEGIN_TIME - Trunc(sc.WORKDAY_BEGIN_TIME))*CapacityConsts.DayGranuleCount) as WORKDAY_BEGIN_TIME_NUM,
                    ((sc.WORKDAY_END_TIME - Trunc(sc.WORKDAY_BEGIN_TIME))*CapacityConsts.DayGranuleCount - 1) as  WORKDAY_END_TIME_NUM,  -- narochno e s begin_time, za da stane 1 cialata chast, ako svurshva v sledvashtia den
                    sc.WORKDAY_DENSITY_PERCENT
                    
                  from
                    ( select
                        td.THE_DATE,
                        os.OCCUPATION_CODE,
                        os.SHIFT_CODE
                        
                      from
                        THE_DATES td,
                        DEPTS d,
                        OCCUPATION_WORK_DEPTS owd,
                        OCC_WORK_DEPT_PRIORITIES owdp,
                        OCCUPATIONS o,
                        OCCUPATION_SHIFTS os
                        
                      where
                        (d.DEPT_CODE = owd.DEPT_CODE) and
                        (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and
                        (owd.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK_DEPT_PRIORITY_CODE) and
                        (o.OCCUPATION_CODE = os.OCCUPATION_CODE) and
                        
                        (td.THE_DATE between d.BEGIN_DATE and d.END_DATE) and
                        
                        (td.THE_DATE between o.OCCUPATION_BEGIN_DATE and o.OCCUPATION_END_DATE) and
              
                        (td.THE_DATE between os.BEGIN_DATE and os.END_DATE) and
                        
                        (td.THE_DATE between ABeginDate and AEndDate) and
                        
                        (owd.DEPT_CODE = ADeptCode) and
                        (d.DEPT_CODE = ADeptCode) and
                        
                        (d.IS_RECURRENT = 0) and
                        (owdp.IS_CAPACITY_GENERATOR = 1)                        
                    ) y,
                    DATE_SHIFT_CYCLES dsc,
                    SHIFT_CYCLES sc
                    
                  where
                    (y.THE_DATE = dsc.THE_DATE) and
                    (y.SHIFT_CODE = dsc.SHIFT_CODE) and
                    (dsc.SHIFT_CYCLE_CODE = sc.SHIFT_CYCLE_CODE) and
              
                    (sc.IS_WORK_CYCLE = 1) and
                    (sc.WORKDAY_BEGIN_TIME is not null) and
                    (sc.WORKDAY_END_TIME is not null)
                ) x,
                NUMS n
                
              where
                (n.NUM between x.WORKDAY_BEGIN_TIME_NUM and x.WORKDAY_END_TIME_NUM)
                
              group by
                x.THE_DATE,
                n.NUM,
                x.OCCUPATION_CODE
            ) z
            
          group by
            z.THE_DATE,
            z.NUM;
            
        end;


      when (ACapacityLimitLevel in (CapacityConsts.cll_OccupationAssignment, CapacityConsts.cll_EmpAvailability)) then
        begin
      
          select
            ( Sum(
                Least(
                  ( Sum(z.DENSITY_PERCENT) / 
                    Coalesce(
                      ( select
                          dp.PARALLEL_OPERATOR_COUNT
                        from
                          DEPT_PERIODS dp
                        where
                          (dp.DEPT_CODE = ADeptCode) and
                          (z.THE_DATE between dp.BEGIN_DATE and dp.END_DATE)
                      ),
                      1
                    )
                  ),
                  1
                )
              ) /
              CapacityConsts.HourGranuleCount
            ) as CAPACITY_HOURS
            
          into
            Result
            
          from
            ( select
                x.THE_DATE,
                n.NUM,
                x.EMPLOYEE_CODE,
                Max(
                  x.WORKDAY_DENSITY_PERCENT *
                  Coalesce(
                    ( select
                        (1 - ((scb.BREAK_DURATION_HOURS / 24) / (scb.BREAK_END_TIME - scb.BREAK_BEGIN_TIME))) as BREAK_DENSITY_PERCENT
                      from
                        SHIFT_CYCLE_BREAKS scb
                      where
                        (scb.SHIFT_CYCLE_CODE = x.SHIFT_CYCLE_CODE) and
                        (n.NUM between ((scb.BREAK_BEGIN_TIME - Trunc(scb.BREAK_BEGIN_TIME))*CapacityConsts.DayGranuleCount) and ((scb.BREAK_END_TIME - Trunc(scb.BREAK_BEGIN_TIME))*CapacityConsts.DayGranuleCount - 1))
                    ),
                    1
                  ) 
                ) as DENSITY_PERCENT
                
              from
                ( select
                    y.THE_DATE,
                    y.EMPLOYEE_CODE,        
                    sc.SHIFT_CYCLE_CODE,
                    ((sc.WORKDAY_BEGIN_TIME - Trunc(sc.WORKDAY_BEGIN_TIME))*CapacityConsts.DayGranuleCount) as WORKDAY_BEGIN_TIME_NUM,
                    ((sc.WORKDAY_END_TIME - Trunc(sc.WORKDAY_BEGIN_TIME))*CapacityConsts.DayGranuleCount - 1) as  WORKDAY_END_TIME_NUM,  -- narochno e s begin_time, za da stane 1 cialata chast, ako svurshva v sledvashtia den
                    sc.WORKDAY_DENSITY_PERCENT
                    
                  from
                    ( select
                        td.THE_DATE,
                        oe.EMPLOYEE_CODE,
                        
                        Decode(
                          Sign(CapacityConsts.cll_EmpAvailability - ACapacityLimitLevel),
                          1,
                          os.SHIFT_CODE,
                          Coalesce(
                            ( select
                                eam.NEW_SHIFT_CODE
                              from
                                EMP_AVAIL_MODIFIERS eam
                              where
                                (eam.EMPLOYEE_CODE = oe.EMPLOYEE_CODE) and
                                (td.THE_DATE between eam.BEGIN_DATE and eam.END_DATE) and
                                (eam.STORNO_EMPLOYEE_CODE is null) and
                                (eam.OLD_SHIFT_CODE = os.SHIFT_CODE)
                            ),
                            os.SHIFT_CODE
                          )
                        ) as SHIFT_CODE
                        
                      from
                        THE_DATES td,
                        DEPTS d,
                        OCCUPATION_WORK_DEPTS owd,
                        OCC_WORK_DEPT_PRIORITIES owdp,
                        OCCUPATIONS o,
                        OCCUPATION_EMPLOYEES oe,
                        OCCUPATION_SHIFTS os
                        
                      where
                        (d.DEPT_CODE = owd.DEPT_CODE) and
                        (owd.OCCUPATION_CODE = o.OCCUPATION_CODE) and
                        (owd.OCC_WORK_DEPT_PRIORITY_CODE = owdp.OCC_WORK_DEPT_PRIORITY_CODE) and
                        (o.OCCUPATION_CODE = oe.OCCUPATION_CODE) and
                        (o.OCCUPATION_CODE = os.OCCUPATION_CODE) and
                        
                        (td.THE_DATE between d.BEGIN_DATE and d.END_DATE) and
                        
                        (td.THE_DATE between o.OCCUPATION_BEGIN_DATE and o.OCCUPATION_END_DATE) and
              
                        (td.THE_DATE between oe.ASSIGNMENT_BEGIN_DATE and oe.ASSIGNMENT_END_DATE) and
                        
                        (td.THE_DATE between os.BEGIN_DATE and os.END_DATE) and
                        
                        (td.THE_DATE between ABeginDate and AEndDate) and
                        
                        (owd.DEPT_CODE = ADeptCode) and
                        (d.DEPT_CODE = ADeptCode) and
                        
                        (d.IS_RECURRENT = 0) and
                        (owdp.IS_CAPACITY_GENERATOR = 1) and
                        
                        ( (ACapacityLimitLevel < CapacityConsts.cll_EmpAvailability) or
                          (not exists
                            ( select
                                1
                              from
                                EMP_AVAIL_MODIFIERS eam
                              where
                                (eam.EMPLOYEE_CODE = oe.EMPLOYEE_CODE) and
                                (td.THE_DATE between eam.BEGIN_DATE and eam.END_DATE) and
                                (eam.EMP_AVAIL_MODIFIER_TYPE_CODE = 1) and  -- celodnevno otsustvie
                                (eam.STORNO_EMPLOYEE_CODE is null)
                            )
                          )
                        )
                    ) y,
                    DATE_SHIFT_CYCLES dsc,
                    SHIFT_CYCLES sc
                    
                  where
                    (y.THE_DATE = dsc.THE_DATE) and
                    (y.SHIFT_CODE = dsc.SHIFT_CODE) and
                    (dsc.SHIFT_CYCLE_CODE = sc.SHIFT_CYCLE_CODE) and
              
                    (sc.IS_WORK_CYCLE = 1) and
                    (sc.WORKDAY_BEGIN_TIME is not null) and
                    (sc.WORKDAY_END_TIME is not null)
                ) x,
                NUMS n
                
              where
                (n.NUM between x.WORKDAY_BEGIN_TIME_NUM and x.WORKDAY_END_TIME_NUM)
                
              group by
                x.THE_DATE,
                n.NUM,
                x.EMPLOYEE_CODE
            ) z
            
          group by
            z.THE_DATE,
            z.NUM;
            
        end;
        
    end case;

    if (Result is null) then
      Result:= 0;
    end if;
    
    return Result;
  end;
  

  function GetDeptLimitHours(ADeptCode in Number, ADate in Date, ACapacityLimitLevel in Number) return Number is
  begin
    return GetDeptLimitHours(ADeptCode, ADate, ADate, ACapacityLimitLevel);
  end;
  
  
  function GetLimitRecList(APeriod in DateTimeUtils.TPeriodRec, ACapacityLimitLevel in Number) return TLimitRecList is
    Result TLimitRecList;
  begin
  
    select
      tfd.DEPT_CODE,
      
      ( case
          when (ACapacityLimitLevel in (CapacityConsts.cll_All, CapacityConsts.cll_Dept)) then
            CapacityUtils.GetDeptLimitHours(tfd.DEPT_CODE, APeriod.BeginDate, APeriod.EndDate, CapacityConsts.cll_Dept)
          else
            0
        end
      ) as DEPT_LEVEL_LIMIT_HOURS,
      
      ( case
          when (ACapacityLimitLevel in (CapacityConsts.cll_All, CapacityConsts.cll_Occupation)) then
            CapacityUtils.GetDeptLimitHours(tfd.DEPT_CODE, APeriod.BeginDate, APeriod.EndDate, CapacityConsts.cll_Occupation)
          else
            0
        end
      ) as OCCUPATION_LEVEL_LIMIT_HOURS,
      
      ( case
          when (ACapacityLimitLevel in (CapacityConsts.cll_All, CapacityConsts.cll_OccupationAssignment)) then
            CapacityUtils.GetDeptLimitHours(tfd.DEPT_CODE, APeriod.BeginDate, APeriod.EndDate, CapacityConsts.cll_OccupationAssignment)
          else
            0
        end
      ) as OCC_ASSIGNMENT_LIMIT_HOURS,
      
      ( case
          when (ACapacityLimitLevel in (CapacityConsts.cll_All, CapacityConsts.cll_EmpAvailability)) then
            CapacityUtils.GetDeptLimitHours(tfd.DEPT_CODE, APeriod.BeginDate, APeriod.EndDate, CapacityConsts.cll_EmpAvailability)
          else
            0
        end
      ) as EMP_AVAIL_LEVEL_LIMIT_HOURS
      
    bulk collect into
      Result
      
    from
      TEMP_FILTERED_DEPTS tfd
      
    where
      (exists
        ( select
            1
          from
            TEMP_FILTERED_DEPTS_2 tfd2
          where
            (tfd2.DEPT_CODE = tfd.DEPT_CODE)
        )
      )
      
    order by
      tfd.DEPT_CODE
    ;
    
    return Result;
    
  end;
  
  
  function GetEstSetupRecList(
    APeriod in DateTimeUtils.TPeriodRec, 
    AProductCommonLevel in Number,
    APartnerCommonLevel in Number,
    AMinParRelProductStatus in Number,
    AMaxParRelProductStatus in Number
  ) return TWorkRecList is
  
    Result TWorkRecList;
    
  begin
      
    select
      smvso.DEPT_CODE,
      0 as LOGISTICS_HOURS,
      Coalesce(
        Sum(
          ( ( select
                Ceil(
                  ( prpp.EST_SALE_COVER_ACQUIRE_QTY *
                    Coalesce(
                      ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, prpp.END_DATE, APeriod.BeginDate, APeriod.EndDate) /
                        NullIf(CountWorkdays(prpp.BEGIN_DATE, prpp.END_DATE), 0)
                      ),
                      ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DATE, prpp.END_DATE, APeriod.BeginDate, APeriod.EndDate) /
                        (prpp.END_DATE - prpp.BEGIN_DATE + 1)
                      )
                    )
                  ) /
                  pp.BALANCE_QUANTITY
                )
              from
                PRODUCT_PERIODS pp
              where
                (pp.PRODUCT_CODE = prpp.PRODUCT_CODE) and
                (prpp.BEGIN_DATE between pp.BEGIN_DATE and pp.END_DATE)
            ) *
            smvso.SETUP_COUNT /
            smvso.SETUP_HOUR_TECH_QUANTITY
          ) /
          Coalesce(
            ( select
                dp9.PARALLEL_PROCESS_COUNT
              from
                DEPT_PERIODS dp9
              where
                (dp9.DEPT_CODE = smvso.DEPT_CODE) and
                (prpp.BEGIN_DATE between dp9.BEGIN_DATE and dp9.END_DATE)
            ),
            1
          )
        ),
        0
      ) as EXPLOITATION_HOURS
      
    bulk collect into
      Result
          
    from
      PAR_REL_PRODUCT_PERIODS prpp,
      PRODUCT_PERIODS pp9,
      PRODUCTS p9,
      PROD_PER_SPEC_MODEL_VARIANTS ppsmv9,
      SPEC_MODEL_VARIANT_LINES smvl,
      SPEC_LINES sl,
      SMVS_OPERATIONS smvso
    
    where
      (prpp.PRODUCT_CODE = p9.PRODUCT_CODE) and
    
      (prpp.PRODUCT_CODE = pp9.PRODUCT_CODE) and
      (prpp.BEGIN_DATE between pp9.BEGIN_DATE and pp9.END_DATE) and
    
      (pp9.PRODUCT_CODE = ppsmv9.EST_VAR_PRODUCT_CODE) and
      (pp9.PRODUCT_PERIOD_CODE = ppsmv9.EST_VAR_PRODUCT_PERIOD_CODE) and
      
      (ppsmv9.PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) and
      (ppsmv9.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIANT_NO) and
    
      (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) and
      (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and
    
      (smvl.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_CODE) and
      (smvl.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL_VARIANT_NO) and
      (smvl.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) and
    
      (smvso.OPERATION_TYPE_CODE = 2) and
      (smvso.SMVS_OPERATION_VARIANT_NO = 0) and
      
      (smvso.SETUP_PROFESSION_CODE is not null) and
    
      ( ( (AProductCommonLevel = 2) and
          (p9.IS_COMMON = 0)
        ) or
        ( (AProductCommonLevel = 1) and
          ( ( (p9.IS_COMMON = 1) and
              (p9.IS_STRATEGIC = 0)
            ) or
            ( (p9.IS_COMMON = 0) and
              (exists
                ( select
                    1
                  from
                    DEFINITE_PRODUCTS dp
                  where
                    (dp.PRODUCT_CODE = p9.PRODUCT_CODE) and
                    (dp.COMMON_PRODUCT_CODE is null)
                )
              )
            )
          )
        ) or
        ( (AProductCommonLevel = 0) and
          (p9.IS_COMMON = 1) and
          (p9.IS_STRATEGIC = 1)
        )
      ) and

      (exists
        ( select
            1
          from
            COMPANIES lib_c
          where
            (lib_c.COMPANY_CODE = prpp.PARTNER_CODE) and
            ( ( ( (APartnerCommonLevel is null) or
                  (APartnerCommonLevel = 2)
                ) and
                (lib_c.COMPANY_CLASS_CODE <> 4)
              ) or
              ( (APartnerCommonLevel = 1) and
                ( (lib_c.COMPANY_CLASS_CODE = 4) or
                  (exists
                    ( select
                        1
                      from
                        PAR_RELS lib_par_common_level_filter_pr
                      where
                        (lib_par_common_level_filter_pr.PARTNER_CODE = lib_c.COMPANY_CODE) and
                        (lib_par_common_level_filter_pr.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and
                        (lib_par_common_level_filter_pr.COMMON_PARTNER_CODE is null)
                    )
                  )
                )
              )
            )      
        )
      ) and
    
      (prpp.BORDER_REL_TYPE_CODE = CommonConsts.brtClient) and
    
      (prpp.BEGIN_DATE <= APeriod.EndDate) and
      (prpp.END_DATE >= APeriod.BeginDate) and
    
      (exists
        ( select
            1
          from
            TEMP_FILTERED_DEPTS tfd,
            TEMP_FILTERED_DEPTS_2 tfd2
          where
            (tfd.DEPT_CODE = tfd2.DEPT_CODE) and
            (tfd.DEPT_CODE = smvso.DEPT_CODE) and
            (tfd2.DEPT_CODE = smvso.DEPT_CODE)
        )
      ) and
      
      ( Coalesce(
          ( select
              prpsc_library.PAR_REL_PRODUCT_STATUS_CODE
            from
              PAR_REL_PRODUCT_STATUS_CHANGES prpsc_library
            where
              (prpsc_library.PARTNER_CODE = prpp.PARTNER_CODE) and
              (prpsc_library.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and
              (prpsc_library.PRODUCT_CODE = prpp.PRODUCT_CODE) and

              (prpsc_library.STATUS_DATE =
                ( select
                    Max(prpsc2_library.STATUS_DATE)
                  from
                    PAR_REL_PRODUCT_STATUS_CHANGES prpsc2_library
                  where
                    (prpsc2_library.PARTNER_CODE = prpp.PARTNER_CODE) and
                    (prpsc2_library.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and
                    (prpsc2_library.PRODUCT_CODE = prpp.PRODUCT_CODE)
                )
              )
          ),
          To_Number(AMinParRelProductStatus)
        )
        between
          AMinParRelProductStatus
        and
          AMaxParRelProductStatus
      )
      
    group by
      smvso.DEPT_CODE
    
    order by
      smvso.DEPT_CODE
    ;
  
    return Result;
    
  end;

  
  function GetEstWorkRecList(
    APeriod in DateTimeUtils.TPeriodRec, 
    AProductCommonLevel in Number,
    APartnerCommonLevel in Number,
    AMinParRelProductStatus in Number,
    AMaxParRelProductStatus in Number
  ) return TWorkRecList is
  
    Result TWorkRecList;
    
  begin
      
    select
      smvso.DEPT_CODE,
      0 as LOGISTICS_HOURS,
      Coalesce(
        Sum(
          ( ( ( prpp.EST_SALE_COVER_ACQUIRE_QTY *
                p9.TECH_MEASURE_COEF *
                Coalesce(
                  ( DateTimeUtils.CountIntersectWorkdays(prpp.BEGIN_DATE, prpp.END_DATE, APeriod.BeginDate, APeriod.EndDate) /
                    NullIf(CountWorkdays(prpp.BEGIN_DATE, prpp.END_DATE), 0)
                  ),
                  ( DateTimeUtils.DatePeriodIntersectLength(prpp.BEGIN_DATE, prpp.END_DATE, APeriod.BeginDate, APeriod.EndDate) /
                    (prpp.END_DATE - prpp.BEGIN_DATE + 1)
                  )
                )
              ) *
              sl.TOTAL_DETAIL_TECH_QUANTITY
            ) /
            smvso.HOUR_TECH_QUANTITY
          ) /
          Coalesce(
            ( select
                dp9.PARALLEL_PROCESS_COUNT
              from
                DEPT_PERIODS dp9
              where
                (dp9.DEPT_CODE = smvso.DEPT_CODE) and
                (prpp.BEGIN_DATE between dp9.BEGIN_DATE and dp9.END_DATE)
            ),
            1
          )
        ), 
        0
      ) as EXPLOITATION_HOURS

    bulk collect into
      Result
          
    from
      PAR_REL_PRODUCT_PERIODS prpp,
      PRODUCT_PERIODS pp9,
      PRODUCTS p9,
      PROD_PER_SPEC_MODEL_VARIANTS ppsmv9,
      SPEC_MODEL_VARIANT_LINES smvl,
      SPEC_LINES sl,
      SMVS_OPERATIONS smvso
    
    where
      (prpp.PRODUCT_CODE = p9.PRODUCT_CODE) and
    
      (prpp.PRODUCT_CODE = pp9.PRODUCT_CODE) and
      (prpp.BEGIN_DATE between pp9.BEGIN_DATE and pp9.END_DATE) and
    
      (pp9.PRODUCT_CODE = ppsmv9.EST_VAR_PRODUCT_CODE) and
      (pp9.PRODUCT_PERIOD_CODE = ppsmv9.EST_VAR_PRODUCT_PERIOD_CODE) and
      
      (ppsmv9.PRODUCT_CODE = smvl.SPEC_PRODUCT_CODE) and
      (ppsmv9.SPEC_MODEL_VARIANT_NO = smvl.SPEC_MODEL_VARIANT_NO) and
    
      (smvl.SPEC_PRODUCT_CODE = sl.SPEC_PRODUCT_CODE) and
      (smvl.SPEC_LINE_CODE = sl.SPEC_LINE_CODE) and
    
      (smvl.SPEC_PRODUCT_CODE = smvso.SPEC_PRODUCT_CODE) and
      (smvl.SPEC_MODEL_VARIANT_NO = smvso.SPEC_MODEL_VARIANT_NO) and
      (smvl.SPEC_LINE_CODE = smvso.SPEC_LINE_CODE) and
    
      (smvso.OPERATION_TYPE_CODE = 2) and
      (smvso.SMVS_OPERATION_VARIANT_NO = 0) and
      
      ( ( (AProductCommonLevel = 2) and
          (p9.IS_COMMON = 0)
        ) or
        ( (AProductCommonLevel = 1) and
          ( ( (p9.IS_COMMON = 1) and
              (p9.IS_STRATEGIC = 0)
            ) or
            ( (p9.IS_COMMON = 0) and
              (exists
                ( select
                    1
                  from
                    DEFINITE_PRODUCTS dp
                  where
                    (dp.PRODUCT_CODE = p9.PRODUCT_CODE) and
                    (dp.COMMON_PRODUCT_CODE is null)
                )
              )
            )
          )
        ) or
        ( (AProductCommonLevel = 0) and
          (p9.IS_COMMON = 1) and
          (p9.IS_STRATEGIC = 1)
        )
      ) and
    
      (exists
        ( select
            1
          from
            COMPANIES lib_c
          where
            (lib_c.COMPANY_CODE = prpp.PARTNER_CODE) and
            ( ( ( (APartnerCommonLevel is null) or
                  (APartnerCommonLevel = 2)
                ) and
                (lib_c.COMPANY_CLASS_CODE <> 4)
              ) or
              ( (APartnerCommonLevel = 1) and
                ( (lib_c.COMPANY_CLASS_CODE = 4) or
                  (exists
                    ( select
                        1
                      from
                        PAR_RELS lib_par_common_level_filter_pr
                      where
                        (lib_par_common_level_filter_pr.PARTNER_CODE = lib_c.COMPANY_CODE) and
                        (lib_par_common_level_filter_pr.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and
                        (lib_par_common_level_filter_pr.COMMON_PARTNER_CODE is null)
                    )
                  )
                )
              )
            )      
        )
      ) and
    
      (prpp.BORDER_REL_TYPE_CODE = CommonConsts.brtClient) and
    
      (prpp.BEGIN_DATE <= APeriod.EndDate) and
      (prpp.END_DATE >= APeriod.BeginDate) and
    
      (exists
        ( select
            1
          from
            TEMP_FILTERED_DEPTS tfd,
            TEMP_FILTERED_DEPTS_2 tfd2
          where
            (tfd.DEPT_CODE = tfd2.DEPT_CODE) and
            (tfd.DEPT_CODE = smvso.DEPT_CODE) and
            (tfd2.DEPT_CODE = smvso.DEPT_CODE)
        )
      ) and
      
      ( Coalesce(
          ( select
              prpsc_library.PAR_REL_PRODUCT_STATUS_CODE
            from
              PAR_REL_PRODUCT_STATUS_CHANGES prpsc_library
            where
              (prpsc_library.PARTNER_CODE = prpp.PARTNER_CODE) and
              (prpsc_library.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and
              (prpsc_library.PRODUCT_CODE = prpp.PRODUCT_CODE) and

              (prpsc_library.STATUS_DATE =
                ( select
                    Max(prpsc2_library.STATUS_DATE)
                  from
                    PAR_REL_PRODUCT_STATUS_CHANGES prpsc2_library
                  where
                    (prpsc2_library.PARTNER_CODE = prpp.PARTNER_CODE) and
                    (prpsc2_library.BORDER_REL_TYPE_CODE = prpp.BORDER_REL_TYPE_CODE) and
                    (prpsc2_library.PRODUCT_CODE = prpp.PRODUCT_CODE)
                )
              )
          ),
          To_Number(AMinParRelProductStatus)
        )
        between
          AMinParRelProductStatus
        and
          AMaxParRelProductStatus
      )
      
    group by
      smvso.DEPT_CODE
    
    order by
      smvso.DEPT_CODE
    ;
  
    return Result;
    
  end;

  
  function GetRealSetupRecList(APeriod in DateTimeUtils.TPeriodRec) return TWorkRecList is
  
    Result TWorkRecList;
    
  begin

    select
      mlmso.DEPT_CODE,
      
      Coalesce(
        Sum(
          (Decode(pobr.CAPACITY_TYPE_CODE, 1, (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY))) /
          Coalesce(
            ( select
                dp9.PARALLEL_PROCESS_COUNT
              from
                DEPT_PERIODS dp9
              where
                (dp9.DEPT_CODE = mlmso.DEPT_CODE) and
                (mlmso.TREATMENT_BEGIN_DATE between dp9.BEGIN_DATE and dp9.END_DATE)
            ),
            1
          )
        ),
        0
      ) as LOGISTICS_HOURS,
      
      Coalesce(
        Sum(
          (Decode(pobr.CAPACITY_TYPE_CODE, 2, (mlmso.DONE_SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY))) /
          Coalesce(
            ( select
                dp9.PARALLEL_PROCESS_COUNT
              from
                DEPT_PERIODS dp9
              where
                (dp9.DEPT_CODE = mlmso.DEPT_CODE) and
                (mlmso.TREATMENT_BEGIN_DATE between dp9.BEGIN_DATE and dp9.END_DATE)
            ),
            1
          )
        ),
        0
      ) as EXPLOITATION_HOURS
      
    bulk collect into
      Result
      
    from
      SALES s,
      PRODUCTION_ORDER_TYPES pot,
      PROD_ORDER_BASE_ROLES pobr,
      MATERIAL_LISTS ml,
      MATERIAL_LIST_LINES mll,
      ML_MODEL_STAGES mlms,
      MLMS_OPERATIONS mlmso
      
    where
      (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYPE_CODE) and
      
      (pot.PROD_ORDER_BASE_ROLE_CODE = pobr.PROD_ORDER_BASE_ROLE_CODE) and
    
      (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE) and
      (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and

      (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
      (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
      
      (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
      (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
      
      (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
      (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
      
      (s.PRODUCTION_ORDER_TYPE_CODE is not null) and
      
      (mlmso.OPERATION_TYPE_CODE = 2) and
      
      (mlmso.SETUP_DATE between APeriod.BeginDate and APeriod.EndDate) and
      
      (exists
        ( select
            1
          from
            TEMP_FILTERED_DEPTS tfd,
            TEMP_FILTERED_DEPTS_2 tfd2
          where
            (tfd.DEPT_CODE = tfd2.DEPT_CODE) and
            (tfd.DEPT_CODE = mlmso.DEPT_CODE) and
            (tfd2.DEPT_CODE = mlmso.DEPT_CODE)
        )
      )
      
    group by
      mlmso.DEPT_CODE
    
    order by
      mlmso.DEPT_CODE
    ;
    
  
    return Result;
    
  end;

  
  function GetPlanSetupRecList(APeriod in DateTimeUtils.TPeriodRec) return TWorkRecList is
  
    Result TWorkRecList;
    CurrentWorkdate Date;
    
  begin
    
    CurrentWorkdate:= IncDateByWorkdays(ContextDate-1, 1);
    
    select
      mlmso.DEPT_CODE,
      Coalesce(
        Sum(
          (Decode(pobr.CAPACITY_TYPE_CODE, 1, (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY))) /
          Coalesce(
            ( select
                dp9.PARALLEL_PROCESS_COUNT
              from
                DEPT_PERIODS dp9
              where
                (dp9.DEPT_CODE = mlmso.DEPT_CODE) and
                (mlmso.TREATMENT_BEGIN_DATE between dp9.BEGIN_DATE and dp9.END_DATE)
            ),
            1
          )
        ),
        0
      ) as LOGISTICS_HOURS,
      
      Coalesce(
        Sum(
          (Decode(pobr.CAPACITY_TYPE_CODE, 2, (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY))) /
          Coalesce(
            ( select
                dp9.PARALLEL_PROCESS_COUNT
              from
                DEPT_PERIODS dp9
              where
                (dp9.DEPT_CODE = mlmso.DEPT_CODE) and
                (mlmso.TREATMENT_BEGIN_DATE between dp9.BEGIN_DATE and dp9.END_DATE)
            ),
            1
          )
        ),
        0
      ) as EXPLOITATION_HOURS
      
    bulk collect into
      Result
      
    from
      SALES s,
      PRODUCTION_ORDER_TYPES pot,
      PROD_ORDER_BASE_ROLES pobr,
      MATERIAL_LISTS ml,
      MATERIAL_LIST_LINES mll,
      ML_MODEL_STAGES mlms,
      MLMS_OPERATIONS mlmso
      
    where
      (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYPE_CODE) and
      
      (pot.PROD_ORDER_BASE_ROLE_CODE = pobr.PROD_ORDER_BASE_ROLE_CODE) and
    
      (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE) and
      (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and

      (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
      (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
      
      (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
      (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
      
      (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
      (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
      
      (s.PRODUCTION_ORDER_TYPE_CODE is not null) and

      (s.FINISH_EMPLOYEE_CODE is null) and
      (s.ANNUL_EMPLOYEE_CODE is null) and
      (ml.CLOSE_EMPLOYEE_CODE is null) and
      (ml.ANNUL_EMPLOYEE_CODE is null) and
      (mll.ANNUL_EMPLOYEE_CODE is null) and
      
      (mlmso.OPERATION_TYPE_CODE = 2) and
      (mlmso.IS_ACTIVE = 1) and
      
      (mlmso.SETUP_PROFESSION_CODE is not null) and
      (mlmso.SETUP_DATE is null) and
      
      (Greatest(mlmso.TREATMENT_BEGIN_DATE, CurrentWorkdate) between 
        APeriod.BeginDate and APeriod.EndDate
      ) and
      
      (exists
        ( select
            1
          from
            TEMP_FILTERED_DEPTS tfd,
            TEMP_FILTERED_DEPTS_2 tfd2
          where
            (tfd.DEPT_CODE = tfd2.DEPT_CODE) and
            (tfd.DEPT_CODE = mlmso.DEPT_CODE) and
            (tfd2.DEPT_CODE = mlmso.DEPT_CODE)
        )
      )
      
    group by
      mlmso.DEPT_CODE
    
    order by
      mlmso.DEPT_CODE
    ;
    
  
    return Result;
    
  end;

  
  function GetRealWorkRecList(APeriod in DateTimeUtils.TPeriodRec) return TWorkRecList is
  
    Result TWorkRecList;
    
  begin

    select
      /*+ ORDERED USE_NL(om mlmso tfd tfd2 mlms mll ml s pot pobr) */
      mlmso.DEPT_CODE,
      Coalesce(
        Sum(
          (Decode(pobr.CAPACITY_TYPE_CODE, 1, (om.TOTAL_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY))) /
          Coalesce(
            ( select
                dp9.PARALLEL_PROCESS_COUNT
              from
                DEPT_PERIODS dp9
              where
                (dp9.DEPT_CODE = mlmso.DEPT_CODE) and
                (mlmso.TREATMENT_BEGIN_DATE between dp9.BEGIN_DATE and dp9.END_DATE)
            ),
            1
          )
        ),
        0
      ) as LOGISTICS_HOURS,
      
      Coalesce(
        Sum(
          (Decode(pobr.CAPACITY_TYPE_CODE, 2, (om.TOTAL_DETAIL_TECH_QUANTITY / mlmso.HOUR_TECH_QUANTITY))) /
          Coalesce(
            ( select
                dp9.PARALLEL_PROCESS_COUNT
              from
                DEPT_PERIODS dp9
              where
                (dp9.DEPT_CODE = mlmso.DEPT_CODE) and
                (mlmso.TREATMENT_BEGIN_DATE between dp9.BEGIN_DATE and dp9.END_DATE)
            ),
            1
          )
        ),
        0
      ) as EXPLOITATION_HOURS
      
    bulk collect into
      Result
        
    from
      OPERATION_MOVEMENTS om,
      MLMS_OPERATIONS mlmso,
      TEMP_FILTERED_DEPTS tfd,
      TEMP_FILTERED_DEPTS_2 tfd2,
      ML_MODEL_STAGES mlms,
      MATERIAL_LIST_LINES mll,
      MATERIAL_LISTS ml,
      SALES s,
      PRODUCTION_ORDER_TYPES pot,
      PROD_ORDER_BASE_ROLES pobr
      
    where
      (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
      (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
      
      (mlmso.DEPT_CODE = tfd.DEPT_CODE) and
      (mlmso.DEPT_CODE = tfd2.DEPT_CODE) and

      (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and
      (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and
      
      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE) and
      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and
      
      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and
      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and
      
      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and
      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and

      (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYPE_CODE) and
      
      (pot.PROD_ORDER_BASE_ROLE_CODE = pobr.PROD_ORDER_BASE_ROLE_CODE) and
      
      (mlmso.OPERATION_TYPE_CODE = 2) and
      
      (om.STORNO_EMPLOYEE_CODE is null) and
      
      -- izliazlo ot nashata operacia za drugi operacii ili brak
      ( (om.TO_DEPT_CODE is not null) or
        (not
          ( (om.TO_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
            (om.TO_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE)
          )
        )
      ) and
      
      (om.OM_DATE between APeriod.BeginDate and APeriod.EndDate)
      
    group by
      mlmso.DEPT_CODE
    
    order by
      mlmso.DEPT_CODE
    ;

  
    return Result;
    
  end;

  
  function GetPlanWorkRecList(APeriod in DateTimeUtils.TPeriodRec) return TWorkRecList is
  
    Result TWorkRecList;
    CurrentWorkdate Date;
    
  begin
    
    CurrentWorkdate:= IncDateByWorkdays(ContextDate-1, 1);
    
    select
      mlmso.DEPT_CODE,
      
      Coalesce(
        Sum(
          ( Decode(
              pobr.CAPACITY_TYPE_CODE,
              1,
              ( ( ( mlmso.VARIANT_DETAIL_TECH_QUANTITY
                    -
                    ( -- izliazlo ot nashata operacia za drugi operacii ili brak
                      select
                        Coalesce(Sum(om.TOTAL_DETAIL_TECH_QUANTITY), 0)
                      from
                        OPERATION_MOVEMENTS om
                      where
                        (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                        (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                        (om.STORNO_EMPLOYEE_CODE is null) and
                  
                        ( (om.TO_DEPT_CODE is not null) or
                          (not
                            ( (om.TO_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                              (om.TO_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE)
                            )
                          )
                        )
                    )
                  ) *
                  Coalesce(
                    ( DateTimeUtils.CountIntersectWorkdays(
                        Greatest(mlmso.TREATMENT_BEGIN_DATE, CurrentWorkdate),
                        Greatest(mlmso.TREATMENT_END_DATE, CurrentWorkdate),
                        APeriod.BeginDate,
                        APeriod.EndDate
                      ) /
                      NullIf(
                        CountWorkdays(
                          Greatest(mlmso.TREATMENT_BEGIN_DATE, CurrentWorkdate),
                          Greatest(mlmso.TREATMENT_END_DATE, CurrentWorkdate)
                        ),
                        0
                      )
                    ),
                    ( DateTimeUtils.DatePeriodIntersectLength(
                        Greatest(mlmso.TREATMENT_BEGIN_DATE, CurrentWorkdate), 
                        Greatest(mlmso.TREATMENT_END_DATE, CurrentWorkdate),
                        APeriod.BeginDate, 
                        APeriod.EndDate
                      ) /
                      (Greatest(mlmso.TREATMENT_END_DATE, CurrentWorkdate) - Greatest(mlmso.TREATMENT_BEGIN_DATE, CurrentWorkdate) + 1)
                    )
                  )
                ) /
                mlmso.HOUR_TECH_QUANTITY
              )
            )
          ) /
          Coalesce(
            ( select
                dp9.PARALLEL_PROCESS_COUNT
              from
                DEPT_PERIODS dp9
              where
                (dp9.DEPT_CODE = mlmso.DEPT_CODE) and
                (mlmso.TREATMENT_BEGIN_DATE between dp9.BEGIN_DATE and dp9.END_DATE)
            ),
            1
          )
        ),
        0
      ) as LOGISTICS_HOURS,

      Coalesce(
        Sum(
          ( Decode(
              pobr.CAPACITY_TYPE_CODE, 
              2,
              ( ( ( mlmso.VARIANT_DETAIL_TECH_QUANTITY
                    -
                    ( -- izliazlo ot nashata operacia za drugi operacii ili brak
                      select
                        Coalesce(Sum(om.TOTAL_DETAIL_TECH_QUANTITY), 0)
                      from
                        OPERATION_MOVEMENTS om
                      where
                        (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                        (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                        (om.STORNO_EMPLOYEE_CODE is null) and
                  
                        ( (om.TO_DEPT_CODE is not null) or
                          (not
                            ( (om.TO_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                              (om.TO_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE)
                            )
                          )
                        )
                    )
                  ) *
                  Coalesce(
                    ( DateTimeUtils.CountIntersectWorkdays(
                        Greatest(mlmso.TREATMENT_BEGIN_DATE, CurrentWorkdate),
                        Greatest(mlmso.TREATMENT_END_DATE, CurrentWorkdate),
                        APeriod.BeginDate,
                        APeriod.EndDate
                      ) /
                      NullIf(
                        CountWorkdays(
                          Greatest(mlmso.TREATMENT_BEGIN_DATE, CurrentWorkdate),
                          Greatest(mlmso.TREATMENT_END_DATE, CurrentWorkdate)
                        ),
                        0
                      )
                    ),
                    ( DateTimeUtils.DatePeriodIntersectLength(
                        Greatest(mlmso.TREATMENT_BEGIN_DATE, CurrentWorkdate), 
                        Greatest(mlmso.TREATMENT_END_DATE, CurrentWorkdate),
                        APeriod.BeginDate, 
                        APeriod.EndDate
                      ) /
                      (Greatest(mlmso.TREATMENT_END_DATE, CurrentWorkdate) - Greatest(mlmso.TREATMENT_BEGIN_DATE, CurrentWorkdate) + 1)
                    )
                  )
                ) /
                mlmso.HOUR_TECH_QUANTITY
              )
            )
          ) /
          Coalesce(
            ( select
                dp9.PARALLEL_PROCESS_COUNT
              from
                DEPT_PERIODS dp9
              where
                (dp9.DEPT_CODE = mlmso.DEPT_CODE) and
                (mlmso.TREATMENT_BEGIN_DATE between dp9.BEGIN_DATE and dp9.END_DATE)
            ),
            1
          )
        ),
        0
      ) as EXPLOITATION_HOURS
      
    bulk collect into
      Result
      
    from
      SALES s,
      PRODUCTION_ORDER_TYPES pot,
      PROD_ORDER_BASE_ROLES pobr,
      MATERIAL_LISTS ml,
      MATERIAL_LIST_LINES mll,
      ML_MODEL_STAGES mlms,
      MLMS_OPERATIONS mlmso
      
    where
      (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYPE_CODE) and
      
      (pot.PROD_ORDER_BASE_ROLE_CODE = pobr.PROD_ORDER_BASE_ROLE_CODE) and
    
      (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE) and
      (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and

      (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
      (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
      
      (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
      (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
      
      (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
      (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
      
      (s.PRODUCTION_ORDER_TYPE_CODE is not null) and

      (s.FINISH_EMPLOYEE_CODE is null) and
      (s.ANNUL_EMPLOYEE_CODE is null) and
      (ml.CLOSE_EMPLOYEE_CODE is null) and
      (ml.ANNUL_EMPLOYEE_CODE is null) and
      (mll.ANNUL_EMPLOYEE_CODE is null) and
      
      (mlmso.OPERATION_TYPE_CODE = 2) and
      (mlmso.IS_ACTIVE = 1) and
      
      (Greatest(mlmso.TREATMENT_BEGIN_DATE, CurrentWorkdate) <= APeriod.EndDate) and
      (Greatest(mlmso.TREATMENT_END_DATE, CurrentWorkdate) >= APeriod.BeginDate) and
      
      ( mlmso.VARIANT_DETAIL_TECH_QUANTITY
        >
        ( -- izliazlo ot nashata operacia za drugi operacii ili brak
          select
            Coalesce(Sum(om.TOTAL_DETAIL_TECH_QUANTITY), 0)
          from
            OPERATION_MOVEMENTS om
          where
            (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
            (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
            (om.STORNO_EMPLOYEE_CODE is null) and
      
            ( (om.TO_DEPT_CODE is not null) or
              (not
                ( (om.TO_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                  (om.TO_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE)
                )
              )
            )
        )
      ) and
      
      (exists
        ( select
            1
          from
            TEMP_FILTERED_DEPTS tfd,
            TEMP_FILTERED_DEPTS_2 tfd2
          where
            (tfd.DEPT_CODE = tfd2.DEPT_CODE) and
            (tfd.DEPT_CODE = mlmso.DEPT_CODE) and
            (tfd2.DEPT_CODE = mlmso.DEPT_CODE)
        )
      )
      
    group by
      mlmso.DEPT_CODE
    
    order by
      mlmso.DEPT_CODE
    ;
    
    
    return Result;
    
  end;

  
  procedure AccumulateHours(
    SourceHours in Number, DestHours out Number, FreeHours in out Number, ExcessHours in out Number) is
  begin
    if (SourceHours <= FreeHours) then
      DestHours:= SourceHours;
      FreeHours:= FreeHours - SourceHours;
      ExcessHours:= 0;
    else
      DestHours:= FreeHours;
      FreeHours:= 0;
      ExcessHours:= ExcessHours + (SourceHours - DestHours);
    end if;
  end;

  
  function DoGetCapacityTable(
    AXDate in Date,
    ALimitRecList in TLimitRecList, 
    ARealSetupRecList in TWorkRecList,
    ARealWorkRecList in TWorkRecList,
    APlanSetupRecList in TWorkRecList,
    APlanWorkRecList in TWorkRecList,
    ACapacityLimitLevel in Number
  ) return TCapacityTable is
  
    Result TCapacityTable:= TCapacityTable();
    
    LimitDeptIndex Number;
    RealSetupDeptIndex Number;
    RealWorkDeptIndex Number;
    PlanSetupDeptIndex Number;
    PlanWorkDeptIndex Number;

    PrevDeptCode DEPTS.DEPT_CODE%TYPE;
    CurrentDeptCode DEPTS.DEPT_CODE%TYPE;
    
    CurrentLimitHours Number;
    CurrentDeptLevelLimitHours Number;
    CurrentOccLevelLimitHours Number;
    CurrentOccAssLevelLimitHours Number;
    CurrentEmpAvailLevelLimitHours Number;
    
    CurrentRealLogisticsHours Number;
    CurrentRealExploitationHours Number;
    CurrentRealFreeHours Number;
    CurrentRealExcessHours Number;
    CurrentPlanLogisticsHours Number;
    CurrentPlanExploitationHours Number;
    CurrentPlanFreeHours Number;
    CurrentPlanExcessHours Number;

    CurrentRealSetupRec TWorkRec;
    CurrentRealWorkRec TWorkRec;
    CurrentPlanSetupRec TWorkRec;
    CurrentPlanWorkRec TWorkRec;
    ZeroWorkRec TWorkRec;
    
  begin
  
    ZeroWorkRec.DeptCode:= 0;
    ZeroWorkRec.LogisticsHours:= 0;
    ZeroWorkRec.ExploitationHours:= 0;

    CurrentRealSetupRec:= ZeroWorkRec;
    CurrentRealWorkRec:= ZeroWorkRec;
    CurrentPlanSetupRec:= ZeroWorkRec;
    CurrentPlanWorkRec:= ZeroWorkRec;
    
    PrevDeptCode:= 0;
    LimitDeptIndex:= ALimitRecList.First;
    RealSetupDeptIndex:= ARealSetupRecList.First;
    RealWorkDeptIndex:= ARealWorkRecList.First;
    PlanSetupDeptIndex:= APlanSetupRecList.First;
    PlanWorkDeptIndex:= APlanWorkRecList.First;

    while (LimitDeptIndex is not null) or
          (RealSetupDeptIndex is not null) or
          (RealWorkDeptIndex is not null) or
          (PlanSetupDeptIndex is not null) or
          (PlanWorkDeptIndex is not null) loop

      CurrentDeptCode:= null;

      if (LimitDeptIndex is not null) and 
         ((CurrentDeptCode is null) or (CurrentDeptCode > ALimitRecList(LimitDeptIndex).DeptCode)) then
         
        CurrentDeptCode:= ALimitRecList(LimitDeptIndex).DeptCode;
        
      end if;
      
      if (RealSetupDeptIndex is not null) and 
         ((CurrentDeptCode is null) or (CurrentDeptCode > ARealSetupRecList(RealSetupDeptIndex).DeptCode)) then
         
        CurrentDeptCode:= ARealSetupRecList(RealSetupDeptIndex).DeptCode;
        
      end if;
      
      if (RealWorkDeptIndex is not null) and 
         ((CurrentDeptCode is null) or (CurrentDeptCode > ARealWorkRecList(RealWorkDeptIndex).DeptCode)) then
         
        CurrentDeptCode:= ARealWorkRecList(RealWorkDeptIndex).DeptCode;
        
      end if;

      if (PlanSetupDeptIndex is not null) and 
         ((CurrentDeptCode is null) or (CurrentDeptCode > APlanSetupRecList(PlanSetupDeptIndex).DeptCode)) then
         
        CurrentDeptCode:= APlanSetupRecList(PlanSetupDeptIndex).DeptCode;
        
      end if;
      
      if (PlanWorkDeptIndex is not null) and 
         ((CurrentDeptCode is null) or (CurrentDeptCode > APlanWorkRecList(PlanWorkDeptIndex).DeptCode)) then
         
        CurrentDeptCode:= APlanWorkRecList(PlanWorkDeptIndex).DeptCode;
        
      end if;

      if (CurrentDeptCode is null) then
      
        raise_application_error(-20000, 'Internal error: Assertion - DeptCode should not be null here');
        
      end if;
      
      if (CurrentDeptCode <= PrevDeptCode) then
      
        raise_application_error(-20000, 'Internal error: Assertion - new DeptCode should be greater than PrevDeptCode');
        
      end if;


      -- extract dept data
      
      if (LimitDeptIndex is not null) and (ALimitRecList(LimitDeptIndex).DeptCode = CurrentDeptCode) then
      
        CurrentDeptLevelLimitHours:= ALimitRecList(LimitDeptIndex).DeptLevelLimitHours;
        CurrentOccLevelLimitHours:= ALimitRecList(LimitDeptIndex).OccupationLevelLimitHours;
        CurrentOccAssLevelLimitHours:= ALimitRecList(LimitDeptIndex).OccAssignmentLevelLimitHours;
        CurrentEmpAvailLevelLimitHours:= ALimitRecList(LimitDeptIndex).EmpAvailabilityLevelLimitHours;

        case ACapacityLimitLevel
          when CapacityConsts.cll_Dept then
            CurrentLimitHours:= CurrentDeptLevelLimitHours;
          when CapacityConsts.cll_Occupation then
            CurrentLimitHours:= CurrentOccLevelLimitHours;
          when CapacityConsts.cll_OccupationAssignment then
            CurrentLimitHours:= CurrentOccAssLevelLimitHours;
          when CapacityConsts.cll_EmpAvailability then
            CurrentLimitHours:= CurrentEmpAvailLevelLimitHours;
        end case;
        
      else
      
        CurrentDeptLevelLimitHours:= 0;
        CurrentOccLevelLimitHours:= 0;
        CurrentOccAssLevelLimitHours:= 0;
        CurrentEmpAvailLevelLimitHours:= 0;

        CurrentLimitHours:= 0;
        
      end if;
      
      
      if (RealSetupDeptIndex is not null) and (ARealSetupRecList(RealSetupDeptIndex).DeptCode = CurrentDeptCode) then

        CurrentRealSetupRec:= ARealSetupRecList(RealSetupDeptIndex);
      
      else      
        
        CurrentRealSetupRec:= ZeroWorkRec;

      end if;
      
      
      if (RealWorkDeptIndex is not null) and (ARealWorkRecList(RealWorkDeptIndex).DeptCode = CurrentDeptCode) then
      
        CurrentRealWorkRec:= ARealWorkRecList(RealWorkDeptIndex);
      
      else      
        
        CurrentRealWorkRec:= ZeroWorkRec;
        
      end if;


      if (PlanSetupDeptIndex is not null) and (APlanSetupRecList(PlanSetupDeptIndex).DeptCode = CurrentDeptCode) then

        CurrentPlanSetupRec:= APlanSetupRecList(PlanSetupDeptIndex);
      
      else      
        
        CurrentPlanSetupRec:= ZeroWorkRec;

      end if;
      
      
      if (PlanWorkDeptIndex is not null) and (APlanWorkRecList(PlanWorkDeptIndex).DeptCode = CurrentDeptCode) then
      
        CurrentPlanWorkRec:= APlanWorkRecList(PlanWorkDeptIndex);
      
      else      
        
        CurrentPlanWorkRec:= ZeroWorkRec;
        
      end if;


      -- process dept data
          
      CurrentRealFreeHours:= CurrentLimitHours;
      CurrentRealExcessHours:= 0;
  
      AccumulateHours(
        (CurrentRealSetupRec.LogisticsHours + CurrentRealWorkRec.LogisticsHours), 
        CurrentRealLogisticsHours, 
        CurrentRealFreeHours, 
        CurrentRealExcessHours);
      
      AccumulateHours(
        (CurrentRealSetupRec.ExploitationHours + CurrentRealWorkRec.ExploitationHours), 
        CurrentRealExploitationHours,
        CurrentRealFreeHours, 
        CurrentRealExcessHours);

      
      CurrentPlanFreeHours:= CurrentRealFreeHours;
      CurrentPlanExcessHours:= 0;
        
      AccumulateHours(
        (CurrentPlanSetupRec.LogisticsHours + CurrentPlanWorkRec.LogisticsHours),
        CurrentPlanLogisticsHours,
        CurrentPlanFreeHours, 
        CurrentPlanExcessHours);
      
      AccumulateHours(
        (CurrentPlanSetupRec.ExploitationHours + CurrentPlanWorkRec.ExploitationHours), 
        CurrentPlanExploitationHours,
        CurrentPlanFreeHours, 
        CurrentPlanExcessHours);

        
      -- add resultset row
            
      Result.Extend;
      
      Result(Result.Last).THE_X_DATE:= AXDate;
      Result(Result.Last).DEPT_CODE:= CurrentDeptCode;
      Result(Result.Last).DEPT_LVL_LIMIT_HOURS:= CurrentDeptLevelLimitHours;
      Result(Result.Last).OCC_LVL_LIMIT_HOURS_DIFF:= (CurrentOccLevelLimitHours - CurrentDeptLevelLimitHours);
      Result(Result.Last).OCC_LVL_LIMIT_HOURS:= CurrentOccLevelLimitHours;
      Result(Result.Last).OCC_ASS_LVL_LIMIT_HOURS_DIFF:= (CurrentOccAssLevelLimitHours - CurrentOccLevelLimitHours);
      Result(Result.Last).OCC_ASS_LVL_LIMIT_HOURS:= CurrentOccAssLevelLimitHours;
      Result(Result.Last).EMP_AVAIL_LVL_LIMIT_HOURS_DIFF:= (CurrentEmpAvailLevelLimitHours - CurrentOccAssLevelLimitHours);
      Result(Result.Last).EMP_AVAIL_LVL_LIMIT_HOURS:= CurrentEmpAvailLevelLimitHours;
      Result(Result.Last).LIMIT_HOURS:= CurrentLimitHours;
      Result(Result.Last).REAL_LOGISTICS_HOURS:= CurrentRealLogisticsHours;
      Result(Result.Last).REAL_EXPLOITATION_HOURS:= CurrentRealExploitationHours;
      Result(Result.Last).REAL_FREE_HOURS:= CurrentRealFreeHours;
      Result(Result.Last).REAL_EXCESS_HOURS:= CurrentRealExcessHours;
      Result(Result.Last).PLAN_LOGISTICS_HOURS:= CurrentPlanLogisticsHours;
      Result(Result.Last).PLAN_EXPLOITATION_HOURS:= CurrentPlanExploitationHours;
      Result(Result.Last).PLAN_FREE_HOURS:= CurrentPlanFreeHours;
      Result(Result.Last).PLAN_EXCESS_HOURS:= CurrentPlanExcessHours;
            
      
      -- increment loop pointers
      
      PrevDeptCode:= CurrentDeptCode;
      
      if (LimitDeptIndex is not null) and (ALimitRecList(LimitDeptIndex).DeptCode = CurrentDeptCode) then
      
        LimitDeptIndex:= ALimitRecList.Next(LimitDeptIndex);
        
      end if;
      
      if (RealSetupDeptIndex is not null) and (ARealSetupRecList(RealSetupDeptIndex).DeptCode = CurrentDeptCode) then
      
        RealSetupDeptIndex:= ARealSetupRecList.Next(RealSetupDeptIndex);
        
      end if;
      
      if (RealWorkDeptIndex is not null) and (ARealWorkRecList(RealWorkDeptIndex).DeptCode = CurrentDeptCode) then
      
        RealWorkDeptIndex:= ARealWorkRecList.Next(RealWorkDeptIndex);
        
      end if;

      if (PlanSetupDeptIndex is not null) and (APlanSetupRecList(PlanSetupDeptIndex).DeptCode = CurrentDeptCode) then
      
        PlanSetupDeptIndex:= APlanSetupRecList.Next(PlanSetupDeptIndex);
        
      end if;
      
      if (PlanWorkDeptIndex is not null) and (APlanWorkRecList(PlanWorkDeptIndex).DeptCode = CurrentDeptCode) then
      
        PlanWorkDeptIndex:= APlanWorkRecList.Next(PlanWorkDeptIndex);
        
      end if;

    end loop;
          
  
    return Result;
  end;
  
  
  function DoGetCapacityAccumulatedRow(
    AXDate in Date,
    ALimitRecList in TLimitRecList, 
    ARealSetupRecList in TWorkRecList,
    ARealWorkRecList in TWorkRecList,
    APlanSetupRecList in TWorkRecList,
    APlanWorkRecList in TWorkRecList,
    ACapacityLimitLevel in Number
  ) return TCapacityRow is
  
    Result TCapacityRow;
    
    LimitDeptIndex Number;
    RealSetupDeptIndex Number;
    RealWorkDeptIndex Number;
    PlanSetupDeptIndex Number;
    PlanWorkDeptIndex Number;

    PrevDeptCode DEPTS.DEPT_CODE%TYPE;
    CurrentDeptCode DEPTS.DEPT_CODE%TYPE;
    CurrentLimitHours Number;
    CurrentDeptLevelLimitHours Number;
    CurrentOccLevelLimitHours Number;
    CurrentOccAssLevelLimitHours Number;
    CurrentEmpAvailLevelLimitHours Number;
    CurrentRealLogisticsHours Number;
    CurrentRealExploitationHours Number;
    CurrentRealFreeHours Number;
    CurrentRealExcessHours Number;
    CurrentPlanLogisticsHours Number;
    CurrentPlanExploitationHours Number;
    CurrentPlanFreeHours Number;
    CurrentPlanExcessHours Number;

    CurrentRealSetupRec TWorkRec;
    CurrentRealWorkRec TWorkRec;
    CurrentPlanSetupRec TWorkRec;
    CurrentPlanWorkRec TWorkRec;
    ZeroWorkRec TWorkRec;
    
  begin
    Result.THE_X_DATE:= AXDate;
    Result.DEPT_CODE:= 0;
    Result.DEPT_LVL_LIMIT_HOURS:= 0;
    Result.OCC_LVL_LIMIT_HOURS_DIFF:= 0;
    Result.OCC_LVL_LIMIT_HOURS:= 0;
    Result.OCC_ASS_LVL_LIMIT_HOURS_DIFF:= 0;
    Result.OCC_ASS_LVL_LIMIT_HOURS:= 0;
    Result.EMP_AVAIL_LVL_LIMIT_HOURS_DIFF:= 0;
    Result.EMP_AVAIL_LVL_LIMIT_HOURS:= 0;
    Result.LIMIT_HOURS:= 0;
    Result.REAL_LOGISTICS_HOURS:= 0;
    Result.REAL_EXPLOITATION_HOURS:= 0;
    Result.REAL_FREE_HOURS:= 0;
    Result.REAL_EXCESS_HOURS:= 0;
    Result.PLAN_LOGISTICS_HOURS:= 0;
    Result.PLAN_EXPLOITATION_HOURS:= 0;
    Result.PLAN_FREE_HOURS:= 0;
    Result.PLAN_EXCESS_HOURS:= 0;    
  
    ZeroWorkRec.DeptCode:= 0;
    ZeroWorkRec.LogisticsHours:= 0;
    ZeroWorkRec.ExploitationHours:= 0;

    CurrentRealSetupRec:= ZeroWorkRec;
    CurrentRealWorkRec:= ZeroWorkRec;
    CurrentPlanSetupRec:= ZeroWorkRec;
    CurrentPlanWorkRec:= ZeroWorkRec;
    
    PrevDeptCode:= 0;
    LimitDeptIndex:= ALimitRecList.First;
    RealSetupDeptIndex:= ARealSetupRecList.First;
    RealWorkDeptIndex:= ARealWorkRecList.First;
    PlanSetupDeptIndex:= APlanSetupRecList.First;
    PlanWorkDeptIndex:= APlanWorkRecList.First;

    while (LimitDeptIndex is not null) or
          (RealSetupDeptIndex is not null) or
          (RealWorkDeptIndex is not null) or
          (PlanSetupDeptIndex is not null) or
          (PlanWorkDeptIndex is not null) loop

      CurrentDeptCode:= null;    

      if (LimitDeptIndex is not null) and 
         ((CurrentDeptCode is null) or (CurrentDeptCode > ALimitRecList(LimitDeptIndex).DeptCode)) then
         
        CurrentDeptCode:= ALimitRecList(LimitDeptIndex).DeptCode;
        
      end if;
      
      if (RealSetupDeptIndex is not null) and 
         ((CurrentDeptCode is null) or (CurrentDeptCode > ARealSetupRecList(RealSetupDeptIndex).DeptCode)) then
         
        CurrentDeptCode:= ARealSetupRecList(RealSetupDeptIndex).DeptCode;
        
      end if;
      
      if (RealWorkDeptIndex is not null) and 
         ((CurrentDeptCode is null) or (CurrentDeptCode > ARealWorkRecList(RealWorkDeptIndex).DeptCode)) then
         
        CurrentDeptCode:= ARealWorkRecList(RealWorkDeptIndex).DeptCode;
        
      end if;

      if (PlanSetupDeptIndex is not null) and 
         ((CurrentDeptCode is null) or (CurrentDeptCode > APlanSetupRecList(PlanSetupDeptIndex).DeptCode)) then
         
        CurrentDeptCode:= APlanSetupRecList(PlanSetupDeptIndex).DeptCode;
        
      end if;
      
      if (PlanWorkDeptIndex is not null) and 
         ((CurrentDeptCode is null) or (CurrentDeptCode > APlanWorkRecList(PlanWorkDeptIndex).DeptCode)) then
         
        CurrentDeptCode:= APlanWorkRecList(PlanWorkDeptIndex).DeptCode;
        
      end if;

      if (CurrentDeptCode is null) then
      
        raise_application_error(-20000, 'Internal error: Assertion - DeptCode should not be null here');
        
      end if;
      
      if (CurrentDeptCode <= PrevDeptCode) then
      
        raise_application_error(-20000, 'Internal error: Assertion - new DeptCode should be greater than PrevDeptCode');
        
      end if;


      -- extract dept data
      
      if (LimitDeptIndex is not null) and (ALimitRecList(LimitDeptIndex).DeptCode = CurrentDeptCode) then
      
        CurrentDeptLevelLimitHours:= ALimitRecList(LimitDeptIndex).DeptLevelLimitHours;
        CurrentOccLevelLimitHours:= ALimitRecList(LimitDeptIndex).OccupationLevelLimitHours;
        CurrentOccAssLevelLimitHours:= ALimitRecList(LimitDeptIndex).OccAssignmentLevelLimitHours;
        CurrentEmpAvailLevelLimitHours:= ALimitRecList(LimitDeptIndex).EmpAvailabilityLevelLimitHours;

        case ACapacityLimitLevel
          when CapacityConsts.cll_Dept then
            CurrentLimitHours:= CurrentDeptLevelLimitHours;
          when CapacityConsts.cll_Occupation then
            CurrentLimitHours:= CurrentOccLevelLimitHours;
          when CapacityConsts.cll_OccupationAssignment then
            CurrentLimitHours:= CurrentOccAssLevelLimitHours;
          when CapacityConsts.cll_EmpAvailability then
            CurrentLimitHours:= CurrentEmpAvailLevelLimitHours;
        end case;
        
      else
      
        CurrentDeptLevelLimitHours:= 0;
        CurrentOccLevelLimitHours:= 0;
        CurrentOccAssLevelLimitHours:= 0;
        CurrentEmpAvailLevelLimitHours:= 0;
        
        CurrentLimitHours:= 0;
        
      end if;
      
      
      if (RealSetupDeptIndex is not null) and (ARealSetupRecList(RealSetupDeptIndex).DeptCode = CurrentDeptCode) then

        CurrentRealSetupRec:= ARealSetupRecList(RealSetupDeptIndex);
      
      else      
        
        CurrentRealSetupRec:= ZeroWorkRec;

      end if;
      
      
      if (RealWorkDeptIndex is not null) and (ARealWorkRecList(RealWorkDeptIndex).DeptCode = CurrentDeptCode) then
      
        CurrentRealWorkRec:= ARealWorkRecList(RealWorkDeptIndex);
      
      else      
        
        CurrentRealWorkRec:= ZeroWorkRec;
        
      end if;


      if (PlanSetupDeptIndex is not null) and (APlanSetupRecList(PlanSetupDeptIndex).DeptCode = CurrentDeptCode) then

        CurrentPlanSetupRec:= APlanSetupRecList(PlanSetupDeptIndex);
      
      else      
        
        CurrentPlanSetupRec:= ZeroWorkRec;

      end if;
      
      
      if (PlanWorkDeptIndex is not null) and (APlanWorkRecList(PlanWorkDeptIndex).DeptCode = CurrentDeptCode) then
      
        CurrentPlanWorkRec:= APlanWorkRecList(PlanWorkDeptIndex);
      
      else      
        
        CurrentPlanWorkRec:= ZeroWorkRec;
        
      end if;


      -- process dept data
          
      CurrentRealFreeHours:= CurrentLimitHours;
      CurrentRealExcessHours:= 0;
  
      AccumulateHours(
        (CurrentRealSetupRec.LogisticsHours + CurrentRealWorkRec.LogisticsHours), 
        CurrentRealLogisticsHours, 
        CurrentRealFreeHours, 
        CurrentRealExcessHours);
      
      AccumulateHours(
        (CurrentRealSetupRec.ExploitationHours + CurrentRealWorkRec.ExploitationHours), 
        CurrentRealExploitationHours,
        CurrentRealFreeHours, 
        CurrentRealExcessHours);

        
      CurrentPlanFreeHours:= CurrentRealFreeHours;
      CurrentPlanExcessHours:= 0;

      AccumulateHours(
        (CurrentPlanSetupRec.LogisticsHours + CurrentPlanWorkRec.LogisticsHours), 
        CurrentPlanLogisticsHours,
        CurrentPlanFreeHours, 
        CurrentPlanExcessHours);
      
      AccumulateHours(
        (CurrentPlanSetupRec.ExploitationHours + CurrentPlanWorkRec.ExploitationHours), 
        CurrentPlanExploitationHours,
        CurrentPlanFreeHours, 
        CurrentPlanExcessHours);
        
        
      -- add to result
      
      Result.DEPT_LVL_LIMIT_HOURS:= Result.DEPT_LVL_LIMIT_HOURS + CurrentDeptLevelLimitHours;
      Result.OCC_LVL_LIMIT_HOURS_DIFF:= Result.OCC_LVL_LIMIT_HOURS_DIFF + (CurrentOccLevelLimitHours - CurrentDeptLevelLimitHours);
      Result.OCC_LVL_LIMIT_HOURS:= Result.OCC_LVL_LIMIT_HOURS + CurrentOccLevelLimitHours;
      Result.OCC_ASS_LVL_LIMIT_HOURS_DIFF:= Result.OCC_ASS_LVL_LIMIT_HOURS_DIFF + (CurrentOccAssLevelLimitHours - CurrentOccLevelLimitHours);
      Result.OCC_ASS_LVL_LIMIT_HOURS:= Result.OCC_ASS_LVL_LIMIT_HOURS + CurrentOccAssLevelLimitHours;
      Result.EMP_AVAIL_LVL_LIMIT_HOURS_DIFF:= Result.EMP_AVAIL_LVL_LIMIT_HOURS_DIFF + (CurrentEmpAvailLevelLimitHours - CurrentOccAssLevelLimitHours);
      Result.EMP_AVAIL_LVL_LIMIT_HOURS:= Result.EMP_AVAIL_LVL_LIMIT_HOURS + CurrentEmpAvailLevelLimitHours;
      Result.LIMIT_HOURS:= Result.LIMIT_HOURS + CurrentLimitHours;
      Result.REAL_LOGISTICS_HOURS:= Result.REAL_LOGISTICS_HOURS + CurrentRealLogisticsHours;
      Result.REAL_EXPLOITATION_HOURS:= Result.REAL_EXPLOITATION_HOURS + CurrentRealExploitationHours;
      Result.REAL_FREE_HOURS:= Result.REAL_FREE_HOURS + CurrentRealFreeHours;
      Result.REAL_EXCESS_HOURS:= Result.REAL_EXCESS_HOURS + CurrentRealExcessHours;
      Result.PLAN_LOGISTICS_HOURS:= Result.PLAN_LOGISTICS_HOURS + CurrentPlanLogisticsHours;
      Result.PLAN_EXPLOITATION_HOURS:= Result.PLAN_EXPLOITATION_HOURS + CurrentPlanExploitationHours;
      Result.PLAN_FREE_HOURS:= Result.PLAN_FREE_HOURS + CurrentPlanFreeHours;
      Result.PLAN_EXCESS_HOURS:= Result.PLAN_EXCESS_HOURS + CurrentPlanExcessHours;
            
      
      -- increment loop pointers
      
      PrevDeptCode:= CurrentDeptCode;
      
      if (LimitDeptIndex is not null) and (ALimitRecList(LimitDeptIndex).DeptCode = CurrentDeptCode) then
      
        LimitDeptIndex:= ALimitRecList.Next(LimitDeptIndex);
        
      end if;
      
      if (RealSetupDeptIndex is not null) and (ARealSetupRecList(RealSetupDeptIndex).DeptCode = CurrentDeptCode) then
      
        RealSetupDeptIndex:= ARealSetupRecList.Next(RealSetupDeptIndex);
        
      end if;
      
      if (RealWorkDeptIndex is not null) and (ARealWorkRecList(RealWorkDeptIndex).DeptCode = CurrentDeptCode) then
      
        RealWorkDeptIndex:= ARealWorkRecList.Next(RealWorkDeptIndex);
        
      end if;

      if (PlanSetupDeptIndex is not null) and (APlanSetupRecList(PlanSetupDeptIndex).DeptCode = CurrentDeptCode) then
      
        PlanSetupDeptIndex:= APlanSetupRecList.Next(PlanSetupDeptIndex);
        
      end if;
      
      if (PlanWorkDeptIndex is not null) and (APlanWorkRecList(PlanWorkDeptIndex).DeptCode = CurrentDeptCode) then
      
        PlanWorkDeptIndex:= APlanWorkRecList.Next(PlanWorkDeptIndex);
        
      end if;

    end loop;
          
  
    return Result;
  end;

  
  function GetOpCapacityTable(
    AXDate in Date,
    ADateUnitCode in Number,
    ACapacityLimitLevel in Number,
    ACalcAllLimitLevels in Number
  ) return TCapacityTable is

    Result TCapacityTable;

    Period DateTimeUtils.TPeriodRec;

    LimitRecList TLimitRecList;
    RealSetupRecList TWorkRecList;
    RealWorkRecList TWorkRecList;
    PlanSetupRecList TWorkRecList;
    PlanWorkRecList TWorkRecList;
    
  begin

    Period:= DateTimeUtils.GetXDatePeriod(AXDate, ADateUnitCode);
    
    if (ACalcAllLimitLevels = 1) then
      LimitRecList:= GetLimitRecList(Period, CapacityConsts.cll_All);
    else
      LimitRecList:= GetLimitRecList(Period, ACapacityLimitLevel);
    end if;
    
    
    
    if (ContextDate >= Period.BeginDate) then
    
      RealSetupRecList:= GetRealSetupRecList(Period);
      RealWorkRecList:= GetRealWorkRecList(Period);
      
    else
    
      RealSetupRecList:= TWorkRecList();
      RealWorkRecList:= TWorkRecList();
    
    end if;
    
    
    if (ContextDate <= Period.EndDate) then
    
      PlanSetupRecList:= GetPlanSetupRecList(Period);
      PlanWorkRecList:= GetPlanWorkRecList(Period);
      
    else
      
      PlanSetupRecList:= TWorkRecList();
      PlanWorkRecList:= TWorkRecList();
      
    end if;
    
    
    Result:= DoGetCapacityTable(AXDate, LimitRecList, RealSetupRecList, RealWorkRecList, PlanSetupRecList, PlanWorkRecList, ACapacityLimitLevel);
      
    return Result;
    
  end;
  
  
  function GetOpCapacityAccumulatedRow(
    AXDate in Date,
    ADateUnitCode in Number,
    ACapacityLimitLevel in Number,
    ACalcAllLimitLevels in Number
  ) return TCapacityRow is

    Result TCapacityRow;

    Period DateTimeUtils.TPeriodRec;

    LimitRecList TLimitRecList;
    RealSetupRecList TWorkRecList;
    RealWorkRecList TWorkRecList;
    PlanSetupRecList TWorkRecList;
    PlanWorkRecList TWorkRecList;
    
  begin

    Period:= DateTimeUtils.GetXDatePeriod(AXDate, ADateUnitCode);
    
    if (ACalcAllLimitLevels = 1) then
      LimitRecList:= GetLimitRecList(Period, CapacityConsts.cll_All);
    else
      LimitRecList:= GetLimitRecList(Period, ACapacityLimitLevel);
    end if;
    

    
    if (ContextDate >= Period.BeginDate) then
    
      RealSetupRecList:= GetRealSetupRecList(Period);
      RealWorkRecList:= GetRealWorkRecList(Period);
      
    else
    
      RealSetupRecList:= TWorkRecList();
      RealWorkRecList:= TWorkRecList();
    
    end if;

    
    if (ContextDate <= Period.EndDate) then
    
      PlanSetupRecList:= GetPlanSetupRecList(Period);
      PlanWorkRecList:= GetPlanWorkRecList(Period);
      
    else
      
      PlanSetupRecList:= TWorkRecList();
      PlanWorkRecList:= TWorkRecList();
      
    end if;

    
    Result:= DoGetCapacityAccumulatedRow(AXDate, LimitRecList, RealSetupRecList, RealWorkRecList, PlanSetupRecList, PlanWorkRecList, ACapacityLimitLevel);
      
    return Result;
    
  end;

  
  function GetEstCapacityTable(
    AXDate in Date,
    ADateUnitCode in Number,
    ACapacityLimitLevel in Number,
    ACalcAllLimitLevels in Number,
    AProductCommonLevel in Number,
    APartnerCommonLevel in Number,
    AMinParRelProductStatus in Number,
    AMaxParRelProductStatus in Number
  ) return TCapacityTable is

    Result TCapacityTable;

    Period DateTimeUtils.TPeriodRec;

    LimitRecList TLimitRecList;
    RealSetupRecList TWorkRecList;
    RealWorkRecList TWorkRecList;
    PlanSetupRecList TWorkRecList;
    PlanWorkRecList TWorkRecList;
    
  begin

    Period:= DateTimeUtils.GetXDatePeriod(AXDate, ADateUnitCode);

    if (ACalcAllLimitLevels = 1) then
      LimitRecList:= GetLimitRecList(Period, CapacityConsts.cll_All);
    else
      LimitRecList:= GetLimitRecList(Period, ACapacityLimitLevel);
    end if;
    
    RealSetupRecList:= TWorkRecList();
    RealWorkRecList:= TWorkRecList();
    
    PlanSetupRecList:= GetEstSetupRecList(Period, AProductCommonLevel, APartnerCommonLevel, AMinParRelProductStatus, AMaxParRelProductStatus);
    PlanWorkRecList:= GetEstWorkRecList(Period, AProductCommonLevel, APartnerCommonLevel, AMinParRelProductStatus, AMaxParRelProductStatus);
      
    Result:= DoGetCapacityTable(AXDate, LimitRecList, RealSetupRecList, RealWorkRecList, PlanSetupRecList, PlanWorkRecList, ACapacityLimitLevel);
      
    return Result;
    
  end;
  
  
  function GetEstCapacityAccumulatedRow(
    AXDate in Date,
    ADateUnitCode in Number,
    ACapacityLimitLevel in Number,
    ACalcAllLimitLevels in Number,
    AProductCommonLevel in Number,
    APartnerCommonLevel in Number,
    AMinParRelProductStatus in Number,
    AMaxParRelProductStatus in Number
  ) return TCapacityRow is

    Result TCapacityRow;

    Period DateTimeUtils.TPeriodRec;

    LimitRecList TLimitRecList;
    RealSetupRecList TWorkRecList;
    RealWorkRecList TWorkRecList;
    PlanSetupRecList TWorkRecList;
    PlanWorkRecList TWorkRecList;
    
  begin

    Period:= DateTimeUtils.GetXDatePeriod(AXDate, ADateUnitCode);
    
    if (ACalcAllLimitLevels = 1) then
      LimitRecList:= GetLimitRecList(Period, CapacityConsts.cll_All);
    else
      LimitRecList:= GetLimitRecList(Period, ACapacityLimitLevel);
    end if;
    

    RealSetupRecList:= TWorkRecList();
    RealWorkRecList:= TWorkRecList();
    
    PlanSetupRecList:= GetEstSetupRecList(Period, AProductCommonLevel, APartnerCommonLevel, AMinParRelProductStatus, AMaxParRelProductStatus);
    PlanWorkRecList:= GetEstWorkRecList(Period, AProductCommonLevel, APartnerCommonLevel, AMinParRelProductStatus, AMaxParRelProductStatus);
    
    Result:= DoGetCapacityAccumulatedRow(AXDate, LimitRecList, RealSetupRecList, RealWorkRecList, PlanSetupRecList, PlanWorkRecList, ACapacityLimitLevel);
      
    return Result;
    
  end;

  
  function InnerGetCapacityTable(
    AXDate in Date,
    ADateUnitCode in Number,
    ACapacityLimitLevel in Number,
    ACalcAllLimitLevels in Number,
    AAspectType in Number,
    AProductCommonLevel in Number,
    APartnerCommonLevel in Number,
    AMinParRelProductStatus in Number,
    AMaxParRelProductStatus in Number
  ) return TCapacityTable is

    Result TCapacityTable;

  begin
    case AAspectType
      when CapacityConsts.atEstimation then
        Result:=
          GetEstCapacityTable(
            AXDate, 
            ADateUnitCode, 
            ACapacityLimitLevel, 
            ACalcAllLimitLevels, 
            AProductCommonLevel, 
            APartnerCommonLevel, 
            AMinParRelProductStatus, 
            AMaxParRelProductStatus);
      when CapacityConsts.atRealization then
        Result:=
          GetOpCapacityTable(
            AXDate, ADateUnitCode, ACapacityLimitLevel, ACalcAllLimitLevels);
      else
        raise_application_error(-20000, 'Internal error: Invalid AspectType');
    end case;
    
    return Result;
  end;
  
  procedure PrepareCapacityTable(
    AXDate in Date, 
    ADateUnitCode in Number, 
    ACapacityLimitLevel in Number, 
    ACalcAllLimitLevels in Number, 
    AAspectType in Number, 
    AProductCommonLevel in Number,
    APartnerCommonLevel in Number,
    AMinParRelProductStatus in Number,
    AMaxParRelProductStatus in Number
  ) is
  
    Data TCapacityTable:= TCapacityTable();
    CapacityTableCount Number;
    i Number;
    
  begin
    Data:= 
      InnerGetCapacityTable(
        AXDate,
        ADateUnitCode,
        ACapacityLimitLevel,
        ACalcAllLimitLevels,
        AAspectType,
        AProductCommonLevel,
        APartnerCommonLevel,
        AMinParRelProductStatus,
        AMaxParRelProductStatus);
        
    CapacityTableCount:= Data.Count;
    
    forall i in 1..CapacityTableCount
      insert into 
        TEMP_CAPACITY     
      values
        Data(i);
  end;  
  
  procedure UnprepareCapacityTable is
  begin
    execute immediate 'truncate table TEMP_CAPACITY'; 
  end;
  
  function InnerGetCapacityAccumulatedRow(
    AXDate in Date,
    ADateUnitCode in Number,
    ACapacityLimitLevel in Number,
    ACalcAllLimitLevels in Number,
    AAspectType in Number,
    AProductCommonLevel in Number,
    APartnerCommonLevel in Number,
    AMinParRelProductStatus in Number,
    AMaxParRelProductStatus in Number
  ) return TCapacityRow is

    Result TCapacityRow;

  begin
    case AAspectType
      when CapacityConsts.atEstimation then
        Result:=
          GetEstCapacityAccumulatedRow(
            AXDate,
            ADateUnitCode,
            ACapacityLimitLevel,
            ACalcAllLimitLevels,
            AProductCommonLevel,
            APartnerCommonLevel,
            AMinParRelProductStatus,
            AMaxParRelProductStatus);
      when CapacityConsts.atRealization then
        Result:=
          GetOpCapacityAccumulatedRow(
            AXDate, ADateUnitCode, ACapacityLimitLevel, ACalcAllLimitLevels);
      else
        raise_application_error(-20000, 'Internal error: Invalid AspectType');
    end case;
    
    return Result;
  end; 
  
  function GetCapacityAccumulatedRow2(
    AXDate in Date, 
    ADateUnitCode in Number, 
    ACapacityLimitLevel in Number, 
    ACalcAllLimitLevels in Number, 
    AAspectType in Number, 
    AProductCommonLevel in Number,
    APartnerCommonLevel in Number,
    AMinParRelProductStatus in Number,
    AMaxParRelProductStatus in Number
  ) return VarChar2 is
  
  cr TCapacityRow;
  
  begin
    cr:= 
    InnerGetCapacityAccumulatedRow(
      AXDate,
      ADateUnitCode,
      ACapacityLimitLevel,
      ACalcAllLimitLevels,
      AAspectType,
      AProductCommonLevel,
      APartnerCommonLevel,
      AMinParRelProductStatus,
      AMAxParRelProductStatus);
  
    return 
      MiscUtils.NamedValuesToCompositeString(
        'THE_X_DATE', DateToNumber(cr.THE_X_DATE),
        'DEPT_CODE', cr.DEPT_CODE,
        'DEPT_LVL_LIMIT_HOURS', cr.DEPT_LVL_LIMIT_HOURS,
        'OCC_LVL_LIMIT_HOURS_DIFF', cr.OCC_LVL_LIMIT_HOURS_DIFF,
        'OCC_LVL_LIMIT_HOURS', cr.OCC_LVL_LIMIT_HOURS,
        'OCC_ASS_LVL_LIMIT_HOURS_DIFF', cr.OCC_ASS_LVL_LIMIT_HOURS_DIFF,
        'OCC_ASS_LVL_LIMIT_HOURS', cr.OCC_ASS_LVL_LIMIT_HOURS,
        'EMP_AVAIL_LVL_LIMIT_HOURS_DIFF', cr.EMP_AVAIL_LVL_LIMIT_HOURS_DIFF,
        'EMP_AVAIL_LVL_LIMIT_HOURS', cr.EMP_AVAIL_LVL_LIMIT_HOURS,
        'LIMIT_HOURS', cr.LIMIT_HOURS,
        'REAL_LOGISTICS_HOURS', cr.REAL_LOGISTICS_HOURS,
        'REAL_EXPLOITATION_HOURS', cr.REAL_EXPLOITATION_HOURS,
        'REAL_FREE_HOURS', cr.REAL_FREE_HOURS,
        'REAL_EXCESS_HOURS', cr.REAL_EXCESS_HOURS,
        'PLAN_LOGISTICS_HOURS', cr.PLAN_LOGISTICS_HOURS,
        'PLAN_EXPLOITATION_HOURS', cr.PLAN_EXPLOITATION_HOURS,
        'PLAN_FREE_HOURS', cr.PLAN_FREE_HOURS,
        'PLAN_EXCESS_HOURS', cr.PLAN_EXCESS_HOURS);
  end;  
  
  function HasMlmsoPlanExcess(
    AMlmsoObjectBranchCode in Number,
    AMlmsoObjectCode in Number
  ) return Number is

    Result Number;
    CurrentWorkdate Date;
    
  begin
    
    CurrentWorkdate:= IncDateByWorkdays(ContextDate-1, 1);
    
    begin
      select
        Decode(
          CountWorkdays(
            Greatest(mlmso2.TREATMENT_BEGIN_DATE, CurrentWorkdate),
            Greatest(mlmso2.TREATMENT_END_DATE, CurrentWorkdate)
          ),
          0,
          1,
          Coalesce(
            ( select
                1
              from
                DUAL
              where
                (exists
                  ( select
                      1
                    from
                      THE_DATES td
                    where
                      (td.THE_DATE between
                        Greatest(mlmso2.TREATMENT_BEGIN_DATE, CurrentWorkdate) and 
                        Greatest(mlmso2.TREATMENT_END_DATE, CurrentWorkdate)
                      ) and
                      (td.WORKDAYS > 0) and
                      ( Coalesce(CapacityUtils.GetDeptLimitHours(mlmso2.DEPT_CODE, td.THE_DATE, CapacityConsts.cll_EmpAvailability), 0) <
                        (
                          ( select
                              Coalesce(
                                Sum(
                                  (mlmso.SETUP_COUNT / mlmso.SETUP_HOUR_TECH_QUANTITY) /
                                  Coalesce(
                                    ( select
                                        dp9.PARALLEL_PROCESS_COUNT
                                      from
                                        DEPT_PERIODS dp9
                                      where
                                        (dp9.DEPT_CODE = mlmso.DEPT_CODE) and
                                        (mlmso.TREATMENT_BEGIN_DATE between dp9.BEGIN_DATE and dp9.END_DATE)
                                    ),
                                    1
                                  )
                                ),
                                0
                              ) as SUM_SETUP_HOURS
                              
                            from
                              SALES s,
                              SALE_GROUPS sg,
                              PRIORITIES pr,
                              WORK_PRIORITIES wp,
                              DEPTS d,
                              PRODUCTION_ORDER_TYPES pot,
                              PROD_ORDER_BASE_ROLES pobr,
                              CAPACITY_TYPES ct,
                              MATERIAL_LISTS ml,
                              MATERIAL_LIST_LINES mll,
                              ML_MODEL_STAGES mlms,
                              MLMS_OPERATIONS mlmso
                              
                            where
                              (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE) and
                              (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and
                              
                              (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRANCH_CODE) and
                              (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE) and
                              
                              (sg.PRIORITY_CODE = pr.PRIORITY_CODE) and
                              
                              (s.WORK_PRIORITY_CODE = wp.WORK_PRIORITY_CODE) and
                              
                              (s.SALE_BRANCH_CODE = d.DEPT_CODE) and
                              
                              (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYPE_CODE) and

                              (pot.PROD_ORDER_BASE_ROLE_CODE = pobr.PROD_ORDER_BASE_ROLE_CODE) and

                              (pobr.CAPACITY_TYPE_CODE = ct.CAPACITY_TYPE_CODE) and
                              
                              (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
                              (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
                              
                              (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
                              (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
                            
                              (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
                              (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
                            
                              (s.PRODUCTION_ORDER_TYPE_CODE is not null) and
                            
                              (s.FINISH_EMPLOYEE_CODE is null) and
                              (s.ANNUL_EMPLOYEE_CODE is null) and
                              (ml.CLOSE_EMPLOYEE_CODE is null) and
                              (ml.ANNUL_EMPLOYEE_CODE is null) and
                              (mll.ANNUL_EMPLOYEE_CODE is null) and
                            
                              (mlmso.OPERATION_TYPE_CODE = 2) and
                              (mlmso.IS_ACTIVE = 1) and
                            
                              (mlmso.DEPT_CODE = mlmso2.DEPT_CODE) and
                            
                              (mlmso.SETUP_PROFESSION_CODE is not null) and
                              (mlmso.SETUP_DATE is null) and
                              
                              (Greatest(mlmso.TREATMENT_BEGIN_DATE, CurrentWorkdate) = td.THE_DATE) and
                              
                              ( (ct.CAPACITY_TYPE_NO < ct2.CAPACITY_TYPE_NO) or
                                ( (ct.CAPACITY_TYPE_NO = ct2.CAPACITY_TYPE_NO) and
                                  ( (pr.PRIORITY_NO < pr2.PRIORITY_NO) or
                                    ( (pr.PRIORITY_NO = pr2.PRIORITY_NO) and
                                      ( (wp.WORK_PRIORITY_NO < wp2.WORK_PRIORITY_NO) or
                                        ( (wp.WORK_PRIORITY_NO = wp2.WORK_PRIORITY_NO) and
                                          ( (Least(mlmso.TREATMENT_END_DATE, CurrentWorkdate) < Least(mlmso2.TREATMENT_END_DATE, CurrentWorkdate)) or
                                            ( (Least(mlmso.TREATMENT_END_DATE, CurrentWorkdate) = Least(mlmso2.TREATMENT_END_DATE, CurrentWorkdate)) and
                                              ( (d.CUSTOM_CODE < d2.CUSTOM_CODE) or
                                                ( (d.CUSTOM_CODE = d2.CUSTOM_CODE) and
                                                  ( (s.SALE_NO < s2.SALE_NO) or
                                                    ( (s.SALE_NO = s2.SALE_NO) and
                                                      ( (mll.NO_AS_FORMATED_TEXT < mll2.NO_AS_FORMATED_TEXT) or
                                                        ( (mll.NO_AS_FORMATED_TEXT = mll2.NO_AS_FORMATED_TEXT) and
                                                          ( (mll.FORK_NO < mll2.FORK_NO) or
                                                            ( (mll.FORK_NO = mll2.FORK_NO) and
                                                              ( (mlms.ML_MODEL_STAGE_NO < mlms2.ML_MODEL_STAGE_NO) or
                                                                ( (mlms.ML_MODEL_STAGE_NO = mlms2.ML_MODEL_STAGE_NO) and
                                                                  ( (mlmso.MLMS_OPERATION_NO < mlmso2.MLMS_OPERATION_NO) or
                                                                    ( (mlmso.MLMS_OPERATION_NO = mlmso2.MLMS_OPERATION_NO) and
                                                                      (mlmso.MLMS_OPERATION_VARIANT_NO <= mlmso2.MLMS_OPERATION_VARIANT_NO)
                                                                    )
                                                                  )
                                                                )
                                                              )
                                                            )
                                                          )
                                                        )
                                                      )
                                                    )
                                                  )
                                                )
                                              )
                                            )
                                          )
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                          ) +
                          
                          ( select
                              Coalesce(
                                Sum(
                                  ( ( ( mlmso.VARIANT_DETAIL_TECH_QUANTITY
                                        -
                                        ( -- izliazlo ot nashata operacia za drugi operacii ili brak
                                          select
                                            Coalesce(Sum(om.TOTAL_DETAIL_TECH_QUANTITY), 0)
                                          from
                                            OPERATION_MOVEMENTS om
                                          where
                                            (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                                            (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                                            (om.STORNO_EMPLOYEE_CODE is null) and
                                      
                                            ( (om.TO_DEPT_CODE is not null) or
                                              (not
                                                ( (om.TO_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                                                  (om.TO_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE)
                                                )
                                              )
                                            )
                                        )
                                      ) *
                                      Coalesce(
                                        ( 1 /  -- 1 zashtoto ot po-gornite uslovia e iasno che td e raboten den vlizasht v intervala na operaciata
                                          NullIf(
                                            CountWorkdays(
                                              Greatest(mlmso.TREATMENT_BEGIN_DATE, CurrentWorkdate),
                                              Greatest(mlmso.TREATMENT_END_DATE, CurrentWorkdate)
                                            ),
                                            0
                                          )
                                        ),
                                        ( 1 /  -- 1 zashtoto ot po-gornite uslovia e iasno che td e raboten den vlizasht v intervala na operaciata
                                          (Greatest(mlmso.TREATMENT_END_DATE, CurrentWorkdate) - Greatest(mlmso.TREATMENT_BEGIN_DATE, CurrentWorkdate) + 1)
                                        )
                                      )
                                    ) /
                                    mlmso.HOUR_TECH_QUANTITY
                                  ) /
                                  Coalesce(
                                    ( select
                                        dp9.PARALLEL_PROCESS_COUNT
                                      from
                                        DEPT_PERIODS dp9
                                      where
                                        (dp9.DEPT_CODE = mlmso.DEPT_CODE) and
                                        (mlmso.TREATMENT_BEGIN_DATE between dp9.BEGIN_DATE and dp9.END_DATE)
                                    ),
                                    1
                                  )
                                ),
                                0
                              ) as SUM_WORK_HOURS
                              
                            from
                              SALES s,
                              SALE_GROUPS sg,
                              PRIORITIES pr,
                              WORK_PRIORITIES wp,
                              DEPTS d,
                              PRODUCTION_ORDER_TYPES pot,
                              PROD_ORDER_BASE_ROLES pobr,
                              CAPACITY_TYPES ct,
                              MATERIAL_LISTS ml,
                              MATERIAL_LIST_LINES mll,
                              ML_MODEL_STAGES mlms,
                              MLMS_OPERATIONS mlmso
                              
                            where
                              (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRANCH_CODE) and
                              (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE) and
 
                              (sg.PRIORITY_CODE = pr.PRIORITY_CODE) and
                              
                              (s.WORK_PRIORITY_CODE = wp.WORK_PRIORITY_CODE) and
                              
                              (s.SALE_BRANCH_CODE = d.DEPT_CODE) and
                              
                              (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYPE_CODE) and
                              
                              (pot.PROD_ORDER_BASE_ROLE_CODE = pobr.PROD_ORDER_BASE_ROLE_CODE) and

                              (pobr.CAPACITY_TYPE_CODE = ct.CAPACITY_TYPE_CODE) and
                              
                              (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE) and
                              (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and
                            
                              (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and
                              (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and
                              
                              (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and
                              (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and
                            
                              (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE) and
                              (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and
                            
                              (s.PRODUCTION_ORDER_TYPE_CODE is not null) and
                            
                              (s.FINISH_EMPLOYEE_CODE is null) and
                              (s.ANNUL_EMPLOYEE_CODE is null) and
                              (ml.CLOSE_EMPLOYEE_CODE is null) and
                              (ml.ANNUL_EMPLOYEE_CODE is null) and
                              (mll.ANNUL_EMPLOYEE_CODE is null) and
                            
                              (mlmso.OPERATION_TYPE_CODE = 2) and
                              (mlmso.IS_ACTIVE = 1) and
                            
                              (mlmso.DEPT_CODE = mlmso2.DEPT_CODE) and
                            
                              (td.THE_DATE between 
                                Greatest(mlmso.TREATMENT_BEGIN_DATE, CurrentWorkdate) and
                                Greatest(mlmso.TREATMENT_END_DATE, CurrentWorkdate)
                              ) and
                              
                              ( mlmso.VARIANT_DETAIL_TECH_QUANTITY
                                >
                                ( -- izliazlo ot nashata operacia za drugi operacii ili brak
                                  select
                                    Coalesce(Sum(om.TOTAL_DETAIL_TECH_QUANTITY), 0)
                                  from
                                    OPERATION_MOVEMENTS om
                                  where
                                    (om.FROM_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                                    (om.FROM_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE) and
                                    (om.STORNO_EMPLOYEE_CODE is null) and
                              
                                    ( (om.TO_DEPT_CODE is not null) or
                                      (not
                                        ( (om.TO_MLMSO_OBJECT_BRANCH_CODE = mlmso.MLMSO_OBJECT_BRANCH_CODE) and
                                          (om.TO_MLMSO_OBJECT_CODE = mlmso.MLMSO_OBJECT_CODE)
                                        )
                                      )
                                    )
                                )
                              ) and
                              
                              ( (ct.CAPACITY_TYPE_NO < ct2.CAPACITY_TYPE_NO) or
                                ( (ct.CAPACITY_TYPE_NO = ct2.CAPACITY_TYPE_NO) and
                                  ( (pr.PRIORITY_NO < pr2.PRIORITY_NO) or
                                    ( (pr.PRIORITY_NO = pr2.PRIORITY_NO) and
                                      ( (wp.WORK_PRIORITY_NO < wp2.WORK_PRIORITY_NO) or
                                        ( (wp.WORK_PRIORITY_NO = wp2.WORK_PRIORITY_NO) and
                                          ( (Least(mlmso.TREATMENT_END_DATE, CurrentWorkdate) < Least(mlmso2.TREATMENT_END_DATE, CurrentWorkdate)) or
                                            ( (Least(mlmso.TREATMENT_END_DATE, CurrentWorkdate) = Least(mlmso2.TREATMENT_END_DATE, CurrentWorkdate)) and
                                              ( (d.CUSTOM_CODE < d2.CUSTOM_CODE) or
                                                ( (d.CUSTOM_CODE = d2.CUSTOM_CODE) and
                                                  ( (s.SALE_NO < s2.SALE_NO) or
                                                    ( (s.SALE_NO = s2.SALE_NO) and
                                                      ( (mll.NO_AS_FORMATED_TEXT < mll2.NO_AS_FORMATED_TEXT) or
                                                        ( (mll.NO_AS_FORMATED_TEXT = mll2.NO_AS_FORMATED_TEXT) and
                                                          ( (mll.FORK_NO < mll2.FORK_NO) or
                                                            ( (mll.FORK_NO = mll2.FORK_NO) and
                                                              ( (mlms.ML_MODEL_STAGE_NO < mlms2.ML_MODEL_STAGE_NO) or
                                                                ( (mlms.ML_MODEL_STAGE_NO = mlms2.ML_MODEL_STAGE_NO) and
                                                                  ( (mlmso.MLMS_OPERATION_NO < mlmso2.MLMS_OPERATION_NO) or
                                                                    ( (mlmso.MLMS_OPERATION_NO = mlmso2.MLMS_OPERATION_NO) and
                                                                      (mlmso.MLMS_OPERATION_VARIANT_NO <= mlmso2.MLMS_OPERATION_VARIANT_NO)
                                                                    )
                                                                  )
                                                                )
                                                              )
                                                            )
                                                          )
                                                        )
                                                      )
                                                    )
                                                  )
                                                )
                                              )
                                            )
                                          )
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                          )
                        )
                      )
                  )
                )
            ),
            0
          )
        )
        
      into
        Result
        
      from
        SALES s2,
        SALE_GROUPS sg2,
        PRIORITIES pr2,
        WORK_PRIORITIES wp2,
        DEPTS d2,
        PRODUCTION_ORDER_TYPES pot2,
        PROD_ORDER_BASE_ROLES pobr2,
        CAPACITY_TYPES ct2,
        MATERIAL_LISTS ml2,
        MATERIAL_LIST_LINES mll2,
        ML_MODEL_STAGES mlms2,
        MLMS_OPERATIONS mlmso2
        
      where
        (s2.SALE_OBJECT_BRANCH_CODE = ml2.BND_PROCESS_OBJECT_BRANCH_CODE) and
        (s2.SALE_OBJECT_CODE = ml2.BND_PROCESS_OBJECT_CODE) and
      
        (s2.SALE_GROUP_OBJECT_BRANCH_CODE = sg2.SALE_GROUP_OBJECT_BRANCH_CODE) and
        (s2.SALE_GROUP_OBJECT_CODE = sg2.SALE_GROUP_OBJECT_CODE) and
        
        (sg2.PRIORITY_CODE = pr2.PRIORITY_CODE) and
        
        (s2.WORK_PRIORITY_CODE = wp2.WORK_PRIORITY_CODE) and
        
        (s2.SALE_BRANCH_CODE = d2.DEPT_CODE) and
        
        (s2.PRODUCTION_ORDER_TYPE_CODE = pot2.PRODUCTION_ORDER_TYPE_CODE) and
        
        (pot2.PROD_ORDER_BASE_ROLE_CODE = pobr2.PROD_ORDER_BASE_ROLE_CODE) and

        (pobr2.CAPACITY_TYPE_CODE = ct2.CAPACITY_TYPE_CODE) and
                              
        (ml2.ML_OBJECT_BRANCH_CODE = mll2.ML_OBJECT_BRANCH_CODE) and
        (ml2.ML_OBJECT_CODE = mll2.ML_OBJECT_CODE) and
        
        (mll2.MLL_OBJECT_BRANCH_CODE = mlms2.MLL_OBJECT_BRANCH_CODE) and
        (mll2.MLL_OBJECT_CODE = mlms2.MLL_OBJECT_CODE) and
      
        (mlms2.MLMS_OBJECT_BRANCH_CODE = mlmso2.MLMS_OBJECT_BRANCH_CODE) and
        (mlms2.MLMS_OBJECT_CODE = mlmso2.MLMS_OBJECT_CODE) and
        
        (s2.PRODUCTION_ORDER_TYPE_CODE is not null) and
      
        (s2.FINISH_EMPLOYEE_CODE is null) and
        (s2.ANNUL_EMPLOYEE_CODE is null) and
        (ml2.CLOSE_EMPLOYEE_CODE is null) and
        (ml2.ANNUL_EMPLOYEE_CODE is null) and
        (mll2.ANNUL_EMPLOYEE_CODE is null) and
      
        (mlmso2.OPERATION_TYPE_CODE = 2) and
        (mlmso2.IS_ACTIVE = 1) and
      
        (mlmso2.MLMSO_OBJECT_BRANCH_CODE = AMlmsoObjectBranchCode) and
        (mlmso2.MLMSO_OBJECT_CODE = AMlmsoObjectCode) and
        
        ( ( (mlmso2.SETUP_PROFESSION_CODE is not null) and
            (mlmso2.SETUP_DATE is null)
          ) or
          ( mlmso2.VARIANT_DETAIL_TECH_QUANTITY
            >
            ( -- izliazlo ot nashata operacia za drugi operacii ili brak
              select
                Coalesce(Sum(om2.TOTAL_DETAIL_TECH_QUANTITY), 0)
              from
                OPERATION_MOVEMENTS om2
              where
                (om2.FROM_MLMSO_OBJECT_BRANCH_CODE = AMlmsoObjectBranchCode) and
                (om2.FROM_MLMSO_OBJECT_CODE = AMlmsoObjectCode) and
                (om2.STORNO_EMPLOYEE_CODE is null) and
          
                ( (om2.TO_DEPT_CODE is not null) or
                  (not
                    ( (om2.TO_MLMSO_OBJECT_BRANCH_CODE = AMlmsoObjectBranchCode) and
                      (om2.TO_MLMSO_OBJECT_CODE = AMlmsoObjectCode)
                    )
                  )
                )
            )
          )
        )
      ;
    exception
      when no_data_found then
        Result:= 0;
    end;    

    return Result;
    
  end;
  
end;
/
