create or replace package FinanceUtils is  

  function GetFinClassFullNo(
    AFinClassCode in Number,
    APadded in Number := 0
  ) return VarChar2;

  -- fin model line types
  function fmltPrimary return Number deterministic;
  function fmltSecondary return Number deterministic;

  function NewFinOrder(
    ABranchCode in Number,
    AExecDeptCode in Number,
    APriorityCode in Number,
    AFinProcessCode in Number,
    ABndProcessObjectBranchCode in Number,
    ABndProcessObjectCode in Number,
    APartnerCode in Number,
    AInOut in Number,
    ABaseDate in Date,
    ABaseFinancialProductCode in Number,
    ABaseCurrencyCode in Number,
    ABaseQuantity in Number,
    AWorkFinancialProductCode in Number,
    ADocumentIdentifier in VarChar2,
    ADocumentDate in Date,
    ASpecFinModelCode in Number
  ) return Number;

  procedure NewFinOrder(
    ABranchCode in Number,
    AExecDeptCode in Number,
    APriorityCode in Number,
    AFinProcessCode in Number,
    ABndProcessObjectBranchCode in Number,
    ABndProcessObjectCode in Number,
    APartnerCode in Number,
    AInOut in Number,
    ABaseDate in Date,
    ABaseFinancialProductCode in Number,
    ABaseCurrencyCode in Number,
    ABaseQuantity in Number,
    AWorkFinancialProductCode in Number,
    ADocumentIdentifier in VarChar2,
    ADocumentDate in Date,
    ASpecFinModelCode in Number,
    AResult out Number
  );

  procedure UpdateRFMLPlannedStoreDeals(
    ARfmlObjectBranchCode in Number := null,
    ARfmlObjectCode in Number := null,
    ACurrencyCode in Number := null,
    AForceRecalc in Boolean := False,
    AOptimize in Boolean := True
  );

  procedure CheckInvoiceNoGenerator(AInvoiceNoGeneratorCode in Number);
  procedure GenerateInvoiceNo(
    ADate in Date,
    ADept in Number,
    AInvoiceTypeCode in Number,
    AIsProformInvoice in Number,
    ACurrencyCode in Number,
    AIsApproved in Number,
    AMode in Number,  -- 0 = generate and update, 1 = preview invoice_no, 2 = preview generator_code
    AResult out Number
  );
  function InvoiceNoGeneratorCode(
    ADate in Date,
    ADept in Number,
    AInvoiceTypeCode in Number,
    AIsProformInvoice in Number,
    ACurrencyCode in Number,
    AIsApproved in Number
  ) return Number;
  
  procedure UpdateFinOrderIsComplete(
    AFinOrderCode in Number
  );

  PRAGMA RESTRICT_REFERENCES (GetFinClassFullNo, WNDS, WNPS, RNPS);
  
