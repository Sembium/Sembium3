create or replace trigger tr_PRODPERFE_IIU
  instead of insert or update on PRODUCT_PERIODS_FOR_EDIT
  for each row
declare
  OldInvestmentLevelValues MiscUtils.TNumberArray;
  NewInvestmentLevelValues MiscUtils.TNumberArray;

  MaxInvestmentLevel Number := 6;
  FirstOldInvestmentLevel Number;
  InvestmentLevel Number;
  AggrInvestmentValue Number;

  HasOldSaleAcquireData Boolean;
  HasNewSaleAcquireData Boolean;  
  HasOldSaleLeaseData Boolean;
  HasNewSaleLeaseData Boolean;
  HasOldSaleData Boolean;
  HasNewSaleData Boolean;

  HasOldDeliveryAcquireData Boolean;
  HasNewDeliveryAcquireData Boolean;  
  HasOldDeliveryLeaseData Boolean;
  HasNewDeliveryLeaseData Boolean;
  HasOldDeliveryData Boolean;
  HasNewDeliveryData Boolean;

  HasOldBorderRelData MiscUtils.TBooleanArray;
  HasNewBorderRelData MiscUtils.TBooleanArray;
  
  HasOldBorderRelObtData MiscUtils.TBooleanMatrix;
  HasNewBorderRelObtData MiscUtils.TBooleanMatrix;

  BorderRelStores MiscUtils.TNumberArray;
  BorderRelResolveDurationDays MiscUtils.TNumberArray;
  
  BorderRelObtSinglePrices MiscUtils.TNumberMatrix;
  BorderRelObtCurrencies MiscUtils.TNumberMatrix;
  BorderRelObtLeaseDateUnits MiscUtils.TNumberMatrix;

  BorderRelType Number;
  ObtainmentType Number;
  
  IntersectCount Number;
  CommonProductExists Number;  

  NewPrecisionLevelCode Number;  
  NewBalanceQuantity Number;  
  NewMinOrderQuantity Number;  
  NewMaxOrderQuantity Number;  
  NewInvestmentLevel1Value Number;  
  NewInvestmentLevel2Value Number;  
  NewInvestmentLevel3Value Number;  
  NewInvestmentLevel4Value Number;  
  NewInvestmentLevel5Value Number;  
  NewInvestmentLevel6Value Number;  
  NewSaleStoreCode Number;  
  NewSaleAcquireSinglePrice Number;  
  NewSaleAcquireCurrencyCode Number;  
  NewSaleLeaseSinglePrice Number;  
  NewSaleLeaseCurrencyCode Number;  
  NewSaleLeaseDateUnitCode Number;  
  NewSaleResolveDurationDays Number;  
  NewDlvyStoreCode Number;  
  NewDlvyAcquireSinglePrice Number;  
  NewDlvyAcquireCurrencyCode Number;  
  NewDlvyLeaseSinglePrice Number;  
  NewDlvyLeaseCurrencyCode Number;  
  NewDlvyLeaseDateUnitCode Number;  
  NewDlvyResolveDurationDays Number;  
  NewIsPsdPriceFromDelivery Number;  

  HasSaleProcessRole Number;
  HasDeliveryProcessRole Number;
      
