create or replace trigger tr_BIU_SS_SET_RESULT_DATE
  before insert or update of SHIPMENT_PLAN_DATE, SHIPMENT_DATE, INVOICE_DATE on SALE_SHIPMENTS
  for each row
begin
  :new.RESULT_DATE:= Coalesce(:new.INVOICE_DATE, :new.SHIPMENT_DATE, :new.SHIPMENT_PLAN_DATE);
end;
/
