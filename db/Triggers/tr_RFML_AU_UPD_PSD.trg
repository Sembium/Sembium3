create or replace trigger tr_RFML_AU_UPD_PSD
  after update on REAL_FIN_MODEL_LINES  
  for each row
begin
  if (:new.RFML_OBJECT_BRANCH_CODE <> :old.RFML_OBJECT_BRANCH_CODE) or
     (:new.RFML_OBJECT_CODE <> :old.RFML_OBJECT_CODE) then
    raise_application_error(-20000, 'Internal error: REAL_FIN_MODEL_LINES key should not be changed');
  end if;

  update
    PLANNED_STORE_DEALS_FOR_EDIT psd
  set
    (
      STORE_DEAL_TYPE_CODE,
      PRIORITY_CODE,
      STORE_CODE,
      STORE_DEAL_BEGIN_DATE,
      STORE_DEAL_END_DATE,
      PRODUCT_CODE,
      QUANTITY,
      ACCOUNT_QUANTITY,
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
    ( select
        sdt.STORE_DEAL_TYPE_CODE,
        fo.PRIORITY_CODE,
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
    )
  where
    (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :old.RFML_OBJECT_BRANCH_CODE) and
    (psd.BND_PROCESS_OBJECT_CODE = :old.RFML_OBJECT_CODE)
  ; 
  
end tr_RFML_AU_UPD_PSD;
/
