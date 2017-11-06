create or replace trigger tr_DPRFE_IU
  instead of update on DELIVERY_PROJECTS_FOR_EDIT
  for each row
declare
  HasUnannuledExceptEvents Number;
  IsOldDCDReverse Number;
  IsNewDCDReverse Number;
  HasExceptEventsWithGreaterQty Number;
begin

  if not StateUtils.InDprfeUpdate then
    StateUtils.BeginDprfeUpdate;
    begin
    
      if ( (:new.DCD_OBJECT_BRANCH_CODE <> :old.DCD_OBJECT_BRANCH_CODE) or
           (:new.DCD_OBJECT_CODE <> :old.DCD_OBJECT_CODE) or
           (:new.DELIVERY_PROJECT_CODE <> :old.DELIVERY_PROJECT_CODE) ) then
        raise_application_error(-20000, 'Internal error: DELIVERY_PROJECTS key should not be changed');
      end if;
      
      update
        DELIVERY_PROJECTS dpr
      set
        dpr.ACCOUNT_QUANTITY = :new.ACCOUNT_QUANTITY,
        dpr.CHANGE_DATE = :new.CHANGE_DATE,
        dpr.CHANGE_EMPLOYEE_CODE = :new.CHANGE_EMPLOYEE_CODE,
        dpr.CHANGE_TIME = :new.CHANGE_TIME,
        dpr.CREATE_DATE = :new.CREATE_DATE,
        dpr.CREATE_EMPLOYEE_CODE = :new.CREATE_EMPLOYEE_CODE,
        dpr.CREATE_TIME = :new.CREATE_TIME,
        dpr.CURRENCY_CODE = :new.CURRENCY_CODE,
        dpr.DELIVERY_DATE = :new.DELIVERY_DATE,
        dpr.DELIVERY_VENDOR_COMPANY_CODE = :new.DELIVERY_VENDOR_COMPANY_CODE,
        dpr.DELIVERY_VENDOR_OFFICE_CODE = :new.DELIVERY_VENDOR_OFFICE_CODE,
        dpr.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        dpr.DOC_CODE = :new.DOC_CODE,
        dpr.TOTAL_PRICE = :new.TOTAL_PRICE,
        dpr.VENDOR_COMPANY_CODE = :new.VENDOR_COMPANY_CODE,
        dpr.MEDIATOR_COMPANY_CODE = :new.MEDIATOR_COMPANY_CODE,
        dpr.WORK_QUANTITY = :new.WORK_QUANTITY,
        dpr.DELIVERY_DECISION_CODE = :new.DELIVERY_DECISION_CODE,
        dpr.MAX_BASE_SINGLE_PRICE = :new.MAX_BASE_SINGLE_PRICE,
        dpr.DECISION_EMPLOYEE_CODE = :new.DECISION_EMPLOYEE_CODE,
        dpr.DIALOG_EMPLOYEE_CODE = :new.DIALOG_EMPLOYEE_CODE,
        dpr.SHIPMENT_DAYS = :new.SHIPMENT_DAYS,
        dpr.CUSTOMHOUSE_CODE = :new.CUSTOMHOUSE_CODE,
        dpr.SHIPMENT_TYPE_CODE = :new.SHIPMENT_TYPE_CODE,
        dpr.START_DATE = :new.START_DATE,
        dpr.REGISTER_DATE = :new.REGISTER_DATE,
        dpr.PLAN_POSITION_DATE = :new.PLAN_POSITION_DATE,
        dpr.REAL_POSITION_DATE = :new.REAL_POSITION_DATE,
        dpr.PLAN_VENDOR_POSITION_DATE = :new.PLAN_VENDOR_POSITION_DATE,
        dpr.REAL_VENDOR_POSITION_DATE = :new.REAL_VENDOR_POSITION_DATE,
        dpr.REAL_DECISION_DATE = :new.REAL_DECISION_DATE,
        dpr.IS_ACTIVATED_BY_VENDOR = :new.IS_ACTIVATED_BY_VENDOR,
        dpr.IS_TRANSPORT_FROM_VENDOR = :new.IS_TRANSPORT_FROM_VENDOR,
        dpr.FINISH_EMPLOYEE_CODE = :new.FINISH_EMPLOYEE_CODE,
        dpr.FINISH_DATE = :new.FINISH_DATE,
        dpr.FINISH_TIME = :new.FINISH_TIME,
        dpr.ANNUL_EMPLOYEE_CODE = :new.ANNUL_EMPLOYEE_CODE,
        dpr.ANNUL_DATE = :new.ANNUL_DATE,
        dpr.ANNUL_TIME = :new.ANNUL_TIME,
        dpr.OUR_OFFER_QUANTITY = :new.OUR_OFFER_QUANTITY,
        dpr.OUR_OFFER_ACCOUNT_QUANTITY = :new.OUR_OFFER_ACCOUNT_QUANTITY,
        dpr.OUR_OFFER_SINGLE_PRICE = :new.OUR_OFFER_SINGLE_PRICE,
        dpr.OUR_OFFER_CURRENCY_CODE = :new.OUR_OFFER_CURRENCY_CODE,
        dpr.VENDOR_OFFER_QUANTITY = :new.VENDOR_OFFER_QUANTITY,
        dpr.VENDOR_OFFER_ACCOUNT_QUANTITY = :new.VENDOR_OFFER_ACCOUNT_QUANTITY,
        dpr.VENDOR_OFFER_SINGLE_PRICE = :new.VENDOR_OFFER_SINGLE_PRICE,
        dpr.VENDOR_OFFER_CURRENCY_CODE = :new.VENDOR_OFFER_CURRENCY_CODE,
        dpr.PROGNOSIS_BEGIN_DATE = :new.PROGNOSIS_BEGIN_DATE,
        dpr.PROGNOSIS_END_DATE = :new.PROGNOSIS_END_DATE,
        dpr.OUR_OFFER_LEASE_DATE_UNIT_QTY = :new.OUR_OFFER_LEASE_DATE_UNIT_QTY,
        dpr.V_OFFER_LEASE_DATE_UNIT_QTY = :new.V_OFFER_LEASE_DATE_UNIT_QTY,
        dpr.LEASE_DATE_UNIT_QTY = :new.LEASE_DATE_UNIT_QTY,
        dpr.OUR_OFFER_LEASE_DATE_UNIT_CODE = :new.OUR_OFFER_LEASE_DATE_UNIT_CODE,
        dpr.V_OFFER_LEASE_DATE_UNIT_CODE = :new.V_OFFER_LEASE_DATE_UNIT_CODE,
        dpr.LEASE_DATE_UNIT_CODE = :new.LEASE_DATE_UNIT_CODE,
        dpr.RECEIVE_DATE = :new.RECEIVE_DATE,
        dpr.RETURN_DATE = :new.RETURN_DATE,
        dpr.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE,
        dpr.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE,
        dpr.PRODUCT_CODE = :new.PRODUCT_CODE,
        dpr.PSD_STORE_CODE = :new.PSD_STORE_CODE,
        dpr.DEFICIT_COVER_DATE = :new.DEFICIT_COVER_DATE
      where
        (dpr.DCD_OBJECT_BRANCH_CODE = :old.DCD_OBJECT_BRANCH_CODE) and
        (dpr.DCD_OBJECT_CODE = :old.DCD_OBJECT_CODE) and
        (dpr.DELIVERY_PROJECT_CODE = :old.DELIVERY_PROJECT_CODE);
        
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
    
      if (:old.FINISH_EMPLOYEE_CODE is null) and 
         (:new.FINISH_EMPLOYEE_CODE is not null) then
          
        update
          DCD_FOR_EDIT dcd
        set
          dcd.IS_DONE = 1
        where
          (dcd.DCD_OBJECT_BRANCH_CODE = :new.DCD_OBJECT_BRANCH_CODE) and
          (dcd.DCD_OBJECT_CODE = :new.DCD_OBJECT_CODE) and
          not exists(
            select
              1
            from
              DELIVERY_PROJECTS dp
            where
              (dp.DCD_OBJECT_BRANCH_CODE = :new.DCD_OBJECT_BRANCH_CODE) and
              (dp.DCD_OBJECT_CODE = :new.DCD_OBJECT_CODE) and
              (dp.ANNUL_EMPLOYEE_CODE is null) and          
              (dp.FINISH_EMPLOYEE_CODE is null)
          );
        
      end if;

      select
        Sign(Count(*))
      into
        IsOldDCDReverse
      from
        DEFICIT_COVER_DECISIONS dcd
      where
        (dcd.DCD_OBJECT_BRANCH_CODE = :old.DCD_OBJECT_BRANCH_CODE) and
        (dcd.DCD_OBJECT_CODE = :old.DCD_OBJECT_CODE) and

        (dcd.STREAM_TYPE_CODE = CommonConsts.stReverse);
        
      select
        Sign(Count(*))
      into
        IsNewDCDReverse
      from
        DEFICIT_COVER_DECISIONS dcd
      where
        (dcd.DCD_OBJECT_BRANCH_CODE = :new.DCD_OBJECT_BRANCH_CODE) and
        (dcd.DCD_OBJECT_CODE = :new.DCD_OBJECT_CODE) and

        (dcd.STREAM_TYPE_CODE = CommonConsts.stReverse);
 
      if ( (:new.ANNUL_EMPLOYEE_CODE is not null) or
           ( (IsOldDCDReverse = 1) and
             (IsNewDCDReverse = 0)
           )
         ) then
      
        select
          Sign(Count(*))
        into
          HasUnannuledExceptEvents
        from
          EXCEPT_EVENTS ee
        where
          (ee.DCD_OBJECT_BRANCH_CODE = :new.DCD_OBJECT_BRANCH_CODE) and
          (ee.DCD_OBJECT_CODE = :new.DCD_OBJECT_CODE) and
          (ee.DELIVERY_PROJECT_CODE = :new.DELIVERY_PROJECT_CODE) and
          (ee.ANNUL_EMPLOYEE_CODE is null);
        
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
        (ee.PRODUCT_QUANTITY > Coalesce(:new.WORK_QUANTITY, 0)) and

        (ee.DCD_OBJECT_BRANCH_CODE = :new.DCD_OBJECT_BRANCH_CODE) and
        (ee.DCD_OBJECT_CODE = :new.DCD_OBJECT_CODE) and
        (ee.DELIVERY_PROJECT_CODE = :new.DELIVERY_PROJECT_CODE);

      if (HasExceptEventsWithGreaterQty = 1) then
        raise_application_error(-20002, ServerMessages.SEEWithIncorrectQtyExistsId);
      end if;

      update
        EXCEPT_EVENTS_FOR_EDIT eefe
      set
        eefe.PRODUCT_CODE = :new.PRODUCT_CODE 
      where
        (eefe.DCD_OBJECT_BRANCH_CODE = :new.DCD_OBJECT_BRANCH_CODE) and
        (eefe.DCD_OBJECT_CODE = :new.DCD_OBJECT_CODE) and
        (eefe.DELIVERY_PROJECT_CODE = :new.DELIVERY_PROJECT_CODE);
        

      -- update fin order
      update
        FIN_ORDERS_FOR_EDIT fo
      set
        fo.PARTNER_CODE = Decode(fo.PARTNER_CODE, :old.VENDOR_COMPANY_CODE, :new.VENDOR_COMPANY_CODE, fo.PARTNER_CODE),
        fo.BASE_DATE = 
          Coalesce(
            ( select
                dc.INVOICE_DATE
              from
                DELIVERY_CONTRACTS dc
              where
                (dc.DCD_OBJECT_BRANCH_CODE = :old.DCD_OBJECT_BRANCH_CODE) and
                (dc.DCD_OBJECT_CODE = :old.DCD_OBJECT_CODE) and
                (dc.DELIVERY_PROJECT_CODE = :old.DELIVERY_PROJECT_CODE)            
            ),
            :new.DELIVERY_DATE
          ),
        fo.BASE_FINANCIAL_PRODUCT_CODE =
          ( select
              c.PRODUCT_CODE
            from
              CURRENCIES c
            where
              (c.CURRENCY_CODE = :new.CURRENCY_CODE)
          ),
        fo.BASE_QUANTITY = :new.TOTAL_PRICE,
        fo.ANNUL_EMPLOYEE_CODE = Coalesce(fo.ANNUL_EMPLOYEE_CODE, :new.ANNUL_EMPLOYEE_CODE),
        fo.ANNUL_DATE = Coalesce(fo.ANNUL_DATE, :new.ANNUL_DATE),
        fo.ANNUL_TIME = Coalesce(fo.ANNUL_TIME, :new.ANNUL_TIME),
        fo.BASE_DATA_CHANGED = Nvl2(:new.ANNUL_EMPLOYEE_CODE, 1, fo.BASE_DATA_CHANGED)
      where
        ( (fo.BND_PROCESS_OBJECT_BRANCH_CODE, fo.BND_PROCESS_OBJECT_CODE) =
          ( select
              dc.DELIVERY_OBJECT_BRANCH_CODE,
              dc.DELIVERY_OBJECT_CODE
            from
              DELIVERY_CONTRACTS dc
            where
              (dc.DCD_OBJECT_BRANCH_CODE = :new.DCD_OBJECT_BRANCH_CODE) and
              (dc.DCD_OBJECT_CODE = :new.DCD_OBJECT_CODE) and
              (dc.DELIVERY_PROJECT_CODE = :new.DELIVERY_PROJECT_CODE)
          )
        ) and
        (fo.ANNUL_EMPLOYEE_CODE is null);
    
    exception
      when others then
        StateUtils.EndDprfeUpdate;
        raise;
    end;
    StateUtils.EndDprfeUpdate;
  end if;

end tr_DPRFE_IU;
/
