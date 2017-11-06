create or replace trigger tr_PRPERFE_II
  instead of insert on PAR_REL_PERIODS_FOR_EDIT
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

      insert into PAR_REL_PERIODS
      (
        PARTNER_CODE, 
        BORDER_REL_TYPE_CODE, 
        PAR_REL_PERIOD_CODE, 
        BEGIN_DATE, 
        END_DATE, 
        DOC_BRANCH_CODE, 
        DOC_CODE, 
        OVERRIDE_CURRENCY,
        CURRENCY_CODE, 
        OVERRIDE_STORE,
        STORE_CODE, 
        PARTNER_OFFICE_CODE, 
        OVERRIDE_TRANSPORT_DUR_DAYS,
        TRANSPORT_DURATION_DAYS, 
        OVERRIDE_MEDIATOR_COMPANY,
        MEDIATOR_COMPANY_CODE, 
        OVERRIDE_SHIPMENT_TYPE,
        SHIPMENT_TYPE_CODE, 
        OVERRIDE_IS_PARTNER_TRANSPORT,
        IS_PARTNER_TRANSPORT, 
        OVERRIDE_CUSTOMHOUSE,
        CUSTOMHOUSE_CODE,
        OVERRIDE_FIN_PARTNER,
        FIN_PARTNER_CODE,      
        CREATE_EMPLOYEE_CODE,
        CREATE_DATE,
        CREATE_TIME,
        CHANGE_EMPLOYEE_CODE,
        CHANGE_DATE,
        CHANGE_TIME
      )
      values
      (
        :new.PARTNER_CODE, 
        :new.BORDER_REL_TYPE_CODE, 
        :new.PAR_REL_PERIOD_CODE, 
        :new.BEGIN_DATE, 
        :new.END_DATE, 
        :new.DOC_BRANCH_CODE, 
        :new.DOC_CODE, 
        :new.OVERRIDE_CURRENCY,
        NewCurrencyCode,
        :new.OVERRIDE_STORE,
        NewStoreCode,
        :new.PARTNER_OFFICE_CODE, 
        :new.OVERRIDE_TRANSPORT_DUR_DAYS,
        NewTransportDurationDays,
        :new.OVERRIDE_MEDIATOR_COMPANY,
        NewMediatorCompanyCode,
        :new.OVERRIDE_SHIPMENT_TYPE,
        NewShipmentTypeCode,
        :new.OVERRIDE_IS_PARTNER_TRANSPORT,
        NewIsPartnerTransport,
        :new.OVERRIDE_CUSTOMHOUSE,
        NewCustomhouseCode,
        :new.OVERRIDE_FIN_PARTNER,
        NewFinPartnerCode,
        :new.CREATE_EMPLOYEE_CODE,
        :new.CREATE_DATE,
        :new.CREATE_TIME,
        :new.CHANGE_EMPLOYEE_CODE,
        :new.CHANGE_DATE,
        :new.CHANGE_TIME
      );

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

end tr_PRPERFE_II;
/
