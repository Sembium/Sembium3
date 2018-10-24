create or replace package StoreUtils is

  function ProductDefaultStore(
    ProductCode in Number,
    DeptCode in Number
  ) return Number;
    
  procedure PrepareProductHistory(
    TheStartPeriodDate Date, 
    TheEndPeriodDate Date,
    DateUnitCode Number,
    MaxPlannedStoreDealTypeCode Number,
    AggregateFutureInLastDU Number,                                -- dali da agregira vsichki bydesthi periodi sled EndPeriodDate v poslednia period
    GroupByDateUnits Number);                                      -- dali da vyrne agregirano za vsichki produkti v syotvetnia dateunit        

  procedure UnprepareProductHistory;
        
  procedure DistributePlannedStoreDeal(
    AProductCode       in Number,
    AStoreCode         in Number,
    AInOut             in Number,
    AAddRemove         in Number,
    ABeginDate         in Date,
    AEndDate           in Date,
    AQuantity          in Number,
    ARemainingQuantity in Number,
    ADealType          in Number
  );
  
  procedure ReCalcAndReAggrStoreDeals(
    AProductCode   in Number,
    AStoreCode     in Number,
    AStoreDealDate in Date
  );
  
  procedure PrepareUncoveredPSD(
    Max_Psd_Type_Code in Number,
    Start_Period_Date in Date,
    End_Period_Date in Date,
    Date_Unit_Code in Number,
    Is_Towards_Reserve in Number
  );
  
  procedure PrepareUncoveredPSDByModel(
    Start_Period_Date in Date,
    End_Period_Date in Date,
    Date_Unit_Code in Number,
    ML_Object_Branch_Code in Number,
    ML_Object_Code in Number
  );
  
  procedure UnprepareUncoveredPSD;
  
  PRAGMA RESTRICT_REFERENCES (UnprepareProductHistory, WNPS, RNPS);  

  PRAGMA RESTRICT_REFERENCES (PrepareUncoveredPSD, WNPS);
  PRAGMA RESTRICT_REFERENCES (PrepareUncoveredPSDByModel, WNPS);
  PRAGMA RESTRICT_REFERENCES (UnprepareUncoveredPSD, WNPS, RNPS);
