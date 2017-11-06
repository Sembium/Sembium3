create or replace trigger tr_II_BI_CHECK_SHIPMENTS
  before insert on INVOICE_ITEMS
  for each row
declare
  InconsitentInvoiceSSH Number;
  ShipmentIsAlreadyInAnInvoice Number;
  SaleShipmentIdentifier VarChar2(100 char);
begin

  -- za odk-n wsichki shipment-i koito uchastwat wyw faktura trqbwa da sa tochno w edna faktura
  select
    Sign(Count(*))
  into
    InconsitentInvoiceSSH
  from
    SALE_SHIPMENTS ss,
    SALES s,
    SALES s2,
    SALE_SHIPMENTS ss2,
    INVOICE_ITEMS it,
    INVOICES i
  where
    (ss.SHIPMENT_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE) and
    (ss.SHIPMENT_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE) and

    (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and
    (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and

    (s.SALE_ORDER_TYPE_CODE in (6, 7)) and

    (s.REQUEST_BRANCH_CODE = s2.REQUEST_BRANCH_CODE) and
    (s.REQUEST_NO = s2.REQUEST_NO) and

    (s2.SALE_OBJECT_BRANCH_CODE = ss2.SALE_OBJECT_BRANCH_CODE) and
    (s2.SALE_OBJECT_CODE = ss2.SALE_OBJECT_CODE) and

    (ss2.SHIPMENT_OBJECT_BRANCH_CODE = it.BND_PROCESS_OBJECT_BRANCH_CODE) and
    (ss2.SHIPMENT_OBJECT_CODE = it.BND_PROCESS_OBJECT_CODE) and

    (it.BRANCH_CODE = i.INVOICE_BRANCH_CODE) and
    (it.INVOICE_CODE = i.INVOICE_CODE) and

    (i.STORNO_EMPLOYEE_CODE is null) and

    ( (i.INVOICE_BRANCH_CODE <> :new.BRANCH_CODE) or
      (i.INVOICE_CODE <> :new.INVOICE_CODE)
    );

  if (InconsitentInvoiceSSH = 1) then

    select
      po.PROCESS_OBJECT_IDENTIFIER
    into
      SaleShipmentIdentifier
    from
      PROCESS_OBJECTS po
    where
      (po.PROCESS_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE) and
      (po.PROCESS_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE);

    raise_application_error(-20001,
      ServerMessages.SInconsitentInvoiceSSHId ||
      '(ShipmentIdentifier:s=' || SaleShipmentIdentifier || ')');

  end if;

  -- edno razklonenie po OPP moje da uchastwa samo w edna neanulirana faktura
  select
    Sign(Count(*))
  into
    ShipmentIsAlreadyInAnInvoice
  from
    INVOICE_ITEMS ii,
    INVOICES i
  where
    (ii.BND_PROCESS_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE) and
    (ii.BND_PROCESS_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE) and

    (ii.BRANCH_CODE = i.INVOICE_BRANCH_CODE) and
    (ii.INVOICE_CODE = i.INVOICE_CODE) and

    (i.STORNO_EMPLOYEE_CODE is null);

  if (ShipmentIsAlreadyInAnInvoice = 1) then

    select
      po.PROCESS_OBJECT_IDENTIFIER
    into
      SaleShipmentIdentifier
    from
      PROCESS_OBJECTS po
    where
      (po.PROCESS_OBJECT_BRANCH_CODE = :new.BND_PROCESS_OBJECT_BRANCH_CODE) and
      (po.PROCESS_OBJECT_CODE = :new.BND_PROCESS_OBJECT_CODE);

    raise_application_error(-20001,
      ServerMessages.SShpmntIsAlreadyInAnInvoiceId ||
      '(ShipmentIdentifier:s=' || SaleShipmentIdentifier || ')');

  end if;

end tr_II_BI_CHECK_SHIPMENTS;
/