begin

  StateUtils.BeginProdperfeUpdate;
  begin
    
    select
      Count(*)
    into
      CommonProductExists
    from
      DEFINITE_PRODUCTS dp
    where
      (dp.PRODUCT_CODE = :new.PRODUCT_CODE) and
      (dp.COMMON_PRODUCT_CODE is not null);

    if (CommonProductExists = 1) then
      select
        Count(*)
      into
        IntersectCount
      from
        DEFINITE_PRODUCTS dp,
        PRODUCT_PERIODS pp
      where
        (dp.PRODUCT_CODE = :new.PRODUCT_CODE) and
        (pp.PRODUCT_CODE = dp.COMMON_PRODUCT_CODE) and
        (pp.BEGIN_DATE <= :new.BEGIN_DATE) and
        (:new.END_DATE <= pp.END_DATE);
        
      if (IntersectCount <> 1) then
        raise_application_error(-20002,
          ServerMessages.SIncorrectCommonProductPerId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
        );
      end if;
    end if;

    select
      Count(*)
    into
      HasSaleProcessRole
    from
      PRODUCT_BORDER_RELS pbr
    where
      (pbr.PRODUCT_CODE = :new.PRODUCT_CODE) and
      (pbr.BORDER_REL_TYPE_CODE = CommonConsts.brtClient);

    select
      Count(*)
    into
      HasDeliveryProcessRole
    from
      PRODUCT_BORDER_RELS pbr
    where
      (pbr.PRODUCT_CODE = :new.PRODUCT_CODE) and
      (pbr.BORDER_REL_TYPE_CODE = CommonConsts.brtVendor);

    select
      Decode(:new.OVERRIDE_PRECISION_LEVEL, 1, :new.PRECISION_LEVEL_CODE, Max(cp_pper.PRECISION_LEVEL_CODE)),
      Decode(:new.OVERRIDE_BALANCE_QUANTITY, 1, :new.BALANCE_QUANTITY, Max(cp_pper.BALANCE_QUANTITY)),
      Decode(:new.OVERRIDE_MIN_ORDER_QUANTITY, 1, :new.MIN_ORDER_QUANTITY, Max(cp_pper.MIN_ORDER_QUANTITY)),
      Decode(:new.OVERRIDE_MAX_ORDER_QUANTITY, 1, :new.MAX_ORDER_QUANTITY, Max(cp_pper.MAX_ORDER_QUANTITY)),
      Decode(:new.OVERRIDE_INV_LEVEL_1_VALUE, 1, :new.INVESTMENT_LEVEL_1_VALUE, Max(cp_pper.INVESTMENT_LEVEL_1_VALUE)),
      Decode(:new.OVERRIDE_INV_LEVEL_2_VALUE, 1, :new.INVESTMENT_LEVEL_2_VALUE, Max(cp_pper.INVESTMENT_LEVEL_2_VALUE)),
      Decode(:new.OVERRIDE_INV_LEVEL_3_VALUE, 1, :new.INVESTMENT_LEVEL_3_VALUE, Max(cp_pper.INVESTMENT_LEVEL_3_VALUE)),
      Decode(:new.OVERRIDE_INV_LEVEL_4_VALUE, 1, :new.INVESTMENT_LEVEL_4_VALUE, Max(cp_pper.INVESTMENT_LEVEL_4_VALUE)),
      Decode(:new.OVERRIDE_INV_LEVEL_5_VALUE, 1, :new.INVESTMENT_LEVEL_5_VALUE, Max(cp_pper.INVESTMENT_LEVEL_5_VALUE)),
      Decode(:new.OVERRIDE_INV_LEVEL_6_VALUE, 1, :new.INVESTMENT_LEVEL_6_VALUE, Max(cp_pper.INVESTMENT_LEVEL_6_VALUE)),
      Decode(:new.OVERRIDE_S_STORE, 1, :new.SALE_STORE_CODE, Decode(HasSaleProcessRole, 1, Max(cp_pper.SALE_STORE_CODE))),
      Decode(:new.OVERRIDE_S_ACQUIRE_PRICE, 1, :new.SALE_ACQUIRE_SINGLE_PRICE, Decode(HasSaleProcessRole, 1, Max(cp_pper.SALE_ACQUIRE_SINGLE_PRICE))),
      Decode(:new.OVERRIDE_S_ACQUIRE_PRICE, 1, :new.SALE_ACQUIRE_CURRENCY_CODE, Decode(HasSaleProcessRole, 1, Max(cp_pper.SALE_ACQUIRE_CURRENCY_CODE))),
      Decode(:new.OVERRIDE_S_LEASE_PRICE, 1, :new.SALE_LEASE_SINGLE_PRICE, Decode(HasSaleProcessRole, 1, Max(cp_pper.SALE_LEASE_SINGLE_PRICE))),
      Decode(:new.OVERRIDE_S_LEASE_PRICE, 1, :new.SALE_LEASE_CURRENCY_CODE, Decode(HasSaleProcessRole, 1, Max(cp_pper.SALE_LEASE_CURRENCY_CODE))),
      Decode(:new.OVERRIDE_S_LEASE_PRICE, 1, :new.SALE_LEASE_DATE_UNIT_CODE, Decode(HasSaleProcessRole, 1, Max(cp_pper.SALE_LEASE_DATE_UNIT_CODE))),      
      Decode(:new.OVERRIDE_S_RESOLVE_DUR_DAYS, 1, :new.SALE_RESOLVE_DURATION_DAYS, Decode(HasSaleProcessRole, 1, Max(cp_pper.SALE_RESOLVE_DURATION_DAYS))),
      Decode(:new.OVERRIDE_D_STORE, 1, :new.DELIVERY_STORE_CODE, Decode(HasDeliveryProcessRole, 1, Max(cp_pper.DELIVERY_STORE_CODE))),
      Decode(:new.OVERRIDE_D_ACQUIRE_PRICE, 1, :new.DELIVERY_ACQUIRE_SINGLE_PRICE, Decode(HasDeliveryProcessRole, 1, Max(cp_pper.DELIVERY_ACQUIRE_SINGLE_PRICE))),
      Decode(:new.OVERRIDE_D_ACQUIRE_PRICE, 1, :new.DELIVERY_ACQUIRE_CURRENCY_CODE, Decode(HasDeliveryProcessRole, 1, Max(cp_pper.DELIVERY_ACQUIRE_CURRENCY_CODE))),
      Decode(:new.OVERRIDE_D_LEASE_PRICE, 1, :new.DELIVERY_LEASE_SINGLE_PRICE, Decode(HasDeliveryProcessRole, 1, Max(cp_pper.DELIVERY_LEASE_SINGLE_PRICE))),
      Decode(:new.OVERRIDE_D_LEASE_PRICE, 1, :new.DELIVERY_LEASE_CURRENCY_CODE, Decode(HasDeliveryProcessRole, 1, Max(cp_pper.DELIVERY_LEASE_CURRENCY_CODE))),
      Decode(:new.OVERRIDE_D_LEASE_PRICE, 1, :new.DELIVERY_LEASE_DATE_UNIT_CODE, Decode(HasDeliveryProcessRole, 1, Max(cp_pper.DELIVERY_LEASE_DATE_UNIT_CODE))),
      Decode(:new.OVERRIDE_D_RESOLVE_DUR_DAYS, 1, :new.DELIVERY_RESOLVE_DURATION_DAYS, Decode(HasDeliveryProcessRole, 1, Max(cp_pper.DELIVERY_RESOLVE_DURATION_DAYS))),
      Decode(:new.OVERRIDE_IS_PSD_PRICE_FROM_DLV, 1, :new.IS_PSD_PRICE_FROM_DELIVERY, Max(cp_pper.IS_PSD_PRICE_FROM_DELIVERY))
    into
      NewPrecisionLevelCode,      
      NewBalanceQuantity,      
      NewMinOrderQuantity,      
      NewMaxOrderQuantity,      
      NewInvestmentLevel1Value,      
      NewInvestmentLevel2Value,      
      NewInvestmentLevel3Value,      
      NewInvestmentLevel4Value,      
      NewInvestmentLevel5Value,      
      NewInvestmentLevel6Value,      
      NewSaleStoreCode,      
      NewSaleAcquireSinglePrice,      
      NewSaleAcquireCurrencyCode,      
      NewSaleLeaseSinglePrice,      
      NewSaleLeaseCurrencyCode,      
      NewSaleLeaseDateUnitCode,      
      NewSaleResolveDurationDays,      
      NewDlvyStoreCode,      
      NewDlvyAcquireSinglePrice,      
      NewDlvyAcquireCurrencyCode,      
      NewDlvyLeaseSinglePrice,      
      NewDlvyLeaseCurrencyCode,      
      NewDlvyLeaseDateUnitCode,      
      NewDlvyResolveDurationDays,      
      NewIsPsdPriceFromDelivery     
    from
      DEFINITE_PRODUCTS dp,
      CONCRETE_PRODUCTS cp,
      PRODUCT_PERIODS cp_pper
    where
      (dp.PRODUCT_CODE = :new.PRODUCT_CODE) and
      (cp.PRODUCT_CODE = dp.PRODUCT_CODE) and
      (cp_pper.PRODUCT_CODE = dp.COMMON_PRODUCT_CODE) and
      (cp_pper.BEGIN_DATE <= :new.BEGIN_DATE) and
      (cp_pper.END_DATE >= :new.END_DATE);


    if inserting then
      
      insert into PRODUCT_PERIODS
      (
        PRODUCT_CODE,
        PRODUCT_PERIOD_CODE,
        BEGIN_DATE,
        END_DATE,
        DOC_BRANCH_CODE,
        DOC_CODE,
        OVERRIDE_PRECISION_LEVEL,
        PRECISION_LEVEL_CODE,
        OVERRIDE_BALANCE_QUANTITY,
        BALANCE_QUANTITY,
        OVERRIDE_MIN_ORDER_QUANTITY,
        MIN_ORDER_QUANTITY,
        OVERRIDE_MAX_ORDER_QUANTITY,
        MAX_ORDER_QUANTITY,
        OVERRIDE_INV_LEVEL_1_VALUE,
        INVESTMENT_LEVEL_1_VALUE,
        OVERRIDE_INV_LEVEL_2_VALUE,
        INVESTMENT_LEVEL_2_VALUE,
        OVERRIDE_INV_LEVEL_3_VALUE,
        INVESTMENT_LEVEL_3_VALUE,
        OVERRIDE_INV_LEVEL_4_VALUE,
        INVESTMENT_LEVEL_4_VALUE,
        OVERRIDE_INV_LEVEL_5_VALUE,
        INVESTMENT_LEVEL_5_VALUE,
        OVERRIDE_INV_LEVEL_6_VALUE,
        INVESTMENT_LEVEL_6_VALUE,
        OVERRIDE_S_STORE,
        SALE_STORE_CODE,
        OVERRIDE_S_ACQUIRE_PRICE,
        SALE_ACQUIRE_SINGLE_PRICE,
        SALE_ACQUIRE_CURRENCY_CODE,
        OVERRIDE_S_LEASE_PRICE,
        SALE_LEASE_SINGLE_PRICE,
        SALE_LEASE_CURRENCY_CODE,
        SALE_LEASE_DATE_UNIT_CODE,
        OVERRIDE_S_RESOLVE_DUR_DAYS,
        SALE_RESOLVE_DURATION_DAYS,
        OVERRIDE_D_STORE,
        DELIVERY_STORE_CODE,
        OVERRIDE_D_ACQUIRE_PRICE,
        DELIVERY_ACQUIRE_SINGLE_PRICE,
        DELIVERY_ACQUIRE_CURRENCY_CODE,
        OVERRIDE_D_LEASE_PRICE,
        DELIVERY_LEASE_SINGLE_PRICE,
        DELIVERY_LEASE_CURRENCY_CODE,
        DELIVERY_LEASE_DATE_UNIT_CODE,
        OVERRIDE_D_RESOLVE_DUR_DAYS,
        DELIVERY_RESOLVE_DURATION_DAYS,
        OVERRIDE_IS_PSD_PRICE_FROM_DLV,
        IS_PSD_PRICE_FROM_DELIVERY,
        CREATE_EMPLOYEE_CODE,
        CREATE_DATE,
        CREATE_TIME,
        CHANGE_EMPLOYEE_CODE,
        CHANGE_DATE,
        CHANGE_TIME
      )
      values
      (
        :new.PRODUCT_CODE,
        :new.PRODUCT_PERIOD_CODE,
        :new.BEGIN_DATE,
        :new.END_DATE,
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.OVERRIDE_PRECISION_LEVEL,
        NewPrecisionLevelCode,
        :new.OVERRIDE_BALANCE_QUANTITY,
        NewBalanceQuantity,
        :new.OVERRIDE_MIN_ORDER_QUANTITY,
        NewMinOrderQuantity,
        :new.OVERRIDE_MAX_ORDER_QUANTITY,
        NewMaxOrderQuantity,
        :new.OVERRIDE_INV_LEVEL_1_VALUE,
        NewInvestmentLevel1Value,
        :new.OVERRIDE_INV_LEVEL_2_VALUE,
        NewInvestmentLevel2Value,
        :new.OVERRIDE_INV_LEVEL_3_VALUE,
        NewInvestmentLevel3Value,
        :new.OVERRIDE_INV_LEVEL_4_VALUE,
        NewInvestmentLevel4Value,
        :new.OVERRIDE_INV_LEVEL_5_VALUE,
        NewInvestmentLevel5Value,
        :new.OVERRIDE_INV_LEVEL_6_VALUE,
        NewInvestmentLevel6Value,
        :new.OVERRIDE_S_STORE,
        NewSaleStoreCode,
        :new.OVERRIDE_S_ACQUIRE_PRICE,
        NewSaleAcquireSinglePrice,
        NewSaleAcquireCurrencyCode,
        :new.OVERRIDE_S_LEASE_PRICE,
        NewSaleLeaseSinglePrice,
        NewSaleLeaseCurrencyCode,
        NewSaleLeaseDateUnitCode,
        :new.OVERRIDE_S_RESOLVE_DUR_DAYS,
        NewSaleResolveDurationDays,
        :new.OVERRIDE_D_STORE,
        NewDlvyStoreCode,
        :new.OVERRIDE_D_ACQUIRE_PRICE,
        NewDlvyAcquireSinglePrice,
        NewDlvyAcquireCurrencyCode,
        :new.OVERRIDE_D_LEASE_PRICE,
        NewDlvyLeaseSinglePrice,
        NewDlvyLeaseCurrencyCode,
        NewDlvyLeaseDateUnitCode,
        :new.OVERRIDE_D_RESOLVE_DUR_DAYS,
        NewDlvyResolveDurationDays,
        :new.OVERRIDE_IS_PSD_PRICE_FROM_DLV,
        NewIsPsdPriceFromDelivery,
        :new.CREATE_EMPLOYEE_CODE,
        :new.CREATE_DATE,
        :new.CREATE_TIME,
        :new.CHANGE_EMPLOYEE_CODE,
        :new.CHANGE_DATE,
        :new.CHANGE_TIME
      );
  
    end if;
    
    
    if updating then
      
      if (:new.PRODUCT_CODE <> :old.PRODUCT_CODE) or
         (:new.PRODUCT_PERIOD_CODE <> :old.PRODUCT_PERIOD_CODE) then
        raise_application_error(-20000, 'Internal error: PRODUCT_PERIODS key should not be changed');
      end if;
        
      update
        PRODUCT_PERIODS pp
          
      set
        BEGIN_DATE = :new.BEGIN_DATE, 
        pp.END_DATE = :new.END_DATE,
        pp.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        pp.DOC_CODE = :new.DOC_CODE,
        pp.OVERRIDE_PRECISION_LEVEL = :new.OVERRIDE_PRECISION_LEVEL,
        pp.PRECISION_LEVEL_CODE = NewPrecisionLevelCode,
        pp.OVERRIDE_BALANCE_QUANTITY  = :new.OVERRIDE_BALANCE_QUANTITY,
        pp.BALANCE_QUANTITY = NewBalanceQuantity,
        pp.OVERRIDE_MIN_ORDER_QUANTITY  = :new.OVERRIDE_MIN_ORDER_QUANTITY,
        pp.MIN_ORDER_QUANTITY = NewMinOrderQuantity,
        pp.OVERRIDE_MAX_ORDER_QUANTITY  = :new.OVERRIDE_MAX_ORDER_QUANTITY,
        pp.MAX_ORDER_QUANTITY = NewMaxOrderQuantity,
        pp.OVERRIDE_INV_LEVEL_1_VALUE = :new.OVERRIDE_INV_LEVEL_1_VALUE,
        pp.INVESTMENT_LEVEL_1_VALUE = NewInvestmentLevel1Value,
        pp.OVERRIDE_INV_LEVEL_2_VALUE = :new.OVERRIDE_INV_LEVEL_2_VALUE,
        pp.INVESTMENT_LEVEL_2_VALUE = NewInvestmentLevel2Value,
        pp.OVERRIDE_INV_LEVEL_3_VALUE = :new.OVERRIDE_INV_LEVEL_3_VALUE,
        pp.INVESTMENT_LEVEL_3_VALUE = NewInvestmentLevel3Value,
        pp.OVERRIDE_INV_LEVEL_4_VALUE = :new.OVERRIDE_INV_LEVEL_4_VALUE,
        pp.INVESTMENT_LEVEL_4_VALUE = NewInvestmentLevel4Value,
        pp.OVERRIDE_INV_LEVEL_5_VALUE = :new.OVERRIDE_INV_LEVEL_5_VALUE,
        pp.INVESTMENT_LEVEL_5_VALUE = NewInvestmentLevel5Value,
        pp.OVERRIDE_INV_LEVEL_6_VALUE = :new.OVERRIDE_INV_LEVEL_6_VALUE,
        pp.INVESTMENT_LEVEL_6_VALUE = NewInvestmentLevel6Value,
        pp.OVERRIDE_S_STORE = :new.OVERRIDE_S_STORE,
        pp.SALE_STORE_CODE = NewSaleStoreCode,
        pp.OVERRIDE_S_ACQUIRE_PRICE = :new.OVERRIDE_S_ACQUIRE_PRICE,
        pp.SALE_ACQUIRE_SINGLE_PRICE = NewSaleAcquireSinglePrice,
        pp.SALE_ACQUIRE_CURRENCY_CODE = NewSaleAcquireCurrencyCode,
        pp.OVERRIDE_S_LEASE_PRICE = :new.OVERRIDE_S_LEASE_PRICE,
        pp.SALE_LEASE_SINGLE_PRICE = NewSaleLeaseSinglePrice,
        pp.SALE_LEASE_CURRENCY_CODE = NewSaleLeaseCurrencyCode,
        pp.SALE_LEASE_DATE_UNIT_CODE = NewSaleLeaseDateUnitCode,
        pp.OVERRIDE_S_RESOLVE_DUR_DAYS = :new.OVERRIDE_S_RESOLVE_DUR_DAYS,
        pp.SALE_RESOLVE_DURATION_DAYS = NewSaleResolveDurationDays,
        pp.OVERRIDE_D_STORE = :new.OVERRIDE_D_STORE,
        pp.DELIVERY_STORE_CODE = NewDlvyStoreCode,
        pp.OVERRIDE_D_ACQUIRE_PRICE = :new.OVERRIDE_D_ACQUIRE_PRICE,
        pp.DELIVERY_ACQUIRE_SINGLE_PRICE  = NewDlvyAcquireSinglePrice,
        pp.DELIVERY_ACQUIRE_CURRENCY_CODE = NewDlvyAcquireCurrencyCode,
        pp.OVERRIDE_D_LEASE_PRICE = :new.OVERRIDE_D_LEASE_PRICE,
        pp.DELIVERY_LEASE_SINGLE_PRICE = NewDlvyLeaseSinglePrice,
        pp.DELIVERY_LEASE_CURRENCY_CODE = NewDlvyLeaseCurrencyCode,
        pp.DELIVERY_LEASE_DATE_UNIT_CODE = NewDlvyLeaseDateUnitCode,
        pp.OVERRIDE_D_RESOLVE_DUR_DAYS = :new.OVERRIDE_D_RESOLVE_DUR_DAYS,
        pp.DELIVERY_RESOLVE_DURATION_DAYS = NewDlvyResolveDurationDays,
        pp.OVERRIDE_IS_PSD_PRICE_FROM_DLV = :new.OVERRIDE_IS_PSD_PRICE_FROM_DLV,
        pp.IS_PSD_PRICE_FROM_DELIVERY = NewIsPsdPriceFromDelivery,
        pp.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
        pp.CREATE_DATE = :new.CREATE_DATE,
        pp.CREATE_TIME = :new.CREATE_TIME,
        pp.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        pp.CHANGE_DATE = :new.CHANGE_DATE,
        pp.CHANGE_TIME = :new.CHANGE_TIME

      where
        (pp.PRODUCT_CODE = :new.PRODUCT_CODE) and
        (pp.PRODUCT_PERIOD_CODE = :new.PRODUCT_PERIOD_CODE);
          
      if (:old.DOC_BRANCH_CODE is not null) and
         (:old.DOC_CODE is not null) and
         ( (:old.DOC_BRANCH_CODE <> Coalesce(:new.DOC_BRANCH_CODE, 0)) or
           (:old.DOC_CODE <> Coalesce(:new.DOC_CODE, 0)) ) then
           
         delete
           DOCS_FOR_EDIT dfe
         where
           (dfe.DOC_BRANCH_CODE = :old.DOC_BRANCH_CODE) and
           (dfe.DOC_CODE = :old.DOC_CODE);
           
      end if;
        
        
      -- updatevai pokritite periodi    
      -- trigger update of all fields
      update
        PRODUCT_PERIODS_FOR_EDIT pp
      set
        pp.PRECISION_LEVEL_CODE = pp.PRECISION_LEVEL_CODE
      where
        exists(
          select
            1
          from
            DEFINITE_PRODUCTS dp,
            CONCRETE_PRODUCTS cp
          where
            (dp.COMMON_PRODUCT_CODE = :new.PRODUCT_CODE) and
            (dp.PRODUCT_CODE = pp.PRODUCT_CODE) and
            (cp.PRODUCT_CODE = dp.PRODUCT_CODE)
        ) and
        (pp.BEGIN_DATE >= :new.BEGIN_DATE) and
        (pp.END_DATE <= :new.END_DATE);
        

    end if;


    if inserting or
       (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
       (:new.END_DATE <> :old.END_DATE) then         
      ProductUtils.CheckProductPeriods(:new.PRODUCT_CODE, :new.PRODUCT_PERIOD_CODE);        
    end if;


    MiscUtils.InitializeNumberArray(OldInvestmentLevelValues, MaxInvestmentLevel);
    MiscUtils.InitializeNumberArray(NewInvestmentLevelValues, MaxInvestmentLevel);
    MiscUtils.InitializeBooleanArray(HasOldBorderRelData, 3);
    MiscUtils.InitializeBooleanArray(HasNewBorderRelData, 3);
    MiscUtils.InitializeBooleanMatrix(HasOldBorderRelObtData, 3);
    MiscUtils.InitializeBooleanMatrix(HasNewBorderRelObtData, 3);
    MiscUtils.InitializeNumberArray(BorderRelStores, 3);
    MiscUtils.InitializeNumberArray(BorderRelResolveDurationDays, 3);
    MiscUtils.InitializeNumberMatrix(BorderRelObtSinglePrices, 3);
    MiscUtils.InitializeNumberMatrix(BorderRelObtCurrencies, 3);
    MiscUtils.InitializeNumberMatrix(BorderRelObtLeaseDateUnits, 3);

    -- investment values
    OldInvestmentLevelValues(1):= :old.INVESTMENT_LEVEL_1_VALUE;
    OldInvestmentLevelValues(2):= :old.INVESTMENT_LEVEL_2_VALUE;
    OldInvestmentLevelValues(3):= :old.INVESTMENT_LEVEL_3_VALUE;
    OldInvestmentLevelValues(4):= :old.INVESTMENT_LEVEL_4_VALUE;
    OldInvestmentLevelValues(5):= :old.INVESTMENT_LEVEL_5_VALUE;
    OldInvestmentLevelValues(6):= :old.INVESTMENT_LEVEL_6_VALUE;

    NewInvestmentLevelValues(1):= NewInvestmentLevel1Value;
    NewInvestmentLevelValues(2):= NewInvestmentLevel2Value;
    NewInvestmentLevelValues(3):= NewInvestmentLevel3Value;
    NewInvestmentLevelValues(4):= NewInvestmentLevel4Value;
    NewInvestmentLevelValues(5):= NewInvestmentLevel5Value;
    NewInvestmentLevelValues(6):= NewInvestmentLevel6Value;

    FirstOldInvestmentLevel:= null;
    for InvestmentLevel in 1..MaxInvestmentLevel loop
      if (OldInvestmentLevelValues(InvestmentLevel) is not null) and
         (FirstOldInvestmentLevel is null) then
        FirstOldInvestmentLevel:= InvestmentLevel;
      end if;      
    end loop;


    AggrInvestmentValue:= null;      
    for InvestmentLevel in 1..MaxInvestmentLevel loop
      
      if (NewInvestmentLevelValues(InvestmentLevel) is not null) then
        AggrInvestmentValue:= Coalesce(AggrInvestmentValue, 0) + NewInvestmentLevelValues(InvestmentLevel);
      end if;

      if (AggrInvestmentValue is null) and (InvestmentLevel >= FirstOldInvestmentLevel) then
        delete
          PRODUCT_PERIOD_INVESTMENTS ppi
        where
          (ppi.PRODUCT_CODE = :old.PRODUCT_CODE) and
          (ppi.PRODUCT_PERIOD_CODE = :old.PRODUCT_PERIOD_CODE) and
          (ppi.INVESTMENT_LEVEL_CODE = InvestmentLevel);
      end if;

      if (AggrInvestmentValue is not null) and 
         ((FirstOldInvestmentLevel is null) or (InvestmentLevel < FirstOldInvestmentLevel)) then
        insert into PRODUCT_PERIOD_INVESTMENTS
        (
          PRODUCT_CODE, 
          PRODUCT_PERIOD_CODE, 
          INVESTMENT_LEVEL_CODE, 
          INVESTMENT_VALUE, 
          AGGR_INVESTMENT_VALUE
        )
        values
        (
          :new.PRODUCT_CODE, 
          :new.PRODUCT_PERIOD_CODE, 
          InvestmentLevel, 
          NewInvestmentLevelValues(InvestmentLevel), 
          AggrInvestmentValue
        );          
      end if;

      if (AggrInvestmentValue is not null) and (InvestmentLevel >= FirstOldInvestmentLevel) then
        update
          PRODUCT_PERIOD_INVESTMENTS ppi
        set
          ppi.INVESTMENT_VALUE = NewInvestmentLevelValues(InvestmentLevel),
          ppi.AGGR_INVESTMENT_VALUE = AggrInvestmentValue
        where
          (ppi.PRODUCT_CODE = :old.PRODUCT_CODE) and
          (ppi.PRODUCT_PERIOD_CODE = :old.PRODUCT_PERIOD_CODE) and
          (ppi.INVESTMENT_LEVEL_CODE = InvestmentLevel);
      end if;
        
    end loop;


    -- border rels and obtainments
    -- sale
    HasOldSaleAcquireData:= 
      (:old.SALE_ACQUIRE_SINGLE_PRICE is not null) or
      (:old.SALE_ACQUIRE_CURRENCY_CODE is not null);
    HasNewSaleAcquireData:= 
      (NewSaleAcquireSinglePrice is not null) or
      (NewSaleAcquireCurrencyCode is not null);
        
    HasOldSaleLeaseData:= 
      (:old.SALE_LEASE_SINGLE_PRICE is not null) or
      (:old.SALE_LEASE_CURRENCY_CODE is not null) or
      (:old.SALE_LEASE_DATE_UNIT_CODE is not null);
    HasNewSaleLeaseData:= 
      (NewSaleLeaseSinglePrice is not null) or
      (NewSaleLeaseCurrencyCode is not null) or
      (NewSaleLeaseDateUnitCode is not null);
    
    HasOldSaleData:=
      (:old.SALE_STORE_CODE is not null) or
      (:old.SALE_RESOLVE_DURATION_DAYS is not null) or
      HasOldSaleAcquireData or
      HasOldSaleLeaseData;
    HasNewSaleData:=
      (NewSaleStoreCode is not null) or
      (NewSaleResolveDurationDays is not null) or
      HasNewSaleAcquireData or
      HasNewSaleLeaseData;
    
    -- delivery
    HasOldDeliveryAcquireData:= 
      (:old.DELIVERY_ACQUIRE_SINGLE_PRICE is not null) or
      (:old.DELIVERY_ACQUIRE_CURRENCY_CODE is not null);
    HasNewDeliveryAcquireData:= 
      (NewDlvyAcquireSinglePrice is not null) or
      (NewDlvyAcquireCurrencyCode is not null);
        
    HasOldDeliveryLeaseData:= 
      (:old.DELIVERY_LEASE_SINGLE_PRICE is not null) or
      (:old.DELIVERY_LEASE_CURRENCY_CODE is not null) or
      (:old.DELIVERY_LEASE_DATE_UNIT_CODE is not null);
    HasNewDeliveryLeaseData:= 
      (NewDlvyLeaseSinglePrice is not null) or
      (NewDlvyLeaseCurrencyCode is not null) or
      (NewDlvyLeaseDateUnitCode is not null);
    
    HasOldDeliveryData:=
      (:old.DELIVERY_STORE_CODE is not null) or
      (:old.DELIVERY_RESOLVE_DURATION_DAYS is not null) or
      HasOldDeliveryAcquireData or
      HasOldDeliveryLeaseData;
    HasNewDeliveryData:=
      (NewDlvyStoreCode is not null) or
      (NewDlvyResolveDurationDays is not null) or
      HasNewDeliveryAcquireData or
      HasNewDeliveryLeaseData;
    
    -- fill arrays
    HasOldBorderRelData(CommonConsts.brtClient):= HasOldSaleData;
    HasNewBorderRelData(CommonConsts.brtClient):= HasNewSaleData;
    HasOldBorderRelData(CommonConsts.brtVendor):= HasOldDeliveryData;
    HasNewBorderRelData(CommonConsts.brtVendor):= HasNewDeliveryData;

    HasOldBorderRelObtData(CommonConsts.brtClient)(CommonConsts.otAcquire):= HasOldSaleAcquireData;
    HasNewBorderRelObtData(CommonConsts.brtClient)(CommonConsts.otAcquire):= HasNewSaleAcquireData;
    HasOldBorderRelObtData(CommonConsts.brtClient)(CommonConsts.otLease):= HasOldSaleLeaseData;
    HasNewBorderRelObtData(CommonConsts.brtClient)(CommonConsts.otLease):= HasNewSaleLeaseData;
    HasOldBorderRelObtData(CommonConsts.brtClient)(CommonConsts.otConsign):= False;
    HasNewBorderRelObtData(CommonConsts.brtClient)(CommonConsts.otConsign):= False;
      
    HasOldBorderRelObtData(CommonConsts.brtVendor)(CommonConsts.otAcquire):= HasOldDeliveryAcquireData;
    HasNewBorderRelObtData(CommonConsts.brtVendor)(CommonConsts.otAcquire):= HasNewDeliveryAcquireData;
    HasOldBorderRelObtData(CommonConsts.brtVendor)(CommonConsts.otLease):= HasOldDeliveryLeaseData;
    HasNewBorderRelObtData(CommonConsts.brtVendor)(CommonConsts.otLease):= HasNewDeliveryLeaseData;
    HasOldBorderRelObtData(CommonConsts.brtVendor)(CommonConsts.otConsign):= False;
    HasNewBorderRelObtData(CommonConsts.brtVendor)(CommonConsts.otConsign):= False;

    BorderRelStores(CommonConsts.brtClient):= NewSaleStoreCode;
    BorderRelStores(CommonConsts.brtVendor):= NewDlvyStoreCode;

    BorderRelResolveDurationDays(CommonConsts.brtClient):= NewSaleResolveDurationDays;
    BorderRelResolveDurationDays(CommonConsts.brtVendor):= NewDlvyResolveDurationDays;

    BorderRelObtSinglePrices(CommonConsts.brtClient)(CommonConsts.otAcquire):= NewSaleAcquireSinglePrice;
    BorderRelObtSinglePrices(CommonConsts.brtClient)(CommonConsts.otLease):= NewSaleLeaseSinglePrice;
    BorderRelObtSinglePrices(CommonConsts.brtClient)(CommonConsts.otConsign):= null;
    BorderRelObtSinglePrices(CommonConsts.brtVendor)(CommonConsts.otAcquire):= NewDlvyAcquireSinglePrice;
    BorderRelObtSinglePrices(CommonConsts.brtVendor)(CommonConsts.otLease):= NewDlvyLeaseSinglePrice;
    BorderRelObtSinglePrices(CommonConsts.brtVendor)(CommonConsts.otConsign):= null;

    BorderRelObtCurrencies(CommonConsts.brtClient)(CommonConsts.otAcquire):= NewSaleAcquireCurrencyCode;
    BorderRelObtCurrencies(CommonConsts.brtClient)(CommonConsts.otLease):= NewSaleLeaseCurrencyCode;
    BorderRelObtCurrencies(CommonConsts.brtClient)(CommonConsts.otConsign):= null;
    BorderRelObtCurrencies(CommonConsts.brtVendor)(CommonConsts.otAcquire):= NewDlvyAcquireCurrencyCode;
    BorderRelObtCurrencies(CommonConsts.brtVendor)(CommonConsts.otLease):= NewDlvyLeaseCurrencyCode;
    BorderRelObtCurrencies(CommonConsts.brtVendor)(CommonConsts.otConsign):= null;

    BorderRelObtLeaseDateUnits(CommonConsts.brtClient)(CommonConsts.otAcquire):= null;
    BorderRelObtLeaseDateUnits(CommonConsts.brtClient)(CommonConsts.otLease):= NewSaleLeaseDateUnitCode;
    BorderRelObtLeaseDateUnits(CommonConsts.brtClient)(CommonConsts.otConsign):= null;
    BorderRelObtLeaseDateUnits(CommonConsts.brtVendor)(CommonConsts.otAcquire):= null;
    BorderRelObtLeaseDateUnits(CommonConsts.brtVendor)(CommonConsts.otLease):= NewDlvyLeaseDateUnitCode;
    BorderRelObtLeaseDateUnits(CommonConsts.brtVendor)(CommonConsts.otConsign):= null;

      
    -- process arrays
    for BorderRelType in CommonConsts.brtClient..CommonConsts.brtVendor loop
      
      -- border rels
      if (not HasOldBorderRelData(BorderRelType)) and HasNewBorderRelData(BorderRelType) then
        insert into PRODUCT_PERIOD_BORDER_RELS
        (
          PRODUCT_CODE,
          PRODUCT_PERIOD_CODE,
          BORDER_REL_TYPE_CODE,
          STORE_CODE,
          RESOLVE_DURATION_DAYS
        )
        values
        (
          :new.PRODUCT_CODE,
          :new.PRODUCT_PERIOD_CODE,
          BorderRelType,
          BorderRelStores(BorderRelType),
          BorderRelResolveDurationDays(BorderRelType)
        );                  
      end if;
      
      if HasOldBorderRelData(BorderRelType) and HasNewBorderRelData(BorderRelType) then
        update
          PRODUCT_PERIOD_BORDER_RELS ppbr
        set
          ppbr.STORE_CODE = BorderRelStores(BorderRelType),
          ppbr.RESOLVE_DURATION_DAYS = BorderRelResolveDurationDays(BorderRelType)
        where
          (ppbr.PRODUCT_CODE = :old.PRODUCT_CODE) and
          (ppbr.PRODUCT_PERIOD_CODE = :old.PRODUCT_PERIOD_CODE) and
          (ppbr.BORDER_REL_TYPE_CODE = BorderRelType);
      end if;
        
      if HasOldBorderRelData(BorderRelType) and (not HasNewBorderRelData(BorderRelType)) then
        delete
          PRODUCT_PERIOD_BORDER_RELS ppbr
        where
          (ppbr.PRODUCT_CODE = :old.PRODUCT_CODE) and
          (ppbr.PRODUCT_PERIOD_CODE = :old.PRODUCT_PERIOD_CODE) and
          (ppbr.BORDER_REL_TYPE_CODE = BorderRelType);
      end if;
        
      -- border rel obtainments
      for ObtainmentType in CommonConsts.otAcquire..CommonConsts.otConsign loop
        
        if (not HasOldBorderRelObtData(BorderRelType)(ObtainmentType)) and 
           HasNewBorderRelObtData(BorderRelType)(ObtainmentType) then
          insert into PRODUCT_PERIOD_BORDER_REL_OBTS
          (
            PRODUCT_CODE, 
            PRODUCT_PERIOD_CODE, 
            BORDER_REL_TYPE_CODE, 
            OBTAINMENT_TYPE_CODE, 
            SINGLE_PRICE, 
            CURRENCY_CODE, 
            LEASE_DATE_UNIT_CODE            
          )
          values
          (
            :new.PRODUCT_CODE, 
            :new.PRODUCT_PERIOD_CODE,
            BorderRelType,
            ObtainmentType,
            BorderRelObtSinglePrices(BorderRelType)(ObtainmentType), 
            BorderRelObtCurrencies(BorderRelType)(ObtainmentType),
            BorderRelObtLeaseDateUnits(BorderRelType)(ObtainmentType)
          ); 
        end if;
          
        if HasOldBorderRelObtData(BorderRelType)(ObtainmentType) and 
           HasNewBorderRelObtData(BorderRelType)(ObtainmentType) then
          update
            PRODUCT_PERIOD_BORDER_REL_OBTS ppbro
          set
            ppbro.SINGLE_PRICE = BorderRelObtSinglePrices(BorderRelType)(ObtainmentType), 
            ppbro.CURRENCY_CODE = BorderRelObtCurrencies(BorderRelType)(ObtainmentType), 
            ppbro.LEASE_DATE_UNIT_CODE = BorderRelObtLeaseDateUnits(BorderRelType)(ObtainmentType)
          where
            (ppbro.PRODUCT_CODE = :old.PRODUCT_CODE) and
            (ppbro.PRODUCT_PERIOD_CODE = :old.PRODUCT_PERIOD_CODE) and
            (ppbro.BORDER_REL_TYPE_CODE = BorderRelType) and
            (ppbro.OBTAINMENT_TYPE_CODE = ObtainmentType);
        end if;
        
        if HasOldBorderRelObtData(BorderRelType)(ObtainmentType) and 
           (not HasNewBorderRelObtData(BorderRelType)(ObtainmentType)) then
          delete
            PRODUCT_PERIOD_BORDER_REL_OBTS ppbro
          where
            (ppbro.PRODUCT_CODE = :old.PRODUCT_CODE) and
            (ppbro.PRODUCT_PERIOD_CODE = :old.PRODUCT_PERIOD_CODE) and
            (ppbro.BORDER_REL_TYPE_CODE = BorderRelType) and
            (ppbro.OBTAINMENT_TYPE_CODE = ObtainmentType);
        end if;
        
      end loop;
        
    end loop;
      
      
    -- update PAR_REL_PRODUCT_PERIODS
    if updating then
      
      update
        PAR_REL_PRODUCT_PERS_FOR_EDIT prpp
      set
        prpp.BEGIN_DATE = prpp.BEGIN_DATE
      where
        (prpp.PRODUCT_CODE = :new.PRODUCT_CODE) and
        (:new.BEGIN_DATE <= prpp.BEGIN_DATE) and
        (prpp.END_DATE <= :new.END_DATE);
      
    end if;

  exception
    when others then
      StateUtils.EndProdperfeUpdate;
      raise;
  end;
  StateUtils.EndProdperfeUpdate;

end tr_PRODPERFE_IIU;
/
