create or replace trigger tr_SD_BIU_CHECK_QUANTITIES
  before insert or
         update on STORE_DEALS
  for each row
begin
  if (:new.STORNO_EMPLOYEE_CODE is null) then
    if (MiscUtils.LargeZero(:new.QUANTITY) = 0) then
      raise_application_error(-20000, 'Internal error: Quantity cannot be zero');
    end if;
    
    if (MiscUtils.LargeZero(:new.ACCOUNT_QUANTITY) = 0) then
      raise_application_error(-20000, 'Internal error: AccountQuantity cannot be zero');
    end if;
  end if;
end;
/
