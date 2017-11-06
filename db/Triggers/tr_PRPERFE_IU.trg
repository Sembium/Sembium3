create or replace trigger tr_PRPERFE_IU
  instead of update on PAR_REL_PERIODS_FOR_EDIT
  for each row
declare
  CommonParRelPeriodsCount Number;

  CommonPartnerCode Number;
  NewStoreCode Number;
  NewTransportDurationDays Number;
  NewMediatorCompanyCode Number;
  NewCurrencyCode Number;
  NewShipmentTypeCode Number;
  NewIsPartnerTransport Number;
  NewCustomhouseCode Number;
  NewFinPartnerCode Number;
begin

  if not StateUtils.InPrperfeUpdate then
    StateUtils.BeginPrperfeUpdate;
    begin
    
      if (:new.PARTNER_CODE <> :old.PARTNER_CODE) or
         (:new.BORDER_REL_TYPE_CODE <> :old.BORDER_REL_TYPE_CODE) or
         (:new.PAR_REL_PERIOD_CODE <> :old.PAR_REL_PERIOD_CODE) then
        raise_application_error(-20000, 'Internal error: PAR_REL_PERIODS key should not be changed');
      end if;

      
      select
        pr.COMMON_PARTNER_CODE
      into
        CommonPartnerCode
      from
        PAR_RELS PR
      where
        (pr.PARTNER_CODE = :new.PARTNER_CODE) and
        (pr.BORDER_REL_TYPE_CODE = :new.BORDER_REL_TYPE_CODE);


      select
        Decode(:new.OVERRIDE_CURRENCY, 1, :new.CURRENCY_CODE, Max(cprp.CURRENCY_CODE)),
        Decode(:new.OVERRIDE_STORE, 1, :new.STORE_CODE, Max(cprp.STORE_CODE)),
        Decode(:new.OVERRIDE_TRANSPORT_DUR_DAYS, 1, :new.TRANSPORT_DURATION_DAYS, Max(cprp.TRANSPORT_DURATION_DAYS)),
        Decode(:new.OVERRIDE_MEDIATOR_COMPANY, 1, :new.MEDIATOR_COMPANY_CODE, Max(cprp.MEDIATOR_COMPANY_CODE)),
        Decode(:new.OVERRIDE_SHIPMENT_TYPE, 1, :new.SHIPMENT_TYPE_CODE, Max(cprp.SHIPMENT_TYPE_CODE)),
        Decode(:new.OVERRIDE_IS_PARTNER_TRANSPORT, 1, :new.IS_PARTNER_TRANSPORT, Max(cprp.IS_PARTNER_TRANSPORT)),
        Decode(:new.OVERRIDE_CUSTOMHOUSE, 1, :new.CUSTOMHOUSE_CODE, Max(cprp.CUSTOMHOUSE_CODE)),
        Decode(:new.OVERRIDE_FIN_PARTNER, 1, :new.FIN_PARTNER_CODE, Max(cprp.FIN_PARTNER_CODE))
      into
        NewCurrencyCode,
        NewStoreCode,
        NewTransportDurationDays,
        NewMediatorCompanyCode,
        NewShipmentTypeCode,
        NewIsPartnerTransport,
        NewCustomhouseCode,
        NewFinPartnerCode
      from
        PAR_REL_PERIODS cprp
      where
        (cprp.PARTNER_CODE = CommonPartnerCode) and
        (cprp.BORDER_REL_TYPE_CODE = :new.BORDER_REL_TYPE_CODE);


      if (:old.BEGIN_DATE <> :new.BEGIN_DATE) or (:old.END_DATE <> :new.END_DATE) then

        if CommonPartnerCode is not null then

          select
            Count(*)
          into
            CommonParRelPeriodsCount
          from
            PAR_REL_PERIODS prp
          where
            (prp.PARTNER_CODE = CommonPartnerCode) and
            (prp.BORDER_REL_TYPE_CODE = :new.BORDER_REL_TYPE_CODE) and
            (prp.BEGIN_DATE <= :new.BEGIN_DATE) and
            (prp.END_DATE >= :new.END_DATE);

          if (CommonParRelPeriodsCount <> 1) then
            raise_application_error(-20001, ServerMessages.SPRPerMustBeInCommonPRPerId);
          end if;

        end if;

      end if;

      update
        PAR_REL_PERIODS prp
      set
        prp.BEGIN_DATE = :new.BEGIN_DATE, 
        prp.END_DATE = :new.END_DATE, 
        prp.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE, 
        prp.DOC_CODE = :new.DOC_CODE, 
        prp.OVERRIDE_CURRENCY = :new.OVERRIDE_CURRENCY, 
        prp.CURRENCY_CODE = NewCurrencyCode, 
        prp.OVERRIDE_STORE = :new.OVERRIDE_STORE, 
        prp.STORE_CODE = NewStoreCode, 
        prp.PARTNER_OFFICE_CODE = :new.PARTNER_OFFICE_CODE, 
        prp.OVERRIDE_TRANSPORT_DUR_DAYS = :new.OVERRIDE_TRANSPORT_DUR_DAYS, 
        prp.TRANSPORT_DURATION_DAYS = NewTransportDurationDays, 
        prp.OVERRIDE_MEDIATOR_COMPANY = :new.OVERRIDE_MEDIATOR_COMPANY, 
        prp.MEDIATOR_COMPANY_CODE = NewMediatorCompanyCode, 
        prp.OVERRIDE_SHIPMENT_TYPE = :new.OVERRIDE_SHIPMENT_TYPE, 
        prp.SHIPMENT_TYPE_CODE = NewShipmentTypeCode, 
        prp.OVERRIDE_IS_PARTNER_TRANSPORT = :new.OVERRIDE_IS_PARTNER_TRANSPORT, 
        prp.IS_PARTNER_TRANSPORT = NewIsPartnerTransport, 
        prp.OVERRIDE_CUSTOMHOUSE = :new.OVERRIDE_CUSTOMHOUSE, 
        prp.CUSTOMHOUSE_CODE = NewCustomhouseCode,
        prp.OVERRIDE_FIN_PARTNER = :new.OVERRIDE_FIN_PARTNER,
        prp.FIN_PARTNER_CODE = NewFinPartnerCode,
        prp.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
        prp.CREATE_DATE = :new.CREATE_DATE,
        prp.CREATE_TIME = :new.CREATE_TIME,
        prp.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        prp.CHANGE_DATE = :new.CHANGE_DATE,
        prp.CHANGE_TIME = :new.CHANGE_TIME
      where
        (prp.PARTNER_CODE = :old.PARTNER_CODE) and
        (prp.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE) and
        (prp.PAR_REL_PERIOD_CODE = :old.PAR_REL_PERIOD_CODE);
        
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


      -- update PAR_REL_PERIODS overrride values
      case :new.BORDER_REL_TYPE_CODE 
        when CommonConsts.brtClient then
          update
            PAR_REL_PERIODS_FOR_EDIT prp
          set
            prp.CURRENCY_CODE = prp.CURRENCY_CODE
          where
            exists(
              select
                1
              from
                CLIENT_COMPANIES cc
              where
                (cc.COMMON_PARTNER_CODE = :new.PARTNER_CODE) and
                (cc.CLIENT_COMPANY_CODE = prp.PARTNER_CODE)
            );

        when CommonConsts.brtVendor then
          update
            PAR_REL_PERIODS_FOR_EDIT prp
          set
            prp.CURRENCY_CODE = prp.CURRENCY_CODE
          where
            exists(
              select
                1
              from
                VENDOR_COMPANIES vc
              where
                (vc.COMMON_PARTNER_CODE = :new.PARTNER_CODE) and
                (vc.VENDOR_COMPANY_CODE = prp.PARTNER_CODE)
            );

      else
        raise_application_error(-20002, 'Unknown BORDER_REL_TYPE_CODE');
      end case;       
      

      -- update PAR_REL_PRODUCT_PERIODS override values
      update
        PAR_REL_PRODUCT_PERS_FOR_EDIT prpp
      set
        prpp.STORE_CODE =
          Decode(prpp.OVERRIDE_STORE, 1, prpp.STORE_CODE, NewStoreCode),
        prpp.PARTNER_OFFICE_CODE =
          Decode(prpp.OVERRIDE_PARTNER_OFFICE, 1, prpp.PARTNER_OFFICE_CODE, :new.PARTNER_OFFICE_CODE),
        prpp.TRANSPORT_DURATION_DAYS =
          Decode(prpp.OVERRIDE_TRANSPORT_DURATION, 1, prpp.TRANSPORT_DURATION_DAYS, NewTransportDurationDays),
        prpp.MEDIATOR_COMPANY_CODE =
          Decode(prpp.OVERRIDE_MEDIATOR_COMPANY, 1, prpp.MEDIATOR_COMPANY_CODE, NewMediatorCompanyCode),
        prpp.SHIPMENT_TYPE_CODE =
          Decode(prpp.OVERRIDE_SHIPMENT_TYPE, 1, prpp.SHIPMENT_TYPE_CODE, NewShipmentTypeCode),
        prpp.IS_PARTNER_TRANSPORT =
          Decode(prpp.OVERRIDE_IS_PARTNER_TRANSPORT, 1, prpp.IS_PARTNER_TRANSPORT, NewIsPartnerTransport),
        prpp.CUSTOMHOUSE_CODE =
          Decode(prpp.OVERRIDE_CUSTOMHOUSE, 1, prpp.CUSTOMHOUSE_CODE, NewCustomhouseCode)
      where
        (prpp.PARTNER_CODE = :old.PARTNER_CODE) and
        (prpp.BORDER_REL_TYPE_CODE = :old.BORDER_REL_TYPE_CODE) and
        (:old.BEGIN_DATE <= prpp.BEGIN_DATE) and
        (prpp.END_DATE <= :old.END_DATE) and
        ( (prpp.OVERRIDE_STORE = 0) or
          (prpp.OVERRIDE_PARTNER_OFFICE = 0) or
          (prpp.OVERRIDE_TRANSPORT_DURATION = 0) or
          (prpp.OVERRIDE_MEDIATOR_COMPANY = 0) or
          (prpp.OVERRIDE_SHIPMENT_TYPE = 0) or
          (prpp.OVERRIDE_IS_PARTNER_TRANSPORT = 0) or
          (prpp.OVERRIDE_CUSTOMHOUSE = 0) );          


      if (:old.BEGIN_DATE <> :new.BEGIN_DATE) or (:old.END_DATE <> :new.END_DATE) then
        PartnerUtils.CheckParRelPeriods(:new.PARTNER_CODE, :new.BORDER_REL_TYPE_CODE);
      end if;
    
    exception
      when others then
        StateUtils.EndPrperfeUpdate;
        raise;
    end;
    StateUtils.EndPrperfeUpdate;
  end if;

end tr_PRPERFE_IU;
/
