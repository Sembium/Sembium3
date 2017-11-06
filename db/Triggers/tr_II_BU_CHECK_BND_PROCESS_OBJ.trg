create or replace trigger tr_II_BU_CHECK_BND_PROCESS_OBJ
  before update of BND_PROCESS_OBJECT_BRANCH_CODE, BND_PROCESS_OBJECT_CODE on INVOICE_ITEMS
  for each row
begin

  raise_application_error(-20001, 'Internal assertion: InvoiceItem BndProcessObject should not be changed');

end tr_II_BU_CHECK_BND_PROCESS_OBJ;
/
