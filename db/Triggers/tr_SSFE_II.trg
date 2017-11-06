create or replace trigger tr_SSFE_II
  instead of insert on SALE_SHIPMENTS_FOR_EDIT
  for each row
begin

  if not StateUtils.InSsfeUpdate then
    StateUtils.BeginSsfeUpdate;
    begin
    
      insert into SALE_SHIPMENTS
      (
        DOC_BRANCH_CODE,
        DOC_CODE,
        INVOICE_CURRENCY_CODE,
        INVOICE_DATE,
        INVOICE_NO,
        IS_PROFORM_INVOICE,
        INVOICE_SINGLE_PRICE,
        PLAN_QUANTITY,
        QUANTITY,
        RECEIVE_DATE,
        SALE_OBJECT_BRANCH_CODE,
        SALE_OBJECT_CODE,
        SALE_SHIPMENT_NO,
        SHIPMENT_DATE,
        SHIPMENT_OBJECT_BRANCH_CODE,
        SHIPMENT_OBJECT_CODE,
        SHIPMENT_PLAN_DATE,
        LEASE_PLAN_DATE_UNIT_QTY,
        LEASE_DATE_UNIT_QTY,
        IMPORT_PLAN_DATE,
        IMPORT_DATE,
        RECEIVE_PLAN_DATE,
        RETURN_PLAN_DATE
      )
      values
      (
        :new.DOC_BRANCH_CODE,
        :new.DOC_CODE,
        :new.INVOICE_CURRENCY_CODE,
        :new.INVOICE_DATE,
        :new.INVOICE_NO,
        :new.IS_PROFORM_INVOICE,
        :new.INVOICE_SINGLE_PRICE,
        :new.PLAN_QUANTITY,
        :new.QUANTITY,
        :new.RECEIVE_DATE,
        :new.SALE_OBJECT_BRANCH_CODE,
        :new.SALE_OBJECT_CODE,
        :new.SALE_SHIPMENT_NO,
        :new.SHIPMENT_DATE,
        :new.SHIPMENT_OBJECT_BRANCH_CODE,
        :new.SHIPMENT_OBJECT_CODE,
        :new.SHIPMENT_PLAN_DATE,
        :new.LEASE_PLAN_DATE_UNIT_QTY,
        :new.LEASE_DATE_UNIT_QTY,
        :new.IMPORT_PLAN_DATE,
        :new.IMPORT_DATE,
        :new.RECEIVE_PLAN_DATE,
        :new.RETURN_PLAN_DATE
      );
    
      update
        FIN_ORDERS_FOR_EDIT fo
      set
        fo.DOCUMENT_IDENTIFIER = Decode(:new.IS_PROFORM_INVOICE, 0, :new.INVOICE_NO),
        fo.DOCUMENT_DATE = Decode(:new.IS_PROFORM_INVOICE, 0, :new.INVOICE_DATE),
        fo.BASE_DATE = Coalesce(:new.INVOICE_DATE, :new.SHIPMENT_DATE, :new.SHIPMENT_PLAN_DATE),
                
        fo.BASE_QUANTITY =
          ( select
              Sum(Coalesce(ss2.QUANTITY, ss2.PLAN_QUANTITY) * s2.SINGLE_PRICE)
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

end tr_SSFE_II;
/