end;
/
create or replace package body StoreUtils is

  type TProductDateUnitsRow is record (
    PRODUCT_CODE Number(10),
    THE_DATE Date,
    IS_TODAY_SECOND_RECORD Number(10),

    REAL_QUANTITY Number,
    REAL_QUANTITY_IN Number,
    REAL_QUANTITY_OUT Number,
    
    ACC_REAL_QUANTITY Number,
    ACC_REAL_QUANTITY_IN Number,
    ACC_REAL_QUANTITY_OUT Number,
    
    REAL_PRICE Number,
    REAL_PRICE_IN Number,
    REAL_PRICE_OUT Number,

    PLAN_QUANTITY Number,
    NEGATIVE_PLAN_QUANTITY Number,
    PLAN_QUANTITY_IN Number,
    PLAN_QUANTITY_OUT Number,
    
    ACC_PLAN_QUANTITY Number,
    ACC_NEGATIVE_PLAN_QUANTITY Number,
    ACC_PLAN_QUANTITY_IN Number,
    ACC_PLAN_QUANTITY_OUT Number,
    
    PLAN_PRICE Number,
    NEGATIVE_PLAN_PRICE Number,
    PLAN_PRICE_IN Number,
    PLAN_PRICE_OUT Number,
    
    ACTIVE_QUANTITY Number,
    ACC_ACTIVE_QUANTITY Number,
    ACTIVE_PRICE Number,
    
    PASSIVE_QUANTITY Number,
    ACC_PASSIVE_QUANTITY Number,
    PASSIVE_PRICE Number,
    
    DEFICIT_QUANTITY Number,
    ACC_DEFICIT_QUANTITY Number,
    DEFICIT_PRICE Number,

    REAL_QUANTITY_RSV Number,
    NEGATIVE_REAL_QUANTITY_RSV Number,
    ACC_REAL_QUANTITY_RSV Number,
    ACC_NEGATIVE_REAL_QUANTITY_RSV Number,
    REAL_PRICE_RSV Number,
    NEGATIVE_REAL_PRICE_RSV Number,
    
    PLAN_QUANTITY_RSV Number,
    NEGATIVE_PLAN_QUANTITY_RSV Number,
    ACC_PLAN_QUANTITY_RSV Number,
    ACC_NEGATIVE_PLAN_QUANTITY_RSV Number,
    PLAN_PRICE_RSV Number,
    NEGATIVE_PLAN_PRICE_RSV Number,
    
    ACTIVE_QUANTITY_RSV Number,
    ACC_ACTIVE_QUANTITY_RSV Number,
    ACTIVE_PRICE_RSV Number,
    
    DEFICIT_QUANTITY_RSV Number,
    ACC_DEFICIT_QUANTITY_RSV Number,
    DEFICIT_PRICE_RSV Number,
    
    MIN_QUANTITY Number,
    ACC_MIN_QUANTITY Number,
    MIN_PRICE Number
  );
  
  type TProductDateUnitsTable is table of TProductDateUnitsRow;

  function ProductDefaultStore(
    ProductCode in Number,
    DeptCode in Number
  ) return Number is
  
    Result Number;
  
  begin
    select
      /* StoreUtils.ProductDefaultStore */
      Max(ex.STORE_CODE)

    into
      Result
    
    from
      (
        select
          /*+ ORDERED INDEX(pl) */
          pl.STORE_CODE,
          
          (
            select
              Count(*)
            from
              PRODUCT_RELATIONS pr2
            where
              (pr2.DESCENDANT_PRODUCT_CODE = pl.PRODUCT_CODE)
          ) as PRODUCT_LEVEL,
          
          Max(
            (
              select
                Count(*)
              from
                PRODUCT_RELATIONS pr3
              where
                (pr3.DESCENDANT_PRODUCT_CODE = pl.PRODUCT_CODE)
            )
          ) over () as MAX_PRODUCT_LEVEL,
          
          (
            select
              Count(*)
            from
              DEPT_RELATIONS dr2
            where
              (dr2.DESCENDANT_DEPT_CODE = pl.DEPT_CODE)
          ) as DEPT_LEVEL,
          
          Max(
            (
              select
                Count(*)
              from
                DEPT_RELATIONS dr3
              where
                (dr3.DESCENDANT_DEPT_CODE = pl.DEPT_CODE)
            ) 
          ) over (partition by pl.PRODUCT_CODE) as MAX_DEPT_LEVEL
        
        from
          PRODUCT_RELATIONS pr,
          PRODUCT_LOCATIONS pl,
          DEPT_RELATIONS dr
          
        where
          (pr.DESCENDANT_PRODUCT_CODE = ProductCode) and
          (pr.ANCESTOR_PRODUCT_CODE = pl.PRODUCT_CODE) and
          (pl.DEPT_CODE = dr.ANCESTOR_DEPT_CODE) and
          (dr.DESCENDANT_DEPT_CODE = DeptCode)
      ) ex
      
    where
      (ex.PRODUCT_LEVEL = ex.MAX_PRODUCT_LEVEL) and
      (ex.DEPT_LEVEL = ex.MAX_DEPT_LEVEL)
    ;
    
    return Result;
  end;
  

  
  
  function GetProductHistoryByDateUnits(
    TheStartPeriodDate Date, 
    TheEndPeriodDate Date,
    DateUnitCode Number,
    MaxPlannedStoreDealTypeCode Number,
    AggregateFutureInLastDU Number,
    GroupByDateUnits Number
  ) return TProductDateUnitsTable is
  
    -- tazi procedura razchita na joini s TEMP_FILTERED_PRODUCTS
    -- i ne izpolzva ALL_FILTERED_PRODUCTS, nito filtar po PRODUCT_CLASS
    -- ako se slaga ALL_FILTERED_PRODUCTS, triabva i filtar pro PRODUCT_CLASS da se sloji

    type TInitialQuantity is record (
      ProductCode Number(10),
      SumQuantity Number,
      SumAccountQuantity Number,
      SumQuantityPrice Number
    );
    type TInitialQuantityTable is table of TInitialQuantity;
    
    type TMovement is record (
      ProductCode Number(10),
      TheDate Date,
      QIn Number,
      QOut Number,
      AccQIn Number,
      AccQOut Number,
      PIn Number,
      POut Number
    );
    type TMovementTable is table of TMovement;
    
    type TMinQuantity is record (
      ProductCode Number(10),
      TheDate Date,
      MinQuantity Number,
      MinAccountQuantity Number,
      MinPrice Number
    );
    type TMinQuantityTable is table of TMinQuantity;
    
    sqlInitialQuantities constant Varchar2(10000):=
        ' select
            /* StoreUtils.GetProductHistoryByDateUnits.sqlInitialQuantities */
            x.PRODUCT_CODE,
            Sum(x.SUM_QUANTITY)         as SUM_QUANTITY,
            Sum(x.SUM_ACCOUNT_QUANTITY) as SUM_ACCOUNT_QUANTITY,
            ( Sum(x.SUM_QUANTITY_PRICE) /
              ( select
                  tcr.FIXING
                from
                  TODAY_CURRENCY_RATES tcr,
                  INTERNAL_VALUES iv
                where
                  (iv.CODE = 1) and
                  (iv.SECONDARY_CURRENCY_CODE = tcr.CURRENCY_CODE)
              )
            ) as SUM_QUANTITY_PRICE

          from
            ( select
                asd.PRODUCT_CODE,
                asd.STORE_CODE,
                Sum(asd.REAL_QUANTITY)         keep (dense_rank last order by asd.STORE_DEAL_DATE) as SUM_QUANTITY,
                Sum(asd.REAL_ACCOUNT_QUANTITY) keep (dense_rank last order by asd.STORE_DEAL_DATE) as SUM_ACCOUNT_QUANTITY,
                Sum(asd.REAL_TOTAL_PRICE)      keep (dense_rank last order by asd.STORE_DEAL_DATE) as SUM_QUANTITY_PRICE
                
              from
                AGGR_STORE_DEALS asd
                
              where
                (asd.STORE_DEAL_DATE <= Trunc(:THE_DATE)) and  -- Trunc() to disable parameter peeking in optimizer
                
                (exists
                  ( select
                      1
                    from
                      TEMP_FILTERED_PRODUCTS tfp
                    where
                      (asd.PRODUCT_CODE = tfp.PRODUCT_CODE)
                  )
                )
                
              group by
                asd.PRODUCT_CODE,
                asd.STORE_CODE
                
              having
                (exists
                  ( select
                      1
                    from
                      TEMP_FILTERED_DEPTS tfd
                    where
                      (asd.STORE_CODE = tfd.DEPT_CODE)
                  )
                ) and
                
                ((Sum(asd.REAL_QUANTITY) keep (dense_rank last order by asd.STORE_DEAL_DATE)) <> 0)
            ) x
            
          group by
            x.PRODUCT_CODE
            
          order by
            x.PRODUCT_CODE desc';          
          
    sqlOtchMovements1 constant Varchar2(10000):=
      ' select
          /*+ INDEX(asd) INDEX(d) INDEX(tfd) INDEX(tfp) NO_USE_MERGE(asd d tfd tfp) NO_USE_HASH(asd d tfd tfp) USE_NL(asd d tfd tfp) */
          /* StoreUtils.GetProductHistoryByDateUnits.sqlOtchMovements */
          asd.PRODUCT_CODE,
          d.';--THE_WEEK_DATE
          
    sqlOtchMovements2 constant Varchar2(10000):=
      ' as THE_X_DATE,
          
          Coalesce(Sum(asd.REAL_IN_QUANTITY), 0) as QUANTITY_IN,
          Coalesce(Sum(asd.REAL_OUT_QUANTITY), 0) as QUANTITY_OUT,
          Coalesce(Sum(asd.REAL_IN_ACCOUNT_QUANTITY), 0) as ACCOUNT_QUANTITY_IN,
          Coalesce(Sum(asd.REAL_OUT_ACCOUNT_QUANTITY), 0) as ACCOUNT_QUANTITY_OUT,
          
          Coalesce(
            ( Sum(asd.REAL_IN_TOTAL_PRICE) /
              ( select
                  tcr.FIXING
                from
                  TODAY_CURRENCY_RATES tcr,
                  INTERNAL_VALUES iv
                where
                  (iv.CODE = 1) and
                  (iv.SECONDARY_CURRENCY_CODE = tcr.CURRENCY_CODE)
              )
            ),
            0
          ) as TOTAL_SEC_PRICE_IN,
            
          Coalesce(
            ( Sum(asd.REAL_OUT_TOTAL_PRICE) /
              ( select
                  tcr.FIXING
                from
                  TODAY_CURRENCY_RATES tcr,
                  INTERNAL_VALUES iv
                where
                  (iv.CODE = 1) and
                  (iv.SECONDARY_CURRENCY_CODE = tcr.CURRENCY_CODE)
              )
            ),
            0
          ) as TOTAL_SEC_PRICE_OUT
                    
        from
          THE_DATES d,
          AGGR_STORE_DEALS asd
          
        where
          (asd.STORE_DEAL_DATE = d.THE_DATE) and
          (asd.STORE_DEAL_DATE between Trunc(:BEGIN_DATE) and Trunc(:END_DATE)) and  -- Trunc() to disable parameter peeking in optimizer
          
          ( (asd.REAL_IN_QUANTITY is not null) or
            (asd.REAL_OUT_QUANTITY is not null)
          ) and
          
          (exists
            ( select
                1
              from
                TEMP_FILTERED_PRODUCTS tfp
              where
                (asd.PRODUCT_CODE = tfp.PRODUCT_CODE)
            )
          ) and
         
          (exists
            ( select
                1
              from
                TEMP_FILTERED_DEPTS tfd
              where
                (asd.STORE_CODE = tfd.DEPT_CODE)
            )
          )
          
        group by
          d.';--THE_WEEK_DATE,

    sqlOtchMovements3 constant Varchar2(10000):=
      '    ,
           asd.PRODUCT_CODE
          
        order by
          asd.PRODUCT_CODE desc,
          THE_X_DATE asc';       

       
    sqlPlanMovements1 constant Varchar2(10000):=
       ' select
            /*+ INDEX(asd idxASD__HAS_PLAN_DEALS) INDEX(tfp) INDEX(tfd) INDEX(d) NO_USE_MERGE(asd tfp tfd d) NO_USE_HASH(asd tfp tfd d) USE_NL(asd tfp tfd d) ORDERED */
            /* StoreUtils.GetProductHistoryByDateUnits.sqlPlanMovements */
            asd.PRODUCT_CODE,
            d.';--THE_WEEK_DATE

    sqlPlanMovements2 constant Varchar2(10000):=
       ' as THE_X_DATE,
            
            Coalesce(
              Sum(
                Decode(:MAX_PSD_TYPE_CODE,
                  1, Coalesce(asd.PLANNED_IN_QUANTITY, 0),
                     Coalesce(asd.PLANNED_IN_QUANTITY, 0) + Coalesce(asd.PROJECTED_IN_QUANTITY, 0)
                )
              ),
              0
            ) as Q_IN,
            
            Coalesce(
              Sum(
                Decode(:MAX_PSD_TYPE_CODE,
                  1, Coalesce(asd.PLANNED_OUT_QUANTITY, 0),
                     Coalesce(asd.PLANNED_OUT_QUANTITY, 0) + Coalesce(asd.PROJECTED_OUT_QUANTITY, 0)
                ) 
              ),
              0
            ) as Q_OUT,
            
            Coalesce(
              Sum(
                Decode(:MAX_PSD_TYPE_CODE,
                  1, Coalesce(asd.PLANNED_IN_QUANTITY, 0),
                     Coalesce(asd.PLANNED_IN_QUANTITY, 0) + Coalesce(asd.PROJECTED_IN_QUANTITY, 0)
                ) *
                ( select
                    p.ACCOUNT_MEASURE_COEF
                  from
                    PRODUCTS p
                  where
                    (p.PRODUCT_CODE = asd.PRODUCT_CODE)
                )
              ),
              0
            ) as ACCOUNT_Q_IN,
            
            Coalesce(
              Sum(
                Decode(:MAX_PSD_TYPE_CODE,
                  1, Coalesce(asd.PLANNED_OUT_QUANTITY, 0),
                     Coalesce(asd.PLANNED_OUT_QUANTITY, 0) + Coalesce(asd.PROJECTED_OUT_QUANTITY, 0)
                ) *
                ( select
                    p.ACCOUNT_MEASURE_COEF
                  from
                    PRODUCTS p
                  where
                    (p.PRODUCT_CODE = asd.PRODUCT_CODE)
                )
              ),
              0
            ) as ACCOUNT_Q_OUT,

            Coalesce(
              ( Sum(
                  Decode(:MAX_PSD_TYPE_CODE,
                    1, Coalesce(asd.PLANNED_IN_QUANTITY, 0),
                       Coalesce(asd.PLANNED_IN_QUANTITY, 0) + Coalesce(asd.PROJECTED_IN_QUANTITY, 0)
                  ) *
                  ProductUtils.PsdSinglePriceInBaseCurrencyEx(asd.PRODUCT_CODE, asd.STORE_DEAL_DATE) /
                  ( select
                      cr.FIXING
                    from
                      CURRENCY_RATES cr,
                      INTERNAL_VALUES iv
                    where
                      (cr.CURRENCY_CODE = iv.SECONDARY_CURRENCY_CODE) and
                      (cr.RATE_DATE = Least(asd.STORE_DEAL_DATE, ContextDate)) and
                      (iv.CODE = 1)
                  )
                )
              ),
              0
            ) as P_IN,
            
            Coalesce(
              ( Sum(
                  Decode(:MAX_PSD_TYPE_CODE,
                    1, Coalesce(asd.PLANNED_OUT_QUANTITY, 0),
                       Coalesce(asd.PLANNED_OUT_QUANTITY, 0) + Coalesce(asd.PROJECTED_OUT_QUANTITY, 0)
                  ) *
                  ProductUtils.PsdSinglePriceInBaseCurrencyEx(asd.PRODUCT_CODE, asd.STORE_DEAL_DATE) /
                  ( select
                      cr.FIXING
                    from
                      CURRENCY_RATES cr,
                      INTERNAL_VALUES iv
                    where
                      (cr.CURRENCY_CODE = iv.SECONDARY_CURRENCY_CODE) and
                      (cr.RATE_DATE = Least(asd.STORE_DEAL_DATE, ContextDate)) and
                      (iv.CODE = 1)
                  )
                )
              ),
              0
            ) as P_OUT
            
          from
            AGGR_STORE_DEALS asd,
            TEMP_FILTERED_PRODUCTS tfp,
            TEMP_FILTERED_DEPTS tfd,
            THE_DATES d
            
          where
            (asd.HAS_PLAN_DEALS = 1) and
            (Greatest(asd.STORE_DEAL_DATE, ContextDate) = d.THE_DATE) and
            
            (asd.PRODUCT_CODE = tfp.PRODUCT_CODE) and
            (asd.STORE_CODE = tfd.DEPT_CODE)

          group by
            asd.PRODUCT_CODE,
            d.';--THE_WEEK_DATE
            
    sqlPlanMovements3 constant Varchar2(10000):=
      '   order by
            asd.PRODUCT_CODE desc,
            THE_X_DATE asc';
         
           
    sqlMinQuantities1 constant Varchar2(10000):=
      ' select
          /* StoreUtils.GetProductHistoryByDateUnits.sqlMinQuantities */
          ps.PRODUCT_CODE,
          td.';--THE_WEEK_DATE 

    sqlMinQuantities2 constant Varchar2(10000):=
      '   as THE_DATE,
        
          Sum(ps.MIN_QUANTITY) as MIN_QUANTITY,

          Coalesce(
            ( Sum(ps.MIN_QUANTITY) *
              ( select
                  p.ACCOUNT_MEASURE_COEF
                from
                  PRODUCTS p
                where
                  (p.PRODUCT_CODE = ps.PRODUCT_CODE)
              )
            ),
            0
          ) as MIN_ACCOUNT_QUANTITY,
          
          Coalesce(
            ( Sum(ps.MIN_QUANTITY) *
              ProductUtils.PsdSinglePriceInBaseCurrencyEx(ps.PRODUCT_CODE, Least(td.THE_LAST_DATE, ContextDate)) /
              ( select
                  cr.FIXING
                from
                  CURRENCY_RATES cr,
                  INTERNAL_VALUES iv
                where
                  (cr.CURRENCY_CODE = iv.SECONDARY_CURRENCY_CODE) and
                  (cr.RATE_DATE = Least(td.THE_LAST_DATE, ContextDate)) and
                  (iv.CODE = 1)
              )
            ),
            0
          ) as MIN_PRICE
          
        from
          PRODUCT_STORES ps,';
          --THE_WEEK_DATES 

    sqlMinQuantities3 constant Varchar2(10000):=
       '  td
        where
          (td.THE_LAST_DATE between ps.BEGIN_DATE and ps.END_DATE) and
        
          (ps.END_DATE >= Trunc(:BEGIN_DATE)) and  -- Trunc() to disable parameter peeking in optimizer
  
          (td.';--THE_WEEK_DATE 
          
    sqlMinQuantities4 constant Varchar2(10000):=
       '    between 
              :BEGIN_DATE and
            Decode(Sign(:END_DATE - ContextDate), -1,
              :END_DATE,
              Greatest(
                ( select
                    Coalesce(Max(asd.STORE_DEAL_DATE), :END_DATE)
                  from
                    AGGR_STORE_DEALS asd
                  where
                    (asd.PRODUCT_CODE = ps.PRODUCT_CODE)
                ),
                :END_DATE
              )
            )
          ) and
          
          (ps.MIN_QUANTITY <> 0)and
          
          (exists
            ( select
                1
              from
                TEMP_FILTERED_PRODUCTS tfp
              where
                (ps.PRODUCT_CODE = tfp.PRODUCT_CODE)
            )
          ) and
          
          (exists
            ( select
                1
              from
                TEMP_FILTERED_DEPTS tfd
              where
                (ps.STORE_CODE = tfd.DEPT_CODE)
            )
          )
          
        group by
          ps.PRODUCT_CODE,
          td.THE_LAST_DATE,
          td.';--THE_WEEK_DATE
          
    sqlMinQuantities5 constant Varchar2(10000):=
     '  order by
          ps.PRODUCT_CODE desc,
          THE_DATE asc';  
  
    type TProductData is record (
      TheDate Date,
      IsPlan Boolean,
      Quantity Number,
      QuantityIn Number,
      QuantityOut Number,
      AccQuantity Number,
      AccQuantityIn Number,
      AccQuantityOut Number,
      Price Number,
      PriceIn Number,
      PriceOut Number,
      DeficitQuantity Number,
      AccDeficitQuantity Number,
      DeficitPrice Number,
      ActiveQuantity Number,
      AccActiveQuantity Number,
      ActivePrice Number,
      PassiveQuantity Number,
      AccPassiveQuantity Number,
      PassivePrice Number,
      QuantityTowardsReserve Number,
      AccQuantityTowardsReserve Number,
      PriceTowardsReserve Number,
      DeficitQuantityTowardsReserve Number,
      AccDeficitQuantityTowardsRsv Number,
      DeficitPriceTowardsReserve Number,
      ActiveQuantityTowardsReserve Number,
      AccActiveQuantityTowardsRsv Number,
      ActivePriceTowardsReserve Number,
      MinQuantity Number,
      AccMinQuantity Number,
      MinPrice Number,
      NegativeQuantity Number,
      AccNegativeQuantity Number,
      NegativePrice Number,
      NegativeQuantityTowardsReserve Number,
      AccNegativeQuantityTowardsRsv Number,
      NegativePriceTowardsReserve Number
    );
    type TProductDataArray is Varray(5000) of TProductData;
    Data TProductDateUnitsTable:= TProductDateUnitsTable();
    ProductData TProductDataArray:= TProductDataArray();
    AggregateProductData TProductDataArray:= TProductDataArray();
    n Number;  
    i Number; 

    InitQuantity Number;
    InitAccQuantity Number;
    InitPrice Number;
    
    crInitialQuantities MiscUtils.TRefCursor;
    crOtchMovements MiscUtils.TRefCursor;
    crPlanMovements MiscUtils.TRefCursor;
    crMinQuantities MiscUtils.TRefCursor;
    
    TableName Varchar2(32 char);
    TableKey Varchar2(32 char);
    TableYearXNo Varchar2(32 char);
    DateUnitCount Number;
    
    PlanFirstIndex Number;

    InitialQuantities TInitialQuantityTable;
    InitialQuantitiesIndex Number(10);
    RealMovements TMovementTable;
    RealMovementsIndex Number(10);
    PlanMovements TMovementTable;
    PlanMovementsIndex Number(10);
    MinQuantities TMinQuantityTable;
    MinQuantitiesIndex Number(10);
    
    CurrentProductCode Number;
    CurrentPeriod Date;
    IsPlanCoef Number;
    IsOtchCoef Number;
    IsTodaySecondRecord Number;
    
    StartPeriodDate Date; 
    EndPeriodDate Date;
    
    SumDeficitQuantity Number;
    SumAccDeficitQuantity Number;
    SumDeficitPrice Number;
    SumDeficitQuantityRsv Number;
    SumAccDeficitQuantityRsv Number;
    SumDeficitPriceRsv Number;

  begin
    -- assert
    if (TheEndPeriodDate < TheStartPeriodDate) then
      raise_application_error(-20000, 'Internal error: StoreUtils.VIMQuantity> nevaliden period');
    end if;
    
    -- za kakyv period stava duma
    select
      tdu.TABLE_NAME,
      tdu.KEY_FIELD_NAME,
      tdu.YEAR_UNIT_NO_NAME
    into
      TableName,
      TableKey,
      TableYearXNo
    from
      THE_DATE_UNITS tdu
    where
      (tdu.THE_DATE_UNIT_CODE = DateUnitCode);

    -- podravniavane na Start i End date na granicata na period
    execute immediate 
      ' select
          d.THE_FIRST_DATE
        from ' ||
          TableName || ' d
        where
          (:THE_DATE between d.THE_FIRST_DATE and d.THE_LAST_DATE)'
    into
      StartPeriodDate
    using
      TheStartPeriodDate;
    
    execute immediate 
      ' select
          d.THE_FIRST_DATE
        from ' ||
          TableName || ' d
        where
          (:THE_DATE between d.THE_FIRST_DATE and d.THE_LAST_DATE)'
    into
      EndPeriodDate
    using
      TheEndPeriodDate;

    
    CurrentPeriod:= DateTimeUtils.GetDatePeriodBeginDate(ContextDate, DateUnitCode);

    if (CurrentPeriod < StartPeriodDate) then
      PlanFirstIndex:= 1;
    else
      PlanFirstIndex:= DateTimeUtils.TimeUnitsBetween(StartPeriodDate, Least(CurrentPeriod, EndPeriodDate), DateUnitCode) + 2;
    end if;
    
    DateUnitCount:= DateTimeUtils.TimeUnitsBetween(StartPeriodDate, EndPeriodDate, DateUnitCode) + 1;
    -- ako ima 2 zapisa za tekushtia period
    if not ( (StartPeriodDate > CurrentPeriod) or (EndPeriodDate < CurrentPeriod) ) then
      DateUnitCount:= DateUnitCount + 1;
    end if;
     
    ProductData.extend(5000);
    AggregateProductData.extend(DateUnitCount);
    
    for i in 1..(PlanFirstIndex - 1) loop
      ProductData(i).TheDate:= DateTimeUtils.IncDateByTimeUnits(StartPeriodDate, DateUnitCode, i-1);
      ProductData(i).IsPlan:= false;
    end loop;
    for i in PlanFirstIndex..ProductData.count loop
      ProductData(i).TheDate:= DateTimeUtils.IncDateByTimeUnits(StartPeriodDate, DateUnitCode, i-Least(PlanFirstIndex, 2));
      ProductData(i).IsPlan:= true;
    end loop;
    
    for i in 1..DateUnitCount loop
      ProductData(i).DeficitQuantity:= 0;
      ProductData(i).AccDeficitQuantity:= 0;
      ProductData(i).DeficitPrice:= 0;
      ProductData(i).ActiveQuantity:= 0;
      ProductData(i).AccActiveQuantity:= 0;
      ProductData(i).ActivePrice:= 0;
      ProductData(i).PassiveQuantity:= 0;
      ProductData(i).AccPassiveQuantity:= 0;
      ProductData(i).PassivePrice:= 0;
      ProductData(i).DeficitQuantityTowardsReserve:= 0;
      ProductData(i).AccDeficitQuantityTowardsRsv:= 0;
      ProductData(i).DeficitPriceTowardsReserve:= 0;
      ProductData(i).ActiveQuantityTowardsReserve:= 0;
      ProductData(i).AccActiveQuantityTowardsRsv:= 0;
      ProductData(i).ActivePriceTowardsReserve:= 0;

      AggregateProductData(i).TheDate:= ProductData(i).TheDate;
      AggregateProductData(i).IsPlan:= ProductData(i).IsPlan;
      AggregateProductData(i).Quantity:= 0;
      AggregateProductData(i).QuantityIn:= 0;
      AggregateProductData(i).QuantityOut:= 0;
      AggregateProductData(i).AccQuantity:= 0;
      AggregateProductData(i).AccQuantityIn:= 0;
      AggregateProductData(i).AccQuantityOut:= 0;
      AggregateProductData(i).Price:= 0;
      AggregateProductData(i).PriceIn:= 0;
      AggregateProductData(i).PriceOut:= 0;
      AggregateProductData(i).DeficitQuantity:= 0;
      AggregateProductData(i).AccDeficitQuantity:= 0;
      AggregateProductData(i).DeficitPrice:= 0;
      AggregateProductData(i).ActiveQuantity:= 0;
      AggregateProductData(i).AccActiveQuantity:= 0;
      AggregateProductData(i).ActivePrice:= 0;
      AggregateProductData(i).PassiveQuantity:= 0;
      AggregateProductData(i).AccPassiveQuantity:= 0;
      AggregateProductData(i).PassivePrice:= 0;
      AggregateProductData(i).QuantityTowardsReserve:= 0;
      AggregateProductData(i).AccQuantityTowardsReserve:= 0;
      AggregateProductData(i).PriceTowardsReserve:= 0;
      AggregateProductData(i).DeficitQuantityTowardsReserve:= 0;
      AggregateProductData(i).AccDeficitQuantityTowardsRsv:= 0;
      AggregateProductData(i).DeficitPriceTowardsReserve:= 0;
      AggregateProductData(i).ActiveQuantityTowardsReserve:= 0;
      AggregateProductData(i).AccActiveQuantityTowardsRsv:= 0;
      AggregateProductData(i).ActivePriceTowardsReserve:= 0;
      AggregateProductData(i).MinQuantity:= 0;
      AggregateProductData(i).AccMinQuantity:= 0;
      AggregateProductData(i).MinPrice:= 0;
      AggregateProductData(i).NegativeQuantity:= 0;
      AggregateProductData(i).AccNegativeQuantity:= 0;
      AggregateProductData(i).NegativePrice:= 0;
      AggregateProductData(i).NegativeQuantityTowardsReserve:= 0;
      AggregateProductData(i).AccNegativeQuantityTowardsRsv:= 0;
      AggregateProductData(i).NegativePriceTowardsReserve:= 0;
    end loop;


    -- CURSORS OPEN AND FETCH
    InitialQuantitiesIndex:= 1;
    RealMovementsIndex:= 1;
    PlanMovementsIndex:= 1;
    MinQuantitiesIndex:= 1;
    
    open crInitialQuantities for sqlInitialQuantities
    using
      Least(DateTimeUtils.IncDateByTimeUnits(CurrentPeriod, DateUnitCode, 1) - 1, DateTimeUtils.IncDateByTimeUnits(EndPeriodDate, DateUnitCode, 1) - 1);
    fetch crInitialQuantities bulk collect into InitialQuantities;
    close crInitialQuantities;
    
    open crPlanMovements for sqlPlanMovements1 || TableKey || sqlPlanMovements2 || TableKey || sqlPlanMovements3
    using
      MaxPlannedStoreDealTypeCode,
      MaxPlannedStoreDealTypeCode,
      MaxPlannedStoreDealTypeCode,
      MaxPlannedStoreDealTypeCode,
      MaxPlannedStoreDealTypeCode,
      MaxPlannedStoreDealTypeCode;
    fetch crPlanMovements bulk collect into PlanMovements;
    close crPlanMovements;
    
    open crOtchMovements for sqlOtchMovements1 || TableKey || sqlOtchMovements2 || TableKey || sqlOtchMovements3
    using 
      StartPeriodDate,
      Least(DateTimeUtils.IncDateByTimeUnits(CurrentPeriod, DateUnitCode, 1) - 1, DateTimeUtils.IncDateByTimeUnits(EndPeriodDate, DateUnitCode, 1) - 1);
    fetch crOtchMovements bulk collect into RealMovements;
    close crOtchMovements;
     
    open crMinQuantities for sqlMinQuantities1 || TableKey || sqlMinQuantities2 || TableName || sqlMinQuantities3 || TableKey || sqlMinQuantities4 || TableKey || sqlMinQuantities5
    using
      StartPeriodDate,
      StartPeriodDate,
      EndPeriodDate,
      EndPeriodDate,
      EndPeriodDate,
      EndPeriodDate;
    fetch crMinQuantities bulk collect into MinQuantities;
    close crMinQuantities;
    
    -- MAIN LOOP
    while 
      (InitialQuantitiesIndex <= InitialQuantities.count) or 
      (PlanMovementsIndex <= PlanMovements.count) or 
      (RealMovementsIndex <= RealMovements.count) or 
      (MinQuantitiesIndex <= MinQuantities.count) loop
      
      CurrentProductCode:= 0;
      if (InitialQuantitiesIndex <= InitialQuantities.count) then
        CurrentProductCode:= Greatest(CurrentProductCode, InitialQuantities(InitialQuantitiesIndex).ProductCode);
      end if;
      if (PlanMovementsIndex <= PlanMovements.count) then
        CurrentProductCode:= Greatest(CurrentProductCode, PlanMovements(PlanMovementsIndex).ProductCode);
      end if;
      if (RealMovementsIndex <= RealMovements.count) then
        CurrentProductCode:= Greatest(CurrentProductCode, RealMovements(RealMovementsIndex).ProductCode);
      end if;
      if (MinQuantitiesIndex <= MinQuantities.count) then
        CurrentProductCode:= Greatest(CurrentProductCode, MinQuantities(MinQuantitiesIndex).ProductCode);
      end if;
      
      -- ANALIZ NA RAZLICHNITE SITUACII KOI KURSORI DA OBRABOTVAME
      if (InitialQuantitiesIndex <= InitialQuantities.count) and (InitialQuantities(InitialQuantitiesIndex).ProductCode = CurrentProductCode) then
        InitQuantity:= InitialQuantities(InitialQuantitiesIndex).SumQuantity;
        InitAccQuantity:= InitialQuantities(InitialQuantitiesIndex).SumAccountQuantity;
        InitPrice:= InitialQuantities(InitialQuantitiesIndex).SumQuantityPrice;
      else
        InitQuantity:= 0;
        InitAccQuantity:= 0;
        InitPrice:= 0;
      end if;
    
      -- ima li razvitie na zadelite ?
      if (MinQuantitiesIndex <= MinQuantities.count) and (MinQuantities(MinQuantitiesIndex).ProductCode = CurrentProductCode) then
        n:= 0;
        while 
          (MinQuantitiesIndex <= MinQuantities.count) and
          (MinQuantities(MinQuantitiesIndex).ProductCode = CurrentProductCode) loop
          
          n:= n + 1;

          while (ProductData(n).TheDate < MinQuantities(MinQuantitiesIndex).TheDate) loop
            ProductData(n).MinQuantity:= 0;
            ProductData(n).AccMinQuantity:= 0;
            ProductData(n).MinPrice:= 0; 
            n:= n + 1;
          end loop;
          
          ProductData(n).MinQuantity:= MinQuantities(MinQuantitiesIndex).MinQuantity;
          ProductData(n).AccMinQuantity:= MinQuantities(MinQuantitiesIndex).MinAccountQuantity;
          ProductData(n).MinPrice:= MinQuantities(MinQuantitiesIndex).MinPrice; 
          -- vtori zapis za dneshnia period
          if (MinQuantities(MinQuantitiesIndex).TheDate = CurrentPeriod) then
            n:= n + 1;
            ProductData(n).MinQuantity:= MinQuantities(MinQuantitiesIndex).MinQuantity;
            ProductData(n).AccMinQuantity:= MinQuantities(MinQuantitiesIndex).MinAccountQuantity;
            ProductData(n).MinPrice:= MinQuantities(MinQuantitiesIndex).MinPrice; 
          end if;
          
          MinQuantitiesIndex:= MinQuantitiesIndex + 1;
        end loop;

        if (ProductData(n).TheDate < EndPeriodDate) then
          n:= n + 1;
          while (ProductData(n).TheDate <= EndPeriodDate) loop
            ProductData(n).MinQuantity:= 0;
            ProductData(n).AccMinQuantity:= 0;
            ProductData(n).MinPrice:= 0; 
            n:= n + 1;
          end loop;
          n:= DateUnitCount;
        end if;

      -- inache otbeliazvame s 0 zadelite  
      else
        n:= DateUnitCount;
        for i in 1..n+1 loop
          ProductData(i).MinQuantity:= 0;
          ProductData(i).AccMinQuantity:= 0;
          ProductData(i).MinPrice:= 0;
        end loop;
      end if; 
      
      -- ima li otchetni dvijenia ?
      if (RealMovementsIndex <= RealMovements.count) and (RealMovements(RealMovementsIndex).ProductCode = CurrentProductCode) then
        i:= 1;

        loop

          while (ProductData(i).TheDate <= RealMovements(RealMovementsIndex).TheDate) and not ProductData(i).IsPlan loop
            -- assert
            if ProductData(i).IsPlan then
              raise_application_error(-20000, 'Internal error: vim internal error: ProductData(' || i || ').IsPlan=true in otch loop');
            end if;

            if (ProductData(i).TheDate = RealMovements(RealMovementsIndex).TheDate) then
              ProductData(i).QuantityIn:= RealMovements(RealMovementsIndex).QIn;
              ProductData(i).QuantityOut:= RealMovements(RealMovementsIndex).QOut;
              ProductData(i).AccQuantityIn:= RealMovements(RealMovementsIndex).AccQIn;
              ProductData(i).AccQuantityOut:= RealMovements(RealMovementsIndex).AccQOut;
              ProductData(i).PriceIn:= RealMovements(RealMovementsIndex).PIn;
              ProductData(i).PriceOut:= RealMovements(RealMovementsIndex).POut;
            else
              ProductData(i).QuantityIn:= 0;
              ProductData(i).QuantityOut:= 0;
              ProductData(i).AccQuantityIn:= 0;
              ProductData(i).AccQuantityOut:= 0;
              ProductData(i).PriceIn:= 0;
              ProductData(i).PriceOut:= 0;
            end if;
            
            i:= i + 1;
          end loop;
          
          RealMovementsIndex:= RealMovementsIndex + 1;
        
        exit when
          (RealMovementsIndex > RealMovements.count) or
          (RealMovements(RealMovementsIndex).ProductCode <> CurrentProductCode);

        end loop;         
        
        while (i <= PlanFirstIndex - 1) loop
          ProductData(i).QuantityIn:= 0;
          ProductData(i).QuantityOut:= 0;
          ProductData(i).AccQuantityIn:= 0;
          ProductData(i).AccQuantityOut:= 0;
          ProductData(i).PriceIn:= 0;
          ProductData(i).PriceOut:= 0;
          i:= i + 1;
        end loop;
        
        i:= PlanFirstIndex - 1;
        ProductData(i).Quantity:= InitQuantity;
        ProductData(i).AccQuantity:= InitAccQuantity;
        ProductData(i).Price:= InitPrice;
        ProductData(i).QuantityTowardsReserve:= ProductData(i).Quantity - ProductData(i).MinQuantity;
        ProductData(i).AccQuantityTowardsReserve:= ProductData(i).AccQuantity - ProductData(i).AccMinQuantity;
        ProductData(i).PriceTowardsReserve:= ProductData(i).Price - ProductData(i).MinPrice;
        
        -- popylvane na nalichnostite
        while (i > 1) loop
          ProductData(i-1).Quantity:= ProductData(i).Quantity - ProductData(i).QuantityIn + ProductData(i).QuantityOut;
          ProductData(i-1).AccQuantity:= ProductData(i).AccQuantity - ProductData(i).AccQuantityIn + ProductData(i).AccQuantityOut;
          ProductData(i-1).Price:= ProductData(i).Price - ProductData(i).PriceIn + ProductData(i).PriceOut;
          ProductData(i-1).QuantityTowardsReserve:= ProductData(i-1).Quantity - ProductData(i-1).MinQuantity;
          ProductData(i-1).AccQuantityTowardsReserve:= ProductData(i-1).AccQuantity - ProductData(i-1).AccMinQuantity;
          ProductData(i-1).PriceTowardsReserve:= ProductData(i-1).Price - ProductData(i-1).MinPrice;
          i:= i - 1; 
        end loop;
        
      else
        for i in 1..PlanFirstIndex - 1 loop
          ProductData(i).Quantity:= InitQuantity;
          ProductData(i).AccQuantity:= InitAccQuantity;
          ProductData(i).Price:= InitPrice;
          ProductData(i).QuantityIn:= 0;
          ProductData(i).QuantityOut:= 0;
          ProductData(i).AccQuantityIn:= 0;
          ProductData(i).AccQuantityOut:= 0;
          ProductData(i).PriceIn:= 0;
          ProductData(i).PriceOut:= 0;
          ProductData(i).QuantityTowardsReserve:= ProductData(i).Quantity - ProductData(i).MinQuantity;
          ProductData(i).AccQuantityTowardsReserve:= ProductData(i).AccQuantity - ProductData(i).AccMinQuantity;
          ProductData(i).PriceTowardsReserve:= ProductData(i).Price - ProductData(i).MinPrice;
        end loop;
        
      end if;
      
      -- ima li planovi dvijenia ?
      -- PlanProductCode ne e syshtia sled if-a !
      if (PlanMovementsIndex <= PlanMovements.count) and (PlanMovements(PlanMovementsIndex).ProductCode = CurrentProductCode) then
      
        i:= PlanFirstIndex;
        ProductData(i).Quantity:= InitQuantity;
        ProductData(i).AccQuantity:= InitAccQuantity;
        ProductData(i).Price:= InitPrice;
        
        loop 

          -- nachaloto na vima e za data sled dneshnata, imame psd otpredi tova i gi otraziavame v kolichestvoto
          if (PlanMovements(PlanMovementsIndex).TheDate < ProductData(i).TheDate) then
            while 
              (PlanMovementsIndex <= PlanMovements.count) and
              (PlanMovements(PlanMovementsIndex).TheDate <= ProductData(i).TheDate) and 
              (PlanMovements(PlanMovementsIndex).ProductCode = CurrentProductCode) loop

              ProductData(i).Quantity:= ProductData(i).Quantity + PlanMovements(PlanMovementsIndex).QIn - PlanMovements(PlanMovementsIndex).QOut;
              ProductData(i).AccQuantity:= ProductData(i).AccQuantity + PlanMovements(PlanMovementsIndex).AccQIn - PlanMovements(PlanMovementsIndex).AccQOut;
              ProductData(i).Price:= ProductData(i).Price + PlanMovements(PlanMovementsIndex).PIn - PlanMovements(PlanMovementsIndex).POut;
              ProductData(i).QuantityTowardsReserve:= ProductData(i).Quantity - ProductData(i).MinQuantity;
              ProductData(i).AccQuantityTowardsReserve:= ProductData(i).AccQuantity - ProductData(i).AccMinQuantity;
              ProductData(i).PriceTowardsReserve:= ProductData(i).Price - ProductData(i).MinPrice;
              if (PlanMovements(PlanMovementsIndex).TheDate = ProductData(i).TheDate) then
                ProductData(i).QuantityIn:= PlanMovements(PlanMovementsIndex).QIn;
                ProductData(i).QuantityOut:= PlanMovements(PlanMovementsIndex).QOut;
                ProductData(i).AccQuantityIn:= PlanMovements(PlanMovementsIndex).AccQIn;
                ProductData(i).AccQuantityOut:= PlanMovements(PlanMovementsIndex).AccQOut;
                ProductData(i).PriceIn:= PlanMovements(PlanMovementsIndex).PIn;
                ProductData(i).PriceOut:= PlanMovements(PlanMovementsIndex).POut;
              else
                ProductData(i).QuantityIn:= 0;
                ProductData(i).QuantityOut:= 0;
                ProductData(i).AccQuantityIn:= 0;
                ProductData(i).AccQuantityOut:= 0;
                ProductData(i).PriceIn:= 0;
                ProductData(i).PriceOut:= 0;
              end if;
              ProductData(i).DeficitQuantity:= 0;
              ProductData(i).AccDeficitQuantity:= 0;
              ProductData(i).DeficitPrice:= 0;
              ProductData(i).DeficitQuantityTowardsReserve:= 0;
              ProductData(i).AccDeficitQuantityTowardsRsv:= 0;
              ProductData(i).DeficitPriceTowardsReserve:= 0;
              ProductData(i).ActiveQuantity:= 0;
              ProductData(i).AccActiveQuantity:= 0;
              ProductData(i).ActivePrice:= 0;
              ProductData(i).ActiveQuantityTowardsReserve:= 0;
              ProductData(i).AccActiveQuantityTowardsRsv:= 0;
              ProductData(i).ActivePriceTowardsReserve:= 0;
              ProductData(i).PassiveQuantity:= Greatest(ProductData(i).Quantity, 0);
              ProductData(i).AccPassiveQuantity:= Greatest(ProductData(i).AccQuantity, 0);
              ProductData(i).PassivePrice:= Greatest(ProductData(i).Price, 0);
              
              PlanMovementsIndex:= PlanMovementsIndex + 1;
            end loop;
            i:= i + 1;
          end if;
          
          while 
            (PlanMovementsIndex <= PlanMovements.count) and
            (ProductData(i).TheDate <= PlanMovements(PlanMovementsIndex).TheDate) and 
            (PlanMovements(PlanMovementsIndex).ProductCode = CurrentProductCode) loop
            -- assert
            if not ProductData(i).IsPlan then
              raise_application_error(-20000, 'Internal error: vim internal error: ProductData(' || i || ').IsPlan=false in plan loop');
            end if;
            
            -- if-a e izpylnen, ako niamame zadeli, a imame razvitie na planovata nalichnost sled perioda, za koito gledame vim-a
            -- v toia sluchai datite ne sa definirani
            if (i+1 > n) then
              ProductData(i+1).MinQuantity:= 0;
              ProductData(i+1).AccMinQuantity:= 0;
              ProductData(i+1).MinPrice:= 0;
            end if;

            if (ProductData(i).TheDate = PlanMovements(PlanMovementsIndex).TheDate) then
            
              ProductData(i).QuantityIn:= PlanMovements(PlanMovementsIndex).QIn;
              ProductData(i).QuantityOut:= PlanMovements(PlanMovementsIndex).QOut;
              ProductData(i).AccQuantityIn:= PlanMovements(PlanMovementsIndex).AccQIn;
              ProductData(i).AccQuantityOut:= PlanMovements(PlanMovementsIndex).AccQOut;
              ProductData(i).PriceIn:= PlanMovements(PlanMovementsIndex).PIn;
              ProductData(i).PriceOut:= PlanMovements(PlanMovementsIndex).POut;

            else
              ProductData(i).QuantityIn:= 0;
              ProductData(i).QuantityOut:= 0;
              ProductData(i).AccQuantityIn:= 0;
              ProductData(i).AccQuantityOut:= 0;
              ProductData(i).PriceIn:= 0;
              ProductData(i).PriceOut:= 0;
            end if;

            if (i = PlanFirstIndex) then
              ProductData(i).Quantity:= InitQuantity + ProductData(i).QuantityIn - ProductData(i).QuantityOut;
              ProductData(i).AccQuantity:= InitAccQuantity + ProductData(i).AccQuantityIn - ProductData(i).AccQuantityOut;
              ProductData(i).Price:= InitPrice + ProductData(i).PriceIn - ProductData(i).PriceOut;
            else   
              ProductData(i).Quantity:= ProductData(i-1).Quantity + ProductData(i).QuantityIn - ProductData(i).QuantityOut;
              ProductData(i).AccQuantity:= ProductData(i-1).AccQuantity + ProductData(i).AccQuantityIn - ProductData(i).AccQuantityOut;
              ProductData(i).Price:= ProductData(i-1).Price + ProductData(i).PriceIn - ProductData(i).PriceOut;
            end if;
            
            ProductData(i).QuantityTowardsReserve:= ProductData(i).Quantity - ProductData(i).MinQuantity;
            ProductData(i).AccQuantityTowardsReserve:= ProductData(i).AccQuantity - ProductData(i).AccMinQuantity;
            ProductData(i).PriceTowardsReserve:= ProductData(i).Price - ProductData(i).MinPrice;
            ProductData(i).ActiveQuantity:= 0;
            ProductData(i).AccActiveQuantity:= 0;
            ProductData(i).ActivePrice:= 0;
            ProductData(i).ActiveQuantityTowardsReserve:= 0;
            ProductData(i).AccActiveQuantityTowardsRsv:= 0;
            ProductData(i).ActivePriceTowardsReserve:= 0;
            ProductData(i).PassiveQuantity:= Greatest(ProductData(i).Quantity, 0);
            ProductData(i).AccPassiveQuantity:= Greatest(ProductData(i).AccQuantity, 0);
            ProductData(i).PassivePrice:= Greatest(ProductData(i).Price, 0);

            i:= i + 1;
          end loop;
          
          if (PlanMovementsIndex <= PlanMovements.count) and (PlanMovements(PlanMovementsIndex).ProductCode = CurrentProductCode) then
            PlanMovementsIndex:= PlanMovementsIndex + 1;
          end if;
          
        exit when
          (PlanMovementsIndex > PlanMovements.count) or 
          (PlanMovements(PlanMovementsIndex).ProductCode <> CurrentProductCode);

        end loop;
        
        -- ako e imalo samo nachalna nalichnost
        if (i = 1) then
          i:= i + 1;
        end if;
        
        while (i <= n+1) loop
          ProductData(i).Quantity:= ProductData(i-1).Quantity;
          ProductData(i).AccQuantity:= ProductData(i-1).AccQuantity;
          ProductData(i).Price:= ProductData(i-1).Price;
          ProductData(i).QuantityIn:= 0;
          ProductData(i).QuantityOut:= 0;
          ProductData(i).AccQuantityIn:= 0;
          ProductData(i).AccQuantityOut:= 0;
          ProductData(i).PriceIn:= 0;
          ProductData(i).PriceOut:= 0;
          ProductData(i).QuantityTowardsReserve:= ProductData(i).Quantity - ProductData(i).MinQuantity;
          ProductData(i).AccQuantityTowardsReserve:= ProductData(i).AccQuantity - ProductData(i).AccMinQuantity;
          ProductData(i).PriceTowardsReserve:= ProductData(i).Price - ProductData(i).MinPrice;
          ProductData(i).DeficitQuantity:= 0;
          ProductData(i).AccDeficitQuantity:= 0;
          ProductData(i).DeficitPrice:= 0;
          ProductData(i).DeficitQuantityTowardsReserve:= 0;
          ProductData(i).AccDeficitQuantityTowardsRsv:= 0;
          ProductData(i).DeficitPriceTowardsReserve:= 0;
          ProductData(i).ActiveQuantity:= 0;
          ProductData(i).AccActiveQuantity:= 0;
          ProductData(i).ActivePrice:= 0;
          ProductData(i).ActiveQuantityTowardsReserve:= 0;
          ProductData(i).AccActiveQuantityTowardsRsv:= 0;
          ProductData(i).ActivePriceTowardsReserve:= 0;
          ProductData(i).PassiveQuantity:= Greatest(ProductData(i).Quantity, 0);
          ProductData(i).AccPassiveQuantity:= Greatest(ProductData(i).AccQuantity, 0);
          ProductData(i).PassivePrice:= Greatest(ProductData(i).Price, 0);
          i:= i + 1;
        end loop;
        
        -- aktivna i pasivna nalichnost (i agregirane na bydeshteto v poslednia date unit, ako triabva)
        n:= i - 1;
        i:= n - 1;
        while (i >= PlanFirstIndex) loop
          ProductData(i).ActiveQuantity:= 
            Least(Greatest(ProductData(i).Quantity, 0), ProductData(i + 1).QuantityOut + ProductData(i + 1).ActiveQuantity);
          ProductData(i).ActiveQuantityTowardsReserve:= 
            Least(Greatest(ProductData(i).QuantityTowardsReserve, 0), ProductData(i + 1).QuantityOut + ProductData(i + 1).ActiveQuantityTowardsReserve);
          ProductData(i).AccActiveQuantity:= 
            Least(Greatest(ProductData(i).AccQuantity, 0), ProductData(i + 1).AccQuantityOut + ProductData(i + 1).AccActiveQuantity);
          ProductData(i).AccActiveQuantityTowardsRsv:= 
            Least(Greatest(ProductData(i).AccQuantityTowardsReserve, 0), ProductData(i + 1).AccQuantityOut + ProductData(i + 1).AccActiveQuantityTowardsRsv);
          ProductData(i).ActivePrice:= 
            Least(Greatest(ProductData(i).Price, 0), ProductData(i + 1).PriceOut + ProductData(i + 1).ActivePrice);
          ProductData(i).ActivePriceTowardsReserve:= 
            Least(Greatest(ProductData(i).PriceTowardsReserve, 0), ProductData(i + 1).PriceOut + ProductData(i + 1).ActivePriceTowardsReserve);
          ProductData(i).PassiveQuantity:= Least(Greatest(ProductData(i).Quantity, 0), ProductData(i + 1).PassiveQuantity);
          ProductData(i).AccPassiveQuantity:= Least(Greatest(ProductData(i).AccQuantity, 0), ProductData(i + 1).AccPassiveQuantity);
          ProductData(i).PassivePrice:= Least(Greatest(ProductData(i).Price, 0), ProductData(i + 1).PassivePrice);
            
          if (AggregateFutureInLastDU = 1) and (ProductData(i).TheDate >= EndPeriodDate) then
            ProductData(i).Quantity:= ProductData(i+1).Quantity;
            ProductData(i).QuantityIn:= ProductData(i).QuantityIn + ProductData(i+1).QuantityIn;
            ProductData(i).QuantityOut:= ProductData(i).QuantityOut + ProductData(i+1).QuantityOut;
            ProductData(i).AccQuantity:= ProductData(i+1).AccQuantity;
            ProductData(i).AccQuantityIn:= ProductData(i).AccQuantityIn + ProductData(i+1).AccQuantityIn;
            ProductData(i).AccQuantityOut:= ProductData(i).AccQuantityOut + ProductData(i+1).AccQuantityOut;
            ProductData(i).Price:= ProductData(i+1).Price;
            ProductData(i).PriceIn:= ProductData(i).PriceIn + ProductData(i+1).PriceIn;
            ProductData(i).PriceOut:= ProductData(i).PriceOut + ProductData(i+1).PriceOut;
            ProductData(i).QuantityTowardsReserve:= ProductData(i+1).Quantity - ProductData(i).MinQuantity;
            ProductData(i).AccQuantityTowardsReserve:= ProductData(i+1).AccQuantity - ProductData(i).AccMinQuantity;
            ProductData(i).PriceTowardsReserve:= ProductData(i+1).Price - ProductData(i).MinPrice;
          end if;
            
          i:= i - 1;
        end loop;
        
      else
        for i in PlanFirstIndex..DateUnitCount loop
          ProductData(i).IsPlan:= true;
          ProductData(i).Quantity:= InitQuantity;
          ProductData(i).AccQuantity:= InitAccQuantity;
          ProductData(i).Price:= InitPrice;
          ProductData(i).QuantityIn:= 0;
          ProductData(i).QuantityOut:= 0;
          ProductData(i).AccQuantityIn:= 0;
          ProductData(i).AccQuantityOut:= 0;
          ProductData(i).PriceIn:= 0;
          ProductData(i).PriceOut:= 0;
          ProductData(i).QuantityTowardsReserve:= ProductData(i).Quantity - ProductData(i).MinQuantity;
          ProductData(i).AccQuantityTowardsReserve:= ProductData(i).AccQuantity - ProductData(i).AccMinQuantity;
          ProductData(i).PriceTowardsReserve:= ProductData(i).Price - ProductData(i).MinPrice;
          ProductData(i).ActiveQuantity:= 0;
          ProductData(i).AccActiveQuantity:= 0;
          ProductData(i).ActivePrice:= 0;
          ProductData(i).ActiveQuantityTowardsReserve:= 0;
          ProductData(i).AccActiveQuantityTowardsRsv:= 0;
          ProductData(i).ActivePriceTowardsReserve:= 0;
          ProductData(i).PassiveQuantity:= InitQuantity;
          ProductData(i).AccPassiveQuantity:= InitAccQuantity;
          ProductData(i).PassivePrice:= InitPrice;
        end loop;
          
      end if;

      -- fetch InitialStuff, ako sme gi obrabotili toku-shto      
      if (InitialQuantitiesIndex <= InitialQuantities.count) and (InitialQuantities(InitialQuantitiesIndex).ProductCode = CurrentProductCode) then
        InitialQuantitiesIndex:= InitialQuantitiesIndex + 1;
      end if;

      -- calc deficit
      ProductData(1).DeficitQuantity:= 0;
      ProductData(1).AccDeficitQuantity:= 0;
      ProductData(1).DeficitPrice:= 0;
      ProductData(1).DeficitQuantityTowardsReserve:= 0;
      ProductData(1).AccDeficitQuantityTowardsRsv:= 0;
      ProductData(1).DeficitPriceTowardsReserve:= 0;

      SumDeficitQuantity:= 0;
      SumAccDeficitQuantity:= 0;
      SumDeficitPrice:= 0;
      SumDeficitQuantityRsv:= 0;
      SumAccDeficitQuantityRsv:= 0;
      SumDeficitPriceRsv:= 0;

      for i in 2..DateUnitCount loop

        ProductData(i).DeficitQuantity:= Least(ProductData(i).Quantity - SumDeficitQuantity, 0);
        SumDeficitQuantity:= SumDeficitQuantity + ProductData(i).DeficitQuantity;

        ProductData(i).AccDeficitQuantity:= Least(ProductData(i).AccQuantity - SumAccDeficitQuantity, 0);
        SumAccDeficitQuantity:= SumAccDeficitQuantity + ProductData(i).AccDeficitQuantity;

        ProductData(i).DeficitPrice:= Least(ProductData(i).Price - SumDeficitPrice, 0);
        SumDeficitPrice:= SumDeficitPrice + ProductData(i).DeficitPrice;

        ProductData(i).DeficitQuantityTowardsReserve:= Least(ProductData(i).QuantityTowardsReserve - SumDeficitQuantityRsv, 0);
        SumDeficitQuantityRsv:= SumDeficitQuantityRsv + ProductData(i).DeficitQuantityTowardsReserve;

        ProductData(i).AccDeficitQuantityTowardsRsv:= Least(ProductData(i).AccQuantityTowardsReserve - SumAccDeficitQuantityRsv, 0);
        SumAccDeficitQuantityRsv:= SumAccDeficitQuantityRsv + ProductData(i).AccDeficitQuantityTowardsRsv;

        ProductData(i).DeficitPriceTowardsReserve:= Least(ProductData(i).PriceTowardsReserve - SumDeficitPriceRsv, 0);
        SumDeficitPriceRsv:= SumDeficitPriceRsv + ProductData(i).DeficitPriceTowardsReserve;

      end loop;

      if (AggregateFutureInLastDU = 1) then
        i:= DateUnitCount - 1;
        while (i >= PlanFirstIndex) and (ProductData(i).TheDate >= EndPeriodDate) loop
          ProductData(i).DeficitQuantity:= ProductData(i).DeficitQuantity + ProductData(i+1).DeficitQuantity;
          ProductData(i).AccDeficitQuantity:= ProductData(i).AccDeficitQuantity + ProductData(i+1).AccDeficitQuantity;
          ProductData(i).DeficitPrice:= ProductData(i).DeficitPrice + ProductData(i+1).DeficitPrice;
          ProductData(i).DeficitQuantityTowardsReserve:= ProductData(i).DeficitQuantityTowardsReserve + ProductData(i+1).DeficitQuantityTowardsReserve;
          ProductData(i).AccDeficitQuantityTowardsRsv:= ProductData(i).AccDeficitQuantityTowardsRsv + ProductData(i+1).AccDeficitQuantityTowardsRsv;
          ProductData(i).DeficitPriceTowardsReserve:= ProductData(i).DeficitPriceTowardsReserve + ProductData(i+1).DeficitPriceTowardsReserve;
              
          i:= i - 1;
        end loop;
      end if;
     
      -- ADD TO RESULTSET
      if (GroupByDateUnits = 1) then
        for i in 1..DateUnitCount loop
          AggregateProductData(i).Quantity:= AggregateProductData(i).Quantity + Greatest(ProductData(i).Quantity, 0);
          AggregateProductData(i).QuantityIn:= AggregateProductData(i).QuantityIn + ProductData(i).QuantityIn;
          AggregateProductData(i).QuantityOut:= AggregateProductData(i).QuantityOut + ProductData(i).QuantityOut;
          AggregateProductData(i).AccQuantity:= AggregateProductData(i).AccQuantity + Greatest(ProductData(i).AccQuantity, 0);
          AggregateProductData(i).AccQuantityIn:= AggregateProductData(i).AccQuantityIn + ProductData(i).AccQuantityIn;
          AggregateProductData(i).AccQuantityOut:= AggregateProductData(i).AccQuantityOut + ProductData(i).AccQuantityOut;
          AggregateProductData(i).Price:= AggregateProductData(i).Price + Greatest(ProductData(i).Price, 0);
          AggregateProductData(i).PriceIn:= AggregateProductData(i).PriceIn + ProductData(i).PriceIn;
          AggregateProductData(i).PriceOut:= AggregateProductData(i).PriceOut + ProductData(i).PriceOut;
          AggregateProductData(i).DeficitQuantity:= AggregateProductData(i).DeficitQuantity + ProductData(i).DeficitQuantity;
          AggregateProductData(i).AccDeficitQuantity:= AggregateProductData(i).AccDeficitQuantity + ProductData(i).AccDeficitQuantity;
          AggregateProductData(i).DeficitPrice:= AggregateProductData(i).DeficitPrice + ProductData(i).DeficitPrice;
          AggregateProductData(i).ActiveQuantity:= AggregateProductData(i).ActiveQuantity + ProductData(i).ActiveQuantity;
          AggregateProductData(i).AccActiveQuantity:= AggregateProductData(i).AccActiveQuantity + ProductData(i).AccActiveQuantity;
          AggregateProductData(i).ActivePrice:= AggregateProductData(i).ActivePrice + ProductData(i).ActivePrice;
          AggregateProductData(i).PassiveQuantity:= AggregateProductData(i).PassiveQuantity + ProductData(i).PassiveQuantity;
          AggregateProductData(i).AccPassiveQuantity:= AggregateProductData(i).AccPassiveQuantity + ProductData(i).AccPassiveQuantity;
          AggregateProductData(i).PassivePrice:= AggregateProductData(i).PassivePrice + ProductData(i).PassivePrice;
          AggregateProductData(i).QuantityTowardsReserve:= AggregateProductData(i).QuantityTowardsReserve + Greatest(ProductData(i).QuantityTowardsReserve, 0);
          AggregateProductData(i).AccQuantityTowardsReserve:= AggregateProductData(i).AccQuantityTowardsReserve + Greatest(ProductData(i).AccQuantityTowardsReserve, 0);
          AggregateProductData(i).PriceTowardsReserve:= AggregateProductData(i).PriceTowardsReserve + Greatest(ProductData(i).PriceTowardsReserve, 0);
          AggregateProductData(i).DeficitQuantityTowardsReserve:= AggregateProductData(i).DeficitQuantityTowardsReserve + ProductData(i).DeficitQuantityTowardsReserve;
          AggregateProductData(i).AccDeficitQuantityTowardsRsv:= AggregateProductData(i).AccDeficitQuantityTowardsRsv + ProductData(i).AccDeficitQuantityTowardsRsv;
          AggregateProductData(i).DeficitPriceTowardsReserve:= AggregateProductData(i).DeficitPriceTowardsReserve + ProductData(i).DeficitPriceTowardsReserve;
          AggregateProductData(i).ActiveQuantityTowardsReserve:= AggregateProductData(i).ActiveQuantityTowardsReserve + ProductData(i).ActiveQuantityTowardsReserve;
          AggregateProductData(i).AccActiveQuantityTowardsRsv:= AggregateProductData(i).AccActiveQuantityTowardsRsv + ProductData(i).AccActiveQuantityTowardsRsv;
          AggregateProductData(i).ActivePriceTowardsReserve:= AggregateProductData(i).ActivePriceTowardsReserve + ProductData(i).ActivePriceTowardsReserve;
          AggregateProductData(i).MinQuantity:= AggregateProductData(i).MinQuantity + ProductData(i).MinQuantity;
          AggregateProductData(i).AccMinQuantity:= AggregateProductData(i).AccMinQuantity + ProductData(i).AccMinQuantity;
          AggregateProductData(i).MinPrice:= AggregateProductData(i).MinPrice + ProductData(i).MinPrice;
          AggregateProductData(i).NegativeQuantity:= AggregateProductData(i).NegativeQuantity + Least(ProductData(i).Quantity, 0);
          AggregateProductData(i).AccNegativeQuantity:= AggregateProductData(i).AccNegativeQuantity + Least(ProductData(i).AccQuantity, 0);
          AggregateProductData(i).NegativePrice:= AggregateProductData(i).NegativePrice + Least(ProductData(i).Price, 0);
          AggregateProductData(i).NegativeQuantityTowardsReserve:= AggregateProductData(i).NegativeQuantityTowardsReserve + Least(ProductData(i).QuantityTowardsReserve, 0);
          AggregateProductData(i).AccNegativeQuantityTowardsRsv:= AggregateProductData(i).AccNegativeQuantityTowardsRsv + Least(ProductData(i).AccQuantityTowardsReserve, 0);
          AggregateProductData(i).NegativePriceTowardsReserve:= AggregateProductData(i).NegativePriceTowardsReserve + Least(ProductData(i).PriceTowardsReserve, 0);
        end loop;
      else
        n:= Data.count;
        Data.extend(DateUnitCount);
        for i in 1..DateUnitCount loop
          if ProductData(i).IsPlan and (ProductData(i).TheDate = CurrentPeriod) then
            IsTodaySecondRecord:= 1;
          else
            IsTodaySecondRecord:= 0;
          end if;
          
          if ProductData(i).IsPlan then
            IsPlanCoef:= 1;
            IsOtchCoef:= 0;
          else
            if (ProductData(i).TheDate = CurrentPeriod) then
              IsPlanCoef:= 1;
            else
              IsPlanCoef:= 0;
            end if;
            IsOtchCoef:= 1;
          end if;
  
          Data(n + i).PRODUCT_CODE:= CurrentProductCode;                                                                  --   ProductCode Number,
          Data(n + i).THE_DATE:= ProductData(i).TheDate;                                                                  --   TheDate Date,
          Data(n + i).IS_TODAY_SECOND_RECORD:= IsTodaySecondRecord;                                                       --   IsTodaySecondRecord Number,
                                                                                                                          -- 
          Data(n + i).REAL_QUANTITY:= IsOtchCoef * ProductData(i).Quantity;                                               --   OtchQuantity Number,
          Data(n + i).REAL_QUANTITY_IN:= IsOtchCoef * ProductData(i).QuantityIn;                                          --   OtchQuantityIn Number,
          Data(n + i).REAL_QUANTITY_OUT:= IsOtchCoef * ProductData(i).QuantityOut;                                        --   OtchQuantityOut Number,
                                                                                                                          --   
          Data(n + i).ACC_REAL_QUANTITY:= IsOtchCoef * ProductData(i).AccQuantity;                                        --   AOtchQuantity Number,
          Data(n + i).ACC_REAL_QUANTITY_IN:= IsOtchCoef * ProductData(i).AccQuantityIn;                                   --   AOtchQuantityIn Number,
          Data(n + i).ACC_REAL_QUANTITY_OUT:= IsOtchCoef * ProductData(i).AccQuantityOut;                                 --   AOtchQuantityOut Number,
                                                                                                                          --   
          Data(n + i).REAL_PRICE:= IsOtchCoef * ProductData(i).Price;                                                     --   OtchPrice Number,
          Data(n + i).REAL_PRICE_IN:= IsOtchCoef * ProductData(i).PriceIn;                                                --   OtchPriceIn Number,
          Data(n + i).REAL_PRICE_OUT:= IsOtchCoef * ProductData(i).PriceOut;                                              --   OtchPriceOut Number,
                                                                                                                          -- 
          Data(n + i).PLAN_QUANTITY:= Greatest(IsPlanCoef * ProductData(i).Quantity, 0);                                  --   PlanQuantity Number,
          Data(n + i).NEGATIVE_PLAN_QUANTITY:= Least(IsPlanCoef * ProductData(i).Quantity, 0);                            --   NegativePlanQuantity Number,
          Data(n + i).PLAN_QUANTITY_IN:= IsPlanCoef * ProductData(i).QuantityIn;                                          --   PlanQuantityIn Number,
          Data(n + i).PLAN_QUANTITY_OUT:= IsPlanCoef * ProductData(i).QuantityOut;                                        --   PlanQuantityOut Number,
                                                                                                                          --  
          Data(n + i).ACC_PLAN_QUANTITY:= Greatest(IsPlanCoef * ProductData(i).AccQuantity, 0);                           --   APlanQuantity Number,
          Data(n + i).ACC_NEGATIVE_PLAN_QUANTITY:= Least(IsPlanCoef * ProductData(i).AccQuantity, 0);                     --   ANegativePlanQuantity Number,
          Data(n + i).ACC_PLAN_QUANTITY_IN:= IsPlanCoef * ProductData(i).AccQuantityIn;                                   --   APlanQuantityIn Number,
          Data(n + i).ACC_PLAN_QUANTITY_OUT:= IsPlanCoef * ProductData(i).AccQuantityOut;                                 --   APlanQuantityOut Number,
                                                                                                                          --   
          Data(n + i).PLAN_PRICE:= Greatest(IsPlanCoef * ProductData(i).Price, 0);                                        --   PlanPrice Number,
          Data(n + i).NEGATIVE_PLAN_PRICE:= Least(IsPlanCoef * ProductData(i).Price, 0);                                  --   NegativePlanPrice Number,
          Data(n + i).PLAN_PRICE_IN:= IsPlanCoef * ProductData(i).PriceIn;                                                --   PlanPriceIn Number,
          Data(n + i).PLAN_PRICE_OUT:= IsPlanCoef * ProductData(i).PriceOut;                                              --   PlanPriceOut Number,
                                                                                                                          --   
          Data(n + i).ACTIVE_QUANTITY:= IsPlanCoef * ProductData(i).ActiveQuantity;                                       --   ActiveQuantity Number,
          Data(n + i).ACC_ACTIVE_QUANTITY:= IsPlanCoef * ProductData(i).AccActiveQuantity;                                --   AActiveQuantity Number,
          Data(n + i).ACTIVE_PRICE:= IsPlanCoef * ProductData(i).ActivePrice;                                             --   ActivePrice Number,
                                                                                                                          --   
          Data(n + i).PASSIVE_QUANTITY:= NullIf(IsPlanCoef, 0) * ProductData(i).PassiveQuantity;                          --   PassiveQuantity Number,
          Data(n + i).ACC_PASSIVE_QUANTITY:= NullIf(IsPlanCoef, 0) * ProductData(i).AccPassiveQuantity;                   --   APassiveQuantity Number,
          Data(n + i).PASSIVE_PRICE:= NullIf(IsPlanCoef, 0) * ProductData(i).PassivePrice;                                --   PassivePrice Number,
                                                                                                                          --   
          Data(n + i).DEFICIT_QUANTITY:= IsPlanCoef * ProductData(i).DeficitQuantity;                                     --   DeficitQuantity Number,
          Data(n + i).ACC_DEFICIT_QUANTITY:= IsPlanCoef * ProductData(i).AccDeficitQuantity;                              --   ADeficitQuantity Number,
          Data(n + i).DEFICIT_PRICE:= IsPlanCoef * ProductData(i).DeficitPrice;                                           --   DeficitPrice Number,
                                                                                                                          -- 
          Data(n + i).REAL_QUANTITY_RSV:= Greatest(IsOtchCoef * ProductData(i).QuantityTowardsReserve, 0);                --   OtchQuantityTowardsReserve Number,
          Data(n + i).NEGATIVE_REAL_QUANTITY_RSV:= Least(IsOtchCoef * ProductData(i).QuantityTowardsReserve, 0);          --   NegativeOtchQuantityTowardsReserve Number,
          Data(n + i).ACC_REAL_QUANTITY_RSV:= Greatest(IsOtchCoef * ProductData(i).AccQuantityTowardsReserve, 0);         --   AOtchQuantityTowardsReserve Number,
          Data(n + i).ACC_NEGATIVE_REAL_QUANTITY_RSV:= Least(IsOtchCoef * ProductData(i).AccQuantityTowardsReserve, 0);   --   ANegativeOtchQuantityTowardsReserve Number,
          Data(n + i).REAL_PRICE_RSV:= Greatest(IsOtchCoef * ProductData(i).PriceTowardsReserve, 0);                      --   OtchPriceTowardsReserve Number,
          Data(n + i).NEGATIVE_REAL_PRICE_RSV:= Least(IsOtchCoef * ProductData(i).PriceTowardsReserve, 0);                --   NegativeOtchPriceTowardsReserve Number,
                                                                                                                          --   
          Data(n + i).PLAN_QUANTITY_RSV:= Greatest(IsPlanCoef * ProductData(i).QuantityTowardsReserve, 0);                --   PlanQuantityTowardsReserve Number,
          Data(n + i).NEGATIVE_PLAN_QUANTITY_RSV:= Least(IsPlanCoef * ProductData(i).QuantityTowardsReserve, 0);          --   NegativePlanQuantityTowardsReserve Number,
          Data(n + i).ACC_PLAN_QUANTITY_RSV:= Greatest(IsPlanCoef * ProductData(i).AccQuantityTowardsReserve, 0);         --   APlanQuantityTowardsReserve Number,
          Data(n + i).ACC_NEGATIVE_PLAN_QUANTITY_RSV:= Least(IsPlanCoef * ProductData(i).AccQuantityTowardsReserve, 0);   --   ANegativePlanQuantityTowardsReserve Number,
          Data(n + i).PLAN_PRICE_RSV:= Greatest(IsPlanCoef * ProductData(i).PriceTowardsReserve, 0);                      --   PlanPriceTowardsReserve Number,
          Data(n + i).NEGATIVE_PLAN_PRICE_RSV:= Least(IsPlanCoef * ProductData(i).PriceTowardsReserve, 0);                --   NegativePlanPriceTowardsReserve Number,
                                                                                                                          --   
          Data(n + i).ACTIVE_QUANTITY_RSV:= IsPlanCoef * ProductData(i).ActiveQuantityTowardsReserve;                     --   ActiveQuantityTowardsReserve Number,
          Data(n + i).ACC_ACTIVE_QUANTITY_RSV:= IsPlanCoef * ProductData(i).AccActiveQuantityTowardsRsv;                  --   AActiveQuantityTowardsReserve Number,
          Data(n + i).ACTIVE_PRICE_RSV:= IsPlanCoef * ProductData(i).ActivePriceTowardsReserve;                           --   ActivePriceTowardsReserve Number,
                                                                                                                          --   
          Data(n + i).DEFICIT_QUANTITY_RSV:= IsPlanCoef * ProductData(i).DeficitQuantityTowardsReserve;                   --   DeficitQuantityTowardsReserve Number,
          Data(n + i).ACC_DEFICIT_QUANTITY_RSV:= IsPlanCoef * ProductData(i).AccDeficitQuantityTowardsRsv;                --   ADeficitQuantityTowardsReserve Number,
          Data(n + i).DEFICIT_PRICE_RSV:= IsPlanCoef * ProductData(i).DeficitPriceTowardsReserve;                         --   DeficitPriceTowardsReserve Number,
           
          Data(n + i).MIN_QUANTITY:= ProductData(i).MinQuantity;                                                          --   MinQuantity Number,
          Data(n + i).ACC_MIN_QUANTITY:= ProductData(i).AccMinQuantity;                                                   --   AMinQuantity Number,
          Data(n + i).MIN_PRICE:= ProductData(i).MinPrice;                                                                --   MinPrice Number
        end loop;
        
      end if;
      
    end loop;
    -- MAIN LOOP END
    
    if (GroupByDateUnits = 1) then
      Data.extend(DateUnitCount);
      
      for i in 1..DateUnitCount loop

        if AggregateProductData(i).IsPlan and (AggregateProductData(i).TheDate = CurrentPeriod) then
          IsTodaySecondRecord:= 1;
        else
          IsTodaySecondRecord:= 0;
        end if;
      
        if AggregateProductData(i).IsPlan then
          IsPlanCoef:= 1;
          IsOtchCoef:= 0;
        else
          if (AggregateProductData(i).TheDate = CurrentPeriod) then
            IsPlanCoef:= 1;
          else
            IsPlanCoef:= 0;
          end if;
          IsOtchCoef:= 1;
        end if;
       
        Data(i).PRODUCT_CODE:= 0;                                                                                    --   ProductCode Number,
        Data(i).THE_DATE:= AggregateProductData(i).TheDate;                                                          --   TheDate Date,
        Data(i).IS_TODAY_SECOND_RECORD:= IsTodaySecondRecord;                                                        --   IsTodaySecondRecord Number,
                                                                                                                     -- 
        Data(i).REAL_QUANTITY:= IsOtchCoef * AggregateProductData(i).Quantity;                                       --   OtchQuantity Number,
        Data(i).REAL_QUANTITY_IN:= IsOtchCoef * AggregateProductData(i).QuantityIn;                                  --   OtchQuantityIn Number,
        Data(i).REAL_QUANTITY_OUT:= IsOtchCoef * AggregateProductData(i).QuantityOut;                                --   OtchQuantityOut Number,
                                                                                                                     --   
        Data(i).ACC_REAL_QUANTITY:= IsOtchCoef * AggregateProductData(i).AccQuantity;                                --   AOtchQuantity Number,
        Data(i).ACC_REAL_QUANTITY_IN:= IsOtchCoef * AggregateProductData(i).AccQuantityIn;                           --   AOtchQuantityIn Number,
        Data(i).ACC_REAL_QUANTITY_OUT:= IsOtchCoef * AggregateProductData(i).AccQuantityOut;                         --   AOtchQuantityOut Number,
                                                                                                                     --   
        Data(i).REAL_PRICE:= IsOtchCoef * AggregateProductData(i).Price;                                             --   OtchPrice Number,
        Data(i).REAL_PRICE_IN:= IsOtchCoef * AggregateProductData(i).PriceIn;                                        --   OtchPriceIn Number,
        Data(i).REAL_PRICE_OUT:= IsOtchCoef * AggregateProductData(i).PriceOut;                                      --   OtchPriceOut Number,
                                                                                                                     -- 
        Data(i).PLAN_QUANTITY:= IsPlanCoef * AggregateProductData(i).Quantity;                                       --   PlanQuantity Number,
        Data(i).NEGATIVE_PLAN_QUANTITY:= IsPlanCoef * AggregateProductData(i).NegativeQuantity;                      --   NegativePlanQuantity Number,
        Data(i).PLAN_QUANTITY_IN:= IsPlanCoef * AggregateProductData(i).QuantityIn;                                  --   PlanQuantityIn Number,
        Data(i).PLAN_QUANTITY_OUT:= IsPlanCoef * AggregateProductData(i).QuantityOut;                                --   PlanQuantityOut Number,
                                                                                                                     --   
        Data(i).ACC_PLAN_QUANTITY:= IsPlanCoef * AggregateProductData(i).AccQuantity;                                --   APlanQuantity Number,
        Data(i).ACC_NEGATIVE_PLAN_QUANTITY:= IsPlanCoef * AggregateProductData(i).AccNegativeQuantity;               --   ANegativePlanQuantity Number,
        Data(i).ACC_PLAN_QUANTITY_IN:= IsPlanCoef * AggregateProductData(i).AccQuantityIn;                           --   APlanQuantityIn Number,
        Data(i).ACC_PLAN_QUANTITY_OUT:= IsPlanCoef * AggregateProductData(i).AccQuantityOut;                         --   APlanQuantityOut Number,
                                                                                                                     --   
        Data(i).PLAN_PRICE:= IsPlanCoef * AggregateProductData(i).Price;                                             --   PlanPrice Number,
        Data(i).NEGATIVE_PLAN_PRICE:= IsPlanCoef * AggregateProductData(i).NegativePrice;                            --   NegativePlanPrice Number,
        Data(i).PLAN_PRICE_IN:= IsPlanCoef * AggregateProductData(i).PriceIn;                                        --   PlanPriceIn Number,
        Data(i).PLAN_PRICE_OUT:=IsPlanCoef * AggregateProductData(i).PriceOut;                                       --   PlanPriceOut Number,
                                                                                                                     --   
        Data(i).ACTIVE_QUANTITY:= IsPlanCoef * AggregateProductData(i).ActiveQuantity;                               --   ActiveQuantity Number,
        Data(i).ACC_ACTIVE_QUANTITY:= IsPlanCoef * AggregateProductData(i).AccActiveQuantity;                        --   AActiveQuantity Number,
        Data(i).ACTIVE_PRICE:= IsPlanCoef * AggregateProductData(i).ActivePrice;                                     --   ActivePrice Number,
                                                                                                                     --   
        Data(i).PASSIVE_QUANTITY:= NullIf(IsPlanCoef, 0) * AggregateProductData(i).PassiveQuantity;                  --   PassiveQuantity Number,
        Data(i).ACC_PASSIVE_QUANTITY:= NullIf(IsPlanCoef, 0) * AggregateProductData(i).AccPassiveQuantity;           --   APassiveQuantity Number,
        Data(i).PASSIVE_PRICE:= NullIf(IsPlanCoef, 0) * AggregateProductData(i).PassivePrice;                        --   PassivePrice Number,

        Data(i).DEFICIT_QUANTITY:= IsPlanCoef * AggregateProductData(i).DeficitQuantity;                             --   DeficitQuantity Number,
        Data(i).ACC_DEFICIT_QUANTITY:= IsPlanCoef * AggregateProductData(i).AccDeficitQuantity;                      --   ADeficitQuantity Number,
        Data(i).DEFICIT_PRICE:= IsPlanCoef * AggregateProductData(i).DeficitPrice;                                   --   DeficitPrice Number,
                                                                                                                     -- 
        Data(i).REAL_QUANTITY_RSV:= IsOtchCoef * AggregateProductData(i).QuantityTowardsReserve;                     --   OtchQuantityTowardsReserve Number,
        Data(i).NEGATIVE_REAL_QUANTITY_RSV:= IsOtchCoef * AggregateProductData(i).NegativeQuantityTowardsReserve;    --   NegativeOtchQuantityTowardsReserve Number,
        Data(i).ACC_REAL_QUANTITY_RSV:= IsOtchCoef * AggregateProductData(i).AccQuantityTowardsReserve;              --   AOtchQuantityTowardsReserve Number,
        Data(i).ACC_NEGATIVE_REAL_QUANTITY_RSV:= IsOtchCoef * AggregateProductData(i).AccNegativeQuantityTowardsRsv; --   ANegativeOtchQuantityTowardsReserve Number,
        Data(i).REAL_PRICE_RSV:= IsOtchCoef * AggregateProductData(i).PriceTowardsReserve;                           --   OtchPriceTowardsReserve Number,
        Data(i).NEGATIVE_REAL_PRICE_RSV:= IsOtchCoef * AggregateProductData(i).NegativePriceTowardsReserve;          --   NegativeOtchPriceTowardsReserve Number,
                                                                                                                     --   
        Data(i).PLAN_QUANTITY_RSV:= IsPlanCoef * AggregateProductData(i).QuantityTowardsReserve;                     --   PlanQuantityTowardsReserve Number,
        Data(i).NEGATIVE_PLAN_QUANTITY_RSV:= IsPlanCoef * AggregateProductData(i).NegativeQuantityTowardsReserve;    --   NegativePlanQuantityTowardsReserve Number,
        Data(i).ACC_PLAN_QUANTITY_RSV:= IsPlanCoef * AggregateProductData(i).AccQuantityTowardsReserve;              --   APlanQuantityTowardsReserve Number,
        Data(i).ACC_NEGATIVE_PLAN_QUANTITY_RSV:= IsPlanCoef * AggregateProductData(i).AccNegativeQuantityTowardsRsv; --   ANegativePlanQuantityTowardsReserve Number,
        Data(i).PLAN_PRICE_RSV:= IsPlanCoef * AggregateProductData(i).PriceTowardsReserve;                           --   PlanPriceTowardsReserve Number,
        Data(i).NEGATIVE_PLAN_PRICE_RSV:= IsPlanCoef * AggregateProductData(i).NegativePriceTowardsReserve;          --   NegativePlanPriceTowardsReserve Number,
                                                                                                                     --   
        Data(i).ACTIVE_QUANTITY_RSV:= IsPlanCoef * AggregateProductData(i).ActiveQuantityTowardsReserve;             --   ActiveQuantityTowardsReserve Number,
        Data(i).ACC_ACTIVE_QUANTITY_RSV:= IsPlanCoef * AggregateProductData(i).AccActiveQuantityTowardsRsv;          --   AActiveQuantityTowardsReserve Number,
        Data(i).ACTIVE_PRICE_RSV:= IsPlanCoef * AggregateProductData(i).ActivePriceTowardsReserve;                   --   ActivePriceTowardsReserve Number,
                                                                                                                     --   
        Data(i).DEFICIT_QUANTITY_RSV:= IsPlanCoef * AggregateProductData(i).DeficitQuantityTowardsReserve;           --   DeficitQuantityTowardsReserve Number,
        Data(i).ACC_DEFICIT_QUANTITY_RSV:= IsPlanCoef * AggregateProductData(i).AccDeficitQuantityTowardsRsv;        --   ADeficitQuantityTowardsReserve Number,
        Data(i).DEFICIT_PRICE_RSV:= IsPlanCoef * AggregateProductData(i).DeficitPriceTowardsReserve;                 --   DeficitPriceTowardsReserve Number,
                                                                                
        Data(i).MIN_QUANTITY:= AggregateProductData(i).MinQuantity;                                                  --   MinQuantity Number,
        Data(i).ACC_MIN_QUANTITY:= AggregateProductData(i).AccMinQuantity;                                           --   AMinQuantity Number,
        Data(i).MIN_PRICE:= AggregateProductData(i).MinPrice;                                                        --   MinPrice Number
      end loop;
    end if;

    return Data;
  end;
  
  procedure PrepareProductHistory(
    TheStartPeriodDate Date, 
    TheEndPeriodDate Date,
    DateUnitCode Number,
    MaxPlannedStoreDealTypeCode Number,
    AggregateFutureInLastDU Number,
    GroupByDateUnits Number) as
    
    ProductHistory TProductDateUnitsTable:= TProductDateUnitsTable();
    ProductHistoryCount Number;
    i Number;
  begin
    UnprepareProductHistory;
  
    ProductHistory:= 
      GetProductHistoryByDateUnits(
        TheStartPeriodDate, 
        TheEndPeriodDate, 
        DateUnitCode, 
        MaxPlannedStoreDealTypeCode, 
        AggregateFutureInLastDU,
        GroupByDateUnits);  
        
    ProductHistoryCount:= ProductHistory.count;
    forall i in 1..ProductHistoryCount
      insert into
        TEMP_PRODUCT_HISTORY
      values
        ProductHistory(i);
  end;     
  
  procedure UnprepareProductHistory is
  begin
    execute immediate 'truncate table TEMP_PRODUCT_HISTORY';
  end;         
  
  procedure DoAggrStoreDeal(
    AProductCode     in Number,
    AStoreCode       in Number,
    AStoreDealDate   in Date,
    AInOut           in Number,
    AQuantity        in Number,
    AAccountQuantity in Number,
    ATotalPrice      in Number,
    ACurrencyRate    in Number,
    ADealType        in Number
  ) as
    chkNoInOut constant Varchar2(30 char) := 'CHKASD__IN_OUT_QUANTITY';
    
    ECheckViolation Exception;
    Pragma EXCEPTION_INIT (ECheckViolation, -2290);
    
    lUpdateRowCount Number;
    
    lQuantity        Number;
    lAccountQuantity Number;
    lTotalPrice      Number;
    
    lRealQuantity        Number := 0;
    lRealAccountQuantity Number := 0;
    lRealTotalPrice      Number := 0;
    lPlannedQuantity     Number := 0;
    lProjectedQuantity   Number := 0;
  begin
    lQuantity        := MiscUtils.LargeZero(AQuantity);
    lAccountQuantity := MiscUtils.LargeZero(AAccountQuantity);
    lTotalPrice      := MiscUtils.LargeZero(ATotalPrice);
    
    if (lQuantity <> 0) then
      if (ADealType = StoreConsts.psdtPlan) then
        update
          AGGR_STORE_DEALS asd
        set
          asd.PLANNED_QUANTITY = MiscUtils.LargeZero(asd.PLANNED_QUANTITY + AInOut*lQuantity)
        where
          (asd.PRODUCT_CODE = AProductCode) and
          (asd.STORE_CODE = AStoreCode) and
          (asd.STORE_DEAL_DATE >= AStoreDealDate);
        
      elsif (ADealType = StoreConsts.psdtProject) then
        update
          AGGR_STORE_DEALS asd
        set
          asd.PROJECTED_QUANTITY = MiscUtils.LargeZero(asd.PROJECTED_QUANTITY + AInOut*lQuantity)
        where
          (asd.PRODUCT_CODE = AProductCode) and
          (asd.STORE_CODE = AStoreCode) and
          (asd.STORE_DEAL_DATE >= AStoreDealDate);
        
      else
        update
          AGGR_STORE_DEALS asd
        set
          asd.REAL_QUANTITY         =        MiscUtils.LargeZero(asd.REAL_QUANTITY + AInOut*lQuantity),
          asd.REAL_ACCOUNT_QUANTITY = Decode(MiscUtils.LargeZero(asd.REAL_QUANTITY + AInOut*lQuantity), 0, 0, MiscUtils.LargeZero(asd.REAL_ACCOUNT_QUANTITY + AInOut*lAccountQuantity)),
          asd.REAL_TOTAL_PRICE      = Decode(MiscUtils.LargeZero(asd.REAL_QUANTITY + AInOut*lQuantity), 0, 0, MiscUtils.LargeZero(asd.REAL_TOTAL_PRICE + AInOut*lTotalPrice*ACurrencyRate))
        where
          (asd.PRODUCT_CODE = AProductCode) and
          (asd.STORE_CODE = AStoreCode) and
          (asd.STORE_DEAL_DATE >= AStoreDealDate);
      end if;
      
      begin
        if (ADealType = StoreConsts.psdtPlan) then
          
          if (AInOut = 1) then
            update
              AGGR_STORE_DEALS asd
            set
              asd.PLANNED_IN_QUANTITY = NullIf(MiscUtils.LargeZero(Coalesce(asd.PLANNED_IN_QUANTITY, 0) + lQuantity), 0)
            where
              (asd.PRODUCT_CODE = AProductCode) and
              (asd.STORE_CODE = AStoreCode) and
              (asd.STORE_DEAL_DATE = AStoreDealDate);
          else
            update
              AGGR_STORE_DEALS asd
            set
              asd.PLANNED_OUT_QUANTITY = NullIf(MiscUtils.LargeZero(Coalesce(asd.PLANNED_OUT_QUANTITY, 0) + lQuantity), 0)
            where
              (asd.PRODUCT_CODE = AProductCode) and
              (asd.STORE_CODE = AStoreCode) and
              (asd.STORE_DEAL_DATE = AStoreDealDate);
          end if;
          
        elsif (ADealType = StoreConsts.psdtProject) then
          
          if (AInOut = 1) then
            update
              AGGR_STORE_DEALS asd
            set
              asd.PROJECTED_IN_QUANTITY = NullIf(MiscUtils.LargeZero(Coalesce(asd.PROJECTED_IN_QUANTITY, 0) + lQuantity), 0)
            where
              (asd.PRODUCT_CODE = AProductCode) and
              (asd.STORE_CODE = AStoreCode) and
              (asd.STORE_DEAL_DATE = AStoreDealDate);
          else
            update
              AGGR_STORE_DEALS asd
            set
              asd.PROJECTED_OUT_QUANTITY = NullIf(MiscUtils.LargeZero(Coalesce(asd.PROJECTED_OUT_QUANTITY, 0) + lQuantity), 0)
            where
              (asd.PRODUCT_CODE = AProductCode) and
              (asd.STORE_CODE = AStoreCode) and
              (asd.STORE_DEAL_DATE = AStoreDealDate);
          end if;
          
        else
          
          if (AInOut = 1) then
            update
              AGGR_STORE_DEALS asd
            set
              asd.REAL_IN_QUANTITY         = NullIf(MiscUtils.LargeZero(Coalesce(asd.REAL_IN_QUANTITY, 0) + lQuantity), 0),
              asd.REAL_IN_ACCOUNT_QUANTITY = Decode(MiscUtils.LargeZero(Coalesce(asd.REAL_IN_QUANTITY, 0) + lQuantity), 0, null, MiscUtils.LargeZero(Coalesce(asd.REAL_IN_ACCOUNT_QUANTITY, 0) + lAccountQuantity)),
              asd.REAL_IN_TOTAL_PRICE      = Decode(MiscUtils.LargeZero(Coalesce(asd.REAL_IN_QUANTITY, 0) + lQuantity), 0, null, MiscUtils.LargeZero(Coalesce(asd.REAL_IN_TOTAL_PRICE, 0) + lTotalPrice*ACurrencyRate))
            where
              (asd.PRODUCT_CODE = AProductCode) and
              (asd.STORE_CODE = AStoreCode) and
              (asd.STORE_DEAL_DATE = AStoreDealDate);
          else
            update
              AGGR_STORE_DEALS asd
            set
              asd.REAL_OUT_QUANTITY         = NullIf(MiscUtils.LargeZero(Coalesce(asd.REAL_OUT_QUANTITY, 0) + lQuantity), 0),
              asd.REAL_OUT_ACCOUNT_QUANTITY = Decode(MiscUtils.LargeZero(Coalesce(asd.REAL_OUT_QUANTITY, 0) + lQuantity), 0, null, MiscUtils.LargeZero(Coalesce(asd.REAL_OUT_ACCOUNT_QUANTITY, 0) + lAccountQuantity)),
              asd.REAL_OUT_TOTAL_PRICE      = Decode(MiscUtils.LargeZero(Coalesce(asd.REAL_OUT_QUANTITY, 0) + lQuantity), 0, null, MiscUtils.LargeZero(Coalesce(asd.REAL_OUT_TOTAL_PRICE, 0) + lTotalPrice*ACurrencyRate))
            where
              (asd.PRODUCT_CODE = AProductCode) and
              (asd.STORE_CODE = AStoreCode) and
              (asd.STORE_DEAL_DATE = AStoreDealDate);
          end if;
          
        end if;
        
        lUpdateRowCount := SQL%ROWCOUNT;
        
      exception
        when ECheckViolation then
          if (instr(sqlerrm, chkNoInOut) > 0) then
            delete
              AGGR_STORE_DEALS asd
            where
              (asd.PRODUCT_CODE = AProductCode) and
              (asd.STORE_CODE = AStoreCode) and
              (asd.STORE_DEAL_DATE = AStoreDealDate);
          else
            raise;
          end if;
      end;
      
      if (lUpdateRowCount = 0) then
        begin
          select
            asd.REAL_QUANTITY,
            asd.REAL_ACCOUNT_QUANTITY,
            asd.REAL_TOTAL_PRICE,
            asd.PLANNED_QUANTITY,
            asd.PROJECTED_QUANTITY
          into
            lRealQuantity,
            lRealAccountQuantity,
            lRealTotalPrice,
            lPlannedQuantity,
            lProjectedQuantity
          from
            AGGR_STORE_DEALS asd
          where
            (asd.PRODUCT_CODE = AProductCode) and
            (asd.STORE_CODE = AStoreCode) and
            
            -- taka e po-barzo ot keep (dense_rank last order by asd.STORE_DEAL_DATE)
            (asd.STORE_DEAL_DATE = 
              ( select
                  Max(asdi.STORE_DEAL_DATE)
                from
                  AGGR_STORE_DEALS asdi
                where
                  (asdi.PRODUCT_CODE = AProductCode) and
                  (asdi.STORE_CODE = AStoreCode) and
                  (asdi.STORE_DEAL_DATE < AStoreDealDate)
              )
            );
        exception
          when no_data_found then
            Null;
        end;
        
        insert into
          AGGR_STORE_DEALS asd
        (
          asd.PRODUCT_CODE,
          asd.STORE_CODE,
          asd.STORE_DEAL_DATE,
          
          asd.REAL_QUANTITY,
          asd.REAL_ACCOUNT_QUANTITY,
          asd.REAL_TOTAL_PRICE,
          asd.REAL_IN_QUANTITY,
          asd.REAL_IN_ACCOUNT_QUANTITY,
          asd.REAL_IN_TOTAL_PRICE,
          asd.REAL_OUT_QUANTITY,
          asd.REAL_OUT_ACCOUNT_QUANTITY,
          asd.REAL_OUT_TOTAL_PRICE,
          
          asd.PLANNED_QUANTITY,
          asd.PLANNED_IN_QUANTITY,
          asd.PLANNED_OUT_QUANTITY,
          
          asd.PROJECTED_QUANTITY,
          asd.PROJECTED_IN_QUANTITY,
          asd.PROJECTED_OUT_QUANTITY
        )
        values
        (
          AProductCode,
          AStoreCode,
          AStoreDealDate,
          
          Decode(ADealType, null,        MiscUtils.LargeZero(lRealQuantity + AInOut*lQuantity),                                                                                 lRealQuantity),
          Decode(ADealType, null, Decode(MiscUtils.LargeZero(lRealQuantity + AInOut*lQuantity), 0, 0, MiscUtils.LargeZero(lRealAccountQuantity + AInOut*lAccountQuantity)),     lRealAccountQuantity),
          Decode(ADealType, null, Decode(MiscUtils.LargeZero(lRealQuantity + AInOut*lQuantity), 0, 0, MiscUtils.LargeZero(lRealTotalPrice + AInOut*lTotalPrice*ACurrencyRate)), lRealTotalPrice),
          Decode(ADealType, null, Decode(AInOut, 1, lQuantity)),
          Decode(ADealType, null, Decode(AInOut, 1, lAccountQuantity)),
          Decode(ADealType, null, Decode(AInOut, 1, lTotalPrice*ACurrencyRate)),
          Decode(ADealType, null, Decode(AInOut, -1, lQuantity)),
          Decode(ADealType, null, Decode(AInOut, -1, lAccountQuantity)),
          Decode(ADealType, null, Decode(AInOut, -1, lTotalPrice*ACurrencyRate)),
          
          Decode(ADealType, StoreConsts.psdtPlan, MiscUtils.LargeZero(lPlannedQuantity + AInOut*lQuantity), lPlannedQuantity),
          Decode(ADealType, StoreConsts.psdtPlan, Decode(AInOut, 1, lQuantity)),
          Decode(ADealType, StoreConsts.psdtPlan, Decode(AInOut, -1, lQuantity)),
          
          Decode(ADealType, StoreConsts.psdtProject, MiscUtils.LargeZero(lProjectedQuantity + AInOut*lQuantity), lProjectedQuantity),
          Decode(ADealType, StoreConsts.psdtProject, Decode(AInOut, 1, lQuantity)),
          Decode(ADealType, StoreConsts.psdtProject, Decode(AInOut, -1, lQuantity))
        );
      end if;
      
    end if;
  end;
  
  procedure LockASD(
    AProductCode in Number,
    AStoreCode   in Number
  ) as
  begin
    insert into AGGR_STORE_DEALS_LOCKS (
      PRODUCT_CODE,
      STORE_CODE
    )
    values (
      AProductCode,
      AStoreCode
    );
  end;
  
  procedure UnlockASD(
    AProductCode in Number,
    AStoreCode   in Number
  ) as
  begin
    delete
      AGGR_STORE_DEALS_LOCKS asdl
    where
      (asdl.PRODUCT_CODE = AProductCode) and
      (asdl.STORE_CODE = AStoreCode);
  end;
  
  procedure DistributePlannedStoreDeal(
    AProductCode       in Number,
    AStoreCode         in Number,
    AInOut             in Number,
    AAddRemove         in Number,
    ABeginDate         in Date,
    AEndDate           in Date,
    AQuantity          in Number,
    ARemainingQuantity in Number,
    ADealType          in Number
  ) as
    lDaysTotal  Number(10);
    lDaysPassed Number(10);
    lDaysLeft   Number(10);
    
    lIndex Number(10);
    
    lDailyQuantity Number;
  begin
    LockASD(AProductCode, AStoreCode);
    
    begin
      lDaysTotal := Round(AEndDate - ABeginDate + 1);
      
      lDailyQuantity := AQuantity / lDaysTotal;
      
      lDaysLeft := Trunc(ARemainingQuantity/lDailyQuantity + 1-CommonConsts.Eps);
      lDaysPassed := lDaysTotal - lDaysLeft;
      
      if (ARemainingQuantity < lDaysLeft*lDailyQuantity) then
        DoAggrStoreDeal(
          AProductCode,
          AStoreCode,
          ABeginDate + lDaysPassed,
          AInOut,
          AAddRemove * (ARemainingQuantity - (lDaysLeft - 1)*lDailyQuantity),
          null,
          null,
          null,
          ADealType
        );
        
        lDaysPassed := lDaysPassed + 1;
        lDaysLeft := lDaysLeft - 1;
      end if;
      
      for lIndex in 0 .. lDaysLeft-1 loop
        DoAggrStoreDeal(
          AProductCode,
          AStoreCode,
          ABeginDate + lDaysPassed + lIndex,
          AInOut,
          AAddRemove * lDailyQuantity,
          null,
          null,
          null,
          ADealType
        );
      end loop;
    
    exception
      when others then
        begin
          UnlockASD(AProductCode, AStoreCode);
          raise;
        end;
    end;
    
    UnlockASD(AProductCode, AStoreCode);
  end;
  
  procedure ReCalcStoreDeals(
    ProductCode in Number,
    StoreCode in Number,
    StoreDealDate in Date
  ) as
    AccumQuantity Number;
    AccumAccQuantity Number;
    AccumTotalPrice  Number;
    
    NewTotalPrice Number;
    NewAccQuantity Number;
    
    ProductNo Number;
  begin
    AccumQuantity:= 0;
    AccumAccQuantity:= 0;
    AccumTotalPrice:= 0;
    
    for crNextDeals in
      ( select
          sd.STORE_DEAL_OBJECT_BRANCH_CODE,
          sd.STORE_DEAL_OBJECT_CODE,

          ( ( select
                (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)
              from
                DEPTS d,
                DEPT_TYPES dt
              where
                (d.DEPT_CODE = sd.STORE_CODE) and
                (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))
            ) || '/' ||
            ( select
                std.STORE_DEAL_TYPE_ABBREV
              from
                STORE_DEAL_TYPES std
              where
                (std.STORE_DEAL_TYPE_CODE = sd.STORE_DEAL_TYPE_CODE)
            ) || '/' ||
            sd.STORE_DEAL_DATE || '/' ||
            sd.STORE_DEAL_NO
          ) as STORE_DEAL_ID,
          
          sd.STORE_DEAL_DATE,
          sd.IN_OUT,
          ( sd.TOTAL_PRICE * 
            ( select
                cr.FIXING
              from
                CURRENCY_RATES cr
              where
                (cr.RATE_DATE = sd.STORE_DEAL_DATE) and
                (cr.CURRENCY_CODE = sd.CURRENCY_CODE)
            )
          ) as TOTAL_PRICE,
          sd.QUANTITY,
          sd.ACCOUNT_QUANTITY
          
        from
          STORE_DEALS sd
          
        where
          (sd.STORE_CODE = StoreCode) and
          (sd.PRODUCT_CODE = ProductCode) and
          (sd.STORNO_EMPLOYEE_CODE is null)
          
        order by
          sd.STORE_DEAL_DATE,
          sd.IN_OUT desc,
          sd.STORE_DEAL_NO
          
        for update of
          sd.ACCOUNT_QUANTITY
      ) loop
      
      if (crNextDeals.IN_OUT = 1) then
      
        AccumQuantity:= MiscUtils.LargeZero(AccumQuantity + crNextDeals.QUANTITY);
  
        if (AccumQuantity = 0) then
          AccumAccQuantity:= 0;
          AccumTotalPrice:= 0;
        else
          AccumAccQuantity:= MiscUtils.LargeZero(AccumAccQuantity + crNextDeals.ACCOUNT_QUANTITY);
          AccumTotalPrice:= MiscUtils.LargeZero(AccumTotalPrice + crNextDeals.TOTAL_PRICE);
        end if;
        
      else
      
        if (AccumQuantity <= 0) then
        
          select
            p.CUSTOM_CODE
          into
            ProductNo
          from
            PRODUCTS p
          where
            (p.PRODUCT_CODE = ProductCode);  
        
          raise_application_error(-20002,  
            ServerMessages.SNegativePresenceId || '(' ||
            'StoreDealID:s=' || MessageUtils.InternalEncodeString(crNextDeals.STORE_DEAL_ID) || ', ' ||
            'ProductNo:f=' || MessageUtils.InternalFloatToStr(ProductNo) || ')'
          );
          
        end if;  
  
        if (AccumAccQuantity < 0) then
          raise_application_error(-20000, 'Internal error: Internal calculation error - negative account quantity');
        end if;
  
        if (AccumTotalPrice < 0) then
          raise_application_error(-20000, 'Internal error: Internal calculation error - negative price');
        end if;  
  
        NewAccQuantity:= MiscUtils.LargeZero(crNextDeals.QUANTITY * (AccumAccQuantity / AccumQuantity));
        NewTotalPrice:= MiscUtils.LargeZero(crNextDeals.QUANTITY * (AccumTotalPrice / AccumQuantity));
  
        if (crNextDeals.STORE_DEAL_DATE >= StoreDealDate) then
        
          update 
            STORE_DEALS sd
          set
            sd.ACCOUNT_QUANTITY = NewAccQuantity,
            sd.TOTAL_PRICE = NewTotalPrice
          where
            (sd.STORE_DEAL_OBJECT_BRANCH_CODE = crNextDeals.STORE_DEAL_OBJECT_BRANCH_CODE) and
            (sd.STORE_DEAL_OBJECT_CODE = crNextDeals.STORE_DEAL_OBJECT_CODE);
          
        end if;
        
        AccumQuantity:= MiscUtils.LargeZero(AccumQuantity - crNextDeals.QUANTITY);
        
        if (AccumQuantity = 0) then
          AccumAccQuantity:= 0;
          AccumTotalPrice:= 0;
        else
          AccumAccQuantity:= MiscUtils.LargeZero(AccumAccQuantity - NewAccQuantity);
          AccumTotalPrice:= MiscUtils.LargeZero(AccumTotalPrice - NewTotalPrice);
        end if;
  
        if (AccumQuantity < 0) then
        
          select
            p.CUSTOM_CODE
          into
            ProductNo
          from
            PRODUCTS p
          where
            (p.PRODUCT_CODE = ProductCode);
        
          raise_application_error(-20002,  
            ServerMessages.SNegativePresenceId || '(' ||
            'StoreDealID:s=' || MessageUtils.InternalEncodeString(crNextDeals.STORE_DEAL_ID) || ', ' ||
            'ProductNo:f=' || MessageUtils.InternalFloatToStr(ProductNo) || ')'
          );

        end if;
  
        if (AccumAccQuantity < 0) then
          raise_application_error(-20000, 'Internal error: Internal calculation error - negative account quantity');
        end if;
  
        if (AccumTotalPrice < 0) then
          raise_application_error(-20000, 'Internal error: Internal calculation error - negative price');
        end if;
      end if;
      
    end loop;
  end;
  
  procedure ReAggrStoreDeals(
    AProductCode   in Number,
    AStoreCode     in Number,
    AStoreDealDate in Date
  ) as
    lFixing Number;
  begin
    LockASD(AProductCode, AStoreCode);
    
    begin
      -- izchistva se otcheta napred
      for asd in
        ( select
            asd.STORE_DEAL_DATE,
            asd.REAL_IN_QUANTITY,
            asd.REAL_IN_ACCOUNT_QUANTITY,
            asd.REAL_IN_TOTAL_PRICE,
            asd.REAL_OUT_QUANTITY,
            asd.REAL_OUT_ACCOUNT_QUANTITY,
            asd.REAL_OUT_TOTAL_PRICE
            
          from
            AGGR_STORE_DEALS asd
            
          where
            (asd.PRODUCT_CODE = AProductCode) and
            (asd.STORE_CODE = AStoreCode) and
            (asd.STORE_DEAL_DATE >= AStoreDealDate) and
            
            ( (asd.REAL_IN_QUANTITY is not null) or
              (asd.REAL_OUT_QUANTITY is not null) )
              
          order by
            asd.STORE_DEAL_DATE desc
        )
      loop
        if (asd.REAL_OUT_QUANTITY is not null) then
          DoAggrStoreDeal(
            AProductCode,
            AStoreCode,
            asd.STORE_DEAL_DATE,
            -1,
     (-1) * asd.REAL_OUT_QUANTITY,
     (-1) * asd.REAL_OUT_ACCOUNT_QUANTITY,
     (-1) * asd.REAL_OUT_TOTAL_PRICE,
            1,
            null
          );
        end if;
        
        if (asd.REAL_IN_QUANTITY is not null) then
          DoAggrStoreDeal(
            AProductCode,
            AStoreCode,
            asd.STORE_DEAL_DATE,
            1,
     (-1) * asd.REAL_IN_QUANTITY,
     (-1) * asd.REAL_IN_ACCOUNT_QUANTITY,
     (-1) * asd.REAL_IN_TOTAL_PRICE,
            1,
            null
          );
        end if;
      end loop;
      
      -- apply-va se novia otchet
      for sd in
        ( select
            sd.PRODUCT_CODE,
            sd.STORE_CODE,
            sd.STORE_DEAL_DATE,
            sd.IN_OUT,
            sd.QUANTITY,
            sd.ACCOUNT_QUANTITY,
            sd.TOTAL_PRICE,
            sd.CURRENCY_CODE
            
          from
            STORE_DEALS sd
            
          where
            (sd.PRODUCT_CODE = AProductCode) and
            (sd.STORE_CODE = AStoreCode) and
            (sd.STORE_DEAL_DATE >= AStoreDealDate) and
            
            (sd.STORNO_EMPLOYEE_CODE is null)
            
          order by
            sd.STORE_DEAL_DATE,
            sd.IN_OUT desc,
            sd.STORE_DEAL_NO
        )
      loop
        begin
          select
            cr.FIXING
          into
            lFixing
          from
            CURRENCY_RATES cr
          where
            (cr.CURRENCY_CODE = sd.CURRENCY_CODE) and
            (cr.RATE_DATE = sd.STORE_DEAL_DATE);
        exception
          when no_data_found then
            raise_application_error(-20001, 'No currency rate found on ' || sd.STORE_DEAL_DATE || ' for ' || sd.CURRENCY_CODE);
        end;
        
        DoAggrStoreDeal(
          sd.PRODUCT_CODE,
          sd.STORE_CODE,
          sd.STORE_DEAL_DATE,
          sd.IN_OUT,
          sd.QUANTITY,
          sd.ACCOUNT_QUANTITY,
          sd.TOTAL_PRICE,
          lFixing,
          null
        );
      end loop;
      
    exception
      when others then
        begin
          UnlockASD(AProductCode, AStoreCode);
          raise;
        end;
    end;
    
    UnlockASD(AProductCode, AStoreCode);
  end;
  
  procedure ReCalcAndReAggrStoreDeals(
    AProductCode   in Number,
    AStoreCode     in Number,
    AStoreDealDate in Date
  ) as
  begin
    if StoreRecalcDefferUtils.InStoreRecalcDeffer then
      
      StoreRecalcDefferUtils.StoreRecalcDeffer(AProductCode, AStoreCode, AStoreDealDate);
      
    else

      ReCalcStoreDeals(
        AProductCode,
        AStoreCode,
        AStoreDealDate
      );
      
      ReAggrStoreDeals(
        AProductCode,
        AStoreCode,
        AStoreDealDate
      );
      
    end if;
  end;
  
  procedure PrepareUncoveredPSD(
    Max_Psd_Type_Code in Number,
    Start_Period_Date in Date,
    End_Period_Date in Date,
    Date_Unit_Code in Number,
    Is_Towards_Reserve in Number
  ) is

    -- tazi procedura razchita na joini s TEMP_FILTERED_PRODUCTS
    -- i ne izpolzva ALL_FILTERED_PRODUCTS, nito filtar po PRODUCT_CLASS
    -- ako se slaga ALL_FILTERED_PRODUCTS, triabva i filtar pro PRODUCT_CLASS da se sloji
  
    type MyRefCursor is ref cursor;
    type ProductQuantityTable is table of Number index by BINARY_INTEGER;
    type IntegerTable is table of Number(10) index by BINARY_INTEGER;
    type TProductQuantity is record (
      ProductCode Number(10),
      Quantity Number
    );
    type TPlanMovement is record (
      TheDate Date, 
      ProductCode Number(10), 
      PSDBranchCode Number(10), 
      PSDDealCode Number(10), 
      PSDBndProcessObjectBranchCode Number(10),  
      PSDBndProcessObjectCode Number(10), 
      PSDInOut Number(10), 
      Quantity Number, 
      MinQuantity Number
    );
    type TProductQuantityTable is table of TProductQuantity;
    type TPlanMovementTable is table of TPlanMovement;
    
    TPSDBranchCode                 IntegerTable; 
    TPSDDealCode                   IntegerTable;
    TPSDBndProcessObjectBranchCode IntegerTable;
    TPSDBndProcessObjectCode       IntegerTable;
    TPSDUncoveredQuantity          ProductQuantityTable;
    LinesCount                     Number(10);
    
    WorkQuantities      ProductQuantityTable;
    
    crInitialRealQuantities MyRefCursor;
    crInitialPlanQuantities MyRefCursor;
    crPlanMovements         MyRefCursor;
    
    TableName           Varchar2(100 char);
    KeyFieldName        Varchar2(100 char);
    YearUnitNoName      Varchar2(100 char);
    
    sqlPlanMovements    Varchar2(10000);
    
    ProductQuantities   TProductQuantityTable;
    PlanMovements       TPlanMovementTable;
    CurrentDate         Date;
    MaxProductCode      Number(10);  
    i                   Number(10); 
    
    PSDBndProcessObjectBranchCode  Number(10); 
    PSDBndProcessObjectCode        Number(10);
    
    sqlInitialRealQuantities constant Varchar2(10000):=
      ' select
          /* StoreUtils.PrepareUncoveredPSD.sqlInitialRealQuantities */
          i.PRODUCT_CODE,
          Sum(i.QUANTITY) as QUANTITY
          
        from
          ( select
              /*+ INDEX(asd pkAGGR_STORE_DEALS) */
              asd.PRODUCT_CODE,
              asd.STORE_CODE,
              Sum(asd.REAL_QUANTITY) keep (dense_rank last order by asd.STORE_DEAL_DATE) as QUANTITY
              
            from
              AGGR_STORE_DEALS asd
              
            where
              (asd.STORE_DEAL_DATE <= ContextDate) and
              (exists
                ( select
                    1
                  from
                    TEMP_FILTERED_PRODUCTS tfp
                  where
                    (tfp.PRODUCT_CODE = asd.PRODUCT_CODE)
                )
              )
              
            group by
              asd.PRODUCT_CODE,
              asd.STORE_CODE
              
            having
              (exists
                ( select
                    1
                  from
                    TEMP_FILTERED_DEPTS tfd
                  where
                    (tfd.DEPT_CODE = asd.STORE_CODE)
                )
              )
          ) i
        
        group by
          i.PRODUCT_CODE
          
        order by
          i.PRODUCT_CODE';
          
          
    sqlInitialPlanQuantities constant Varchar2(10000):=
      ' select
          /* StoreUtils.PrepareUncoveredPSD.sqlInitialPlanQuantities */
          i.PRODUCT_CODE,
          Sum(i.QUANTITY) as QUANTITY
        
        from
          ( select
              /*+ INDEX(asd idxASD__HAS_PLAN_DEALS) */
              asd.PRODUCT_CODE,
              asd.STORE_CODE,
              
              Sum(
                Decode(:MAX_PSD_TYPE_CODE,
                  1, Coalesce(asd.PLANNED_QUANTITY, 0),
                  2, Coalesce(asd.PLANNED_QUANTITY, 0) + Coalesce(asd.PROJECTED_QUANTITY, 0)
                )
              ) keep (dense_rank last order by asd.STORE_DEAL_DATE) as QUANTITY
              
            from
              AGGR_STORE_DEALS asd
              
            where
              (ContextDate < Trunc(:START_PERIOD_DATE)) and
              (asd.STORE_DEAL_DATE < Trunc(:START_PERIOD_DATE)) and  -- Trunc() to disable parameter peeking in optimizer
              
              (asd.HAS_PLAN_DEALS = 1) and
              
              (exists(
                select
                  1
                from
                  TEMP_FILTERED_PRODUCTS tfp
                where
                  (tfp.PRODUCT_CODE = asd.PRODUCT_CODE)
                )
              ) and
              
              (exists(
                select
                  1
                from
                  TEMP_FILTERED_DEPTS tfd
                where
                  (tfd.DEPT_CODE = asd.STORE_CODE)
                )
              )
              
            group by
              asd.PRODUCT_CODE,
              asd.STORE_CODE
          ) i
        
        group by
          i.PRODUCT_CODE
          
        order by
          i.PRODUCT_CODE';
          
          
    sqlPlanMovements1 constant Varchar2(10000):=
      ' select
          /*+LEADING(psd d) INDEX(psd idxPSD__IS_ACTIVE) INDEX(d pkTHE_DATES) NO_USE_HASH*/
          /* StoreUtils.PrepareUncoveredPSD.sqlPlanMovements */
          d.';
          
    sqlPlanMovements2 constant Varchar2(10000):=
         ' as THE_DATE,
          psd.PRODUCT_CODE,
          psd.PLANNED_STORE_DEAL_BRANCH_CODE,
          psd.PLANNED_STORE_DEAL_CODE,
          psd.BND_PROCESS_OBJECT_BRANCH_CODE,
          psd.BND_PROCESS_OBJECT_CODE,
          psd.IN_OUT,
        
          Sum(
            Decode(d.THE_DATE,
              ContextDate,
                Greatest(
                  0,
                  (psd.REMAINING_QUANTITY - (psd.QUANTITY / (psd.STORE_DEAL_END_DATE - psd.STORE_DEAL_BEGIN_DATE + 1)) * (Greatest(psd.STORE_DEAL_END_DATE, ContextDate) - d.THE_DATE))
                ),
              Greatest(
                0,
                Least(
                  (psd.QUANTITY / (psd.STORE_DEAL_END_DATE - psd.STORE_DEAL_BEGIN_DATE + 1)),
                  (psd.REMAINING_QUANTITY - (psd.QUANTITY / (psd.STORE_DEAL_END_DATE - psd.STORE_DEAL_BEGIN_DATE + 1)) * (Greatest(psd.STORE_DEAL_END_DATE, ContextDate) - d.THE_DATE))
                )
              )
            )
          ) as QUANTITY_PLAN,
          
          ';
          
    sqlPlanMovements3_1 constant Varchar2(10000):=
          '( select
              Coalesce(Sum(ps.MIN_QUANTITY), 0)
            from
              PRODUCT_STORES ps
            where
              (ps.PRODUCT_CODE = psd.PRODUCT_CODE) and
              (d.THE_LAST_DATE between ps.BEGIN_DATE and ps.END_DATE)
          ) ';
          

    sqlPlanMovements3_2 constant Varchar2(10000):=
          '0';
          
    sqlPlanMovements4 constant Varchar2(10000):=
        '  as MIN_QUANTITY
          
        from
          THE_DATES d,
          PLANNED_STORE_DEALS psd
          
        where
          (psd.IS_ACTIVE = 1) and
          (psd.PLANNED_STORE_DEAL_TYPE_CODE <= :MAX_PSD_TYPE_CODE) and
          
          (d.THE_DATE between
            Greatest(psd.STORE_DEAL_BEGIN_DATE, ContextDate) and
            Greatest(psd.STORE_DEAL_END_DATE, ContextDate)
          ) and
          
          (Greatest(psd.STORE_DEAL_END_DATE, ContextDate) >= Trunc(:START_PERIOD_DATE)) and
          (psd.STORE_DEAL_BEGIN_DATE <= Trunc(:END_PERIOD_DATE)) and  -- Trunc() to disable parameter peeking in optimizer
  
          ( d.THE_DATE between
              Trunc(:START_PERIOD_DATE) and  -- Trunc() to disable parameter peeking in optimizer
              Trunc(:END_PERIOD_DATE)
          ) and
          
          (exists(
            select
              1
            from
              TEMP_FILTERED_PRODUCTS tfp
            where
              (tfp.PRODUCT_CODE = psd.PRODUCT_CODE)
            )
          ) and
          
          (exists(
            select
              1
            from
              TEMP_FILTERED_DEPTS tfd
            where
              (tfd.DEPT_CODE = psd.STORE_CODE)
            )
          )
          
        group by
          d.';
          
    sqlPlanMovements5 constant Varchar2(10000):=
          ',
          d.THE_LAST_DATE,
          psd.PLANNED_STORE_DEAL_BRANCH_CODE,
          psd.PLANNED_STORE_DEAL_CODE,
          psd.IN_OUT,
          psd.PRIORITY_CODE,
          psd.BND_PROCESS_OBJECT_BRANCH_CODE,
          psd.BND_PROCESS_OBJECT_CODE,
          psd.PRODUCT_CODE,
          psd.STORE_CODE,
          psd.STORE_DEAL_BEGIN_DATE,
          psd.STORE_DEAL_END_DATE,
          psd.REMAINING_QUANTITY
                
        order by
          d.';
          
    sqlPlanMovements6 constant Varchar2(10000):=
          ',
          psd.IN_OUT desc,
          psd.PRIORITY_CODE desc,
          Greatest(psd.STORE_DEAL_BEGIN_DATE, ContextDate),
          psd.REMAINING_QUANTITY desc,
          psd.PLANNED_STORE_DEAL_BRANCH_CODE,
          psd.PLANNED_STORE_DEAL_CODE';
          
  begin
    execute immediate 'truncate table TEMP_UNCOVERED_PSD';
    
    select
      Max(PRODUCT_CODE)
    into
      MaxProductCode
    from
      PRODUCTS;
    
    select
      TABLE_NAME,
      KEY_FIELD_NAME,
      YEAR_UNIT_NO_NAME
    into
      TableName,
      KeyFieldName,
      YearUnitNoName
    from
      THE_DATE_UNITS
    where
      (THE_DATE_UNIT_CODE = Date_Unit_Code);
      
    if (Is_Towards_Reserve <> 0) and (Is_Towards_Reserve <> 1) then
      raise_application_error(-20000, 'PrepareUncoveredPSD: Invalid parameter value for Is_Towards_Reserve');
    end if;
    
    if (Is_Towards_Reserve = 1) then
      sqlPlanMovements:= sqlPlanMovements1 ||
                         KeyFieldName ||
                         sqlPlanMovements2 ||
                         sqlPlanMovements3_1 ||
                         sqlPlanMovements4 ||
                         KeyFieldName ||
                         sqlPlanMovements5 ||
                         KeyFieldName ||
                         sqlPlanMovements6;
    else
      sqlPlanMovements:= sqlPlanMovements1 ||
                         KeyFieldName ||
                         sqlPlanMovements2 ||
                         sqlPlanMovements3_2 ||
                         sqlPlanMovements4 ||
                         KeyFieldName ||
                         sqlPlanMovements5 ||
                         KeyFieldName ||
                         sqlPlanMovements6;
    end if;
     
    for i in 1..MaxProductCode loop
      WorkQuantities(i):= 0;
    end loop;
    
    open crInitialRealQuantities
    for sqlInitialRealQuantities;
    begin
      fetch crInitialRealQuantities bulk collect into ProductQuantities;
    
      for i in 1..ProductQuantities.count loop
        WorkQuantities(ProductQuantities(i).ProductCode):= MiscUtils.LargeZero(ProductQuantities(i).Quantity);
      end loop;
    exception
      when others then
        begin
          close crInitialRealQuantities;
          raise;
        end;
    end;    
    close crInitialRealQuantities;
   
    
    open crInitialPlanQuantities
    for sqlInitialPlanQuantities
    using 
      Max_Psd_Type_Code,
      Start_Period_Date,
      Start_Period_Date;
    begin
      fetch crInitialPlanQuantities bulk collect into ProductQuantities;

      for i in 1..ProductQuantities.count loop
        WorkQuantities(ProductQuantities(i).ProductCode):= MiscUtils.LargeZero(WorkQuantities(ProductQuantities(i).ProductCode) + ProductQuantities(i).Quantity);
      end loop;
    exception
      when others then
        begin
          close crInitialPlanQuantities;
          raise;
        end;
    end;
    close crInitialPlanQuantities;
    
    
    for i in 1..MaxProductCode loop
      if (WorkQuantities(i) < 0) then
        WorkQuantities(i):= 0;
      end if;
    end loop;
    
    
    LinesCount:= 0;
    
    open crPlanMovements
    for sqlPlanMovements
    using
      Max_Psd_Type_Code,
      Start_Period_Date,
      End_Period_Date,
      Start_Period_Date,
      End_Period_Date;
    
    begin
      fetch crPlanMovements bulk collect into PlanMovements;
      for i in 1..PlanMovements.count loop
        
        if (PlanMovements(i).ProductCode is not null) then
          
          if (CurrentDate is null) then
            CurrentDate:= PlanMovements(i).TheDate;
          else
            if (PlanMovements(i).TheDate <> CurrentDate) then
              CurrentDate:= PlanMovements(i).TheDate;
              for i in 1..MaxProductCode loop
                if (WorkQuantities(i) < 0) then
                  WorkQuantities(i):= 0;
                end if;
              end loop;
            end if;
          end if;
          
          WorkQuantities(PlanMovements(i).ProductCode):= 
            WorkQuantities(PlanMovements(i).ProductCode) + PlanMovements(i).PSDInOut*PlanMovements(i).Quantity;
          
          if (PlanMovements(i).PSDInOut = -1) and
             (WorkQuantities(PlanMovements(i).ProductCode) < PlanMovements(i).MinQuantity) then
            LinesCount:= LinesCount + 1;
            TPSDBranchCode(LinesCount):= PlanMovements(i).PSDBranchCode;
            TPSDDealCode(LinesCount):= PlanMovements(i).PSDDealCode;
            TPSDBndProcessObjectBranchCode(LinesCount):= PlanMovements(i).PSDBndProcessObjectBranchCode;
            TPSDBndProcessObjectCode(LinesCount):= PlanMovements(i).PSDBndProcessObjectCode;            
            TPSDUncoveredQuantity(LinesCount):= 
              Least(
                PlanMovements(i).Quantity, 
                Abs(WorkQuantities(PlanMovements(i).ProductCode) - PlanMovements(i).MinQuantity)
              );  
          end if;                     
        end if; 
      end loop;
      
    exception
      when others then
        begin
          close crPlanMovements;
          raise;
        end;
    end;
    close crPlanMovements;

    
    forall i in 1..LinesCount
      insert /*+ APPEND */ into TEMP_UNCOVERED_PSD (
        PLANNED_STORE_DEAL_BRANCH_CODE,
        PLANNED_STORE_DEAL_CODE,
        BND_PROCESS_OBJECT_BRANCH_CODE,
        BND_PROCESS_OBJECT_CODE,
        UNCOVERED_QUANTITY
      )  
      values (
        TPSDBranchCode(i), 
        TPSDDealCode(i), 
        TPSDBndProcessObjectBranchCode(i), 
        TPSDBndProcessObjectCode(i),
        TPSDUncoveredQuantity(i)
      );

    commit;
  end;
  
  procedure PrepareUncoveredPSDByModel(
    Start_Period_Date in Date,
    End_Period_Date in Date,
    Date_Unit_Code in Number,
    ML_Object_Branch_Code in Number,
    ML_Object_Code in Number
  ) is
    
    type MyRefCursor is ref cursor;
    
    type ProductQuantityTable is table of Number index by BINARY_INTEGER;
    type IntegerTable is table of Number(10) index by BINARY_INTEGER;
    
    TPSDBranchCode                 IntegerTable; 
    TPSDDealCode                   IntegerTable;
    TPSDBndProcessObjectBranchCode IntegerTable;
    TPSDBndProcessObjectCode       IntegerTable;
    TPSDUncoveredQuantity          ProductQuantityTable;
    LinesCount                     Number(10);
    
    WorkQuantities      ProductQuantityTable;
    
    crInitialQuantities MyRefCursor;
    crPlanMovements     MyRefCursor;
    
    TableName           Varchar2(100 char);
    KeyFieldName        Varchar2(100 char);
    YearUnitNoName      Varchar2(100 char);
    
    sqlPlanMovements    Varchar2(10000);
    
    Quantity            Number;
    QuantityDelta       Number;
    CurrentProductCode  Number(10);
    TheDate             Date;
    CurrentDate         Date;
    PSDBranchCode       Number(10);
    PSDDealCode         Number(10);
    PSDINOut            Number(10);
    MaxProductCode      Number(10);  
    i                   Number(10); 
    
    PSDBndProcessObjectBranchCode  Number(10); 
    PSDBndProcessObjectCode        Number(10);
    
    
    sqlInitialQuantities constant Varchar2(10000):=
      ' select
          /* StoreUtils.PrepareUncoveredPSDByModel.sqlInitialQuantities */
          mll.PRODUCT_CODE,
          
          ( select
              Sum(
                Sum(
                  asd.REAL_QUANTITY +
                  Decode(Sign(:START_PERIOD_DATE - ContextDate),
                    1, Coalesce(asd.PLANNED_QUANTITY, 0),
                    0
                  )
                ) keep (dense_rank last order by asd.STORE_DEAL_DATE)
              )
              
            from
              AGGR_STORE_DEALS asd
              
            where
              (asd.PRODUCT_CODE = mll.PRODUCT_CODE) and
              (asd.STORE_DEAL_DATE < Trunc(:START_PERIOD_DATE))  -- Trunc() to disable parameter peeking in optimizer
              
            group by
              asd.STORE_CODE
          ) as QUANTITY
          
        from
          MATERIAL_LIST_LINES mll
          
        where
          (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and
          (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and
          (mll.PRODUCT_CODE is not null)
          
        group by
          mll.PRODUCT_CODE
          
        order by
          mll.PRODUCT_CODE';
          
          
    sqlPlanMovements1 constant Varchar2(10000):=
      ' select
          /* StoreUtils.PrepareUncoveredPSDByModel.sqlPlanMovements */
          d.';
        
    sqlPlanMovements2 constant Varchar2(10000):=
         ' as THE_DATE,
          psd.PRODUCT_CODE,
          psd.PLANNED_STORE_DEAL_BRANCH_CODE,
          psd.PLANNED_STORE_DEAL_CODE,
          psd.BND_PROCESS_OBJECT_BRANCH_CODE,
          psd.BND_PROCESS_OBJECT_CODE,
          psd.IN_OUT,
          
          ( psd.REMAINING_QUANTITY *
            psd.IN_OUT *
            Count(*) / (Greatest(psd.STORE_DEAL_END_DATE, ContextDate) - Greatest(psd.STORE_DEAL_BEGIN_DATE, ContextDate) + 1)
          ) as QUANTITY_PLAN_DELTA
          
        from
          THE_DATES d,
          PLANNED_STORE_DEALS psd
          
        where
          (psd.IS_ACTIVE = 1) and
          (psd.PLANNED_STORE_DEAL_TYPE_CODE = 1) and
          
          (d.THE_DATE between
            Greatest(psd.STORE_DEAL_BEGIN_DATE, ContextDate) and
            Greatest(psd.STORE_DEAL_END_DATE, ContextDate)
          ) and
          
          (d.THE_DATE between
            Trunc(:START_PERIOD_DATE) and  -- Trunc() to disable parameter peeking in optimizer
            Trunc(:END_PERIOD_DATE)
          ) and
          
          (exists
            ( select
                1
              from
                MATERIAL_LIST_LINES mll
              where
                (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and
                (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE) and
                (mll.PRODUCT_CODE = psd.PRODUCT_CODE)
            )
          )
          
        group by
          psd.PLANNED_STORE_DEAL_BRANCH_CODE,
          psd.PLANNED_STORE_DEAL_CODE,
          psd.PRODUCT_CODE,
          psd.BND_PROCESS_OBJECT_BRANCH_CODE,
          psd.BND_PROCESS_OBJECT_CODE,
          psd.IN_OUT,
          psd.PRIORITY_CODE,
          psd.REMAINING_QUANTITY,
          d.';
          
    sqlPlanMovements3 constant Varchar2(10000):=
         ',
          d.THE_LAST_DATE,
          d.THE_FIRST_DATE,
          psd.STORE_DEAL_BEGIN_DATE,
          psd.STORE_DEAL_END_DATE
          
        order by
          THE_DATE,        
          psd.IN_OUT desc,
          psd.PRIORITY_CODE desc,
          psd.STORE_DEAL_BEGIN_DATE,
          psd.REMAINING_QUANTITY desc,
          psd.PLANNED_STORE_DEAL_BRANCH_CODE,
          psd.PLANNED_STORE_DEAL_CODE';
         
  begin
    execute immediate 'truncate table TEMP_UNCOVERED_PSD';
    
    select
      Max(PRODUCT_CODE)
    into
      MaxProductCode
    from
      PRODUCTS;
    
    select
      TABLE_NAME,
      KEY_FIELD_NAME,
      YEAR_UNIT_NO_NAME
    into
      TableName,
      KeyFieldName,
      YearUnitNoName
    from
      THE_DATE_UNITS
    where
      THE_DATE_UNIT_CODE = Date_Unit_Code;
      
    sqlPlanMovements:= 
      sqlPlanMovements1 || 
      KeyFieldName || 
      sqlPlanMovements2 || 
      KeyFieldName || 
      sqlPlanMovements3;
    
    for i in 1..MaxProductCode loop
      WorkQuantities(i):= 0;
    end loop;
    
    open crInitialQuantities 
    for sqlInitialQuantities
    using
      Start_Period_Date,
      Start_Period_Date,
      ML_Object_Branch_Code,
      ML_Object_Code;
    begin
      loop
        fetch crInitialQuantities 
          into CurrentProductCode, Quantity;
        exit when crInitialQuantities%NotFound;
        
        if (Quantity > 0) then
          WorkQuantities(CurrentProductCode):= Quantity;
        end if;
      end loop;
    exception
      when others then
        begin
          close crInitialQuantities;
          raise;
        end;
    end;    
    close crInitialQuantities;
    
    
    LinesCount:= 0;
    
    open crPlanMovements
    for sqlPlanMovements
    using
      Start_Period_Date,
      End_Period_Date,
      ML_Object_Branch_Code,
      ML_Object_Code;
    begin  
      loop
        fetch crPlanMovements
          into TheDate, CurrentProductCode, PSDBranchCode, PSDDealCode, PSDBndProcessObjectBranchCode, PSDBndProcessObjectCode, PSDInOut, QuantityDelta;
        exit when crPlanMovements%NotFound;
        
        if (CurrentProductCode is not null) then
          
          if (CurrentDate is null) then
            CurrentDate:= TheDate;
          else
            if (TheDate <> CurrentDate) then
              CurrentDate:= TheDate;
              for i in 1..MaxProductCode loop
                if (WorkQuantities(i) < 0) then
                  WorkQuantities(i):= 0;
                end if;
              end loop;
            end if;
          end if;
          
          WorkQuantities(CurrentProductCode):=
            WorkQuantities(CurrentProductCode) + QuantityDelta;
          
          if (PSDInOut = -1) and
             (WorkQuantities(CurrentProductCode) < 0) then
            
            LinesCount:= LinesCount + 1;
            TPSDBranchCode(LinesCount):= PSDBranchCode;
            TPSDDealCode(LinesCount):= PSDDealCode;
            TPSDBndProcessObjectBranchCode(LinesCount):= PSDBndProcessObjectBranchCode;
            TPSDBndProcessObjectCode(LinesCount):= PSDBndProcessObjectCode;
            TPSDUncoveredQuantity(LinesCount):= 
              Least(
                Abs(QuantityDelta), 
                Abs(WorkQuantities(CurrentProductCode))
              );  
            
          end if;
        end if;
      end loop;
    exception
      when others then
        begin
          close crPlanMovements;
          raise;
        end;
    end;
    close crPlanMovements;
    
    forall i in 1..LinesCount
      insert /*+ APPEND */ into TEMP_UNCOVERED_PSD (
        PLANNED_STORE_DEAL_BRANCH_CODE,
        PLANNED_STORE_DEAL_CODE,
        BND_PROCESS_OBJECT_BRANCH_CODE,
        BND_PROCESS_OBJECT_CODE,
        UNCOVERED_QUANTITY
      )
      values (
        TPSDBranchCode(i), 
        TPSDDealCode(i), 
        TPSDBndProcessObjectBranchCode(i), 
        TPSDBndProcessObjectCode(i),
        TPSDUncoveredQuantity(i)
      );
    
    commit;
  end;
  
  procedure UnprepareUncoveredPSD is
  begin
    execute immediate 'truncate table TEMP_UNCOVERED_PSD';
    commit;
  end;
  
end;
/
