create or replace trigger tr_PRPPFE_IIU
  instead of insert or update on PAR_REL_PRODUCT_PERS_FOR_EDIT
  for each row
declare
  IntersectCount Number;

  ProductPeriodExists Number;
  InheritedAcquireSinglePrice Number := null;
  InheritedAcquireCurrencyCode Number := null;
  InheritedLeaseSinglePrice Number := null;
  InheritedLeaseCurrencyCode Number := null;
  InheritedLeaseDateUnitCode Number := null;

  ParRelPeriodExists Number;
  InheritedStoreCode Number := null;
  InheritedPartnerOfficeCode Number := null;
  InheritedTransportDurationDays Number := null;
  InheritedMediatorCompanyCode Number := null;
  InheritedShipmentTypeCode Number := null;
  InheritedIsPartnerTransport Number := null;
  InheritedCustomhouseCode Number := null;
  InheritedResolveDurationDays Number := null;
  InheritedEstSpecFinModelCode Number := null;
  InheritedAcquirePriceModifier Number := null;
  InheritedLeasePriceModifier Number := null;

  NewAcquireSinglePrice Number := null;
  NewAcquireCurrencyCode Number := null;
  NewLeaseSinglePrice Number := null;
  NewLeaseCurrencyCode Number := null;
  NewLeaseDateUnitCode Number := null;
        
  HasOldEstSaleCoverAcquireData Boolean := False;
  HasNewEstSaleCoverAcquireData Boolean := False;
  HasOldEstSaleCoverLeaseData Boolean := False;
  HasNewEstSaleCoverLeaseData Boolean := False;
  HasOldEstSaleCoverConsignData Boolean := False;
  HasNewEstSaleCoverConsignData Boolean := False;
  
  HasOldEstEnvCoverAcquireData Boolean := False;
  HasNewEstEnvCoverAcquireData Boolean := False;
  HasOldEstEnvCoverLeaseData Boolean := False;
  HasNewEstEnvCoverLeaseData Boolean := False;
  HasOldEstEnvCoverConsignData Boolean := False;
  HasNewEstEnvCoverConsignData Boolean := False;

  HasOldAcquireData Boolean := False;
  HasNewAcquireData Boolean := False;  
  HasOldLeaseData Boolean := False;
  HasNewLeaseData Boolean := False;
  HasOldConsignData Boolean := False;
  HasNewConsignData Boolean := False;

  HasOldObtData MiscUtils.TBooleanArray;
  HasNewObtData MiscUtils.TBooleanArray;
  
  HasOldEstData MiscUtils.TBooleanMatrix;
  HasNewEstData MiscUtils.TBooleanMatrix;
  
  ObtSinglePrices MiscUtils.TNumberArray;
  ObtCurrencies MiscUtils.TNumberArray;
  ObtLeaseDateUnits MiscUtils.TNumberArray;  
  ObtPPSinglePrices MiscUtils.TNumberArray;
  ObtPPCurrencies MiscUtils.TNumberArray;
  ObtPPLeaseDateUnits MiscUtils.TNumberArray;
  ObtPRPPriceModifiers MiscUtils.TNumberArray;
    
  EstQuantities MiscUtils.TNumberMatrix;
  EstLeaseDurations MiscUtils.TNumberMatrix;
  
  ObtainmentType Number;
  ProductOrderBaseType Number;
