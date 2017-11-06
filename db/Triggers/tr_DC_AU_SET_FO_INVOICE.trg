create or replace trigger tr_DC_AU_SET_FO_INVOICE
  after update of INVOICE_NO, INVOICE_DATE on DELIVERY_CONTRACTS  
  for each row
begin
  update
    FIN_ORDERS_FOR_EDIT fo
  set
    fo.DOCUMENT_IDENTIFIER = Decode(:new.IS_PROFORM_INVOICE, 0, :new.INVOICE_NO),
    fo.DOCUMENT_DATE = Decode(:new.IS_PROFORM_INVOICE, 0, :new.INVOICE_DATE),
    fo.BASE_DATE = Coalesce(:new.INVOICE_DATE, fo.BASE_DATE)
  where
    (fo.BND_PROCESS_OBJECT_BRANCH_CODE = :old.DELIVERY_OBJECT_BRANCH_CODE) and
    (fo.BND_PROCESS_OBJECT_CODE = :old.DELIVERY_OBJECT_CODE) and
    (fo.ANNUL_EMPLOYEE_CODE is null)
  ;
end tr_DC_AU_SET_FO_INVOICE;
/
