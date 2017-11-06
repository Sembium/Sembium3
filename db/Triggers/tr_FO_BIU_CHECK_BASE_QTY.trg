create or replace trigger tr_FO_BIU_CHECK_BASE_QTY
  before insert or update of BASE_QUANTITY on FIN_ORDERS
  for each row
begin
  if (MiscUtils.LargeZero(:new.BASE_QUANTITY, 0.01) = 0) then
    raise_application_error(-20002, ServerMessages.SInvalidFinOrderBaseQtyId);
  end if;
end;
/