begin

  if not StateUtils.InPrppfeUpdate then
    StateUtils.BeginPrppfeUpdate;
    begin
    
      if inserting or
         (:new.BEGIN_DATE <> :old.BEGIN_DATE) or
         (:new.END_DATE <> :old.END_DATE) then
         
        select
          Count(*)
        into
          IntersectCount
        from
          PAR_REL_PRODUCT_PERIODS prpp
        where
          (prpp.PARTNER_CODE = :new.PARTNER_CODE) and
          (prpp.BORDER_REL_TYPE_CODE = :new.BORDER_REL_TYPE_CODE) and
          (prpp.PRODUCT_CODE = :new.PRODUCT_CODE) and
          (prpp.PAR_REL_PRODUCT_PERIOD_CODE <> :new.PAR_REL_PRODUCT_PERIOD_CODE) and
          (prpp.BEGIN_DATE <= :new.END_DATE) and
          (prpp.END_DATE >= :new.BEGIN_DATE)
        ;
      
        if (IntersectCount > 0) then
          raise_application_error(-20002,
            ServerMessages.SCrossedParRelProductPeriodId || '(' ||
            'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
            'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
          );
        end if;

      end if;
    
    
      -- get inherited values and check if the parent period exists
      select
        Nvl2(Max(pper.PRODUCT_PERIOD_CODE), 1, 0) as PRODUCT_PERIOD_EXISTS,
        Max(
          Decode(:new.BORDER_REL_TYPE_CODE,
                 CommonConsts.brtClient, pper.SALE_ACQUIRE_SINGLE_PRICE,
                 CommonConsts.brtVendor, pper.DELIVERY_ACQUIRE_SINGLE_PRICE)
        ) as ACQUIRE_SINGLE_PRICE,
        Max(
          Decode(:new.BORDER_REL_TYPE_CODE,
                 CommonConsts.brtClient, pper.SALE_ACQUIRE_CURRENCY_CODE,
                 CommonConsts.brtVendor, pper.DELIVERY_ACQUIRE_CURRENCY_CODE) 
        ) as ACQUIRE_CURRENCY_CODE,
        Max(
          Decode(:new.BORDER_REL_TYPE_CODE,
                 CommonConsts.brtClient, pper.SALE_LEASE_SINGLE_PRICE,
                 CommonConsts.brtVendor, pper.DELIVERY_LEASE_SINGLE_PRICE)
        ) as LEASE_SINGLE_PRICE,
        Max(
          Decode(:new.BORDER_REL_TYPE_CODE,
                 CommonConsts.brtClient, pper.SALE_LEASE_CURRENCY_CODE,
                 CommonConsts.brtVendor, pper.DELIVERY_LEASE_CURRENCY_CODE) 
        ) as LEASE_CURRENCY_CODE,
        Max(
          Decode(:new.BORDER_REL_TYPE_CODE,
                 CommonConsts.brtClient, pper.SALE_LEASE_DATE_UNIT_CODE,
                 CommonConsts.brtVendor, pper.DELIVERY_LEASE_DATE_UNIT_CODE) 
        ) as LEASE_DATE_UNIT_CODE,
        Max(
          Decode(:new.BORDER_REL_TYPE_CODE,
                 CommonConsts.brtClient, pper.SALE_RESOLVE_DURATION_DAYS,
                 CommonConsts.brtVendor, pper.DELIVERY_RESOLVE_DURATION_DAYS) 
        ) as RESOLVE_DURATION_DAYS
      into
        ProductPeriodExists,
        InheritedAcquireSinglePrice,
        InheritedAcquireCurrencyCode,
        InheritedLeaseSinglePrice,
        InheritedLeaseCurrencyCode,
        InheritedLeaseDateUnitCode,
        InheritedResolveDurationDays
      from
        PRODUCT_PERIODS pper
      where
       (pper.PRODUCT_CODE = :new.PRODUCT_CODE) and
       ( (pper.BEGIN_DATE <= :new.BEGIN_DATE) and
         (:new.END_DATE <= pper.END_DATE ) );


      select
        Nvl2(Max(prp.PAR_REL_PERIOD_CODE), 1, 0) as PAR_REL_PERIOD_EXISTS,
        Max(prp.STORE_CODE),
        Max(prp.PARTNER_OFFICE_CODE),
        Max(prp.TRANSPORT_DURATION_DAYS),
        Max(prp.MEDIATOR_COMPANY_CODE),
        Max(prp.SHIPMENT_TYPE_CODE),
        Max(prp.IS_PARTNER_TRANSPORT),
        Max(prp.CUSTOMHOUSE_CODE),
        Max(
          ( select
              sfm.SPEC_FIN_MODEL_CODE
            from
              SPEC_FIN_MODELS sfm
            where
              (sfm.PARTNER_CODE = prp.PARTNER_CODE) and
              (sfm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) and
              (sfm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) and
              (sfm.IS_EST_MODEL = 1)
          )
        ),
        Min(
          Coalesce(
            ( select
                Min(prppm.ACQUIRE_PRICE_MODIFIER)
              from
                PRPER_PRICE_MODIFIERS prppm
              where
                (prppm.PARTNER_CODE = prp.PARTNER_CODE) and
                (prppm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) and
                (prppm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) and
                exists(
                  select
                    1
                  from
                    PRODUCT_SETS ps,
                    PRODUCT_SET_PRODUCTS psp
                  where
                    (ps.PRODUCT_SET_CODE = prppm.PRODUCT_SET_CODE) and
                    (ps.BEGIN_DATE <= :new.BEGIN_DATE) and
                    (:new.END_DATE <= ps.END_DATE) and

                    (psp.PRODUCT_SET_CODE = ps.PRODUCT_SET_CODE) and
                    (psp.PRODUCT_CODE = :new.PRODUCT_CODE)
                )
            ),
            ( select
                Min(cprppm.ACQUIRE_PRICE_MODIFIER)
              from
                PAR_REL_PERIODS cprp,
                PRPER_PRICE_MODIFIERS cprppm
              where
                (cprp.PARTNER_CODE = pr.COMMON_PARTNER_CODE) and
                (cprp.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) and
                ( (cprp.BEGIN_DATE <= prp.BEGIN_DATE) and
                  (prp.END_DATE <= cprp.END_DATE ) ) and
                
                (cprppm.PARTNER_CODE = cprp.PARTNER_CODE) and
                (cprppm.BORDER_REL_TYPE_CODE = cprp.BORDER_REL_TYPE_CODE) and
                (cprppm.PAR_REL_PERIOD_CODE = cprp.PAR_REL_PERIOD_CODE) and
                exists(
                  select
                    1
                  from
                    PRODUCT_SETS cps,
                    PRODUCT_SET_PRODUCTS cpsp
                  where
                    (cps.PRODUCT_SET_CODE = cprppm.PRODUCT_SET_CODE) and
                    (cps.BEGIN_DATE <= :new.BEGIN_DATE) and
                    (:new.END_DATE <= cps.END_DATE) and

                    (cpsp.PRODUCT_SET_CODE = cps.PRODUCT_SET_CODE) and
                    (cpsp.PRODUCT_CODE = :new.PRODUCT_CODE)
                )
            )
          )
        ),
        Min(
          Coalesce(
            ( select
                Min(prppm.LEASE_PRICE_MODIFIER)
              from
                PRPER_PRICE_MODIFIERS prppm
              where
                (prppm.PARTNER_CODE = prp.PARTNER_CODE) and
                (prppm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) and
                (prppm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) and
                exists(
                  select
                    1
                  from
                    PRODUCT_SETS ps,
                    PRODUCT_SET_PRODUCTS psp
                  where
                    (ps.PRODUCT_SET_CODE = prppm.PRODUCT_SET_CODE) and
                    (ps.BEGIN_DATE <= :new.BEGIN_DATE) and
                    (:new.END_DATE <= ps.END_DATE) and

                    (psp.PRODUCT_SET_CODE = ps.PRODUCT_SET_CODE) and
                    (psp.PRODUCT_CODE = :new.PRODUCT_CODE)
                )
            ),
            ( select
                Min(cprppm.LEASE_PRICE_MODIFIER)
              from
                PAR_REL_PERIODS cprp,
                PRPER_PRICE_MODIFIERS cprppm
              where
                (cprp.PARTNER_CODE = pr.COMMON_PARTNER_CODE) and
                (cprp.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) and
                ( (cprp.BEGIN_DATE <= prp.BEGIN_DATE) and
                  (prp.END_DATE <= cprp.END_DATE ) ) and
                
                (cprppm.PARTNER_CODE = cprp.PARTNER_CODE) and
                (cprppm.BORDER_REL_TYPE_CODE = cprp.BORDER_REL_TYPE_CODE) and
                (cprppm.PAR_REL_PERIOD_CODE = cprp.PAR_REL_PERIOD_CODE) and
                exists(
                  select
                    1
                  from
                    PRODUCT_SETS cps,
                    PRODUCT_SET_PRODUCTS cpsp
                  where
                    (cps.PRODUCT_SET_CODE = cprppm.PRODUCT_SET_CODE) and
                    (cps.BEGIN_DATE <= :new.BEGIN_DATE) and
                    (:new.END_DATE <= cps.END_DATE) and

                    (cpsp.PRODUCT_SET_CODE = cps.PRODUCT_SET_CODE) and
                    (cpsp.PRODUCT_CODE = :new.PRODUCT_CODE)
                )
            )
          )
        )
      into 
        ParRelPeriodExists,
        InheritedStoreCode,
        InheritedPartnerOfficeCode,
        InheritedTransportDurationDays,
        InheritedMediatorCompanyCode,
        InheritedShipmentTypeCode,
        InheritedIsPartnerTransport,
        InheritedCustomhouseCode,
        InheritedEstSpecFinModelCode,
        InheritedAcquirePriceModifier,
        InheritedLeasePriceModifier
      from
        PAR_REL_PERIODS prp,
        PAR_RELS pr
      where
        (prp.PARTNER_CODE = pr.PARTNER_CODE) and
        (prp.BORDER_REL_TYPE_CODE = pr.BORDER_REL_TYPE_CODE) and
        (prp.PARTNER_CODE = :new.PARTNER_CODE) and
        (prp.BORDER_REL_TYPE_CODE = :new.BORDER_REL_TYPE_CODE) and
        ( (prp.BEGIN_DATE <= :new.BEGIN_DATE) and
          (:new.END_DATE <= prp.END_DATE ) );


      if (:new.PRODUCT_CODE <> StateUtils.SkipPeriodChecksProductCode) and
         ((ProductPeriodExists <> 1) or (ParRelPeriodExists <> 1)) then
        raise_application_error(-20002,
          ServerMessages.SIncorrectParRelProdPeriodId || '(' ||
          'BeginDate:d=' || MessageUtils.InternalDateToStr(:new.BEGIN_DATE) || ', ' ||
          'EndDate:d=' || MessageUtils.InternalDateToStr(:new.END_DATE) || ')'
        );
      end if;
      

      if (:new.OVERRIDE_ACQUIRE_PRICE = 1) then
        NewAcquireSinglePrice:= :new.ACQUIRE_SINGLE_PRICE; 
        NewAcquireCurrencyCode:= :new.ACQUIRE_CURRENCY_CODE;
        InheritedAcquireSinglePrice:= null;
        InheritedAcquireCurrencyCode:= null;
        InheritedAcquirePriceModifier:= null;
      else
        NewAcquireSinglePrice:= InheritedAcquireSinglePrice * Coalesce(InheritedAcquirePriceModifier, 1);
        NewAcquireCurrencyCode:= InheritedAcquireCurrencyCode;
      end if;

      if (:new.OVERRIDE_LEASE_PRICE = 1) then
        NewLeaseSinglePrice:= :new.LEASE_SINGLE_PRICE;
        NewLeaseCurrencyCode:= :new.LEASE_CURRENCY_CODE;
        NewLeaseDateUnitCode:= :new.LEASE_DATE_UNIT_CODE; 
        InheritedLeaseSinglePrice:= null;
        InheritedLeaseCurrencyCode:= null;
        InheritedLeaseDateUnitCode:= null;
        InheritedLeasePriceModifier:= null;
      else
        NewLeaseSinglePrice:= InheritedLeaseSinglePrice * Coalesce(InheritedLeasePriceModifier, 1);
        NewLeaseCurrencyCode:= InheritedLeaseCurrencyCode;
        NewLeaseDateUnitCode:= InheritedLeaseDateUnitCode;
      end if;

      
      if inserting then
      
        insert into PAR_REL_PRODUCT_PERIODS
        (
          PARTNER_CODE, 
          BORDER_REL_TYPE_CODE, 
          PRODUCT_CODE, 
          PAR_REL_PRODUCT_PERIOD_CODE, 
          BEGIN_DATE, 
          END_DATE, 
          DOC_BRANCH_CODE, 
          DOC_CODE, 
          IS_APPROVED_BY_PARTNER, 
          EST_SALE_COVER_ACQUIRE_QTY, 
          EST_SALE_COVER_LEASE_QTY, 
          EST_SALE_COVER_LEASE_DURATION, 
          EST_SALE_COVER_CONSIGN_QTY, 
          EST_ENV_COVER_ACQUIRE_QTY, 
          EST_ENV_COVER_LEASE_QTY, 
          EST_ENV_COVER_LEASE_DURATION, 
          ACQUIRE_SINGLE_PRICE, 
          ACQUIRE_CURRENCY_CODE, 
          OVERRIDE_ACQUIRE_PRICE, 
          LEASE_SINGLE_PRICE, 
          LEASE_CURRENCY_CODE, 
          LEASE_DATE_UNIT_CODE, 
          OVERRIDE_LEASE_PRICE, 
          STORE_CODE, 
          OVERRIDE_STORE, 
          PARTNER_OFFICE_CODE, 
          OVERRIDE_PARTNER_OFFICE, 
          TRANSPORT_DURATION_DAYS, 
          OVERRIDE_TRANSPORT_DURATION, 
          MEDIATOR_COMPANY_CODE, 
          OVERRIDE_MEDIATOR_COMPANY, 
          SHIPMENT_TYPE_CODE, 
          OVERRIDE_SHIPMENT_TYPE, 
          IS_PARTNER_TRANSPORT, 
          OVERRIDE_IS_PARTNER_TRANSPORT, 
          CUSTOMHOUSE_CODE, 
          OVERRIDE_CUSTOMHOUSE,
          RESOLVE_DURATION_DAYS,
          OVERRIDE_RESOLVE_DURATION_DAYS,
          EST_SPEC_FIN_MODEL_CODE,
          OVERRIDE_EST_SPEC_FIN_MODEL,
          CREATE_EMPLOYEE_CODE,
          CREATE_DATE,
          CREATE_TIME,
          CHANGE_EMPLOYEE_CODE,
          CHANGE_DATE,
          CHANGE_TIME,
          PP_ACQUIRE_SINGLE_PRICE,
          PP_ACQUIRE_CURRENCY_CODE,
          PP_LEASE_SINGLE_PRICE,
          PP_LEASE_CURRENCY_CODE,
          PP_LEASE_DATE_UNIT_CODE,
          PRP_ACQUIRE_PRICE_MODIFIER,
          PRP_LEASE_PRICE_MODIFIER          
        )
        values
        (
          :new.PARTNER_CODE, 
          :new.BORDER_REL_TYPE_CODE, 
          :new.PRODUCT_CODE, 
          :new.PAR_REL_PRODUCT_PERIOD_CODE, 
          :new.BEGIN_DATE, 
          :new.END_DATE, 
          :new.DOC_BRANCH_CODE, 
          :new.DOC_CODE, 
          :new.IS_APPROVED_BY_PARTNER, 
          :new.EST_SALE_COVER_ACQUIRE_QTY, 
          :new.EST_SALE_COVER_LEASE_QTY, 
          :new.EST_SALE_COVER_LEASE_DURATION, 
          :new.EST_SALE_COVER_CONSIGN_QTY, 
          :new.EST_ENV_COVER_ACQUIRE_QTY, 
          :new.EST_ENV_COVER_LEASE_QTY, 
          :new.EST_ENV_COVER_LEASE_DURATION, 
          NewAcquireSinglePrice, 
          NewAcquireCurrencyCode, 
          :new.OVERRIDE_ACQUIRE_PRICE, 
          NewLeaseSinglePrice, 
          NewLeaseCurrencyCode, 
          NewLeaseDateUnitCode, 
          :new.OVERRIDE_LEASE_PRICE, 
          Decode(:new.OVERRIDE_STORE, 1, :new.STORE_CODE, InheritedStoreCode), 
          :new.OVERRIDE_STORE, 
          Decode(:new.OVERRIDE_PARTNER_OFFICE, 1, :new.PARTNER_OFFICE_CODE, InheritedPartnerOfficeCode), 
          :new.OVERRIDE_PARTNER_OFFICE, 
          Decode(:new.OVERRIDE_TRANSPORT_DURATION, 1, :new.TRANSPORT_DURATION_DAYS, InheritedTransportDurationDays), 
          :new.OVERRIDE_TRANSPORT_DURATION, 
          Decode(:new.OVERRIDE_MEDIATOR_COMPANY, 1, :new.MEDIATOR_COMPANY_CODE, InheritedMediatorCompanyCode), 
          :new.OVERRIDE_MEDIATOR_COMPANY, 
          Decode(:new.OVERRIDE_SHIPMENT_TYPE, 1, :new.SHIPMENT_TYPE_CODE, InheritedShipmentTypeCode), 
          :new.OVERRIDE_SHIPMENT_TYPE, 
          Decode(:new.OVERRIDE_IS_PARTNER_TRANSPORT, 1, :new.IS_PARTNER_TRANSPORT, InheritedIsPartnerTransport), 
          :new.OVERRIDE_IS_PARTNER_TRANSPORT, 
          Decode(:new.OVERRIDE_CUSTOMHOUSE, 1, :new.CUSTOMHOUSE_CODE, InheritedCustomhouseCode), 
          :new.OVERRIDE_CUSTOMHOUSE,
          Decode(:new.OVERRIDE_RESOLVE_DURATION_DAYS, 1, :new.RESOLVE_DURATION_DAYS, InheritedResolveDurationDays), 
          :new.OVERRIDE_RESOLVE_DURATION_DAYS,
          Decode(:new.OVERRIDE_EST_SPEC_FIN_MODEL, 1, :new.EST_SPEC_FIN_MODEL_CODE, InheritedEstSpecFinModelCode), 
          :new.OVERRIDE_EST_SPEC_FIN_MODEL,
          :new.CREATE_EMPLOYEE_CODE,
          :new.CREATE_DATE,
          :new.CREATE_TIME,
          :new.CHANGE_EMPLOYEE_CODE,
          :new.CHANGE_DATE,
          :new.CHANGE_TIME,
          InheritedAcquireSinglePrice,
          InheritedAcquireCurrencyCode,
          InheritedLeaseSinglePrice,
          InheritedLeaseCurrencyCode,
          InheritedLeaseDateUnitCode,
          InheritedAcquirePriceModifier,
          InheritedLeasePriceModifier
        );
        
      end if;
    
      if updating then
      
        if (:new.PARTNER_CODE <> :old.PARTNER_CODE) or
           (:new.BORDER_REL_TYPE_CODE <> :old.BORDER_REL_TYPE_CODE) or
           (:new.PRODUCT_CODE <> :old.PRODUCT_CODE) or
           (:new.PAR_REL_PRODUCT_PERIOD_CODE <> :old.PAR_REL_PRODUCT_PERIOD_CODE) then
          raise_application_error(-20000, 'Internal error: PAR_REL_PRODUCT_PERIODS key should not be changed');
        end if;
        
        update
          PAR_REL_PRODUCT_PERIODS prpp
        set
          prpp.BEGIN_DATE = :new.BEGIN_DATE, 
          prpp.END_DATE = :new.END_DATE, 
          prpp.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE, 
          prpp.DOC_CODE = :new.DOC_CODE, 
          prpp.IS_APPROVED_BY_PARTNER = :new.IS_APPROVED_BY_PARTNER, 
          prpp.EST_SALE_COVER_ACQUIRE_QTY = :new.EST_SALE_COVER_ACQUIRE_QTY, 
          prpp.EST_SALE_COVER_LEASE_QTY = :new.EST_SALE_COVER_LEASE_QTY, 
          prpp.EST_SALE_COVER_LEASE_DURATION = :new.EST_SALE_COVER_LEASE_DURATION, 
          prpp.EST_SALE_COVER_CONSIGN_QTY = :new.EST_SALE_COVER_CONSIGN_QTY, 
          prpp.EST_ENV_COVER_ACQUIRE_QTY = :new.EST_ENV_COVER_ACQUIRE_QTY, 
          prpp.EST_ENV_COVER_LEASE_QTY = :new.EST_ENV_COVER_LEASE_QTY, 
          prpp.EST_ENV_COVER_LEASE_DURATION = :new.EST_ENV_COVER_LEASE_DURATION, 
          prpp.ACQUIRE_SINGLE_PRICE = NewAcquireSinglePrice, 
          prpp.ACQUIRE_CURRENCY_CODE = NewAcquireCurrencyCode, 
          prpp.OVERRIDE_ACQUIRE_PRICE = :new.OVERRIDE_ACQUIRE_PRICE, 
          prpp.LEASE_SINGLE_PRICE = NewLeaseSinglePrice, 
          prpp.LEASE_CURRENCY_CODE = NewLeaseCurrencyCode, 
          prpp.LEASE_DATE_UNIT_CODE = NewLeaseDateUnitCode, 
          prpp.OVERRIDE_LEASE_PRICE = :new.OVERRIDE_LEASE_PRICE, 
          prpp.STORE_CODE = Decode(:new.OVERRIDE_STORE, 1, :new.STORE_CODE, InheritedStoreCode), 
          prpp.OVERRIDE_STORE = :new.OVERRIDE_STORE, 
          prpp.PARTNER_OFFICE_CODE = Decode(:new.OVERRIDE_PARTNER_OFFICE, 1, :new.PARTNER_OFFICE_CODE, InheritedPartnerOfficeCode), 
          prpp.OVERRIDE_PARTNER_OFFICE = :new.OVERRIDE_PARTNER_OFFICE, 
          prpp.TRANSPORT_DURATION_DAYS = Decode(:new.OVERRIDE_TRANSPORT_DURATION, 1, :new.TRANSPORT_DURATION_DAYS, InheritedTransportDurationDays), 
          prpp.OVERRIDE_TRANSPORT_DURATION = :new.OVERRIDE_TRANSPORT_DURATION, 
          prpp.MEDIATOR_COMPANY_CODE = Decode(:new.OVERRIDE_MEDIATOR_COMPANY, 1, :new.MEDIATOR_COMPANY_CODE, InheritedMediatorCompanyCode), 
          prpp.OVERRIDE_MEDIATOR_COMPANY = :new.OVERRIDE_MEDIATOR_COMPANY, 
          prpp.SHIPMENT_TYPE_CODE = Decode(:new.OVERRIDE_SHIPMENT_TYPE, 1, :new.SHIPMENT_TYPE_CODE, InheritedShipmentTypeCode), 
          prpp.OVERRIDE_SHIPMENT_TYPE = :new.OVERRIDE_SHIPMENT_TYPE, 
          prpp.IS_PARTNER_TRANSPORT = Decode(:new.OVERRIDE_IS_PARTNER_TRANSPORT, 1, :new.IS_PARTNER_TRANSPORT, InheritedIsPartnerTransport), 
          prpp.OVERRIDE_IS_PARTNER_TRANSPORT = :new.OVERRIDE_IS_PARTNER_TRANSPORT, 
          prpp.CUSTOMHOUSE_CODE = Decode(:new.OVERRIDE_CUSTOMHOUSE, 1, :new.CUSTOMHOUSE_CODE, InheritedCustomhouseCode), 
          prpp.OVERRIDE_CUSTOMHOUSE = :new.OVERRIDE_CUSTOMHOUSE,
          prpp.RESOLVE_DURATION_DAYS = Decode(:new.OVERRIDE_RESOLVE_DURATION_DAYS, 1, :new.RESOLVE_DURATION_DAYS, InheritedResolveDurationDays), 
          prpp.OVERRIDE_RESOLVE_DURATION_DAYS = :new.OVERRIDE_RESOLVE_DURATION_DAYS,
          prpp.EST_SPEC_FIN_MODEL_CODE = Decode(:new.OVERRIDE_EST_SPEC_FIN_MODEL, 1, :new.EST_SPEC_FIN_MODEL_CODE, InheritedEstSpecFinModelCode), 
          prpp.OVERRIDE_EST_SPEC_FIN_MODEL = :new.OVERRIDE_EST_SPEC_FIN_MODEL,
          prpp.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
          prpp.CREATE_DATE = :new.CREATE_DATE,
          prpp.CREATE_TIME = :new.CREATE_TIME,
          prpp.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
          prpp.CHANGE_DATE = :new.CHANGE_DATE,
          prpp.CHANGE_TIME = :new.CHANGE_TIME,
          PP_ACQUIRE_SINGLE_PRICE = InheritedAcquireSinglePrice,
          PP_ACQUIRE_CURRENCY_CODE = InheritedAcquireCurrencyCode,
          PP_LEASE_SINGLE_PRICE = InheritedLeaseSinglePrice,
          PP_LEASE_CURRENCY_CODE = InheritedLeaseCurrencyCode,
          PP_LEASE_DATE_UNIT_CODE = InheritedLeaseDateUnitCode,
          PRP_ACQUIRE_PRICE_MODIFIER = InheritedAcquirePriceModifier,
          PRP_LEASE_PRICE_MODIFIER = InheritedLeasePriceModifier
        where
          (prpp.PARTNER_CODE = :old.PARTNER_CODE) and
          (prpp.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE) and
          (prpp.PRODUCT_CODE = :old.PRODUCT_CODE) and
          (prpp.PAR_REL_PRODUCT_PERIOD_CODE = :old.PAR_REL_PRODUCT_PERIOD_CODE);
          
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
        
      end if;


      MiscUtils.InitializeBooleanArray(HasOldObtData, 3);
      MiscUtils.InitializeBooleanArray(HasNewObtData, 3);
      MiscUtils.InitializeBooleanMatrix(HasOldEstData, 3);
      MiscUtils.InitializeBooleanMatrix(HasNewEstData, 3);
      MiscUtils.InitializeNumberArray(ObtSinglePrices, 3);
      MiscUtils.InitializeNumberArray(ObtCurrencies, 3);
      MiscUtils.InitializeNumberArray(ObtLeaseDateUnits, 3);
      MiscUtils.InitializeNumberArray(ObtPPSinglePrices, 3);
      MiscUtils.InitializeNumberArray(ObtPPCurrencies, 3);
      MiscUtils.InitializeNumberArray(ObtPPLeaseDateUnits, 3);
      MiscUtils.InitializeNumberArray(ObtPRPPriceModifiers, 3);
      MiscUtils.InitializeNumberMatrix(EstQuantities, 3);
      MiscUtils.InitializeNumberMatrix(EstLeaseDurations, 3);

      HasOldEstSaleCoverAcquireData:=
        (:old.EST_SALE_COVER_ACQUIRE_QTY is not null);
      HasNewEstSaleCoverAcquireData:=
        (:new.EST_SALE_COVER_ACQUIRE_QTY is not null);
      HasOldEstSaleCoverLeaseData:=
        (:old.EST_SALE_COVER_LEASE_QTY is not null) or
        (:old.EST_SALE_COVER_LEASE_DURATION is not null);
      HasNewEstSaleCoverLeaseData:=
        (:new.EST_SALE_COVER_LEASE_QTY is not null) or
        (:new.EST_SALE_COVER_LEASE_DURATION is not null);
      HasOldEstSaleCoverConsignData:=
        (:old.EST_SALE_COVER_CONSIGN_QTY is not null);
      HasNewEstSaleCoverConsignData:=
        (:new.EST_SALE_COVER_CONSIGN_QTY is not null);
      
      HasOldEstEnvCoverAcquireData:=
        (:old.EST_ENV_COVER_ACQUIRE_QTY is not null);
      HasNewEstEnvCoverAcquireData:=
        (:new.EST_ENV_COVER_ACQUIRE_QTY is not null);
      HasOldEstEnvCoverLeaseData:=
        (:old.EST_ENV_COVER_LEASE_QTY is not null) or
        (:old.EST_ENV_COVER_LEASE_DURATION is not null);
      HasNewEstEnvCoverLeaseData:=
        (:new.EST_ENV_COVER_LEASE_QTY is not null) or
        (:new.EST_ENV_COVER_LEASE_DURATION is not null);
      HasOldEstEnvCoverConsignData:=
        False;
      HasNewEstEnvCoverConsignData:=
        False;

      HasOldAcquireData:=
        (:old.ACQUIRE_SINGLE_PRICE is not null) or
        (:old.ACQUIRE_CURRENCY_CODE is not null) or
        HasOldEstSaleCoverAcquireData or
        HasOldEstEnvCoverAcquireData;
      HasNewAcquireData:=
        (NewAcquireSinglePrice is not null) or
        (NewAcquireCurrencyCode is not null) or
        HasNewEstSaleCoverAcquireData or
        HasNewEstEnvCoverAcquireData;
      HasOldLeaseData:=
        (:old.LEASE_SINGLE_PRICE is not null) or
        (:old.LEASE_CURRENCY_CODE is not null) or
        (:old.LEASE_DATE_UNIT_CODE is not null) or
        HasOldEstSaleCoverLeaseData or
        HasOldEstEnvCoverLeaseData;
      HasNewLeaseData:= 
        (NewLeaseSinglePrice is not null) or
        (NewLeaseCurrencyCode is not null) or
        (NewLeaseDateUnitCode is not null) or
        HasNewEstSaleCoverLeaseData or
        HasNewEstEnvCoverLeaseData;
      HasOldConsignData:=
        HasOldEstSaleCoverConsignData or
        HasOldEstEnvCoverConsignData;
      HasNewConsignData:=
        HasNewEstSaleCoverConsignData or
        HasNewEstEnvCoverConsignData;

      -- fill arrays
      HasOldObtData(CommonConsts.otAcquire):= HasOldAcquireData;
      HasNewObtData(CommonConsts.otAcquire):= HasNewAcquireData;
      HasOldObtData(CommonConsts.otLease):= HasOldLeaseData;
      HasNewObtData(CommonConsts.otLease):= HasNewLeaseData;
      HasOldObtData(CommonConsts.otConsign):= HasOldConsignData;
      HasNewObtData(CommonConsts.otConsign):= HasNewConsignData;
        
      ObtSinglePrices(CommonConsts.otAcquire):= NewAcquireSinglePrice;
      ObtSinglePrices(CommonConsts.otLease):= NewLeaseSinglePrice;
      ObtSinglePrices(CommonConsts.otConsign):= null;

      ObtCurrencies(CommonConsts.otAcquire):= NewAcquireCurrencyCode;
      ObtCurrencies(CommonConsts.otLease):= NewLeaseCurrencyCode;
      ObtCurrencies(CommonConsts.otConsign):= null;

      ObtLeaseDateUnits(CommonConsts.otAcquire):= null;
      ObtLeaseDateUnits(CommonConsts.otLease):= NewLeaseDateUnitCode;
      ObtLeaseDateUnits(CommonConsts.otConsign):= null;

      ObtPPSinglePrices(CommonConsts.otAcquire):= InheritedAcquireSinglePrice;
      ObtPPSinglePrices(CommonConsts.otLease):= InheritedLeaseSinglePrice;
      ObtPPSinglePrices(CommonConsts.otConsign):= null;

      ObtPPCurrencies(CommonConsts.otAcquire):= InheritedAcquireCurrencyCode;
      ObtPPCurrencies(CommonConsts.otLease):= InheritedLeaseCurrencyCode;
      ObtPPCurrencies(CommonConsts.otConsign):= null;

      ObtPPLeaseDateUnits(CommonConsts.otAcquire):= null;
      ObtPPLeaseDateUnits(CommonConsts.otLease):= InheritedLeaseDateUnitCode;
      ObtPPLeaseDateUnits(CommonConsts.otConsign):= null;

      ObtPRPPriceModifiers(CommonConsts.otAcquire):= InheritedAcquirePriceModifier;
      ObtPRPPriceModifiers(CommonConsts.otLease):= InheritedLeasePriceModifier;
      ObtPRPPriceModifiers(CommonConsts.otConsign):= null;

      HasOldEstData(CommonConsts.otAcquire)(CommonConsts.pobtSaleCover):= HasOldEstSaleCoverAcquireData;
      HasNewEstData(CommonConsts.otAcquire)(CommonConsts.pobtSaleCover):= HasNewEstSaleCoverAcquireData;
      HasOldEstData(CommonConsts.otAcquire)(CommonConsts.pobtEnvCover):= HasOldEstEnvCoverAcquireData;
      HasNewEstData(CommonConsts.otAcquire)(CommonConsts.pobtEnvCover):= HasNewEstEnvCoverAcquireData;
      HasOldEstData(CommonConsts.otLease)(CommonConsts.pobtSaleCover):= HasOldEstSaleCoverLeaseData;
      HasNewEstData(CommonConsts.otLease)(CommonConsts.pobtSaleCover):= HasNewEstSaleCoverLeaseData;
      HasOldEstData(CommonConsts.otLease)(CommonConsts.pobtEnvCover):= HasOldEstEnvCoverLeaseData;
      HasNewEstData(CommonConsts.otLease)(CommonConsts.pobtEnvCover):= HasNewEstEnvCoverLeaseData;
      HasOldEstData(CommonConsts.otConsign)(CommonConsts.pobtSaleCover):= HasOldEstSaleCoverConsignData;
      HasNewEstData(CommonConsts.otConsign)(CommonConsts.pobtSaleCover):= HasNewEstSaleCoverConsignData;
      HasOldEstData(CommonConsts.otConsign)(CommonConsts.pobtEnvCover):= HasOldEstEnvCoverConsignData;
      HasNewEstData(CommonConsts.otConsign)(CommonConsts.pobtEnvCover):= HasNewEstEnvCoverConsignData;

      EstQuantities(CommonConsts.otAcquire)(CommonConsts.pobtSaleCover):= :new.EST_SALE_COVER_ACQUIRE_QTY;
      EstQuantities(CommonConsts.otAcquire)(CommonConsts.pobtEnvCover):= :new.EST_ENV_COVER_ACQUIRE_QTY;
      EstQuantities(CommonConsts.otLease)(CommonConsts.pobtSaleCover):= :new.EST_SALE_COVER_LEASE_QTY;
      EstQuantities(CommonConsts.otLease)(CommonConsts.pobtEnvCover):= :new.EST_ENV_COVER_LEASE_QTY;
      EstQuantities(CommonConsts.otConsign)(CommonConsts.pobtSaleCover):= :new.EST_SALE_COVER_CONSIGN_QTY;
      EstQuantities(CommonConsts.otConsign)(CommonConsts.pobtEnvCover):= null;

      EstLeaseDurations(CommonConsts.otAcquire)(CommonConsts.pobtSaleCover):= null;
      EstLeaseDurations(CommonConsts.otAcquire)(CommonConsts.pobtEnvCover):= null;
      EstLeaseDurations(CommonConsts.otLease)(CommonConsts.pobtSaleCover):= :new.EST_SALE_COVER_LEASE_DURATION;
      EstLeaseDurations(CommonConsts.otLease)(CommonConsts.pobtEnvCover):= :new.EST_ENV_COVER_LEASE_DURATION;
      EstLeaseDurations(CommonConsts.otConsign)(CommonConsts.pobtSaleCover):= null;
      EstLeaseDurations(CommonConsts.otConsign)(CommonConsts.pobtEnvCover):= null;

      -- process arrays
      for ObtainmentType in CommonConsts.otAcquire..CommonConsts.otConsign loop
      
        if (not HasOldObtData(ObtainmentType)) and HasNewObtData(ObtainmentType) then
          insert into PAR_REL_PRODUCT_PERIOD_OBTS
          (
            PARTNER_CODE, 
            BORDER_REL_TYPE_CODE, 
            PRODUCT_CODE, 
            PAR_REL_PRODUCT_PERIOD_CODE, 
            OBTAINMENT_TYPE_CODE, 
            SINGLE_PRICE, 
            CURRENCY_CODE, 
            LEASE_DATE_UNIT_CODE,
            PP_SINGLE_PRICE, 
            PP_CURRENCY_CODE, 
            PP_DATE_UNIT_CODE,
            PRP_PRICE_MODIFIER        
          )
          values
          (
            :new.PARTNER_CODE, 
            :new.BORDER_REL_TYPE_CODE, 
            :new.PRODUCT_CODE, 
            :new.PAR_REL_PRODUCT_PERIOD_CODE, 
            ObtainmentType, 
            ObtSinglePrices(ObtainmentType), 
            ObtCurrencies(ObtainmentType), 
            ObtLeaseDateUnits(ObtainmentType),
            ObtPPSinglePrices(ObtainmentType), 
            ObtPPCurrencies(ObtainmentType), 
            ObtPPLeaseDateUnits(ObtainmentType),
            ObtPRPPriceModifiers(ObtainmentType)
          );
        end if;
      
        if HasOldObtData(ObtainmentType) and HasNewObtData(ObtainmentType) then
          update
            PAR_REL_PRODUCT_PERIOD_OBTS prppo
          set
            prppo.SINGLE_PRICE = ObtSinglePrices(ObtainmentType), 
            prppo.CURRENCY_CODE = ObtCurrencies(ObtainmentType), 
            prppo.LEASE_DATE_UNIT_CODE = ObtLeaseDateUnits(ObtainmentType),
            prppo.PP_SINGLE_PRICE = ObtPPSinglePrices(ObtainmentType), 
            prppo.PP_CURRENCY_CODE = ObtPPCurrencies(ObtainmentType), 
            prppo.PP_DATE_UNIT_CODE = ObtPPLeaseDateUnits(ObtainmentType),
            prppo.PRP_PRICE_MODIFIER = ObtPRPPriceModifiers(ObtainmentType)
          where
            (prppo.PARTNER_CODE = :new.PARTNER_CODE) and
            (prppo.BORDER_REL_TYPE_CODE = :new.BORDER_REL_TYPE_CODE) and
            (prppo.PRODUCT_CODE = :new.PRODUCT_CODE) and
            (prppo.PAR_REL_PRODUCT_PERIOD_CODE = :new.PAR_REL_PRODUCT_PERIOD_CODE) and
            (prppo.OBTAINMENT_TYPE_CODE = ObtainmentType);
        end if;

        if HasOldObtData(ObtainmentType) and (not HasNewObtData(ObtainmentType)) then
          delete
            PAR_REL_PRODUCT_PERIOD_OBTS prppo
          where
            (prppo.PARTNER_CODE = :new.PARTNER_CODE) and
            (prppo.BORDER_REL_TYPE_CODE = :new.BORDER_REL_TYPE_CODE) and
            (prppo.PRODUCT_CODE = :new.PRODUCT_CODE) and
            (prppo.PAR_REL_PRODUCT_PERIOD_CODE = :new.PAR_REL_PRODUCT_PERIOD_CODE) and
            (prppo.OBTAINMENT_TYPE_CODE = ObtainmentType);
        end if;


        for ProductOrderBaseType in CommonConsts.pobtSaleCover..CommonConsts.pobtEnvCover loop
        
          if (not HasOldEstData(ObtainmentType)(ProductOrderBaseType)) and
             HasNewEstData(ObtainmentType)(ProductOrderBaseType) then
            insert into PAR_REL_PRODUCT_PERIOD_ESTS
            (
              PARTNER_CODE, 
              BORDER_REL_TYPE_CODE, 
              PRODUCT_CODE, 
              PAR_REL_PRODUCT_PERIOD_CODE, 
              OBTAINMENT_TYPE_CODE, 
              PROD_ORDER_BASE_TYPE_CODE, 
              EST_QUANTITY, 
              EST_LEASE_DURATION            
            )
            values
            (
              :new.PARTNER_CODE, 
              :new.BORDER_REL_TYPE_CODE, 
              :new.PRODUCT_CODE, 
              :new.PAR_REL_PRODUCT_PERIOD_CODE, 
              ObtainmentType, 
              ProductOrderBaseType,
              EstQuantities(ObtainmentType)(ProductOrderBaseType),
              EstLeaseDurations(ObtainmentType)(ProductOrderBaseType)
            ); 
          end if;
        
          if HasOldEstData(ObtainmentType)(ProductOrderBaseType) and
             HasNewEstData(ObtainmentType)(ProductOrderBaseType) then
            update 
              PAR_REL_PRODUCT_PERIOD_ESTS prppe
            set
              prppe.EST_QUANTITY = EstQuantities(ObtainmentType)(ProductOrderBaseType),
              prppe.EST_LEASE_DURATION = EstLeaseDurations(ObtainmentType)(ProductOrderBaseType)
            where
              (prppe.PARTNER_CODE = :new.PARTNER_CODE) and
              (prppe.BORDER_REL_TYPE_CODE = :new.BORDER_REL_TYPE_CODE) and
              (prppe.PRODUCT_CODE = :new.PRODUCT_CODE) and
              (prppe.PAR_REL_PRODUCT_PERIOD_CODE = :new.PAR_REL_PRODUCT_PERIOD_CODE) and
              (prppe.OBTAINMENT_TYPE_CODE = ObtainmentType) and
              (prppe.PROD_ORDER_BASE_TYPE_CODE = ProductOrderBaseType);
          end if;
        
          if HasOldEstData(ObtainmentType)(ProductOrderBaseType) and
             (not HasNewEstData(ObtainmentType)(ProductOrderBaseType)) then
            delete
              PAR_REL_PRODUCT_PERIOD_ESTS prppe
            where
              (prppe.PARTNER_CODE = :new.PARTNER_CODE) and
              (prppe.BORDER_REL_TYPE_CODE = :new.BORDER_REL_TYPE_CODE) and
              (prppe.PRODUCT_CODE = :new.PRODUCT_CODE) and
              (prppe.PAR_REL_PRODUCT_PERIOD_CODE = :new.PAR_REL_PRODUCT_PERIOD_CODE) and
              (prppe.OBTAINMENT_TYPE_CODE = ObtainmentType) and
              (prppe.PROD_ORDER_BASE_TYPE_CODE = ProductOrderBaseType);
          end if;
          
        end loop;  -- ProductOrderBaseType
        
      end loop;  -- ObtainmentType
      
    exception
      when others then
        StateUtils.EndPrppfeUpdate;
        raise;
    end;
    StateUtils.EndPrppfeUpdate;
  end if;

end tr_PRPFE_IIU;
/
