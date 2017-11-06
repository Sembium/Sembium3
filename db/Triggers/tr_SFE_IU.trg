create or replace trigger tr_SFE_IU
  instead of update on SALES_FOR_EDIT
  for each row
declare
  c Number;
  IsOldSRGReverse Number;
  IsNewSRGReverse Number;
  HasUnannuledExceptEvents Number;
  HasExceptEventsWithGreaterQty Number;
  IsCreatingCycle Number;
  HasModel Number;
  IsPsdNotAnnuled Number;
begin

  if not StateUtils.InSfeUpdate then
    StateUtils.BeginSfeUpdate;
    begin

      if (:new.SALE_OBJECT_BRANCH_CODE <> :old.SALE_OBJECT_BRANCH_CODE) or
         (:new.SALE_OBJECT_CODE <> :old.SALE_OBJECT_CODE) then
        raise_application_error(-20000, 'Internal error: SALES key should not be changed');
      end if;
    
      if (:old.SHIPMENT_STORE_CODE is not null) and
         (:new.SHIPMENT_STORE_CODE is not null) and
         (:old.SHIPMENT_STORE_CODE <> :new.SHIPMENT_STORE_CODE) then
      
        select
          Count(*)
        into
          c
        from
          STORE_DEALS sd
        where
          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = :old.SALE_OBJECT_BRANCH_CODE) and
          (sd.BND_PROCESS_OBJECT_CODE = :old.SALE_OBJECT_CODE) and
          (sd.STORNO_EMPLOYEE_CODE is null)
        ;
        
        if (c > 0) then
          raise_application_error(-20002, ServerMessages.SCannotChangeSaleStoreId);
        end if;
        
      end if;
    
      SaleUtils.CheckPOCloseAndAnnul(
        :new.SALE_OBJECT_BRANCH_CODE,
        :new.SALE_OBJECT_CODE,
        :new.WASTING_SALE_OBJ_BRANCH_CODE,
        :new.WASTING_SALE_OBJ_CODE,
        :new.FINISH_EMPLOYEE_CODE is not null,
        :new.ANNUL_EMPLOYEE_CODE is not null);

      if (:old.WASTING_SALE_OBJ_BRANCH_CODE is null and :new.WASTING_SALE_OBJ_BRANCH_CODE is not null) or
         (:old.WASTING_SALE_OBJ_BRANCH_CODE <> :new.WASTING_SALE_OBJ_BRANCH_CODE) or
         (:old.WASTING_SALE_OBJ_CODE <> :new.WASTING_SALE_OBJ_CODE) then

        select
          Sign(Count(*))
        into
          IsCreatingCycle
        from
          SALES s
        where
          (s.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
          (s.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE)
        start with
          (s.SALE_OBJECT_BRANCH_CODE = :new.WASTING_SALE_OBJ_BRANCH_CODE) and
          (s.SALE_OBJECT_CODE = :new.WASTING_SALE_OBJ_CODE)
        connect by nocycle
          (s.SALE_OBJECT_BRANCH_CODE = prior s.WASTING_SALE_OBJ_BRANCH_CODE) and
          (s.SALE_OBJECT_CODE = prior s.WASTING_SALE_OBJ_CODE);

        if (IsCreatingCycle = 1) then
          raise_application_error(-20000, ServerMessages.SSaleIsCreatingCycleId);
        end if;

      end if;


      if (:new.PRODUCT_CODE <> :old.PRODUCT_CODE) then
        
        select
          Sign(Count(*))
        into
          HasModel
        from
          MATERIAL_LISTS ml
        where
          (ml.BND_PROCESS_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
          (ml.BND_PROCESS_OBJECT_CODE = :new.SALE_OBJECT_CODE);
          
        if (HasModel = 1) then
          raise_application_error(-20000, ServerMessages.SCantChangeSaleProductId);
        end if;
          
      end if;

      update
        SALES s
      set
        s.SALE_GROUP_OBJECT_BRANCH_CODE = :new.SALE_GROUP_OBJECT_BRANCH_CODE, 
        s.SALE_GROUP_OBJECT_CODE = :new.SALE_GROUP_OBJECT_CODE, 
        s.SALE_ORDER_TYPE_CODE = :new.SALE_ORDER_TYPE_CODE, 
        s.REQUEST_BRANCH_CODE = :new.REQUEST_BRANCH_CODE, 
        s.REQUEST_NO = :new.REQUEST_NO, 
        s.REQUEST_LINE_NO = :new.REQUEST_LINE_NO, 
        s.MANAGER_EMPLOYEE_CODE = :new.MANAGER_EMPLOYEE_CODE, 
        s.CLIENT_COMPANY_CODE = :new.CLIENT_COMPANY_CODE, 
        s.CLIENT_REQUEST_NO = :new.CLIENT_REQUEST_NO, 
        s.REQUEST_SEND_DATE = :new.REQUEST_SEND_DATE, 
        s.REQUEST_REGISTER_DATE = :new.REQUEST_REGISTER_DATE, 
        s.OFFER_SEND_PLAN_DATE = :new.OFFER_SEND_PLAN_DATE, 
        s.OFFER_SEND_DATE = :new.OFFER_SEND_DATE, 
        s.OFFER_ANSWER_PLAN_DATE = :new.OFFER_ANSWER_PLAN_DATE, 
        s.OFFER_ANSWER_DATE = :new.OFFER_ANSWER_DATE, 
        s.DECISION_PLAN_DATE = :new.DECISION_PLAN_DATE, 
        s.DECISION_DATE = :new.DECISION_DATE, 
        s.DECISION_TYPE_CODE = :new.DECISION_TYPE_CODE, 
        s.DECISION_EMPLOYEE_CODE = :new.DECISION_EMPLOYEE_CODE,
        s.PRODUCT_CODE = :new.PRODUCT_CODE, 
        s.QUANTITY = :new.QUANTITY, 
        s.OUR_OFFER_QUANTITY = :new.OUR_OFFER_QUANTITY, 
        s.CL_OFFER_QUANTITY = :new.CL_OFFER_QUANTITY, 
        s.MANUFACTURE_QUANTITY = :new.MANUFACTURE_QUANTITY, 
        s.MANUFACTURE_DECISION_EXPECTED = :new.MANUFACTURE_DECISION_EXPECTED, 
        s.SINGLE_WEIGHT = :new.SINGLE_WEIGHT, 
        s.MIN_BASE_PRICE = :new.MIN_BASE_PRICE, 
        s.OUR_OFFER_CURRENCY_CODE = :new.OUR_OFFER_CURRENCY_CODE,
        s.CL_OFFER_CURRENCY_CODE = :new.CL_OFFER_CURRENCY_CODE,
        s.CURRENCY_CODE = :new.CURRENCY_CODE, 
        s.SINGLE_PRICE = :new.SINGLE_PRICE, 
        s.OUR_OFFER_SINGLE_PRICE = :new.OUR_OFFER_SINGLE_PRICE, 
        s.CL_OFFER_SINGLE_PRICE = :new.CL_OFFER_SINGLE_PRICE, 
        s.RECEIVE_DATE = :new.RECEIVE_DATE, 
        s.CL_OFFER_RECEIVE_DATE = :new.CL_OFFER_RECEIVE_DATE, 
        s.OUR_OFFER_RECEIVE_DATE = :new.OUR_OFFER_RECEIVE_DATE, 
        s.RECEIVE_PLACE_OFFICE_CODE = :new.RECEIVE_PLACE_OFFICE_CODE, 
        s.IS_VENDOR_TRANSPORT = :new.IS_VENDOR_TRANSPORT, 
        s.SHIPMENT_TYPE_CODE = :new.SHIPMENT_TYPE_CODE, 
        s.CUSTOMHOUSE_CODE = :new.CUSTOMHOUSE_CODE, 
        s.NOTES = :new.NOTES, 
        s.SALE_BRANCH_CODE = :new.SALE_BRANCH_CODE, 
        s.SALE_NO = :new.SALE_NO, 
        s.SALE_TYPE_CODE = :new.SALE_TYPE_CODE, 
        s.OKIDU_EMPLOYEE_CODE = :new.OKIDU_EMPLOYEE_CODE, 
        s.SOS_OKIDU = :new.SOS_OKIDU, 
        s.PRODUCTION_START_PLAN_DATE = :new.PRODUCTION_START_PLAN_DATE, 
        s.SHIPMENT_DATE = :new.SHIPMENT_DATE, 
        s.SHIPMENT_STORE_CODE = :new.SHIPMENT_STORE_CODE, 
        s.ENTER_SH_STORE_PLAN_BEGIN_DATE = :new.ENTER_SH_STORE_PLAN_BEGIN_DATE, 
        s.ENTER_SH_STORE_PLAN_END_DATE = :new.ENTER_SH_STORE_PLAN_END_DATE, 
        s.IS_ML_ENTRUSTED = :new.IS_ML_ENTRUSTED, 
        s.IS_ML_NOT_NEEDED = :new.IS_ML_NOT_NEEDED, 
        s.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE, 
        s.ANNUL_DATE = :new.ANNUL_DATE, 
        s.ANNUL_TIME = :new.ANNUL_TIME, 
        s.FINISH_EMPLOYEE_CODE = :new.FINISH_EMPLOYEE_CODE, 
        s.FINISH_DATE = :new.FINISH_DATE, 
        s.FINISH_TIME = :new.FINISH_TIME, 
        s.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE, 
        s.CREATE_DATE = :new.CREATE_DATE, 
        s.CREATE_TIME = :new.CREATE_TIME, 
        s.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE, 
        s.CHANGE_DATE = :new.CHANGE_DATE, 
        s.CHANGE_TIME = :new.CHANGE_TIME, 
        s.MARKET_SINGLE_PRICE = :new.MARKET_SINGLE_PRICE, 
        s.DISCOUNT_PERCENT = :new.DISCOUNT_PERCENT, 
        s.CL_OFFER_QUANTITY_CHG = :new.CL_OFFER_QUANTITY_CHG, 
        s.QUANTITY_CHG = :new.QUANTITY_CHG, 
        s.CL_OFFER_RECEIVE_DATE_CH = :new.CL_OFFER_RECEIVE_DATE_CH, 
        s.RECEIVE_DATE_CHG = :new.RECEIVE_DATE_CHG, 
        s.PRODUCTION_DEPT_CODE = :new.PRODUCTION_DEPT_CODE, 
        s.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE, 
        s.DOC_CODE = :new.DOC_CODE, 
        s.TRANSIENT_STATUS_CODE = :new.TRANSIENT_STATUS_CODE, 
        s.WORKDAYS_TO_EXIST = :new.WORKDAYS_TO_EXIST,
        s.PRODUCTION_ORDER_TYPE_CODE = :new.PRODUCTION_ORDER_TYPE_CODE,
        s.IS_AUTO_COMPLETIVE = :new.IS_AUTO_COMPLETIVE,
        s.WASTING_SALE_OBJ_BRANCH_CODE = :new.WASTING_SALE_OBJ_BRANCH_CODE,
        s.WASTING_SALE_OBJ_CODE = :new.WASTING_SALE_OBJ_CODE,
        s.CONSUMER_DEPT_CODE = :new.CONSUMER_DEPT_CODE,
        s.CONSUME_BEGIN_DATE = :new.CONSUME_BEGIN_DATE,
        s.CONSUME_END_DATE = :new.CONSUME_END_DATE,
        s.MODEL_DEVELOPMENT_TYPE_CODE = :new.MODEL_DEVELOPMENT_TYPE_CODE,
        s.WORK_PRIORITY_CODE = :new.WORK_PRIORITY_CODE,
        s.SALE_DEAL_TYPE_CODE = :new.SALE_DEAL_TYPE_CODE,
        s.CL_OFFER_RETURN_DATE = :new.CL_OFFER_RETURN_DATE,
        s.RETURN_DATE = :new.RETURN_DATE,
        s.CL_OFFER_LEASE_DATE_UNIT_QTY = :new.CL_OFFER_LEASE_DATE_UNIT_QTY,
        s.CL_OFFER_LEASE_DATE_UNIT_CODE = :new.CL_OFFER_LEASE_DATE_UNIT_CODE,
        s.LEASE_DATE_UNIT_QTY = :new.LEASE_DATE_UNIT_QTY,
        s.LEASE_DATE_UNIT_CODE = :new.LEASE_DATE_UNIT_CODE,
        s.IMPORT_DATE = :new.IMPORT_DATE,
        s.ASPECT_TYPE_CODE = :new.ASPECT_TYPE_CODE,
        s.PROGNOSIS_BEGIN_DATE = :new.PROGNOSIS_BEGIN_DATE,
        s.PROGNOSIS_END_DATE = :new.PROGNOSIS_END_DATE,
        s.OUR_OFFER_LEASE_DATE_UNIT_QTY = :new.OUR_OFFER_LEASE_DATE_UNIT_QTY,
        s.OUR_OFFER_LEASE_DATE_UNIT_CODE = :new.OUR_OFFER_LEASE_DATE_UNIT_CODE,
        s.SHIPMENT_DAYS = :new.SHIPMENT_DAYS,
        s.DELIVERY_OBJECT_BRANCH_CODE = :new.DELIVERY_OBJECT_BRANCH_CODE,
        s.DELIVERY_OBJECT_CODE = :new.DELIVERY_OBJECT_CODE
      where
        (s.SALE_OBJECT_BRANCH_CODE = :old.SALE_OBJECT_BRANCH_CODE) and
        (s.SALE_OBJECT_CODE = :old.SALE_OBJECT_CODE);

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
        
      if (:new.REQUEST_NO is not null) and
         (:old.FINISH_EMPLOYEE_CODE is null) and 
         (:new.FINISH_EMPLOYEE_CODE is not null) then
          
        update
          SALE_REQUEST_GROUPS_FOR_EDIT srg
        set
          srg.FINISH_EMPLOYEE_CODE = :new.FINISH_EMPLOYEE_CODE,
          srg.FINISH_DATE = :new.FINISH_DATE,
          srg.FINISH_TIME = :new.FINISH_TIME
        where
          (srg.REQUEST_BRANCH_CODE = :new.REQUEST_BRANCH_CODE) and
          (srg.REQUEST_NO = :new.REQUEST_NO) and
          not exists(
            select
              1
            from
              SALES s
            where
              (s.REQUEST_BRANCH_CODE = :new.REQUEST_BRANCH_CODE) and
              (s.REQUEST_NO = :new.REQUEST_NO) and
              (s.ANNUL_EMPLOYEE_CODE is null) and          
              (s.FINISH_EMPLOYEE_CODE is null)
          );
      
      end if;
      
      
      update
        PLANNED_STORE_DEALS_FOR_EDIT psdfe
      set
        psdfe.STORE_CODE = :new.SHIPMENT_STORE_CODE,
        psdfe.STORE_DEAL_BEGIN_DATE = Coalesce(:new.ENTER_SH_STORE_PLAN_BEGIN_DATE, psdfe.STORE_DEAL_BEGIN_DATE),
        psdfe.STORE_DEAL_END_DATE = Coalesce(:new.ENTER_SH_STORE_PLAN_END_DATE, psdfe.STORE_DEAL_END_DATE),
        psdfe.CLOSE_EMPLOYEE_CODE = :new.FINISH_EMPLOYEE_CODE,
        psdfe.CLOSE_DATE = :new.FINISH_DATE,
        psdfe.CLOSE_TIME = :new.FINISH_TIME,
        psdfe.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE,
        psdfe.ANNUL_DATE = :new.ANNUL_DATE,
        psdfe.ANNUL_TIME = :new.ANNUL_TIME        
      where
        (psdfe.BND_PROCESS_OBJECT_BRANCH_CODE = :old.SALE_OBJECT_BRANCH_CODE) and
        (psdfe.BND_PROCESS_OBJECT_CODE = :old.SALE_OBJECT_CODE)
      ;


      for x in
        (
          select
            ss.SHIPMENT_OBJECT_BRANCH_CODE,
            ss.SHIPMENT_OBJECT_CODE
          from
            SALE_SHIPMENTS ss
          where
            (ss.SALE_OBJECT_BRANCH_CODE = :old.SALE_OBJECT_BRANCH_CODE) and
            (ss.SALE_OBJECT_CODE = :old.SALE_OBJECT_CODE)
        )
      loop
        update
          PLANNED_STORE_DEALS_FOR_EDIT psdfe
        set
          psdfe.STORE_CODE = :new.SHIPMENT_STORE_CODE
        where
          (psdfe.BND_PROCESS_OBJECT_BRANCH_CODE = x.SHIPMENT_OBJECT_BRANCH_CODE) and
          (psdfe.BND_PROCESS_OBJECT_CODE = x.SHIPMENT_OBJECT_CODE)
        ;
      end loop;

      
      if not StateUtils.InMlfeUpdate then
        -- update ml
        update
          MATERIAL_LISTS_FOR_EDIT ml
        set
          ml.CLOSE_EMPLOYEE_CODE = :new.FINISH_EMPLOYEE_CODE,
          ml.CLOSE_DATE = :new.FINISH_DATE,
          ml.CLOSE_TIME = :new.FINISH_TIME,
          ml.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE,
          ml.ANNUL_DATE = :new.ANNUL_DATE,
          ml.ANNUL_TIME = :new.ANNUL_TIME,
          ml.TRANSIENT_STATUS_CODE = :new.TRANSIENT_STATUS_CODE,
          ml.WORKDAYS_TO_EXIST = :new.WORKDAYS_TO_EXIST,
          ml.OWNER_EMPLOYEE_CODE = :new.OKIDU_EMPLOYEE_CODE,
          ml.TECH_QUANTITY =
            (
              select
                (:new.MANUFACTURE_QUANTITY * p.TECH_MEASURE_COEF) as NEW_MANUFACTURE_QUANTITY
              from
                PRODUCTS p
              where
                (p.PRODUCT_CODE = :new.PRODUCT_CODE)
            ),
          ml.RESULT_STORE_CODE = :new.SHIPMENT_STORE_CODE,
          ml.ENTER_RESULT_STORE_BEGIN_DATE = :new.ENTER_SH_STORE_PLAN_BEGIN_DATE,
          ml.ENTER_RESULT_STORE_END_DATE = :new.ENTER_SH_STORE_PLAN_END_DATE
            
        where
          (ml.BND_PROCESS_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
          (ml.BND_PROCESS_OBJECT_CODE = :new.SALE_OBJECT_CODE)
        ;
      end if;

      if (:old.REQUEST_BRANCH_CODE is not null) or (:new.REQUEST_BRANCH_CODE is not null) then

        select
          Sign(Count(*))
        into
          IsOldSRGReverse
        from
          SALE_REQUEST_GROUPS srg
        where
          (srg.REQUEST_BRANCH_CODE = :old.REQUEST_BRANCH_CODE) and
          (srg.REQUEST_NO = :old.REQUEST_NO) and

          (srg.STREAM_TYPE_CODE = CommonConsts.stReverse);
        
        select
          Sign(Count(*))
        into
          IsNewSRGReverse
        from
          SALE_REQUEST_GROUPS srg
        where
          (srg.REQUEST_BRANCH_CODE = :new.REQUEST_BRANCH_CODE) and
          (srg.REQUEST_NO = :new.REQUEST_NO) and
          
          (srg.STREAM_TYPE_CODE = CommonConsts.stReverse);

        
        -- ExceptEvents

        if ( (:new.ANNUL_EMPLOYEE_CODE is not null) or
             ( (IsOldSRGReverse = 1) and
               (IsNewSRGReverse = 0)
             )
           ) then

          select
            Sign(Count(*))
          into
            HasUnannuledExceptEvents
          from
            EXCEPT_EVENTS ee
          where
            (ee.ANNUL_EMPLOYEE_CODE is null) and
  
            (ee.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
            (ee.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE);
  
          if (HasUnannuledExceptEvents = 1) then
            raise_application_error(-20001, ServerMessages.SExceptEventsMustBeAnnuledId);
          end if;

        end if;

        select
          Sign(Count(*))
        into
          HasExceptEventsWithGreaterQty
        from
          EXCEPT_EVENTS ee
        where
          (ee.PRODUCT_QUANTITY > Coalesce(:new.QUANTITY, 0)) and

          (ee.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
          (ee.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE);

        if (HasExceptEventsWithGreaterQty = 1) then
          raise_application_error(-20002, ServerMessages.SEEWithIncorrectQtyExistsId);
        end if;

        update
          EXCEPT_EVENTS_FOR_EDIT eefe
        set
          eefe.PRODUCT_CODE = :new.PRODUCT_CODE
        where
          (eefe.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
          (eefe.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE);

      end if;
      
      -- update fin orders
      update
        FIN_ORDERS_FOR_EDIT fo
      set
        fo.PARTNER_CODE = Decode(fo.PARTNER_CODE, :old.CLIENT_COMPANY_CODE, :new.CLIENT_COMPANY_CODE, fo.PARTNER_CODE),
        fo.BASE_FINANCIAL_PRODUCT_CODE =
          ( select
              c.PRODUCT_CODE
            from
              CURRENCIES c
            where
              (c.CURRENCY_CODE = 
                ( select
                    Coalesce(ss.INVOICE_CURRENCY_CODE, :new.CURRENCY_CODE)
                  from
                    SALE_SHIPMENTS ss
                  where
                    (ss.SHIPMENT_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJECT_BRANCH_CODE) and
                    (ss.SHIPMENT_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE)
                )
              )
          ),        
        fo.BASE_QUANTITY =
          ( select
              Coalesce(ss.QUANTITY, ss.PLAN_QUANTITY) * Coalesce(ss.INVOICE_SINGLE_PRICE, :new.SINGLE_PRICE)
            from
              SALE_SHIPMENTS ss
            where
              (ss.SHIPMENT_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJECT_BRANCH_CODE) and
              (ss.SHIPMENT_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE)
          ),
        fo.DOCUMENT_IDENTIFIER =
          ( select
              Decode(ss.IS_PROFORM_INVOICE, 0, ss.INVOICE_NO)
            from
              SALE_SHIPMENTS ss
            where
              (ss.SHIPMENT_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJECT_BRANCH_CODE) and
              (ss.SHIPMENT_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE)
          ),
        fo.DOCUMENT_DATE =
          ( select
              Decode(ss.IS_PROFORM_INVOICE, 0, ss.INVOICE_DATE)
            from
              SALE_SHIPMENTS ss
            where
              (ss.SHIPMENT_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJECT_BRANCH_CODE) and
              (ss.SHIPMENT_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE)
          ),
        fo.ANNUL_EMPLOYEE_CODE = Coalesce(fo.ANNUL_EMPLOYEE_CODE, :new.ANNUL_EMPLOYEE_CODE),
        fo.ANNUL_DATE = Coalesce(fo.ANNUL_DATE, :new.ANNUL_DATE),
        fo.ANNUL_TIME = Coalesce(fo.ANNUL_TIME, :new.ANNUL_TIME),
        fo.BASE_DATA_CHANGED = Nvl2(:new.ANNUL_EMPLOYEE_CODE, 1, fo.BASE_DATA_CHANGED)
      where
        ( (fo.BND_PROCESS_OBJECT_BRANCH_CODE, fo.BND_PROCESS_OBJECT_CODE) in
          ( select
              ss.SHIPMENT_OBJECT_BRANCH_CODE,
              ss.SHIPMENT_OBJECT_CODE
            from
              SALE_SHIPMENTS ss
            where
              (ss.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
              (ss.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE)
          )
        ) and
        (fo.ANNUL_EMPLOYEE_CODE is null);

      update
        FIN_ORDERS_FOR_EDIT fo
      set
        fo.PARTNER_CODE = Decode(fo.PARTNER_CODE, :old.CLIENT_COMPANY_CODE, :new.CLIENT_COMPANY_CODE, fo.PARTNER_CODE),
        fo.BASE_FINANCIAL_PRODUCT_CODE =
          Coalesce(
            ( select
                c.PRODUCT_CODE
              from
                CURRENCIES c
              where
                (c.CURRENCY_CODE = 
                  ( select
                      Min(Coalesce(ss.INVOICE_CURRENCY_CODE, s.CURRENCY_CODE))
                    from
                      SALES s,
                      SALE_SHIPMENTS ss
                    where
                      (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_CODE) and
                      (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE) and
                      
                      (s.SALE_GROUP_OBJECT_BRANCH_CODE = :new.SALE_GROUP_OBJECT_BRANCH_CODE) and
                      (s.SALE_GROUP_OBJECT_CODE = :new.SALE_GROUP_OBJECT_CODE) and
   
                      (s.ANNUL_EMPLOYEE_CODE is null)
                  )
                )
            ),        
            fo.BASE_FINANCIAL_PRODUCT_CODE
          ),
        fo.BASE_QUANTITY =
          Coalesce(
            ( select
                Sum(Coalesce(ss.QUANTITY, ss.PLAN_QUANTITY) * Coalesce(ss.INVOICE_SINGLE_PRICE, s.SINGLE_PRICE))
              from
                SALES s,
                SALE_SHIPMENTS ss
              where
                (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_CODE) and
                (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE) and
              
                (s.SALE_GROUP_OBJECT_BRANCH_CODE = :new.SALE_GROUP_OBJECT_BRANCH_CODE) and
                (s.SALE_GROUP_OBJECT_CODE = :new.SALE_GROUP_OBJECT_CODE) and
                
                (s.ANNUL_EMPLOYEE_CODE is null)
            ),
            fo.BASE_QUANTITY
          ),
        fo.DOCUMENT_IDENTIFIER =
          ( select
              Min(Decode(ss.IS_PROFORM_INVOICE, 0, ss.INVOICE_NO))
            from
              SALE_SHIPMENTS ss
            where
              (ss.SHIPMENT_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJECT_BRANCH_CODE) and
              (ss.SHIPMENT_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE)
          ),
        fo.DOCUMENT_DATE =
          ( select
              Min(Decode(ss.IS_PROFORM_INVOICE, 0, ss.INVOICE_DATE))
            from
              SALE_SHIPMENTS ss
            where
              (ss.SHIPMENT_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJECT_BRANCH_CODE) and
              (ss.SHIPMENT_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE)
          ),
        (
          fo.ANNUL_EMPLOYEE_CODE,
          fo.ANNUL_DATE,
          fo.ANNUL_TIME,
          fo.BASE_DATA_CHANGED
        ) =
        ( select
            Coalesce(fo.ANNUL_EMPLOYEE_CODE, srg.ANNUL_EMPLOYEE_CODE),
            Coalesce(fo.ANNUL_DATE, srg.ANNUL_DATE),
            Coalesce(fo.ANNUL_TIME, srg.ANNUL_TIME),
            Nvl2(srg.ANNUL_EMPLOYEE_CODE, 1, fo.BASE_DATA_CHANGED)
          from
            SALE_REQUEST_GROUPS srg
          where
            (srg.SALE_GROUP_OBJECT_BRANCH_CODE = :new.SALE_GROUP_OBJECT_BRANCH_CODE) and
            (srg.SALE_GROUP_OBJECT_CODE = :new.SALE_GROUP_OBJECT_CODE)
        )
      where
        (fo.BND_PROCESS_OBJECT_BRANCH_CODE = :new.SALE_GROUP_OBJECT_BRANCH_CODE) and
        (fo.BND_PROCESS_OBJECT_CODE = :new.SALE_GROUP_OBJECT_CODE) and
        (fo.ANNUL_EMPLOYEE_CODE is null)
      ;
     
      -- proverka za neanulirano psd
      if (:new.ANNUL_EMPLOYEE_CODE is not null) then
        
        select
          Sign(Count(*))
        into
          IsPsdNotAnnuled
        from
          PLANNED_STORE_DEALS psd
        where
          (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
          (psd.BND_PROCESS_OBJECT_CODE = :new.SALE_OBJECT_CODE) and
          (psd.ANNUL_EMPLOYEE_CODE is null);
          
        if (IsPsdNotAnnuled = 1) then
          raise_application_error(-20002, 'Planned store deal not annuled!');
        end if;
          
      end if;
      
    exception
      when others then
        StateUtils.EndSfeUpdate;
        raise;
    end;
    StateUtils.EndSfeUpdate;
  end if;
    
end tr_SFE_IU;
/
