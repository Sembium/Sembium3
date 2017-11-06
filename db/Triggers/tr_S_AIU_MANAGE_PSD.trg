create or replace trigger tr_S_AIU_MANAGE_PSD
  after insert or update on SALES
  for each row
declare
  HadPSDOut Number;
  MustHavePSDOut Number;
  HadPSDIn Number;
  MustHavePSDIn Number;
  PSDOutDate Date;
  PSDInDate Date;
begin

  if (:new.SALE_ORDER_TYPE_CODE = 1) then  -- e po zadanie

    select
      Sign(Count(*))
    into
      HadPSDOut
    from
      PLANNED_STORE_DEALS psd
    where
      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
      (psd.BND_PROCESS_OBJECT_CODE = :new.SALE_OBJECT_CODE) and
      (psd.BND_PROCESS_CODE = 165) and  -- ODK
      (psd.STORE_DEAL_TYPE_CODE = 851);  -- teglene

    MustHavePSDOut:=
      MiscUtils.BooleanToNumber(
        (:new.ASPECT_TYPE_CODE = 2) and  -- realizaciq
        (:new.SALE_BRANCH_CODE is null)  -- nqma OPP
      );
    
    select
      Sign(Count(*))
    into
      HadPSDIn
    from
      PLANNED_STORE_DEALS psd
    where
      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
      (psd.BND_PROCESS_OBJECT_CODE = :new.SALE_OBJECT_CODE) and
      (psd.BND_PROCESS_CODE = 165) and  -- ODK
      (psd.STORE_DEAL_TYPE_CODE = 811);  -- postyplenie

    MustHavePSDIn:=
      MiscUtils.BooleanToNumber(
        (MustHavePSDOut = 1) and
        (:new.SALE_DEAL_TYPE_CODE = CommonConsts.sdtLease)
      );

    delete
      PLANNED_STORE_DEALS_FOR_EDIT psdfe
    where
      (psdfe.BND_PROCESS_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
      (psdfe.BND_PROCESS_OBJECT_CODE = :new.SALE_OBJECT_CODE) and
      (psdfe.BND_PROCESS_CODE = 165) and  -- ODK
      ( ( (psdfe.STORE_DEAL_TYPE_CODE = 851) and  -- teglene
          (MustHavePSDOut = 0)
        ) or
        ( (psdfe.STORE_DEAL_TYPE_CODE = 811) and  -- postyplenie
          (MustHavePSDIn = 0)
        )
      );

    PSDOutDate:=
      Coalesce(
        :new.SHIPMENT_DATE,
        :new.RECEIVE_DATE - :new.SHIPMENT_DAYS,
        :new.CL_OFFER_RECEIVE_DATE - :new.SHIPMENT_DAYS
      );

    PSDInDate:=
      Coalesce(
        :new.IMPORT_DATE,
        :new.RETURN_DATE + :new.SHIPMENT_DAYS,
        :new.CL_OFFER_RETURN_DATE + :new.SHIPMENT_DAYS
      );

    update
      PLANNED_STORE_DEALS_FOR_EDIT psdfe
    set
    (
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
        cc.PRIORITY_CODE,
        :new.SHIPMENT_STORE_CODE,
        Decode(psdfe.STORE_DEAL_TYPE_CODE, 811, PSDInDate, 851, PSDOutDate),
        Decode(psdfe.STORE_DEAL_TYPE_CODE, 811, PSDInDate, 851, PSDOutDate),
        :new.PRODUCT_CODE,
        :new.QUANTITY * Decode(:new.SALE_DEAL_TYPE_CODE, CommonConsts.sdtLease, :new.LEASE_DATE_UNIT_QTY, 1),
        :new.QUANTITY * p.ACCOUNT_MEASURE_COEF * Decode(:new.SALE_DEAL_TYPE_CODE, CommonConsts.sdtLease, :new.LEASE_DATE_UNIT_QTY, 1),
        :new.CHANGE_EMPLOYEE_CODE,
        :new.CHANGE_DATE,
        :new.CHANGE_TIME,
        :new.FINISH_EMPLOYEE_CODE,
        :new.FINISH_DATE,
        :new.FINISH_TIME,
        :new.ANNUL_EMPLOYEE_CODE,
        :new.ANNUL_DATE,
        :new.ANNUL_TIME
      from
        CLIENT_COMPANIES cc,
        PRODUCTS p
      where
        (cc.CLIENT_COMPANY_CODE = :new.CLIENT_COMPANY_CODE) and
        (p.PRODUCT_CODE = :new.PRODUCT_CODE)
    )
    where
      (psdfe.BND_PROCESS_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
      (psdfe.BND_PROCESS_OBJECT_CODE = :new.SALE_OBJECT_CODE) and
      (psdfe.BND_PROCESS_CODE = 165) and  -- ODK
      ( ( (psdfe.STORE_DEAL_TYPE_CODE = 851) and  -- teglene
          (MustHavePSDOut = 1)
        ) or
        ( (psdfe.STORE_DEAL_TYPE_CODE = 811) and  -- postyplenie
          (MustHavePSDIn = 1)
        )
      );

    insert into PLANNED_STORE_DEALS_FOR_EDIT
    (
      PLANNED_STORE_DEAL_BRANCH_CODE,
      PLANNED_STORE_DEAL_CODE,
      PLANNED_STORE_DEAL_TYPE_CODE,
      PRIORITY_CODE,
      IS_PLANNED_MANUALLY,
      BND_PROCESS_OBJECT_BRANCH_CODE,
      BND_PROCESS_OBJECT_CODE,
      BND_PROCESS_CODE,
      STORE_CODE,
      STORE_DEAL_BEGIN_DATE,
      STORE_DEAL_END_DATE,
      STORE_DEAL_TYPE_CODE,
      PRODUCT_CODE,
      QUANTITY,
      ACCOUNT_QUANTITY,
      CREATE_EMPLOYEE_CODE, CREATE_DATE, CREATE_TIME,
      CHANGE_EMPLOYEE_CODE, CHANGE_DATE, CHANGE_TIME
    )
    select
      :new.SALE_OBJECT_BRANCH_CODE,
      seq_PLANNED_STORE_DEALS.NextVal,
      2,  -- proektno
      cc.PRIORITY_CODE,
      0,
      :new.SALE_OBJECT_BRANCH_CODE,
      :new.SALE_OBJECT_CODE,
      165,  -- ODK
      :new.SHIPMENT_STORE_CODE,
      Decode(sdt.IN_OUT, -1, PSDOutDate, 1, PSDInDate),
      Decode(sdt.IN_OUT, -1, PSDOutDate, 1, PSDInDate),
      sdt.STORE_DEAL_TYPE_CODE,
      :new.PRODUCT_CODE,
      :new.QUANTITY * Decode(:new.SALE_DEAL_TYPE_CODE, CommonConsts.sdtLease, :new.LEASE_DATE_UNIT_QTY, 1),
      :new.QUANTITY * p.ACCOUNT_MEASURE_COEF * Decode(:new.SALE_DEAL_TYPE_CODE, CommonConsts.sdtLease, :new.LEASE_DATE_UNIT_QTY, 1),
      :new.CREATE_EMPLOYEE_CODE, :new.CREATE_DATE, :new.CREATE_TIME,
      :new.CHANGE_EMPLOYEE_CODE, :new.CHANGE_DATE, :new.CHANGE_TIME
    from
      STORE_DEAL_TYPES sdt,
      CLIENT_COMPANIES cc,
      PRODUCTS p
    where
      (cc.CLIENT_COMPANY_CODE = :new.CLIENT_COMPANY_CODE) and
      (p.PRODUCT_CODE = :new.PRODUCT_CODE) and
      ( ( (sdt.IN_OUT = -1) and
          (HadPSDOut = 0) and
          (MustHavePSDOut = 1)
        ) or
        ( (sdt.IN_OUT = 1) and
          (HadPSDIn = 0) and
          (MustHavePSDIn = 1)
        )
      );

  end if;

end tr_S_AIU_MANAGE_PSD;
/
