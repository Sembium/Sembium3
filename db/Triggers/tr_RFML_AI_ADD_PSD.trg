create or replace trigger tr_RFML_AI_ADD_PSD
  after insert on REAL_FIN_MODEL_LINES  
  for each row
begin
  insert into PLANNED_STORE_DEALS_FOR_EDIT 
  (
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
    :new.RFML_OBJECT_BRANCH_CODE as PLANNED_STORE_DEAL_BRANCH_CODE,
    seq_PLANNED_STORE_DEALS.NextVal as PLANNED_STORE_DEAL_CODE,
    1 as PLANNED_STORE_DEAL_TYPE_CODE,
    sdt.STORE_DEAL_TYPE_CODE,
    fo.PRIORITY_CODE,
    0 as IS_PLANNED_MANUALLY,
    :new.RFML_OBJECT_BRANCH_CODE as BND_PROCESS_OBJECT_BRANCH_CODE,
    :new.RFML_OBJECT_CODE as BND_PROCESS_OBJECT_CODE,
    fo.FIN_PROCESS_CODE as BND_PROCESS_CODE,
    :new.FIN_STORE_CODE as STORE_CODE,
    ( fo.BASE_DATE + :new.MOVEMENT_OFFSET_DAYS +
      Decode(fo.FM_MOVEMENT_OFFSET_TYPE_CODE,
        CommonConsts.fmmotBeginning, Decode(:new.IN_OUT, 1, :new.MOVEMENT_DURATION_DAYS, 0),
        CommonConsts.fmmotEnd, Decode(:new.IN_OUT, -1, -:new.MOVEMENT_DURATION_DAYS, 0)
      )
    ) as STORE_DEAL_BEGIN_DATE,
    ( fo.BASE_DATE + :new.MOVEMENT_OFFSET_DAYS +
      Decode(fo.FM_MOVEMENT_OFFSET_TYPE_CODE,
        CommonConsts.fmmotBeginning, Decode(:new.IN_OUT, 1, :new.MOVEMENT_DURATION_DAYS, 0),
        CommonConsts.fmmotEnd, Decode(:new.IN_OUT, -1, -:new.MOVEMENT_DURATION_DAYS, 0)
      )
    ) as STORE_DEAL_END_DATE,
    fo.WORK_FINANCIAL_PRODUCT_CODE,
    ( :new.LINE_QUANTITY_PERCENT * 
      fo.BASE_QUANTITY *
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
            (cr.RATE_DATE = ContextDate)
        ) /
        ( select
            cr.FIXING
          from
            CURRENCIES c,
            CURRENCY_RATES cr
          where
            (c.PRODUCT_CODE = fo.WORK_FINANCIAL_PRODUCT_CODE) and
            (c.CURRENCY_CODE = cr.CURRENCY_CODE) and
            (cr.RATE_DATE = ContextDate)
        )
      )
    ) as QUANTITY,
    ( :new.LINE_QUANTITY_PERCENT * 
      fo.BASE_QUANTITY *
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
            (cr.RATE_DATE = ContextDate)
        ) /
        ( select
            cr.FIXING
          from
            CURRENCIES c,
            CURRENCY_RATES cr
          where
            (c.PRODUCT_CODE = fo.WORK_FINANCIAL_PRODUCT_CODE) and
            (c.CURRENCY_CODE = cr.CURRENCY_CODE) and
            (cr.RATE_DATE = ContextDate)
        )
      )
    ) as ACCOUNT_QUANTITY,
    LoginContext.UserCode as CREATE_EMPLOYEE_CODE,
    ContextDate as CREATE_DATE,
    ContextTime as CREATE_TIME,
    LoginContext.UserCode as CHANGE_EMPLOYEE_CODE,
    ContextDate as CHANGE_DATE,
    ContextTime as CHANGE_TIME,
    fo.CLOSE_EMPLOYEE_CODE,
    fo.CLOSE_DATE,
    fo.CLOSE_TIME,
    Coalesce(:new.ANNUL_EMPLOYEE_CODE, fo.ANNUL_EMPLOYEE_CODE) as ANNUL_EMPLOYEE_CODE,
    Coalesce(:new.ANNUL_DATE, fo.ANNUL_DATE) as ANNUL_DATE,
    Coalesce(:new.ANNUL_TIME, fo.ANNUL_TIME) as ANNUL_TIME
  from
    FIN_ORDERS fo,
    STORE_DEAL_TYPES sdt,
    PRODUCTS wp
  where
    (fo.WORK_FINANCIAL_PRODUCT_CODE = wp.PRODUCT_CODE) and  
    (fo.FIN_ORDER_CODE = :new.FIN_ORDER_CODE) and
    (sdt.IN_OUT = :new.IN_OUT)
  ; 
  
end tr_RFML_AI_ADD_PSD;
/
