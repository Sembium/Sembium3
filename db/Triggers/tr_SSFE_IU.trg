create or replace trigger tr_SSFE_IU
  instead of update on SALE_SHIPMENTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSsfeUpdate then
    StateUtils.BeginSsfeUpdate;
    begin
    
      if ( (:new.SHIPMENT_OBJECT_BRANCH_CODE <> :old.SHIPMENT_OBJECT_BRANCH_CODE) or
           (:new.SHIPMENT_OBJECT_CODE <> :old.SHIPMENT_OBJECT_CODE) ) then
        raise_application_error(-20000, 'Internal error: SALE_SHIPMENTS key should not be changed');
      end if;
      
      update
        SALE_SHIPMENTS ss
      set
        ss.DOC_BRANCH_CODE = :new.DOC_BRANCH_CODE,
        ss.DOC_CODE = :new.DOC_CODE,
        ss.INVOICE_CURRENCY_CODE = :new.INVOICE_CURRENCY_CODE,
        ss.INVOICE_DATE = :new.INVOICE_DATE,
        ss.INVOICE_NO = :new.INVOICE_NO,
        ss.IS_PROFORM_INVOICE = :new.IS_PROFORM_INVOICE,
        ss.INVOICE_SINGLE_PRICE = :new.INVOICE_SINGLE_PRICE,
        ss.PLAN_QUANTITY = :new.PLAN_QUANTITY,
        ss.QUANTITY = :new.QUANTITY,
        ss.RECEIVE_DATE = :new.RECEIVE_DATE,
        ss.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE,
        ss.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE,
        ss.SALE_SHIPMENT_NO = :new.SALE_SHIPMENT_NO,
        ss.SHIPMENT_DATE = :new.SHIPMENT_DATE,
        ss.SHIPMENT_PLAN_DATE = :new.SHIPMENT_PLAN_DATE,
        ss.LEASE_PLAN_DATE_UNIT_QTY = :new.LEASE_PLAN_DATE_UNIT_QTY,
        ss.LEASE_DATE_UNIT_QTY = :new.LEASE_DATE_UNIT_QTY,
        ss.IMPORT_PLAN_DATE = :new.IMPORT_PLAN_DATE,
        ss.IMPORT_DATE = :new.IMPORT_DATE,
        ss.RECEIVE_PLAN_DATE = :new.RECEIVE_PLAN_DATE,
        ss.RETURN_PLAN_DATE = :new.RETURN_PLAN_DATE
      where
        (ss.SHIPMENT_OBJECT_BRANCH_CODE = :old.SHIPMENT_OBJECT_BRANCH_CODE) and
        (ss.SHIPMENT_OBJECT_CODE = :old.SHIPMENT_OBJECT_CODE);
        
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
    
      -- update fin orders
      update
        FIN_ORDERS_FOR_EDIT fo
      set
        fo.BASE_DATE = Coalesce(:new.INVOICE_DATE, :new.SHIPMENT_DATE, :new.SHIPMENT_PLAN_DATE),
        fo.BASE_QUANTITY =
          ( select
              Coalesce(:new.QUANTITY, :new.PLAN_QUANTITY) * Coalesce(:new.INVOICE_SINGLE_PRICE, s.SINGLE_PRICE)
            from
              SALES s
            where
              (s.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
              (s.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE)
          ),
        fo.BASE_FINANCIAL_PRODUCT_CODE =
          ( select
              c.PRODUCT_CODE
            from
              CURRENCIES c
            where
              (c.CURRENCY_CODE = 
                ( select
                    Coalesce(:new.INVOICE_CURRENCY_CODE, s.CURRENCY_CODE)
                  from
                    SALES s
                  where
                    (s.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
                    (s.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE)
                )
              )
          ),
        fo.DOCUMENT_IDENTIFIER = :new.INVOICE_NO,
        fo.DOCUMENT_DATE = :new.INVOICE_DATE
      where
        (fo.BND_PROCESS_OBJECT_BRANCH_CODE = :old.SHIPMENT_OBJECT_BRANCH_CODE) and
        (fo.BND_PROCESS_OBJECT_CODE = :old.SHIPMENT_OBJECT_CODE) and
        (fo.ANNUL_EMPLOYEE_CODE is null)
      ;

      update
        FIN_ORDERS_FOR_EDIT fo
      set
        fo.DOCUMENT_IDENTIFIER = Decode(:new.IS_PROFORM_INVOICE, 0, :new.INVOICE_NO),
        fo.DOCUMENT_DATE = Decode(:new.IS_PROFORM_INVOICE, 0, :new.INVOICE_DATE),
        fo.BASE_DATE = Coalesce(:new.INVOICE_DATE, :new.SHIPMENT_DATE, :new.SHIPMENT_PLAN_DATE),
                
        fo.BASE_QUANTITY =
          Coalesce(
            ( select
                Sum(Coalesce(ss2.QUANTITY, ss2.PLAN_QUANTITY) * Coalesce(ss2.INVOICE_SINGLE_PRICE, s2.SINGLE_PRICE))
              from
                SALES s,
                SALES s2,
                SALE_SHIPMENTS ss2
              where
                (s.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
                (s.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE) and              
                  
                (s.SALE_GROUP_OBJECT_BRANCH_CODE = s2.SALE_GROUP_OBJECT_BRANCH_CODE) and
                (s.SALE_GROUP_OBJECT_CODE = s2.SALE_GROUP_OBJECT_CODE) and

                (s2.SALE_OBJECT_BRANCH_CODE = ss2.SALE_OBJECT_BRANCH_CODE) and
                (s2.SALE_OBJECT_CODE = ss2.SALE_OBJECT_CODE) and              
                  
                (s2.ANNUL_EMPLOYEE_CODE is null)
            ),
            fo.BASE_QUANTITY
          ),
        fo.BASE_FINANCIAL_PRODUCT_CODE =
          Coalesce(
            ( select
                c.PRODUCT_CODE
              from
                CURRENCIES c
              where
                (c.CURRENCY_CODE = 
                  ( select
                      Min(Coalesce(ss2.INVOICE_CURRENCY_CODE, s2.CURRENCY_CODE))
                    from
                      SALES s,
                      SALES s2,
                      SALE_SHIPMENTS ss2
                    where
                      (s.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
                      (s.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE) and              
                        
                      (s.SALE_GROUP_OBJECT_BRANCH_CODE = s2.SALE_GROUP_OBJECT_BRANCH_CODE) and
                      (s.SALE_GROUP_OBJECT_CODE = s2.SALE_GROUP_OBJECT_CODE) and

                      (s2.SALE_OBJECT_BRANCH_CODE = ss2.SALE_OBJECT_BRANCH_CODE) and
                      (s2.SALE_OBJECT_CODE = ss2.SALE_OBJECT_CODE) and              
                        
                      (s2.ANNUL_EMPLOYEE_CODE is null)
                  )
                )
            ),
            fo.BASE_FINANCIAL_PRODUCT_CODE
          )
        
      where
        ( (fo.BND_PROCESS_OBJECT_BRANCH_CODE, fo.BND_PROCESS_OBJECT_CODE) =
          ( select
              s.SALE_GROUP_OBJECT_BRANCH_CODE,
              s.SALE_GROUP_OBJECT_CODE
            from
              SALES s
            where
              (s.SALE_OBJECT_BRANCH_CODE = :new.SALE_OBJECT_BRANCH_CODE) and
              (s.SALE_OBJECT_CODE = :new.SALE_OBJECT_CODE)
          )
        ) and
        (fo.ANNUL_EMPLOYEE_CODE is null)
      ;

    exception
      when others then
        StateUtils.EndSsfeUpdate;
        raise;
    end;
    StateUtils.EndSsfeUpdate;
  end if;

end tr_SSFE_IU;
/