end FinanceUtils;
/
create or replace package body FinanceUtils is
  

  function GetFinClassFullNo(
    AFinClassCode in Number,
    APadded in Number := 0
  ) return VarChar2 is

  Result Varchar2(250 char);
  Strings MiscUtils.TStringArray;

  begin
    if (AFinClassCode is null) then
      Result:= null;
    else

    
      if (APadded = 0) then
      
        select
          To_Char(fc.FIN_CLASS_LOCAL_NO)
  
        bulk collect into
          Strings
  
        from
          FIN_CLASS_RELATIONS fcr,
          FIN_CLASSES fc

        where
          (fcr.ANCESTOR_FIN_CLASS_CODE = fc.FIN_CLASS_CODE) and
          (fcr.DESCENDANT_FIN_CLASS_CODE = AFinClassCode)
          
        order by
          ( select
              Count(*)
            from
              FIN_CLASS_RELATIONS fcr2
            where
              (fcr2.DESCENDANT_FIN_CLASS_CODE = fc.FIN_CLASS_CODE)
          )
        ;
  
      else    
  
        select
          LPad(To_Char(z.FIN_CLASS_LOCAL_NO), y.DIGIT_COUNT, '0') as LOCAL_NO
  
        bulk collect into
          Strings
  
        from
          ( select
              x.LEVEL_NO,
              (Trunc(Log(10, Greatest(Max(x.FIN_CLASS_LOCAL_NO), 1))) + 1) as DIGIT_COUNT
            from
              ( select
                  ( select
                      Count(*)
                    from
                      FIN_CLASS_RELATIONS fcr
                    where
                      (fcr.DESCENDANT_FIN_CLASS_CODE = fc.FIN_CLASS_CODE)
                  ) as LEVEL_NO,
                  fc.FIN_CLASS_LOCAL_NO
                from
                  FIN_CLASSES fc
              ) x
            group by
              x.LEVEL_NO
          ) y,
          ( select
              ( select
                  Count(*)
                from
                  FIN_CLASS_RELATIONS fcr2
                where
                  (fcr2.DESCENDANT_FIN_CLASS_CODE = fc.FIN_CLASS_CODE)
              ) as LEVEL_NO,
              fc.FIN_CLASS_LOCAL_NO
            from
              FIN_CLASS_RELATIONS fcr,
              FIN_CLASSES fc
            where
              (fcr.ANCESTOR_FIN_CLASS_CODE = fc.FIN_CLASS_CODE) and
              (fcr.DESCENDANT_FIN_CLASS_CODE = AFinClassCode)
          ) z
          
        where
          (y.LEVEL_NO = z.LEVEL_NO)
          
        order by
          y.LEVEL_NO
        ;
  
      end if;

      Result:= MiscUtils.ConcatStrings(Strings, '.') || '.';

      if (Result is not null) and (Result <> '0.') then
        Result:= SubStr(Result, 3);  -- da premahne '0.'
      end if;

    end if;

    return(Result);
  end GetFinClassFullNo;

  function fmltPrimary return Number deterministic is
  begin
    return FinanceConsts.ConstfmltPrimary;
  end;
  
  function fmltSecondary return Number deterministic is
  begin
    return FinanceConsts.ConstfmltSecondary;
  end;
  
  function NewFinOrder(
    ABranchCode in Number,
    AExecDeptCode in Number,
    APriorityCode in Number,
    AFinProcessCode in Number,
    ABndProcessObjectBranchCode in Number,
    ABndProcessObjectCode in Number,
    APartnerCode in Number,
    AInOut in Number,
    ABaseDate in Date,
    ABaseFinancialProductCode in Number,
    ABaseCurrencyCode in Number,
    ABaseQuantity in Number,
    AWorkFinancialProductCode in Number,
    ADocumentIdentifier in VarChar2,
    ADocumentDate in Date,
    ASpecFinModelCode in Number
  ) return Number is
    FinOrderCode Number;
    LocalBranchCode Number;
    RfmlObjectCode Number;
    BaseFinancialProductCode Number;
  begin
    if ( (Coalesce(ABaseFinancialProductCode, 0) = 0) and (Coalesce(ABaseCurrencyCode, 0) = 0) ) or
       ( (Coalesce(ABaseFinancialProductCode, 0) > 0) and (Coalesce(ABaseCurrencyCode, 0) > 0) ) then
      raise_application_error(-20000, 'Incorrect values for ABaseFinancialProductCode and ABaseCurrencyCode');
    end if;
    
    if (ABaseCurrencyCode > 0) then
      select
        c.PRODUCT_CODE
      into
        BaseFinancialProductCode
      from
        CURRENCIES c
      where
        (c.CURRENCY_CODE = ABaseCurrencyCode);
    else
      BaseFinancialProductCode:= ABaseFinancialProductCode;
    end if;
  
    select
      iv.LOCAL_BRANCH_CODE
    into
      LocalBranchCode
    from
      INTERNAL_VALUES iv
    ;

    select
      seq_FIN_ORDERS.NextVal
    into
      FinOrderCode
    from
      DUAL
    ;

    insert into FIN_ORDERS_FOR_EDIT
    (
      FIN_ORDER_CODE, 
      FIN_ORDER_BRANCH_CODE, 
      FIN_ORDER_NO, 
      EXEC_DEPT_CODE, 
      PRIORITY_CODE, 
      FIN_PROCESS_CODE, 
      BND_PROCESS_OBJECT_BRANCH_CODE, 
      BND_PROCESS_OBJECT_CODE, 
      PARTNER_CODE, 
      IN_OUT, 
      BASE_DATE, 
      BASE_FINANCIAL_PRODUCT_CODE, 
      BASE_QUANTITY, 
      WORK_FINANCIAL_PRODUCT_CODE, 
      DOCUMENT_IDENTIFIER, 
      DOCUMENT_DATE, 
      CREATE_EMPLOYEE_CODE, 
      CREATE_DATE, 
      CREATE_TIME, 
      CHANGE_EMPLOYEE_CODE, 
      CHANGE_DATE, 
      CHANGE_TIME,
      BASE_DATA_CHANGED,
      FM_MOVEMENT_OFFSET_TYPE_CODE
    )
    values
    (
      FinOrderCode,  -- FIN_ORDER_CODE
      ABranchCode,  -- FIN_ORDER_BRANCH_CODE
      ( select
          Coalesce(Max(fo.FIN_ORDER_NO), 0) + 1
        from
          FIN_ORDERS fo
        where
          (fo.FIN_ORDER_BRANCH_CODE = ABranchCode)
      ),  -- FIN_ORDER_NO
      AExecDeptCode,  -- EXEC_DEPT_CODE
      APriorityCode,  -- PRIORITY_CODE
      AFinProcessCode,  -- FIN_PROCESS_CODE
      ABndProcessObjectBranchCode,  -- BND_PROCESS_OBJECT_BRANCH_CODE
      ABndProcessObjectCode,  -- BND_PROCESS_OBJECT_CODE
      APartnerCode,  -- PARTNER_CODE
      AInOut,  -- IN_OUT
      ABaseDate,  -- BASE_DATE
      BaseFinancialProductCode,  -- BASE_FINANCIAL_PRODUCT_CODE
      ABaseQuantity,  -- BASE_QUANTITY
      AWorkFinancialProductCode,  -- WORK_FINANCIAL_PRODUCT_CODE
      ADocumentIdentifier,  -- DOCUMENT_IDENTIFIER
      ADocumentDate,  -- DOCUMENT_DATE
      LoginContext.UserCode,  -- CREATE_EMPLOYEE_CODE
      ContextDate,  -- CREATE_DATE
      ContextTime,  -- CREATE_TIME
      LoginContext.UserCode,  -- CHANGE_EMPLOYEE_CODE
      ContextDate,  -- CHANGE_DATE
      ContextTime,  -- CHANGE_TIME
      0,  -- BASE_DATA_CHANGED
      ( select
          sfm.FM_MOVEMENT_OFFSET_TYPE_CODE
        from
          SPEC_FIN_MODELS sfm
        where
          (sfm.SPEC_FIN_MODEL_CODE = ASpecFinModelCode)
      )
    );
    
    for x in
      ( select
          fo.PARTNER_CODE, 
          sfml.SPEC_FIN_MODEL_CODE,
          sfml.FIN_MODEL_LINE_TYPE_CODE, 
          fmlt.FIN_MODEL_LINE_TYPE_ABBREV,
          sfml.FIN_MODEL_LINE_NO, 
          sfml.LINE_QUANTITY_PERCENT, 
          sfml.MOVEMENT_OFFSET_DAYS, 
          sfml.MOVEMENT_DURATION_DAYS, 
          sfml.FIN_STORE_CODE, 
          sfml.PARTNER_ACCOUNT_CODE, 
          sfml.FIN_MODEL_LINE_REASON_CODE,
          fo.IN_OUT,
          d.CUSTOM_CODE as FIN_ORDER_BRANCH_NO,
          fo.FIN_ORDER_NO
        from
          SPEC_FIN_MODELS sfm,
          SPEC_FIN_MODEL_LINES sfml,
          FIN_MODEL_LINE_TYPES fmlt,
          FIN_ORDERS fo,
          DEPTS d
        where
          (sfm.SPEC_FIN_MODEL_CODE = ASpecFinModelCode) and
          (sfm.AUTHORIZE_EMPLOYEE_CODE is not null) and          
          (sfm.SPEC_FIN_MODEL_CODE = sfml.SPEC_FIN_MODEL_CODE) and          
          (sfml.FIN_MODEL_LINE_TYPE_CODE = fmlt.FIN_MODEL_LINE_TYPE_CODE) and
          (fo.FIN_ORDER_CODE = FinOrderCode) and          
          (fo.FIN_ORDER_BRANCH_CODE = d.DEPT_CODE)
        order by
          sfml.FIN_MODEL_LINE_TYPE_CODE,
          sfml.FIN_MODEL_LINE_NO          
      )
    loop
      insert into PROCESS_OBJECTS
      (
        PROCESS_OBJECT_BRANCH_CODE, 
        PROCESS_OBJECT_CODE, 
        PROCESS_OBJECT_CLASS_CODE
      )
      values
      (
        LocalBranchCode,
        seq_PROCESS_OBJECTS.NextVal,
        100
      )
      returning
        PROCESS_OBJECT_CODE
      into
        RfmlObjectCode;
        
      insert into RFML_FOR_EDIT
      (
        RFML_OBJECT_BRANCH_CODE, 
        RFML_OBJECT_CODE, 
        FIN_ORDER_CODE, 
        PARTNER_CODE, 
        FIN_MODEL_LINE_TYPE_CODE, 
        FIN_MODEL_LINE_NO, 
        LINE_QUANTITY_PERCENT, 
        MOVEMENT_OFFSET_DAYS, 
        MOVEMENT_DURATION_DAYS, 
        IN_OUT, 
        FIN_STORE_CODE, 
        PARTNER_ACCOUNT_CODE, 
        FIN_MODEL_LINE_REASON_CODE,
        OVERRIDE_DOCUMENT
      )
      values
      (
        LocalBranchCode, 
        RfmlObjectCode, 
        FinOrderCode, 
        x.PARTNER_CODE, 
        x.FIN_MODEL_LINE_TYPE_CODE, 
        x.FIN_MODEL_LINE_NO, 
        x.LINE_QUANTITY_PERCENT, 
        x.MOVEMENT_OFFSET_DAYS, 
        x.MOVEMENT_DURATION_DAYS, 
        x.IN_OUT, 
        x.FIN_STORE_CODE, 
        x.PARTNER_ACCOUNT_CODE, 
        x.FIN_MODEL_LINE_REASON_CODE,
        0
      );
      
      update
        PROCESS_OBJECTS po
      set
        po.PROCESS_OBJECT_IDENTIFIER =
          (x.FIN_ORDER_BRANCH_NO || '/' || 
           x.FIN_ORDER_NO || '/'  ||
           x.FIN_MODEL_LINE_TYPE_ABBREV || '.' ||
           x.FIN_MODEL_LINE_NO)
      where
        (po.PROCESS_OBJECT_BRANCH_CODE = LocalBranchCode) and
        (po.PROCESS_OBJECT_CODE = RfmlObjectCode)
      ;
    end loop;
    
    return FinOrderCode;
  end;
  
  procedure NewFinOrder(
    ABranchCode in Number,
    AExecDeptCode in Number,
    APriorityCode in Number,
    AFinProcessCode in Number,
    ABndProcessObjectBranchCode in Number,
    ABndProcessObjectCode in Number,
    APartnerCode in Number,
    AInOut in Number,
    ABaseDate in Date,
    ABaseFinancialProductCode in Number,
    ABaseCurrencyCode in Number,
    ABaseQuantity in Number,
    AWorkFinancialProductCode in Number,
    ADocumentIdentifier in VarChar2,
    ADocumentDate in Date,
    ASpecFinModelCode in Number,
    AResult out Number
  ) is
  begin
    AResult:= 
      NewFinOrder(
        ABranchCode,
        AExecDeptCode,
        APriorityCode,
        AFinProcessCode,
        ABndProcessObjectBranchCode,
        ABndProcessObjectCode,
        APartnerCode,
        AInOut,
        ABaseDate,
        ABaseFinancialProductCode,
        ABaseCurrencyCode,
        ABaseQuantity,
        AWorkFinancialProductCode,
        ADocumentIdentifier,
        ADocumentDate,
        ASpecFinModelCode
      );
  end;
  
  procedure DoUpdateRFMLPlannedStoreDeals(
    ARfmlObjectBranchCode in Number := null,
    ARfmlObjectCode in Number := null,
    ACurrencyCode in Number := null,
    AOptimize in Boolean := True
  ) as
    CurrencyCount Number;
    TodayCurrencyRateCount Number;
    LastFullCurrencyRateDate Date;
  begin
    select
      Count(*)
    into
      CurrencyCount
    from
      CURRENCIES c;

    select
      Count(*)
    into
      TodayCurrencyRateCount
    from
      CURRENCY_RATES cr
    where
      (cr.RATE_DATE = ContextDate);

    if (TodayCurrencyRateCount = CurrencyCount) then
      LastFullCurrencyRateDate:= ContextDate;
    else
      select
        Max(Max(cr.RATE_DATE))
      into
        LastFullCurrencyRateDate
      from
        CURRENCY_RATES cr
      where
        (cr.RATE_DATE <= ContextDate)
      group by
        cr.RATE_DATE
      having 
        (Count(*) = CurrencyCount);     
    end if;
      
    
    for x in
      ( select
          y.PLANNED_STORE_DEAL_BRANCH_CODE,
          y.PLANNED_STORE_DEAL_CODE,
          y.COMPLETED_WORK_QUANTITY,
          
          case
            when (MiscUtils.LargeZero(y.COMPLETED_BASE_QUANTITY - y.LINE_BASE_QUANTITY) = 0) then
              y.COMPLETED_WORK_QUANTITY 

            when (y.COMPLETED_BASE_QUANTITY > y.LINE_BASE_QUANTITY) then
              y.COMPLETED_WORK_QUANTITY * (y.LINE_BASE_QUANTITY / y.COMPLETED_BASE_QUANTITY)
              
            else
              ( y.COMPLETED_WORK_QUANTITY + 
                ((y.LINE_BASE_QUANTITY - y.COMPLETED_BASE_QUANTITY) * y.DATE_BASE_TO_WORK_FIXING)
              )               
          end as PLAN_WORK_QUANTITY,          
          
          y.HAS_DATE_STORE_DEALS,
          y.PSD_IS_ACTIVE
        from
          ( select
              psd.PLANNED_STORE_DEAL_BRANCH_CODE,
              psd.PLANNED_STORE_DEAL_CODE,
                
              (fo.BASE_QUANTITY * rfml.LINE_QUANTITY_PERCENT) as LINE_BASE_QUANTITY,
                
              ( select
                  Coalesce(Sum(sd.QUANTITY), 0)
                from
                  STORE_DEALS sd
                where
                  (sd.PLANNED_STORE_DEAL_BRANCH_CODE = psd.PLANNED_STORE_DEAL_BRANCH_CODE) and
                  (sd.PLANNED_STORE_DEAL_CODE = psd.PLANNED_STORE_DEAL_CODE) and
                  (sd.STORNO_EMPLOYEE_CODE is null)
              ) as COMPLETED_WORK_QUANTITY,

              ( select
                  Coalesce(
                    Sum(
                      sd.QUANTITY *
                      Decode(fo.BASE_FINANCIAL_PRODUCT_CODE, 
                        fo.WORK_FINANCIAL_PRODUCT_CODE, 1,
                        ( select
                            cr.FIXING
                          from
                            CURRENCIES c,
                            CURRENCY_RATES cr
                          where
                            (c.PRODUCT_CODE = fo.WORK_FINANCIAL_PRODUCT_CODE) and
                            (c.CURRENCY_CODE = cr.CURRENCY_CODE) and
                            (cr.RATE_DATE = sd.STORE_DEAL_DATE)
                        ) /
                        ( select
                            cr.FIXING
                          from
                            CURRENCIES c,
                            CURRENCY_RATES cr
                          where
                            (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUCT_CODE) and
                            (c.CURRENCY_CODE = cr.CURRENCY_CODE) and
                            (cr.RATE_DATE = sd.STORE_DEAL_DATE)
                        )
                      )
                    ),
                    0
                  )
                from
                  STORE_DEALS sd
                where
                  (sd.PLANNED_STORE_DEAL_BRANCH_CODE = psd.PLANNED_STORE_DEAL_BRANCH_CODE) and
                  (sd.PLANNED_STORE_DEAL_CODE = psd.PLANNED_STORE_DEAL_CODE) and
                  (sd.STORNO_EMPLOYEE_CODE is null)              
              ) as COMPLETED_BASE_QUANTITY,
                
              Decode(fo.BASE_FINANCIAL_PRODUCT_CODE, 
                fo.WORK_FINANCIAL_PRODUCT_CODE, 1,
                ( select
                    cr.FIXING
                  from
                    CURRENCIES c,
                    CURRENCY_RATES cr
                  where
                    (c.PRODUCT_CODE = fo.BASE_FINANCIAL_PRODUCT_CODE) and
                    (c.CURRENCY_CODE = cr.CURRENCY_CODE) and
                    (cr.RATE_DATE = LastFullCurrencyRateDate)
                ) /
                ( select
                    cr.FIXING
                  from
                    CURRENCIES c,
                    CURRENCY_RATES cr
                  where
                    (c.PRODUCT_CODE = fo.WORK_FINANCIAL_PRODUCT_CODE) and
                    (c.CURRENCY_CODE = cr.CURRENCY_CODE) and
                    (cr.RATE_DATE = LastFullCurrencyRateDate)
                )
              ) as DATE_BASE_TO_WORK_FIXING,

              ( select
                  Sign(Count(*))
                from
                  STORE_DEALS sd
                where
                  (sd.PLANNED_STORE_DEAL_BRANCH_CODE = psd.PLANNED_STORE_DEAL_BRANCH_CODE) and
                  (sd.PLANNED_STORE_DEAL_CODE = psd.PLANNED_STORE_DEAL_CODE) and
                  (sd.STORE_DEAL_DATE = LastFullCurrencyRateDate) and
                  (sd.STORNO_EMPLOYEE_CODE is null)
              ) as HAS_DATE_STORE_DEALS,
              
              psd.IS_ACTIVE as PSD_IS_ACTIVE

            from
              PLANNED_STORE_DEALS psd,
              REAL_FIN_MODEL_LINES rfml,
              FIN_ORDERS fo
            where
              (psd.BND_PROCESS_OBJECT_BRANCH_CODE = rfml.RFML_OBJECT_BRANCH_CODE) and
              (psd.BND_PROCESS_OBJECT_CODE = rfml.RFML_OBJECT_CODE) and
              
              (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and
              
              (fo.CLOSE_EMPLOYEE_CODE is null) and
              (fo.ANNUL_EMPLOYEE_CODE is null) and

              (rfml.ANNUL_EMPLOYEE_CODE is null) and
              
              (psd.ANNUL_EMPLOYEE_CODE is null) and
              (psd.CLOSE_EMPLOYEE_CODE is null) and
              
              ( ( (ARfmlObjectBranchCode is null) and 
                  (ARfmlObjectCode is null) 
                ) or
                ( (rfml.RFML_OBJECT_BRANCH_CODE = ARfmlObjectBranchCode) and
                  (rfml.RFML_OBJECT_CODE = ARfmlObjectCode)
                )
              ) and
              
              ( (ACurrencyCode is null) or
                ( fo.BASE_FINANCIAL_PRODUCT_CODE =
                  ( select
                      c.PRODUCT_CODE
                    from
                      CURRENCIES c
                    where
                      (c.CURRENCY_CODE = ACurrencyCode)
                  )
                ) or
                ( fo.WORK_FINANCIAL_PRODUCT_CODE =
                  ( select
                      c.PRODUCT_CODE
                    from
                      CURRENCIES c
                    where
                      (c.CURRENCY_CODE = ACurrencyCode)
                  )
                )
              )
          ) y
      )
    loop
      if (not AOptimize) or (x.HAS_DATE_STORE_DEALS = 1) or (x.PSD_IS_ACTIVE = 1) then
        update
          PLANNED_STORE_DEALS_FOR_EDIT psd
        set
          psd.QUANTITY = x.PLAN_WORK_QUANTITY,
          psd.COMPLETED_QUANTITY = x.COMPLETED_WORK_QUANTITY,
          psd.ACCOUNT_QUANTITY = x.PLAN_WORK_QUANTITY,
          psd.COMPLETED_ACCOUNT_QUANTITY = x.COMPLETED_WORK_QUANTITY
        where
          (psd.PLANNED_STORE_DEAL_BRANCH_CODE = x.PLANNED_STORE_DEAL_BRANCH_CODE) and
          (psd.PLANNED_STORE_DEAL_CODE = x.PLANNED_STORE_DEAL_CODE);
      end if;
    end loop;
  end;
  
  
  procedure EnsureSingleRecalcLock as
  begin
    insert into FIN_RECALC_LOCKS (CODE) values (1);
    delete FIN_RECALC_LOCKS frl where (frl.CODE = 1);
  end;
  
  
  function GetLastFinRecalcDate return Date as
    Result Date;
  begin
    select
      iv.LAST_FIN_RECALC_DATE
    into
      Result
    from
      INTERNAL_VALUES iv
    where
      (iv.CODE = 1);
      
    return Result;
  end;
  
  
  procedure UpdLastFinRecalcDate as
  begin
    update
      INTERNAL_VALUES iv
    set
      iv.LAST_FIN_RECALC_DATE = ContextDate
    where
      (iv.CODE = 1);         
  end;
  
    
  procedure UpdateRFMLPlannedStoreDeals(
    ARfmlObjectBranchCode in Number := null,
    ARfmlObjectCode in Number := null,
    ACurrencyCode in Number := null,
    AForceRecalc in Boolean := False,
    AOptimize in Boolean := True
  ) as
    LastFinRecalcDate Date;
  begin
    LastFinRecalcDate:= GetLastFinRecalcDate;
    if AForceRecalc or (LastFinRecalcDate is null) or (LastFinRecalcDate < ContextDate) or (ACurrencyCode is not null) then
      
      EnsureSingleRecalcLock;

      LastFinRecalcDate:= GetLastFinRecalcDate;
      if AForceRecalc or (LastFinRecalcDate is null) or (LastFinRecalcDate < ContextDate) or (ACurrencyCode is not null) then

        DoUpdateRFMLPlannedStoreDeals(ARfmlObjectBranchCode, ARfmlObjectCode, ACurrencyCode, AOptimize);
        
        UpdLastFinRecalcDate;
      end if;
        
    end if;
  end;
  
  procedure CheckInvoiceNoGenerator(AInvoiceNoGeneratorCode in Number) as
    InvalidInvoiceNoGeneratorNo Number;
  begin

    select
      Min(ing2.INVOICE_NO_GENERATOR_NO)
      
    into
      InvalidInvoiceNoGeneratorNo

    from
      INVOICE_NO_GENERATORS ing,
      INVOICE_NO_GENERATORS ing2
      
    where
      (ing.INVOICE_NO_GENERATOR_CODE = AInvoiceNoGeneratorCode) and
      
      (ing2.INVOICE_NO_GENERATOR_CODE <> ing.INVOICE_NO_GENERATOR_CODE) and
        
      ( (ing2.BEGIN_DATE between ing.BEGIN_DATE and ing.END_DATE) or
        (ing2.END_DATE between ing.BEGIN_DATE and ing.END_DATE) ) and
            
      ( exists(
          select
            1
          from
            DEPT_RELATIONS dr
          where
            (dr.ANCESTOR_DEPT_CODE = ing.DEPT_CODE) and
            (dr.DESCENDANT_DEPT_CODE = ing2.DEPT_CODE)     
        ) or
        
        exists(
          select
            1
          from
            DEPT_RELATIONS dr
          where
            (dr.ANCESTOR_DEPT_CODE = ing2.DEPT_CODE) and
            (dr.DESCENDANT_DEPT_CODE = ing.DEPT_CODE)     
        )
      ) and
          
      ( (ing.IS_PROFORM_INVOICE is null) or
        (ing2.IS_PROFORM_INVOICE is null) or
        (ing2.IS_PROFORM_INVOICE = ing.IS_PROFORM_INVOICE)
      ) and
          
      ( (ing.IS_APPROVED is null) or
        (ing2.IS_APPROVED is null) or
        (ing2.IS_APPROVED = ing.IS_APPROVED)
      ) and
          
      ( not exists(
          select
            1
          from
            ING_INVOICE_TYPES ingit
          where
            (ingit.INVOICE_NO_GENERATOR_CODE = ing.INVOICE_NO_GENERATOR_CODE)
        ) or
            
        not exists(
          select
            1
          from
            ING_INVOICE_TYPES ingit2
          where
            (ingit2.INVOICE_NO_GENERATOR_CODE = ing2.INVOICE_NO_GENERATOR_CODE)
        ) or
            
        exists(
          select
            1
          from
            ING_INVOICE_TYPES ingit,
            ING_INVOICE_TYPES ingit2
          where
            (ingit.INVOICE_NO_GENERATOR_CODE = ing.INVOICE_NO_GENERATOR_CODE) and
            (ingit2.INVOICE_NO_GENERATOR_CODE = ing2.INVOICE_NO_GENERATOR_CODE) and
            (ingit.INVOICE_TYPE_CODE = ingit2.INVOICE_TYPE_CODE)
        ) 
      ) and 

      ( not exists(
          select
            1
          from
            ING_CURRENCIES ingc
          where
            (ingc.INVOICE_NO_GENERATOR_CODE = ing.INVOICE_NO_GENERATOR_CODE)
        ) or
            
        not exists(
          select
            1
          from
            ING_CURRENCIES ingc2
          where
            (ingc2.INVOICE_NO_GENERATOR_CODE = ing2.INVOICE_NO_GENERATOR_CODE)
        ) or
            
        exists(
          select
            1
          from
            ING_CURRENCIES ingc,
            ING_CURRENCIES ingc2
          where
            (ingc.INVOICE_NO_GENERATOR_CODE = ing.INVOICE_NO_GENERATOR_CODE) and
            (ingc2.INVOICE_NO_GENERATOR_CODE = ing2.INVOICE_NO_GENERATOR_CODE) and
            (ingc.CURRENCY_CODE = ingc2.CURRENCY_CODE)
        ) 
      );
      
    if (InvalidInvoiceNoGeneratorNo is not null) then
      raise_application_error(-20002,  
        ServerMessages.SInvalidInvoiceNoGeneratorId || '(' ||
        'InvoiceNoGeneratorNo:f=' || MessageUtils.InternalFloatToStr(InvalidInvoiceNoGeneratorNo) || ')'
      );
    end if;
      
  end;
  
  procedure GenerateInvoiceNo(
    ADate in Date,
    ADept in Number,
    AInvoiceTypeCode in Number,
    AIsProformInvoice in Number,
    ACurrencyCode in Number,
    AIsApproved in Number,
    AMode in Number,  -- 0 = generate and update, 1 = preview invoice_no, 2 = preview generator_code
    AResult out Number
  ) is
    InvoiceNoGeneratorCode Number;
    MinInvoiceNo Number;
    MaxInvoiceNo Number;
    CurrentInvoiceNo Number;
  begin

    select
      Min(ing.INVOICE_NO_GENERATOR_CODE) keep (dense_rank first order by ing.INVOICE_NO_GENERATOR_NO) as INVOICE_NO_GENERATOR_CODE,
      Min(ing.MIN_INVOICE_NO)            keep (dense_rank first order by ing.INVOICE_NO_GENERATOR_NO) as MIN_INVOICE_NO,
      Min(ing.MAX_INVOICE_NO)            keep (dense_rank first order by ing.INVOICE_NO_GENERATOR_NO) as MAX_INVOICE_NO,
      Min(ing.CURRENT_INVOICE_NO)        keep (dense_rank first order by ing.INVOICE_NO_GENERATOR_NO) as CURRENT_INVOICE_NO

    into
      InvoiceNoGeneratorCode,
      MinInvoiceNo,
      MaxInvoiceNo,
      CurrentInvoiceNo

    from
      INVOICE_NO_GENERATORS ing
      
    where
      (ADate between ing.BEGIN_DATE and ing.END_DATE) and
            
      exists( 
        select
          1
        from
          DEPT_RELATIONS dr
        where
          (dr.ANCESTOR_DEPT_CODE = ing.DEPT_CODE) and
          (dr.DESCENDANT_DEPT_CODE = ADept)     
      ) and
          
      ( (ing.IS_PROFORM_INVOICE is null) or
        (ing.IS_PROFORM_INVOICE = AIsProformInvoice)
      ) and
          
      ( (ing.IS_APPROVED is null) or
        (ing.IS_APPROVED = AIsApproved)
      ) and
          
      ( not exists(
          select
            1
          from
            ING_INVOICE_TYPES ingit
          where
            (ingit.INVOICE_NO_GENERATOR_CODE = ing.INVOICE_NO_GENERATOR_CODE)
        ) or
            
        exists(
          select
            1
          from
            ING_INVOICE_TYPES ingit
          where
            (ingit.INVOICE_NO_GENERATOR_CODE = ing.INVOICE_NO_GENERATOR_CODE) and
            (ingit.INVOICE_TYPE_CODE = AInvoiceTypeCode)
        ) 
      ) and 

      ( not exists(
          select
            1
          from
            ING_CURRENCIES ingc
          where
            (ingc.INVOICE_NO_GENERATOR_CODE = ing.INVOICE_NO_GENERATOR_CODE)
        ) or
            
        exists(
          select
            1
          from
            ING_CURRENCIES ingc
          where
            (ingc.INVOICE_NO_GENERATOR_CODE = ing.INVOICE_NO_GENERATOR_CODE) and
            (ingc.CURRENCY_CODE = ACurrencyCode)
        ) 
      );

    if (AMode = 2) then
      
      AResult:= InvoiceNoGeneratorCode;

    elsif (InvoiceNoGeneratorCode is null) or (CurrentInvoiceNo >= MaxInvoiceNo) then
      
      AResult:= null;
      
    else
      
      if (CurrentInvoiceNo is null) then
        AResult:= MinInvoiceNo;
      else
        AResult:= CurrentInvoiceNo + 1;
      end if;

      if (AMode = 0) then
        update
          INVOICE_NO_GENERATORS_FOR_EDIT ing
        set
          ing.CURRENT_INVOICE_NO = AResult
        where
          (ing.INVOICE_NO_GENERATOR_CODE = InvoiceNoGeneratorCode);
      end if;

    end if;
    
  end;
  
  function InvoiceNoGeneratorCode(
    ADate in Date,
    ADept in Number,
    AInvoiceTypeCode in Number,
    AIsProformInvoice in Number,
    ACurrencyCode in Number,
    AIsApproved in Number
  ) return Number is
    Result Number;
  begin
    GenerateInvoiceNo(
      ADate,
      ADept,
      AInvoiceTypeCode,
      AIsProformInvoice,
      ACurrencyCode,
      AIsApproved,
      2,
      Result
    );
    
    return Result;      
  end;
  
  procedure UpdateFinOrderIsComplete(
    AFinOrderCode in Number
  ) is
    NewIsComplete Number;
    OldIsComplete Number;
  begin

    select
      case
        when
          (fo.ANNUL_EMPLOYEE_CODE is null) and
          
          ( (fo.CLOSE_EMPLOYEE_CODE is not null) or
          
            ( (fo.ACTIVATE_EMPLOYEE_CODE is not null) and
            
              exists(
                select
                  1
                from
                  REAL_FIN_MODEL_LINES rfml
                where
                  (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and
                  (rfml.ANNUL_EMPLOYEE_CODE is null)
              ) and
                  
              not exists(
                select
                  /*+ORDERED*/
                  1
                from
                  REAL_FIN_MODEL_LINES rfml,
                  PLANNED_STORE_DEALS psd
                where
                  (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and
                  (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANCH_CODE) and
                  (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and
                  (rfml.ANNUL_EMPLOYEE_CODE is null) and
                  (psd.COMPLETED_QUANTITY <> psd.QUANTITY)
              )
            )
          )
        then
          1
        else
          0
      end as NEW_IS_COMPLETE,
      fo.IS_COMPLETE as OLD_IS_COMPLETE
    into
      NewIsComplete,
      OldIsComplete
    from
      FIN_ORDERS fo
    where
      (fo.FIN_ORDER_CODE = AFinOrderCode);
      

    if (NewIsComplete <> OldIsComplete) then
  
      if StateUtils.InFofeUpdate then
        
        update
          FIN_ORDERS fo
        set
          fo.IS_COMPLETE = NewIsComplete
        where
          (fo.FIN_ORDER_CODE = AFinOrderCode);
      
      else
        
        StateUtils.BeginFofeUpdate;
        begin
    
          update
            FIN_ORDERS fo
          set
            fo.IS_COMPLETE = NewIsComplete
          where
            (fo.FIN_ORDER_CODE = AFinOrderCode);

        exception
          when others then
            StateUtils.EndFofeUpdate;
            raise;
        end;
        StateUtils.EndFofeUpdate;
        
      end if;
      
    end if;
  end;  
  
end FinanceUtils;
/
